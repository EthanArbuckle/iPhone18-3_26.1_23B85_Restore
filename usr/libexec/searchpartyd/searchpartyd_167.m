uint64_t sub_10112FB78@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  LODWORD(v86) = a1;
  v75 = a2;
  v84 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v3 = *(v84 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v84);
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v87 = &v70 - v8;
  v9 = __chkstk_darwin(v7);
  v72 = &v70 - v10;
  __chkstk_darwin(v9);
  v76 = (&v70 - v11);
  v12 = sub_1000BC4D4(&qword_1016C9040, &qword_1014090D0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = (&v70 - v14);
  v77 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v83 = *(v77 - 8);
  v16 = *(v83 + 64);
  v17 = __chkstk_darwin(v77);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v70 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v70 - v24;
  v26 = __chkstk_darwin(v23);
  v78 = (&v70 - v27);
  v28 = __chkstk_darwin(v26);
  v81 = (&v70 - v29);
  __chkstk_darwin(v28);
  v82 = (&v70 - v30);
  v31 = sub_1000BC4D4(&qword_1016C9048, &qword_1014090D8);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v34 = (&v70 - v33);
  v79 = type metadata accessor for KeySyncSnapshot();
  v80 = v2;
  sub_1000D2A70(v2 + v79[8], v34, &qword_1016C9048, &qword_1014090D8);
  v35 = sub_1000BC4D4(&qword_1016C8FE8, &qword_1014090A8);
  v36 = (*(*(v35 - 8) + 48))(v34, 1, v35);
  if (v36 == 1)
  {
    sub_10000B3A8(v34, &qword_1016C9048, &qword_1014090D8);
    goto LABEL_10;
  }

  v37 = *v34;
  result = sub_10000B3A8(v34, &qword_1016C8FE8, &qword_1014090A8);
  if (!v37)
  {
    goto LABEL_10;
  }

  v39 = v80;
  if (is_mul_ok(v37, 0x60uLL))
  {
    if (96 * v37 - 96 <= 1)
    {
      v40 = 1;
    }

    else
    {
      v40 = 96 * v37 - 96;
    }

    if (96 * v37 - 1 >= v40)
    {
LABEL_11:
      v41 = v36 == 1;
      v42 = v86;
      sub_101132634(v40, v41, v86 & 1, v82);
      v43 = v79;
      sub_1000D2A70(v39 + v79[7], v15, &qword_1016C9040, &qword_1014090D0);
      v44 = sub_1000BC4D4(&qword_1016C9018, &qword_1014090B8);
      if ((*(*(v44 - 8) + 48))(v15, 1, v44) == 1)
      {
        sub_10000B3A8(v15, &qword_1016C9040, &qword_1014090D0);
        v45 = v84;
        (*(v3 + 56))(v81, 1, 1, v84);
      }

      else
      {
        v46 = *v15;
        sub_10000B3A8(v15, &qword_1016C9018, &qword_1014090B8);
        sub_101132634(v46, 0, v42 & 1, v81);
        v45 = v84;
      }

      sub_1000D2A70(v39 + v43[5], v25, &unk_1016AF8A0, &unk_10139D7C0);
      v85 = *(v3 + 48);
      v86 = v3 + 48;
      if (v85(v25, 1, v45) == 1)
      {
        sub_10000B3A8(v25, &unk_1016AF8A0, &unk_10139D7C0);
        v47 = 1;
        v48 = v78;
      }

      else
      {
        v49 = v76;
        result = sub_1000D2AD8(v25, v76, &unk_1016C8FC0, &unk_10139D7D0);
        v50 = fmax(*v49 + -1.0, 1.0);
        if (v50 == INFINITY)
        {
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        if (v50 <= -1.0)
        {
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        if (v50 >= 1.84467441e19)
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v51 = v50;
        v48 = v78;
        v52 = v49 + *(v84 + 36);
        Date.addingTimeInterval(_:)();
        sub_10000B3A8(v49, &unk_1016C8FC0, &unk_10139D7D0);
        v47 = 0;
        *v48 = v51;
        v45 = v84;
      }

      v53 = v83;
      v83 = v3;
      v73 = *(v3 + 56);
      v74 = v3 + 56;
      v73(v48, v47, 1, v45);
      sub_1000BC4D4(&unk_1016C8FD0, &qword_1014090A0);
      v54 = *(v53 + 72);
      v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v76 = swift_allocObject();
      v56 = v76 + v55;
      sub_1000D2A70(v48, v76 + v55, &unk_1016AF8A0, &unk_10139D7C0);
      sub_1000D2A70(v80 + v79[6], v56 + v54, &unk_1016AF8A0, &unk_10139D7C0);
      sub_1000D2A70(v81, v56 + 2 * v54, &unk_1016AF8A0, &unk_10139D7C0);
      sub_1000D2A70(v82, v56 + 3 * v54, &unk_1016AF8A0, &unk_10139D7C0);
      v57 = _swiftEmptyArrayStorage;
      v58 = 4;
      v80 = v56;
      do
      {
        sub_1000D2A70(v56, v22, &unk_1016AF8A0, &unk_10139D7C0);
        sub_1000D2AD8(v22, v19, &unk_1016AF8A0, &unk_10139D7C0);
        if (v85(v19, 1, v45) == 1)
        {
          sub_10000B3A8(v19, &unk_1016AF8A0, &unk_10139D7C0);
        }

        else
        {
          sub_1000D2AD8(v19, v87, &unk_1016C8FC0, &unk_10139D7D0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_100A5B85C(0, v57[2] + 1, 1, v57);
          }

          v60 = v57[2];
          v59 = v57[3];
          if (v60 >= v59 >> 1)
          {
            v57 = sub_100A5B85C(v59 > 1, v60 + 1, 1, v57);
          }

          v57[2] = v60 + 1;
          sub_1000D2AD8(v87, v57 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v60, &unk_1016C8FC0, &unk_10139D7D0);
          v45 = v84;
        }

        v56 += v54;
        --v58;
      }

      while (v58);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v61 = v57[2];
      if (!v61)
      {

        sub_10000B3A8(v78, &unk_1016AF8A0, &unk_10139D7C0);
        sub_10000B3A8(v81, &unk_1016AF8A0, &unk_10139D7C0);
        sub_10000B3A8(v82, &unk_1016AF8A0, &unk_10139D7C0);
        v67 = 1;
        v66 = v75;
        return (v73)(v66, v67, 1, v84);
      }

      v62 = v83;
      v63 = v57 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v64 = v72;
      result = sub_1000D2A70(v63, v72, &unk_1016C8FC0, &unk_10139D7D0);
      v65 = v71;
      if (v61 == 1)
      {
LABEL_31:

        sub_10000B3A8(v78, &unk_1016AF8A0, &unk_10139D7C0);
        sub_10000B3A8(v81, &unk_1016AF8A0, &unk_10139D7C0);
        sub_10000B3A8(v82, &unk_1016AF8A0, &unk_10139D7C0);
        v66 = v75;
        sub_1000D2AD8(v64, v75, &unk_1016C8FC0, &unk_10139D7D0);
        v67 = 0;
        return (v73)(v66, v67, 1, v84);
      }

      v68 = 1;
      while (v68 < v57[2])
      {
        sub_1000D2A70(v63 + *(v62 + 72) * v68, v65, &unk_1016C8FC0, &unk_10139D7D0);
        v69 = *(v84 + 36);
        if (static Date.< infix(_:_:)())
        {
          sub_10000B3A8(v64, &unk_1016C8FC0, &unk_10139D7D0);
          result = sub_1000D2AD8(v65, v64, &unk_1016C8FC0, &unk_10139D7D0);
        }

        else
        {
          result = sub_10000B3A8(v65, &unk_1016C8FC0, &unk_10139D7D0);
        }

        if (v61 == ++v68)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    __break(1u);
LABEL_10:
    v40 = 0;
    v39 = v80;
    goto LABEL_11;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1011305AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v43 = &v40 - v5;
  v6 = type metadata accessor for KeySyncMetadata();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for UUID();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v45);
  v44 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v40 - v15;
  v17 = *(a1 + 16);
  v18 = _swiftEmptyArrayStorage;
  if (v17)
  {
    v49 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v17, 0);
    v18 = v49;
    v19 = *(v7 + 80);
    v42 = a1;
    v20 = a1 + ((v19 + 32) & ~v19);
    v47 = *(v7 + 72);
    v48 = v11;
    v21 = (v11 + 16);
    v46 = v11 + 32;
    v22 = v45;
    do
    {
      sub_101134ADC(v20, v10, type metadata accessor for KeySyncMetadata);
      (*v21)(v16, v10, v22);
      sub_101134B44(v10, type metadata accessor for KeySyncMetadata);
      v49 = v18;
      v24 = v18[2];
      v23 = v18[3];
      if (v24 >= v23 >> 1)
      {
        sub_101123D4C(v23 > 1, v24 + 1, 1);
        v18 = v49;
      }

      v18[2] = v24 + 1;
      (*(v48 + 32))(v18 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v24, v16, v22);
      v20 += v47;
      --v17;
    }

    while (v17);
    a1 = v42;
    v11 = v48;
  }

  v25 = sub_10000954C(v18);

  if (*(v25 + 16) != 1)
  {

    goto LABEL_11;
  }

  v26 = v43;
  sub_10112C648(v25, v43);

  v27 = v45;
  if ((*(v11 + 48))(v26, 1, v45) == 1)
  {

    sub_10000B3A8(v26, &qword_1016980D0, &unk_10138F3B0);
LABEL_11:
    sub_1011341C4();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }

  v30 = v44;
  (*(v11 + 32))(v44, v26, v27);
  v31 = v27;
  v32 = v41;
  (*(v11 + 16))(v41, v30, v31);
  v33 = type metadata accessor for KeySyncSnapshot();
  v34 = v33[5];

  sub_101130D24(1u, a1, &unk_1016C8FC0, &unk_10139D7D0, &type metadata for PrimaryIndex, &qword_1016C9030, &qword_1014090C8, &qword_1016C9038, v32 + v34);
  v35 = v33[6];

  sub_101130D24(2u, a1, &unk_1016C8FC0, &unk_10139D7D0, &type metadata for PrimaryIndex, &qword_1016C9030, &qword_1014090C8, &qword_1016C9038, v32 + v35);
  v36 = v33[10];

  sub_101130D24(4u, a1, &unk_1016C8FC0, &unk_10139D7D0, &type metadata for PrimaryIndex, &qword_1016C9030, &qword_1014090C8, &qword_1016C9038, v32 + v36);
  v37 = v33[7];

  sub_101130D24(5u, a1, &qword_1016C9018, &qword_1014090B8, &type metadata for PrimaryWildIndex, &qword_1016C9020, &qword_1014090C0, &qword_1016C9028, v32 + v37);
  v38 = v33[8];

  sub_101130D24(6u, a1, &qword_1016C8FE8, &qword_1014090A8, &type metadata for SecondaryIndex, &qword_1016C9000, &qword_1014090B0, &unk_1016C9008, v32 + v38);
  v39 = v33[9];

  sub_101130D24(7u, a1, &unk_1016C8FC0, &unk_10139D7D0, &type metadata for PrimaryIndex, &qword_1016C9030, &qword_1014090C8, &qword_1016C9038, v32 + v39);
  sub_101130D24(8u, a1, &unk_1016C8FC0, &unk_10139D7D0, &type metadata for PrimaryIndex, &qword_1016C9030, &qword_1014090C8, &qword_1016C9038, v32 + v33[11]);
  return (*(v11 + 8))(v44, v45);
}

uint64_t sub_101130BB4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C6B8);
  sub_1000076D4(v0, qword_10177C6B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_101130C38(uint64_t a1)
{
  v2._countAndFlagsBits = sub_1010B7ABC(*(a1 + 16), *(a1 + 24));
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8236;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4 = *(a1 + 36);
  type metadata accessor for Date();
  sub_101134BBC(&qword_1016969A0, &type metadata accessor for Date);
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 41;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 40;
}

uint64_t sub_101130D24@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X6>, unint64_t *a8@<X7>, uint64_t a9@<X8>)
{
  v93 = a8;
  v94 = a7;
  v92 = a6;
  v98 = a5;
  v103 = a9;
  v10 = a1;
  v96 = a3;
  v97 = a4;
  v11 = sub_1000BC4D4(a3, a4);
  v101 = *(v11 - 8);
  v102 = v11;
  v12 = *(v101 + 64);
  __chkstk_darwin(v11);
  v95 = (&v91 - v13);
  v111 = type metadata accessor for KeySyncMetadata();
  v14 = *(v111 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v111);
  v109 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v108 = &v91 - v19;
  v20 = __chkstk_darwin(v18);
  v104 = &v91 - v21;
  v22 = __chkstk_darwin(v20);
  v99 = &v91 - v23;
  v24 = __chkstk_darwin(v22);
  v105 = &v91 - v25;
  v26 = __chkstk_darwin(v24);
  v28 = &v91 - v27;
  __chkstk_darwin(v26);
  v30 = &v91 - v29;
  v31 = sub_1000BC4D4(&unk_1016C8FF0, &qword_101393148);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v100 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v106 = &v91 - v35;
  v36 = *(a2 + 16);
  v107 = v10;
  v110 = v28;
  if (v36)
  {
    v37 = 0;
    v38 = _swiftEmptyArrayStorage;
    while (v37 < *(a2 + 16))
    {
      v39 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v40 = *(v14 + 72);
      sub_101134ADC(a2 + v39 + v40 * v37, v30, type metadata accessor for KeySyncMetadata);
      if (v30[*(v111 + 20)] == v10)
      {
        sub_101134218(v30, v109);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v113[0] = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101123CD8(0, v38[2] + 1, 1);
          v38 = v113[0];
        }

        v43 = v38[2];
        v42 = v38[3];
        if (v43 >= v42 >> 1)
        {
          sub_101123CD8(v42 > 1, v43 + 1, 1);
          v38 = v113[0];
        }

        v38[2] = v43 + 1;
        sub_101134218(v109, v38 + v39 + v43 * v40);
        v10 = v107;
        v28 = v110;
      }

      else
      {
        sub_101134B44(v30, type metadata accessor for KeySyncMetadata);
      }

      if (v36 == ++v37)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_58;
  }

  v38 = _swiftEmptyArrayStorage;
LABEL_13:

  v44 = v38[2];
  if (v44)
  {
    v45 = v38 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    sub_101134ADC(v45, v28, type metadata accessor for KeySyncMetadata);
    v28 = v106;
    v10 = v104;
    v46 = v111;
    v30 = v108;
    if (v44 != 1)
    {
      v61 = 1;
      v62 = v110;
      while (v61 < v38[2])
      {
        sub_101134ADC(v45 + *(v14 + 72) * v61, v30, type metadata accessor for KeySyncMetadata);
        v63 = *(v46 + 28);
        if (static Date.< infix(_:_:)())
        {
          sub_101134B44(v62, type metadata accessor for KeySyncMetadata);
          sub_101134218(v30, v62);
        }

        else
        {
          sub_101134B44(v30, type metadata accessor for KeySyncMetadata);
        }

        ++v61;
        v30 = v108;
        if (v44 == v61)
        {
          goto LABEL_15;
        }
      }

LABEL_58:
      __break(1u);
LABEL_59:
      swift_once();
      goto LABEL_31;
    }

LABEL_15:

    sub_101134218(v110, v28);
    v47 = 0;
    v30 = v10;
    v10 = v105;
    v48 = v99;
  }

  else
  {

    v47 = 1;
    v10 = v105;
    v28 = v106;
    v30 = v104;
    v48 = v99;
    v46 = v111;
  }

  (*(v14 + 56))(v28, v47, 1, v46);
  v49 = v100;
  sub_1000D2A70(v28, v100, &unk_1016C8FF0, &qword_101393148);
  if ((*(v14 + 48))(v49, 1, v46) == 1)
  {
    sub_10000B3A8(v28, &unk_1016C8FF0, &qword_101393148);
    v50 = v49;
    goto LABEL_19;
  }

  sub_101134218(v49, v10);
  sub_101134ADC(v10, v48, type metadata accessor for KeySyncMetadata);
  sub_10001F280(v48 + *(v46 + 24), v113);
  sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  if (swift_dynamicCast())
  {
    v54 = v95;
    *v95 = v112;
    v55 = *(v46 + 28);
    v56 = v102;
    v57 = *(v102 + 36);
    v58 = type metadata accessor for Date();
    (*(*(v58 - 8) + 16))(v54 + v57, v48 + v55, v58);
    sub_101134B44(v48, type metadata accessor for KeySyncMetadata);
    sub_101134B44(v10, type metadata accessor for KeySyncMetadata);
    sub_10000B3A8(v28, &unk_1016C8FF0, &qword_101393148);
    v59 = v103;
    sub_1000D2AD8(v54, v103, v96, v97);
    v53 = v56;
    v52 = v59;
    v51 = 0;
    return (*(v101 + 56))(v52, v51, 1, v53);
  }

  v64 = v92;
  v65 = v94;
  sub_1000BC4D4(v92, v94);
  sub_1000041A4(v93, v64, v65);
  swift_allocError();
  swift_willThrow();
  sub_101134B44(v48, type metadata accessor for KeySyncMetadata);
  if (qword_101695270 != -1)
  {
    goto LABEL_59;
  }

LABEL_31:
  v66 = type metadata accessor for Logger();
  sub_1000076D4(v66, qword_10177C6B8);
  sub_101134ADC(v10, v30, type metadata accessor for KeySyncMetadata);
  swift_errorRetain();
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v113[0] = swift_slowAlloc();
    *v69 = 136315650;
    if (v107 <= 3)
    {
      v79 = 0xE800000000000000;
      v80 = 0x6E776F6E6B6E752ELL;
      v81 = 0xEF64657461726170;
      v82 = 0x6553686374616C2ELL;
      if (v107 != 2)
      {
        v82 = 0xD00000000000001CLL;
        v81 = 0x800000010134B930;
      }

      if (v107)
      {
        v80 = 0x6E774F7261656E2ELL;
        v79 = 0xEA00000000007265;
      }

      if (v107 <= 1)
      {
        v77 = v80;
      }

      else
      {
        v77 = v82;
      }

      if (v107 <= 1)
      {
        v78 = v79;
      }

      else
      {
        v78 = v81;
      }
    }

    else
    {
      v71 = 0xEE00797261646E6FLL;
      v72 = 0x636553646C69772ELL;
      v73 = 0x736142746E69682ELL;
      v74 = 0xEA00000000006465;
      if (v107 != 7)
      {
        v73 = 0x67696C4179656B2ELL;
        v74 = 0xED0000746E656D6ELL;
      }

      if (v107 != 6)
      {
        v72 = v73;
        v71 = v74;
      }

      v75 = 0xD000000000000018;
      v76 = 0x800000010134B910;
      if (v107 != 4)
      {
        v75 = 0x697250646C69772ELL;
        v76 = 0xEC0000007972616DLL;
      }

      if (v107 <= 5)
      {
        v77 = v75;
      }

      else
      {
        v77 = v72;
      }

      if (v107 <= 5)
      {
        v78 = v76;
      }

      else
      {
        v78 = v71;
      }
    }

    v83 = v103;
    v84 = sub_1000136BC(v77, v78, v113);

    *(v69 + 4) = v84;
    *(v69 + 12) = 2082;
    v85 = sub_1009927F0();
    v86 = v30;
    v88 = v87;
    sub_101134B44(v86, type metadata accessor for KeySyncMetadata);
    v89 = sub_1000136BC(v85, v88, v113);

    *(v69 + 14) = v89;
    *(v69 + 22) = 2114;
    swift_errorRetain();
    v90 = _swift_stdlib_bridgeErrorToNSError();
    *(v69 + 24) = v90;
    *v70 = v90;
    _os_log_impl(&_mh_execute_header, v67, v68, "Can't create data of %s type from %{public}s metadata! %{public}@", v69, 0x20u);
    sub_10000B3A8(v70, &qword_10169BB30, &unk_10138B3C0);

    swift_arrayDestroy();

    sub_101134B44(v105, type metadata accessor for KeySyncMetadata);
    sub_10000B3A8(v106, &unk_1016C8FF0, &qword_101393148);
    v51 = 1;
    v52 = v83;
    goto LABEL_20;
  }

  sub_101134B44(v30, type metadata accessor for KeySyncMetadata);
  sub_101134B44(v10, type metadata accessor for KeySyncMetadata);
  v50 = v28;
LABEL_19:
  sub_10000B3A8(v50, &unk_1016C8FF0, &qword_101393148);
  v51 = 1;
  v52 = v103;
LABEL_20:
  v53 = v102;
  return (*(v101 + 56))(v52, v51, 1, v53);
}

uint64_t sub_1011318B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_101131980(char a1)
{
  if (a1)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t sub_1011319B8(void *a1, uint64_t a2)
{
  v14[0] = a2;
  v3 = *(a2 + 24);
  v14[2] = *(a2 + 16);
  type metadata accessor for KeySyncData.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  v10 = *(v3 + 32);
  v11 = v14[3];
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    v12 = *(v14[0] + 36);
    v15 = 1;
    type metadata accessor for Date();
    sub_101134BBC(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_101131BA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v39 = type metadata accessor for Date();
  v36 = *(v39 - 8);
  v7 = *(v36 + 64);
  v8 = __chkstk_darwin(v39);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = *(a2 - 8);
  v10 = *(v41 + 64);
  __chkstk_darwin(v8);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeySyncData.CodingKeys();
  swift_getWitnessTable();
  v45 = type metadata accessor for KeyedDecodingContainer();
  v40 = *(v45 - 8);
  v12 = *(v40 + 64);
  __chkstk_darwin(v45);
  v14 = &v35 - v13;
  v43 = a3;
  v44 = a2;
  v15 = type metadata accessor for KeySyncData();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v35 - v18;
  v20 = a1[4];
  sub_1000035D0(a1, a1[3]);
  v21 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return sub_100007BAC(a1);
  }

  v35 = v16;
  v22 = v19;
  v46 = v15;
  v23 = v40;
  v24 = v41;
  v48 = 0;
  v25 = v42;
  v26 = *(v43 + 3);
  v27 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = *(v24 + 32);
  v43 = v22;
  v28(v22, v25, v27);
  v47 = 1;
  sub_101134BBC(&qword_101697F40, &type metadata accessor for Date);
  v30 = v38;
  v29 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v23 + 8))(v14, v45);
  v31 = v46;
  v32 = v43;
  (*(v36 + 32))(&v43[*(v46 + 36)], v30, v29);
  v33 = v35;
  (*(v35 + 16))(v37, v32, v31);
  sub_100007BAC(a1);
  return (*(v33 + 8))(v32, v31);
}

BOOL sub_10113201C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static Message.MessageError.__derived_enum_equals(_:_:)(*a1, *a2);
}

Swift::Int sub_101132030(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return Message.MessageError.hashValue.getter(*v1);
}

void sub_101132040(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  Message.MessageError.hash(into:)(a1, *v2);
}

Swift::Int sub_101132050(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  Message.MessageError.hash(into:)(v7, *v2);
  return Hasher._finalize()();
}

uint64_t sub_101132098(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_101131980(*v1);
}

uint64_t sub_1011320A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_1011318B0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1011320D8@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_10042AD9C();
  *a2 = result;
  return result;
}

uint64_t sub_101132104(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.description.getter(a1, WitnessTable);
}

uint64_t sub_101132158(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return CodingKey.debugDescription.getter(a1, WitnessTable);
}

uint64_t sub_1011321E8()
{
  v30 = sub_1000BC4D4(&qword_1016C9048, &qword_1014090D8);
  v1 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30);
  v3 = &v29 - v2;
  v29 = sub_1000BC4D4(&qword_1016C9040, &qword_1014090D0);
  v4 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29);
  v6 = &v29 - v5;
  v7 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v29 - v9;
  v31 = 0;
  v32 = 0xE000000000000000;
  _StringGuts.grow(_:)(183);
  v11._countAndFlagsBits = 0xD000000000000014;
  v11._object = 0x800000010137BE90;
  String.append(_:)(v11);
  type metadata accessor for UUID();
  sub_101134BBC(&qword_101696930, &type metadata accessor for UUID);
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  v13._object = 0x800000010137BEB0;
  v13._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v13);
  v14 = type metadata accessor for KeySyncSnapshot();
  sub_1000D2A70(v0 + v14[5], v10, &unk_1016AF8A0, &unk_10139D7C0);
  v15._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v15);

  v16._countAndFlagsBits = 0xD000000000000011;
  v16._object = 0x800000010137BED0;
  String.append(_:)(v16);
  sub_1000D2A70(v0 + v14[6], v10, &unk_1016AF8A0, &unk_10139D7C0);
  v17._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 0xD000000000000015;
  v18._object = 0x800000010137BEF0;
  String.append(_:)(v18);
  sub_1000D2A70(v0 + v14[7], v6, &qword_1016C9040, &qword_1014090D0);
  v19._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 0xD000000000000017;
  v20._object = 0x800000010137BF10;
  String.append(_:)(v20);
  sub_1000D2A70(v0 + v14[8], v3, &qword_1016C9048, &qword_1014090D8);
  v21._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v21);

  v22._countAndFlagsBits = 0xD00000000000001CLL;
  v22._object = 0x800000010137BF30;
  String.append(_:)(v22);
  sub_1000D2A70(v0 + v14[9], v10, &unk_1016AF8A0, &unk_10139D7C0);
  v23._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 0xD000000000000014;
  v24._object = 0x800000010137BF50;
  String.append(_:)(v24);
  sub_1000D2A70(v0 + v14[10], v10, &unk_1016AF8A0, &unk_10139D7C0);
  v25._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v25);

  v26._object = 0x800000010137BF70;
  v26._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v26);
  sub_1000D2A70(v0 + v14[11], v10, &unk_1016AF8A0, &unk_10139D7C0);
  v27._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v27);

  return v31;
}

uint64_t sub_101132634@<X0>(unint64_t a1@<X0>, char a2@<W1>, int a3@<W2>, unint64_t *a4@<X8>)
{
  v29 = a3;
  v30 = a1;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v13 = &v28[-v12];
  v14 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v28[-v16];
  v18 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v28[-v21];
  if (a2)
  {
    v23 = *(v20 + 56);

    return v23(a4, 1, 1, v18);
  }

  else
  {
    v31 = v20;
    sub_10112CE20(v17);
    if ((*(v31 + 48))(v17, 1, v18) == 1)
    {
      sub_10000B3A8(v17, &unk_1016AF8A0, &unk_10139D7C0);
      return (*(v31 + 56))(a4, 1, 1, v18);
    }

    else
    {
      sub_1000D2AD8(v17, v22, &unk_1016C8FC0, &unk_10139D7D0);
      v25 = v30;
      v26 = *(v18 + 36);
      v27 = (v30 - *v22) * 15.0 * 60.0;
      Date.addingTimeInterval(_:)();
      if (v29)
      {
        Date.timeIntervalSince(_:)();
      }

      Date.addingTimeInterval(_:)();
      (*(v7 + 8))(v13, v6);
      sub_10000B3A8(v22, &unk_1016C8FC0, &unk_10139D7D0);
      *a4 = v25;
      (*(v7 + 32))(a4 + *(v18 + 36), v11, v6);
      return (*(v31 + 56))(a4, 0, 1, v18);
    }
  }
}

uint64_t sub_1011329B0(void *a1)
{
  v3 = sub_1000BC4D4(&unk_1016C9290, &qword_101409380);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v19 - v6;
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101134A88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v28 = 0;
  type metadata accessor for UUID();
  sub_101134BBC(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v20 = type metadata accessor for KeySyncSnapshot();
    v9 = *(v20 + 20);
    v27 = 1;
    v10 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
    sub_1000041A4(&qword_1016C92A0, &unk_1016C8FC0, &unk_10139D7D0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = v20;
    v12 = *(v20 + 24);
    v26 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v10;
    v13 = v11[7];
    v25 = 3;
    sub_1000BC4D4(&qword_1016C9018, &qword_1014090B8);
    sub_1000041A4(&qword_1016C92A8, &qword_1016C9018, &qword_1014090B8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v11[8];
    v24 = 4;
    sub_1000BC4D4(&qword_1016C8FE8, &qword_1014090A8);
    sub_1000041A4(qword_1016C92B0, &qword_1016C8FE8, &qword_1014090A8);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = v11[9];
    v23 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = v11[10];
    v22 = 6;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = v11[11];
    v21 = 7;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_101132D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_1000BC4D4(&qword_1016C9048, &qword_1014090D8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v57 = v51 - v5;
  v6 = sub_1000BC4D4(&qword_1016C9040, &qword_1014090D0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v58 = v51 - v8;
  v9 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v54 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v55 = v51 - v14;
  v15 = __chkstk_darwin(v13);
  v56 = v51 - v16;
  v17 = __chkstk_darwin(v15);
  v59 = v51 - v18;
  __chkstk_darwin(v17);
  v20 = (v51 - v19);
  v21 = type metadata accessor for UUID();
  v60 = *(v21 - 8);
  v22 = *(v60 + 64);
  __chkstk_darwin(v21);
  v61 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1000BC4D4(&qword_1016C9260, &qword_101409378);
  v62 = *(v24 - 8);
  v63 = v24;
  v25 = *(v62 + 64);
  __chkstk_darwin(v24);
  v27 = v51 - v26;
  v28 = type metadata accessor for KeySyncSnapshot();
  v29 = *(*(v28 - 1) + 64);
  __chkstk_darwin(v28);
  v31 = v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_101134A88();
  v64 = v27;
  v33 = v65;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    return sub_100007BAC(a1);
  }

  v65 = v20;
  v34 = v31;
  v73 = 0;
  sub_101134BBC(&qword_101698300, &type metadata accessor for UUID);
  v35 = v61;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = v21;
  v37 = *(v60 + 32);
  v52 = v34;
  v37(v34, v35, v21);
  v38 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v72 = 1;
  v39 = sub_1000041A4(&qword_1016C9278, &unk_1016C8FC0, &unk_10139D7D0);
  v40 = v65;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v51[3] = v36;
  sub_1000D2AD8(v40, v52 + v28[5], &unk_1016AF8A0, &unk_10139D7C0);
  v71 = 2;
  v41 = v59;
  v61 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v65 = a1;
  v51[1] = v39;
  v51[2] = v38;
  sub_1000D2AD8(v41, v52 + v28[6], &unk_1016AF8A0, &unk_10139D7C0);
  sub_1000BC4D4(&qword_1016C9018, &qword_1014090B8);
  v70 = 3;
  sub_1000041A4(&qword_1016C9280, &qword_1016C9018, &qword_1014090B8);
  v42 = v58;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v43 = v28;
  v44 = v28[7];
  v45 = v52;
  sub_1000D2AD8(v42, v52 + v44, &qword_1016C9040, &qword_1014090D0);
  sub_1000BC4D4(&qword_1016C8FE8, &qword_1014090A8);
  v69 = 4;
  sub_1000041A4(&qword_1016C9288, &qword_1016C8FE8, &qword_1014090A8);
  v46 = v57;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v46, v45 + v43[8], &qword_1016C9048, &qword_1014090D8);
  v68 = 5;
  v47 = v56;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v47, v45 + v43[9], &unk_1016AF8A0, &unk_10139D7C0);
  v67 = 6;
  v48 = v55;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_1000D2AD8(v48, v45 + v43[10], &unk_1016AF8A0, &unk_10139D7C0);
  v66 = 7;
  v49 = v54;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v62 + 8))(v64, v63);
  sub_1000D2AD8(v49, v45 + v43[11], &unk_1016AF8A0, &unk_10139D7C0);
  sub_101134ADC(v45, v53, type metadata accessor for KeySyncSnapshot);
  sub_100007BAC(v65);
  return sub_101134B44(v45, type metadata accessor for KeySyncSnapshot);
}

unint64_t sub_1011337C0()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x697463656E6E6F63;
    if (v1 != 6)
    {
      v5 = 0x6E67696C4179656BLL;
    }

    v6 = 0xD000000000000010;
    if (v1 != 4)
    {
      v6 = 0xD000000000000015;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656E774F7261656ELL;
    v3 = 0x4B6465686374616CLL;
    if (v1 != 2)
    {
      v3 = 0x6D697250646C6977;
    }

    if (!*v0)
    {
      v2 = 0xD000000000000010;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1011338F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_101134D70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10113391C(uint64_t a1)
{
  v2 = sub_101134A88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_101133958(uint64_t a1)
{
  v2 = sub_101134A88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1011339C8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_101133A9C(unint64_t a1, int a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_100008BB8(0, a5, a6);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_100008BB8(0, a5, a6);
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = v18;
    v11 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v12 = -1 << *(a4 + 32);
    a1 = v11 & ~v12;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v13 = ~v12;
      do
      {
        v14 = *(*(a4 + 48) + 8 * a1);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v13;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v16 = *(*(a4 + 48) + 8 * a1);

  v17 = v16;
}

uint64_t sub_101133CB4(uint64_t result, int a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      __CocoaSet.element(at:)();
      sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
      swift_dynamicCast();
      return v12;
    }

    goto LABEL_22;
  }

  if (a3)
  {
    sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
    result = __CocoaSet.Index.age.getter();
    if (result != *(a4 + 36))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v6 = *(a4 + 40);
    sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
    v7 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v8 = -1 << *(a4 + 32);
    v5 = v7 & ~v8;
    if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v9 = ~v8;
      sub_1000041A4(&unk_1016C9050, &unk_1016C2180, &unk_1013EA680);
      do
      {
        v11 = *(*(a4 + 48) + 8 * v5);
        if (dispatch thunk of static Equatable.== infix(_:_:)())
        {
          goto LABEL_16;
        }

        v5 = (v5 + 1) & v9;
      }

      while (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
    }

    __break(1u);
  }

  if ((v5 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v5)
  {
    goto LABEL_20;
  }

  if (((*(a4 + 8 * (v5 >> 6) + 56) >> v5) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v10 = *(*(a4 + 48) + 8 * v5);
}

uint64_t sub_101133F28(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v15 = *(v12 + 16);
  v13 = *(v12 + 72) * a3;
  v15(v9, v10 + v13, v11);
  v14 = *(a6 + 56) + v13;

  return (v15)(a2, v14, v11);
}

_OWORD *sub_101134030(_OWORD *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = *(a6 + 56);
  v10 = *(*(a6 + 48) + 16 * a3);
  *result = v10;
  v9 = type metadata accessor for MACAddress();
  (*(*(v9 - 8) + 16))(a2, v8 + *(*(v9 - 8) + 72) * a3, v9);

  return sub_100017D5C(v10, *(&v10 + 1));
}

uint64_t sub_101134114@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v15 = v4;
    v16 = v5;
    v6 = *(a3 + 56) + 72 * result;
    v13[0] = *v6;
    v8 = *(v6 + 32);
    v7 = *(v6 + 48);
    v9 = *(v6 + 16);
    v14 = *(v6 + 64);
    v13[2] = v8;
    v13[3] = v7;
    v13[1] = v9;
    v10 = *(v6 + 48);
    *(a4 + 32) = *(v6 + 32);
    *(a4 + 48) = v10;
    *(a4 + 64) = *(v6 + 64);
    v11 = *(v6 + 16);
    *a4 = *v6;
    *(a4 + 16) = v11;
    return sub_1009871D4(v13, v12);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_1011341C4()
{
  result = qword_1016C8FE0;
  if (!qword_1016C8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8FE0);
  }

  return result;
}

uint64_t sub_101134218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeySyncMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10113427C(uint64_t result, int a2, uint64_t a3, uint64_t a4)
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
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_10113431C()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_1002ECE54(319, &qword_1016C9178, &unk_1016C8FC0, &unk_10139D7D0);
    if (v1 <= 0x3F)
    {
      sub_1002ECE54(319, &qword_1016C9180, &qword_1016C9018, &qword_1014090B8);
      if (v2 <= 0x3F)
      {
        sub_1002ECE54(319, &unk_1016C9188, &qword_1016C8FE8, &qword_1014090A8);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_101134420(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = type metadata accessor for Date();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1011344A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_10113470C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(type metadata accessor for Date() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

unint64_t sub_101134A18()
{
  result = qword_1016C9250;
  if (!qword_1016C9250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9250);
  }

  return result;
}

unint64_t sub_101134A88()
{
  result = qword_1016C9268;
  if (!qword_1016C9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9268);
  }

  return result;
}

uint64_t sub_101134ADC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101134B44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_101134BBC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_101134C18()
{
  result = qword_1016C9340;
  if (!qword_1016C9340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9340);
  }

  return result;
}

unint64_t sub_101134CC4()
{
  result = qword_1016C9348;
  if (!qword_1016C9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9348);
  }

  return result;
}

unint64_t sub_101134D1C()
{
  result = qword_1016C9350;
  if (!qword_1016C9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9350);
  }

  return result;
}

uint64_t sub_101134D70(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000101347590 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E774F7261656ELL && a2 == 0xEC00000079654B72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4B6465686374616CLL && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D697250646C6977 && a2 == 0xEE0079654B797261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010137BF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010137BFB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xED000079654B6E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E67696C4179656BLL && a2 == 0xEC000000746E656DLL)
  {

    return 7;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

void sub_101135038(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr);
    sub_100009D18(&qword_1016A4758, &qword_1016996A0, FAFamilyMember_ptr);
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
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

  v20 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100008BB8(0, &qword_1016996A0, FAFamilyMember_ptr), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_1000128F8();
      return;
    }

LABEL_17:
    v12 = [v11 altDSID];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100A5B2CC(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100A5B2CC((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1011352FC(uint64_t a1)
{
  v108 = a1;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v111 = *(v2 - 8);
  v3 = *(v111 + 64);
  __chkstk_darwin(v2);
  v5 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v110 = *(v6 - 8);
  v7 = *(v110 + 64);
  __chkstk_darwin(v6);
  v109 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MessagingMessageContext();
  v105 = *(v9 - 8);
  v10 = *(v105 + 64);
  __chkstk_darwin(v9 - 8);
  v106 = v11;
  v107 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for DispatchQoS.QoSClass();
  v103 = *(v104 - 8);
  v12 = *(v103 + 64);
  __chkstk_darwin(v104);
  v102 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for Date();
  v114 = *(v117 - 8);
  v14 = *(v114 + 64);
  v15 = __chkstk_darwin(v117);
  v120 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v116 = &v98 - v17;
  v123 = type metadata accessor for UUID();
  v115 = *(v123 - 8);
  v18 = *(v115 + 64);
  __chkstk_darwin(v123);
  v20 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v119 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = (&v98 - v25);
  v27 = type metadata accessor for DispatchPredicate();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = (&v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v112 = v1;
  v32 = *(v1 + 168);
  *v31 = v32;
  (*(v28 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v27);
  v33 = v32;
  LOBYTE(v32) = _dispatchPreconditionTest(_:)();
  (*(v28 + 8))(v31, v27);
  if ((v32 & 1) == 0)
  {
    goto LABEL_33;
  }

  if (qword_101694940 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v99 = v5;
    v100 = v6;
    v101 = v2;
    v34 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v113 = sub_101073C70(aBlock);

    v122 = *(v112 + 144);
    v35 = sub_100007F54();
    v2 = v35;
    v36 = v35[2];
    v37 = _swiftEmptyArrayStorage;
    if (!v36)
    {
      break;
    }

    v5 = 0;
    v6 = (v35 + 4);
    v38 = (v115 + 8);
    v121 = v26;
    v118 = (v115 + 8);
    while (v5 < *(v2 + 16))
    {
      sub_10001F280(v6, &aBlock);
      v40 = v126;
      v39 = v127;
      sub_1000035D0(&aBlock, v126);
      (*(*(*(v39 + 1) + 8) + 32))(v40);
      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v41 = sub_100035730(v20, 0, 0);
      v42 = sub_10003ABC0(v26, v20, v41, 1);

      (*v38)(v20, v123);
      sub_10000B3A8(v26, &unk_101696900, &unk_10138B1E0);
      if (v42)
      {
        sub_100031694(&aBlock, &v129);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132 = v37;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100025B1C(0, v37[2] + 1, 1);
          v37 = v132;
        }

        v44 = v2;
        v46 = v37[2];
        v45 = v37[3];
        if (v46 >= v45 >> 1)
        {
          sub_100025B1C((v45 > 1), v46 + 1, 1);
        }

        v47 = v130;
        v48 = v131;
        v49 = sub_10015049C(&v129, v130);
        v50 = *(*(v47 - 8) + 64);
        __chkstk_darwin(v49);
        v52 = &v98 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v53 + 16))(v52);
        sub_1006252D4(v46, v52, &v132, v47, v48);
        sub_100007BAC(&v129);
        v37 = v132;
        v2 = v44;
        v26 = v121;
        v38 = v118;
      }

      else
      {
        sub_100007BAC(&aBlock);
      }

      ++v5;
      v6 += 40;
      if (v36 == v5)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_16:

  v54 = v37[2];
  if (v54)
  {
    v98 = v37;
    v55 = (v37 + 4);
    v121 = (v115 + 8);
    v115 = v114 + 48;
    v113 = (v114 + 32);
    v118 = (v114 + 8);
    v114 += 16;
    v56 = _swiftEmptyDictionarySingleton;
    do
    {
      sub_10001F280(v55, &aBlock);
      v61 = v126;
      v62 = v127;
      sub_1000035D0(&aBlock, v126);
      v63 = *(*(v62 + 1) + 8);
      v64 = *(v63 + 32);

      v64(v61, v63);
      if (qword_101694920 != -1)
      {
        swift_once();
      }

      v65 = sub_100035730(v20, 0, 0);
      v66 = v119;
      sub_10003ABC0(v119, v20, v65, 1);
      v67 = v66;

      v68 = *v121;
      (*v121)(v20, v123);
      v69 = *v115;
      v70 = v66;
      v71 = v117;
      v72 = (*v115)(v70, 1, v117);
      v73 = v116;
      if (v72 == 1)
      {
        v74 = v120;
        static Date.trustedNow.getter(v120);
        Date.addingTimeInterval(_:)();
        v75 = v74;
        v76 = v119;
        (*v118)(v75, v71);
        if (v69(v76, 1, v71) != 1)
        {
          sub_10000B3A8(v76, &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        (*v113)(v116, v67, v71);
      }

      v58 = v126;
      v57 = v127;
      sub_1000035D0(&aBlock, v126);
      (*(*(*(v57 + 1) + 8) + 32))(v58);
      v59 = v120;
      (*v114)(v120, v73, v71);
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v129 = v56;
      sub_100FFD694(v59, v20, v60);

      v68(v20, v123);
      (*v118)(v73, v71);
      v56 = v129;
      sub_100007BAC(&aBlock);
      v55 += 40;
      --v54;
    }

    while (v54);
  }

  else
  {

    v56 = _swiftEmptyDictionarySingleton;
  }

  v77 = static os_log_type_t.info.getter();
  v78 = v101;
  v79 = v111;
  v80 = v99;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v81 = qword_10177C378;
  if (os_log_type_enabled(qword_10177C378, v77))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *&aBlock = v83;
    *v82 = 136315138;
    sub_100004114(&qword_1016967B0, &type metadata accessor for UUID);
    v84 = Dictionary.description.getter();
    v86 = sub_1000136BC(v84, v85, &aBlock);

    *(v82 + 4) = v86;
    _os_log_impl(&_mh_execute_header, v81, v77, "handleNearbyBeaconsRequest response: %s", v82, 0xCu);
    sub_100007BAC(v83);
  }

  sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
  v87 = v103;
  v88 = v102;
  v89 = v104;
  (*(v103 + 104))(v102, enum case for DispatchQoS.QoSClass.default(_:), v104);
  v90 = static OS_dispatch_queue.global(qos:)();
  (*(v87 + 8))(v88, v89);
  v91 = swift_allocObject();
  swift_weakInit();
  v92 = v107;
  sub_101149F2C(v108, v107, type metadata accessor for MessagingMessageContext);
  v93 = (*(v105 + 80) + 32) & ~*(v105 + 80);
  v94 = swift_allocObject();
  *(v94 + 16) = v56;
  *(v94 + 24) = v91;
  sub_101149EC4(v92, v94 + v93, type metadata accessor for MessagingMessageContext);
  v127 = sub_10114827C;
  v128 = v94;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v125 = sub_100006684;
  v126 = &unk_101668760;
  v95 = _Block_copy(&aBlock);

  v96 = v109;
  static DispatchQoS.unspecified.getter();
  v129 = _swiftEmptyArrayStorage;
  sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v95);

  (*(v79 + 8))(v80, v78);
  (*(v110 + 8))(v96, v100);
}

uint64_t sub_101136210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21[0] = a3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v22 = *(v10 - 8);
  v23 = v10;
  v11 = *(v22 + 64);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v21[1] = *(v4 + 176);
  (*(v15 + 16))(v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14);
  v17 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  (*(v15 + 32))(v18 + v17, v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  *(v18 + ((v16 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v21[0];
  aBlock[4] = sub_1011499C4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101668CB0;
  v19 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v24 + 8))(v9, v6);
  (*(v22 + 8))(v13, v23);
}

uint64_t sub_10113659C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a1;
  v35 = a7;
  v39 = a5;
  v40 = a6;
  v33 = a4;
  v38 = type metadata accessor for SharedBeaconRecord(0);
  v31 = *(v38 - 8);
  v9 = *(v31 + 64);
  __chkstk_darwin(v38);
  v32 = v10;
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v36 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10138B360;
  v13 = type metadata accessor for MessagingMessageContext();
  v14 = a2 + *(v13 + 24);
  v15 = *(v14 + 8);
  v16 = *(v14 + 16);
  *(v12 + 56) = &type metadata for String;
  v17 = sub_100008C00();
  *(v12 + 64) = v17;
  *(v12 + 32) = v15;
  *(v12 + 40) = v16;
  v18 = (a2 + *(v13 + 48));
  v19 = *v18;
  v20 = v18[1];
  *(v12 + 96) = &type metadata for String;
  *(v12 + 104) = v17;
  *(v12 + 72) = v19;
  *(v12 + 80) = v20;
  sub_101149F2C(a3, v11, type metadata accessor for SharedBeaconRecord);

  v21 = String.init<A>(describing:)();
  *(v12 + 136) = &type metadata for String;
  *(v12 + 144) = v17;
  *(v12 + 112) = v21;
  *(v12 + 120) = v22;
  os_log(_:dso:log:_:_:)();

  if (sub_1011483FC(a2, v39, v40, a3))
  {
    v23 = v33;
    v24 = *(v33 + 144);
    sub_101149F2C(a3, v11, type metadata accessor for SharedBeaconRecord);
    v25 = a3;
    v26 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v27 = (v32 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = swift_allocObject();
    v29 = v34;
    *(v28 + 16) = v23;
    *(v28 + 24) = v29;
    sub_101149EC4(v11, v28 + v26, type metadata accessor for SharedBeaconRecord);
    *(v28 + v27) = v35;

    sub_1006DF8EC(v25, 0, sub_1011485AC, v28);
  }

  else
  {
    static os_log_type_t.error.getter();
    return os_log(_:dso:log:_:_:)();
  }
}

uint64_t sub_1011368C8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v150 = a1;
  v151 = a5;
  v156 = 0;
  v8 = type metadata accessor for Date();
  v144 = *(v8 - 8);
  v145 = v8;
  v9 = *(v144 + 64);
  v10 = __chkstk_darwin(v8);
  v142 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v143 = &v135 - v12;
  v13 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v140 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  *&v149 = &v135 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v135 - v20;
  __chkstk_darwin(v19);
  v148 = &v135 - v22;
  v23 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23);
  v26 = (&v135 - v25);
  v27 = type metadata accessor for SharedBeaconRecord(0);
  v152 = *(v27 - 8);
  v153 = v27;
  v28 = *(v152 + 64);
  v29 = __chkstk_darwin(v27);
  v141 = &v135 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v139 = &v135 - v32;
  v33 = __chkstk_darwin(v31);
  v146 = &v135 - v34;
  v35 = __chkstk_darwin(v33);
  v37 = &v135 - v36;
  v137 = v38;
  __chkstk_darwin(v35);
  v40 = &v135 - v39;
  v147 = a2;
  v155 = *(a2 + 144);
  v138 = a3;
  Transaction.capture()();
  v154 = v40;
  sub_101149F2C(a4, v40, type metadata accessor for SharedBeaconRecord);
  sub_1000D2A70(v150, v26, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_101149EC4(v26, v37, type metadata accessor for SharedBeaconRecord);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v45 = qword_10177C378;
    v150 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v46 = swift_allocObject();
    v149 = xmmword_101385D80;
    *(v46 + 16) = xmmword_101385D80;
    sub_101149F2C(v37, v146, type metadata accessor for SharedBeaconRecord);
    v43 = v153;
    v47 = String.init<A>(describing:)();
    v49 = v48;
    *(v46 + 56) = &type metadata for String;
    v141 = sub_100008C00();
    *(v46 + 64) = v141;
    *(v46 + 32) = v47;
    *(v46 + 40) = v49;
    os_log(_:dso:log:_:_:)();

    v50 = v148;
    sub_101149F2C(v37, v148, type metadata accessor for SharedBeaconRecord);
    v51 = v152;
    (*(v152 + 56))(v50, 0, 1, v43);
    sub_1000D2A70(v50, v21, &unk_101698C30, &unk_101392630);
    v52 = (*(v51 + 48))(v21, 1, v43);
    v53 = v155;
    v54 = v139;
    if (v52 == 1)
    {
      sub_10000B3A8(v21, &unk_101698C30, &unk_101392630);
      v55 = v154;
      v56 = v151;
    }

    else
    {
      v140 = v45;
      v136 = v37;
      sub_101149EC4(v21, v139, type metadata accessor for SharedBeaconRecord);
      v57 = v147;
      v58 = *(v147 + 320);
      v59 = &v154[*(v43 + 20)];
      v60 = v54;
      v61 = v143;
      v62 = static Date.trustedNow.getter(v143);
      v63 = *(v58 + 24);
      __chkstk_darwin(v62);
      *(&v135 - 4) = v58;
      *(&v135 - 24) = 0;
      *(&v135 - 2) = v59;
      v21 = v142;
      v64 = v145;
      v65 = v156;
      OS_dispatch_queue.sync<A>(execute:)();
      v156 = v65;
      Date.timeIntervalSince(_:)();
      v67 = v66;
      v43 = v144 + 8;
      v68 = *(v144 + 8);
      v68(v21, v64);
      v68(v61, v64);
      if (v67 <= 60.0)
      {
        sub_101149F94(v60, type metadata accessor for SharedBeaconRecord);
        v56 = v151;
        v37 = v136;
        v55 = v154;
      }

      else
      {
        static Date.trustedNow.getter(v61);
        sub_1010B1D04(v59, v61, 0);
        v68(v61, v64);
        v55 = v154;
        v69 = v146;
        sub_101149F2C(v154, v146, type metadata accessor for SharedBeaconRecord);
        v70 = (*(v152 + 80) + 32) & ~*(v152 + 80);
        v71 = swift_allocObject();
        *(v71 + 16) = v138;
        *(v71 + 24) = v57;
        sub_101149EC4(v69, v71 + v70, type metadata accessor for SharedBeaconRecord);

        sub_10055F5E4(v60, sub_10114A048, v71);

        sub_101149F94(v60, type metadata accessor for SharedBeaconRecord);
        v56 = v151;
        v37 = v136;
      }

      v53 = v155;
    }

    v41 = *(v56 + 16);
    if (!v41)
    {
      goto LABEL_37;
    }

    v117 = v56;
    v118 = v156;
    v119 = sub_1013131C0(1uLL, v41, v117);
    if (v118)
    {
      static os_log_type_t.error.getter();
      v122 = swift_allocObject();
      *(v122 + 16) = v149;
      v158[0] = v118;
      swift_errorRetain();
      sub_1000BC4D4(&qword_101696960, &unk_10138B220);
      v123 = String.init<A>(describing:)();
      v124 = v141;
      *(v122 + 56) = &type metadata for String;
      *(v122 + 64) = v124;
      *(v122 + 32) = v123;
      *(v122 + 40) = v125;
      os_log(_:dso:log:_:_:)();

      sub_10000B3A8(v148, &unk_101698C30, &unk_101392630);
    }

    else
    {
      v126 = v119;
      v127 = v120;
      v128 = v121;
      v129 = *&v53[OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock];
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v130 = v158[0];
      v131 = sub_1012E9F5C(v55, 1, v126, v127, v128, 0, 0, 0);
      sub_1012F0B9C(v55 + *(v153 + 20), v131, v158);

      v132 = v158[0];
      v133 = type metadata accessor for Transaction();
      v156 = &v135;
      v158[0] = v132;
      __chkstk_darwin(v133);
      *(&v135 - 6) = v130;
      *(&v135 - 5) = v55;
      *(&v135 - 4) = 0;
      *(&v135 - 3) = 0;
      *(&v135 - 2) = v158;

      static Transaction.named<A>(_:with:)();
      sub_10000B3A8(v148, &unk_101698C30, &unk_101392630);
    }

    sub_101149F94(v55, type metadata accessor for SharedBeaconRecord);
    sub_100A8306C(2);
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    return sub_101149F94(v37, type metadata accessor for SharedBeaconRecord);
  }

  v158[0] = *v26;
  v21 = v158[0];
  swift_errorRetain();
  v41 = sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for CKError(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v37 = v155;
    v43 = v147;
    goto LABEL_15;
  }

  v42 = v157;
  v158[0] = v157;
  sub_100004114(&qword_101696250, type metadata accessor for CKError);
  _BridgedStoredNSError.code.getter();
  v37 = v155;
  v43 = v147;
  if (v157 != 14)
  {

LABEL_15:
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      goto LABEL_38;
    }

    goto LABEL_16;
  }

  static os_log_type_t.default.getter();
  v44 = v153;
  if (qword_101695030 != -1)
  {
    swift_once();
    v44 = v153;
  }

  v150 = qword_10177C378;
  os_log(_:dso:log:_:_:)();

  while (1)
  {
    v77 = v152;
    v78 = v149;
    (*(v152 + 56))(v149, 1, 1, v44);
    v79 = v78;
    v80 = v140;
    sub_1000D2A70(v79, v140, &unk_101698C30, &unk_101392630);
    v81 = (*(v77 + 48))(v80, 1, v44);
    v82 = v141;
    if (v81 == 1)
    {
      sub_10000B3A8(v80, &unk_101698C30, &unk_101392630);
      v83 = v151;
    }

    else
    {
      v147 = v41;
      v148 = v21;
      sub_101149EC4(v80, v141, type metadata accessor for SharedBeaconRecord);
      v84 = *(v43 + 320);
      v85 = &v154[*(v44 + 20)];
      v86 = v143;
      v87 = static Date.trustedNow.getter(v143);
      v88 = *(v84 + 24);
      __chkstk_darwin(v87);
      *(&v135 - 4) = v84;
      *(&v135 - 24) = 0;
      *(&v135 - 2) = v85;
      v89 = v142;
      v90 = v145;
      v91 = v156;
      OS_dispatch_queue.sync<A>(execute:)();
      v156 = v91;
      Date.timeIntervalSince(_:)();
      v93 = v92;
      v94 = *(v144 + 8);
      v94(v89, v90);
      v94(v86, v90);
      if (v93 > 60.0)
      {
        static Date.trustedNow.getter(v86);
        sub_1010B1D04(v85, v86, 0);
        v94(v86, v90);
        v95 = v146;
        sub_101149F2C(v154, v146, type metadata accessor for SharedBeaconRecord);
        v96 = (*(v152 + 80) + 32) & ~*(v152 + 80);
        v97 = swift_allocObject();
        *(v97 + 16) = v138;
        *(v97 + 24) = v43;
        sub_101149EC4(v95, v97 + v96, type metadata accessor for SharedBeaconRecord);

        sub_10055F5E4(v82, sub_101148664, v97);
      }

      sub_101149F94(v82, type metadata accessor for SharedBeaconRecord);
      v83 = v151;
      v41 = v147;
      v21 = v148;
      v37 = v155;
    }

    v98 = *(v83 + 16);
    if (v98)
    {
      break;
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
LABEL_16:
    v72 = qword_10177C378;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_101385D80;
    v158[0] = v21;
    swift_errorRetain();
    v74 = String.init<A>(describing:)();
    v76 = v75;
    *(v73 + 56) = &type metadata for String;
    *(v73 + 64) = sub_100008C00();
    *(v73 + 32) = v74;
    *(v73 + 40) = v76;
    v150 = v72;
    os_log(_:dso:log:_:_:)();

    v44 = v153;
  }

  v99 = v83;
  v100 = v156;
  v101 = sub_1013131C0(1uLL, v98, v99);
  if (v100)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_101385D80;
    v158[0] = v100;
    swift_errorRetain();
    v105 = String.init<A>(describing:)();
    v107 = v106;
    *(v104 + 56) = &type metadata for String;
    *(v104 + 64) = sub_100008C00();
    *(v104 + 32) = v105;
    *(v104 + 40) = v107;
    os_log(_:dso:log:_:_:)();

    sub_10000B3A8(v149, &unk_101698C30, &unk_101392630);
    v37 = v154;
  }

  else
  {
    v108 = v101;
    v109 = v102;
    v110 = v103;
    v111 = *&v37[OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock];
    type metadata accessor for BeaconKeyManager(0);
    v112 = v154;
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v113 = v158[0];
    v114 = sub_1012E9F5C(v112, 1, v108, v109, v110, 0, 0, 0);
    sub_1012F0B9C(v112 + *(v153 + 20), v114, v158);

    v115 = v158[0];
    v116 = type metadata accessor for Transaction();
    v158[0] = v115;
    __chkstk_darwin(v116);
    *(&v135 - 6) = v113;
    *(&v135 - 5) = v112;
    *(&v135 - 4) = 0;
    *(&v135 - 3) = 0;
    *(&v135 - 2) = v158;

    static Transaction.named<A>(_:with:)();

    sub_10000B3A8(v149, &unk_101698C30, &unk_101392630);

    v37 = v112;
  }

  return sub_101149F94(v37, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_101137AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[0] = a4;
  v6 = type metadata accessor for SharedBeaconRecord(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v29 - v11;
  v13 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = (v29 - v15);
  Transaction.capture()();
  v17 = *(a3 + 256);
  PassthroughSubject.send(_:)();
  sub_1000D2A70(a1, v16, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v16;
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    v29[1] = v18;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    v23 = *(a3 + 320);
    sub_1010B22E4(v29[0] + *(v6 + 20), 0);
  }

  else
  {
    sub_101149EC4(v16, v12, type metadata accessor for SharedBeaconRecord);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_101385D80;
    sub_101149F2C(v12, v10, type metadata accessor for SharedBeaconRecord);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    *(v25 + 64) = sub_100008C00();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    os_log(_:dso:log:_:_:)();

    return sub_101149F94(v12, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_101137E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a1;
  v54 = a6;
  v55 = a7;
  v51 = a5;
  v53 = a4;
  v57 = a3;
  v46 = type metadata accessor for UUID();
  v52 = *(v46 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v46);
  v49 = v9;
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v48 = v12;
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v44 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138B360;
  v15 = type metadata accessor for MessagingMessageContext();
  v16 = a2 + *(v15 + 24);
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  *(v14 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v14 + 64) = v19;
  *(v14 + 32) = v17;
  *(v14 + 40) = v18;
  v20 = (a2 + *(v15 + 48));
  v21 = *v20;
  v22 = v20[1];
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v19;
  *(v14 + 72) = v21;
  *(v14 + 80) = v22;
  v23 = v57;
  sub_101149F2C(v57, v13, type metadata accessor for SharedBeaconRecord);

  v24 = v13;
  v43 = v13;
  v25 = String.init<A>(describing:)();
  *(v14 + 136) = &type metadata for String;
  *(v14 + 144) = v19;
  *(v14 + 112) = v25;
  *(v14 + 120) = v26;
  os_log(_:dso:log:_:_:)();

  v27 = v52;
  v28 = v50;
  v29 = v46;
  (*(v52 + 16))(v50, v51, v46);
  sub_101149F2C(v23, v24, type metadata accessor for SharedBeaconRecord);
  v30 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v31 = (v49 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v47 + 80) + v33 + 8) & ~*(v47 + 80);
  v35 = swift_allocObject();
  v36 = v29;
  v37 = v53;
  *(v35 + 16) = v53;
  (*(v27 + 32))(v35 + v30, v28, v36);
  v38 = v56;
  *(v35 + v31) = v56;
  v39 = v55;
  *(v35 + v32) = v54;
  *(v35 + v33) = v39;
  sub_101149EC4(v43, v35 + v34, type metadata accessor for SharedBeaconRecord);
  v40 = *(v37 + 144);
  swift_retain_n();

  sub_100B1C66C(v57, 0, v40, v38, sub_101148960, v35);
}

uint64_t sub_101138278(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v128 = a7;
  v135 = a6;
  v136 = a3;
  v144 = 0;
  *&v145 = a5;
  v133 = a4;
  v137 = a2;
  v143 = a1;
  v146 = type metadata accessor for FamilyCryptoKeysV2();
  v134 = *(v146 - 8);
  v7 = *(v134 + 64);
  v8 = __chkstk_darwin(v146);
  v142 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v147 = &v127 - v11;
  v12 = __chkstk_darwin(v10);
  v138 = (&v127 - v13);
  v14 = __chkstk_darwin(v12);
  v139 = (&v127 - v15);
  v16 = __chkstk_darwin(v14);
  v140 = (&v127 - v17);
  __chkstk_darwin(v16);
  v141 = (&v127 - v18);
  v132 = type metadata accessor for UUID();
  v131 = *(v132 - 8);
  v19 = *(v131 + 64);
  __chkstk_darwin(v132);
  v129 = v20;
  v130 = &v127 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v127 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v127 - v27;
  v29 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v32 = &v127 - v31;
  v33 = type metadata accessor for SharedBeaconRecord(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  v37 = &v127 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(v143, v32, &unk_101698C30, &unk_101392630);
  v38 = *(v34 + 48);
  v127 = v33;
  if (v38(v32, 1, v33) == 1)
  {
    sub_10000B3A8(v32, &unk_101698C30, &unk_101392630);
    v39 = v141;
    v40 = v144;
  }

  else
  {
    sub_101149EC4(v32, v37, type metadata accessor for SharedBeaconRecord);
    v41 = *(v137 + 320);
    v42 = static Date.trustedNow.getter(v28);
    v43 = *(v41 + 24);
    __chkstk_darwin(v42);
    *(&v127 - 4) = v41;
    *(&v127 - 24) = 0;
    *(&v127 - 2) = v136;
    v40 = v144;
    OS_dispatch_queue.sync<A>(execute:)();
    Date.timeIntervalSince(_:)();
    v45 = v44;
    v46 = *(v22 + 8);
    v46(v26, v21);
    v46(v28, v21);
    if (v45 > 60.0)
    {
      static Date.trustedNow.getter(v28);
      v47 = v136;
      sub_1010B1D04(v136, v28, 0);
      v46(v28, v21);
      v48 = v131;
      v49 = v130;
      v50 = v132;
      (*(v131 + 16))(v130, v47, v132);
      v51 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v52 = swift_allocObject();
      v53 = v137;
      *(v52 + 16) = v133;
      *(v52 + 24) = v53;
      (*(v48 + 32))(v52 + v51, v49, v50);

      sub_10055B758(v37, sub_101148978, v52);
    }

    sub_101149F94(v37, type metadata accessor for SharedBeaconRecord);
    v39 = v141;
  }

  v54 = *(v145 + 16);
  if (!v54)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 == -1)
    {
      return os_log(_:dso:log:_:_:)();
    }

LABEL_55:
    swift_once();
    return os_log(_:dso:log:_:_:)();
  }

  v55 = v134;
  v56 = (*(v134 + 80) + 32) & ~*(v134 + 80);
  v57 = v145 + v56;
  sub_101149F2C(v145 + v56, v39, type metadata accessor for FamilyCryptoKeysV2);
  v58 = *(v55 + 72);
  v59 = v140;
  sub_101149F2C(v57 + v58 * (v54 - 1), v140, type metadata accessor for FamilyCryptoKeysV2);
  v60 = *(v135 + 16);
  if (v60)
  {
    v61 = v135 + v56;
    sub_101149F2C(v61, v139, type metadata accessor for FamilyCryptoKeysV2);
    v143 = v58;
    sub_101149F2C(v61 + (v60 - 1) * v58, v138, type metadata accessor for FamilyCryptoKeysV2);
    v62 = *v39;
    if (*v59 >= *v39)
    {
      v135 = *v59;
      v136 = v62;
      v133 = v61;
      v134 = v60;
      v148[0] = _swiftEmptyArrayStorage;
      sub_101124C34(0, v54, 0);
      v63 = v148[0];
      v145 = xmmword_10138BBF0;
      do
      {
        sub_101149F2C(v57, v147, type metadata accessor for FamilyCryptoKeysV2);
        v64 = type metadata accessor for __DataStorage();
        v65 = *(v64 + 48);
        v66 = *(v64 + 52);
        swift_allocObject();
        v67 = __DataStorage.init(length:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
          {
            goto LABEL_52;
          }

          v68 = *(v64 + 48);
          v69 = *(v64 + 52);
          swift_allocObject();
          v70 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v67 = v70;
        }

        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_57;
        }

        v72 = result;
        v73 = __DataStorage._offset.getter();
        v74 = -v73;
        if (__OFSUB__(0, v73))
        {
          __break(1u);
          goto LABEL_51;
        }

        v144 = v64;
        v75 = __DataStorage._length.getter();
        if (v75 >= 32)
        {
          v76 = 32;
        }

        else
        {
          v76 = v75;
        }

        bzero((v72 + v74), v76);

        v77 = v147;
        v78 = (v147 + *(v146 + 24));
        v80 = *v78;
        v79 = v78[1];
        sub_100017D5C(*v78, v79);
        sub_101149F94(v77, type metadata accessor for FamilyCryptoKeysV2);
        v148[0] = v63;
        v82 = *(v63 + 16);
        v81 = *(v63 + 24);
        if (v82 >= v81 >> 1)
        {
          sub_101124C34((v81 > 1), v82 + 1, 1);
          v63 = v148[0];
        }

        *(v63 + 16) = v82 + 1;
        v83 = v63 + 48 * v82;
        *(v83 + 32) = 0x2000000000;
        *(v83 + 40) = v67 | 0x4000000000000000;
        *(v83 + 48) = v80;
        *(v83 + 56) = v79;
        *(v83 + 64) = v145;
        v57 += v143;
        --v54;
      }

      while (v54);
      result = sub_1013131C0(v136, v135, v63);
      if (v40)
      {
LABEL_46:
        sub_101149F94(v138, type metadata accessor for FamilyCryptoKeysV2);
        sub_101149F94(v139, type metadata accessor for FamilyCryptoKeysV2);
        sub_101149F94(v140, type metadata accessor for FamilyCryptoKeysV2);
        sub_101149F94(v141, type metadata accessor for FamilyCryptoKeysV2);
        static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_101385D80;
        v148[0] = v40;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v115 = String.init<A>(describing:)();
        v117 = v116;
        *(v114 + 56) = &type metadata for String;
        *(v114 + 64) = sub_100008C00();
        *(v114 + 32) = v115;
        *(v114 + 40) = v117;
        os_log(_:dso:log:_:_:)();
      }

      v136 = 0;
      v131 = v84;
      v130 = result;
      v147 = v85;
      v86 = *v139;
      v135 = *v138;
      v132 = v86;
      if (v135 < v86)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        return result;
      }

      v148[0] = _swiftEmptyArrayStorage;
      v87 = v134;
      sub_101124C34(0, v134, 0);
      v88 = v148[0];
      v89 = v143;
      v90 = v144;
      v91 = v133;
      while (1)
      {
        sub_101149F2C(v91, v142, type metadata accessor for FamilyCryptoKeysV2);
        v92 = *(v90 + 48);
        v93 = *(v90 + 52);
        swift_allocObject();
        v94 = __DataStorage.init(length:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(0, __DataStorage._offset.getter()))
          {
            goto LABEL_53;
          }

          v95 = *(v90 + 48);
          v96 = *(v90 + 52);
          swift_allocObject();
          v97 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v94 = v97;
        }

        result = __DataStorage._bytes.getter();
        if (!result)
        {
          goto LABEL_58;
        }

        v98 = result;
        v99 = __DataStorage._offset.getter();
        v100 = -v99;
        if (__OFSUB__(0, v99))
        {
          break;
        }

        v101 = __DataStorage._length.getter();
        if (v101 >= 32)
        {
          v102 = 32;
        }

        else
        {
          v102 = v101;
        }

        bzero((v98 + v100), v102);

        v103 = v142;
        v104 = (v142 + *(v146 + 24));
        v105 = *v104;
        v106 = v104[1];
        sub_100017D5C(*v104, v106);
        sub_101149F94(v103, type metadata accessor for FamilyCryptoKeysV2);
        v148[0] = v88;
        v108 = *(v88 + 16);
        v107 = *(v88 + 24);
        if (v108 >= v107 >> 1)
        {
          sub_101124C34((v107 > 1), v108 + 1, 1);
          v88 = v148[0];
        }

        *(v88 + 16) = v108 + 1;
        v109 = v88 + 48 * v108;
        *(v109 + 32) = 0x2000000000;
        *(v109 + 40) = v94 | 0x4000000000000000;
        *(v109 + 48) = v105;
        *(v109 + 56) = v106;
        *(v109 + 64) = v145;
        v91 += v89;
        --v87;
        v90 = v144;
        if (!v87)
        {
          v40 = v136;
          v111 = sub_1013131C0(v132, v135, v88);
          if (v40)
          {

            goto LABEL_46;
          }

          v118 = v111;
          v119 = v112;
          v120 = v113;
          v121 = *(*(v137 + 144) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
          type metadata accessor for BeaconKeyManager(0);
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v122 = v148[0];
          v123 = v128;
          v124 = sub_1012E9F5C(v128, 1, v130, v131, v147, v118, v119, v120);
          sub_1012F0B9C(v123 + *(v127 + 20), v124, v148);

          v125 = v148[0];
          v126 = type metadata accessor for Transaction();
          v148[0] = v125;
          __chkstk_darwin(v126);
          *(&v127 - 6) = v122;
          *(&v127 - 5) = v123;
          *(&v127 - 4) = 0;
          *(&v127 - 3) = 0;
          *(&v127 - 2) = v148;

          static Transaction.named<A>(_:with:)();

          sub_100A8306C(2);
          sub_101149F94(v138, type metadata accessor for FamilyCryptoKeysV2);
          sub_101149F94(v139, type metadata accessor for FamilyCryptoKeysV2);
          sub_101149F94(v140, type metadata accessor for FamilyCryptoKeysV2);
          v110 = v141;
          return sub_101149F94(v110, type metadata accessor for FamilyCryptoKeysV2);
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
    }

    __break(1u);
    goto LABEL_55;
  }

  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  os_log(_:dso:log:_:_:)();
  sub_101149F94(v140, type metadata accessor for FamilyCryptoKeysV2);
  v110 = v39;
  return sub_101149F94(v110, type metadata accessor for FamilyCryptoKeysV2);
}

uint64_t sub_10113918C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v33 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v33);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v32 - v14;
  v16 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v32 - v18);
  Transaction.capture()();
  sub_1000D2A70(a1, v19, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v37 = *v19;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v21 = v36;
      v37 = v36;
      sub_100004114(&qword_101696250, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v36 == 14)
      {
        static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();

LABEL_14:
        (*(v5 + 56))(v15, 1, 1, v33);
        v35(v15);

        return sub_10000B3A8(v15, &unk_101698C30, &unk_101392630);
      }
    }

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    v37 = v20;
    swift_errorRetain();
    v29 = String.init<A>(describing:)();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100008C00();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    os_log(_:dso:log:_:_:)();

    goto LABEL_14;
  }

  sub_101149EC4(v19, v11, type metadata accessor for SharedBeaconRecord);
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  sub_101149F2C(v11, v9, type metadata accessor for SharedBeaconRecord);
  v23 = v33;
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  sub_101149F2C(v11, v15, type metadata accessor for SharedBeaconRecord);
  (*(v5 + 56))(v15, 0, 1, v23);
  v35(v15);
  sub_10000B3A8(v15, &unk_101698C30, &unk_101392630);
  return sub_101149F94(v11, type metadata accessor for SharedBeaconRecord);
}

uint64_t sub_10113974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a1;
  v54 = a6;
  v55 = a7;
  v51 = a5;
  v53 = a4;
  v57 = a3;
  v46 = type metadata accessor for UUID();
  v52 = *(v46 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v46);
  v49 = v9;
  v50 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v47 = *(v10 - 8);
  v11 = *(v47 + 64);
  __chkstk_darwin(v10);
  v48 = v12;
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v44 = qword_10177C378;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10138B360;
  v15 = type metadata accessor for MessagingMessageContext();
  v16 = a2 + *(v15 + 24);
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  *(v14 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v14 + 64) = v19;
  *(v14 + 32) = v17;
  *(v14 + 40) = v18;
  v20 = (a2 + *(v15 + 48));
  v21 = *v20;
  v22 = v20[1];
  *(v14 + 96) = &type metadata for String;
  *(v14 + 104) = v19;
  *(v14 + 72) = v21;
  *(v14 + 80) = v22;
  v23 = v57;
  sub_101149F2C(v57, v13, type metadata accessor for SharedBeaconRecord);

  v24 = v13;
  v43 = v13;
  v25 = String.init<A>(describing:)();
  *(v14 + 136) = &type metadata for String;
  *(v14 + 144) = v19;
  *(v14 + 112) = v25;
  *(v14 + 120) = v26;
  os_log(_:dso:log:_:_:)();

  v27 = v52;
  v28 = v50;
  v29 = v46;
  (*(v52 + 16))(v50, v51, v46);
  sub_101149F2C(v23, v24, type metadata accessor for SharedBeaconRecord);
  v30 = (*(v27 + 80) + 24) & ~*(v27 + 80);
  v31 = (v49 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v47 + 80) + v33 + 8) & ~*(v47 + 80);
  v35 = swift_allocObject();
  v36 = v29;
  v37 = v53;
  *(v35 + 16) = v53;
  (*(v27 + 32))(v35 + v30, v28, v36);
  v38 = v56;
  *(v35 + v31) = v56;
  v39 = v55;
  *(v35 + v32) = v54;
  *(v35 + v33) = v39;
  sub_101149EC4(v43, v35 + v34, type metadata accessor for SharedBeaconRecord);
  v40 = *(v37 + 144);
  swift_retain_n();

  sub_100B1CE18(v57, 0, v40, v38, sub_101148CA4, v35);
}

unint64_t sub_101139B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v96 = a7;
  v105 = a6;
  v110 = a5;
  v101 = a4;
  v103 = a3;
  v106 = a2;
  v109 = a1;
  v113 = 0;
  v7 = type metadata accessor for FamilyCryptoKeysV1();
  v104 = *(v7 - 8);
  v8 = *(v104 + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v107 = (&v95 - v13);
  v14 = __chkstk_darwin(v12);
  v108 = (&v95 - v15);
  v16 = __chkstk_darwin(v14);
  v111 = (&v95 - v17);
  __chkstk_darwin(v16);
  v112 = (&v95 - v18);
  v100 = type metadata accessor for UUID();
  v99 = *(v100 - 8);
  v19 = *(v99 + 64);
  __chkstk_darwin(v100);
  v97 = v20;
  v98 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Date();
  v102 = *(v21 - 8);
  v22 = *(v102 + 64);
  v23 = __chkstk_darwin(v21);
  v25 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v95 - v26;
  v28 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v95 - v30;
  v32 = type metadata accessor for SharedBeaconRecord(0);
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(v109, v31, &unk_101698C30, &unk_101392630);
  v37 = *(v33 + 48);
  v109 = v32;
  if (v37(v31, 1, v32) == 1)
  {
    sub_10000B3A8(v31, &unk_101698C30, &unk_101392630);
  }

  else
  {
    sub_101149EC4(v31, v36, type metadata accessor for SharedBeaconRecord);
    v38 = *(v106 + 320);
    v39 = static Date.trustedNow.getter(v27);
    v40 = *(v38 + 24);
    __chkstk_darwin(v39);
    *(&v95 - 4) = v38;
    *(&v95 - 24) = 0;
    v41 = v103;
    *(&v95 - 2) = v103;
    v42 = v113;
    OS_dispatch_queue.sync<A>(execute:)();
    v113 = v42;
    Date.timeIntervalSince(_:)();
    v44 = v43;
    v45 = *(v102 + 8);
    v45(v25, v21);
    v45(v27, v21);
    if (v44 > 60.0)
    {
      static Date.trustedNow.getter(v27);
      sub_1010B1D04(v41, v27, 0);
      v45(v27, v21);
      v46 = v99;
      v47 = v98;
      v48 = v100;
      (*(v99 + 16))(v98, v41, v100);
      v49 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v50 = swift_allocObject();
      v51 = v106;
      *(v50 + 16) = v101;
      *(v50 + 24) = v51;
      (*(v46 + 32))(v50 + v49, v47, v48);

      sub_10055B758(v36, sub_101148EA4, v50);
    }

    sub_101149F94(v36, type metadata accessor for SharedBeaconRecord);
  }

  v53 = v111;
  v52 = v112;
  v54 = *(v110 + 16);
  if (!v54)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 == -1)
    {
      return os_log(_:dso:log:_:_:)();
    }

LABEL_30:
    swift_once();
    return os_log(_:dso:log:_:_:)();
  }

  v55 = v104;
  v56 = (*(v104 + 80) + 32) & ~*(v104 + 80);
  v57 = v110 + v56;
  sub_101149F2C(v110 + v56, v112, type metadata accessor for FamilyCryptoKeysV1);
  v58 = *(v55 + 72);
  sub_101149F2C(v57 + v58 * (v54 - 1), v53, type metadata accessor for FamilyCryptoKeysV1);
  v59 = *(v105 + 16);
  if (!v59)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    sub_101149F94(v53, type metadata accessor for FamilyCryptoKeysV1);
    v94 = v52;
    return sub_101149F94(v94, type metadata accessor for FamilyCryptoKeysV1);
  }

  v60 = v105 + v56;
  sub_101149F2C(v105 + v56, v108, type metadata accessor for FamilyCryptoKeysV1);
  sub_101149F2C(v60 + (v59 - 1) * v58, v107, type metadata accessor for FamilyCryptoKeysV1);
  v61 = *v52;
  if (*v53 < *v52)
  {
    __break(1u);
    goto LABEL_30;
  }

  v105 = *v53;
  v110 = v61;
  *&v116[0] = _swiftEmptyArrayStorage;
  sub_101124C34(0, v54, 0);
  v62 = *&v116[0];
  do
  {
    sub_101149F2C(v57, v11, type metadata accessor for FamilyCryptoKeysV1);
    sub_100DE5F74(v115);
    sub_101149F94(v11, type metadata accessor for FamilyCryptoKeysV1);
    *&v116[0] = v62;
    v64 = *(v62 + 16);
    v63 = *(v62 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_101124C34((v63 > 1), v64 + 1, 1);
      v62 = *&v116[0];
    }

    *(v62 + 16) = v64 + 1;
    v65 = (v62 + 48 * v64);
    v66 = v115[0];
    v67 = v115[2];
    v65[3] = v115[1];
    v65[4] = v67;
    v65[2] = v66;
    v57 += v58;
    --v54;
  }

  while (v54);
  v68 = v113;
  result = sub_1013131C0(v110, v105, v62);
  if (v68)
  {
    sub_101149F94(v107, type metadata accessor for FamilyCryptoKeysV1);
    sub_101149F94(v108, type metadata accessor for FamilyCryptoKeysV1);
    sub_101149F94(v111, type metadata accessor for FamilyCryptoKeysV1);
    sub_101149F94(v112, type metadata accessor for FamilyCryptoKeysV1);
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_101385D80;
    v114[0] = v68;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v80 = String.init<A>(describing:)();
    v82 = v81;
    *(v79 + 56) = &type metadata for String;
    *(v79 + 64) = sub_100008C00();
    *(v79 + 32) = v80;
    *(v79 + 40) = v82;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v104 = v70;
    v103 = result;
    v113 = v71;
    v72 = *v108;
    v110 = *v107;
    v105 = v72;
    if (v110 >= v72)
    {
      v114[0] = _swiftEmptyArrayStorage;
      sub_101124C34(0, v59, 0);
      v73 = v114[0];
      do
      {
        sub_101149F2C(v60, v11, type metadata accessor for FamilyCryptoKeysV1);
        sub_100DE5F74(v116);
        sub_101149F94(v11, type metadata accessor for FamilyCryptoKeysV1);
        v114[0] = v73;
        v75 = *(v73 + 16);
        v74 = *(v73 + 24);
        if (v75 >= v74 >> 1)
        {
          sub_101124C34((v74 > 1), v75 + 1, 1);
          v73 = v114[0];
        }

        *(v73 + 16) = v75 + 1;
        v76 = (v73 + 48 * v75);
        v77 = v116[0];
        v78 = v116[2];
        v76[3] = v116[1];
        v76[4] = v78;
        v76[2] = v77;
        v60 += v58;
        --v59;
      }

      while (v59);
      v83 = sub_1013131C0(v105, v110, v73);
      v85 = v84;
      v87 = v86;
      v88 = *(*(v106 + 144) + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v89 = v114[0];
      v90 = v96;
      v91 = sub_1012E9F5C(v96, 1, v103, v104, v113, v83, v85, v87);
      sub_1012F0B9C(v90 + *(v109 + 20), v91, v114);

      v92 = v114[0];
      v93 = type metadata accessor for Transaction();
      v114[0] = v92;
      __chkstk_darwin(v93);
      *(&v95 - 6) = v89;
      *(&v95 - 5) = v90;
      *(&v95 - 4) = 0;
      *(&v95 - 3) = 0;
      *(&v95 - 2) = v114;

      static Transaction.named<A>(_:with:)();

      sub_100A8306C(2);
      sub_101149F94(v107, type metadata accessor for FamilyCryptoKeysV1);
      sub_101149F94(v108, type metadata accessor for FamilyCryptoKeysV1);
      sub_101149F94(v111, type metadata accessor for FamilyCryptoKeysV1);
      v94 = v112;
      return sub_101149F94(v94, type metadata accessor for FamilyCryptoKeysV1);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10113A83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33[0] = a7;
  v33[1] = a8;
  v33[2] = a5;
  v33[3] = a6;
  v34 = a4;
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v33 - v15;
  v17 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v33 - v19);
  Transaction.capture()();
  v21 = *(a3 + 256);
  PassthroughSubject.send(_:)();
  sub_1000D2A70(a1, v20, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v20;
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_101385D80;
    v35 = v22;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = sub_100008C00();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:_:_:)();

    v27 = *(a3 + 320);
    sub_1010B22E4(v34, 0);
  }

  else
  {
    sub_101149EC4(v20, v16, type metadata accessor for SharedBeaconRecord);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_101385D80;
    sub_101149F2C(v16, v14, type metadata accessor for SharedBeaconRecord);
    v30 = String.init<A>(describing:)();
    v32 = v31;
    *(v29 + 56) = &type metadata for String;
    *(v29 + 64) = sub_100008C00();
    *(v29 + 32) = v30;
    *(v29 + 40) = v32;
    os_log(_:dso:log:_:_:)();

    return sub_101149F94(v16, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_10113ABB8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4)
{
  v34 = a4;
  v35 = a3;
  v33 = type metadata accessor for SharedBeaconRecord(0);
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v33);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v32 - v10;
  v12 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v32 - v14;
  v16 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (&v32 - v18);
  Transaction.capture()();
  sub_1000D2A70(a1, v19, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    v37 = *v19;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    type metadata accessor for CKError(0);
    if (swift_dynamicCast())
    {
      v21 = v36;
      v37 = v36;
      sub_100004114(&qword_101696250, type metadata accessor for CKError);
      _BridgedStoredNSError.code.getter();
      if (v36 == 14)
      {
        static os_log_type_t.default.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();

LABEL_14:
        (*(v5 + 56))(v15, 1, 1, v33);
        v35(v15);

        return sub_10000B3A8(v15, &unk_101698C30, &unk_101392630);
      }
    }

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    v37 = v20;
    swift_errorRetain();
    v29 = String.init<A>(describing:)();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    *(v28 + 64) = sub_100008C00();
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    os_log(_:dso:log:_:_:)();

    goto LABEL_14;
  }

  sub_101149EC4(v19, v11, type metadata accessor for SharedBeaconRecord);
  static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_101385D80;
  sub_101149F2C(v11, v9, type metadata accessor for SharedBeaconRecord);
  v23 = v33;
  v24 = String.init<A>(describing:)();
  v26 = v25;
  *(v22 + 56) = &type metadata for String;
  *(v22 + 64) = sub_100008C00();
  *(v22 + 32) = v24;
  *(v22 + 40) = v26;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  sub_101149F2C(v11, v15, type metadata accessor for SharedBeaconRecord);
  (*(v5 + 56))(v15, 0, 1, v23);
  v35(v15);
  sub_10000B3A8(v15, &unk_101698C30, &unk_101392630);
  return sub_101149F94(v11, type metadata accessor for SharedBeaconRecord);
}

void sub_10113B178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v138 = a4;
  v139 = a3;
  v125 = a1;
  v137 = type metadata accessor for MessagingMessageContext();
  v122 = *(v137 - 8);
  v5 = *(v122 + 64);
  __chkstk_darwin(v137);
  v123 = v6;
  v124 = v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v130 = v119 - v9;
  v10 = type metadata accessor for ShareRecord();
  v131 = *(v10 - 8);
  v132 = v10;
  v11 = *(v131 + 64);
  v12 = __chkstk_darwin(v10);
  v128 = v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v13;
  __chkstk_darwin(v12);
  v129 = (v119 - v14);
  v15 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = v119 - v17;
  v19 = type metadata accessor for DirectorySequence();
  v134 = *(v19 - 8);
  v135 = v19;
  v20 = *(v134 + 64);
  __chkstk_darwin(v19);
  v146 = v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for URL();
  *&v144 = *(v133 - 8);
  v22 = *(v144 + 64);
  v23 = __chkstk_darwin(v133);
  v25 = v119 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = (v119 - v26);
  v28 = type metadata accessor for UUID();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v121 = v119 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v35 = v119 - v34;
  v120 = v36;
  __chkstk_darwin(v33);
  v38 = v119 - v37;
  v39 = *(type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0) + 20);
  v141 = v29;
  v40 = *(v29 + 16);
  v40(v38, a2 + v39, v28);
  v143 = v28;
  v119[1] = v29 + 16;
  v119[0] = v40;
  v40(v35, a2, v28);
  v127 = *(v139 + 144);
  v145 = *(v127 + 168);
  v41 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v142 = v38;
  v42 = v133;
  sub_1000076D4(v133, qword_10177A518);
  v140 = v35;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v41);
  v149 = _swiftEmptyArrayStorage;
  v148 = _swiftEmptyArrayStorage;
  v43 = [objc_opt_self() defaultManager];
  v136 = v27;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v44 = v144;
  v45 = *(v144 + 48);
  v46 = v42;
  if (v45(v18, 1, v42) != 1)
  {
    v47 = *(v44 + 32);
    do
    {
      v47(v25, v18, v46);
      v48 = objc_autoreleasePoolPush();
      v49 = v147;
      sub_1005FF9CC(v25, v145, &v149, &v148);
      v147 = v49;
      if (v49)
      {
        goto LABEL_27;
      }

      objc_autoreleasePoolPop(v48);
      (*(v44 + 8))(v25, v46);
      DirectorySequence.next()();
    }

    while (v45(v18, 1, v46) != 1);
  }

  (*(v134 + 8))(v146, v135);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v50 = static OS_os_log.default.getter();
  v51 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10138BBE0;
  v53 = v149;
  v54 = v149[2];
  *(v52 + 56) = &type metadata for Int;
  *(v52 + 64) = &protocol witness table for Int;
  *(v52 + 32) = v54;
  sub_100004114(&qword_1016B14E0, &type metadata accessor for URL);

  v55 = v136;
  v56 = dispatch thunk of CustomStringConvertible.description.getter();
  v58 = v57;
  *(v52 + 96) = &type metadata for String;
  v146 = sub_100008C00();
  *(v52 + 104) = v146;
  *(v52 + 72) = v56;
  *(v52 + 80) = v58;
  os_log(_:dso:log:_:_:)();

  (*(v144 + 8))(v55, v46);

  v59 = v138 + *(v137 + 24);
  v61 = *(v59 + 8);
  v60 = *(v59 + 16);
  v62 = String._bridgeToObjectiveC()();
  v63 = [v62 _stripPotentialTokenURIWithToken:0];

  if (!v63)
  {

    static os_log_type_t.error.getter();
    v68 = v142;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_101385D80;
    v76 = v146;
    *(v75 + 56) = &type metadata for String;
    *(v75 + 64) = v76;
    *(v75 + 32) = v61;
    *(v75 + 40) = v60;

    os_log(_:dso:log:_:_:)();
    goto LABEL_15;
  }

  v145 = v51;
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  __chkstk_darwin(v67);
  v68 = v142;
  v119[-2] = v142;
  v69 = v130;
  v70 = v147;
  sub_1012BD72C(sub_1011490F0, v53, v130);

  if ((*(v131 + 48))(v69, 1, v132) == 1)
  {

    sub_10000B3A8(v69, &qword_1016A4780, &qword_1013B34F0);
    static os_log_type_t.error.getter();
    v71 = v146;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_101385D80;
    v73 = UUID.uuidString.getter();
    *(v72 + 56) = &type metadata for String;
    *(v72 + 64) = v71;
    *(v72 + 32) = v73;
    *(v72 + 40) = v74;
    os_log(_:dso:log:_:_:)();
LABEL_15:

    v77 = *(v141 + 8);
    v78 = v143;
    v77(v140, v143);
LABEL_26:
    v77(v68, v78);
    return;
  }

  v137 = v64;
  v147 = v70;
  v79 = v129;
  sub_101149EC4(v69, v129, type metadata accessor for ShareRecord);
  static os_log_type_t.default.getter();
  v80 = v146;
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v81 = swift_allocObject();
  v144 = xmmword_101385D80;
  *(v81 + 16) = xmmword_101385D80;
  sub_101149F2C(v79, v128, type metadata accessor for ShareRecord);
  v82 = v132;
  v83 = String.init<A>(describing:)();
  *(v81 + 56) = &type metadata for String;
  *(v81 + 64) = v80;
  *(v81 + 32) = v83;
  *(v81 + 40) = v84;
  os_log(_:dso:log:_:_:)();

  v85 = (v79 + *(v82 + 40));
  v86 = v79;
  v87 = *v85;
  v88 = v85[1];
  v89 = HIBYTE(v88) & 0xF;
  if ((v88 & 0x2000000000000000) == 0)
  {
    v89 = v87 & 0xFFFFFFFFFFFFLL;
  }

  if (v89)
  {

    static os_log_type_t.default.getter();
    v90 = swift_allocObject();
    *(v90 + 16) = v144;
    *(v90 + 56) = &type metadata for String;
    *(v90 + 64) = v80;
    *(v90 + 32) = v87;
    *(v90 + 40) = v88;

    os_log(_:dso:log:_:_:)();

    v77 = *(v141 + 8);
    v78 = v143;
    v77(v140, v143);
    sub_101149F94(v86, type metadata accessor for ShareRecord);
    goto LABEL_26;
  }

  v91 = v124;
  sub_101149F2C(v138, v124, type metadata accessor for MessagingMessageContext);
  v92 = (*(v122 + 80) + 16) & ~*(v122 + 80);
  v138 = swift_allocObject();
  sub_101149EC4(v91, v138 + v92, type metadata accessor for MessagingMessageContext);
  v93 = v121;
  v94 = v143;
  (v119[0])(v121, v140, v143);
  v95 = v141;
  v96 = (*(v141 + 80) + 32) & ~*(v141 + 80);
  v97 = (v120 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  v99 = v125;
  *(v98 + 16) = v139;
  *(v98 + 24) = v99;
  (*(v95 + 32))(v98 + v96, v93, v94);
  v136 = v98;
  v100 = (v98 + v97);
  *v100 = v137;
  v100[1] = v66;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v101 = swift_allocObject();
  *(v101 + 16) = v144;
  v102 = v146;
  *(v101 + 56) = &type metadata for String;
  *(v101 + 64) = v102;
  *(v101 + 32) = 0x65736C6166;
  *(v101 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)();

  v48 = objc_autoreleasePoolPush();
  v103 = v129;
  v104 = v147;
  sub_101121490(v129);
  v146 = v105;
  v106 = v128;
  if (!v104)
  {
    objc_autoreleasePoolPop(v48);
    v107 = *(v127 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v147 = 0;
    sub_101149F2C(v103, v106, type metadata accessor for ShareRecord);
    v108 = *(v131 + 80);
    v109 = v126;
    v110 = swift_allocObject();
    v111 = v138;
    *(v110 + 16) = sub_10114A04C;
    *(v110 + 24) = v111;
    v145 = type metadata accessor for ShareRecord;
    sub_101149EC4(v106, v110 + ((v108 + 32) & ~v108), type metadata accessor for ShareRecord);

    sub_100FDCA40(v146, sub_10114A050, v110);

    v112 = swift_allocObject();
    v113 = v103;
    v114 = v136;
    *(v112 + 16) = sub_101149410;
    *(v112 + 24) = v114;

    Future.addFailure(block:)();

    sub_101149F2C(v113, v106, type metadata accessor for ShareRecord);
    v115 = (v108 + 16) & ~v108;
    v116 = (v109 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
    v117 = swift_allocObject();
    sub_101149EC4(v106, v117 + v115, v145);
    *(v117 + v116) = v127;
    v118 = (v117 + ((v116 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v118 = sub_101149410;
    v118[1] = v114;

    Future.addSuccess(block:)();

    v77 = *(v141 + 8);
    v78 = v143;
    v77(v140, v143);
    sub_101149F94(v129, type metadata accessor for ShareRecord);
    v68 = v142;
    goto LABEL_26;
  }

LABEL_27:
  objc_autoreleasePoolPop(v48);
  __break(1u);
}

uint64_t sub_10113C288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a5;
  v44 = a6;
  v49 = a4;
  v8 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v48 = &v43 - v10;
  v11 = type metadata accessor for OwnedBeaconRecord();
  v46 = *(v11 - 8);
  v47 = v11;
  v12 = *(v46 + 64);
  __chkstk_darwin(v11);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ShareRecord();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v43 - v19;
  v21 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v43 - v23);
  v25 = *(a2 + 144);
  Transaction.capture()();
  sub_1000D2A70(a1, v24, &unk_1016B1650, &unk_1013B1110);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v24;
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_101385D80;
    v50 = v26;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v28 = String.init<A>(describing:)();
    v30 = v29;
    *(v27 + 56) = &type metadata for String;
    *(v27 + 64) = sub_100008C00();
    *(v27 + 32) = v28;
    *(v27 + 40) = v30;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_101149EC4(v24, v20, type metadata accessor for ShareRecord);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_101385D80;
    sub_101149F2C(v20, v18, type metadata accessor for ShareRecord);
    v33 = String.init<A>(describing:)();
    v35 = v34;
    *(v32 + 56) = &type metadata for String;
    v36 = sub_100008C00();
    *(v32 + 64) = v36;
    *(v32 + 32) = v33;
    *(v32 + 40) = v35;
    os_log(_:dso:log:_:_:)();

    sub_100A8306C(0);
    v37 = v48;
    sub_100AA33AC(v49, v48);
    if ((*(v46 + 48))(v37, 1, v47) == 1)
    {
      sub_101149F94(v20, type metadata accessor for ShareRecord);
      return sub_10000B3A8(v37, &unk_1016A9A20, &qword_10138B280);
    }

    else
    {
      v38 = v37;
      v39 = v45;
      sub_101149EC4(v38, v45, type metadata accessor for OwnedBeaconRecord);
      if (sub_1000322C8())
      {
        static os_log_type_t.default.getter();
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_10138BBE0;
        *(v40 + 56) = &type metadata for String;
        *(v40 + 64) = v36;
        *(v40 + 32) = v43;
        *(v40 + 40) = v44;

        v41 = UUID.uuidString.getter();
        *(v40 + 96) = &type metadata for String;
        *(v40 + 104) = v36;
        *(v40 + 72) = v41;
        *(v40 + 80) = v42;
        os_log(_:dso:log:_:_:)();
      }

      sub_101149F94(v39, type metadata accessor for OwnedBeaconRecord);
      return sub_101149F94(v20, type metadata accessor for ShareRecord);
    }
  }
}

void sub_10113C810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v128 = a4;
  v129 = a3;
  v116 = a1;
  v5 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v119 = &v109 - v7;
  v8 = type metadata accessor for ShareRecord();
  v122 = *(v8 - 8);
  v123 = v8;
  v9 = *(v122 + 64);
  v10 = __chkstk_darwin(v8);
  v117 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v115 = &v109 - v13;
  v114 = v14;
  __chkstk_darwin(v12);
  v121 = &v109 - v15;
  v16 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v109 - v18;
  v20 = type metadata accessor for DirectorySequence();
  v125 = *(v20 - 8);
  v126 = v20;
  v21 = *(v125 + 64);
  __chkstk_darwin(v20);
  v136 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for URL();
  v134 = *(v124 - 8);
  v23 = *(v134 + 64);
  v24 = __chkstk_darwin(v124);
  v26 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v109 - v27;
  v29 = type metadata accessor for UUID();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = __chkstk_darwin(v29);
  v120 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __chkstk_darwin(v32);
  v118 = &v109 - v35;
  v36 = __chkstk_darwin(v34);
  v38 = &v109 - v37;
  v112 = v39;
  __chkstk_darwin(v36);
  v41 = &v109 - v40;
  v42 = *(type metadata accessor for FindMyAccessoryFamilyShareResponseEnvelope(0) + 20);
  v132 = v30;
  v43 = *(v30 + 16);
  v130 = v41;
  v43(v41, a2 + v42, v29);
  v133 = v29;
  v111 = v30 + 16;
  v110 = v43;
  v43(v38, a2, v29);
  v113 = *(v129 + 144);
  v135 = *(v113 + 168);
  v44 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v45 = v124;
  sub_1000076D4(v124, qword_10177A518);
  v131 = v38;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v44);
  v139 = _swiftEmptyArrayStorage;
  v138 = _swiftEmptyArrayStorage;
  v46 = [objc_opt_self() defaultManager];
  *&v127 = v28;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v47 = v134;
  v48 = *(v134 + 48);
  v49 = v45;
  if (v48(v19, 1, v45) == 1)
  {
LABEL_7:
    (*(v125 + 8))(v136, v126);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v53 = static OS_os_log.default.getter();
    v54 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_10138BBE0;
    v56 = v139;
    v57 = v139[2];
    *(v55 + 56) = &type metadata for Int;
    *(v55 + 64) = &protocol witness table for Int;
    *(v55 + 32) = v57;
    sub_100004114(&qword_1016B14E0, &type metadata accessor for URL);

    v58 = v127;
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    *(v55 + 96) = &type metadata for String;
    v136 = sub_100008C00();
    *(v55 + 104) = v136;
    *(v55 + 72) = v59;
    *(v55 + 80) = v61;
    os_log(_:dso:log:_:_:)();

    (*(v134 + 8))(v58, v49);

    v62 = v128 + *(type metadata accessor for MessagingMessageContext() + 24);
    v64 = *(v62 + 8);
    v63 = *(v62 + 16);
    v65 = String._bridgeToObjectiveC()();
    v66 = [v65 _stripPotentialTokenURIWithToken:0];

    if (v66)
    {
      v67 = v54;
      v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v135 = v69;

      __chkstk_darwin(v70);
      v71 = v130;
      *(&v109 - 2) = v130;
      v72 = v119;
      v73 = v137;
      sub_1012BD72C(sub_10114A060, v56, v119);

      if ((*(v122 + 48))(v72, 1, v123) == 1)
      {

        sub_10000B3A8(v72, &qword_1016A4780, &qword_1013B34F0);
        static os_log_type_t.error.getter();
        v74 = v131;
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_101385D80;
        v76 = UUID.uuidString.getter();
        v77 = v136;
        *(v75 + 56) = &type metadata for String;
        *(v75 + 64) = v77;
        *(v75 + 32) = v76;
        *(v75 + 40) = v78;
        os_log(_:dso:log:_:_:)();

        v79 = v74;
      }

      else
      {
        v134 = v68;
        v137 = v73;
        v82 = v121;
        sub_101149EC4(v72, v121, type metadata accessor for ShareRecord);
        static os_log_type_t.error.getter();
        v83 = v131;
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v128 = v67;
        v84 = swift_allocObject();
        v127 = xmmword_101385D80;
        *(v84 + 16) = xmmword_101385D80;
        v85 = v115;
        sub_101149F2C(v82, v115, type metadata accessor for ShareRecord);
        v86 = String.init<A>(describing:)();
        v87 = v136;
        *(v84 + 56) = &type metadata for String;
        *(v84 + 64) = v87;
        *(v84 + 32) = v86;
        *(v84 + 40) = v88;
        os_log(_:dso:log:_:_:)();

        sub_101149F2C(v82, v85, type metadata accessor for ShareRecord);
        v89 = v71;
        v90 = v133;
        v91 = v110;
        v110(v118, v89, v133);
        v91(v120, v83, v90);
        v92 = (*(v122 + 80) + 24) & ~*(v122 + 80);
        v93 = (v114 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
        v94 = v132;
        v95 = *(v132 + 80);
        v96 = (v95 + v93 + 8) & ~v95;
        v97 = (v112 + v95 + v96) & ~v95;
        v126 = (v112 + v97 + 7) & 0xFFFFFFFFFFFFFFF8;
        v98 = swift_allocObject();
        *(v98 + 16) = v116;
        sub_101149EC4(v85, v98 + v92, type metadata accessor for ShareRecord);
        *(v98 + v93) = v129;
        v99 = *(v94 + 32);
        v99(v98 + v96, v118, v90);
        v99(v98 + v97, v120, v90);
        v100 = (v98 + v126);
        v101 = v135;
        *v100 = v134;
        v100[1] = v101;

        static os_log_type_t.default.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v102 = swift_allocObject();
        *(v102 + 16) = v127;
        v103 = v121;
        sub_101149F2C(v121, v117, type metadata accessor for ShareRecord);
        v104 = String.init<A>(describing:)();
        v105 = v136;
        *(v102 + 56) = &type metadata for String;
        *(v102 + 64) = v105;
        *(v102 + 32) = v104;
        *(v102 + 40) = v106;
        os_log(_:dso:log:_:_:)();

        sub_100B0F7D8(v103, v113, sub_1011497D4, v98);

        sub_101149F94(v103, type metadata accessor for ShareRecord);
        v71 = v130;
        v79 = v131;
      }
    }

    else
    {

      static os_log_type_t.error.getter();
      v71 = v130;
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v80 = swift_allocObject();
      *(v80 + 16) = xmmword_101385D80;
      v81 = v136;
      *(v80 + 56) = &type metadata for String;
      *(v80 + 64) = v81;
      *(v80 + 32) = v64;
      *(v80 + 40) = v63;

      os_log(_:dso:log:_:_:)();

      v79 = v131;
    }

    v107 = v133;
    v108 = *(v132 + 8);
    v108(v79, v133);
    v108(v71, v107);
  }

  else
  {
    v50 = *(v47 + 32);
    while (1)
    {
      v50(v26, v19, v49);
      v51 = objc_autoreleasePoolPush();
      v52 = v137;
      sub_1005FF9CC(v26, v135, &v139, &v138);
      v137 = v52;
      if (v52)
      {
        break;
      }

      objc_autoreleasePoolPop(v51);
      (*(v47 + 8))(v26, v49);
      DirectorySequence.next()();
      if (v48(v19, 1, v49) == 1)
      {
        goto LABEL_7;
      }
    }

    objc_autoreleasePoolPop(v51);
    __break(1u);
  }
}

uint64_t sub_10113D5E0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v45 = a5;
  v46 = a6;
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v41 - v13;
  v15 = type metadata accessor for OwnedBeaconRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ShareRecord();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (a1)
  {
    v42 = v19;
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v41[1] = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_101385D80;
    sub_101149F2C(a3, v23, type metadata accessor for ShareRecord);
    v25 = String.init<A>(describing:)();
    v27 = v26;
    *(v24 + 56) = &type metadata for String;
    v28 = sub_100008C00();
    *(v24 + 64) = v28;
    *(v24 + 32) = v25;
    *(v24 + 40) = v27;
    os_log(_:dso:log:_:_:)();

    v29 = *(a4 + 144);
    sub_100A8306C(0);
    v30 = *(a4 + 320);
    sub_1010B22E4(v45, 0);
    sub_100025020(v46, v47);
    if (v48)
    {
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v31 = swift_dynamicCast();
      (*(v16 + 56))(v14, v31 ^ 1u, 1, v15);
      if ((*(v16 + 48))(v14, 1, v15) != 1)
      {
        v32 = v42;
        sub_101149EC4(v14, v42, type metadata accessor for OwnedBeaconRecord);
        if (sub_1000322C8())
        {
          static os_log_type_t.default.getter();
          v33 = swift_allocObject();
          *(v33 + 16) = xmmword_10138BBE0;
          *(v33 + 56) = &type metadata for String;
          *(v33 + 64) = v28;
          *(v33 + 32) = v43;
          *(v33 + 40) = v44;

          v34 = UUID.uuidString.getter();
          *(v33 + 96) = &type metadata for String;
          *(v33 + 104) = v28;
          *(v33 + 72) = v34;
          *(v33 + 80) = v35;
          os_log(_:dso:log:_:_:)();
        }

        return sub_101149F94(v32, type metadata accessor for OwnedBeaconRecord);
      }
    }

    else
    {
      sub_10000B3A8(v47, &qword_101696920, &unk_10138B200);
      (*(v16 + 56))(v14, 1, 1, v15);
    }

    return sub_10000B3A8(v14, &unk_1016A9A20, &qword_10138B280);
  }

  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_101385D80;
  sub_101149F2C(a3, v23, type metadata accessor for ShareRecord);
  v38 = String.init<A>(describing:)();
  v40 = v39;
  *(v37 + 56) = &type metadata for String;
  *(v37 + 64) = sub_100008C00();
  *(v37 + 32) = v38;
  *(v37 + 40) = v40;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10113DB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a3;
  v66 = a4;
  v56 = a1;
  v65 = type metadata accessor for UUID();
  v55 = *(v65 - 8);
  v5 = *(v55 + 64);
  __chkstk_darwin(v65);
  v54 = v6;
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v52 - v9;
  v64 = type metadata accessor for SharedBeaconRecord(0);
  v62 = *(v64 - 8);
  v11 = *(v62 + 64);
  v12 = __chkstk_darwin(v64);
  v52 = v13;
  v53 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v60 = &v52 - v14;
  v67 = dispatch_group_create();
  LODWORD(v61) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v15 = qword_10177C378;
  v58 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10138B360;
  v17 = type metadata accessor for MessagingMessageContext();
  v18 = a2 + *(v17 + 24);
  v20 = *(v18 + 8);
  v19 = *(v18 + 16);
  *(v16 + 56) = &type metadata for String;
  v21 = sub_100008C00();
  *(v16 + 64) = v21;
  *(v16 + 32) = v20;
  *(v16 + 40) = v19;
  v22 = *(v17 + 48);
  v57 = a2;
  v23 = (a2 + v22);
  v24 = *v23;
  v25 = v23[1];
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v21;
  *(v16 + 72) = v24;
  *(v16 + 80) = v25;
  sub_100004114(&qword_101696930, &type metadata accessor for UUID);
  v26 = v15;

  v27 = v63;
  v28 = v65;
  v29 = dispatch thunk of CustomStringConvertible.description.getter();
  *(v16 + 136) = &type metadata for String;
  *(v16 + 144) = v21;
  *(v16 + 112) = v29;
  *(v16 + 120) = v30;
  os_log(_:dso:log:_:_:)();

  v61 = *(v66 + 144);
  sub_100AA42BC(v27, v10);
  v31 = v62;
  v32 = v27;
  if ((*(v62 + 48))(v10, 1, v64) == 1)
  {
    sub_10000B3A8(v10, &unk_101698C30, &unk_101392630);
    static os_log_type_t.default.getter();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_101385D80;
    v34 = UUID.uuidString.getter();
    *(v33 + 56) = &type metadata for String;
    *(v33 + 64) = v21;
    *(v33 + 32) = v34;
    *(v33 + 40) = v35;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v37 = v60;
    sub_101149EC4(v10, v60, type metadata accessor for SharedBeaconRecord);
    if (sub_100582460(v57, v37))
    {
      v58 = v26;
      dispatch_group_enter(v67);
      v38 = v53;
      sub_101149F2C(v37, v53, type metadata accessor for SharedBeaconRecord);
      v39 = v55;
      (*(v55 + 16))(v59, v32, v28);
      v40 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v41 = (v52 + *(v39 + 80) + v40) & ~*(v39 + 80);
      v42 = (v54 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v43 = v37;
      v44 = swift_allocObject();
      v45 = v67;
      *(v44 + 16) = v56;
      *(v44 + 24) = v45;
      sub_101149EC4(v38, v44 + v40, type metadata accessor for SharedBeaconRecord);
      v46 = v44 + v41;
      v47 = v66;
      (*(v39 + 32))(v46, v59, v65);
      *(v44 + v42) = v47;

      v48 = v45;

      sub_100DDDDF4(v43, sub_101148F58, v44);
      v49 = v64;

      OS_dispatch_group.wait()();
      if (*(v43 + v49[11]) == -1 && *(v43 + v49[12]) == -1)
      {
        v51 = *(v47 + 256);
        PassthroughSubject.send(_:)();
      }

      else
      {
        static os_log_type_t.debug.getter();
        os_log(_:dso:log:_:_:)();
        sub_10113E3D8(v43 + v49[5]);
      }

      v50 = v43;
    }

    else
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();

      v50 = v37;
    }

    return sub_101149F94(v50, type metadata accessor for SharedBeaconRecord);
  }
}

void sub_10113E168(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for SharedBeaconRecord(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (a1)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    sub_101149F2C(a4, v13, type metadata accessor for SharedBeaconRecord);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_101385D80;
    v19 = UUID.uuidString.getter();
    v21 = v20;
    *(v18 + 56) = &type metadata for String;
    *(v18 + 64) = sub_100008C00();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    os_log(_:dso:log:_:_:)();

    v22 = *(a6 + 144);
    sub_100A8306C(0);
  }

  dispatch_group_leave(a3);
}

void sub_10113E3D8(uint64_t a1)
{
  v3 = type metadata accessor for WildModeAssociationRecord(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v1 + 144);
  v8 = sub_10002F740();
  v32 = a1;
  v9 = sub_10002EBE8(sub_10114905C, v31, v8);
  v10 = *(v9 + 16);
  if (v10)
  {
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_10138BBE0;
    v12 = UUID.uuidString.getter();
    v14 = v13;
    *(v11 + 56) = &type metadata for String;
    *(v11 + 64) = sub_100008C00();
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v15 = *(v9 + 16);
    *(v11 + 96) = &type metadata for Int;
    *(v11 + 104) = &protocol witness table for Int;
    *(v11 + 72) = v15;
    os_log(_:dso:log:_:_:)();

    v16 = *(v4 + 80);
    v29 = v9;
    v17 = v9 + ((v16 + 32) & ~v16);
    v18 = *(v4 + 72);
    do
    {
      sub_101149F2C(v17, v7, type metadata accessor for WildModeAssociationRecord);
      v19 = *(v30 + 168);
      if (qword_101694550 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for URL();
      v21 = sub_1000076D4(v20, qword_10177A8D0);
      v22 = *(v19 + 16);
      v23 = __chkstk_darwin(v21);
      *(&v29 - 4) = v19;
      *(&v29 - 3) = v7;
      *(&v29 - 2) = v23;
      OS_dispatch_queue.sync<A>(execute:)();
      sub_101149F94(v7, type metadata accessor for WildModeAssociationRecord);
      v17 += v18;
      --v10;
    }

    while (v10);

    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177BA08);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 67109120;
      _os_log_impl(&_mh_execute_header, v25, v26, "Requesting SPUnknownBeaconsChangedNotification to be posted. Bypass rate limit? %{BOOL}d", v27, 8u);
    }

    ThrottledDarwinPoster.post(bypassRateLimit:)(0);
    if (v28)
    {
    }

    sub_100A8AF58();
  }

  else
  {
  }
}

uint64_t sub_10113E7C4(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v28 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v26 - v16;
  v18 = *(type metadata accessor for WildModeAssociationRecord(0) + 20);
  (*(v4 + 16))(v17, a2, v3);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(v8 + 56);
  sub_1000D2A70(v29 + v18, v11, &qword_1016980D0, &unk_10138F3B0);
  sub_1000D2A70(v17, &v11[v19], &qword_1016980D0, &unk_10138F3B0);
  v20 = *(v4 + 48);
  if (v20(v11, 1, v3) != 1)
  {
    v22 = v28;
    sub_1000D2A70(v11, v28, &qword_1016980D0, &unk_10138F3B0);
    if (v20(&v11[v19], 1, v3) != 1)
    {
      v23 = v27;
      (*(v4 + 32))(v27, &v11[v19], v3);
      sub_100004114(&qword_1016984A0, &type metadata accessor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *(v4 + 8);
      v24(v23, v3);
      sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
      v24(v22, v3);
      sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
      return v21 & 1;
    }

    sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
    (*(v4 + 8))(v22, v3);
    goto LABEL_6;
  }

  sub_10000B3A8(v17, &qword_1016980D0, &unk_10138F3B0);
  if (v20(&v11[v19], 1, v3) != 1)
  {
LABEL_6:
    sub_10000B3A8(v11, &qword_1016AF880, &unk_10138CE20);
    v21 = 0;
    return v21 & 1;
  }

  sub_10000B3A8(v11, &qword_1016980D0, &unk_10138F3B0);
  v21 = 1;
  return v21 & 1;
}

void sub_10113EBC0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v119 = a4;
  v120 = a3;
  v107 = a1;
  v110 = type metadata accessor for UUID();
  v105 = *(v110 - 8);
  v5 = *(v105 + 64);
  __chkstk_darwin(v110);
  v104 = v6;
  v109 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for MessagingMessageContext();
  v101 = *(v118 - 8);
  v7 = *(v101 + 64);
  __chkstk_darwin(v118);
  v102 = v8;
  v103 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = type metadata accessor for ShareRecord();
  v123 = *(v115 - 8);
  v9 = *(v123 + 64);
  v10 = __chkstk_darwin(v115);
  v12 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  *&v124 = &v100 - v14;
  v15 = __chkstk_darwin(v13);
  v112 = &v100 - v16;
  v108 = v17;
  __chkstk_darwin(v15);
  v19 = (&v100 - v18);
  v20 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v100 - v22;
  v121 = type metadata accessor for DirectorySequence();
  v116 = *(v121 - 8);
  v24 = *(v116 + 64);
  __chkstk_darwin(v121);
  v26 = &v100 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for URL();
  v122 = *(v27 - 1);
  v28 = *(v122 + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v33 = &v100 - v32;
  v106 = a2;
  v111 = *(a2 + 144);
  v125 = *(v111 + 168);
  v34 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
LABEL_37:
    swift_once();
  }

  v113 = v12;
  v114 = v19;
  sub_1000076D4(v27, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v34);
  v129 = _swiftEmptyArrayStorage;
  v128[0] = _swiftEmptyArrayStorage;
  v35 = [objc_opt_self() defaultManager];
  v117 = v33;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v126 = v26;
  DirectorySequence.next()();
  v36 = v122;
  v37 = *(v122 + 48);
  if (v37(v23, 1, v27) != 1)
  {
    v38 = *(v36 + 32);
    while (1)
    {
      v38(v31, v23, v27);
      v39 = objc_autoreleasePoolPush();
      v40 = v127;
      sub_1005FF9CC(v31, v125, &v129, v128);
      v127 = v40;
      if (v40)
      {
        break;
      }

      objc_autoreleasePoolPop(v39);
      (*(v36 + 8))(v31, v27);
      DirectorySequence.next()();
      if (v37(v23, 1, v27) == 1)
      {
        goto LABEL_6;
      }
    }

    objc_autoreleasePoolPop(v39);
    __break(1u);
    goto LABEL_39;
  }

LABEL_6:
  (*(v116 + 8))(v126, v121);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v41 = static OS_os_log.default.getter();
  v121 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  *(v31 + 1) = xmmword_10138BBE0;
  v23 = v129;
  v42 = *(v129 + 2);
  *(v31 + 7) = &type metadata for Int;
  *(v31 + 8) = &protocol witness table for Int;
  *(v31 + 4) = v42;
  sub_100004114(&qword_1016B14E0, &type metadata accessor for URL);

  v43 = v117;
  v44 = dispatch thunk of CustomStringConvertible.description.getter();
  v12 = v45;
  v19 = &type metadata for String;
  *(v31 + 12) = &type metadata for String;
  v126 = sub_100008C00();
  *(v31 + 13) = v126;
  *(v31 + 9) = v44;
  *(v31 + 10) = v12;
  os_log(_:dso:log:_:_:)();

  (*(v122 + 8))(v43, v27);

  v46 = v119 + *(v118 + 24);
  v48 = *(v46 + 8);
  v47 = *(v46 + 16);
  v33 = String._bridgeToObjectiveC()();
  v49 = [v33 _stripPotentialTokenURIWithToken:0];

  if (!v49)
  {

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_101385D80;
    v57 = v126;
    *(v56 + 56) = &type metadata for String;
    *(v56 + 64) = v57;
    *(v56 + 32) = v48;
    *(v56 + 40) = v47;

    os_log(_:dso:log:_:_:)();
LABEL_30:

    return;
  }

  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v125 = v50;

  v26 = *(v23 + 2);
  if (!v26)
  {
    v33 = v126;
LABEL_27:

    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v73 = swift_allocObject();
    *(v73 + 16) = xmmword_101385D80;
    *(v73 + 56) = v19;
    *(v73 + 64) = v33;
    v74 = v125;
    *(v73 + 32) = v27;
    *(v73 + 40) = v74;
    os_log(_:dso:log:_:_:)();
    goto LABEL_30;
  }

  v34 = 0;
  v51 = v115;
  while (1)
  {
    if (v34 >= *(v23 + 2))
    {
      __break(1u);
      goto LABEL_37;
    }

    v31 = v19;
    v52 = v124;
    v12 = *(v123 + 80);
    v53 = (v12 + 32) & ~v12;
    sub_101149F2C(&v23[v53 + *(v123 + 72) * v34], v124, type metadata accessor for ShareRecord);
    v54 = v52 + *(v51 + 36);
    v55 = *(v54 + 8) == v27 && *(v54 + 16) == v125;
    if (v55 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    ++v34;
    sub_101149F94(v124, type metadata accessor for ShareRecord);
    v19 = v31;
    v33 = v126;
    if (v26 == v34)
    {
      goto LABEL_27;
    }
  }

  v58 = v112;
  sub_101149EC4(v124, v112, type metadata accessor for ShareRecord);
  v59 = v58;
  v60 = v114;
  sub_101149EC4(v59, v114, type metadata accessor for ShareRecord);
  LODWORD(v123) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v61 = qword_10177C378;
  v62 = swift_allocObject();
  v124 = xmmword_101385D80;
  *(v62 + 16) = xmmword_101385D80;
  v63 = v60;
  sub_101149F2C(v60, v113, type metadata accessor for ShareRecord);
  v64 = v115;
  v65 = String.init<A>(describing:)();
  v66 = v126;
  *(v62 + 56) = v31;
  *(v62 + 64) = v66;
  *(v62 + 32) = v65;
  *(v62 + 40) = v67;
  v123 = v61;
  os_log(_:dso:log:_:_:)();

  v68 = (v63 + *(v64 + 40));
  v69 = *v68;
  v70 = v68[1];
  v71 = HIBYTE(v70) & 0xF;
  if ((v70 & 0x2000000000000000) == 0)
  {
    v71 = v69 & 0xFFFFFFFFFFFFLL;
  }

  if (v71)
  {

    static os_log_type_t.default.getter();
    v72 = swift_allocObject();
    *(v72 + 16) = v124;
    *(v72 + 56) = &type metadata for String;
    *(v72 + 64) = v66;
    *(v72 + 32) = v69;
    *(v72 + 40) = v70;

    os_log(_:dso:log:_:_:)();

LABEL_35:
    sub_101149F94(v114, type metadata accessor for ShareRecord);
    return;
  }

  v75 = v103;
  sub_101149F2C(v119, v103, type metadata accessor for MessagingMessageContext);
  v76 = (*(v101 + 80) + 16) & ~*(v101 + 80);
  v123 = swift_allocObject();
  sub_101149EC4(v75, v123 + v76, type metadata accessor for MessagingMessageContext);
  v77 = v105;
  (*(v105 + 16))(v109, v120, v110);
  v78 = (*(v77 + 80) + 32) & ~*(v77 + 80);
  v120 = (v104 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v107;
  *(v79 + 16) = v106;
  *(v79 + 24) = v80;
  (*(v77 + 32))(v79 + v78, v109, v110);
  v122 = v79;
  v81 = (v79 + v120);
  v82 = v125;
  *v81 = v27;
  v81[1] = v82;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v83 = swift_allocObject();
  *(v83 + 16) = v124;
  v84 = v126;
  *(v83 + 56) = v31;
  *(v83 + 64) = v84;
  *(v83 + 32) = 0x65736C6166;
  *(v83 + 40) = 0xE500000000000000;
  os_log(_:dso:log:_:_:)();

  v27 = objc_autoreleasePoolPush();
  v85 = v114;
  v86 = v127;
  sub_101121490(v114);
  v126 = v87;
  if (!v86)
  {
    v125 = ~v12;
    objc_autoreleasePoolPop(v27);
    v88 = *(v111 + 184);
    sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
    type metadata accessor for CloudKitCoordinator();
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v127 = 0;
    v89 = v113;
    sub_101149F2C(v85, v113, type metadata accessor for ShareRecord);
    v90 = v85;
    v91 = v108;
    v92 = swift_allocObject();
    v93 = v123;
    *(v92 + 16) = sub_10114907C;
    *(v92 + 24) = v93;
    *&v124 = type metadata accessor for ShareRecord;
    sub_101149EC4(v89, v92 + v53, type metadata accessor for ShareRecord);

    sub_100FDCA40(v126, sub_101149098, v92);

    v94 = swift_allocObject();
    v95 = v122;
    *(v94 + 16) = sub_101149080;
    *(v94 + 24) = v95;

    Future.addFailure(block:)();

    sub_101149F2C(v90, v89, type metadata accessor for ShareRecord);
    v96 = (v12 + 16) & v125;
    v97 = (v91 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
    v98 = swift_allocObject();
    sub_101149EC4(v89, v98 + v96, v124);
    *(v98 + v97) = v111;
    v99 = (v98 + ((v97 + 15) & 0xFFFFFFFFFFFFFFF8));
    *v99 = sub_101149080;
    v99[1] = v95;

    Future.addSuccess(block:)();

    goto LABEL_35;
  }

LABEL_39:
  objc_autoreleasePoolPop(v27);
  __break(1u);
}

uint64_t sub_10113FB6C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for MessagingMessageContext() + 48));
  v5 = *v3;
  v4 = v3[1];
  v6 = (a1 + *(type metadata accessor for ShareRecord() + 40));
  v7 = v6[1];

  *v6 = v5;
  v6[1] = v4;
  return result;
}

void sub_10113FBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a5;
  v48 = a6;
  v53 = a4;
  v8 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v52 = &v46 - v10;
  v11 = type metadata accessor for OwnedBeaconRecord();
  v50 = *(v11 - 8);
  v51 = v11;
  v12 = *(v50 + 64);
  __chkstk_darwin(v11);
  v49 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ShareRecord();
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v46 - v19;
  v21 = sub_1000BC4D4(&unk_1016B1650, &unk_1013B1110);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v46 - v23);
  v25 = *(a2 + 144);
  Transaction.capture()();
  sub_1000D2A70(a1, v24, &unk_1016B1650, &unk_1013B1110);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_101149EC4(v24, v20, type metadata accessor for ShareRecord);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_101385D80;
    sub_101149F2C(v20, v18, type metadata accessor for ShareRecord);
    v29 = String.init<A>(describing:)();
    v31 = v30;
    *(v28 + 56) = &type metadata for String;
    v32 = sub_100008C00();
    *(v28 + 64) = v32;
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    os_log(_:dso:log:_:_:)();

    sub_100A8306C(0);
    sub_100025020(v53, v54);
    if (v54[3])
    {
      v33 = v20;
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v35 = v51;
      v34 = v52;
      v36 = swift_dynamicCast();
      v37 = v50;
      (*(v50 + 56))(v34, v36 ^ 1u, 1, v35);
      if ((*(v37 + 48))(v34, 1, v35) != 1)
      {
        v38 = v49;
        sub_101149EC4(v34, v49, type metadata accessor for OwnedBeaconRecord);
        if (sub_1000322C8())
        {
          static os_log_type_t.default.getter();
          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_10138BBE0;
          *(v39 + 56) = &type metadata for String;
          *(v39 + 64) = v32;
          *(v39 + 32) = v47;
          *(v39 + 40) = v48;

          v40 = UUID.uuidString.getter();
          *(v39 + 96) = &type metadata for String;
          *(v39 + 104) = v32;
          *(v39 + 72) = v40;
          *(v39 + 80) = v41;
          os_log(_:dso:log:_:_:)();
        }

        sub_101149F94(v38, type metadata accessor for OwnedBeaconRecord);
        sub_101149F94(v33, type metadata accessor for ShareRecord);
        return;
      }

      sub_101149F94(v20, type metadata accessor for ShareRecord);
    }

    else
    {
      sub_101149F94(v20, type metadata accessor for ShareRecord);
      sub_10000B3A8(v54, &qword_101696920, &unk_10138B200);
      v34 = v52;
      (*(v50 + 56))(v52, 1, 1, v51);
    }

    sub_10000B3A8(v34, &unk_1016A9A20, &qword_10138B280);
    return;
  }

  v26 = *v24;
  v54[0] = *v24;
  swift_errorRetain();
  sub_1000BC4D4(&qword_101696960, &unk_10138B220);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v27 = v55;
    v54[0] = v55;
    sub_100004114(&qword_101696250, type metadata accessor for CKError);
    _BridgedStoredNSError.code.getter();
    if (v55 == 14)
    {
      static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();

      return;
    }
  }

  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_101385D80;
  v54[0] = v26;
  swift_errorRetain();
  v43 = String.init<A>(describing:)();
  v45 = v44;
  *(v42 + 56) = &type metadata for String;
  *(v42 + 64) = sub_100008C00();
  *(v42 + 32) = v43;
  *(v42 + 40) = v45;
  os_log(_:dso:log:_:_:)();
}

void sub_101140330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a4;
  v102 = a3;
  v88 = a1;
  v95 = type metadata accessor for UUID();
  v87 = *(v95 - 8);
  v5 = *(v87 + 64);
  __chkstk_darwin(v95);
  v86 = v6;
  v94 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShareRecord();
  v92 = *(v7 - 8);
  v8 = *(v92 + 64);
  v9 = __chkstk_darwin(v7);
  v90 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v93 = &v83 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = &v83 - v14;
  v16 = __chkstk_darwin(v13);
  v83 = &v83 - v17;
  v84 = v18;
  __chkstk_darwin(v16);
  v96 = &v83 - v19;
  v20 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v83 - v22;
  v24 = type metadata accessor for DirectorySequence();
  v98 = *(v24 - 8);
  v99 = v24;
  v25 = *(v98 + 64);
  __chkstk_darwin(v24);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for URL();
  *&v103 = *(v28 - 8);
  v29 = *(v103 + 64);
  v30 = __chkstk_darwin(v28);
  v32 = &v83 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v83 - v33;
  v89 = a2;
  v85 = *(a2 + 144);
  v104 = *(v85 + 168);
  v35 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
LABEL_31:
    swift_once();
  }

  v91 = v15;
  v97 = v7;
  sub_1000076D4(v28, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v35);
  v108 = _swiftEmptyArrayStorage;
  v107[0] = _swiftEmptyArrayStorage;
  v36 = [objc_opt_self() defaultManager];
  v100 = v34;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v105 = v27;
  DirectorySequence.next()();
  v37 = v103;
  v38 = *(v103 + 48);
  if (v38(v23, 1, v28) == 1)
  {
LABEL_6:
    (*(v98 + 8))(v105, v99);
    static os_log_type_t.debug.getter();
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v42 = static OS_os_log.default.getter();
    v43 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_10138BBE0;
    v23 = v108;
    v45 = *(v108 + 2);
    *(v44 + 56) = &type metadata for Int;
    *(v44 + 64) = &protocol witness table for Int;
    *(v44 + 32) = v45;
    sub_100004114(&qword_1016B14E0, &type metadata accessor for URL);

    v46 = v100;
    v47 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v48;
    *(v44 + 96) = &type metadata for String;
    v105 = sub_100008C00();
    *(v44 + 104) = v105;
    *(v44 + 72) = v47;
    *(v44 + 80) = v49;
    os_log(_:dso:log:_:_:)();

    (*(v103 + 8))(v46, v28);

    v50 = v101 + *(type metadata accessor for MessagingMessageContext() + 24);
    v52 = *(v50 + 8);
    v51 = *(v50 + 16);
    v53 = String._bridgeToObjectiveC()();
    v54 = [v53 _stripPotentialTokenURIWithToken:0];

    if (v54)
    {
      v104 = v43;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v55;

      v32 = *(v23 + 2);
      if (v32)
      {
        v27 = 0;
        v34 = v97;
        v35 = v91;
        v7 = v92;
        while (1)
        {
          if (v27 >= *(v23 + 2))
          {
            __break(1u);
            goto LABEL_31;
          }

          v56 = *(v7 + 80);
          sub_101149F2C(&v23[((v56 + 32) & ~v56) + *(v7 + 72) * v27], v35, type metadata accessor for ShareRecord);
          v57 = &v35[*(v34 + 9)];
          v58 = v57[1] == v15 && v57[2] == v28;
          if (v58 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          ++v27;
          sub_101149F94(v35, type metadata accessor for ShareRecord);
          v59 = v105;
          if (v32 == v27)
          {
            goto LABEL_26;
          }
        }

        v101 = ~v56;

        v62 = v83;
        sub_101149EC4(v35, v83, type metadata accessor for ShareRecord);
        v63 = v62;
        v64 = v96;
        sub_101149EC4(v63, v96, type metadata accessor for ShareRecord);
        static os_log_type_t.error.getter();
        if (qword_101695030 != -1)
        {
          swift_once();
        }

        v65 = swift_allocObject();
        v103 = xmmword_101385D80;
        *(v65 + 16) = xmmword_101385D80;
        v66 = v93;
        sub_101149F2C(v64, v93, type metadata accessor for ShareRecord);
        v67 = String.init<A>(describing:)();
        v68 = v105;
        *(v65 + 56) = &type metadata for String;
        *(v65 + 64) = v68;
        *(v65 + 32) = v67;
        *(v65 + 40) = v69;
        os_log(_:dso:log:_:_:)();

        sub_101149F2C(v64, v66, type metadata accessor for ShareRecord);
        v70 = v87;
        (*(v87 + 16))(v94, v102, v95);
        v71 = (v56 + 24) & v101;
        v72 = (v84 + v71 + 7) & 0xFFFFFFFFFFFFFFF8;
        v73 = (v72 + *(v70 + 80) + 8) & ~*(v70 + 80);
        v74 = (v86 + v73 + 7) & 0xFFFFFFFFFFFFFFF8;
        v75 = swift_allocObject();
        *(v75 + 16) = v88;
        sub_101149EC4(v93, v75 + v71, type metadata accessor for ShareRecord);
        *(v75 + v72) = v89;
        (*(v70 + 32))(v75 + v73, v94, v95);
        v76 = (v75 + v74);
        *v76 = v15;
        v76[1] = v28;

        static os_log_type_t.default.getter();
        if (qword_101695038 != -1)
        {
          swift_once();
        }

        v77 = swift_allocObject();
        *(v77 + 16) = v103;
        v78 = v96;
        sub_101149F2C(v96, v90, type metadata accessor for ShareRecord);
        v79 = String.init<A>(describing:)();
        v80 = v105;
        *(v77 + 56) = &type metadata for String;
        *(v77 + 64) = v80;
        *(v77 + 32) = v79;
        *(v77 + 40) = v81;
        os_log(_:dso:log:_:_:)();

        sub_100B0F7D8(v78, v85, sub_1011496BC, v75);

        sub_101149F94(v78, type metadata accessor for ShareRecord);
        return;
      }

      v59 = v105;
LABEL_26:

      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_101385D80;
      *(v82 + 56) = &type metadata for String;
      *(v82 + 64) = v59;
      *(v82 + 32) = v15;
      *(v82 + 40) = v28;
      os_log(_:dso:log:_:_:)();
    }

    else
    {

      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_101385D80;
      v61 = v105;
      *(v60 + 56) = &type metadata for String;
      *(v60 + 64) = v61;
      *(v60 + 32) = v52;
      *(v60 + 40) = v51;

      os_log(_:dso:log:_:_:)();
    }

    return;
  }

  v39 = *(v37 + 32);
  while (1)
  {
    v39(v32, v23, v28);
    v40 = objc_autoreleasePoolPush();
    v41 = v106;
    sub_1005FF9CC(v32, v104, &v108, v107);
    v106 = v41;
    if (v41)
    {
      break;
    }

    objc_autoreleasePoolPop(v40);
    (*(v37 + 8))(v32, v28);
    DirectorySequence.next()();
    if (v38(v23, 1, v28) == 1)
    {
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v40);
  __break(1u);
}

uint64_t sub_101140F80(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a4;
  v42 = a5;
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for OwnedBeaconRecord();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ShareRecord();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  if (a1)
  {
    v39 = a7;
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v38 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_101385D80;
    sub_101149F2C(a3, v22, type metadata accessor for ShareRecord);
    v24 = String.init<A>(describing:)();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    v27 = sub_100008C00();
    *(v23 + 64) = v27;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:_:_:)();

    v28 = *(v41 + 144);
    sub_100A8306C(0);
    sub_100025020(v42, v43);
    if (v44)
    {
      sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
      v29 = swift_dynamicCast();
      (*(v15 + 56))(v13, v29 ^ 1u, 1, v14);
      if ((*(v15 + 48))(v13, 1, v14) != 1)
      {
        sub_101149EC4(v13, v18, type metadata accessor for OwnedBeaconRecord);
        if (sub_1000322C8())
        {
          static os_log_type_t.default.getter();
          v30 = swift_allocObject();
          *(v30 + 16) = xmmword_10138BBE0;
          *(v30 + 56) = &type metadata for String;
          *(v30 + 64) = v27;
          *(v30 + 32) = v40;
          *(v30 + 40) = v39;

          v31 = UUID.uuidString.getter();
          *(v30 + 96) = &type metadata for String;
          *(v30 + 104) = v27;
          *(v30 + 72) = v31;
          *(v30 + 80) = v32;
          os_log(_:dso:log:_:_:)();
        }

        return sub_101149F94(v18, type metadata accessor for OwnedBeaconRecord);
      }
    }

    else
    {
      sub_10000B3A8(v43, &qword_101696920, &unk_10138B200);
      (*(v15 + 56))(v13, 1, 1, v14);
    }

    return sub_10000B3A8(v13, &unk_1016A9A20, &qword_10138B280);
  }

  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_101385D80;
  sub_101149F2C(a3, v22, type metadata accessor for ShareRecord);
  v35 = String.init<A>(describing:)();
  v37 = v36;
  *(v34 + 56) = &type metadata for String;
  *(v34 + 64) = sub_100008C00();
  *(v34 + 32) = v35;
  *(v34 + 40) = v37;
  os_log(_:dso:log:_:_:)();
}

void sub_1011414A0(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v44 - v5;
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v48 = *(v7 - 8);
  v8 = *(v48 + 64);
  v9 = __chkstk_darwin(v7);
  v46 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = v10;
  __chkstk_darwin(v9);
  v12 = &v44 - v11;
  LODWORD(v47) = static os_log_type_t.default.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v13 = swift_allocObject();
  v50 = xmmword_101385D80;
  *(v13 + 16) = xmmword_101385D80;
  sub_101149F2C(a1, v12, type metadata accessor for SharedBeaconRecord);
  v14 = String.init<A>(describing:)();
  v52 = v12;
  v15 = a1;
  v16 = v14;
  v18 = v17;
  *(v13 + 56) = &type metadata for String;
  v19 = sub_100008C00();
  *(v13 + 64) = v19;
  *(v13 + 32) = v16;
  *(v13 + 40) = v18;
  v20 = v15;
  os_log(_:dso:log:_:_:)();

  v21 = *(v49 + 144);
  sub_100AA5198(v15 + *(v7 + 20), v6);
  v22 = v48;
  if ((*(v48 + 48))(v6, 1, v7) == 1)
  {
    sub_10000B3A8(v6, &unk_101698C30, &unk_101392630);
    static os_log_type_t.error.getter();
    v23 = swift_allocObject();
    *(v23 + 16) = v50;
    sub_101149F2C(v20, v52, type metadata accessor for SharedBeaconRecord);
    v24 = String.init<A>(describing:)();
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = v19;
    *(v23 + 32) = v24;
    *(v23 + 40) = v25;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    v49 = v21;
    v26 = v46;
    sub_101149EC4(v6, v46, type metadata accessor for SharedBeaconRecord);
    v27 = v20;
    v28 = v52;
    sub_101149F2C(v27, v52, type metadata accessor for SharedBeaconRecord);
    v29 = *(v22 + 80);
    v30 = (v29 + 16) & ~v29;
    v47 = v30 + v51;
    v45 = swift_allocObject();
    v48 = v30;
    sub_101149EC4(v28, v45 + v30, type metadata accessor for SharedBeaconRecord);
    static os_log_type_t.default.getter();
    v31 = v53;
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v32 = swift_allocObject();
    *(v32 + 16) = v50;
    *(v32 + 56) = &type metadata for String;
    *(v32 + 64) = v19;
    *(v32 + 32) = 0x65736C6166;
    *(v32 + 40) = 0xE500000000000000;
    os_log(_:dso:log:_:_:)();

    v33 = objc_autoreleasePoolPush();
    sub_101122288(v26);
    *&v50 = v34;
    objc_autoreleasePoolPop(v33);
    if (v31)
    {
      __break(1u);
    }

    else
    {
      v35 = *(v49 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v53 = 0;
      v36 = v26;
      v37 = v26;
      v38 = v52;
      sub_101149F2C(v37, v52, type metadata accessor for SharedBeaconRecord);
      v39 = swift_allocObject();
      v40 = v45;
      *(v39 + 16) = sub_1011498FC;
      *(v39 + 24) = v40;
      sub_101149EC4(v38, v39 + ((v29 + 32) & ~v29), type metadata accessor for SharedBeaconRecord);

      sub_100FDCA40(v50, sub_10114996C, v39);

      Future.addFailure(block:)();

      sub_101149F2C(v36, v38, type metadata accessor for SharedBeaconRecord);
      v41 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      sub_101149EC4(v38, v42 + v48, type metadata accessor for SharedBeaconRecord);
      *(v42 + v41) = v49;
      v43 = (v42 + ((v41 + 15) & 0xFFFFFFFFFFFFFFF8));
      *v43 = sub_101141BDC;
      v43[1] = 0;

      Future.addSuccess(block:)();

      sub_101149F94(v36, type metadata accessor for SharedBeaconRecord);
    }
  }
}

uint64_t sub_101141B80(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for SharedBeaconRecord(0) + 40);
  v6 = *(a2 + v4);
  v5 = *(a2 + v4 + 8);
  v7 = (a1 + v4);
  v8 = *(a1 + v4 + 8);

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_101141BDC(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v25 - v7;
  v9 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v25 - v11);
  sub_1000D2A70(a1, v25 - v11, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    v25[1] = v13;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v18 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_101149EC4(v12, v8, type metadata accessor for SharedBeaconRecord);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_101385D80;
    sub_101149F2C(v8, v6, type metadata accessor for SharedBeaconRecord);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    *(v20 + 56) = &type metadata for String;
    *(v20 + 64) = sub_100008C00();
    *(v20 + 32) = v21;
    *(v20 + 40) = v23;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v24 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return sub_101149F94(v8, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_101141F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v99 = a3;
  v5 = type metadata accessor for CryptoKeys();
  v6 = *(v5 - 8);
  v96 = v5;
  v97 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v95 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for UUID();
  v94 = *(v90 - 1);
  v9 = *(v94 + 64);
  __chkstk_darwin(v90);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v88 = *(v12 - 8);
  v89 = v12;
  v13 = *(v88 + 64);
  v14 = __chkstk_darwin(v12);
  v91 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v92 = &v83 - v16;
  v17 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v83 - v19;
  v21 = type metadata accessor for SharedBeaconRecord(0);
  v22 = *(v21 - 1);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v83 - v27;
  v87 = *(a1 + 144);
  sub_100025020(a2, v98);
  if (!v98[3])
  {
    sub_10000B3A8(v98, &qword_101696920, &unk_10138B200);
    (*(v22 + 56))(v20, 1, 1, v21);
    return sub_10000B3A8(v20, &unk_101698C30, &unk_101392630);
  }

  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v29 = swift_dynamicCast();
  (*(v22 + 56))(v20, v29 ^ 1u, 1, v21);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_10000B3A8(v20, &unk_101698C30, &unk_101392630);
  }

  sub_101149EC4(v20, v28, type metadata accessor for SharedBeaconRecord);
  v30 = v99;
  v31 = *(v99 + 16);
  if (!v31)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 == -1)
    {
LABEL_23:
      os_log(_:dso:log:_:_:)();
      return sub_101149F94(v28, type metadata accessor for SharedBeaconRecord);
    }

LABEL_30:
    swift_once();
    goto LABEL_23;
  }

  if (*&v28[v21[11]] == -1 && *&v28[v21[12]] == -1 && !*&v28[v21[17]])
  {
    sub_100532344();
    sub_1007FFCA8(v28, v30);

    return sub_101149F94(v28, type metadata accessor for SharedBeaconRecord);
  }

  else
  {
    v32 = v97;
    v33 = v99 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v34 = v92;
    v86 = v21;
    v99 = v33;
    DateInterval.start.getter();
    v35 = v31;
    v36 = v91;
    sub_1011D7168(v91);
    sub_101149F2C(v28, v26, type metadata accessor for SharedBeaconRecord);
    v37 = v94;
    v38 = v90;
    (*(v94 + 16))(v11, &v26[v86[5]], v90);
    sub_101149F94(v26, type metadata accessor for SharedBeaconRecord);
    v39 = v35;
    v40 = sub_10088756C(v11, v36, v34, 0);
    (*(v37 + 8))(v11, v38);
    v41 = v40 + v35;
    if (__CFADD__(v40, v35))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v42 = v41 != 0;
    v43 = v41 - 1;
    if (!v42)
    {
      goto LABEL_28;
    }

    v90 = v28;
    v84 = v43;
    v85 = v40;
    if (v43 < v40)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v98[0] = _swiftEmptyArrayStorage;
    sub_101124C34(0, v35, 0);
    v44 = v98[0];
    v94 = *(v32 + 72);
    v45 = v99;
    do
    {
      v99 = v39;
      v46 = v95;
      sub_101149F2C(v45, v95, type metadata accessor for CryptoKeys);
      v47 = (v46 + v96[9]);
      v49 = *v47;
      v48 = v47[1];
      v50 = v96[5];
      v51 = (v46 + v96[6]);
      v53 = *v51;
      v52 = v51[1];
      v54 = *(v46 + v50);
      v55 = *(v46 + v50 + 8);
      v97 = v48;
      sub_100017D5C(v49, v48);
      sub_100017D5C(v53, v52);
      sub_10002E98C(v54, v55);
      sub_101149F94(v46, type metadata accessor for CryptoKeys);
      v98[0] = v44;
      v57 = *(v44 + 16);
      v56 = *(v44 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_101124C34((v56 > 1), v57 + 1, 1);
        v44 = v98[0];
      }

      *(v44 + 16) = v57 + 1;
      v58 = v44 + 48 * v57;
      *&v59 = v49;
      *(&v59 + 1) = v97;
      *&v60 = v53;
      *(&v60 + 1) = v52;
      *(v58 + 32) = v59;
      *(v58 + 48) = v60;
      *(v58 + 64) = v54;
      *(v58 + 72) = v55;
      v45 += v94;
      v39 = v99 - 1;
    }

    while (v99 != 1);
    v62 = v93;
    v63 = sub_1013131C0(v85, v84, v44);
    if (!v62)
    {
      v73 = v63;
      v74 = v64;
      v75 = v65;
      v76 = *(v87 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
      type metadata accessor for BeaconKeyManager(0);
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v77 = v98[0];
      v28 = v90;
      v78 = sub_1012E9F5C(v90, 1, v73, v74, v75, 0, 0, 0);
      sub_1012F0B9C(&v28[v86[5]], v78, v98);

      v79 = v98[0];
      v80 = type metadata accessor for Transaction();
      v98[0] = v79;
      __chkstk_darwin(v80);
      *(&v83 - 6) = v77;
      *(&v83 - 5) = v28;
      *(&v83 - 4) = 0;
      *(&v83 - 3) = 0;
      *(&v83 - 2) = v98;

      static Transaction.named<A>(_:with:)();

      v81 = v89;
      v82 = *(v88 + 8);
      v82(v91, v89);
      v82(v92, v81);

      return sub_101149F94(v28, type metadata accessor for SharedBeaconRecord);
    }

    v66 = v89;
    v67 = *(v88 + 8);
    v67(v91, v89);
    v67(v92, v66);
    static os_log_type_t.error.getter();
    v68 = v90;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_101385D80;
    v98[0] = v62;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v70 = String.init<A>(describing:)();
    v72 = v71;
    *(v69 + 56) = &type metadata for String;
    *(v69 + 64) = sub_100008C00();
    *(v69 + 32) = v70;
    *(v69 + 40) = v72;
    os_log(_:dso:log:_:_:)();

    return sub_101149F94(v68, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_1011429A4(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v64 = a4;
  v65 = a5;
  v62 = a3;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v54 = *(v7 - 8);
  v55 = v7;
  v8 = *(v54 + 64);
  __chkstk_darwin(v7);
  v52 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for DispatchQoS();
  v51 = *(v53 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v53);
  v50 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v49 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v15);
  v18 = v42 - v17;
  __chkstk_darwin(v16);
  v20 = v42 - v19;
  v56 = *(a2 + 144);
  v21 = *(v13 + 16);
  v21(v42 - v19, v62, v12);
  v62 = v18;
  v48 = v21;
  v42[1] = v13 + 16;
  v21(v18, v20, v12);
  v22 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v23 = (v14 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = *(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a2;
  *(v24 + 24) = a1;
  v59 = v13;
  v25 = *(v13 + 32);
  v45 = v22;
  v60 = v12;
  v43 = v25;
  v25(v24 + v22, v20, v12);
  v47 = v23;
  *(v24 + v23) = v64;
  v58 = v24;
  v46 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v24 + v46) = v65;
  v26 = *(v56 + 184);
  v63 = a2;
  swift_retain_n();
  v61 = a1;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  v27 = v57;
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v57 = aBlock;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  aBlock = 0x7365547265646E75;
  v67 = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v72 == 1)
  {
    v28 = v63;
    v42[0] = *(v63 + 176);
    v56 = v27;
    v29 = v49;
    v30 = v60;
    v48(v49, v62, v60);
    v31 = v46;
    v32 = swift_allocObject();
    *(v32 + 16) = v61;
    *(v32 + 24) = v28;
    v43(v32 + v45, v29, v30);
    v33 = v65;
    *(v32 + v47) = v64;
    *(v32 + v31) = v33;
    v70 = sub_101149A8C;
    v71 = v32;
    aBlock = _NSConcreteStackBlock;
    v67 = 1107296256;
    v68 = sub_100006684;
    v69 = &unk_101668D28;
    v34 = _Block_copy(&aBlock);

    v35 = v50;
    static DispatchQoS.unspecified.getter();
    v72 = _swiftEmptyArrayStorage;
    sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v36 = v52;
    v37 = v55;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v34);
    (*(v54 + 8))(v36, v37);
    (*(v51 + 8))(v35, v53);

    v38 = v62;
  }

  else
  {
    v39 = type metadata accessor for Transaction();
    __chkstk_darwin(v39);
    v40 = v58;
    v42[-4] = v57;
    v42[-3] = sub_101149A74;
    v42[-2] = v40;
    static Transaction.named<A>(_:with:)();

    v30 = v60;
    v38 = v62;
  }

  (*(v59 + 8))(v38, v30);
}

uint64_t sub_101143110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v33 = *(v31 - 8);
  v8 = *(v33 + 64);
  __chkstk_darwin(v31);
  v29 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for DispatchQoS();
  v30 = *(v32 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v32);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 176);
  (*(v14 + 16))(v16, a3, v13);
  v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a1;
  (*(v14 + 32))(v19 + v17, v16, v13);
  v20 = v27;
  *(v19 + v18) = v26;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v20;
  aBlock[4] = sub_10114A028;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101668D78;
  v21 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v34 = _swiftEmptyArrayStorage;
  sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v22 = v29;
  v23 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);
  (*(v33 + 8))(v22, v23);
  (*(v30 + 8))(v12, v32);
}

void sub_1011434D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v84 = a5;
  v87 = type metadata accessor for TimeBasedKey();
  v9 = *(v87 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v87);
  v86 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v75 - v14;
  v16 = type metadata accessor for SharedBeaconRecord(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a2 + 144);
  sub_100AA5198(a3, v15);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_10000B3A8(v15, &unk_101698C30, &unk_101392630);
LABEL_28:
    Transaction.capture()();
    return;
  }

  sub_101149EC4(v15, v20, type metadata accessor for SharedBeaconRecord);
  v22 = *(a4 + 16);
  if (!v22)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v46 = v20;
    goto LABEL_27;
  }

  v78 = v21;
  v83 = v20;
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = a4 + v23;
  v85 = *(v9 + 72);
  v25 = *(a4 + v23);
  if (*(a4 + v23 + v85 * (v22 - 1)) < v25)
  {
    __break(1u);
LABEL_30:
    swift_once();
LABEL_11:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_101385D80;
    v89 = a1;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v42 = String.init<A>(describing:)();
    v44 = v43;
    *(v41 + 56) = &type metadata for String;
    *(v41 + 64) = sub_100008C00();
    *(v41 + 32) = v42;
    *(v41 + 40) = v44;
    os_log(_:dso:log:_:_:)();

    v45 = v83;
LABEL_26:
    v46 = v45;
LABEL_27:
    sub_101149F94(v46, type metadata accessor for SharedBeaconRecord);
    goto LABEL_28;
  }

  v81 = *(a4 + v23 + v85 * (v22 - 1));
  v82 = v25;
  v79 = v23;
  v80 = a1;
  v77 = v16;
  v89 = _swiftEmptyArrayStorage;
  sub_101124C34(0, v22, 0);
  v26 = v89;
  do
  {
    v27 = v86;
    sub_101149F2C(v24, v86, type metadata accessor for TimeBasedKey);
    v28 = (v27 + *(v87 + 24));
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    v32 = v28[3];
    v33 = v28[4];
    v34 = v28[5];
    sub_10002E98C(*v28, v30);
    v88 = v31;
    sub_100017D5C(v31, v32);
    sub_10002E98C(v33, v34);
    sub_101149F94(v27, type metadata accessor for TimeBasedKey);
    v89 = v26;
    v36 = *(v26 + 16);
    v35 = *(v26 + 24);
    if (v36 >= v35 >> 1)
    {
      sub_101124C34((v35 > 1), v36 + 1, 1);
      v26 = v89;
    }

    *(v26 + 16) = v36 + 1;
    v37 = (v26 + 48 * v36);
    v37[4] = v29;
    v37[5] = v30;
    v37[6] = v88;
    v37[7] = v32;
    v37[8] = v33;
    v37[9] = v34;
    v24 += v85;
    --v22;
  }

  while (v22);
  v38 = sub_1013131C0(v82, v81, v26);
  v47 = *(v84 + 16);
  v81 = v39;
  v82 = v40;
  v76 = v38;
  if (!v47)
  {
    v67 = 0;
    v68 = 0;
    v69 = 0;
    goto LABEL_25;
  }

  v75 = 0;
  v48 = v84 + v79;
  v49 = *(v84 + v79 + (v47 - 1) * v85);
  v84 = *(v84 + v79);
  v79 = v49;
  if (v49 >= v84)
  {
    v89 = _swiftEmptyArrayStorage;
    sub_101124C34(0, v47, 0);
    v50 = v89;
    do
    {
      v51 = v86;
      sub_101149F2C(v48, v86, type metadata accessor for TimeBasedKey);
      v52 = (v51 + *(v87 + 24));
      v53 = *v52;
      v54 = v52[1];
      v55 = v52[2];
      v56 = v52[3];
      v58 = v52[4];
      v57 = v52[5];
      sub_10002E98C(*v52, v54);
      sub_100017D5C(v55, v56);
      v88 = v57;
      sub_10002E98C(v58, v57);
      sub_101149F94(v51, type metadata accessor for TimeBasedKey);
      v89 = v50;
      v60 = *(v50 + 16);
      v59 = *(v50 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_101124C34((v59 > 1), v60 + 1, 1);
        v50 = v89;
      }

      *(v50 + 16) = v60 + 1;
      v61 = (v50 + 48 * v60);
      v61[4] = v53;
      v61[5] = v54;
      v61[6] = v55;
      v61[7] = v56;
      v62 = v88;
      v61[8] = v58;
      v61[9] = v62;
      v48 += v85;
      --v47;
    }

    while (v47);
    v63 = v75;
    v64 = sub_1013131C0(v84, v79, v50);
    a1 = v63;
    if (v63)
    {

      static os_log_type_t.error.getter();
      if (qword_101695030 == -1)
      {
        goto LABEL_11;
      }

      goto LABEL_30;
    }

    v67 = v64;
    v68 = v65;
    v69 = v66;
LABEL_25:
    v70 = *(v78 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
    type metadata accessor for BeaconKeyManager(0);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v71 = v89;
    v45 = v83;
    v72 = sub_1012E9F5C(v83, 1, v76, v81, v82, v67, v68, v69);
    sub_1012F0B9C(v45 + *(v77 + 20), v72, &v89);

    v73 = v89;
    v74 = type metadata accessor for Transaction();
    v89 = v73;
    __chkstk_darwin(v74);
    *(&v75 - 6) = v71;
    *(&v75 - 5) = v45;
    *(&v75 - 4) = 0;
    *(&v75 - 3) = 0;
    *(&v75 - 2) = &v89;

    static Transaction.named<A>(_:with:)();

    goto LABEL_26;
  }

  __break(1u);
}

uint64_t sub_101143CDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v29 = a4;
  v28 = a1;
  v35 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v35 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v35);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for DispatchQoS();
  v34 = *(v36 - 8);
  v10 = *(v34 + 64);
  __chkstk_darwin(v36);
  v27 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a2 + 168);
  (*(v13 + 16))(v15, a3, v12);
  v16 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v17 = (v14 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v13 + 32))(v19 + v16, v15, v12);
  *(v19 + v17) = a2;
  v20 = v19 + v18;
  *v20 = v29;
  v21 = v31;
  *(v20 + 8) = v30;
  *(v20 + 16) = v21;
  *(v19 + ((v18 + 31) & 0xFFFFFFFFFFFFFFF8)) = v28;
  aBlock[4] = sub_101149E18;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006684;
  aBlock[3] = &unk_101668E68;
  v22 = _Block_copy(aBlock);

  v23 = v27;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_10013A8AC();
  v24 = v33;
  v25 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v37 + 8))(v24, v25);
  (*(v34 + 8))(v23, v36);
}

uint64_t sub_1011440C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v114 = a6;
  v118 = a4;
  v119 = a5;
  v117 = a3;
  v131 = a2;
  v7 = type metadata accessor for SecureLocationsRelayAction(0);
  v8 = *(v7 - 8);
  v121 = v7;
  v122 = v8;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v123 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v125 = &v102 - v11;
  v124 = type metadata accessor for SecureLocationsRelayAction.Response(0);
  v12 = *(*(v124 - 8) + 64);
  v13 = __chkstk_darwin(v124);
  v115 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v126 = &v102 - v15;
  v120 = type metadata accessor for MessagingOptions(0);
  v16 = *(*(v120 - 8) + 64);
  __chkstk_darwin(v120);
  v127 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v116 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v132 = &v102 - v22;
  v23 = type metadata accessor for Date();
  v128 = *(v23 - 8);
  v129 = v23;
  v24 = *(v128 + 64);
  __chkstk_darwin(v23);
  v133 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = __chkstk_darwin(v26);
  v31 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v29);
  v34 = &v102 - v33;
  v35 = __chkstk_darwin(v32);
  v37 = &v102 - v36;
  __chkstk_darwin(v35);
  v39 = &v102 - v38;
  v40 = *(v27 + 16);
  v130 = a1;
  v40(&v102 - v38, a1, v26);
  v41 = sub_10053A3CC(1, 1, v39, v134);
  v108 = v40;
  v109 = v27 + 16;
  v107 = v9;
  v110 = v34;
  v111 = v27;
  v103 = v31;
  v104 = v37;
  v112 = v26;
  v105 = LOBYTE(v134[0]);
  v45 = v134[2];
  v106 = v134[1];
  v113 = v134[3];
  v46 = v131;
  v47 = *(v131 + 320);
  v48 = *(v47 + 24);
  __chkstk_darwin(v41);
  *(&v102 - 4) = v47;
  *(&v102 - 24) = 1;
  v50 = v129;
  v49 = v130;
  *(&v102 - 2) = v130;
  v51 = v133;
  OS_dispatch_queue.sync<A>(execute:)();
  v52 = sub_1010B2678(v51, 1u);
  v53 = *(v128 + 8);
  v53(v51, v50);
  if (v52)
  {
    v54 = v133;
    static Date.trustedNow.getter(v133);
    sub_1010B1D04(v49, v54, 1);
    v53(v54, v50);
    v131 = *(v46 + 24);
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v55 = swift_allocObject();
    v133 = v45;
    v56 = v55;
    *(v55 + 16) = xmmword_101385D80;
    *(v55 + 32) = v117;
    v57 = v119;
    *(v55 + 40) = v118;
    *(v55 + 48) = v57;
    v58 = *(v111 + 56);
    v59 = v132;
    v60 = v112;
    v58(v132, 1, 1, v112);

    v61 = v110;
    UUID.init()();
    v62 = sub_101129A8C(_swiftEmptyArrayStorage);
    v130 = 0;
    v63 = v62;
    v64 = sub_101129A8C(_swiftEmptyArrayStorage);
    v65 = v127;
    v108(v127, v61, v60);
    v66 = v116;
    sub_1000D2A70(v59, v116, &qword_1016980D0, &unk_10138F3B0);
    v67 = v120;
    v68 = *(v120 + 28);
    v58(v65 + v68, 1, 1, v60);
    *(v65 + v67[5]) = v56;
    *(v65 + v67[6]) = 0;
    sub_1010AD394(v66, v65 + v68);
    v69 = v65 + v67[8];
    *v69 = 0;
    *(v69 + 8) = 1;
    *(v65 + v67[9]) = 1;
    *(v65 + v67[10]) = v63;
    *(v65 + v67[11]) = v64;
    v70 = (v65 + v67[12]);
    *v70 = 0;
    v70[1] = 0;
    *(v65 + v67[13]) = xmmword_1013B0D90;
    v71 = type metadata accessor for SecureLocationsRelayAction.SendMessage(0);
    v72 = v125;
    sub_101149F2C(v65, &v125[*(v71 + 24)], type metadata accessor for MessagingOptions);
    *v72 = v105;
    v73 = v133;
    *(v72 + 8) = v106;
    *(v72 + 16) = v73;
    v74 = v113;
    *(v72 + 24) = v113;
    *(v72 + 32) = xmmword_10138BBF0;
    swift_storeEnumTagMultiPayload();
    v75 = v123;
    sub_101149F2C(v72, v123, type metadata accessor for SecureLocationsRelayAction);
    v76 = (*(v122 + 80) + 24) & ~*(v122 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v131;
    sub_101149EC4(v75, v77 + v76, type metadata accessor for SecureLocationsRelayAction);
    v78 = v73;
    sub_100017D5C(v73, v74);

    v79 = v126;
    v80 = v130;
    unsafeFromAsyncTask<A>(_:)();
    if (v80)
    {

      sub_100016590(v73, v74);
      sub_101149F94(v72, type metadata accessor for SecureLocationsRelayAction);
      (*(v111 + 8))(v110, v112);
      goto LABEL_17;
    }

    v87 = v112;
    sub_101149F94(v72, type metadata accessor for SecureLocationsRelayAction);

    v88 = v115;
    sub_101149F2C(v79, v115, type metadata accessor for SecureLocationsRelayAction.Response);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_101149F94(v88, type metadata accessor for SecureLocationsRelayAction.Response);
      sub_10057C844();
      swift_allocError();
      swift_willThrow();
      sub_100016590(v73, v74);
      sub_101149F94(v79, type metadata accessor for SecureLocationsRelayAction.Response);
      (*(v111 + 8))(v110, v87);
LABEL_17:
      sub_10000B3A8(v132, &qword_1016980D0, &unk_10138F3B0);
      sub_101149F94(v65, type metadata accessor for MessagingOptions);
      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_101385D80;
      v43 = _convertErrorToNSError(_:)();
      *(v42 + 56) = sub_100008BB8(0, &qword_10169E020, NSError_ptr);
      *(v42 + 64) = sub_100009D18(&qword_1016BC310, &qword_10169E020, NSError_ptr);
      *(v42 + 32) = v43;
      os_log(_:dso:log:_:_:)();
    }

    sub_101149F94(v79, type metadata accessor for SecureLocationsRelayAction.Response);
    v89 = v111;
    v90 = *(v111 + 8);
    v91 = v87;
    v90(v110, v87);
    sub_10000B3A8(v132, &qword_1016980D0, &unk_10138F3B0);
    sub_101149F94(v65, type metadata accessor for MessagingOptions);
    v92 = v104;
    (*(v89 + 32))(v104, v88, v87);
    v93 = static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v94 = qword_10177C378;
    v95 = v103;
    v108(v103, v92, v91);
    if (os_log_type_enabled(v94, v93))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v134[0] = v97;
      *v96 = 136446210;
      sub_100004114(&qword_101696930, &type metadata accessor for UUID);
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v100 = v99;
      v90(v95, v91);
      v101 = sub_1000136BC(v98, v100, v134);

      *(v96 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v94, v93, "Sent forceUnshare message: %{public}s", v96, 0xCu);
      sub_100007BAC(v97);
      v92 = v104;

      v78 = v133;
    }

    else
    {
      v90(v95, v91);
    }

    Transaction.capture()();
    sub_100016590(v78, v113);
    return (v90)(v92, v91);
  }

  else
  {
    v81 = v45;
    v82 = v113;
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_101385D80;
    v84 = UUID.uuidString.getter();
    v86 = v85;
    *(v83 + 56) = &type metadata for String;
    *(v83 + 64) = sub_100008C00();
    *(v83 + 32) = v84;
    *(v83 + 40) = v86;
    os_log(_:dso:log:_:_:)();

    return sub_100016590(v81, v82);
  }
}

void sub_101144E78(uint64_t (*a1)(uint64_t a1), uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v191 = a7;
  v182 = a6;
  v183 = a5;
  v214 = a4;
  v216 = a3;
  v181 = a1;
  v194 = type metadata accessor for DateInterval();
  v200 = *(v194 - 8);
  v8 = *(v200 + 64);
  v9 = __chkstk_darwin(v194);
  v188 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v189 = &v178 - v12;
  v13 = __chkstk_darwin(v11);
  v190 = &v178 - v14;
  __chkstk_darwin(v13);
  v16 = &v178 - v15;
  v17 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v185 = &v178 - v19;
  v184 = type metadata accessor for SharedBeaconRecord(0);
  v186 = *(v184 - 8);
  v20 = *(v186 + 64);
  v21 = __chkstk_darwin(v184);
  v179 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = v22;
  __chkstk_darwin(v21);
  v187 = (&v178 - v23);
  v24 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v198 = &v178 - v26;
  v197 = type metadata accessor for OwnedBeaconRecord();
  v196 = *(v197 - 8);
  v27 = *(v196 + 64);
  __chkstk_darwin(v197);
  v199 = &v178 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Date();
  v204 = *(v29 - 8);
  v205 = v29;
  v30 = *(v204 + 64);
  v31 = __chkstk_darwin(v29);
  v192 = &v178 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v195 = &v178 - v34;
  v35 = __chkstk_darwin(v33);
  v202 = &v178 - v36;
  __chkstk_darwin(v35);
  v203 = &v178 - v37;
  v38 = sub_1000BC4D4(&qword_1016A4780, &qword_1013B34F0);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38 - 8);
  v212 = &v178 - v40;
  v41 = type metadata accessor for ShareRecord();
  v210 = *(v41 - 8);
  v211 = v41;
  v42 = *(v210 + 8);
  __chkstk_darwin(v41);
  v44 = &v178 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v46 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45 - 8);
  v48 = &v178 - v47;
  v49 = type metadata accessor for DirectorySequence();
  v207 = *(v49 - 8);
  *&v208 = v49;
  v50 = *(v207 + 8);
  __chkstk_darwin(v49);
  v52 = &v178 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for URL();
  v215 = *(v53 - 1);
  v54 = *(v215 + 64);
  v55 = __chkstk_darwin(v53);
  v57 = &v178 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v55);
  v59 = &v178 - v58;
  v201 = *(a2 + 144);
  v217 = *(v201 + 168);
  v60 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v193 = v16;
  v206 = v44;
  v213 = a2;
  sub_1000076D4(v53, qword_10177A518);
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v60);
  v220 = _swiftEmptyArrayStorage;
  v221 = _swiftEmptyArrayStorage;
  v61 = [objc_opt_self() defaultManager];
  v209 = v59;
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  v218 = v52;
  DirectorySequence.next()();
  v62 = v215;
  v63 = *(v215 + 48);
  if (v63(v48, 1, v53) != 1)
  {
    v64 = *(v62 + 32);
    while (1)
    {
      v64(v57, v48, v53);
      v65 = objc_autoreleasePoolPush();
      v66 = v219;
      sub_1005FF9CC(v57, v217, &v221, &v220);
      v219 = v66;
      if (v66)
      {
        break;
      }

      objc_autoreleasePoolPop(v65);
      (*(v62 + 8))(v57, v53);
      DirectorySequence.next()();
      if (v63(v48, 1, v53) == 1)
      {
        goto LABEL_7;
      }
    }

    objc_autoreleasePoolPop(v65);
    __break(1u);
    goto LABEL_49;
  }

LABEL_7:
  (*(v207 + 1))(v218, v208);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v67 = static OS_os_log.default.getter();
  v217 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v68 = swift_allocObject();
  v208 = xmmword_10138BBE0;
  *(v68 + 16) = xmmword_10138BBE0;
  v69 = v221;
  v70 = v221[2];
  *(v68 + 56) = &type metadata for Int;
  *(v68 + 64) = &protocol witness table for Int;
  *(v68 + 32) = v70;
  sub_100004114(&qword_1016B14E0, &type metadata accessor for URL);

  v71 = v209;
  v72 = dispatch thunk of CustomStringConvertible.description.getter();
  v74 = v73;
  *(v68 + 96) = &type metadata for String;
  v218 = sub_100008C00();
  *(v68 + 104) = v218;
  *(v68 + 72) = v72;
  *(v68 + 80) = v74;
  os_log(_:dso:log:_:_:)();

  (*(v215 + 8))(v71, v53);

  __chkstk_darwin(v75);
  *(&v178 - 2) = v214;
  v76 = v212;
  v77 = v219;
  sub_1012BD72C(sub_101149C70, v69, v212);

  v78 = v211;
  if ((*(v210 + 6))(v76, 1, v211) != 1)
  {
    v94 = v206;
    sub_101149EC4(v76, v206, type metadata accessor for ShareRecord);
    v95 = *(v213 + 320);
    v96 = v94 + *(v78 + 20);
    v97 = v203;
    v98 = static Date.trustedNow.getter(v203);
    v99 = *(v95 + 24);
    __chkstk_darwin(v98);
    v215 = v95;
    *(&v178 - 4) = v95;
    *(&v178 - 24) = 6;
    *(&v178 - 2) = v96;
    v100 = v202;
    v101 = v205;
    OS_dispatch_queue.sync<A>(execute:)();
    v219 = v77;
    Date.timeIntervalSince(_:)();
    v103 = v102;
    v104 = v204;
    v106 = v204 + 8;
    v105 = *(v204 + 8);
    v105(v100, v101);
    v105(v97, v101);
    if (v103 <= 72000.0)
    {
      static os_log_type_t.default.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v113 = swift_allocObject();
      *(v113 + 16) = v208;
      v114 = UUID.uuidString.getter();
      v115 = v218;
      *(v113 + 56) = &type metadata for String;
      *(v113 + 64) = v115;
      *(v113 + 32) = v114;
      *(v113 + 40) = v116;
      v117 = UUID.uuidString.getter();
      *(v113 + 96) = &type metadata for String;
      *(v113 + 104) = v115;
      *(v113 + 72) = v117;
      *(v113 + 80) = v118;
      goto LABEL_19;
    }

    v210 = v105;
    v211 = v106;
    v212 = v96;
    v107 = v198;
    v108 = v216;
    sub_100AA33AC(v216, v198);
    if ((*(v196 + 48))(v107, 1, v197) == 1)
    {
      sub_10000B3A8(v107, &unk_1016A9A20, &qword_10138B280);
      static os_log_type_t.error.getter();
      if (qword_101695030 != -1)
      {
        swift_once();
      }

      v109 = swift_allocObject();
      *(v109 + 16) = xmmword_101385D80;
      v110 = UUID.uuidString.getter();
      v111 = v218;
      *(v109 + 56) = &type metadata for String;
      *(v109 + 64) = v111;
      *(v109 + 32) = v110;
      *(v109 + 40) = v112;
LABEL_19:
      os_log(_:dso:log:_:_:)();

      v119 = v94;
LABEL_20:
      sub_101149F94(v119, type metadata accessor for ShareRecord);
      return;
    }

    sub_101149EC4(v107, v199, type metadata accessor for OwnedBeaconRecord);
    if (v191)
    {

      v120 = v108;
      v121 = v185;
      sub_100AA5198(v120, v185);
      v122 = v184;
      v123 = (*(v186 + 48))(v121, 1, v184);
      v124 = v218;
      if (v123 == 1)
      {

        sub_10000B3A8(v121, &unk_101698C30, &unk_101392630);
      }

      else
      {
        v125 = v122;
        v126 = v187;
        sub_101149EC4(v121, v187, type metadata accessor for SharedBeaconRecord);
        v127 = v126 + *(v125 + 28);
        v128 = *(v127 + 1);
        v129 = *(v127 + 2);
        if (*v127 == v183 && (v128 == v182 && v129 == v191 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          sub_101149F94(v187, type metadata accessor for SharedBeaconRecord);
        }

        else
        {
          static os_log_type_t.default.getter();
          if (qword_101695030 != -1)
          {
            swift_once();
          }

          v130 = swift_allocObject();
          *(v130 + 16) = v208;
          *(v130 + 56) = &type metadata for String;
          *(v130 + 64) = v124;
          *(v130 + 32) = v128;
          *(v130 + 40) = v129;
          *(v130 + 96) = &type metadata for String;
          *(v130 + 104) = v124;
          v131 = v182;
          v132 = v191;
          *(v130 + 72) = v182;
          *(v130 + 80) = v132;

          os_log(_:dso:log:_:_:)();

          v133 = swift_allocObject();
          v133[16] = v183;
          *(v133 + 3) = v131;
          *(v133 + 4) = v132;
          v216 = v133;

          static os_log_type_t.default.getter();
          if (qword_101695038 != -1)
          {
            swift_once();
          }

          v134 = swift_allocObject();
          *(v134 + 16) = xmmword_101385D80;
          *(v134 + 56) = &type metadata for String;
          *(v134 + 64) = v124;
          *(v134 + 32) = 0x65736C6166;
          *(v134 + 40) = 0xE500000000000000;
          os_log(_:dso:log:_:_:)();

          v53 = objc_autoreleasePoolPush();
          v135 = v187;
          v136 = v219;
          sub_101122288(v187);
          if (v136)
          {
LABEL_49:
            objc_autoreleasePoolPop(v53);
            __break(1u);
            return;
          }

          v138 = v137;
          objc_autoreleasePoolPop(v53);
          v139 = *(v201 + 184);
          sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
          type metadata accessor for CloudKitCoordinator();
          OSAllocatedUnfairLock.callAsFunction<A>(_:)();
          v219 = 0;
          *&v208 = type metadata accessor for SharedBeaconRecord;
          v140 = v179;
          sub_101149F2C(v135, v179, type metadata accessor for SharedBeaconRecord);
          v141 = *(v186 + 80);
          v142 = swift_allocObject();
          v143 = v216;
          *(v142 + 16) = sub_101149CB4;
          *(v142 + 24) = v143;
          v207 = type metadata accessor for SharedBeaconRecord;
          sub_101149EC4(v140, v142 + ((v141 + 32) & ~v141), type metadata accessor for SharedBeaconRecord);

          v209 = v138;
          v202 = sub_100FDCA40(v138, sub_10114A058, v142);

          v144 = swift_allocObject();
          v145 = v181;
          *(v144 + 16) = sub_101149CC0;
          *(v144 + 24) = v145;

          Future.addFailure(block:)();

          sub_101149F2C(v135, v140, v208);
          v146 = (v141 + 16) & ~v141;
          v147 = (v180 + v146 + 7) & 0xFFFFFFFFFFFFFFF8;
          v148 = swift_allocObject();
          sub_101149EC4(v140, v148 + v146, v207);
          *(v148 + v147) = v201;
          v149 = (v148 + ((v147 + 15) & 0xFFFFFFFFFFFFFFF8));
          *v149 = sub_101149CC0;
          v149[1] = v145;

          Future.addSuccess(block:)();

          sub_101149F94(v187, type metadata accessor for SharedBeaconRecord);
          v101 = v205;
          v94 = v206;
          v104 = v204;
        }
      }
    }

    v150 = v195;
    static Date.trustedNow.getter(v195);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v151 = *(qword_10177B348 + 40);
    v152 = v219;
    OS_dispatch_queue.sync<A>(execute:)();
    v219 = v152;
    v153 = v221;
    v154 = sub_101073EF8(v221);
    if ((v154 * 60) >> 64 == (60 * v154) >> 63)
    {
      Date.timeIntervalSinceReferenceDate.getter();
      v155 = v192;
      Date.init(timeIntervalSinceReferenceDate:)();
      v156 = *(v104 + 16);
      v156(v97, v155, v101);
      v157 = v97;
      v158 = v190;
      DateInterval.init(start:duration:)();
      sub_100565590(v158, v94, v193);
      v159 = *(v200 + 8);
      v200 += 8;
      v159(v158, v194);
      v160 = sub_101073F14(v153);
      v156(v157, v150, v101);
      if ((v160 * 60) >> 64 == (60 * v160) >> 63)
      {
        v216 = v159;
        v161 = v189;
        DateInterval.init(start:duration:)();
        v162 = sub_101073F4C(v153);

        v156(v157, v150, v101);
        if ((v162 * 60) >> 64 == (60 * v162) >> 63)
        {
          v163 = v101;
          v164 = v188;
          DateInterval.init(start:duration:)();
          static Date.trustedNow.getter(v157);
          sub_1010B1D04(v212, v157, 6);
          v165 = v210;
          v210(v157, v163);
          v166 = type metadata accessor for MessagingMessageContext();
          v167 = v199;
          v168 = v193;
          v169 = v219;
          sub_100564334(v199, v193, v164, v161, *(v214 + *(v166 + 24)), *(v214 + *(v166 + 24) + 8), *(v214 + *(v166 + 24) + 16));
          v219 = v169;
          if (!v169)
          {
            v176 = v194;
            v177 = v216;
            v216(v164, v194);
            v177(v161, v176);
            v177(v168, v176);
            v165(v192, v163);
            v165(v195, v163);
            sub_101149F94(v167, type metadata accessor for OwnedBeaconRecord);
            v119 = v206;
            goto LABEL_20;
          }

          v170 = v194;
          v171 = v216;
          v216(v164, v194);
          v171(v161, v170);
          v171(v168, v170);
          v165(v192, v163);
          v165(v195, v163);
          sub_1010B22E4(v212, 6);
          static os_log_type_t.error.getter();
          if (qword_101695030 == -1)
          {
LABEL_42:
            v172 = swift_allocObject();
            *(v172 + 16) = xmmword_101385D80;
            v221 = v219;
            swift_errorRetain();
            sub_1000BC4D4(&qword_101696960, &unk_10138B220);
            v173 = String.init<A>(describing:)();
            v174 = v218;
            *(v172 + 56) = &type metadata for String;
            *(v172 + 64) = v174;
            *(v172 + 32) = v173;
            *(v172 + 40) = v175;
            os_log(_:dso:log:_:_:)();

            sub_101149F94(v199, type metadata accessor for OwnedBeaconRecord);
            sub_101149F94(v206, type metadata accessor for ShareRecord);
            return;
          }

LABEL_47:
          swift_once();
          goto LABEL_42;
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_46;
  }

  sub_10000B3A8(v76, &qword_1016A4780, &qword_1013B34F0);
  static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v79 = swift_allocObject();
  *(v79 + 16) = v208;
  v80 = type metadata accessor for MessagingMessageContext();
  v81 = v214;
  v82 = (v214 + *(v80 + 48));
  v84 = *v82;
  v83 = v82[1];
  v85 = v218;
  *(v79 + 56) = &type metadata for String;
  *(v79 + 64) = v85;
  *(v79 + 32) = v84;
  *(v79 + 40) = v83;

  v86 = v216;
  v87 = UUID.uuidString.getter();
  *(v79 + 96) = &type metadata for String;
  *(v79 + 104) = v85;
  *(v79 + 72) = v87;
  *(v79 + 80) = v88;
  os_log(_:dso:log:_:_:)();

  v89 = (v81 + *(v80 + 24));
  v90 = *v89;
  v91 = *(v89 + 1);
  v92 = *(v89 + 2);
  v93 = type metadata accessor for Transaction();
  __chkstk_darwin(v93);
  *(&v178 - 6) = v213;
  *(&v178 - 5) = v86;
  *(&v178 - 32) = v90;
  *(&v178 - 3) = v91;
  *(&v178 - 2) = v92;
  static Transaction.named<A>(_:with:)();
}

uint64_t sub_101146814(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + *(type metadata accessor for ShareRecord() + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = (a2 + *(type metadata accessor for MessagingMessageContext() + 48));
  if (v4 == *v6 && v5 == v6[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_101146898(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 + *(type metadata accessor for SharedBeaconRecord(0) + 28);
  v8 = *(v7 + 16);

  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  return result;
}

uint64_t sub_101146900(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v23 - v7;
  v9 = sub_1000BC4D4(&qword_101699BC8, &qword_1013926D8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v23 - v11);
  Transaction.capture()();
  sub_1000D2A70(a1, v12, &qword_101699BC8, &qword_1013926D8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_101385D80;
    v23[1] = v13;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100008C00();
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    os_log(_:dso:log:_:_:)();
  }

  else
  {
    sub_101149EC4(v12, v8, type metadata accessor for SharedBeaconRecord);
    static os_log_type_t.default.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_101385D80;
    sub_101149F2C(v8, v6, type metadata accessor for SharedBeaconRecord);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = sub_100008C00();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    return sub_101149F94(v8, type metadata accessor for SharedBeaconRecord);
  }
}

uint64_t sub_101146C64(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v153 = a3;
  v154 = a2;
  v138 = type metadata accessor for DispatchQoS.QoSClass();
  v137 = *(v138 - 8);
  v4 = *(v137 + 64);
  __chkstk_darwin(v138);
  v136 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for DispatchWorkItemFlags();
  v144 = *(v149 - 8);
  v6 = *(v144 + 64);
  __chkstk_darwin(v149);
  v141 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for DispatchQoS();
  v142 = *(v143 - 8);
  v8 = *(v142 + 64);
  __chkstk_darwin(v143);
  v140 = &v117 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = type metadata accessor for DispatchTime();
  v135 = *(v139 - 8);
  v10 = *(v135 + 64);
  v11 = __chkstk_darwin(v139);
  v133 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v134 = &v117 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v151 = v14;
  v152 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v148 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v145 = &v117 - v19;
  __chkstk_darwin(v18);
  v150 = &v117 - v20;
  v21 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = (&v117 - v23);
  v25 = type metadata accessor for SystemInfo.DeviceLockState();
  v146 = *(v25 - 8);
  isa = v146[8].isa;
  v27 = __chkstk_darwin(v25);
  v29 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v31 = &v117 - v30;
  v32 = type metadata accessor for DispatchPredicate();
  v147 = *(v32 - 8);
  v33 = *(v147 + 8);
  __chkstk_darwin(v32);
  v35 = (&v117 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v37 = *(*(v36 - 8) + 64);
  __chkstk_darwin(v36 - 8);
  v39 = &v117 - v38;

  sub_10053D538(2, 1, a1, &aBlock);
  v131 = v32;
  v128 = v31;
  v129 = v29;
  v130 = 0;
  v40 = v153;
  v125 = v21;
  v126 = v24;
  v124 = v16;
  v132 = v39;
  v41 = aBlock;
  v43 = v157;
  v42 = v158;
  v44 = v159;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_100016590(v42, v44);
  }

  v46 = Strong;
  v121 = v43;
  v122 = v41;
  v127 = v42;
  v154 = v44;
  v47 = type metadata accessor for MessagingMessageContext();
  v48 = *(v47 + 20);
  v49 = (v40 + *(v47 + 24));
  v120 = *v49;
  v51 = *(v49 + 1);
  v50 = *(v49 + 2);
  v119 = v51;
  v118 = v50;
  v52 = v151;
  v53 = v152;
  v54 = v152 + 16;
  v55 = v132;
  v123 = *(v152 + 16);
  v123(v132, v40 + v48, v151);
  (*(v53 + 56))(v55, 0, 1, v52);
  v56 = *(v46 + 168);
  *v35 = v56;
  v57 = v147;
  v58 = v131;
  (*(v147 + 13))(v35, enum case for DispatchPredicate.notOnQueue(_:), v131);
  v59 = v56;
  LOBYTE(v56) = _dispatchPreconditionTest(_:)();
  v61 = *(v57 + 1);
  v60 = v57 + 8;
  v61(v35, v58);
  if ((v56 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v62 = v128;
  static SystemInfo.lockState.getter();
  v63 = v146;
  v64 = v129;
  (v146[13].isa)(v129, enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:), v25);
  sub_100004114(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
  v65 = dispatch thunk of static Equatable.== infix(_:_:)();
  v66 = v63[1].isa;
  v66(v64, v25);
  v66(v62, v25);
  v67 = v149;
  v68 = v150;
  v69 = v148;
  v70 = v130;
  if (v65)
  {
    static os_log_type_t.error.getter();
    v60 = v127;
    if (qword_101695030 == -1)
    {
LABEL_5:
      os_log(_:dso:log:_:_:)();
      type metadata accessor for SPOwnerSessionError(0);
      v155 = 5;
      sub_100032898(_swiftEmptyArrayStorage);
      sub_100004114(&qword_1016961E0, type metadata accessor for SPOwnerSessionError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v71 = v126;
      *v126 = aBlock;
      swift_storeEnumTagMultiPayload();
      sub_10114808C(v71);
      sub_100016590(v60, v154);

      sub_10000B3A8(v71, &qword_10169F358, &qword_1013A0810);
      return sub_10000B3A8(v132, &qword_1016980D0, &unk_10138F3B0);
    }

LABEL_15:
    swift_once();
    goto LABEL_5;
  }

  v73 = *(v46 + 32);
  v116 = v55;
  v74 = v145;
  sub_100543BF0(v122, v121, v127, v154, v119, v118, 0, v145, v116, 0, 1, 0);
  if (v70)
  {
    static os_log_type_t.error.getter();
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_101385D80;
    aBlock = v70;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v76 = String.init<A>(describing:)();
    v78 = v77;
    *(v75 + 56) = &type metadata for String;
    *(v75 + 64) = sub_100008C00();
    *(v75 + 32) = v76;
    *(v75 + 40) = v78;
    os_log(_:dso:log:_:_:)();

    sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v79 = v137;
    v80 = v136;
    v81 = v138;
    (*(v137 + 104))(v136, enum case for DispatchQoS.QoSClass.default(_:), v138);
    v82 = static OS_dispatch_queue.global(qos:)();
    (*(v79 + 8))(v80, v81);
    v83 = swift_allocObject();
    v83[2] = sub_10114808C;
    v83[3] = 0;
    v83[4] = v70;
    v160 = sub_1011482E0;
    v161 = v83;
    aBlock = _NSConcreteStackBlock;
    v157 = 1107296256;
    v158 = sub_100006684;
    v159 = &unk_1016687B0;
    v84 = _Block_copy(&aBlock);
    swift_errorRetain();
    v85 = v140;
    static DispatchQoS.unspecified.getter();
    v155 = _swiftEmptyArrayStorage;
    sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v86 = v141;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    sub_100016590(v127, v154);
    _Block_release(v84);

    (*(v144 + 8))(v86, v67);
    (*(v142 + 8))(v85, v143);
    sub_10000B3A8(v132, &qword_1016980D0, &unk_10138F3B0);
  }

  v87 = v151;
  v88 = v152 + 32;
  v89 = *(v152 + 32);
  v89(v68, v74, v151);
  v147 = v89;
  v90 = sub_1000BC4D4(&qword_10169F320, &qword_1013A0780);
  v91 = *(v90 + 48);
  v92 = *(v90 + 52);
  swift_allocObject();
  v93 = Future.init()();
  v117 = v54;
  v153 = v93;
  v123(v69, v68, v87);
  v94 = *(v88 + 48);
  v95 = (v94 + 24) & ~v94;
  v136 = (v95 + v124);
  v96 = (v95 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  *(v97 + 16) = v46;
  v137 = v95;
  v89((v97 + v95), v69, v87);
  v98 = (v97 + v96);
  *v98 = sub_10114808C;
  v98[1] = 0;

  v99 = v153;
  Future.addSuccess(block:)();

  v100 = swift_allocObject();
  *(v100 + 16) = sub_10114808C;
  *(v100 + 24) = 0;
  v101 = v99;
  Future.addFailure(block:)();

  v146 = *(v46 + 168);
  v123(v69, v68, v87);
  v102 = (v94 + 16) & ~v94;
  v103 = (v124 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = swift_allocObject();
  v145 = v88;
  v147((v104 + v102), v69, v87);
  *(v104 + v103) = v46;
  *(v104 + ((v103 + 15) & 0xFFFFFFFFFFFFFFF8)) = v101;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_10058B568;
  *(v105 + 24) = v104;
  v138 = v104;
  v160 = sub_1000D2FB0;
  v161 = v105;
  aBlock = _NSConcreteStackBlock;
  v157 = 1107296256;
  v158 = sub_10013FE14;
  v159 = &unk_101668878;
  v106 = _Block_copy(&aBlock);

  dispatch_sync(v146, v106);
  _Block_release(v106);
  LOBYTE(v103) = swift_isEscapingClosureAtFileLocation();

  if ((v103 & 1) == 0)
  {
    v131 = *(v46 + 168);
    v107 = v133;
    static DispatchTime.now()();
    v108 = v134;
    + infix(_:_:)();
    v146 = *(v135 + 8);
    (v146)(v107, v139);
    v109 = v148;
    v110 = v151;
    v123(v148, v150, v151);
    v111 = swift_allocObject();
    *(v111 + 16) = v46;
    v147((v111 + v137), v109, v110);
    v160 = sub_101148398;
    v161 = v111;
    aBlock = _NSConcreteStackBlock;
    v157 = 1107296256;
    v158 = sub_100006684;
    v159 = &unk_1016688C8;
    v112 = _Block_copy(&aBlock);

    v113 = v140;
    static DispatchQoS.unspecified.getter();
    v155 = _swiftEmptyArrayStorage;
    sub_100004114(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_10013A8AC();
    v114 = v141;
    v115 = v149;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
    sub_100016590(v127, v154);
    _Block_release(v112);

    (*(v144 + 8))(v114, v115);
    (*(v142 + 8))(v113, v143);
    (v146)(v108, v139);
    (*(v152 + 8))(v150, v110);
    sub_10000B3A8(v132, &qword_1016980D0, &unk_10138F3B0);
  }

  __break(1u);
  return result;
}

uint64_t sub_10114808C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_10169F358, &qword_1013A0810);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = (&v15 - v4);
  sub_1000D2A70(a1, &v15 - v4, &qword_10169F358, &qword_1013A0810);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_10000B3A8(v5, &qword_10169F358, &qword_1013A0810);
  }

  v6 = *v5;
  v7 = static os_log_type_t.error.getter();
  if (qword_101695030 != -1)
  {
    swift_once();
  }

  v8 = qword_10177C378;
  if (os_log_type_enabled(qword_10177C378, v7))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_1000136BC(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v8, v7, "Error sending CompanionBeaconsWithYouResponse: (%s", v9, 0xCu);
    sub_100007BAC(v10);
  }
}

uint64_t sub_10114827C()
{
  v1 = *(type metadata accessor for MessagingMessageContext() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_101146C64(v2, v3, v4);
}

uint64_t sub_1011482EC(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_100544E18(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_101148398()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_100546298(v2, v3);
}

uint64_t sub_1011483FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1016944B0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&qword_1016A4768, &unk_1013B10E0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  if (a3)
  {
    if ((v23 & 1) == 0)
    {
      sub_101135038(v22);
      v9 = sub_101129930(v8);

      v10 = sub_10111EACC(a2, a3, v9);
      goto LABEL_11;
    }
  }

  else if ((v23 & 1) == 0)
  {
    sub_100527E88(v22);
    v14 = sub_101129FC8(v13);

    v15 = type metadata accessor for MessagingMessageContext();
    v16 = sub_100B5E0B8(*(a1 + *(v15 + 24)), *(a1 + *(v15 + 24) + 8), *(a1 + *(v15 + 24) + 16));
    v19 = sub_10111FDB4(v16, v17, v18, v14);

    if (v19)
    {
      v11 = 1;
LABEL_12:

      v12 = 0;
      goto LABEL_13;
    }

    v20 = type metadata accessor for SharedBeaconRecord(0);
    v10 = sub_10111FDB4(*(a4 + *(v20 + 28)), *(a4 + *(v20 + 28) + 8), *(a4 + *(v20 + 28) + 16), v14);
LABEL_11:
    v11 = v10;
    goto LABEL_12;
  }

  v11 = 0;
  v12 = 1;
LABEL_13:
  sub_1001DB7B8(v22, v12);
  return v11 & 1;
}

uint64_t sub_1011485AC(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_1011368C8(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_101148668()
{
  v1 = type metadata accessor for SharedBeaconRecord(0);
  v2 = *(*(v1 - 1) + 80);
  v22 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 16);

  v4 = *(v0 + 24);

  v5 = v0 + ((v2 + 32) & ~v2);
  sub_100016590(*v5, *(v5 + 8));
  v6 = v1[5];
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v5 + v6, v7);
  v9(v5 + v1[6], v7);
  v10 = *(v5 + v1[7] + 16);

  v11 = *(v5 + v1[8] + 8);

  v12 = *(v5 + v1[9] + 8);

  v13 = *(v5 + v1[10] + 8);

  v14 = v1[18];
  v15 = type metadata accessor for Date();
  (*(*(v15 - 8) + 8))(v5 + v14, v15);
  v16 = v1[19];
  v17 = *(v8 + 48);
  if (!v17(v5 + v16, 1, v7))
  {
    v9(v5 + v16, v7);
  }

  v18 = v5 + v1[20];
  v19 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v19 - 8) + 48))(v18, 1, v19))
  {
    v20 = *(v19 + 20);
    if (!v17(v18 + v20, 1, v7))
    {
      v9(v18 + v20, v7);
    }
  }

  return _swift_deallocObject(v0, ((v2 + 32) & ~v2) + v22);
}

uint64_t sub_1011488EC(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_101137AEC(a1, v4, v5, v6);
}

uint64_t sub_101148994()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = type metadata accessor for SharedBeaconRecord(0);
  v29 = *(*(v7 - 1) + 80);
  v28 = *(*(v7 - 1) + 64);
  v8 = *(v0 + 16);

  v9 = *(v2 + 8);
  v9(v0 + v3, v1);
  v10 = *(v0 + v4);

  v11 = *(v0 + v5);

  v12 = *(v0 + v6);
  v13 = v2;

  v14 = (v29 + v6 + 8) & ~v29;
  v15 = v0 + v14;
  sub_100016590(*v15, *(v15 + 8));
  v9(v0 + v14 + v7[5], v1);
  v9(v0 + v14 + v7[6], v1);
  v16 = *(v0 + v14 + v7[7] + 16);

  v17 = *(v0 + v14 + v7[8] + 8);

  v18 = *(v0 + v14 + v7[9] + 8);

  v19 = *(v0 + v14 + v7[10] + 8);

  v20 = v7[18];
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 8))(v0 + v14 + v20, v21);
  v22 = v7[19];
  v23 = *(v13 + 48);
  if (!v23(v0 + v14 + v22, 1, v1))
  {
    v9(v15 + v22, v1);
  }

  v24 = v15 + v7[20];
  v25 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v26 = *(v25 + 20);
    if (!v23(v24 + v26, 1, v1))
    {
      v9(v24 + v26, v1);
    }
  }

  return _swift_deallocObject(v0, v14 + v28);
}

uint64_t sub_101148CBC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v10 = *(v2 + v6);
  v11 = *(v2 + 16);
  v12 = *(v2 + v7);
  v13 = *(v2 + v8);
  v14 = v2 + ((*(v9 + 80) + v8 + 8) & ~*(v9 + 80));

  return a2(a1, v11, v2 + v5, v10, v12, v13, v14);
}

uint64_t sub_101148DD8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

void sub_101148F58(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10113E168(a1, v8, v9, v1 + v4, v1 + v7, v10);
}

uint64_t sub_10114910C()
{
  v1 = type metadata accessor for MessagingMessageContext();
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = v0 + v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v0 + v2, 1, v5);
  v8 = *(v6 + 8);
  if (!v7)
  {
    v8(v0 + v2, v5);
  }

  v8(v4 + v1[5], v5);
  v9 = *(v4 + v1[6] + 16);

  v10 = *(v4 + v1[7] + 16);

  v11 = *(v4 + v1[8] + 8);

  v12 = v1[11];
  v13 = type metadata accessor for Date();
  (*(*(v13 - 8) + 8))(v4 + v12, v13);
  v14 = *(v4 + v1[12] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10114932C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v7 = *(v0 + v4 + 8);

  return _swift_deallocObject(v0, v4 + 16);
}

uint64_t sub_101149428(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v6, v7, v2 + v5, v9, v10);
}

uint64_t sub_1011494E0()
{
  v1 = type metadata accessor for ShareRecord();
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v16 = *(*(v1 - 1) + 64);
  v3 = *(v0 + 24);

  v4 = v0 + v2;
  sub_100016590(*(v0 + v2), *(v0 + v2 + 8));
  v5 = v1[5];
  v6 = type metadata accessor for UUID();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v2 + v5, v6);
  v7(v0 + v2 + v1[6], v6);
  v8 = v1[7];
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v2 + v8, v9);
  v12 = v1[8];
  if (!(*(v10 + 48))(v0 + v2 + v12, 1, v9))
  {
    v11(v4 + v12, v9);
  }

  v13 = *(v4 + v1[9] + 16);

  v14 = *(v4 + v1[10] + 8);

  return _swift_deallocObject(v0, v2 + v16);
}

uint64_t sub_1011496BC(char a1)
{
  v3 = *(type metadata accessor for ShareRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + v5);
  v10 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return sub_101140F80(a1, v8, v1 + v4, v9, v1 + v7, v11, v12);
}

uint64_t sub_1011497D4(char a1)
{
  v3 = *(type metadata accessor for ShareRecord() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for UUID() - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  v10 = (v9 + v7 + v8) & ~v7;
  v11 = *(v1 + v5);
  v12 = *(v1 + 16);
  v13 = (v1 + ((v9 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  return sub_10113D5E0(a1, v12, v1 + v4, v11, v1 + v8, v1 + v10, v14, v15);
}

uint64_t sub_1011498FC(uint64_t a1)
{
  v3 = *(type metadata accessor for SharedBeaconRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_101141B80(a1, v4);
}

uint64_t sub_1011499C4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 24) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_101141F0C();
}

uint64_t sub_101149AC8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v3, v1);
  v8 = *(v0 + v4);

  v9 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8);
}

uint64_t sub_101149BC0(uint64_t (*a1)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);

  return a1(v7, v8, v1 + v3, v5, v6);
}

uint64_t sub_101149CC8(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(a1, v6, v7, v8);
}

uint64_t sub_101149D54(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v3 + v7);
  v9 = (v3 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, v3 + v6, v8, v10, v11);
}

uint64_t sub_101149E18()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4 + 8);
  v7 = *(v0 + v4 + 16);
  v8 = *(v0 + ((v4 + 31) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + v4);

  return sub_1011440C0(v0 + v2, v5, v9, v6, v7, v8);
}

uint64_t sub_101149EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_101149F2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_101149F94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10114A090@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v11, v11[3]);
  v6 = dispatch thunk of BinaryDecodingContaining.decode()();
  if (v2)
  {
    sub_100007BAC(v11);
    return sub_100007BAC(a1);
  }

  else
  {
    v9 = v6;
    v10 = v7;
    sub_100007BAC(v11);
    result = sub_100007BAC(a1);
    *a2 = v9;
    a2[1] = v10;
  }

  return result;
}

unint64_t sub_10114A150(uint64_t a1)
{
  *(a1 + 8) = sub_10114A180();
  result = sub_10064D520();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10114A180()
{
  result = qword_1016C9360;
  if (!qword_1016C9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C9360);
  }

  return result;
}

uint64_t sub_10114A1D4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 112);
  if (!*(v5 + 16))
  {
    return 0;
  }

  v6 = sub_100771D58(a1, a2);
  if ((v7 & 1) == 0)
  {

    return 0;
  }

  sub_1010100EC(*(v5 + 56) + 48 * v6, &v78);

  v80 = v78;
  v81[0] = *v79;
  *(v81 + 9) = *&v79[9];
  sub_1010100EC(&v80, &v78);
  if (v79[24] > 1u)
  {
    if (v79[24] != 2)
    {
      sub_10000A748(&v78, v75);
      v27 = v76;
      v28 = sub_1000035D0(v75, v76);
      v29 = *(*(v27 - 8) + 64);
      __chkstk_darwin(v28);
      (*(v31 + 16))(&v71 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
      sub_1000DFA84();
      BinaryFloatingPoint.init<A>(_:)();
      v32.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
LABEL_47:
      isa = v32.super.super.isa;
      sub_10118B5A0(&v80);
      sub_100007BAC(v75);
      return isa;
    }

    sub_10000A748(&v78, v75);
    v11 = v76;
    v12 = v77;
    v13 = sub_1000035D0(v75, v76);
    v14 = *(v11 - 8);
    v15 = *(v14 + 64);
    __chkstk_darwin(v13);
    v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v14 + 16))(v16);
    if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
    {
      v74 = 0x8000000000000000;
      if (dispatch thunk of static BinaryInteger.isSigned.getter())
      {
        v17 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if (v17 < 64)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v33 = dispatch thunk of static BinaryInteger.isSigned.getter();
        v17 = dispatch thunk of BinaryInteger.bitWidth.getter();
        if ((v33 & 1) == 0)
        {
          if (v17 >= 64)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

        if (v17 <= 64)
        {
          v37 = *(v12[3] + 16);
          AssociatedTypeWitness = swift_getAssociatedTypeWitness();
          v73 = &v71;
          v39 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
          __chkstk_darwin(AssociatedTypeWitness);
          swift_getAssociatedConformanceWitness();
          v40 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          v72 = &v71;
          __chkstk_darwin(v40);
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v41 = *(v12[4] + 8);
          v42 = dispatch thunk of static Comparable.< infix(_:_:)();
          v36 = *(v14 + 8);
          v36(&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
          if ((v42 & 1) == 0)
          {
LABEL_23:
            dispatch thunk of BinaryInteger._lowWord.getter();
            goto LABEL_24;
          }

LABEL_19:
          v36(&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
LABEL_29:
          v48 = v76;
          v49 = v77;
          v50 = sub_1000035D0(v75, v76);
          v51 = *(v48 - 8);
          v52 = *(v51 + 64);
          __chkstk_darwin(v50);
          v53 = (v52 + 15) & 0xFFFFFFFFFFFFFFF0;
          (*(v51 + 16))(&v71 - v53);
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v54 = *(v49[3] + 16);
            v55 = swift_getAssociatedTypeWitness();
            v71 = &v71;
            v56 = (*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
            __chkstk_darwin(v55);
            v73 = v49;
            swift_getAssociatedConformanceWitness();
            v57 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
            v72 = &v71;
            __chkstk_darwin(v57);
            v49 = v73;
            dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
            v58 = *(v49[4] + 8);
            v59 = dispatch thunk of static Comparable.>= infix(_:_:)();
            result = (*(v51 + 8))(&v71 - v53, v48);
            if ((v59 & 1) == 0)
            {
              __break(1u);
              return result;
            }
          }

          if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 63)
          {
            goto LABEL_46;
          }

          v74 = -1;
          v60 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v61 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v60)
          {
            if (v61 <= 64)
            {
              v62 = *(v49[3] + 16);
              v63 = swift_getAssociatedTypeWitness();
              v73 = &v71;
              v64 = (*(*(v63 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              __chkstk_darwin(v63);
              swift_getAssociatedConformanceWitness();
              v65 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
              __chkstk_darwin(v65);
              dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
              v66 = *(v49[4] + 8);
              v67 = dispatch thunk of static Comparable.> infix(_:_:)();
              (*(v51 + 8))(&v71 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v48);
              if ((v67 & 1) == 0)
              {
                goto LABEL_46;
              }

              goto LABEL_45;
            }
          }

          else if (v61 < 65)
          {
            goto LABEL_45;
          }

          __chkstk_darwin(v61);
          sub_10118F230();
          dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
          v68 = *(v49[4] + 8);
          v69 = dispatch thunk of static Comparable.< infix(_:_:)();
          (*(v51 + 8))(&v71 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v48);
          if ((v69 & 1) == 0)
          {
LABEL_46:
            dispatch thunk of BinaryInteger._lowWord.getter();
            (*(v51 + 8))(&v71 - v53, v48);
            v32.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
            goto LABEL_47;
          }

          __break(1u);
LABEL_45:
          dispatch thunk of BinaryInteger._lowWord.getter();
          goto LABEL_46;
        }
      }

      v73 = &v71;
      __chkstk_darwin(v17);
      sub_1000DF9C0();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v34 = *(v12[4] + 8);
      v35 = dispatch thunk of static Comparable.< infix(_:_:)();
      v36 = *(v14 + 8);
      v36(&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      if (v35)
      {
        goto LABEL_19;
      }
    }

LABEL_24:
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
    {
      goto LABEL_41;
    }

    v74 = 0x7FFFFFFFFFFFFFFFLL;
    v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v43)
    {
      if (v44 > 64)
      {
        goto LABEL_27;
      }
    }

    else if (v44 > 63)
    {
LABEL_27:
      __chkstk_darwin(v44);
      sub_1000DF9C0();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v45 = *(v12[4] + 8);
      v46 = dispatch thunk of static Comparable.< infix(_:_:)();
      v47 = *(v14 + 8);
      v47(&v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
      if (v46)
      {
        v47(v16, v11);
        goto LABEL_29;
      }

LABEL_41:
      dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v14 + 8))(v16, v11);
      v32.super.super.isa = Int64._bridgeToObjectiveC()().super.super.isa;
      goto LABEL_47;
    }

    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_41;
  }

  if (v79[24])
  {
    sub_10000A748(&v78, v75);
    v18 = v76;
    v19 = v77;
    v20 = sub_1000035D0(v75, v76);
    v21 = *(*(v18 - 8) + 64);
    __chkstk_darwin(v20);
    (*(v23 + 16))(&v71 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    v24 = v19[5];
    v25 = *(*(v19[1] + 8) + 8);
    String.init<A>(_:)();
    v26 = String._bridgeToObjectiveC()();

    sub_10118B5A0(&v80);
    sub_100007BAC(v75);
    return v26;
  }

  else
  {
    v8 = v78;
    sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
    v9 = NSNumber.init(BOOLeanLiteral:)(v8).super.super.isa;
    sub_10118B5A0(&v80);
    return v9;
  }
}

void sub_10114AED8(void *a1, unint64_t a2, void *a3)
{
  v6 = v3;
  if (qword_101695280 != -1)
  {
    goto LABEL_147;
  }

  while (1)
  {
    v8 = a1[15];
    object = a1[16];
    if (sub_10111EACC(v8, object, qword_10177C6E8))
    {
      break;
    }

    v246 = v6;
    a2 = sub_100908768(a2);
    sub_10000B3A8(a3, &qword_101699340, &qword_1013918A0);
    v6 = a2 + 64;
    v15 = 1 << *(a2 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a2 + 64);
    swift_beginAccess();
    v18 = 0;
    v19 = (v15 + 63) >> 6;
    *&v20 = 138412290;
    v245 = v20;
    v248 = a1;
    v247 = a2;
    while (v17)
    {
LABEL_15:
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v23 = (v18 << 10) | (16 * v22);
      v24 = *(a2 + 56);
      v25 = (*(a2 + 48) + v23);
      v26 = v25[1];
      v251 = *v25;
      v27 = (v24 + v23);
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = a1[14];
      v31 = *(v30 + 16);
      v252 = v26;

      v250 = v28;
      sub_10090C56C(v28, v29);
      v249 = v29;
      if (v31)
      {

        v32 = sub_100771D58(v251, v252);
        if ((v33 & 1) == 0)
        {

          goto LABEL_21;
        }

        sub_1010100EC(*(v30 + 56) + 48 * v32, &v259);

        if (v29 <= 1)
        {
          if (v29)
          {
            sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
            v35 = NSNumber.init(BOOLeanLiteral:)(v250 & 1).super.super.isa;
          }

          else
          {
            v34 = v250;
            sub_10090C56C(v250, 0);
            v35 = v34;
          }

          v99 = v35;
          goto LABEL_102;
        }

        if (v29 != 2)
        {
          sub_1010100EC(&v259, &v254);
          if (v255[24] != 3)
          {
LABEL_145:

            sub_10118B5A0(&v254);
            sub_10118B5D0();
            swift_allocError();
            swift_willThrow();

            sub_10118B5A0(&v259);
            return;
          }

          v100 = v250;
          sub_10000A748(&v254._countAndFlagsBits, v256);
          v101 = v257;
          v102 = sub_1000035D0(v256, v257);
          v103 = *(*(v101 - 8) + 64);
          __chkstk_darwin(v102);
          (*(v105 + 16))(v239 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
          sub_1000DFA84();
          BinaryFloatingPoint.init<A>(_:)();
          a1 = v248;
          v99 = [objc_allocWithZone(NSNumber) initWithDouble:*&v254._countAndFlagsBits + *&v100];
          sub_100007BAC(v256);
          goto LABEL_102;
        }

        sub_1010100EC(&v259, &v254);
        if (v255[24] != 2)
        {
          goto LABEL_145;
        }

        sub_10000A748(&v254._countAndFlagsBits, v256);
        v82 = v257;
        v81 = v258;
        v83 = sub_1000035D0(v256, v257);
        v243 = v239;
        v84 = *(*(v82 - 8) + 64);
        __chkstk_darwin(v83);
        v241 = v85;
        v86 = v239 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
        v244 = v87;
        (*(v87 + 16))(v86);
        if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
        {
          v254._countAndFlagsBits = 0x8000000000000000;
          if (dispatch thunk of static BinaryInteger.isSigned.getter())
          {
            v88 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v88 < 64)
            {
              goto LABEL_89;
            }

            v242 = v81;
            v240 = v239;
            __chkstk_darwin(v88);
            v90 = v239 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v91 = *(*(v242 + 32) + 8);
            v92 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v244 + 8))(v90, v82);
            v81 = v242;
            if (v92)
            {
              goto LABEL_163;
            }
          }

          else
          {
            LODWORD(v240) = dispatch thunk of static BinaryInteger.isSigned.getter();
            v133 = dispatch thunk of BinaryInteger.bitWidth.getter();
            if (v240)
            {
              v242 = v81;
              if (v133 <= 64)
              {
                v240 = *(*(v81 + 24) + 16);
                AssociatedTypeWitness = swift_getAssociatedTypeWitness();
                v239[2] = v239;
                v140 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
                __chkstk_darwin(AssociatedTypeWitness);
                v239[0] = v239 - v141;
                swift_getAssociatedConformanceWitness();
                v142 = dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
                v239[1] = v239;
                __chkstk_darwin(v142);
                v144 = v239 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
                dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
                v145 = *(*(v242 + 32) + 8);
                v146 = dispatch thunk of static Comparable.< infix(_:_:)();
                (*(v244 + 8))(v144, v82);
                if (v146)
                {
                  goto LABEL_163;
                }

                v81 = v242;
LABEL_89:
                dispatch thunk of BinaryInteger._lowWord.getter();
                goto LABEL_90;
              }

              v240 = v239;
              __chkstk_darwin(v133);
              v135 = v239 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
              sub_1000DF9C0();
              dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
              v136 = *(*(v242 + 32) + 8);
              v137 = dispatch thunk of static Comparable.< infix(_:_:)();
              v138 = v135;
              v81 = v242;
              (*(v244 + 8))(v138, v82);
              if (v137)
              {
                goto LABEL_163;
              }
            }

            else if (v133 < 64)
            {
              goto LABEL_89;
            }
          }
        }

LABEL_90:
        if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
        {
          v254._countAndFlagsBits = 0x7FFFFFFFFFFFFFFFLL;
          v147 = dispatch thunk of static BinaryInteger.isSigned.getter();
          v148 = v81;
          v149 = v147;
          v242 = v148;
          v150 = dispatch thunk of BinaryInteger.bitWidth.getter();
          if (v149)
          {
            if (v150 > 64)
            {
              goto LABEL_93;
            }
          }

          else if (v150 >= 64)
          {
LABEL_93:
            v240 = v239;
            __chkstk_darwin(v150);
            v241 = v239 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
            sub_1000DF9C0();
            v152 = v242;
            dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
            v153 = *(*(v152 + 32) + 8);
            v154 = dispatch thunk of static Comparable.< infix(_:_:)();
            (*(v244 + 8))(v241, v82);
            if (v154)
            {
              goto LABEL_160;
            }

            goto LABEL_100;
          }

          dispatch thunk of BinaryInteger._lowWord.getter();
        }

LABEL_100:
        v155 = dispatch thunk of BinaryInteger._lowWord.getter();
        (*(v244 + 8))(v86, v82);
        v50 = __OFADD__(v155, v250);
        v156 = &v250[v155];
        if (v50)
        {
          goto LABEL_154;
        }

        v99 = [objc_allocWithZone(NSNumber) initWithLongLong:v156];
        sub_100007BAC(v256);
        a1 = v248;
LABEL_102:
        objc_opt_self();
        v157 = swift_dynamicCastObjCClass();
        if (v157)
        {
          v158 = v157;
          v159 = v99;
          v160 = String.init(_:)(v158);
          v161 = a1;
          v162 = sub_1000DF96C();
          swift_beginAccess();
          v254 = v160;
          *&v255[8] = &type metadata for String;
          *&v255[16] = v162;
          v255[24] = 1;
          v163 = v161[14];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v253 = v161[14];
          v165 = v253;
          v161[14] = 0x8000000000000000;
          v166 = sub_100771D58(v251, v252);
          v168 = v165[2];
          v169 = (v167 & 1) == 0;
          v50 = __OFADD__(v168, v169);
          v170 = v168 + v169;
          if (v50)
          {
            goto LABEL_151;
          }

          v171 = v167;
          if (v165[3] >= v170)
          {
            a2 = v247;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v234 = v166;
              sub_1010050E8();
              v166 = v234;
            }
          }

          else
          {
            sub_100FE65C4(v170, isUniquelyReferenced_nonNull_native);
            v166 = sub_100771D58(v251, v252);
            a2 = v247;
            if ((v171 & 1) != (v172 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v248;
          if (v171)
          {
            v192 = v166;

            a3 = v253;
            sub_10118B568(&v254, v253[7] + 48 * v192);
          }

          else
          {
            a3 = v253;
            v253[(v166 >> 6) + 8] |= 1 << v166;
            v193 = (a3[6] + 16 * v166);
            v194 = v252;
            *v193 = v251;
            v193[1] = v194;
            v195 = (a3[7] + 48 * v166);
            v196 = *&v255[9];
            v197 = *v255;
            *v195 = v254;
            v195[1] = v197;
            *(&v195[1]._object + 1) = v196;
            v198 = a3[2];
            v50 = __OFADD__(v198, 1);
            v199 = v198 + 1;
            if (v50)
            {
              goto LABEL_153;
            }

            a3[2] = v199;
          }

          v200 = v249;
          a1[14] = a3;
          swift_endAccess();
          sub_101010148(v250, v200);

          goto LABEL_120;
        }

        objc_opt_self();
        v173 = swift_dynamicCastObjCClass();
        if (v173)
        {
          v174 = v173;
          [v173 doubleValue];
          v176 = v175;
          v177 = [v174 integerValue];
          if (v176 == v177)
          {
            v178 = v177;
            v179 = sub_1000DFAD8();
            swift_beginAccess();
            v254._countAndFlagsBits = v178;
            *&v255[8] = &type metadata for Int;
            *&v255[16] = v179;
            v255[24] = 2;
            v180 = a1[14];
            v181 = swift_isUniquelyReferenced_nonNull_native();
            v182 = a1;
            v183 = v181;
            v253 = v182[14];
            v184 = v253;
            v182[14] = 0x8000000000000000;
            v185 = sub_100771D58(v251, v252);
            v187 = v184[2];
            v188 = (v186 & 1) == 0;
            v50 = __OFADD__(v187, v188);
            v189 = v187 + v188;
            if (v50)
            {
              goto LABEL_157;
            }

            v190 = v186;
            if (v184[3] >= v189)
            {
              if ((v183 & 1) == 0)
              {
                v237 = v185;
                sub_1010050E8();
                v185 = v237;
              }
            }

            else
            {
              sub_100FE65C4(v189, v183);
              v185 = sub_100771D58(v251, v252);
              if ((v190 & 1) != (v191 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v248;
            if ((v190 & 1) == 0)
            {
              a3 = v253;
              v253[(v185 >> 6) + 8] |= 1 << v185;
              v218 = (a3[6] + 16 * v185);
              v219 = v252;
              *v218 = v251;
              v218[1] = v219;
              v220 = (a3[7] + 48 * v185);
              v221 = *&v255[9];
              v222 = *v255;
              *v220 = v254;
              v220[1] = v222;
              *(&v220[1]._object + 1) = v221;
              v223 = a3[2];
              v50 = __OFADD__(v223, 1);
              v224 = v223 + 1;
              if (v50)
              {
                goto LABEL_161;
              }

              goto LABEL_141;
            }

LABEL_139:
            v225 = v185;

            a3 = v253;
            sub_10118B568(&v254, v253[7] + 48 * v225);
          }

          else
          {
            v206 = sub_1000DFA84();
            swift_beginAccess();
            *&v254._countAndFlagsBits = v176;
            *&v255[8] = &type metadata for Double;
            *&v255[16] = v206;
            v255[24] = 3;
            v207 = a1[14];
            v208 = swift_isUniquelyReferenced_nonNull_native();
            v209 = a1;
            v210 = v208;
            v253 = v209[14];
            v211 = v253;
            v209[14] = 0x8000000000000000;
            v185 = sub_100771D58(v251, v252);
            v213 = v211[2];
            v214 = (v212 & 1) == 0;
            v50 = __OFADD__(v213, v214);
            v215 = v213 + v214;
            if (v50)
            {
              goto LABEL_159;
            }

            v216 = v212;
            if (v211[3] >= v215)
            {
              if ((v210 & 1) == 0)
              {
                v238 = v185;
                sub_1010050E8();
                v185 = v238;
              }
            }

            else
            {
              sub_100FE65C4(v215, v210);
              v185 = sub_100771D58(v251, v252);
              if ((v216 & 1) != (v217 & 1))
              {
                goto LABEL_164;
              }
            }

            a1 = v248;
            if (v216)
            {
              goto LABEL_139;
            }

            a3 = v253;
            v253[(v185 >> 6) + 8] |= 1 << v185;
            v226 = (a3[6] + 16 * v185);
            v227 = v252;
            *v226 = v251;
            v226[1] = v227;
            v228 = (a3[7] + 48 * v185);
            v229 = *&v255[9];
            v230 = *v255;
            *v228 = v254;
            v228[1] = v230;
            *(&v228[1]._object + 1) = v229;
            v231 = a3[2];
            v50 = __OFADD__(v231, 1);
            v224 = v231 + 1;
            if (v50)
            {
              goto LABEL_162;
            }

LABEL_141:
            a3[2] = v224;
          }

          v232 = v249;
          a1[14] = a3;
          swift_endAccess();

          sub_101010148(v250, v232);
          goto LABEL_143;
        }

        if (qword_101695278 != -1)
        {
          swift_once();
        }

        v201 = type metadata accessor for Logger();
        sub_1000076D4(v201, qword_10177C6D0);
        v202 = v99;
        v159 = Logger.logObject.getter();
        a3 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v159, a3))
        {

          sub_101010148(v250, v249);
LABEL_120:

          goto LABEL_143;
        }

        v203 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        *v203 = v245;
        *(v203 + 4) = v202;
        *v204 = v202;
        v205 = v202;
        _os_log_impl(&_mh_execute_header, v159, a3, "Unsupported value type: %@!", v203, 0xCu);
        sub_10000B3A8(v204, &qword_10169BB30, &unk_10138B3C0);
        a1 = v248;

        a2 = v247;

        sub_101010148(v250, v249);
LABEL_143:
        sub_10118B5A0(&v259);
      }

      else
      {
LABEL_21:
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v37 = objc_allocWithZone(NSNumber);
            isa = [v37 initWithLongLong:v250];
          }

          else
          {
            isa = [objc_allocWithZone(NSNumber) initWithDouble:*&v250];
          }
        }

        else if (v29)
        {
          sub_100008BB8(0, &qword_1016AD650, NSNumber_ptr);
          isa = NSNumber.init(BOOLeanLiteral:)(v250 & 1).super.super.isa;
        }

        else
        {
          isa = v250;
        }

        v38 = isa;
        objc_opt_self();
        v39 = swift_dynamicCastObjCClass();
        if (v39)
        {
          v40 = v39;
          v8 = v38;
          v41 = String.init(_:)(v40);
          object = v41._object;
          v42 = sub_1000DF96C();
          swift_beginAccess();
          v259 = v41;
          *&v260[8] = &type metadata for String;
          *&v260[16] = v42;
          v260[24] = 1;
          v43 = a1[14];
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v256[0] = a1[14];
          v45 = v256[0];
          a1[14] = 0x8000000000000000;
          v46 = sub_100771D58(v251, v252);
          v48 = *(v45 + 16);
          v49 = (v47 & 1) == 0;
          v50 = __OFADD__(v48, v49);
          v51 = v48 + v49;
          if (v50)
          {
            __break(1u);
            goto LABEL_149;
          }

          v52 = v47;
          if (*(v45 + 24) >= v51)
          {
            if ((v44 & 1) == 0)
            {
              v233 = v46;
              sub_1010050E8();
              v46 = v233;
            }
          }

          else
          {
            sub_100FE65C4(v51, v44);
            v46 = sub_100771D58(v251, v252);
            if ((v52 & 1) != (v53 & 1))
            {
              goto LABEL_164;
            }
          }

          a1 = v248;
          a2 = v247;
          if (v52)
          {
            v73 = v46;

            a3 = v256[0];
            sub_10118B568(&v259, *(v256[0] + 56) + 48 * v73);
          }

          else
          {
            a3 = v256[0];
            *(v256[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
            v74 = (a3[6] + 16 * v46);
            v75 = v252;
            *v74 = v251;
            v74[1] = v75;
            v76 = (a3[7] + 48 * v46);
            v77 = *&v260[9];
            v78 = *v260;
            *v76 = v259;
            v76[1] = v78;
            *(&v76[1]._object + 1) = v77;
            v79 = a3[2];
            v50 = __OFADD__(v79, 1);
            v80 = v79 + 1;
            if (v50)
            {
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return;
            }

            a3[2] = v80;
          }

          a1[14] = a3;
          swift_endAccess();

LABEL_46:
          sub_101010148(v250, v249);
        }

        else
        {
          objc_opt_self();
          v54 = swift_dynamicCastObjCClass();
          if (v54)
          {
            v55 = v54;
            [v54 doubleValue];
            v57 = v56;
            v58 = [v55 integerValue];
            if (v57 == v58)
            {
              v59 = v58;
              v60 = sub_1000DFAD8();
              swift_beginAccess();
              v259._countAndFlagsBits = v59;
              *&v260[8] = &type metadata for Int;
              *&v260[16] = v60;
              v260[24] = 2;
              v61 = a1[14];
              v62 = swift_isUniquelyReferenced_nonNull_native();
              v63 = a1;
              v64 = v62;
              v256[0] = v63[14];
              v65 = v256[0];
              v63[14] = 0x8000000000000000;
              v66 = sub_100771D58(v251, v252);
              v68 = *(v65 + 16);
              v69 = (v67 & 1) == 0;
              v50 = __OFADD__(v68, v69);
              v70 = v68 + v69;
              if (v50)
              {
                goto LABEL_152;
              }

              v71 = v67;
              if (*(v65 + 24) >= v70)
              {
                if ((v64 & 1) == 0)
                {
                  v235 = v66;
                  sub_1010050E8();
                  v66 = v235;
                }
              }

              else
              {
                sub_100FE65C4(v70, v64);
                v66 = sub_100771D58(v251, v252);
                if ((v71 & 1) != (v72 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v248;
              if (v71)
              {
                goto LABEL_77;
              }

              a3 = v256[0];
              *(v256[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
              v118 = (a3[6] + 16 * v66);
              v119 = v252;
              *v118 = v251;
              v118[1] = v119;
              v120 = (a3[7] + 48 * v66);
              v121 = *&v260[9];
              v122 = *v260;
              *v120 = v259;
              v120[1] = v122;
              *(&v120[1]._object + 1) = v121;
              v123 = a3[2];
              v50 = __OFADD__(v123, 1);
              v124 = v123 + 1;
              if (v50)
              {
                goto LABEL_156;
              }
            }

            else
            {
              v106 = sub_1000DFA84();
              swift_beginAccess();
              *&v259._countAndFlagsBits = v57;
              *&v260[8] = &type metadata for Double;
              *&v260[16] = v106;
              v260[24] = 3;
              v107 = a1[14];
              v108 = swift_isUniquelyReferenced_nonNull_native();
              v109 = a1;
              v110 = v108;
              v256[0] = v109[14];
              v111 = v256[0];
              v109[14] = 0x8000000000000000;
              v66 = sub_100771D58(v251, v252);
              v113 = *(v111 + 16);
              v114 = (v112 & 1) == 0;
              v50 = __OFADD__(v113, v114);
              v115 = v113 + v114;
              if (v50)
              {
                goto LABEL_155;
              }

              v116 = v112;
              if (*(v111 + 24) >= v115)
              {
                if ((v110 & 1) == 0)
                {
                  v236 = v66;
                  sub_1010050E8();
                  v66 = v236;
                }
              }

              else
              {
                sub_100FE65C4(v115, v110);
                v66 = sub_100771D58(v251, v252);
                if ((v116 & 1) != (v117 & 1))
                {
                  goto LABEL_164;
                }
              }

              a1 = v248;
              if (v116)
              {
LABEL_77:
                v125 = v66;

                a3 = v256[0];
                sub_10118B568(&v259, *(v256[0] + 56) + 48 * v125);
                goto LABEL_80;
              }

              a3 = v256[0];
              *(v256[0] + 8 * (v66 >> 6) + 64) |= 1 << v66;
              v126 = (a3[6] + 16 * v66);
              v127 = v252;
              *v126 = v251;
              v126[1] = v127;
              v128 = (a3[7] + 48 * v66);
              v129 = *&v260[9];
              v130 = *v260;
              *v128 = v259;
              v128[1] = v130;
              *(&v128[1]._object + 1) = v129;
              v131 = a3[2];
              v50 = __OFADD__(v131, 1);
              v124 = v131 + 1;
              if (v50)
              {
                goto LABEL_158;
              }
            }

            a3[2] = v124;
LABEL_80:
            v132 = v249;
            a1[14] = a3;
            swift_endAccess();

            sub_101010148(v250, v132);
          }

          else
          {

            if (qword_101695278 != -1)
            {
              swift_once();
            }

            v93 = type metadata accessor for Logger();
            sub_1000076D4(v93, qword_10177C6D0);
            v94 = v38;
            v95 = Logger.logObject.getter();
            a3 = static os_log_type_t.fault.getter();

            if (os_log_type_enabled(v95, a3))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              *v96 = v245;
              *(v96 + 4) = v94;
              *v97 = v94;
              v98 = v94;
              _os_log_impl(&_mh_execute_header, v95, a3, "Unsupported value type: %@!", v96, 0xCu);
              sub_10000B3A8(v97, &qword_10169BB30, &unk_10138B3C0);
              a1 = v248;

              a2 = v247;

              goto LABEL_46;
            }

            sub_101010148(v250, v249);
          }
        }
      }
    }

    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v19)
      {

        return;
      }

      v17 = *(v6 + 8 * v21);
      ++v18;
      if (v17)
      {
        v18 = v21;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_147:
    swift_once();
  }

  if (qword_101695278 != -1)
  {
LABEL_149:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_10177C6D0);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v259._countAndFlagsBits = v14;
    *v13 = 136446210;
    *(v13 + 4) = sub_1000136BC(v8, object, &v259._countAndFlagsBits);
    _os_log_impl(&_mh_execute_header, v11, v12, "AnalyticsEvent not computing disallowed analytics event %{public}s.", v13, 0xCu);
    sub_100007BAC(v14);
  }
}