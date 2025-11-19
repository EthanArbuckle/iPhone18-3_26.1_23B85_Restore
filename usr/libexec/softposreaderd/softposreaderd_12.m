void sub_10011AAAC(uint64_t a1)
{
  v84 = type metadata accessor for DispatchTime();
  v3 = *(v84 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v84);
  v88 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v87 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v86 = &v72 - v10;
  v85 = type metadata accessor for StopWatch();
  v89 = *(v85 - 8);
  v11 = *(v89 + 64);
  v12 = __chkstk_darwin(v85);
  v79 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v91 = &v72 - v15;
  __chkstk_darwin(v14);
  v17 = &v72 - v16;
  v83 = *(a1 + 16);
  if (!v83)
  {
    return;
  }

  v18 = 0;
  v19 = *(v1 + 56);
  v20 = (v3 + 56);
  v81 = (v3 + 32);
  v82 = a1 + 32;
  v80 = 0x8000000100345AF0;
  while (1)
  {
    v22 = *(v82 + v18);
    v90 = v18 + 1;
    os_unfair_lock_lock((v19 + 32));
    v23 = *v20;
    v24 = v86;
    v25 = v84;
    (*v20)(v86, 1, 1, v84);
    v26 = v87;
    v23(v87, 1, 1, v25);
    v23(v17, 1, 1, v25);
    v27 = *(v85 + 20);
    v23(&v17[v27], 1, 1, v25);
    sub_10001A178(v24, v17);
    sub_10001A178(v26, &v17[v27]);
    v28 = v88;
    static DispatchTime.now()();
    sub_10000BD44(v17, &qword_10039E290, &unk_1002C37C0);
    (*v81)(v17, v28, v25);
    v23(v17, 0, 1, v25);
    v29 = 0x6D69546C61746F74;
    if (v22 != 2)
    {
      v29 = 0x54676E696C6C6F70;
    }

    v30 = 0xE900000000000065;
    if (v22 != 2)
    {
      v30 = 0xEE00534156656D69;
    }

    v31 = 0x656D695464616572;
    if (!v22)
    {
      v31 = 0xD000000000000012;
    }

    v32 = v80;
    if (v22)
    {
      v32 = 0xEB00000000564D45;
    }

    v33 = v22 <= 1;
    if (v22 <= 1)
    {
      v34 = v31;
    }

    else
    {
      v34 = v29;
    }

    if (v33)
    {
      v35 = v32;
    }

    else
    {
      v35 = v30;
    }

    sub_10001A1E8(v17, v91);
    v36 = *(v19 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v92 = *(v19 + 24);
    v38 = v92;
    *(v19 + 24) = 0x8000000000000000;
    v39 = v34;
    v41 = sub_1000F5A28(v34, v35);
    v42 = *(v38 + 16);
    v43 = (v40 & 1) == 0;
    v44 = v42 + v43;
    if (__OFADD__(v42, v43))
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v45 = v40;
    if (*(v38 + 24) >= v44)
    {
      break;
    }

    sub_10017D288(v44, isUniquelyReferenced_nonNull_native);
    v46 = v92;
    v47 = sub_1000F5A28(v39, v35);
    if ((v45 & 1) != (v48 & 1))
    {
      goto LABEL_50;
    }

    v41 = v47;
    if (v45)
    {
LABEL_3:
      sub_100138020(v91, *(v46 + 56) + *(v89 + 72) * v41);

      goto LABEL_4;
    }

LABEL_26:
    *(v46 + 8 * (v41 >> 6) + 64) |= 1 << v41;
    v49 = (*(v46 + 48) + 16 * v41);
    *v49 = v39;
    v49[1] = v35;
    sub_10002F15C(v91, *(v46 + 56) + *(v89 + 72) * v41);
    v50 = *(v46 + 16);
    v51 = __OFADD__(v50, 1);
    v52 = v50 + 1;
    if (v51)
    {
      goto LABEL_48;
    }

    *(v46 + 16) = v52;
LABEL_4:
    v21 = *(v19 + 24);
    *(v19 + 24) = v46;

    sub_10001A24C(v17);
    os_unfair_lock_unlock((v19 + 32));
    v18 = v90;
    if (v90 == v83)
    {
      return;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    v46 = v38;
    if (v40)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  sub_100004074(&unk_1003A3C80, &qword_1002C8310);
  v53 = static _DictionaryStorage.copy(original:)();
  v46 = v53;
  if (!*(v38 + 16))
  {
LABEL_44:

    if (v45)
    {
      goto LABEL_3;
    }

    goto LABEL_26;
  }

  v54 = (v53 + 64);
  v55 = (v38 + 64);
  v56 = ((1 << *(v46 + 32)) + 63) >> 6;
  v72 = v38 + 64;
  if (v46 != v38 || v54 >= &v55[8 * v56])
  {
    memmove(v54, v55, 8 * v56);
  }

  v57 = 0;
  *(v46 + 16) = *(v38 + 16);
  v58 = 1 << *(v38 + 32);
  if (v58 < 64)
  {
    v59 = ~(-1 << v58);
  }

  else
  {
    v59 = -1;
  }

  v60 = v59 & *(v38 + 64);
  v61 = (v58 + 63) >> 6;
  v73 = v61;
  if (v60)
  {
    do
    {
      v62 = __clz(__rbit64(v60));
      v77 = (v60 - 1) & v60;
LABEL_42:
      v65 = v62 | (v57 << 6);
      v74 = 16 * v65;
      v66 = *(v38 + 56);
      v67 = (*(v38 + 48) + 16 * v65);
      v68 = *v67;
      v78 = v67[1];
      v75 = *(v89 + 72) * v65;
      v76 = v68;
      sub_10001A1E8(v66 + v75, v79);
      v69 = (*(v46 + 48) + v74);
      v71 = v78;
      v70 = v79;
      *v69 = v76;
      v69[1] = v71;
      sub_10002F15C(v70, *(v46 + 56) + v75);

      v61 = v73;
      v60 = v77;
    }

    while (v77);
  }

  v63 = v57;
  while (1)
  {
    v57 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v57 >= v61)
    {
      goto LABEL_44;
    }

    v64 = *(v72 + 8 * v57);
    ++v63;
    if (v64)
    {
      v62 = __clz(__rbit64(v64));
      v77 = (v64 - 1) & v64;
      goto LABEL_42;
    }
  }

LABEL_49:
  __break(1u);
LABEL_50:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10011B164(uint64_t a1)
{
  v53 = type metadata accessor for DispatchTime();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v53);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v50 = &v47 - v10;
  v11 = type metadata accessor for StopWatch();
  v48 = *(v11 - 8);
  v49 = v11;
  v12 = *(v48 + 64);
  v13 = __chkstk_darwin(v11);
  v55 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v47 - v15;
  v17 = *(a1 + 16);
  if (!v17)
  {
    return;
  }

  v18 = (a1 + 32);
  v19 = *(v1 + 56);
  v20 = (v3 + 56);
  v47 = (v3 + 32);
  while (1)
  {
    v54 = v17;
    v21 = *v18++;
    os_unfair_lock_lock((v19 + 32));
    v22 = *v20;
    v23 = v50;
    v24 = v53;
    (*v20)(v50, 1, 1, v53);
    v25 = v51;
    v22(v51, 1, 1, v24);
    v22(v16, 1, 1, v24);
    v26 = *(v49 + 20);
    v22(&v16[v26], 1, 1, v24);
    sub_10001A178(v23, v16);
    sub_10001A178(v25, &v16[v26]);
    v27 = v52;
    static DispatchTime.now()();
    sub_10000BD44(v16, &qword_10039E290, &unk_1002C37C0);
    (*v47)(v16, v27, v24);
    v22(v16, 0, 1, v24);
    v28 = sub_100026AE8(v21);
    v30 = v29;
    sub_10001A1E8(v16, v55);
    v31 = *(v19 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v19 + 24);
    v33 = v56;
    *(v19 + 24) = 0x8000000000000000;
    v35 = sub_1000F5A28(v28, v30);
    v36 = v33[2];
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      break;
    }

    v39 = v34;
    if (v33[3] >= v38)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v42 = v56;
        if (v34)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1001816C0();
        v42 = v56;
        if (v39)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_10017D288(v38, isUniquelyReferenced_nonNull_native);
      v40 = sub_1000F5A28(v28, v30);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_19;
      }

      v35 = v40;
      v42 = v56;
      if (v39)
      {
LABEL_3:
        sub_100138020(v55, v42[7] + *(v48 + 72) * v35);

        goto LABEL_4;
      }
    }

    v42[(v35 >> 6) + 8] |= 1 << v35;
    v43 = (v42[6] + 16 * v35);
    *v43 = v28;
    v43[1] = v30;
    sub_10002F15C(v55, v42[7] + *(v48 + 72) * v35);
    v44 = v42[2];
    v45 = __OFADD__(v44, 1);
    v46 = v44 + 1;
    if (v45)
    {
      goto LABEL_18;
    }

    v42[2] = v46;
LABEL_4:
    *(v19 + 24) = v42;
    sub_10001A24C(v16);
    os_unfair_lock_unlock((v19 + 32));
    v17 = v54 - 1;
    if (v54 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10011B5DC(uint64_t a1)
{
  v3 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v66 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v75 = &v63 - v7;
  v73 = type metadata accessor for DispatchTime();
  v8 = *(v73 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v73);
  v72 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StopWatch();
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  v13 = __chkstk_darwin(v11);
  v69 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v63 - v15;
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = 0xEE00534156656D69;
    v19 = *(v1 + 56);
    v20 = (a1 + 32);
    v77 = 0x8000000100345AF0;
    v67 = (v8 + 56);
    v68 = (v8 + 32);
    v74 = (v8 + 48);
    v65 = (v8 + 8);
    do
    {
      v22 = *v20++;
      v21 = v22;
      os_unfair_lock_lock((v19 + 32));
      v23 = 0x6D69546C61746F74;
      if (v22 != 2)
      {
        v23 = 0x54676E696C6C6F70;
      }

      v24 = 0xE900000000000065;
      if (v21 != 2)
      {
        v24 = v18;
      }

      v25 = 0xD000000000000012;
      if (v21)
      {
        v25 = 0x656D695464616572;
      }

      v26 = 0xEB00000000564D45;
      if (!v21)
      {
        v26 = v77;
      }

      if (v21 <= 1)
      {
        v27 = v25;
      }

      else
      {
        v27 = v23;
      }

      if (v21 <= 1)
      {
        v28 = v26;
      }

      else
      {
        v28 = v24;
      }

      v29 = *(v19 + 24);
      if (*(v29 + 16))
      {
        v30 = sub_1000F5A28(v27, v28);
        v32 = v31;

        if (v32)
        {
          v33 = *(v29 + 56);
          v34 = v69;
          sub_10001A1E8(v33 + *(v70 + 72) * v30, v69);
          sub_10002F15C(v34, v16);
          v35 = v18;
          v36 = v72;
          static DispatchTime.now()();
          v37 = *(v71 + 20);
          sub_10000BD44(&v16[v37], &qword_10039E290, &unk_1002C37C0);
          v38 = v36;
          v39 = v73;
          (*v68)(&v16[v37], v38, v73);
          (*v67)(&v16[v37], 0, 1, v39);
          v40 = 0x6D69546C61746F74;
          if (v21 != 2)
          {
            v40 = 0x54676E696C6C6F70;
          }

          v41 = 0xE900000000000065;
          if (v21 != 2)
          {
            v41 = v35;
          }

          v42 = 0xD000000000000012;
          if (v21)
          {
            v42 = 0x656D695464616572;
          }

          v43 = 0xEB00000000564D45;
          if (!v21)
          {
            v43 = v77;
          }

          if (v21 <= 1)
          {
            v40 = v42;
          }

          v76 = v40;
          if (v21 <= 1)
          {
            v44 = v43;
          }

          else
          {
            v44 = v41;
          }

          v45 = v35;
          v46 = &v16[v37];
          v47 = v75;
          sub_10002F674(v46, v75);
          v48 = *v74;
          if ((*v74)(v47, 1, v39) == 1 || (v49 = v75, v64 = DispatchTime.uptimeNanoseconds.getter(), v50 = *v65, (*v65)(v49, v39), v47 = v66, sub_10002F674(v16, v66), v48(v47, 1, v39) == 1))
          {
            sub_10000BD44(v47, &qword_10039E290, &unk_1002C37C0);
            v18 = v45;
LABEL_37:
            v51 = *(v19 + 16);
            v52 = sub_1000F5A28(v76, v44);
            LOBYTE(v51) = v53;

            if (v51)
            {
              v54 = *(v19 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v56 = *(v19 + 16);
              v78 = v56;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_100181554();
                v56 = v78;
              }

              v57 = *(*(v56 + 48) + 16 * v52 + 8);

              sub_10017C5C4(v52, v56);
              *(v19 + 16) = v56;
            }
          }

          else
          {
            v58 = v66;
            v59 = DispatchTime.uptimeNanoseconds.getter();
            v50(v58, v39);
            v18 = v45;
            if (v64 < v59)
            {
              goto LABEL_37;
            }

            isa = UInt64._bridgeToObjectiveC()().super.super.isa;
            v61 = *(v19 + 16);
            v62 = swift_isUniquelyReferenced_nonNull_native();
            v78 = *(v19 + 16);
            sub_10017FC24(isa, v76, v44, v62);

            *(v19 + 16) = v78;
          }

          sub_10001A24C(v16);
        }
      }

      else
      {
      }

      os_unfair_lock_unlock((v19 + 32));
      --v17;
    }

    while (v17);
  }
}

void sub_10011BBA0(uint64_t a1)
{
  v3 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v55 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v64 = &v52 - v7;
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v62 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StopWatch();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  v14 = __chkstk_darwin(v12);
  v59 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v52 - v16;
  v18 = *(a1 + 16);
  if (v18)
  {
    v19 = (a1 + 32);
    v20 = *(v1 + 56);
    v56 = (v9 + 56);
    v57 = (v9 + 32);
    v63 = (v9 + 48);
    v54 = (v9 + 8);
    v58 = v8;
    do
    {
      v22 = *v19++;
      v21 = v22;
      os_unfair_lock_lock((v20 + 32));
      v23 = sub_100026AE8(v22);
      v25 = *(v20 + 24);
      if (*(v25 + 16))
      {
        v26 = sub_1000F5A28(v23, v24);
        v28 = v27;

        if (v28)
        {
          v29 = v59;
          sub_10001A1E8(*(v25 + 56) + *(v60 + 72) * v26, v59);
          sub_10002F15C(v29, v17);
          v30 = v62;
          static DispatchTime.now()();
          v31 = *(v61 + 20);
          sub_10000BD44(&v17[v31], &qword_10039E290, &unk_1002C37C0);
          (*v57)(&v17[v31], v30, v8);
          (*v56)(&v17[v31], 0, 1, v8);
          v32 = sub_100026AE8(v21);
          v34 = v33;
          v35 = v64;
          sub_10002F674(&v17[v31], v64);
          v36 = *v63;
          if ((*v63)(v35, 1, v8) == 1 || (v37 = v64, v53 = DispatchTime.uptimeNanoseconds.getter(), v38 = *v54, (*v54)(v37, v8), v35 = v55, sub_10002F674(v17, v55), v36(v35, 1, v8) == 1))
          {
            sub_10000BD44(v35, &qword_10039E290, &unk_1002C37C0);
LABEL_10:
            v39 = *(v20 + 16);
            v40 = sub_1000F5A28(v32, v34);
            v42 = v41;

            v8 = v58;
            if (v42)
            {
              v43 = *(v20 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v45 = *(v20 + 16);
              v65 = v45;
              if (!isUniquelyReferenced_nonNull_native)
              {
                sub_100181554();
                v45 = v65;
              }

              v46 = *(*(v45 + 48) + 16 * v40 + 8);

              sub_10017C5C4(v40, v45);
              *(v20 + 16) = v45;
            }
          }

          else
          {
            v47 = v55;
            v48 = DispatchTime.uptimeNanoseconds.getter();
            v38(v47, v8);
            if (v53 < v48)
            {
              goto LABEL_10;
            }

            isa = UInt64._bridgeToObjectiveC()().super.super.isa;
            v50 = *(v20 + 16);
            v51 = swift_isUniquelyReferenced_nonNull_native();
            v65 = *(v20 + 16);
            sub_10017FC24(isa, v32, v34, v51);

            *(v20 + 16) = v65;
            v8 = v58;
          }

          sub_10001A24C(v17);
        }
      }

      else
      {
      }

      os_unfair_lock_unlock((v20 + 32));
      --v18;
    }

    while (v18);
  }
}

uint64_t sub_10011C060(uint64_t *a1, char a2)
{
  v4 = sub_100030500(a2);
  v6 = *a1;
  if (*(*a1 + 16))
  {
    v7 = sub_1000F5A28(v4, v5);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v11 = v10;
        static Int._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

  else
  {
  }

  v12 = sub_100030500(a2);
  v14 = v13;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v16 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a1;
  sub_10017FC24(isa, v12, v14, isUniquelyReferenced_nonNull_native);

  *a1 = v19;
  return result;
}

uint64_t sub_10011C1A4(uint64_t *a1, char a2)
{
  v4 = sub_100026774(a2);
  v6 = *a1;
  if (*(*a1 + 16))
  {
    v7 = sub_1000F5A28(v4, v5);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v11 = v10;
        static Int._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

  else
  {
  }

  v12 = sub_100026774(a2);
  v14 = v13;
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v16 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a1;
  sub_10017FC24(isa, v12, v14, isUniquelyReferenced_nonNull_native);

  *a1 = v19;
  return result;
}

uint64_t sub_10011C2EC(uint64_t *a1, char a2)
{
  v4 = sub_100026774(a2);
  v6 = *a1;
  if (*(*a1 + 16))
  {
    v7 = sub_1000F5A28(v4, v5);
    v9 = v8;

    if (v9)
    {
      v10 = *(*(v6 + 56) + 8 * v7);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v11 = v10;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }
  }

  else
  {
  }

  v12 = sub_100026774(a2);
  v14 = v13;

  v15 = String._bridgeToObjectiveC()();

  v16 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *a1;
  sub_10017FC24(v15, v12, v14, isUniquelyReferenced_nonNull_native);

  *a1 = v19;
  return result;
}

uint64_t sub_10011C498(uint64_t a1, int a2)
{
  v32 = a2;
  v34 = a1;
  v2 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v33 = &v29 - v4;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v29 - v15;
  v17 = type metadata accessor for StopWatch();
  v30 = *(v17 - 8);
  v18 = *(v30 + 64);
  __chkstk_darwin(v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v6 + 56);
  v21(v16, 1, 1, v5);
  v21(v14, 1, 1, v5);
  v21(v20, 1, 1, v5);
  v31 = v17;
  v22 = *(v17 + 20);
  v21(&v20[v22], 1, 1, v5);
  sub_10001A178(v16, v20);
  sub_10001A178(v14, &v20[v22]);
  static DispatchTime.now()();
  sub_10000BD44(v20, &qword_10039E290, &unk_1002C37C0);
  (*(v6 + 32))(v20, v9, v5);
  v21(v20, 0, 1, v5);
  if (v32 <= 1u)
  {
    if (v32)
    {
      v26 = 0x8000000100344E50;
      v27 = 0xD000000000000011;
    }

    else
    {
      v26 = 0xED0000656D695468;
      v27 = 0x637465464D414C53;
    }

    goto LABEL_10;
  }

  if (v32 == 2)
  {
    v27 = 0x5474736575716552;
    v26 = 0xEB00000000656D69;
LABEL_10:
    v23 = v33;
    v25 = v30;
    v24 = v31;
    goto LABEL_11;
  }

  v23 = v33;
  v25 = v30;
  v24 = v31;
  if (v32 == 3)
  {
    v26 = 0xEC000000656D6954;
    v27 = 0x7265746E45464153;
  }

  else
  {
    v27 = 0x5474697845464153;
    v26 = 0xEB00000000656D69;
  }

LABEL_11:
  sub_10001A1E8(v20, v23);
  (*(v25 + 56))(v23, 0, 1, v24);
  sub_10002D278(v23, v27, v26);
  return sub_10001A24C(v20);
}

uint64_t sub_10011C8AC(uint64_t a1, int a2)
{
  v32 = a2;
  v33 = a1;
  v2 = sub_100004074(&qword_10039E288, &unk_1002C1700);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v28 - v4;
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004074(&qword_10039E290, &unk_1002C37C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  v16 = type metadata accessor for StopWatch();
  v29 = *(v16 - 8);
  v17 = *(v29 + 64);
  __chkstk_darwin(v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v6 + 56);
  v20(v15, 1, 1, v5);
  v20(v13, 1, 1, v5);
  v20(v19, 1, 1, v5);
  v21 = *(v16 + 20);
  v20(&v19[v21], 1, 1, v5);
  sub_10001A178(v15, v19);
  sub_10001A178(v13, &v19[v21]);
  v22 = v30;
  static DispatchTime.now()();
  sub_10000BD44(v19, &qword_10039E290, &unk_1002C37C0);
  (*(v6 + 32))(v19, v22, v5);
  v20(v19, 0, 1, v5);
  v23 = sub_100026AE8(v32);
  v25 = v24;
  v26 = v31;
  sub_10001A1E8(v19, v31);
  (*(v29 + 56))(v26, 0, 1, v16);
  sub_10002D278(v26, v23, v25);
  return sub_10001A24C(v19);
}

uint64_t sub_10011CC08(uint64_t a1, int a2)
{
  v4 = type metadata accessor for DispatchTime();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StopWatch();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v35 - v14;
  v40 = a2;
  v16 = 0x6D69546C61746F74;
  v17 = 0xE900000000000065;
  if (a2 != 2)
  {
    v16 = 0x54676E696C6C6F70;
    v17 = 0xEE00534156656D69;
  }

  v18 = 0xD000000000000012;
  v19 = 0x8000000100345AF0;
  if (a2)
  {
    v18 = 0x656D695464616572;
    v19 = 0xEB00000000564D45;
  }

  if (a2 <= 1u)
  {
    v20 = v18;
  }

  else
  {
    v20 = v16;
  }

  if (a2 <= 1u)
  {
    v21 = v19;
  }

  else
  {
    v21 = v17;
  }

  v22 = *(a1 + 8);
  if (!*(v22 + 16))
  {
  }

  v36 = "transactionStatus";
  v37 = a1;
  v23 = v13;
  v24 = sub_1000F5A28(v20, v21);
  v26 = v25;

  if (v26)
  {
    sub_10001A1E8(*(v22 + 56) + *(v23 + 72) * v24, v12);
    sub_10002F15C(v12, v15);
    static DispatchTime.now()();
    v28 = *(v8 + 20);
    sub_10000BD44(&v15[v28], &qword_10039E290, &unk_1002C37C0);
    v30 = v38;
    v29 = v39;
    (*(v38 + 32))(&v15[v28], v7, v39);
    (*(v30 + 56))(&v15[v28], 0, 1, v29);
    if (v40 > 1u)
    {
      if (v40 == 2)
      {
        v31 = 0x6D69546C61746F74;
        v32 = 0xE900000000000065;
      }

      else
      {
        v31 = 0x54676E696C6C6F70;
        v32 = 0xEE00534156656D69;
      }
    }

    else
    {
      v31 = 0x656D695464616572;
      v32 = 0xEB00000000564D45;
      if (!v40)
      {
        v31 = 0xD000000000000012;
        v32 = v36 | 0x8000000000000000;
      }
    }

    sub_10002F25C();
    if (v33)
    {
      isa = 0;
    }

    else
    {
      isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    }

    sub_10002D180(isa, v31, v32);
    return sub_10001A24C(v15);
  }

  return result;
}

uint64_t sub_10011CF8C(uint64_t a1, int a2)
{
  v4 = type metadata accessor for DispatchTime();
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StopWatch();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v15 = &v38 - v14;
  v43 = a2;
  v16 = 0x5474736575716552;
  v17 = 0xEB00000000656D69;
  v18 = 0x7265746E45464153;
  v19 = 0xEC000000656D6954;
  if (a2 != 3)
  {
    v18 = 0x5474697845464153;
    v19 = 0xEB00000000656D69;
  }

  if (a2 != 2)
  {
    v16 = v18;
    v17 = v19;
  }

  v20 = 0xD000000000000011;
  v21 = 0x8000000100344E50;
  if (!a2)
  {
    v20 = 0x637465464D414C53;
    v21 = 0xED0000656D695468;
  }

  if (a2 <= 1u)
  {
    v22 = v20;
  }

  else
  {
    v22 = v16;
  }

  if (a2 <= 1u)
  {
    v23 = v21;
  }

  else
  {
    v23 = v17;
  }

  v24 = *(a1 + 8);
  if (!*(v24 + 16))
  {
  }

  v39 = "";
  v40 = a1;
  v25 = v13;
  v26 = sub_1000F5A28(v22, v23);
  v28 = v27;

  if ((v28 & 1) == 0)
  {
    return result;
  }

  sub_10001A1E8(*(v24 + 56) + *(v25 + 72) * v26, v12);
  sub_10002F15C(v12, v15);
  static DispatchTime.now()();
  v30 = *(v8 + 20);
  sub_10000BD44(&v15[v30], &qword_10039E290, &unk_1002C37C0);
  v32 = v41;
  v31 = v42;
  (*(v41 + 32))(&v15[v30], v7, v42);
  (*(v32 + 56))(&v15[v30], 0, 1, v31);
  if (v43 <= 1u)
  {
    v33 = 0x637465464D414C53;
    v34 = 0xED0000656D695468;
    if (v43)
    {
      v33 = 0xD000000000000011;
      v34 = v39 | 0x8000000000000000;
    }

    goto LABEL_25;
  }

  if (v43 == 2)
  {
    v35 = 0x736575716552;
LABEL_24:
    v33 = v35 & 0xFFFFFFFFFFFFLL | 0x5474000000000000;
    v34 = 0xEB00000000656D69;
    goto LABEL_25;
  }

  if (v43 != 3)
  {
    v35 = 0x697845464153;
    goto LABEL_24;
  }

  v33 = 0x7265746E45464153;
  v34 = 0xEC000000656D6954;
LABEL_25:
  sub_10002F25C();
  if (v36)
  {
    isa = 0;
  }

  else
  {
    isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  }

  sub_10002D180(isa, v33, v34);
  return sub_10001A24C(v15);
}

uint64_t sub_10011D358(uint64_t a1, int a2)
{
  v4 = type metadata accessor for DispatchTime();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StopWatch();
  v30 = *(v8 - 8);
  v9 = *(v30 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v29 - v13;
  v32 = a2;
  v15 = sub_100026AE8(a2);
  v17 = *(a1 + 8);
  if (!*(v17 + 16))
  {
  }

  v29 = a1;
  v18 = sub_1000F5A28(v15, v16);
  v20 = v19;

  if (v20)
  {
    sub_10001A1E8(*(v17 + 56) + *(v30 + 72) * v18, v12);
    sub_10002F15C(v12, v14);
    static DispatchTime.now()();
    v22 = *(v8 + 20);
    sub_10000BD44(&v14[v22], &qword_10039E290, &unk_1002C37C0);
    v23 = v31;
    (*(v31 + 32))(&v14[v22], v7, v4);
    (*(v23 + 56))(&v14[v22], 0, 1, v4);
    v24 = sub_100026AE8(v32);
    v26 = v25;
    sub_10002F25C();
    if (v27)
    {
      isa = 0;
    }

    else
    {
      isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    }

    sub_10002D180(isa, v24, v26);
    return sub_10001A24C(v14);
  }

  return result;
}

uint64_t sub_10011D610(unint64_t *a1, uint64_t *a2, void (*a3)(void *__return_ptr, void, void, void, void, void))
{
  v6 = type metadata accessor for TLVTag();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TLV();
  v33 = *(v11 - 8);
  v34 = v11;
  v12 = *(v33 + 64);
  __chkstk_darwin(v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000403C(v15, qword_1003A1210);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v32 = v6;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31 = a3;
    v36 = v20;
    *v19 = 136315394;
    sub_10000411C(0, a1, a2);
    v21 = _typeName(_:qualified:)();
    v23 = sub_100008F6C(v21, v22, &v36);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2080;
    v24 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034F660, _swiftEmptyArrayStorage);
    v26 = sub_100008F6C(v24, v25, &v36);

    *(v19 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s.%s", v19, 0x16u);
    swift_arrayDestroy();
    a3 = v31;

    v6 = v32;
  }

  static TLVTag.globalConfigID.getter();
  v27 = v35;
  sub_10011EC64(v10, a3, v14);
  if (v27)
  {
    v29 = *(v7 + 8);
    v28 = v7 + 8;
    v29(v10, v6);
  }

  else
  {
    (*(v7 + 8))(v10, v6);
    v28 = TLV.hexStringValue.getter();
    (*(v33 + 8))(v14, v34);
  }

  return v28;
}

uint64_t sub_10011D960(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_10011DA0C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v8 = String.Iterator.next()();
  countAndFlagsBits = v8.value._countAndFlagsBits;
  if (v8.value._object)
  {
    object = v8.value._object;
    while (1)
    {
      v13[0] = countAndFlagsBits;
      v13[1] = object;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v11 = String.Iterator.next()();
      countAndFlagsBits = v11.value._countAndFlagsBits;
      object = v11.value._object;
      if (!v11.value._object)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

uint64_t sub_10011DADC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 64);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v11 = *(v7 - 3);
      v10 = *(v7 - 2);
      v15[0] = *(v7 - 4);
      v15[1] = v11;
      v15[2] = v10;
      v15[3] = v9;
      v15[4] = v8;

      v12 = a1(v15);

      if (v3)
      {
        break;
      }

      v7 += 5;
      v13 = v6-- == 0;
    }

    while (((v12 | v13) & 1) == 0);
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12 & 1;
}

uint64_t sub_10011DBE4(unint64_t *a1, uint64_t *a2, void (*a3)(void *__return_ptr, unint64_t, void, void, void, void))
{
  v6 = type metadata accessor for String.Encoding();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v84 = (v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = type metadata accessor for TLVTag();
  v88 = *(v86 - 8);
  v9 = *(v88 + 64);
  __chkstk_darwin(v86);
  v85 = v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v83 = v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v80 - v15;
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000403C(v17, qword_1003A1210);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    *v21 = 136315394;
    sub_10000411C(0, a1, a2);
    v22 = _typeName(_:qualified:)();
    v24 = sub_100008F6C(v22, v23, &v90);

    *(v21 + 4) = v24;
    *(v21 + 12) = 2080;
    v25 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034F680, _swiftEmptyArrayStorage);
    v27 = sub_100008F6C(v25, v26, &v90);

    *(v21 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v19, v20, "%s.%s", v21, 0x16u);
    swift_arrayDestroy();
  }

  LODWORD(v90) = 3488;
  WORD2(v90) = 0;
  v91 = xmmword_1002BDC30;
  v92 = 0;
  sub_10000BC94(&v90, v89);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v90);
  v30 = os_log_type_enabled(v28, v29);
  v82 = v16;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v89[0] = v81;
    *v31 = 136315138;
    v32 = sub_100170CB0(v90 | (WORD2(v90) << 32), v91, *(&v91 + 1), v92);
    v34 = v33;
    v35 = Data.hexString()();
    sub_100009548(v32, v34);
    v36 = sub_100008F6C(v35._countAndFlagsBits, v35._object, v89);

    *(v31 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "C-APDU (GET VERSION): %s", v31, 0xCu);
    sub_10000959C(v81);
  }

  a3(v93, v90 | (WORD2(v90) << 32), v91, *(&v91 + 1), v92, 0);
  v37 = v93[1];
  v38 = v94;
  v39 = v95;
  v40 = Logger.logObject.getter();
  if (v37 >> 60 == 15)
  {
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "applet is not responsive, no version", v42, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v43 = 0;
    swift_willThrow();
    goto LABEL_17;
  }

  v44 = static os_log_type_t.info.getter();
  v45 = os_log_type_enabled(v40, v44);
  v80[1] = v18;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v89[0] = v47;
    *v46 = 136315138;
    v48 = Data.hexString()();
    v39 = sub_100008F6C(v48._countAndFlagsBits, v48._object, v89);

    *(v46 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v40, v44, "R-APDU: %s", v46, 0xCu);
    sub_10000959C(v47);
  }

  if (v38 != 36864)
  {
    sub_10001A3FC();
    swift_allocError();
    *v53 = v38;
    swift_willThrow();
    sub_10000BD44(v93, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_17:
    sub_10000BCF0(&v90);
    return v39;
  }

  v49 = v87;
  v50 = static TLV.decode(from:)();
  if (v49)
  {
    static String.Encoding.ascii.getter();
    v39 = String.init(data:encoding:)();
    v52 = v51;
  }

  else
  {
    v55 = v50;
    v89[0] = v50;
    v56 = v85;
    static TLVTag.payAppletVersionString.getter();
    v57 = sub_100004074(&qword_1003A2700, &qword_1002C16D0);
    v58 = sub_10001A570(&qword_10039E230, &qword_1003A2700, &qword_1002C16D0);
    v59 = v82;
    v96 = v57;
    v87 = v58;
    Collection<>.first(tag:)();
    v60 = *(v88 + 8);
    v88 += 8;
    v84 = v60;
    v60(v56, v86);
    v61 = type metadata accessor for TLV();
    v62 = *(v61 - 8);
    v81 = *(v62 + 48);
    v63 = (v81)(v59, 1, v61);
    v80[0] = v62;
    if (v63 == 1)
    {
      sub_10000BD44(v59, &unk_10039E210, &unk_1002C65B0);
      v39 = 0;
      v52 = 0;
    }

    else
    {
      v39 = TLV.stringValue.getter();
      v52 = v64;
      (*(v62 + 8))(v59, v61);
    }

    v89[0] = v55;
    v65 = v85;
    static TLVTag.availableKernelsMap.getter();
    v66 = v83;
    Collection<>.first(tag:)();
    v84(v65, v86);

    if ((v81)(v66, 1, v61) == 1)
    {
      sub_10000BD44(v66, &unk_10039E210, &unk_1002C65B0);
    }

    else
    {
      v67 = v66;
      v68 = TLV.value.getter();
      v70 = v69;
      (*(v80[0] + 8))(v67, v61);
      sub_1000094F4(v68, v70);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      sub_100009548(v68, v70);
      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v89[0] = v74;
        *v73 = 136446210;
        v75 = Data.hexString()();
        v96 = v71;
        v76 = sub_100008F6C(v75._countAndFlagsBits, v75._object, v89);
        LODWORD(v88) = v72;
        v77 = v76;

        *(v73 + 4) = v77;
        v78 = v96;
        _os_log_impl(&_mh_execute_header, v96, v88, "Available kernels map: %{public}s", v73, 0xCu);
        sub_10000959C(v74);

        sub_100009548(v68, v70);
      }

      else
      {

        sub_100009548(v68, v70);
      }
    }
  }

  if (!v52)
  {
    sub_10001A3FC();
    swift_allocError();
    *v79 = 1;
    swift_willThrow();
  }

  sub_10000BCF0(&v90);
  sub_10000BD44(v93, &qword_10039E2C0, &unk_1002BFEB0);
  return v39;
}

uint8_t *sub_10011E694(uint64_t a1, void (*a2)(void *__return_ptr, void, void, void, void, void))
{
  v5 = v2;
  v7 = type metadata accessor for TLVTag();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = TLVTag.rawValue.getter() >> 8;
  v13 = TLVTag.rawValue.getter();
  LOWORD(v52) = -13696;
  BYTE2(v52) = v12;
  HIBYTE(v52) = v13;
  v53 = 0;
  v54 = xmmword_1002BDC30;
  v55 = 0;
  if (qword_10039D4A0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000403C(v14, qword_1003A1128);
  (*(v8 + 16))(v11, a1, v7);
  sub_10000BC94(&v52, v49);
  v56 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  sub_10000BCF0(&v52);
  v18 = os_log_type_enabled(v16, v17);
  v48 = v3;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v46 = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v47 = a2;
    v49[0] = v21;
    *v20 = 136315394;
    sub_100004074(&qword_10039E268, &unk_1002C16F0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1002C1660;
    v23 = TLVTag.rawValue.getter();
    *(v22 + 56) = &type metadata for UInt;
    *(v22 + 64) = &protocol witness table for UInt;
    *(v22 + 32) = v23;
    v24 = String.init(format:_:)();
    v26 = v25;
    (*(v8 + 8))(v11, v7);
    v27 = sub_100008F6C(v24, v26, v49);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    v28 = sub_100170F04(v52 | (v53 << 32), v54, *(&v54 + 1), v55);
    v30 = v29;
    v31 = Data.hexString()();
    sub_100009548(v28, v30);
    v32 = sub_100008F6C(v31._countAndFlagsBits, v31._object, v49);

    *(v20 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v16, v17, "CAPDU (GET DATA for tag %s): %s", v20, 0x16u);
    swift_arrayDestroy();
    a2 = v47;
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  a2(v50, v52 | (v53 << 32), v54, *(&v54 + 1), v55, 1);
  v33 = v50[0];
  v34 = v50[1];
  v35 = v51;
  v36 = Logger.logObject.getter();
  if (v34 >> 60 == 15)
  {
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "Error from transceive", v33, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v38 = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  v39 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v36, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v49[0] = v41;
    *v40 = 136315138;
    v42 = Data.hexString()();
    v43 = sub_100008F6C(v42._countAndFlagsBits, v42._object, v49);

    *(v40 + 4) = v43;
    _os_log_impl(&_mh_execute_header, v36, v39, "RAPDU: %s", v40, 0xCu);
    sub_10000959C(v41);
  }

  if (v35 != 36864)
  {
    sub_10001A3FC();
    swift_allocError();
    *v44 = v35;
    swift_willThrow();
    sub_10000BD44(v50, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_15:
    sub_10000BCF0(&v52);
    return v33;
  }

  sub_10000BCF0(&v52);
  sub_1000094F4(v33, v34);
  sub_10000BD44(v50, &qword_10039E2C0, &unk_1002BFEB0);
  return v33;
}

uint8_t *sub_10011EC64@<X0>(uint64_t a1@<X0>, void (*a2)(void *__return_ptr, void, void, void, void, void)@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  result = sub_10011E694(a1, a2);
  if (!v3)
  {
    v13 = result;
    v14 = v12;
    sub_1000094F4(result, v12);
    TLV.init(dataRepresentation:)();
    sub_100009548(v13, v14);
    v15 = type metadata accessor for TLV();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v10, 0, 1, v15);
    return (*(v16 + 32))(a3, v10, v15);
  }

  return result;
}

void sub_10011EFA0()
{
  v0 = sub_10011F10C();
  v2 = v1;
  if (*(sub_1000FAD88(v0, v1) + 16))
  {
    oslog = sub_1000FB10C();

    sub_100009548(v0, v2);
  }

  else
  {

    sub_100009548(v0, v2);
  }
}

uint8_t *sub_10011F10C()
{
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A1228);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v4 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v5 = _typeName(_:qualified:)();
    v7 = sub_100008F6C(v5, v6, &v35);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0x6B63617254746567, 0xEF2928726F727245, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, &v35);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  LODWORD(v35) = 132768;
  WORD2(v35) = 0;
  v36 = xmmword_1002BDC30;
  v37 = 0;
  sub_10000BC94(&v35, v34);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v35);
  v13 = os_log_type_enabled(v11, v12);
  v40 = v0;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v34[0] = v15;
    *v14 = 136315138;
    v16 = sub_100170F04(v35 | (WORD2(v35) << 32), v36, *(&v36 + 1), v37);
    v18 = v17;
    v19 = Data.hexString()();
    sub_100009548(v16, v18);
    v20 = sub_100008F6C(v19._countAndFlagsBits, v19._object, v34);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "C-APDU (GET ERROR): %s", v14, 0xCu);
    sub_10000959C(v15);
  }

  sub_1000A0770(v35 | (WORD2(v35) << 32), v36, *(&v36 + 1), v37, 1, v38);
  v21 = v38[0];
  v22 = v38[1];
  v23 = v39;
  v24 = Logger.logObject.getter();
  if (v22 >> 60 == 15)
  {
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no response for getTrackError", v21, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    goto LABEL_16;
  }

  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v34[0] = v29;
    *v28 = 136315138;
    v30 = Data.hexString()();
    v31 = sub_100008F6C(v30._countAndFlagsBits, v30._object, v34);

    *(v28 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v24, v27, "R-APDU: %s", v28, 0xCu);
    sub_10000959C(v29);
  }

  if (v23 != 36864)
  {
    sub_10001A3FC();
    swift_allocError();
    *v32 = v23;
    swift_willThrow();
    sub_10000BD44(v38, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_16:
    sub_10000BCF0(&v35);
    return v21;
  }

  sub_10000BCF0(&v35);
  sub_1000094F4(v21, v22);
  sub_10000BD44(v38, &qword_10039E2C0, &unk_1002BFEB0);
  return v21;
}

uint64_t sub_10011F680(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, unint64_t, uint64_t, unint64_t, void, void))
{
  if (qword_10039D4A8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000403C(v9, qword_1003A1210);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v57[0] = swift_slowAlloc();
    *v12 = 136315394;
    sub_10000411C(0, a3, a4);
    v13 = _typeName(_:qualified:)();
    v15 = sub_100008F6C(v13, v14, v57);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1002C1660;
    *(v16 + 56) = &type metadata for String;
    *(v16 + 32) = a1;
    *(v16 + 40) = a2;

    v17 = showFunction(signature:_:)(0xD000000000000014, 0x800000010034F640, v16);
    v19 = v18;

    v20 = sub_100008F6C(v17, v19, v57);

    *(v12 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s.%s", v12, 0x16u);
    swift_arrayDestroy();
  }

  result = Data.init(hexString:)();
  if (v22 >> 60 == 15)
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "could not convert hex string to profile ID (Data)", v25, 2u);
    }

LABEL_24:

    return 0;
  }

  v26 = result;
  v27 = v22;
  v28 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v28 != 2)
    {
      v29 = 0;
      goto LABEL_18;
    }

    v31 = *(result + 16);
    v30 = *(result + 24);
    v29 = v30 - v31;
    if (!__OFSUB__(v30, v31))
    {
      goto LABEL_16;
    }

    __break(1u);
LABEL_15:
    v29 = WORD2(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

LABEL_16:
    sub_1000094F4(result, v22);
    goto LABEL_18;
  }

  if (v28)
  {
    goto LABEL_15;
  }

  v29 = BYTE6(v22);
LABEL_18:
  v52 = 45440;
  v53 = v29;
  v54 = v26;
  v55 = v27;
  v56 = 0;
  sub_10000BC94(&v52, v57);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v52);
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57[0] = v49;
    *v34 = 136315138;
    v35 = sub_100170CB0(v52 | (v53 << 32), v54, v55, v56);
    v37 = v36;
    v38 = Data.hexString()();
    sub_100009548(v35, v37);
    v39 = sub_100008F6C(v38._countAndFlagsBits, v38._object, v57);

    *(v34 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v32, v33, "C-APDU (activate profile): %s", v34, 0xCu);
    sub_10000959C(v49);
  }

  a5(v57, v52 | (v53 << 32), v54, v55, v56, 0);
  v40 = v57[1];
  v41 = v58;
  v23 = Logger.logObject.getter();
  if (v40 >> 60 == 15)
  {
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v23, v42, "activate failed", v43, 2u);
    }

    sub_10001A074(v26, v27);
    sub_10000BCF0(&v52);
    goto LABEL_24;
  }

  v44 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v23, v44))
  {
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v51 = v46;
    *v45 = 136315138;
    v47 = Data.hexString()();
    v48 = sub_100008F6C(v47._countAndFlagsBits, v47._object, &v51);

    *(v45 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v23, v44, "R-APDU: %s", v45, 0xCu);
    sub_10000959C(v46);
  }

  sub_10000BCF0(&v52);
  sub_10001A074(v26, v27);

  sub_10000BD44(v57, &qword_10039E2C0, &unk_1002BFEB0);
  return v41 == 36864;
}

uint64_t sub_10011FCA8@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, void (*a13)(char *, char *, uint64_t), uint64_t *a14, unsigned __int8 a15, unsigned __int8 a16, void *a17)
{
  v274 = a7;
  v262 = a6;
  LODWORD(v279) = a3;
  v278 = a1;
  v248 = a9;
  v261 = a15;
  v281 = a13;
  v21 = type metadata accessor for String.Encoding();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v259 = &v244 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for TLV();
  v277 = *(v270 - 8);
  v24 = *(v277 + 64);
  v25 = __chkstk_darwin(v270);
  v251 = &v244 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v250 = &v244 - v28;
  __chkstk_darwin(v27);
  v249 = &v244 - v29;
  v30 = type metadata accessor for TLVTag();
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v252 = &v244 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v271 = &v244 - v34;
  v257 = type metadata accessor for Locale();
  *&v256 = *(v257 - 8);
  v35 = *(v256 + 64);
  __chkstk_darwin(v257);
  v255 = &v244 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_100004074(&unk_1003A3BE0, &qword_1002C36F0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v272 = (&v244 - v39);
  v40 = type metadata accessor for Date();
  v275 = *(v40 - 8);
  v41 = *(v275 + 64);
  v42 = __chkstk_darwin(v40);
  v268 = &v244 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = a16;
  v280 = a14;
  v276 = v42;
  v253 = a8;
  v267 = a12;
  v266 = a11;
  v265 = a10;
  v264 = a5;
  v263 = a4;
  if (a16 == 2)
  {
    if (qword_10039D4B0 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000403C(v44, qword_1003A1228);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v45, v46, "Sending START TRANSACTION with mode preProcessOnly", v47, 2u);
    }
  }

  else
  {
    v48 = a4;
    v260 = a2;
    if (qword_10039D4B0 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000403C(v49, qword_1003A1228);
    v254 = v273;
    sub_1000094F4(a4, a5);
    v50 = v274;
    sub_1000094F4(v274, a8);
    sub_1000094F4(a10, a11);
    sub_1000094F4(a12, v281);

    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();
    sub_100009548(v48, a5);
    sub_100009548(v50, a8);
    sub_100009548(a10, a11);
    sub_100009548(a12, v281);

    v247 = v52;
    if (os_log_type_enabled(v51, v52))
    {
      v246 = v51;
      v53 = swift_slowAlloc();
      v245 = swift_slowAlloc();
      *&v282 = v245;
      *v53 = 136317442;
      v54 = NSDecimal.description.getter();
      v56 = sub_100008F6C(v54, v55, &v282);

      *(v53 + 4) = v56;
      *(v53 + 12) = 2080;
      v57 = Data.hexString()();
      v58 = sub_100008F6C(v57._countAndFlagsBits, v57._object, &v282);

      *(v53 + 14) = v58;
      *(v53 + 22) = 2080;
      v59 = SPRTransactionType.description.getter();
      v61 = sub_100008F6C(v59, v60, &v282);

      *(v53 + 24) = v61;
      *(v53 + 32) = 2080;
      v62 = Data.hexString()();
      v63 = sub_100008F6C(v62._countAndFlagsBits, v62._object, &v282);

      *(v53 + 34) = v63;
      *(v53 + 42) = 2080;
      static String.Encoding.ascii.getter();
      countAndFlagsBits = String.init(data:encoding:)();
      if (!object)
      {
        v66 = Data.hexString()();
        object = v66._object;
        countAndFlagsBits = v66._countAndFlagsBits;
      }

      v67 = v280;
      v68 = v254;
      v69 = sub_100008F6C(countAndFlagsBits, object, &v282);

      *(v53 + 44) = v69;
      *(v53 + 52) = 2080;
      v70 = Data.hexString()();
      v71 = sub_100008F6C(v70._countAndFlagsBits, v70._object, &v282);

      *(v53 + 54) = v71;
      *(v53 + 62) = 2080;
      v72 = v269;
      if (v67)
      {
        v73 = v67[2];
        v74 = _swiftEmptyArrayStorage;
        if (v73)
        {
          v286 = _swiftEmptyArrayStorage;
          sub_10004E2DC(0, v73, 0);
          v74 = v286;
          v75 = (v67 + 5);
          do
          {
            v76 = *(v75 - 1);
            v77 = *v75;
            sub_1000094F4(v76, *v75);
            v78 = Data.hexString()();
            sub_100009548(v76, v77);
            v286 = v74;
            v80 = v74[2];
            v79 = v74[3];
            if (v80 >= v79 >> 1)
            {
              sub_10004E2DC((v79 > 1), v80 + 1, 1);
              v74 = v286;
            }

            v75 += 2;
            v74[2] = v80 + 1;
            *&v74[2 * v80 + 4] = v78;
            --v73;
          }

          while (v73);
          v72 = v269;
        }

        v286 = v74;
        sub_100004074(&qword_10039E270, &unk_1002C3BE0);
        sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0);
        v81 = BidirectionalCollection<>.joined(separator:)();
        v83 = v82;

        v68 = v254;
      }

      else
      {
        v83 = 0xE300000000000000;
        v81 = 7104878;
      }

      v84 = sub_100008F6C(v81, v83, &v282);

      *(v53 + 64) = v84;
      *(v53 + 72) = 256;
      *(v53 + 74) = v261 & 1;
      *(v53 + 75) = 256;
      *(v53 + 77) = v72;
      *(v53 + 78) = 2080;
      v85 = [v68 description];
      v86 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v87 = v68;
      v89 = v88;

      v90 = sub_100008F6C(v86, v89, &v282);

      *(v53 + 80) = v90;
      v91 = v246;
      _os_log_impl(&_mh_execute_header, v246, v247, "Sending START TRANSACTION with amount: %s, currencyCode: %s, transactionType: %s, merchantCategoryCode: %s, interfaceDeviceSerial: %s, transactionIdHalf: %s, preferredSchemes: %s, resetTrackError: %hhu, mode: %hhu, using session: %s", v53, 0x58u);
      swift_arrayDestroy();
    }

    else
    {
    }

    a2 = v260;
  }

  v92 = v279;
  v93 = WORD1(v279);
  v94 = v278;
  v95 = HIWORD(v278);
  v96 = HIDWORD(v278);
  v97 = objc_allocWithZone(NSDecimalNumber);
  LODWORD(v282) = v94;
  WORD2(v282) = v96;
  WORD3(v282) = v95;
  *(&v282 + 1) = a2;
  LOWORD(v283) = v92;
  WORD1(v283) = v93;
  v98 = [v97 initWithDecimal:&v282];
  v99 = [v98 integerValue];

  if (v99 >= 0)
  {
    v100 = v99;
  }

  else
  {
    v100 = -v99;
  }

  *&v282 = v100;
  sub_10001A4CC();
  v101 = UnsignedInteger.digitsAsBytes()();
  v103 = v102;
  v104 = Data.toBCD()();
  v106 = v105;
  sub_100009548(v101, v103);
  v107 = v106 >> 62;
  if ((v106 >> 62) > 1)
  {
    if (v107 != 2)
    {
      v101 = 0;
      goto LABEL_37;
    }

    v109 = *(v104 + 16);
    v108 = *(v104 + 24);
    v101 = v108 - v109;
    if (!__OFSUB__(v108, v109))
    {
      goto LABEL_37;
    }

    __break(1u);
  }

  else if (!v107)
  {
    v101 = BYTE6(v106);
    goto LABEL_37;
  }

  if (__OFSUB__(HIDWORD(v104), v104))
  {
    __break(1u);
    goto LABEL_115;
  }

  v101 = HIDWORD(v104) - v104;
LABEL_37:
  if (static TLVTag.TAG_9F02_LENGTH.getter() < v101)
  {
    sub_1000207FC(4000, 0xD00000000000001DLL, 0x800000010034F4E0, 0);
    swift_willThrow();
    v110 = v104;
    v111 = v106;
    return sub_100009548(v110, v111);
  }

  v112 = a17;
  v291 = v104;
  v292 = v106;
  v279 = v104;
  sub_1000094F4(v104, v106);
  v113 = &qword_10039E2E8;
  while (1)
  {
    v114 = v292 >> 62;
    if ((v292 >> 62) > 1)
    {
      if (v114 == 2)
      {
        v116 = *(v291 + 16);
        v117 = *(v291 + 24);
        v115 = v117 - v116;
        if (__OFSUB__(v117, v116))
        {
          __break(1u);
LABEL_111:
          __break(1u);
          goto LABEL_112;
        }
      }

      else
      {
        v115 = 0;
      }
    }

    else if (v114)
    {
      if (__OFSUB__(HIDWORD(v291), v291))
      {
        goto LABEL_111;
      }

      v115 = HIDWORD(v291) - v291;
    }

    else
    {
      v115 = BYTE6(v292);
    }

    if (v115 >= static TLVTag.TAG_9F02_LENGTH.getter())
    {
      break;
    }

    v118 = sub_100004074(&qword_10039E2E8, &qword_1002C1728);
    v284 = v118;
    v285 = sub_10001A570(&qword_10039E2F0, &qword_10039E2E8, &qword_1002C1728);
    LOBYTE(v282) = 0;
    LOBYTE(v286) = *sub_10000BE18(&v282, v118);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_10000959C(&v282);
  }

  v119 = *sub_10000BE18(a17, a17[3]);
  v120 = v272;
  sub_100043268(v272);
  v121 = v275;
  v122 = v276;
  if ((*(v275 + 48))(v120, 1, v276) == 1)
  {
    sub_10000BD44(v120, &unk_1003A3BE0, &qword_1002C36F0);
    sub_1000207FC(4054, 0xD00000000000001ELL, 0x80000001003483B0, 0);
    swift_willThrow();
    v123 = v279;
    v124 = v106;
    goto LABEL_54;
  }

  v260 = v106;
  v125 = v268;
  (*(v121 + 32))(v268, v120, v122);
  v126 = [objc_allocWithZone(NSDateFormatter) init];
  v127 = v122;
  v128 = v255;
  Locale.init(identifier:)();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v256 + 8))(v128, v257);
  [v126 setLocale:isa];

  v130 = String._bridgeToObjectiveC()();
  [v126 setDateFormat:v130];

  v131 = Date._bridgeToObjectiveC()().super.isa;
  v132 = [v126 stringFromDate:v131];

  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v135 = v134;

  v289 = sub_100146900(v133, v135);
  v290 = v136;
  v137 = v258;
  sub_100121DBC(&v289);
  if (v137)
  {
    (*(v121 + 8))(v125, v127);
    sub_100009548(v279, v260);
    sub_100009548(v289, v290);

    goto LABEL_58;
  }

  v138 = String._bridgeToObjectiveC()();
  [v126 setDateFormat:v138];

  v139 = Date._bridgeToObjectiveC()().super.isa;
  v140 = [v126 stringFromDate:v139];

  v141 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v143 = v142;

  v287 = sub_100146900(v141, v143);
  v288 = v144;
  sub_100121DBC(&v287);
  v255 = v126;
  v259 = 0;
  v258 = sub_100004074(&qword_10039E2D8, &qword_1002C3720);
  v146 = *(v277 + 72);
  v278 = (*(v277 + 80) + 32) & ~*(v277 + 80);
  v257 = 8 * v146;
  v254 = 9 * v146;
  v147 = swift_allocObject();
  *(v147 + 16) = xmmword_1002C7370;
  v272 = v147;
  static TLVTag.authorizedAmount.getter();
  sub_1000094F4(v291, v292);
  TLV.init(tag:value:)();
  static TLVTag.otherAmount.getter();
  static TLVTag.TAG_9F03_DEFAULT.getter();
  TLV.init(tag:value:)();
  static TLVTag.transactionType.getter();
  sub_100004074(&qword_10039E2E0, &qword_1002C1720);
  v148 = swift_allocObject();
  v256 = xmmword_1002C1660;
  *(v148 + 16) = xmmword_1002C1660;
  *(v148 + 32) = v262;
  sub_10014B8C8(v148);

  TLV.init(tag:value:)();
  static TLVTag.transactionDate.getter();
  v149 = v289;
  v150 = v290;
  sub_1000094F4(v289, v290);
  Data.toBCD()();
  sub_100009548(v149, v150);
  TLV.init(tag:value:)();
  static TLVTag.transactionTime.getter();
  v151 = v287;
  v152 = v288;
  sub_1000094F4(v287, v288);
  Data.toBCD()();
  sub_100009548(v151, v152);
  TLV.init(tag:value:)();
  static TLVTag.transactionCurrencyCode.getter();
  sub_1000094F4(v263, v264);
  TLV.init(tag:value:)();
  static TLVTag.merchantCategoryCode.getter();
  v95 = v253;
  sub_1000094F4(v274, v253);
  TLV.init(tag:value:)();
  static TLVTag.interfaceDeviceSerialNumber.getter();
  sub_1000094F4(v265, v266);
  TLV.init(tag:value:)();
  static TLVTag.readerMetadata.getter();
  v265 = v146;
  *(swift_allocObject() + 16) = v256;
  static TLVTag.readerMetadataTransactionID.getter();
  v92 = v267;
  v101 = v281;
  sub_1000094F4(v267, v281);
  TLV.init(tag:value:)();
  TLV.init(tag:children:)();
  if (qword_10039D4B0 != -1)
  {
LABEL_115:
    swift_once();
  }

  v153 = type metadata accessor for Logger();
  v154 = sub_10000403C(v153, qword_1003A1228);
  v155 = v274;
  sub_1000094F4(v274, v95);
  sub_1000094F4(v92, v101);
  v266 = v154;
  v156 = Logger.logObject.getter();
  v157 = static os_log_type_t.default.getter();
  sub_100009548(v92, v101);
  sub_100009548(v155, v95);
  if (os_log_type_enabled(v156, v157))
  {
    v158 = swift_slowAlloc();
    v264 = swift_slowAlloc();
    *&v282 = v264;
    *v158 = 136447234;
    swift_beginAccess();
    LODWORD(v263) = v157;
    v159 = v291;
    v160 = v292;
    sub_1000094F4(v291, v292);
    v161 = Data.hexString()();
    sub_100009548(v159, v160);
    v162 = sub_100008F6C(v161._countAndFlagsBits, v161._object, &v282);

    *(v158 + 4) = v162;
    *(v158 + 12) = 2082;
    swift_beginAccess();
    v163 = v289;
    v164 = v290;
    sub_1000094F4(v289, v290);
    v165 = Data.hexString()();
    sub_100009548(v163, v164);
    v166 = sub_100008F6C(v165._countAndFlagsBits, v165._object, &v282);

    *(v158 + 14) = v166;
    *(v158 + 22) = 2082;
    swift_beginAccess();
    v167 = v287;
    v168 = v288;
    sub_1000094F4(v287, v288);
    v169 = Data.hexString()();
    sub_100009548(v167, v168);
    v170 = sub_100008F6C(v169._countAndFlagsBits, v169._object, &v282);

    *(v158 + 24) = v170;
    *(v158 + 32) = 2082;
    v171 = Data.hexString()();
    v172 = sub_100008F6C(v171._countAndFlagsBits, v171._object, &v282);

    *(v158 + 34) = v172;
    *(v158 + 42) = 2082;
    v173 = Data.hexString()();
    v174 = sub_100008F6C(v173._countAndFlagsBits, v173._object, &v282);

    *(v158 + 44) = v174;
    _os_log_impl(&_mh_execute_header, v156, v263, "Start Transaction Tags: amount: %{public}s, date: %{public}s, time: %{public}s, transactionIdHalf: %{public}s, MCC: %{public}s,", v158, 0x34u);
    swift_arrayDestroy();
  }

  v175 = v251;
  v176 = v280;
  if (v280)
  {
    v177 = v280[2];
    if (v177)
    {
      *&v282 = _swiftEmptyArrayStorage;
      sub_10004E380(0, v177, 0);
      v178 = v282;
      v179 = (v277 + 32);
      v180 = (v176 + 5);
      v181 = v265;
      do
      {
        sub_1000094F4(*(v180 - 1), *v180);
        static TLVTag.overrideAID.getter();
        TLV.init(tag:value:)();
        *&v282 = v178;
        v183 = *(v178 + 16);
        v182 = *(v178 + 24);
        if (v183 >= v182 >> 1)
        {
          sub_10004E380(v182 > 1, v183 + 1, 1);
          v178 = v282;
        }

        v180 += 2;
        *(v178 + 16) = v183 + 1;
        (*v179)(v178 + v278 + v183 * v181, v175, v270);
        --v177;
      }

      while (v177);
    }

    static TLVTag.preferredSchemes.getter();

    v184 = v249;
    TLV.init(tag:children:)();
    v185 = sub_10004D91C(1uLL, 10, 1, v272);
    *(v185 + 2) = 10;
    (*(v277 + 32))(&v185[v278 + v254], v184, v270);

    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = v185;
      v189 = swift_slowAlloc();
      v190 = swift_slowAlloc();
      *&v282 = v190;
      *v189 = 136446210;
      v191 = Array.description.getter();
      v193 = v192;

      v194 = sub_100008F6C(v191, v193, &v282);

      *(v189 + 4) = v194;
      _os_log_impl(&_mh_execute_header, v186, v187, "OverrideAID (TLV): %{public}s", v189, 0xCu);
      sub_10000959C(v190);

      v185 = v188;
    }

    else
    {
    }
  }

  else
  {
    v185 = v272;
  }

  v282 = xmmword_1002BDC30;
  v195 = *(v185 + 2);
  if (v195)
  {
    v272 = v185;
    v196 = &v185[v278];
    v197 = *(v277 + 16);
    v277 += 16;
    v281 = v197;
    v198 = (v277 - 8);
    v199 = v250;
    v200 = v270;
    v201 = v265;
    do
    {
      v281(v199, v196, v200);
      v202 = TLV.dataRepresentation.getter();
      v204 = v203;
      Data.append(_:)();
      sub_100009548(v202, v204);
      (*v198)(v199, v200);
      v196 += v201;
      --v195;
    }

    while (v195);

    v94 = *(&v282 + 1);
    v205 = v282;
    v206 = *(&v282 + 1) >> 62;
    if ((*(&v282 + 1) >> 62) <= 1)
    {
      if (!v206)
      {
        LOWORD(v195) = BYTE14(v282);
        goto LABEL_88;
      }

LABEL_85:
      LOWORD(v195) = WORD2(v205) - v205;
      if (!__OFSUB__(HIDWORD(v205), v205))
      {
        goto LABEL_86;
      }

LABEL_117:
      __break(1u);
    }

    if (v206 == 2)
    {
      v208 = *(v282 + 16);
      v207 = *(v282 + 24);
      LOWORD(v195) = v207 - v208;
      if (__OFSUB__(v207, v208))
      {
        __break(1u);
        goto LABEL_85;
      }

LABEL_86:
      sub_1000094F4(v205, v94);
    }

    else
    {
      LOWORD(v195) = 0;
    }
  }

  else
  {

    v205 = 0;
    v94 = 0xC000000000000000;
  }

LABEL_88:
  LOWORD(v282) = 160;
  BYTE2(v282) = v261 & 1;
  BYTE3(v282) = v269;
  WORD2(v282) = v195;
  *(&v282 + 1) = v205;
  v283 = v94;
  LOWORD(v284) = 0;
  sub_10000BC94(&v282, &v286);
  v209 = Logger.logObject.getter();
  v210 = static os_log_type_t.default.getter();
  sub_10000BCF0(&v282);
  if (os_log_type_enabled(v209, v210))
  {
    v211 = swift_slowAlloc();
    v280 = swift_slowAlloc();
    v286 = v280;
    *v211 = 136315138;
    v212 = sub_100170CB0(v282 | (WORD2(v282) << 32), *(&v282 + 1), v283, v284);
    v281 = v94;
    v213 = v205;
    v214 = v212;
    v216 = v215;
    v217 = Data.hexString()();
    v218 = v214;
    v205 = v213;
    sub_100009548(v218, v216);
    v219 = sub_100008F6C(v217._countAndFlagsBits, v217._object, &v286);

    *(v211 + 4) = v219;
    v94 = v281;
    _os_log_impl(&_mh_execute_header, v209, v210, "C-APDU (START TRANSACTION): %s", v211, 0xCu);
    sub_10000959C(v280);
  }

  v220 = v276;
  v221 = v268;
  v222 = sub_100170CB0(v282 | (WORD2(v282) << 32), *(&v282 + 1), v283, v284);
  v224 = v223 >> 62;
  if ((v223 >> 62) <= 1)
  {
    if (!v224)
    {
      v225 = BYTE6(v223);
      sub_100009548(v222, v223);
      v226 = v225;
      goto LABEL_99;
    }

LABEL_97:
    v229 = HIDWORD(v222);
    v230 = v222;
    sub_100009548(v222, v223);
    LODWORD(v226) = v229 - v230;
    if (__OFSUB__(v229, v230))
    {
      __break(1u);
      goto LABEL_117;
    }

    v226 = v226;
    goto LABEL_99;
  }

  if (v224 == 2)
  {
    v228 = *(v222 + 16);
    v227 = *(v222 + 24);
    v222 = sub_100009548(v222, v223);
    v226 = v227 - v228;
    if (__OFSUB__(v227, v228))
    {
      __break(1u);
      goto LABEL_97;
    }

LABEL_99:
    if (v226 >= 129)
    {
      sub_1000207FC(4015, 0xD00000000000001ELL, 0x800000010034F4C0, 0);
      swift_willThrow();

      sub_10000BCF0(&v282);
      sub_100009548(v205, v94);
      sub_100009548(v279, v260);
      (*(v275 + 8))(v221, v220);
      goto LABEL_104;
    }
  }

  else
  {
    sub_100009548(v222, v223);
  }

  sub_1000A0770(v282 | (WORD2(v282) << 32), *(&v282 + 1), v283, v284, 0, &v293);
  v231 = v294;
  if (v294 >> 60 == 15)
  {
    sub_1000207FC(4015, 0xD000000000000010, 0x800000010034F480, 0);
    swift_willThrow();

    sub_10000BCF0(&v282);
    sub_100009548(v205, v94);
    sub_100009548(v279, v260);
    (*(v275 + 8))(v268, v220);
    goto LABEL_104;
  }

  v281 = v205;
  v232 = v293;
  v233 = v295;
  v280 = v296;
  v278 = v297;
  sub_10001A3FC();
  swift_allocError();
  *v234 = v233;
  v235 = sub_100171840(36864);

  if ((v235 & 1) == 0)
  {
    swift_allocError();
    *v238 = v233;
    v239 = sub_100171840(25392);

    if (v239)
    {
      sub_10011EFA0();
      sub_1000207FC(4015, 0xD00000000000003BLL, 0x8000000100347070, 0);
      swift_willThrow();

      sub_10000BD44(&v293, &qword_10039E2C0, &unk_1002BFEB0);
      sub_10000BCF0(&v282);
      sub_100009548(v281, v94);
      sub_100009548(v279, v260);
      (*(v275 + 8))(v268, v276);
LABEL_104:
      sub_100009548(v287, v288);
      v123 = v289;
      v124 = v290;
LABEL_54:
      sub_100009548(v123, v124);
LABEL_58:
      v110 = v291;
      v111 = v292;
      return sub_100009548(v110, v111);
    }

    swift_allocError();
    *v240 = v233;
    v241 = sub_100171840(27648);

    v113 = (v275 + 8);
    v112 = v276;
    v106 = v268;
    if (v241)
    {
      v242 = 0x800000010034F4A0;
      v243 = 0xD00000000000001ELL;
LABEL_113:
      sub_1000207FC(4015, v243, v242, 0);
      swift_willThrow();

      sub_10000BD44(&v293, &qword_10039E2C0, &unk_1002BFEB0);
      sub_10000BCF0(&v282);
      sub_100009548(v281, v94);
      sub_100009548(v279, v260);
      (*v113)(v106, v112);
      goto LABEL_104;
    }

LABEL_112:
    sub_10011EFA0();
    v243 = 0;
    v242 = 0;
    goto LABEL_113;
  }

  sub_100009548(v279, v260);

  sub_100009548(v281, v94);
  sub_10000BCF0(&v282);
  (*(v275 + 8))(v268, v276);
  sub_100009548(v287, v288);
  sub_100009548(v289, v290);
  result = sub_100009548(v291, v292);
  v236 = v248;
  *v248 = v232;
  v236[1] = v231;
  *(v236 + 8) = v233;
  v237 = v278;
  v236[3] = v280;
  v236[4] = v237;
  return result;
}

uint64_t *sub_100121DBC(uint64_t *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(v3);
      if (!BYTE6(v3))
      {
        return result;
      }

      goto LABEL_15;
    }

    goto LABEL_9;
  }

  if (v4 != 2)
  {
    return result;
  }

  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_111;
    }

    v5 = HIDWORD(v2) - v2;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_110;
  }

  if (v5)
  {
LABEL_15:
    v8 = 0;
    v51 = v5;
    v52 = result;
    while (1)
    {
      if (v8 >= v5)
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
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
LABEL_121:
        __break(1u);
      }

      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_88;
      }

      v10 = v3 >> 62;
      if ((v3 >> 62) > 1)
      {
        break;
      }

      if (v10)
      {
        if (v8 >= v2 >> 32 || v8 < v2)
        {
          goto LABEL_97;
        }

        v16 = __DataStorage._bytes.getter();
        if (!v16)
        {
          goto LABEL_117;
        }

        v13 = v16;
        v17 = __DataStorage._offset.getter();
        v15 = v8 - v17;
        if (__OFSUB__(v8, v17))
        {
          goto LABEL_99;
        }

LABEL_33:
        v11 = *(v13 + v15);
        goto LABEL_34;
      }

      if (v8 >= BYTE6(v3))
      {
        goto LABEL_95;
      }

      v53 = v2;
      LOWORD(v54) = v3;
      BYTE2(v54) = BYTE2(v3);
      HIBYTE(v54) = BYTE3(v3);
      LOBYTE(v55) = BYTE4(v3);
      HIBYTE(v55) = BYTE5(v3);
      v11 = *(&v53 + v8);
LABEL_34:
      if ((v11 - 58) <= 0xFFFFFFF5)
      {
        sub_1000207FC(4000, 0xD000000000000021, 0x800000010034F500, 0);
        return swift_willThrow();
      }

      v18 = *v1;
      v19 = v1[1];
      v20 = v19 >> 62;
      if ((v19 >> 62) > 1)
      {
        if (v20 != 2)
        {
          goto LABEL_119;
        }

        if (v8 < *(v18 + 16))
        {
          goto LABEL_102;
        }

        if (v8 >= *(v18 + 24))
        {
          goto LABEL_104;
        }

        v22 = __DataStorage._bytes.getter();
        if (!v22)
        {
          goto LABEL_121;
        }

        v23 = v22;
        v24 = __DataStorage._offset.getter();
        v25 = v8 - v24;
        if (__OFSUB__(v8, v24))
        {
          goto LABEL_106;
        }

        goto LABEL_50;
      }

      if (v20)
      {
        if (v8 >= v18 >> 32 || v8 < v18)
        {
          goto LABEL_103;
        }

        v26 = __DataStorage._bytes.getter();
        if (!v26)
        {
          goto LABEL_120;
        }

        v23 = v26;
        v27 = __DataStorage._offset.getter();
        v25 = v8 - v27;
        if (__OFSUB__(v8, v27))
        {
          goto LABEL_105;
        }

LABEL_50:
        v21 = *(v23 + v25);
        goto LABEL_51;
      }

      if (v8 >= BYTE6(v19))
      {
        goto LABEL_101;
      }

      v53 = *v1;
      LOWORD(v54) = v19;
      BYTE2(v54) = BYTE2(v19);
      HIBYTE(v54) = BYTE3(v19);
      LOBYTE(v55) = BYTE4(v19);
      HIBYTE(v55) = BYTE5(v19);
      v21 = *(&v53 + v8);
LABEL_51:
      v28 = v21 - 48;
      if (((v21 - 48) & 0xFFFFFF00) != 0)
      {
        goto LABEL_89;
      }

      v2 = *v1;
      v29 = v1[1];
      if ((v29 >> 62) > 1)
      {
        if (v29 >> 62 != 2)
        {
          goto LABEL_113;
        }

        v30 = v29 & 0x3FFFFFFFFFFFFFFFLL;
        v31 = *v1;

        sub_100009548(v2, v29);
        *v1 = xmmword_1002BDC30;
        sub_100009548(0, 0xC000000000000000);
        if (v8 < *(v2 + 16))
        {
          goto LABEL_90;
        }

        if (v8 >= *(v2 + 24))
        {
          goto LABEL_92;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = *(v2 + 16);
          v33 = *(v2 + 24);
          if (__DataStorage._bytes.getter())
          {
            if (__OFSUB__(v32, __DataStorage._offset.getter()))
            {
              goto LABEL_109;
            }

            if (__OFSUB__(v33, v32))
            {
              goto LABEL_107;
            }
          }

          else if (__OFSUB__(v33, v32))
          {
            goto LABEL_107;
          }

          v42 = type metadata accessor for __DataStorage();
          v43 = *(v42 + 48);
          v44 = *(v42 + 52);
          swift_allocObject();
          v45 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v30 = v45;
          v5 = v51;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = *(v2 + 16);
          v47 = *(v2 + 24);
          type metadata accessor for Data.RangeReference();
          v48 = swift_allocObject();
          *(v48 + 16) = v46;
          *(v48 + 24) = v47;

          v2 = v48;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v49 = __DataStorage._bytes.getter();
        if (!v49)
        {
          goto LABEL_115;
        }

        v39 = v49;
        result = __DataStorage._offset.getter();
        v40 = v8 - result;
        if (__OFSUB__(v8, result))
        {
          goto LABEL_94;
        }

        v41 = 0x8000000000000000;
LABEL_81:
        *(v39 + v40) = v28;
        v3 = v41 | v30;
        v1 = v52;
        *v52 = v2;
        v52[1] = v3;
        ++v8;
        goto LABEL_82;
      }

      if (v29 >> 62 == 1)
      {
        v30 = v29 & 0x3FFFFFFFFFFFFFFFLL;

        sub_100009548(v2, v29);
        *v1 = xmmword_1002BDC30;
        sub_100009548(0, 0xC000000000000000);
        if (v8 >= v2 >> 32 || v8 < v2)
        {
          goto LABEL_91;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter() && __OFSUB__(v2, __DataStorage._offset.getter()))
          {
            goto LABEL_108;
          }

          v34 = type metadata accessor for __DataStorage();
          v35 = *(v34 + 48);
          v36 = *(v34 + 52);
          swift_allocObject();
          v37 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v30 = v37;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v38 = __DataStorage._bytes.getter();
        if (!v38)
        {
          goto LABEL_114;
        }

        v39 = v38;
        result = __DataStorage._offset.getter();
        v40 = v8 - result;
        v5 = v51;
        if (__OFSUB__(v8, result))
        {
          goto LABEL_93;
        }

        v41 = 0x4000000000000000;
        goto LABEL_81;
      }

      result = sub_100009548(v2, v29);
      v53 = v2;
      LOWORD(v54) = v29;
      BYTE2(v54) = BYTE2(v29);
      HIBYTE(v54) = BYTE3(v29);
      LOBYTE(v55) = BYTE4(v29);
      HIBYTE(v55) = BYTE5(v29);
      v56 = BYTE6(v29);
      if (v8 >= BYTE6(v29))
      {
        goto LABEL_112;
      }

      *(&v53 + v8) = v28;
      v2 = v53;
      v3 = v50 & 0xF00000000000000 | v54 | ((v55 | (v56 << 16)) << 32);
      v1 = v52;
      *v52 = v53;
      v52[1] = v3;
      ++v8;
      v50 = v3;
      v5 = v51;
LABEL_82:
      if (v9 == v5)
      {
        return result;
      }
    }

    if (v10 != 2)
    {
      goto LABEL_116;
    }

    if (v8 < *(v2 + 16))
    {
      goto LABEL_96;
    }

    if (v8 >= *(v2 + 24))
    {
      goto LABEL_98;
    }

    v12 = __DataStorage._bytes.getter();
    if (!v12)
    {
      goto LABEL_118;
    }

    v13 = v12;
    v14 = __DataStorage._offset.getter();
    v15 = v8 - v14;
    if (__OFSUB__(v8, v14))
    {
      goto LABEL_100;
    }

    goto LABEL_33;
  }

  return result;
}

uint64_t sub_10012253C(uint64_t a1, int a2, int a3)
{
  LODWORD(v108) = a3;
  LODWORD(v107) = a2;
  v119 = type metadata accessor for TLVTag();
  v4 = *(v119 - 8);
  v5 = v4[8];
  v6 = __chkstk_darwin(v119);
  v8 = v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = v97 - v10;
  __chkstk_darwin(v9);
  v13 = v97 - v12;
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000403C(v14, qword_1003A1228);
  object = (v4 + 2);
  v16 = v4[2];
  v16(v13, a1, v119);
  v18 = Logger.logObject.getter();
  LODWORD(v104) = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v18, v104);
  v102 = v11;
  v101 = v8;
  v105 = v4;
  v100 = v4 + 2;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v103 = v15;
    v97[1] = v21;
    v110 = v21;
    *v20 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v22 = _typeName(_:qualified:)();
    v24 = sub_100008F6C(v22, v23, &v110);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1002C1790;
    v26 = a1;
    v27 = v119;
    *(v25 + 56) = v119;
    v28 = sub_10000BE5C((v25 + 32));
    v16(v28, v13, v27);
    *(v25 + 88) = &type metadata for UInt8;
    *(v25 + 64) = v107;
    *(v25 + 120) = &type metadata for UInt8;
    *(v25 + 96) = v108;
    object = showFunction(signature:_:)(0xD000000000000014, 0x800000010034F2A0, v25);
    v30 = v29;
    v31 = v105;

    v32 = v27;
    a1 = v26;
    v99 = v31[1];
    v99(v13, v32);
    v33 = sub_100008F6C(object, v30, &v110);

    *(v20 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v18, v104, "%s.%s", v20, 0x16u);
    swift_arrayDestroy();
    v15 = v103;
  }

  else
  {

    v99 = v4[1];
    v99(v13, v119);
  }

  v34 = TLVTag.dataRepresentation.getter();
  v36 = v35 >> 62;
  if ((v35 >> 62) > 1)
  {
    if (v36 != 2)
    {
LABEL_16:
      v37 = 0;
      goto LABEL_17;
    }

    v39 = *(v34 + 16);
    v38 = *(v34 + 24);
    v40 = __OFSUB__(v38, v39);
    v37 = v38 - v39;
    if (!v40)
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v36)
  {
    v37 = BYTE6(v35);
    goto LABEL_17;
  }

  v37 = WORD2(v34) - v34;
  if (__OFSUB__(HIDWORD(v34), v34))
  {
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  LOWORD(v110) = 16800;
  BYTE2(v110) = v107;
  BYTE3(v110) = v108;
  WORD2(v110) = v37;
  v111 = v34;
  v112 = v35;
  v113 = 0;
  sub_10000BC94(&v110, v109);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v110);
  v43 = os_log_type_enabled(v41, v42);
  v98 = v16;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v109[0] = v108;
    *v44 = 136446210;
    v45 = sub_100170F04(v110 | (WORD2(v110) << 32), v111, v112, v113);
    v47 = v46;
    v48 = Data.hexString()();
    object = v48._object;
    sub_100009548(v45, v47);
    v49 = sub_100008F6C(v48._countAndFlagsBits, v48._object, v109);

    *(v44 + 4) = v49;
    _os_log_impl(&_mh_execute_header, v41, v42, "C-APDU (GET TAG LIST): %{public}s", v44, 0xCu);
    sub_10000959C(v108);
  }

  sub_1000A0770(v110 | (WORD2(v110) << 32), v111, v112, v113, 1, &v114);
  v50 = v115;
  if (v115 >> 60 == 15)
  {
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "no response from getTagList", v53, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v54 = 0;
    swift_willThrow();
    goto LABEL_26;
  }

  v55 = v117;
  v56 = v118;
  v57 = v116;
  v108 = v114;
  sub_1000094F4(v114, v115);
  sub_1000094F4(v55, v56);
  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.info.getter();
  sub_10000BD44(&v114, &qword_10039E2C0, &unk_1002BFEB0);
  v60 = os_log_type_enabled(v58, v59);
  v106 = v56;
  v107 = v55;
  if (!v60)
  {

    object = v57;
    if (v57 != 36864)
    {
      goto LABEL_25;
    }

LABEL_28:
    v72 = v102;
    v73 = a1;
    v74 = v119;
    v98(v102, v73, v119);
    v75 = v101;
    static TLVTag.transactionResultData.getter();
    sub_100138C60(&qword_10039E260, &type metadata accessor for TLVTag);
    v76 = dispatch thunk of static Equatable.== infix(_:_:)();
    v77 = v99;
    v99(v75, v74);
    if (v76)
    {
      v77(v72, v119);
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      v80 = os_log_type_enabled(v78, v79);
      object = v108;
      if (!v80)
      {
LABEL_33:
        sub_10000BCF0(&v110);

LABEL_38:
        sub_1000094F4(object, v50);
        sub_10000BD44(&v114, &qword_10039E2C0, &unk_1002BFEB0);
        return object;
      }

      v81 = swift_slowAlloc();
      *v81 = 0;
      v82 = "Received DF81FE Transaction Result Data aka generalCardData";
    }

    else
    {
      static TLVTag.trxCipherAndKeyBlobs.getter();
      v83 = v119;
      v84 = dispatch thunk of static Equatable.== infix(_:_:)();
      v77(v75, v83);
      if (v84)
      {
        v77(v72, v119);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          *v87 = 0;
          _os_log_impl(&_mh_execute_header, v85, v86, "Received DF81FF Transaction Cipher and Key Blob", v87, 2u);
        }

        sub_10000BCF0(&v110);

        object = v108;
        goto LABEL_38;
      }

      static TLVTag.analyticsData.getter();
      v89 = v119;
      v90 = dispatch thunk of static Equatable.== infix(_:_:)();
      v77(v75, v89);
      v77(v72, v89);
      if ((v90 & 1) == 0)
      {
        object = v108;
        sub_1000094F4(v108, v50);
        sub_1000094F4(v107, v106);
        v78 = Logger.logObject.getter();
        v92 = static os_log_type_t.default.getter();
        sub_10000BD44(&v114, &qword_10039E2C0, &unk_1002BFEB0);
        if (!os_log_type_enabled(v78, v92))
        {
          goto LABEL_33;
        }

        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v109[0] = v94;
        *v93 = 136315138;
        v95 = Data.hexString()();
        v96 = sub_100008F6C(v95._countAndFlagsBits, v95._object, v109);

        *(v93 + 4) = v96;
        _os_log_impl(&_mh_execute_header, v78, v92, "Received Tag List: %s", v93, 0xCu);
        sub_10000959C(v94);

        goto LABEL_32;
      }

      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();
      v91 = os_log_type_enabled(v78, v79);
      object = v108;
      if (!v91)
      {
        goto LABEL_33;
      }

      v81 = swift_slowAlloc();
      *v81 = 0;
      v82 = "Received DF81FD Analytics Data";
    }

    _os_log_impl(&_mh_execute_header, v78, v79, v82, v81, 2u);
LABEL_32:

    goto LABEL_33;
  }

  v61 = swift_slowAlloc();
  v104 = v50;
  v62 = v61;
  v63 = swift_slowAlloc();
  v103 = v15;
  v109[0] = v63;
  *v62 = 136315394;
  v64 = Data.description.getter();
  v66 = sub_100008F6C(v64, v65, v109);

  *(v62 + 4) = v66;
  *(v62 + 12) = 2082;
  object = v57;
  sub_100004074(&qword_10039E268, &unk_1002C16F0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1002C1660;
  *(v67 + 56) = &type metadata for UInt16;
  *(v67 + 64) = &protocol witness table for UInt16;
  *(v67 + 32) = v57;
  v68 = String.init(format:_:)();
  v70 = sub_100008F6C(v68, v69, v109);

  *(v62 + 14) = v70;
  _os_log_impl(&_mh_execute_header, v58, v59, "R-APDU: %s, sw: %{public}s", v62, 0x16u);
  swift_arrayDestroy();

  v50 = v104;

  if (v57 == 36864)
  {
    goto LABEL_28;
  }

LABEL_25:
  sub_10001A3FC();
  swift_allocError();
  *v71 = object;
  swift_willThrow();
  sub_10000BD44(&v114, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_26:
  sub_10000BCF0(&v110);
  return object;
}

void sub_10012316C()
{
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000403C(v1, qword_1003A1228);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v4 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v5 = _typeName(_:qualified:)();
    v7 = sub_100008F6C(v5, v6, &v41);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2080;
    v8 = showFunction(signature:_:)(0xD000000000000013, 0x800000010034F280, _swiftEmptyArrayStorage);
    v10 = sub_100008F6C(v8, v9, &v41);

    *(v4 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s.%s", v4, 0x16u);
    swift_arrayDestroy();
  }

  LODWORD(v41) = 1952;
  WORD2(v41) = 0;
  v42 = xmmword_1002BDC30;
  v43 = 0;
  sub_10000BC94(&v41, v40);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v41);
  v13 = os_log_type_enabled(v11, v12);
  v46 = v0;
  if (v13)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v40[0] = v15;
    *v14 = 136315138;
    v16 = sub_100170CB0(v41 | (WORD2(v41) << 32), v42, *(&v42 + 1), v43);
    v18 = v17;
    v19 = Data.hexString()();
    sub_100009548(v16, v18);
    v20 = sub_100008F6C(v19._countAndFlagsBits, v19._object, v40);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "C-APDU (GET PAYMENT APP TYPE): %s", v14, 0xCu);
    sub_10000959C(v15);
  }

  sub_1000A0770(v41 | (WORD2(v41) << 32), v42, *(&v42 + 1), v43, 0, v44);
  v21 = v44[0];
  v22 = v44[1];
  v23 = v45;
  v24 = Logger.logObject.getter();
  if (v22 >> 60 == 15)
  {
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "no response for getPaymentAppType", v26, 2u);
    }

    sub_10001A3FC();
    swift_allocError();
    *v27 = 0;
    swift_willThrow();
    goto LABEL_27;
  }

  v28 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40[0] = v30;
    *v29 = 136315138;
    v31 = Data.hexString()();
    v32 = sub_100008F6C(v31._countAndFlagsBits, v31._object, v40);

    *(v29 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v24, v28, "R-APDU: %s", v29, 0xCu);
    sub_10000959C(v30);
  }

  if (v23 != 36864)
  {
    sub_10001A3FC();
    swift_allocError();
    *v34 = v23;
LABEL_26:
    swift_willThrow();
    sub_10000BD44(v44, &qword_10039E2C0, &unk_1002BFEB0);
LABEL_27:
    sub_10000BCF0(&v41);
    return;
  }

  v33 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v33 != 2)
    {
      goto LABEL_25;
    }

    v36 = *(v21 + 16);
    v35 = *(v21 + 24);
    v37 = __OFSUB__(v35, v36);
    v38 = v35 - v36;
    if (!v37)
    {
      if (v38 >= 1)
      {
        goto LABEL_22;
      }

LABEL_25:
      sub_10001A3FC();
      swift_allocError();
      *v39 = 1;
      goto LABEL_26;
    }

    __break(1u);
  }

  else
  {
    if (!v33)
    {
      if (!BYTE6(v22))
      {
        goto LABEL_25;
      }

LABEL_22:
      sub_10000BCF0(&v41);
      sub_1000094F4(v21, v22);
      sub_10000BD44(v44, &qword_10039E2C0, &unk_1002BFEB0);
      return;
    }

    if (!__OFSUB__(HIDWORD(v21), v21))
    {
      if (HIDWORD(v21) - v21 >= 1)
      {
        goto LABEL_22;
      }

      goto LABEL_25;
    }
  }

  __break(1u);
}

void sub_100123738()
{
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000403C(v0, qword_1003A1228);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    *v3 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v4 = _typeName(_:qualified:)();
    v6 = sub_100008F6C(v4, v5, &v50);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2080;
    v7 = showFunction(signature:_:)(0xD000000000000012, 0x800000010034F590, _swiftEmptyArrayStorage);
    v9 = sub_100008F6C(v7, v8, &v50);

    *(v3 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
  }

  v46 = 928;
  v47 = 0;
  v48 = xmmword_1002BDC30;
  v49 = 0;
  sub_10000BC94(&v46, &v50);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  sub_10000BCF0(&v46);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50 = v13;
    *v12 = 136315138;
    v14 = sub_100170CB0(v46 | (v47 << 32), v48, *(&v48 + 1), v49);
    v16 = v15;
    v17 = Data.hexString()();
    sub_100009548(v14, v16);
    v18 = sub_100008F6C(v17._countAndFlagsBits, v17._object, &v50);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "C-APDU (CLEAR TRX): %s", v12, 0xCu);
    sub_10000959C(v13);
  }

  sub_1000A0770(v46 | (v47 << 32), v48, *(&v48 + 1), v49, 0, &v50);
  v19 = v51;
  if (v51 >> 60 != 15)
  {
    v23 = v53;
    v24 = v54;
    v25 = v50;
    v26 = v52;
    sub_1000094F4(v50, v51);
    sub_1000094F4(v23, v24);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    sub_10000BD44(&v50, &qword_10039E2C0, &unk_1002BFEB0);
    if (os_log_type_enabled(v27, v28))
    {
      v44 = v26;
      v29 = swift_slowAlloc();
      v43 = v25;
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = 136315138;
      v31 = Data.hexString()();
      v32 = sub_100008F6C(v31._countAndFlagsBits, v31._object, &v45);

      *(v29 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v27, v28, "R-APDU: %s", v29, 0xCu);
      sub_10000959C(v30);
      v25 = v43;

      v26 = v44;
    }

    sub_10001A3FC();
    swift_allocError();
    *v33 = v26;
    v34 = sub_100171840(36864);

    if (v34)
    {
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v35, v36, "clear transaction success", v37, 2u);
LABEL_18:
      }
    }

    else
    {
      sub_1000094F4(v25, v19);
      sub_1000094F4(v23, v24);
      v35 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      sub_10000BD44(&v50, &qword_10039E2C0, &unk_1002BFEB0);
      if (os_log_type_enabled(v35, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        swift_allocError();
        *v41 = v26;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&_mh_execute_header, v35, v38, "Error (%@) on CLEAR TRANSACTION command", v39, 0xCu);
        sub_10000BD44(v40, &unk_10039E220, &qword_1002C3D60);

        goto LABEL_18;
      }
    }

    sub_10000BCF0(&v46);

    sub_10000BD44(&v50, &qword_10039E2C0, &unk_1002BFEB0);
    return;
  }

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Error on CLEAR TRANSACTION command", v22, 2u);
  }

  sub_10000BCF0(&v46);
}

unint64_t sub_100123E34(int a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, void *a6)
{
  v12 = type metadata accessor for TLVTag();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v142 = &v134[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for TLV();
  v143 = *(v15 - 8);
  v144 = v15;
  v16 = *(v143 + 64);
  __chkstk_darwin(v15);
  v141 = &v134[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_10000403C(v18, qword_1003A1228);
  sub_1000094F4(a2, a3);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_100009548(a2, a3);
  v22 = os_log_type_enabled(v20, v21);
  v140 = a6;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v146 = v19;
    v139 = v24;
    v148 = v24;
    *v23 = 136315394;
    sub_10000411C(0, a4, a5);
    v25 = _typeName(_:qualified:)();
    v27 = sub_100008F6C(v25, v26, &v148);

    *(v23 + 4) = v27;
    *(v23 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1002C1670;
    *(v28 + 56) = &type metadata for UInt8;
    *(v28 + 32) = a1;
    v29 = Data.hexString()();
    *(v28 + 88) = &type metadata for String;
    *(v28 + 64) = v29;
    v30 = showFunction(signature:_:)(0xD000000000000032, 0x800000010034F240, v28);
    v31 = a3;
    v32 = a2;
    v33 = a1;
    v35 = v34;

    a4 = sub_100008F6C(v30, v35, &v148);
    a1 = v33;
    a2 = v32;
    a3 = v31;

    *(v23 + 14) = a4;
    _os_log_impl(&_mh_execute_header, v20, v21, "%s.%s", v23, 0x16u);
    swift_arrayDestroy();
    v19 = v146;
  }

  v36 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v36 != 2)
    {
      goto LABEL_15;
    }

    v39 = *(a2 + 16);
    v38 = *(a2 + 24);
    v40 = __OFSUB__(v38, v39);
    v37 = v38 - v39;
    if (!v40)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v36)
  {
    v37 = BYTE6(a3);
    goto LABEL_14;
  }

  LODWORD(v37) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    goto LABEL_93;
  }

  v37 = v37;
LABEL_14:
  if ((v37 - 31) < 0xFFFFFFFFFFFFFFE2)
  {
LABEL_15:
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "wrong length for kernelIdentityKeyIdentifier";
LABEL_25:
      _os_log_impl(&_mh_execute_header, v41, v42, v44, v43, 2u);

      goto LABEL_26;
    }

    goto LABEL_26;
  }

  v45 = objc_opt_self();
  if (![v45 isFeatureAppleSSESupported])
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      v44 = "SSE feature not supported";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v46 = objc_opt_self();
  v148 = 0;
  v47 = [v46 embeddedSecureElementWithError:&v148];
  if (!v47)
  {
    v56 = v148;
    _convertNSErrorToError(_:)();

    goto LABEL_27;
  }

  v48 = v47;
  v49 = v148;
  v50 = [v48 serialNumber];

  if (!v50)
  {
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v41, v42))
    {
      goto LABEL_26;
    }

    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "no seid";
    goto LABEL_25;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  a4 = v51;

  v52 = Data.init(hexString:)();
  if (v53 >> 60 != 15)
  {
    v138 = v52;
    v139 = v53;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v58 = [v45 getSignedDeviceData:isa];

    if (!v58)
    {
LABEL_47:
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "failed to get signed device data or wrong length", v85, 2u);
      }

      sub_10001A3FC();
      swift_allocError();
      *v86 = 0;
      swift_willThrow();
LABEL_50:
      sub_10001A074(v138, v139);
      return a4;
    }

    v59 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v60;

    v61 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v61 != 2)
      {
LABEL_46:
        sub_100009548(v59, a4);
        goto LABEL_47;
      }

      v64 = *(v59 + 16);
      v63 = *(v59 + 24);
      v40 = __OFSUB__(v63, v64);
      v62 = v63 - v64;
      if (!v40)
      {
LABEL_42:
        if (v62 == 45)
        {
          static TLVTag.kernelIdentityKey.getter();
          sub_1000094F4(a2, a3);
          v137 = a4;
          v65 = v59;
          v66 = v141;
          TLV.init(tag:value:)();
          v67 = TLV.dataRepresentation.getter();
          v136 = v68;
          v69 = v144;
          v70 = *(v143 + 8);
          v70(v66, v144);
          static TLVTag.sepData.getter();
          sub_1000094F4(v65, v137);
          v143 = v65;
          v71 = v67;
          TLV.init(tag:value:)();
          v72 = TLV.dataRepresentation.getter();
          v74 = v73;
          v70(v66, v69);
          v75 = v136;
          v153 = v71;
          v154 = v136;
          v151 = &type metadata for Data;
          v152 = &protocol witness table for Data;
          v148 = v72;
          v149 = v74;
          v76 = sub_10000BE18(&v148, &type metadata for Data);
          v77 = *v76;
          v78 = v76[1];
          sub_1000094F4(v71, v75);
          v142 = v72;
          v144 = v74;
          sub_1000094F4(v72, v74);
          sub_1000A1C34(v77, v78);
          sub_10000959C(&v148);
          v79 = v153;
          v80 = v154;
          v81 = v154 >> 62;
          if ((v154 >> 62) > 1)
          {
            if (v81 != 2)
            {
LABEL_58:
              v82 = 0;
              goto LABEL_59;
            }

            v88 = *(v153 + 16);
            v87 = *(v153 + 24);
            v40 = __OFSUB__(v87, v88);
            v82 = v87 - v88;
            if (!v40)
            {
              goto LABEL_59;
            }

            __break(1u);
          }

          else if (!v81)
          {
            v82 = BYTE6(v154);
LABEL_59:
            v145 = v71;
            LOWORD(v148) = -12672;
            WORD1(v148) = a1;
            WORD2(v148) = v82;
            v149 = v79;
            v150 = v80;
            LOWORD(v151) = 0;
            sub_10000BC94(&v148, v147);
            v146 = v19;
            v89 = Logger.logObject.getter();
            v90 = static os_log_type_t.info.getter();
            sub_10000BCF0(&v148);
            v91 = os_log_type_enabled(v89, v90);
            v135 = a1;
            if (v91)
            {
              v92 = swift_slowAlloc();
              v147[0] = swift_slowAlloc();
              *v92 = 136315394;
              if (a1)
              {
                v93 = 542001488;
              }

              else
              {
                v93 = 0;
              }

              if (a1)
              {
                v94 = 0xE400000000000000;
              }

              else
              {
                v94 = 0xE000000000000000;
              }

              v95 = sub_100008F6C(v93, v94, v147);

              *(v92 + 4) = v95;
              *(v92 + 12) = 2080;
              v96 = sub_100170F04(v148 | (WORD2(v148) << 32), v149, v150, v151);
              v98 = v97;
              v99 = Data.hexString()();
              sub_100009548(v96, v98);
              v100 = sub_100008F6C(v99._countAndFlagsBits, v99._object, v147);

              *(v92 + 14) = v100;
              _os_log_impl(&_mh_execute_header, v89, v90, "C-APDU (GET %sKEY ATTESTATION): %s", v92, 0x16u);
              swift_arrayDestroy();
            }

            (v140)(v155, v148 | (WORD2(v148) << 32), v149, v150, v151, 1);
            a4 = v155[0];
            v101 = v155[1];
            v102 = v156;
            v103 = Logger.logObject.getter();
            if (v101 >> 60 == 15)
            {
              v104 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v103, v104))
              {
                v105 = swift_slowAlloc();
                v106 = swift_slowAlloc();
                v147[0] = v106;
                *v105 = 136315138;
                if (v135)
                {
                  v107 = 542001488;
                }

                else
                {
                  v107 = 0;
                }

                if (v135)
                {
                  v108 = 0xE400000000000000;
                }

                else
                {
                  v108 = 0xE000000000000000;
                }

                v109 = sub_100008F6C(v107, v108, v147);

                *(v105 + 4) = v109;
                _os_log_impl(&_mh_execute_header, v103, v104, "failed to get %skey attestation", v105, 0xCu);
                sub_10000959C(v106);
              }

              v110 = v137;
              v111 = v143;
              a4 = v136;
              v112 = v145;
              sub_10001A3FC();
              swift_allocError();
              *v113 = 0;
              swift_willThrow();
              sub_10000BCF0(&v148);
              sub_100009548(v142, v144);
              sub_100009548(v112, a4);
              v114 = v111;
            }

            else
            {
              v115 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v103, v115))
              {
                v116 = swift_slowAlloc();
                v140 = swift_slowAlloc();
                v141 = swift_slowAlloc();
                v147[0] = v141;
                *v116 = 136315394;
                v117 = Data.description.getter();
                v119 = sub_100008F6C(v117, v118, v147);

                *(v116 + 4) = v119;
                *(v116 + 12) = 2112;
                v120 = v102;
                sub_10001A3FC();
                swift_allocError();
                *v121 = v102;
                v122 = _swift_stdlib_bridgeErrorToNSError();
                *(v116 + 14) = v122;
                v123 = v140;
                *v140 = v122;
                _os_log_impl(&_mh_execute_header, v103, v115, "R-APDU: %s, sw: %@", v116, 0x16u);
                sub_10000BD44(v123, &unk_10039E220, &qword_1002C3D60);

                sub_10000959C(v141);
              }

              else
              {

                v120 = v102;
              }

              v124 = v135;
              v125 = v145;
              if (v120 == 36864)
              {
                sub_10001A074(v138, v139);
                sub_100009548(v143, v137);
                sub_10000BCF0(&v148);
                sub_100009548(v142, v144);
                sub_100009548(v125, v136);
                sub_1000094F4(a4, v101);
                sub_10000BD44(v155, &qword_10039E2C0, &unk_1002BFEB0);
                return a4;
              }

              v126 = Logger.logObject.getter();
              v127 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v126, v127))
              {
                v128 = swift_slowAlloc();
                a4 = swift_slowAlloc();
                v147[0] = a4;
                *v128 = 136315138;
                if (v124)
                {
                  v129 = 542001488;
                }

                else
                {
                  v129 = 0;
                }

                if (v124)
                {
                  v130 = 0xE400000000000000;
                }

                else
                {
                  v130 = 0xE000000000000000;
                }

                v131 = sub_100008F6C(v129, v130, v147);

                *(v128 + 4) = v131;
                _os_log_impl(&_mh_execute_header, v126, v127, "failed to get %skey attestation", v128, 0xCu);
                sub_10000959C(a4);
              }

              v110 = v137;
              v132 = v136;
              sub_10001A3FC();
              swift_allocError();
              *v133 = v120;
              swift_willThrow();
              sub_10000BD44(v155, &qword_10039E2C0, &unk_1002BFEB0);
              sub_10000BCF0(&v148);
              sub_100009548(v142, v144);
              sub_100009548(v125, v132);
              v114 = v143;
            }

            sub_100009548(v114, v110);
            goto LABEL_50;
          }

          v82 = WORD2(v79) - v79;
          if (!__OFSUB__(HIDWORD(v79), v79))
          {
            goto LABEL_59;
          }

          __break(1u);
          goto LABEL_58;
        }

        goto LABEL_46;
      }

      __break(1u);
    }

    else if (!v61)
    {
      v62 = BYTE6(a4);
      goto LABEL_42;
    }

    LODWORD(v62) = HIDWORD(v59) - v59;
    if (!__OFSUB__(HIDWORD(v59), v59))
    {
      v62 = v62;
      goto LABEL_42;
    }

LABEL_93:
    __break(1u);
  }

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    v44 = "failed to get SEID";
    goto LABEL_25;
  }

LABEL_26:

  sub_10001A3FC();
  swift_allocError();
  *v54 = 0;
LABEL_27:
  swift_willThrow();
  return a4;
}

uint8_t *sub_100124DB4()
{
  v0 = type metadata accessor for TLVTag();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D4B0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A1228);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = v0;
    v9 = v8;
    v18 = swift_slowAlloc();
    v20 = v18;
    *v9 = 136315394;
    sub_10000411C(0, &unk_10039E250, NFSecureElementReaderSession_ptr);
    v10 = _typeName(_:qualified:)();
    v12 = sub_100008F6C(v10, v11, &v20);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    v13 = showFunction(signature:_:)(0x61484B454B746567, 0xEE00292873656873, _swiftEmptyArrayStorage);
    v15 = sub_100008F6C(v13, v14, &v20);

    *(v9 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s.%s", v9, 0x16u);
    swift_arrayDestroy();

    v0 = v19;
  }

  static TLVTag.transactionAndPINKEKHashes.getter();
  v16 = sub_10011E694(v4, sub_1000A0770);
  (*(v1 + 8))(v4, v0);
  return v16;
}

uint64_t sub_100125074()
{
  v0 = type metadata accessor for Logger();
  sub_100003FD8(v0, qword_1003A3A90);
  sub_10000403C(v0, qword_1003A3A90);
  sub_10000411C(0, &qword_1003A26E0, SPRLogger_ptr);
  return static SPRLogger.reader.getter();
}

uint64_t sub_1001250E0()
{
  v0 = type metadata accessor for OSSignposter();
  sub_100003FD8(v0, qword_1003A3AA8);
  v1 = sub_10000403C(v0, qword_1003A3AA8);
  if (qword_10039D730 != -1)
  {
    swift_once();
  }

  v2 = sub_10000403C(v0, qword_1003A6EA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10012540C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v10 = v9;
  v180 = a8;
  v171 = a6;
  v182 = a2;
  v181 = a9;
  v177 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(*(v177 - 1) + 64);
  __chkstk_darwin(v177);
  *&v176 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for OS_dispatch_queue.Attributes();
  v18 = *(*(v175 - 8) + 64);
  __chkstk_darwin(v175);
  v174 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v20 = *(v173 - 1);
  v21 = *(v20 + 64);
  __chkstk_darwin(v173);
  v172 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v170 = &v146 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_lockedState;
  sub_100004074(&unk_1003A3C60, &qword_1002C8308);
  v27 = swift_allocObject();
  *(v27 + 20) = 0;
  *(v27 + 16) = 0;
  v160 = v26;
  *&v10[v26] = v27;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation__isFinished] = 0;
  v28 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
  v29 = sub_1000207FC(4998, 0, 0, 0);
  v161 = v28;
  *&v10[v28] = v29;
  v162 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse] = _swiftEmptyArrayStorage;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_skipLoyalty] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming] = 0;
  v30 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readResult;
  v31 = sub_100182BA0(_swiftEmptyArrayStorage);
  v163 = v30;
  *&v10[v30] = v31;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotRemoveCard] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_cardTearSent] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotSeePhone] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerModeForPaymentStarted] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackTransactionStarted] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackFlowEnabled] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readCompleteSuccessSent] = 0;
  v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_lastTransactionOutcomeReceived] = 0;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus] = 256;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_pollingTracker] = 0;
  v155 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession] = a1;
  v152 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig] = v182;
  v153 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback] = a3;
  v159 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor;
  v167 = a4;
  sub_10000CCE4(a4, &v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor]);
  v156 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics] = a5;
  v151 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_operationQueue;
  v32 = v171;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_operationQueue] = v171;
  v158 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_managedData;
  v166 = a7;
  sub_10000CCE4(a7, &v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_managedData]);
  v157 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureElement;
  sub_10000CCE4(v180, &v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureElement]);
  v154 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureTimeKeeper;
  sub_10000CCE4(v181, &v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureTimeKeeper]);
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount] = 0;
  v33 = sub_10000411C(0, &qword_10039D7D8, OS_dispatch_queue_ptr);
  v168 = "begin vas polling";
  v169 = v33;
  v179 = a1;

  v165 = a3;

  v178 = a5;

  v171 = v32;
  static DispatchQoS.userInteractive.getter();
  (*(v20 + 104))(v172, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v173);
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100138C60(&unk_10039E310, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100004074(&qword_10039D7E0, &unk_1002BDC40);
  v173 = &protocol conformance descriptor for [A];
  sub_10001A570(&qword_10039E320, &qword_10039D7E0, &unk_1002BDC40);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v34 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v175 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue] = v34;
  v187 = nullsub_1;
  v188 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  v35 = v182;
  aBlock[2] = sub_100003974;
  v186 = &unk_1003848F8;
  _Block_copy(aBlock);
  v184 = _swiftEmptyArrayStorage;
  sub_100138C60(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36 = type metadata accessor for DispatchWorkItem();
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  swift_allocObject();
  v39 = DispatchWorkItem.init(flags:block:)();
  v40 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_timeoutWorkItem;
  v177 = v10;
  *&v10[OBJC_IVAR____TtC14softposreaderd13ReadOperation_timeoutWorkItem] = v39;
  if (*(v35 + 16) == 1)
  {
    goto LABEL_2;
  }

  sub_100004074(&qword_1003A5D40, &qword_1002C1740);
  v42 = swift_allocObject();
  v176 = xmmword_1002C1660;
  *(v42 + 16) = xmmword_1002C1660;
  if (qword_10039D3C8 != -1)
  {
    swift_once();
  }

  v43 = *(&xmmword_1003A6AA0 + 1);
  *(v42 + 32) = xmmword_1003A6AA0;
  *(v42 + 40) = v43;

  isa = Array._bridgeToObjectiveC()().super.isa;

  aBlock[0] = 0;
  v45 = v179;
  v46 = [v179 selectApplets:isa error:aBlock];

  if (!v46)
  {
    v59 = aBlock[0];
    v60 = _convertNSErrorToError(_:)();

    swift_willThrow();
    aBlock[0] = v60;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_23:

      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      sub_10000403C(v77, qword_1003A3A90);
      swift_errorRetain();
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        v174 = v40;
        v81 = v80;
        v82 = swift_slowAlloc();
        aBlock[0] = v82;
        *v81 = 136315138;
        v184 = v60;
        swift_errorRetain();
        v83 = String.init<A>(describing:)();
        v85 = sub_100008F6C(v83, v84, aBlock);

        *(v81 + 4) = v85;
        v45 = v179;
        _os_log_impl(&_mh_execute_header, v78, v79, "Error from selectApplets: %s", v81, 0xCu);
        sub_10000959C(v82);

        v40 = v174;
      }

      v76 = v161;
      v75 = v162;
      sub_1000207FC(4037, 0, 0, 0);
      swift_willThrow();

      goto LABEL_37;
    }

    v61 = v40;
    *&v176 = v184;
    v62 = [v184 domain];
    v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v65 = v64;

    if (v63 == String.init(cString:)() && v65 == v66)
    {

      v40 = v61;
    }

    else
    {
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v40 = v61;
      if ((v67 & 1) == 0)
      {
LABEL_22:

        v45 = v179;
        goto LABEL_23;
      }
    }

    v68 = [v176 code];
    if ((v68 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v68))
    {
      if (v68 == 64)
      {

        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        sub_10000403C(v69, qword_1003A3A90);
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();
        v72 = os_log_type_enabled(v70, v71);
        v73 = v179;
        if (v72)
        {
          v74 = swift_slowAlloc();
          *v74 = 0;
          _os_log_impl(&_mh_execute_header, v70, v71, "Cannot select pay applet. Reader temporarily unavailable. May be from prohibit timer.", v74, 2u);
        }

        sub_1000207FC(4036, 0, 0, 0);
        swift_willThrow();

        sub_10000959C(v181);
        sub_10000959C(v180);
        sub_10000959C(v166);
        sub_10000959C(v167);

        v76 = v161;
        v75 = v162;
        goto LABEL_38;
      }

      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_59;
  }

  v47 = aBlock[0];
  v48 = v164;
  v49 = sub_10011DBE4(&unk_10039E250, NFSecureElementReaderSession_ptr, sub_1000A0770);
  v51 = v48;
  if (v48)
  {
LABEL_32:
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_10000403C(v90, qword_1003A3A90);
    swift_errorRetain();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *&v176 = swift_slowAlloc();
      aBlock[0] = v176;
      *v93 = 136315138;
      v184 = v51;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v94 = String.init<A>(describing:)();
      v96 = sub_100008F6C(v94, v95, aBlock);

      *(v93 + 4) = v96;
      _os_log_impl(&_mh_execute_header, v91, v92, "Error on getAppletVersion: %s", v93, 0xCu);
      sub_10000959C(v176);
    }

    v76 = v161;
    v75 = v162;
    v97 = v179;
    sub_1000207FC(4041, 0, 0, 0);
    swift_willThrow();

LABEL_37:

    sub_10000959C(v181);
    sub_10000959C(v180);
    sub_10000959C(v166);
    sub_10000959C(v167);
    goto LABEL_38;
  }

  v52 = v49;
  v53 = v50;
  v174 = v40;
  v173 = sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
  inited = swift_initStackObject();
  *(inited + 16) = v176;
  *(inited + 32) = 5;
  *(inited + 64) = &type metadata for String;
  *(inited + 40) = v52;
  *(inited + 48) = v53;

  sub_10018399C(inited);
  swift_setDeallocating();
  v55 = sub_10000BD44(inited + 32, &qword_10039EC60, &qword_1002C1F80);
  v56 = *(v178 + 56);
  __chkstk_darwin(v55);
  os_unfair_lock_lock((v56 + 32));
  sub_100117CD8((v56 + 16));
  os_unfair_lock_unlock((v56 + 32));

  v57 = sub_1001380E4(v52, v53);

  v58 = sub_1001385A8(v57);

  if (!v58)
  {
    v40 = v174;
    if (qword_10039D628 == -1)
    {
LABEL_29:
      v86 = type metadata accessor for Logger();
      sub_10000403C(v86, qword_1003A3A90);
      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&_mh_execute_header, v87, v88, "applet version not acceptable", v89, 2u);
      }

      v51 = sub_1000207FC(4041, 0, 0, 0);
      swift_willThrow();
      goto LABEL_32;
    }

LABEL_59:
    swift_once();
    goto LABEL_29;
  }

  v106 = sub_10011D610(&unk_10039E250, NFSecureElementReaderSession_ptr, sub_1000A0770);
  v108 = v107;
  v109 = v182;
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v110 = type metadata accessor for Logger();
  v111 = sub_10000403C(v110, qword_1003A3A90);

  v172 = v111;
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v112, v113))
  {
    v114 = v106;
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    aBlock[0] = v116;
    *v115 = 136446210;
    *(v115 + 4) = sub_100008F6C(v114, v108, aBlock);
    _os_log_impl(&_mh_execute_header, v112, v113, "GlobalId: %{public}s", v115, 0xCu);
    sub_10000959C(v116);
    v109 = v182;

    v106 = v114;
  }

  v117 = swift_initStackObject();
  *(v117 + 16) = v176;
  *(v117 + 32) = 6;
  v118 = v117 + 32;
  *(v117 + 64) = &type metadata for String;
  *(v117 + 40) = v106;
  *(v117 + 48) = v108;
  sub_10018399C(v117);
  swift_setDeallocating();
  v119 = sub_10000BD44(v118, &qword_10039EC60, &qword_1002C1F80);
  v120 = *(v178 + 56);
  __chkstk_darwin(v119);
  os_unfair_lock_lock((v120 + 32));
  sub_100117CD8((v120 + 16));
  os_unfair_lock_unlock((v120 + 32));

  v121 = *(v109 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID + 8);
  v122 = v181;
  v123 = v179;
  if (!v121)
  {
    goto LABEL_50;
  }

  v124 = *(v109 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID);
  v125 = *(v109 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_profileID + 8);

  if ((sub_10011F680(v124, v121, &unk_10039E250, NFSecureElementReaderSession_ptr, sub_1000A0770) & 1) == 0)
  {

LABEL_50:
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&_mh_execute_header, v131, v132, "activateProfile Error", v133, 2u);
      v122 = v181;
    }

    sub_1000207FC(4039, 0, 0, 0);
    swift_willThrow();

    sub_10000959C(v122);
    sub_10000959C(v180);
    sub_10000959C(v166);
    sub_10000959C(v167);
    v76 = v161;
    v75 = v162;
    v40 = v174;
    goto LABEL_38;
  }

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.default.getter();

  v128 = os_log_type_enabled(v126, v127);
  v170 = 0;
  if (v128)
  {
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    aBlock[0] = v130;
    *v129 = 136446210;
    *(v129 + 4) = sub_100008F6C(v124, v121, aBlock);
    _os_log_impl(&_mh_execute_header, v126, v127, "ProfileId activated: %{public}s", v129, 0xCu);
    sub_10000959C(v130);
  }

  if (*(v109 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_isSAF) == 1)
  {
    sub_100028230(v124, v121, 41);

    v186 = &type metadata for Bool;
    LOBYTE(aBlock[0]) = 1;
    swift_beginAccess();
    sub_10002CFD4(aBlock, 0x4641537369, 0xE500000000000000);
    swift_endAccess();
  }

  else
  {
    sub_100028230(v124, v121, 40);
  }

  LODWORD(v164) = *(v109 + 48);
  v134 = *(v109 + 64);
  *&v176 = *(v109 + 56);
  v173 = v134;
  v135 = *(v109 + 80);
  v136 = *(v109 + 88);
  v138 = *(v109 + 96);
  v137 = *(v109 + 104);
  v140 = *(v109 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf);
  v139 = *(v109 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8);
  v141 = *(v109 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes);
  v142 = *(v109 + 40);
  v147 = *(v109 + 32);
  v148 = v142;
  v149 = *(v109 + 72);
  sub_1000094F4(v176, v134);
  sub_1000094F4(v135, v136);
  sub_1000094F4(v138, v137);
  sub_1000094F4(v140, v139);

  v150 = v139;
  v145 = v139;
  v168 = v140;
  v169 = v137;
  v172 = v138;
  v143 = v179;
  v144 = v170;
  sub_10011FCA8(v147, v148, v164, v176, v173, v149, v135, v136, v189, v138, v137, v140, v145, v141, 1u, 2u, v181);
  v164 = v144;
  if (!v144)
  {

    sub_100009548(v168, v150);
    sub_100009548(v172, v169);
    sub_100009548(v135, v136);
    sub_100009548(v176, v173);
    sub_1000A1E5C(v189);
    *(v178 + 180) = v190;
LABEL_2:
    Operation = type metadata accessor for ReadOperation();
    v183.receiver = v177;
    v183.super_class = Operation;
    objc_msgSendSuper2(&v183, "init");

    sub_10000959C(v181);
    sub_10000959C(v180);
    sub_10000959C(v166);
    sub_10000959C(v167);
    return;
  }

  sub_100009548(v168, v150);
  sub_100009548(v172, v169);
  sub_100009548(v135, v136);
  sub_100009548(v176, v173);

  sub_10000959C(v181);
  sub_10000959C(v180);
  sub_10000959C(v166);
  sub_10000959C(v167);
  v76 = v161;
  v75 = v162;
  v40 = v174;
LABEL_38:
  v98 = v177;

  v99 = *(v98 + v160);

  v100 = *(v98 + v152);

  v101 = *(v98 + v153);

  v102 = *(v98 + v40);

  sub_10000959C((v98 + v159));
  v103 = *(v98 + v156);

  sub_10000959C((v98 + v158));
  sub_10000959C((v98 + v157));
  sub_10000959C((v98 + v154));
  v104 = *(v98 + v75);

  v105 = *(v98 + v163);

  type metadata accessor for ReadOperation();
  swift_deallocPartialClassInstance();
}

id sub_100126E70()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x74696E696564, 0xE600000000000000, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_timeoutWorkItem];

  dispatch thunk of DispatchWorkItem.cancel()();

  Operation = type metadata accessor for ReadOperation();
  v16.receiver = v1;
  v16.super_class = Operation;
  return objc_msgSendSuper2(&v16, "dealloc");
}

uint64_t sub_100127198()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v6 = *(v16 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  Operation = type metadata accessor for ReadOperation();
  v19.receiver = v0;
  v19.super_class = Operation;
  objc_msgSendSuper2(&v19, "cancel");
  v15[1] = *&v0[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  aBlock[4] = sub_100138C58;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_1003848D0;
  v12 = _Block_copy(aBlock);
  v13 = v0;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100138C60(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v2 + 8))(v5, v1);
  (*(v6 + 8))(v9, v16);
}

uint64_t sub_100127480(uint64_t a1)
{
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ReadOperation cancel()", v5, 2u);
  }

  v6 = *(a1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback);
  sub_100100D88(2, *(*(a1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + 16));
  sub_1001276D4();
  sub_10000CCE4(a1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_managedData, v9);
  sub_10000BE18(v9, v9[3]);
  type metadata accessor for DefaultManagedDictionary();
  sub_10017A944();
  if (v11)
  {
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    if (swift_dynamicCast())
    {
      sub_10000959C(v9);
      sub_100100FC0(v8);
    }

    else
    {
      return sub_10000959C(v9);
    }
  }

  else
  {
    sub_10000959C(v9);
    return sub_10000BD44(v10, &qword_10039E248, &qword_1002C23D0);
  }
}

void sub_1001276D4()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000010, 0x8000000100346B20, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v15);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  if ([v0 isExecuting])
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "ReadOperation isExecuting", v14, 2u);
    }

    if (v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerModeForPaymentStarted] == 1)
    {

      sub_100127CE8(0);
    }

    else
    {

      sub_100127988();
    }
  }

  else
  {

    sub_100128B38();
  }
}

void sub_100127988()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v24);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0x53415665736F6C63, 0xEA00000000002928, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v24);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v12 = *&v0[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
  v24 = 0;
  if ([v12 stopVASPolling:&v24])
  {
    v13 = v24;
  }

  else
  {
    v14 = v24;
    v15 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v23 = v15;
      swift_errorRetain();
      sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
      v20 = String.init<A>(describing:)();
      v22 = sub_100008F6C(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "stopVASPolling error: %s", v18, 0xCu);
      sub_10000959C(v19);
    }

    else
    {
    }
  }

  if ([v1 isCancelled])
  {
    sub_100127CE8(0);
  }
}

void sub_100127CE8(char a1)
{
  swift_getObjectType();
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000403C(v3, qword_1003A3A90);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v6 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100008F6C(v7, v8, &v25);

    *(v6 + 4) = v9;
    *(v6 + 12) = 2080;
    sub_100004074(&qword_1003A6740, &unk_1002C2930);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1002C1660;
    *(v10 + 56) = &type metadata for Bool;
    *(v10 + 32) = a1 & 1;
    v11 = showFunction(signature:_:)(0xD000000000000024, 0x800000010034F5B0, v10);
    v13 = v12;

    v14 = sub_100008F6C(v11, v13, &v25);

    *(v6 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s.%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerModeForPaymentStarted) == 1)
  {
    v15 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
    v25 = 0;
    if ([v15 stop:&v25])
    {
      v16 = v25;
      if ((a1 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_12:
      sub_1001280BC();
      return;
    }

    v17 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v18, v19))
    {

      if (a1)
      {
        goto LABEL_12;
      }

      goto LABEL_14;
    }

    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315138;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    v22 = String.init<A>(describing:)();
    v24 = sub_100008F6C(v22, v23, &v25);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "Stop Reader Mode Error from NFSecureElementReaderSession stop(): %s", v20, 0xCu);
    sub_10000959C(v21);
  }

  if (a1)
  {
    goto LABEL_12;
  }

LABEL_14:
  sub_100128B38();
}

void sub_1001280BC()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v2 - 8);
  v3 = *(v25 + 64);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A3A90);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v13 = 136315394;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100008F6C(v14, v15, aBlock);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    v17 = showFunction(signature:_:)(0xD000000000000026, 0x800000010034F530, _swiftEmptyArrayStorage);
    v19 = sub_100008F6C(v17, v18, aBlock);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
  }

  v20 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  aBlock[4] = sub_100138BF8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100384808;
  v22 = _Block_copy(aBlock);
  v1;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_100138C60(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
  sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v25 + 8))(v5, v2);
  (*(v23 + 8))(v9, v24);

  sub_100128B38();
}

uint64_t sub_10012850C(uint64_t a1)
{
  v48 = type metadata accessor for OSSignpostError();
  v50 = *(v48 - 8);
  v2 = *(v50 + 64);
  __chkstk_darwin(v48);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v47 - v11;
  __chkstk_darwin(v10);
  v14 = &v47 - v13;
  if (qword_10039D630 != -1)
  {
    swift_once();
  }

  v49 = v4;
  v15 = type metadata accessor for OSSignposter();
  sub_10000403C(v15, qword_1003A3AA8);
  static OSSignpostID.exclusive.getter();
  v16 = OSSignposter.logHandle.getter();
  v17 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v17, v19, "reader-clear_transaction_for_payment", "begin clear transaction for payment", v18, 2u);
  }

  (*(v6 + 16))(v12, v14, v5);
  v20 = type metadata accessor for OSSignpostIntervalState();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  OSSignpostIntervalState.init(id:isOpen:)();
  v23 = *(v6 + 8);
  v23(v14, v5);
  v24 = *(a1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
  sub_100004074(&qword_1003A5D40, &qword_1002C1740);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1002C1660;
  if (qword_10039D3C8 != -1)
  {
    swift_once();
  }

  v26 = *(&xmmword_1003A6AA0 + 1);
  *(v25 + 32) = xmmword_1003A6AA0;
  *(v25 + 40) = v26;

  isa = Array._bridgeToObjectiveC()().super.isa;

  v52 = 0;
  v28 = [v24 selectApplets:isa error:&v52];

  if (v28)
  {
    v29 = v52;
    sub_100123738();
  }

  else
  {
    v30 = v52;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000403C(v31, qword_1003A3A90);
    swift_errorRetain();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      swift_errorRetain();
      v36 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 4) = v36;
      *v35 = v36;
      _os_log_impl(&_mh_execute_header, v32, v33, "Failed to select applet to clear transaction: %@", v34, 0xCu);
      sub_10000BD44(v35, &unk_10039E220, &qword_1002C3D60);
    }

    else
    {
    }
  }

  v37 = v50;
  v38 = v51;
  v39 = v49;
  v40 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v41 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    v42 = v48;
    if ((*(v37 + 88))(v39, v48) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v43 = "[Error] Interval already ended";
    }

    else
    {
      (*(v37 + 8))(v39, v42);
      v43 = "end clear transaction for payment";
    }

    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v40, v41, v45, "reader-clear_transaction_for_payment", v43, v44, 2u);
  }

  return (v23)(v38, v5);
}

void sub_100128B38()
{
  v1 = v0;
  swift_getObjectType();
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000403C(v2, qword_1003A3A90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = _typeName(_:qualified:)();
    v8 = sub_100008F6C(v6, v7, &v12);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    v9 = showFunction(signature:_:)(0xD000000000000013, 0x8000000100346A90, _swiftEmptyArrayStorage);
    v11 = sub_100008F6C(v9, v10, &v12);

    *(v5 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s.%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  [v1 setExecuting:0];
  [v1 setFinished:1];

  sub_100137C74();
}

void sub_100128D24()
{
  v1 = v0;
  swift_getObjectType();
  v168 = type metadata accessor for OSSignpostError();
  v2 = *(v168 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v168);
  v166 = &v160 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v174 = &v160 - v12;
  __chkstk_darwin(v11);
  v170 = &v160 - v13;
  v173 = type metadata accessor for UUID();
  v172 = *(v173 - 1);
  v14 = *(v172 + 64);
  __chkstk_darwin(v173);
  v171 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchTime();
  v179 = *(v16 - 8);
  v180 = v16;
  v17 = *(v179 + 64);
  v18 = __chkstk_darwin(v16);
  v177 = (&v160 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v178 = &v160 - v20;
  v175 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(*(v175 - 8) + 64);
  __chkstk_darwin(v175);
  v176 = &v160 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_10000403C(v23, qword_1003A3A90);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  v27 = os_log_type_enabled(v25, v26);
  v169 = v10;
  v167 = v2;
  if (v27)
  {
    v28 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v28 = 136315394;
    v29 = _typeName(_:qualified:)();
    v31 = sub_100008F6C(v29, v30, aBlock);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    v32 = showFunction(signature:_:)(0x29287472617473, 0xE700000000000000, _swiftEmptyArrayStorage);
    v34 = sub_100008F6C(v32, v33, aBlock);

    *(v28 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v25, v26, "%s.%s", v28, 0x16u);
    swift_arrayDestroy();
  }

  v35 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
  [v35 setDelegate:v1];
  [v35 setSessionDelegate:v1];
  if (([v1 isCancelled] & 1) == 0)
  {
    v163 = v35;
    v161 = v6;
    v162 = v5;
    v164 = v24;
    v39 = sub_1000207FC(4998, 0, 0, 0);
    v40 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
    v160 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
    *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError] = v39;

    v41 = swift_allocObject();
    v42 = v41;
    v43 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig];
    v44 = 120;
    if (!*(v43 + 16))
    {
      v44 = 112;
    }

    *(v41 + 16) = *(v43 + v44);
    v45 = (v41 + 16);
    v46 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_timeoutWorkItem;
    v47 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_timeoutWorkItem];

    dispatch thunk of DispatchWorkItem.cancel()();

    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v42;
    aBlock[4] = sub_100138C50;
    aBlock[5] = v49;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = &unk_100384880;
    _Block_copy(aBlock);
    v182 = _swiftEmptyArrayStorage;
    sub_100138C60(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);

    v165 = v42;

    sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
    sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v50 = type metadata accessor for DispatchWorkItem();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    v53 = DispatchWorkItem.init(flags:block:)();

    v54 = *&v1[v46];
    *&v1[v46] = v53;

    v55 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
    v56 = v177;
    static DispatchTime.now()();
    swift_beginAccess();
    v57 = *v45;
    v58 = v178;
    + infix(_:_:)();
    v59 = *(v179 + 8);
    v60 = v56;
    v61 = v180;
    v59(v60, v180);
    v62 = *&v1[v46];

    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v59(v58, v61);
    v180 = v43;
    if (!*(v43 + 16))
    {
      sub_10012A4DC(0);
LABEL_19:

      return;
    }

    if ([v1 isCancelled])
    {
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        *v65 = 0;
        _os_log_impl(&_mh_execute_header, v63, v64, "ReadOperation cancelled before startVASPolling", v65, 2u);
      }

      sub_100128B38();
      goto LABEL_19;
    }

    v66 = sub_1001386A4();
    v68 = v67;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v182 = 0;
    v70 = [v163 startVASPolling:isa error:&v182];

    if (v70)
    {
      v178 = v66;
      v179 = v68;
      v71 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback];
      v72 = v180;
      v73 = *(v180 + 16);
      v74 = v182;
      sub_100100D88(0, v73);
      [v1 setExecuting:1];
      v75 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 24];
      v76 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 32];
      v177 = sub_10000BE18(&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor], v75);
      sub_100004074(&unk_1003A3C10, &unk_1002C3760);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002C1660;
      strcpy((inited + 32), "transactionId");
      *(inited + 46) = -4864;
      v78 = v172;
      v79 = v171;
      v80 = v173;
      (*(v172 + 16))(v171, v72 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v173);
      v81 = UUID.uuidString.getter();
      v83 = v82;
      (*(v78 + 8))(v79, v80);
      *(inited + 48) = v81;
      *(inited + 56) = v83;
      v84 = sub_100183EFC(inited);
      swift_setDeallocating();
      sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
      (*(v76 + 8))(11, 2, v84, v75, v76);

      if ([v1 isCancelled])
      {
        v85 = v178;
        v86 = Logger.logObject.getter();
        v87 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&_mh_execute_header, v86, v87, "ReadOperation cancelled after startVASPolling before onUpdate ready", v88, 2u);
        }

        sub_1001276D4();
        sub_100009548(v85, v179);
      }

      else
      {
        v97 = v1;
        v98 = Logger.logObject.getter();
        v99 = static os_log_type_t.default.getter();
        v177 = v97;

        if (os_log_type_enabled(v98, v99))
        {
          v100 = swift_slowAlloc();
          v101 = swift_slowAlloc();
          v182 = v101;
          *v100 = 136315138;
          v102 = *(v180 + 16);
          v103 = SPRReaderMode.description.getter();
          v105 = sub_100008F6C(v103, v104, &v182);

          *(v100 + 4) = v105;
          _os_log_impl(&_mh_execute_header, v98, v99, "VAS-type polling started --- --- --->  Tap a %s card", v100, 0xCu);
          sub_10000959C(v101);
        }

        v106 = v161;
        v107 = v170;
        if (qword_10039D630 != -1)
        {
          swift_once();
        }

        v108 = type metadata accessor for OSSignposter();
        sub_10000403C(v108, qword_1003A3AA8);
        OSSignposter.logHandle.getter();
        swift_unknownObjectRetain();
        OSSignpostID.init(log:object:)();
        v109 = v162;
        v180 = *(v106 + 16);
        (v180)(v174, v107, v162);
        v110 = type metadata accessor for OSSignpostIntervalState();
        v111 = *(v110 + 48);
        v112 = *(v110 + 52);
        swift_allocObject();
        OSSignpostIntervalState.init(id:isOpen:)();
        v113 = v106;
        v114 = OSSignposter.logHandle.getter();
        v115 = v169;
        OSSignpostIntervalState.signpostID.getter();
        LODWORD(v176) = static os_signpost_type_t.end.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v175 = "m vas to payment";

          v116 = v166;
          checkForErrorAndConsumeState(state:)();

          v117 = v167;
          v118 = v168;
          if ((*(v167 + 88))(v116, v168) == enum case for OSSignpostError.doubleEnd(_:))
          {
            v119 = 0;
            v120 = 0;
            v173 = "[Error] Interval already ended";
          }

          else
          {
            (*(v117 + 8))(v116, v118);
            v173 = "%s";
            v120 = 2;
            v119 = 1;
          }

          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v182 = v141;
          *v140 = v120;
          *(v140 + 1) = v119;
          *(v140 + 2) = 2080;
          *(v140 + 4) = sub_100008F6C(0xD000000000000011, v175 | 0x8000000000000000, &v182);
          v142 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v114, v176, v142, "reader-preprocessing", v173, v140, 0xCu);
          sub_10000959C(v141);

          v139 = *(v161 + 8);
          v139(v115, v162);
          v107 = v170;
        }

        else
        {

          v139 = *(v113 + 8);
          v139(v115, v109);
        }

        v143 = OSSignposter.logHandle.getter();
        v144 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          v145 = swift_slowAlloc();
          v146 = swift_slowAlloc();
          v182 = v146;
          *v145 = 136315138;
          *(v145 + 4) = sub_100008F6C(0xD000000000000011, 0x800000010034F600, &v182);
          v147 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v143, v144, v147, "reader-vas_polling", "%s", v145, 0xCu);
          sub_10000959C(v146);
        }

        v148 = v162;
        (v180)(v174, v107, v162);
        v149 = *(v110 + 48);
        v150 = *(v110 + 52);
        swift_allocObject();
        OSSignpostIntervalState.init(id:isOpen:)();

        v139(v107, v148);
        v151 = v177;
        v152 = *(*(v177 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics) + 56);
        os_unfair_lock_lock(v152 + 8);
        sub_10011C8AC(&v152[4], 1);
        os_unfair_lock_unlock(v152 + 8);
        if ([v151 isCancelled])
        {
          v153 = Logger.logObject.getter();
          v154 = static os_log_type_t.default.getter();
          v155 = os_log_type_enabled(v153, v154);
          v156 = v179;
          if (v155)
          {
            v157 = swift_slowAlloc();
            *v157 = 0;
            _os_log_impl(&_mh_execute_header, v153, v154, "ReadOperation cancelled at end of start()", v157, 2u);
          }

          sub_1001276D4();
          v158 = v178;
          v159 = v156;
        }

        else
        {
          v158 = v178;
          v159 = v179;
        }

        sub_100009548(v158, v159);
      }

      goto LABEL_19;
    }

    v89 = v182;
    v90 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v182 = v90;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    if (!swift_dynamicCast())
    {
LABEL_44:

      swift_errorRetain();
      v129 = Logger.logObject.getter();
      v130 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        v182 = v132;
        *v131 = 136315138;
        v181 = v90;
        swift_errorRetain();
        v133 = String.init<A>(describing:)();
        v135 = sub_100008F6C(v133, v134, &v182);

        *(v131 + 4) = v135;
        _os_log_impl(&_mh_execute_header, v129, v130, "Error from startVASPolling: %s", v131, 0xCu);
        sub_10000959C(v132);
      }

      v136 = v160;
      v137 = sub_1000207FC(4015, 0, 0, 0);
      v138 = *&v1[v136];
      *&v1[v136] = v137;

      sub_100128B38();

      sub_100009548(v66, v68);
      goto LABEL_19;
    }

    v91 = v181;
    v92 = [v181 domain];
    v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;

    if (v93 == String.init(cString:)() && v95 == v96)
    {
    }

    else
    {
      v121 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v121 & 1) == 0)
      {
LABEL_43:

        goto LABEL_44;
      }
    }

    v122 = [v91 code];
    if ((v122 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v122))
    {
      if (v122 == 47)
      {

        v123 = Logger.logObject.getter();
        v124 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v123, v124))
        {
          v125 = swift_slowAlloc();
          *v125 = 0;
          _os_log_impl(&_mh_execute_header, v123, v124, "Reader temporarily unavailable when trying to start VAS-type polling", v125, 2u);
        }

        v126 = sub_1000207FC(4036, 0, 0, 0);
        v127 = *&v1[v160];
        *&v1[v160] = v126;

        v128 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics];
        sub_100027F94(&off_10037EC08);
        sub_100128B38();
        sub_100009548(v66, v68);

        goto LABEL_19;
      }

      goto LABEL_43;
    }

    __break(1u);
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "ReadOperation cancelled before start", v38, 2u);
  }

  sub_100128B38();
}

void sub_10012A2A4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (([Strong isCancelled] & 1) == 0 && (objc_msgSend(v4, "isFinished") & 1) == 0 && objc_msgSend(v4, "isExecuting"))
    {
      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000403C(v5, qword_1003A3A90);

      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        swift_beginAccess();
        *(v8 + 4) = *(a2 + 16);
        _os_log_impl(&_mh_execute_header, v6, v7, "Polling TIMED OUT after %f elapsed", v8, 0xCu);
      }

      v9 = sub_1000207FC(4005, 0, 0, 0);
      v10 = *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
      *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError] = v9;

      v11 = *&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics];
      if (*&v4[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount] < 1)
      {
        *(v11 + 126) = 1;
      }

      else
      {
        *(v11 + 125) = 1;
      }

      [v4 cancel];
    }
  }
}

void sub_10012A4DC(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount;
  v10 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v111 = v8;
    *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount] = v12;
    if (qword_10039D628 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v13 = type metadata accessor for Logger();
  v14 = sub_10000403C(v13, qword_1003A3A90);
  v15 = v2;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *&v2[v9];

    _os_log_impl(&_mh_execute_header, v16, v17, "startPayment() paymentStartedCount= %ld", v18, 0xCu);
  }

  else
  {

    v16 = v15;
  }

  if (([v15 isCancelled]& 1) != 0)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v19, v20))
    {
LABEL_10:

      sub_100128B38();
      return;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "ReadOperation cancelled before startPayment";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v19, v20, v22, v21, 2u);

    goto LABEL_10;
  }

  v23 = *(&v15->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig);
  v25 = *(v23 + 32);
  v24 = *(v23 + 40);
  v26 = *(v23 + 48);
  v102 = v14;
  v101 = v4;
  v100 = v5;
  if (a1)
  {
    v27 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readResult;
    swift_beginAccess();
    v28 = *(&v15->isa + v27);
    *(&v15->isa + v27) = &_swiftEmptyDictionarySingleton;

    v117 = &type metadata for Bool;
    LOBYTE(v115[0]) = 1;
    swift_beginAccess();
    sub_10002CFD4(v115, 0x626C6C6146726F66, 0xEB000000006B6361);
    type metadata accessor for Decimal(0);
    v117 = v29;
    v115[0] = v25;
    v115[1] = v24;
    v116 = v26;
    sub_10002CFD4(v115, 0x6B6361626C6C6166, 0xEE00746E756F6D41);
    swift_endAccess();
    NSDecimal.init(integerLiteral:)(v30, 0);
    v105 = v31;
    v109 = v32;
    LODWORD(v110) = v33;
    LODWORD(v107) = 0;
    (*(&v15->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics))[128] = 1;
  }

  else
  {
    LODWORD(v107) = 1;
    LODWORD(v110) = v26;
    v109 = v24;
    v105 = v25;
  }

  v112 = *(&v15->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
  v34 = *(v23 + 56);
  v35 = *(v23 + 64);
  v37 = *(v23 + 88);
  v103 = *(v23 + 80);
  v36 = v103;
  v39 = *(v23 + 96);
  v38 = *(v23 + 104);
  v40 = v15;
  v41 = *(v23 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf);
  v42 = *(v23 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionIdHalf + 8);
  v43 = *(v23 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_preferredSchemes);
  v108 = v40;
  v106 = (&v40->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_secureTimeKeeper);
  v104 = *(v23 + 72);
  sub_1000094F4(v34, v35);
  sub_1000094F4(v36, v37);
  sub_1000094F4(v39, v38);
  sub_1000094F4(v41, v42);

  v99 = v106;
  v98 = v107;
  v106 = v38;
  v97 = v38;
  v107 = v39;
  v44 = v109;
  v45 = v110;
  v110 = v34;
  v109 = v35;
  v46 = v103;
  sub_10011FCA8(v105, v44, v45, v34, v35, v104, v103, v37, v115, v39, v97, v41, v42, v43, 1u, v98, v99);

  sub_100009548(v41, v42);
  sub_100009548(v107, v106);
  sub_100009548(v46, v37);
  sub_100009548(v110, v109);
  v47 = v108;
  v48 = *(&v108->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
  sub_1000A1E5C(v115);
  *(v48 + 180) = v116;
  if (([v47 isCancelled]& 1) != 0)
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_10;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "ReadOperation cancelled after Start CAPDU before start polling";
    goto LABEL_9;
  }

  *(&v47->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus) = 256;
  v114[0] = 0;
  v49 = v112;
  if (![v112 start:v114])
  {
    v51 = v114[0];
    v52 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v114[0] = v52;
    swift_errorRetain();
    sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
    sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
    if (!swift_dynamicCast())
    {
LABEL_51:

      swift_errorRetain();
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v114[0] = v91;
        *v90 = 136315138;
        v113 = v52;
        swift_errorRetain();
        v92 = String.init<A>(describing:)();
        v94 = sub_100008F6C(v92, v93, v114);

        *(v90 + 4) = v94;
        _os_log_impl(&_mh_execute_header, v88, v89, "Error from NFSecureElementReaderSession.start(): %s", v90, 0xCu);
        sub_10000959C(v91);
      }

      v95 = sub_1000207FC(4015, 0, 0, 0);
      v96 = *(&v47->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
      *(&v47->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v95;

      sub_100128B38();
      goto LABEL_17;
    }

    v53 = v113;
    v54 = [v113 domain];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    if (v55 == String.init(cString:)() && v57 == v58)
    {
    }

    else
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v81 & 1) == 0)
      {
LABEL_50:

        goto LABEL_51;
      }
    }

    v82 = [v53 code];
    if ((v82 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v82))
    {
      if (v82 == 47)
      {

        v83 = Logger.logObject.getter();
        v84 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          *v85 = 0;
          _os_log_impl(&_mh_execute_header, v83, v84, "Reader temporarily unavailable when trying to start EMV-type polling", v85, 2u);
        }

        v86 = sub_1000207FC(4036, 0, 0, 0);
        v87 = *(&v47->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
        *(&v47->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v86;

        sub_100027F94(&off_10037EBB8);
        sub_100128B38();

LABEL_17:

        return;
      }

      goto LABEL_50;
    }

    __break(1u);
LABEL_58:
    swift_once();
LABEL_38:
    v77 = type metadata accessor for OSSignposter();
    sub_10000403C(v77, qword_1003A3AA8);
    sub_100186BE8("reader-preprocessing", 20, 2, v57, 0xD000000000000011, 0x800000010034F460);
    goto LABEL_39;
  }

  if (*(v23 + 16))
  {
    v50 = v114[0];
  }

  else
  {
    v59 = *(&v47->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback);
    v60 = v114[0];
    sub_100100D88(0, 0);
  }

  [v47 setExecuting:1, v100, v101];
  *(&v47->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerModeForPaymentStarted) = 1;
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&_mh_execute_header, v61, v62, "Called start ETSI SE reader mode (for EMV-type polling) for payment.", v63, 2u);
  }

  v64 = *(v23 + 16);
  if ((v64 - 2) < 2)
  {
    if (qword_10039D630 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for OSSignposter();
    sub_10000403C(v65, qword_1003A3AA8);
    sub_100186948("reader-vas_ese_reader_mode_switch", 33, 2, v49, 0xD000000000000020, 0x800000010034F430);
    goto LABEL_39;
  }

  if (v64 != 1)
  {
    if (v64)
    {
      type metadata accessor for SPRReaderMode(0);
      v114[0] = v64;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }

    v110 = *(&v47[3].isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor);
    v107 = *(&v47[4].isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor);
    v109 = sub_10000BE18((&v47->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor), v110);
    sub_100004074(&unk_1003A3C10, &unk_1002C3760);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002C1660;
    strcpy((inited + 32), "transactionId");
    *(inited + 46) = -4864;
    v67 = v100;
    v68 = v111;
    v69 = v101;
    (*(v100 + 16))(v111, v23 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v101);
    v70 = UUID.uuidString.getter();
    v72 = v71;
    (*(v67 + 8))(v68, v69);
    *(inited + 48) = v70;
    *(inited + 56) = v72;
    v73 = sub_100183EFC(inited);
    swift_setDeallocating();
    sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
    (*(v107 + 8))(11, 2, v73, v110);

    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "EMV-type polling started --- --- --->  Tap a payment card", v76, 2u);
    }

    v57 = v112;
    if (qword_10039D630 == -1)
    {
      goto LABEL_38;
    }

    goto LABEL_58;
  }

LABEL_39:
  if ([v47 isCancelled])
  {
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&_mh_execute_header, v78, v79, "ReadOperation is cancelled after startPayment()", v80, 2u);
    }

    sub_100127CE8(0);
  }
}

uint64_t sub_10012B414()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000403C(v12, qword_1003A3A90);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "handleSessionReachedTimeLimit()", v15, 2u);
  }

  v16 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v1;
  aBlock[4] = sub_100138BD4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_1003847B8;
  v18 = _Block_copy(aBlock);
  v19 = v1;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_10012B738(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  v15 = *&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_10039D628 == -1)
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
  sub_10000403C(v16, qword_1003A3A90);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v3;
    *v19 = 67109120;
    *(v19 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v17, v18, "didReceiveThermalIndication %{BOOL}d", v19, 8u);
    v3 = v26;
  }

  v20 = *&v3[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = a2 & 1;
  aBlock[4] = sub_100138BA8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100384768;
  v22 = _Block_copy(aBlock);
  v23 = v3;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void sub_10012BB08(char a1)
{
  v2 = v1;
  if (a1)
  {
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000403C(v3, qword_1003A3A90);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "reader will stop", v6, 2u);
    }

    v7 = sub_1000207FC(4036, 0, 0, 0);
    v8 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
    *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v7;

    v9 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
    sub_100027F94(&off_10037EC30);

    sub_100128B38();
  }

  else
  {
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000403C(v10, qword_1003A3A90);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "reader can be enabled", v13, 2u);
    }

    v14 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
    sub_100027F94(&off_10037EC58);
    v15 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback);
    sub_100100D88(0, *(*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + 16));
  }
}

uint64_t sub_10012BD2C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  v12 = *&v0[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_10039D628 == -1)
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
  v13 = type metadata accessor for Logger();
  sub_10000403C(v13, qword_1003A3A90);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "secureElementReaderSessionDidEndUnexpectedly()", v16, 2u);
  }

  v17 = *&v1[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  aBlock[4] = sub_100138D20;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_100384718;
  v19 = _Block_copy(aBlock);
  v20 = v1;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

void sub_10012C0B0()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000207FC(4024, 0, 0, 0);
  v8 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
  *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v7;

  v9 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 32);
  v18 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 24);
  v17 = sub_10000BE18((v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor), v18);
  sub_100004074(&unk_1003A3C10, &unk_1002C3760);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002C1660;
  strcpy((inited + 32), "transactionId");
  *(inited + 46) = -4864;
  v11 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig);
  (*(v3 + 16))(v6, v11 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v2);
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  *(inited + 48) = v12;
  *(inited + 56) = v14;
  v15 = sub_100183EFC(inited);
  swift_setDeallocating();
  sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
  (*(v9 + 8))(13, 2, v15, v18, v9);

  v16 = *(v1 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback);
  sub_100100D88(3, *(v11 + 16));
  sub_100128B38();
}

uint64_t sub_10012C2E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  v15 = *&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
  if (static NSObject.== infix(_:_:)())
  {
    if (qword_10039D628 == -1)
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
  sub_10000403C(v16, qword_1003A3A90);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v9;
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "ReadOperation didDetect (NFTag)", v19, 2u);
    v9 = v26;
  }

  v20 = *&v3[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
  static DispatchQoS.userInitiated.getter();
  static DispatchWorkItemFlags.enforceQoS.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v3;
  *(v21 + 24) = a2;
  aBlock[4] = sub_100138B48;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100003974;
  aBlock[3] = &unk_1003846C8;
  v22 = _Block_copy(aBlock);
  v23 = v3;

  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
}

void sub_10012C6D8(id *a1)
{
  v2 = v1;
  v190 = a1;
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v186 = v171 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v187 = *(v7 - 8);
  v8 = *(v187 + 64);
  __chkstk_darwin(v7);
  v184 = v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = type metadata accessor for DispatchTime();
  v185 = *(v189 - 8);
  v10 = *(v185 + 64);
  v11 = __chkstk_darwin(v189);
  v182 = v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v183 = v171 - v13;
  v14 = type metadata accessor for OSSignpostError();
  v188 = *(v14 - 8);
  v15 = *(v188 + 64);
  __chkstk_darwin(v14);
  v17 = v171 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for OSSignpostID();
  v191 = *(v18 - 8);
  v192 = v18;
  v19 = v191[8];
  v20 = __chkstk_darwin(v18);
  v22 = v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v193 = v171 - v24;
  __chkstk_darwin(v23);
  v194 = (v171 - v25);
  v26 = type metadata accessor for UUID();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v2 isCancelled])
  {
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000403C(v31, qword_1003A3A90);
    v194 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v194, v32))
    {
      goto LABEL_12;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "ReadOperation isCancelled ignore didDetect";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v194, v32, v34, v33, 2u);

LABEL_12:
    v36 = v194;

    return;
  }

  if (v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerModeForPaymentStarted])
  {
    if (qword_10039D628 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_10000403C(v35, qword_1003A3A90);
    v194 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v194, v32))
    {
      goto LABEL_12;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "readerModeForPaymentStarted ignore didDetect";
    goto LABEL_11;
  }

  v37 = *&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig];
  if (*(v37 + 16))
  {
    v172 = v7;
    v173 = v4;
    v174 = v3;
    v38 = *&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback];
    v39 = v37;
    sub_100100D88(1, 1);
    v179 = *&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 24];
    v177 = *&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 32];
    v178 = sub_10000BE18(&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor], v179);
    sub_100004074(&unk_1003A3C10, &unk_1002C3760);
    inited = swift_initStackObject();
    v181 = v2;
    v41 = inited;
    *(inited + 16) = xmmword_1002C1660;
    *(inited + 32) = 0x746361736E617274;
    v42 = inited + 32;
    *(inited + 40) = 0xED000064496E6F69;
    v43 = *(v27 + 16);
    v180 = v39;
    v43(v30, v39 + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v26);
    v44 = UUID.uuidString.getter();
    v46 = v45;
    (*(v27 + 8))(v30, v26);
    *(v41 + 48) = v44;
    *(v41 + 56) = v46;
    v47 = sub_100183EFC(v41);
    v48 = v181;
    swift_setDeallocating();
    sub_10000BD44(v42, &qword_10039FE90, &unk_1002C5970);
    (*(v177 + 8))(12, 2, v47, v179);

    v49 = *&v48[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics];
    sub_10011BBA0(&off_10037ECA8);
    sub_10011B164(&off_10037EC80);
    if (qword_10039D630 != -1)
    {
      swift_once();
    }

    v176 = type metadata accessor for OSSignposter();
    v50 = sub_10000403C(v176, qword_1003A3AA8);
    v51 = *&v48[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
    OSSignposter.logHandle.getter();
    swift_unknownObjectRetain();
    v52 = v194;
    OSSignpostID.init(log:object:)();
    v53 = v191;
    v54 = v191[2];
    v55 = v52;
    v56 = v192;
    v179 = v191 + 2;
    v178 = v54;
    v54(v193, v55, v192);
    v57 = type metadata accessor for OSSignpostIntervalState();
    v58 = *(v57 + 48);
    v59 = *(v57 + 52);
    swift_allocObject();
    v60 = OSSignpostIntervalState.init(id:isOpen:)();
    v61 = OSSignposter.logHandle.getter();
    OSSignpostIntervalState.signpostID.getter();
    v175 = static os_signpost_type_t.end.getter();
    v62 = OS_os_log.signpostsEnabled.getter();
    v177 = v60;
    if (v62)
    {

      checkForErrorAndConsumeState(state:)();

      v63 = v188;
      v64 = (*(v188 + 88))(v17, v14);
      v171[1] = v50;
      if (v64 == enum case for OSSignpostError.doubleEnd(_:))
      {
        v68 = 0;
        v67 = 0;
        v66 = "[Error] Interval already ended";
      }

      else
      {
        (*(v63 + 8))(v17, v14);
        v66 = "%s";
        v67 = 2;
        v68 = 1;
      }

      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      aBlock = v70;
      *v69 = v67;
      *(v69 + 1) = v68;
      *(v69 + 2) = 2080;
      *(v69 + 4) = sub_100008F6C(0x2073617620646E65, 0xEF676E696C6C6F70, &aBlock);
      v71 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v61, v175, v71, "reader-vas_polling", v66, v69, 0xCu);
      sub_10000959C(v70);

      v56 = v192;
      v65 = v191[1];
      v65(v22, v192);
    }

    else
    {

      v65 = v53[1];
      v65(v22, v56);
    }

    v72 = OSSignposter.logHandle.getter();
    v73 = static os_signpost_type_t.begin.getter();
    v74 = OS_os_log.signpostsEnabled.getter();
    v75 = v194;
    if (v74)
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_100008F6C(0x6176206E69676562, 0xEE00646165722073, &aBlock);
      v78 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v72, v73, v78, "reader-vas_read", "%s", v76, 0xCu);
      sub_10000959C(v77);
    }

    v2 = v181;
    v178(v193, v75, v56);
    v79 = *(v57 + 48);
    v80 = *(v57 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();

    v65(v75, v56);
    v81 = *(v180 + 16);
    if ((v81 - 2) < 2)
    {
      sub_10012E36C(v190);
      if (qword_10039D630 != -1)
      {
        swift_once();
      }

      sub_10000403C(v176, qword_1003A3AA8);
      v82 = v2;
      v83 = *&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
      sub_100186BE8("reader-vas_read", 15, 2, v83, 0x2073617620646E65, 0xEC00000064616572);
      if ([v82 isCancelled])
      {
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v84 = type metadata accessor for Logger();
        sub_10000403C(v84, qword_1003A3A90);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.default.getter();
LABEL_40:
        v88 = v86;
        if (os_log_type_enabled(v85, v86))
        {
          v89 = swift_slowAlloc();
          *v89 = 0;
          _os_log_impl(&_mh_execute_header, v85, v88, "ReadOperation isCancelled return from didDetect", v89, 2u);
        }

        return;
      }

      sub_100127988();
      v90 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
      v91 = *&v82[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
      _s3__C4CodeOMa_11(0);
      aBlock = 4020;
      sub_100138C60(&qword_10039D9F0, _s3__C4CodeOMa_11);
      v92 = v91;
      v93 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v93)
      {

LABEL_54:
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v106 = type metadata accessor for Logger();
        sub_10000403C(v106, qword_1003A3A90);
        v107 = v181;
        v108 = v181;
        v109 = Logger.logObject.getter();
        v110 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v109, v110))
        {
          v111 = swift_slowAlloc();
          v112 = swift_slowAlloc();
          *v111 = 136315138;
          v195 = *&v107[v90];
          aBlock = v112;
          type metadata accessor for ReadError(0);
          sub_100138C60(&qword_10039D938, type metadata accessor for ReadError);
          v113 = Error.localizedDescription.getter();
          v115 = sub_100008F6C(v113, v114, &aBlock);

          *(v111 + 4) = v115;
          _os_log_impl(&_mh_execute_header, v109, v110, "Restart for %s", v111, 0xCu);
          sub_10000959C(v112);
        }

        v193 = *&v108[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
        v116 = v182;
        static DispatchTime.now()();
        v117 = v183;
        + infix(_:_:)();
        v194 = *(v185 + 8);
        (v194)(v116, v189);
        v118 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v200 = sub_100138B28;
        v201 = v118;
        aBlock = _NSConcreteStackBlock;
        v197 = 1107296256;
        v119 = &unk_100384650;
LABEL_65:
        v198 = sub_100003974;
        v199 = v119;
        v134 = _Block_copy(&aBlock);

        v135 = v184;
        static DispatchQoS.unspecified.getter();
        v195 = _swiftEmptyArrayStorage;
        sub_100138C60(&qword_10039E2A0, &type metadata accessor for DispatchWorkItemFlags);
        sub_100004074(&qword_10039DD40, &qword_1002BFEC0);
        sub_10001A570(&qword_10039E2B0, &qword_10039DD40, &qword_1002BFEC0);
        v136 = v186;
        v137 = v174;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v134);
        (*(v173 + 8))(v136, v137);
        (*(v187 + 8))(v135, v172);
        (v194)(v117, v189);

        return;
      }

      aBlock = 4042;
      v104 = v92;
      v105 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v105)
      {
        goto LABEL_54;
      }

      v138 = v181;
      v139 = *&v181[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics];
      sub_10011BBA0(&off_10037ECF8);
      sub_10011B164(&off_10037ECD0);
      v193 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound;
      if (v138[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound])
      {
        v140 = 1;
      }

      else
      {
        v140 = v138[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK];
      }

      v194 = v139;
      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v141 = type metadata accessor for Logger();
      v142 = sub_10000403C(v141, qword_1003A3A90);
      v143 = v181;
      v144 = v181;
      v192 = v142;
      v145 = Logger.logObject.getter();
      v146 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v145, v146))
      {
        v147 = swift_slowAlloc();
        v191 = v90;
        v148 = v144;
        v149 = v147;
        *v147 = 67109632;
        *(v147 + 4) = v140;
        *(v147 + 8) = 1024;
        *(v147 + 10) = v193[v143];
        *(v147 + 14) = 1024;
        *(v147 + 16) = v148[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK];

        _os_log_impl(&_mh_execute_header, v145, v146, "vasReadSuccess: %{BOOL}d, vasDataFound: %{BOOL}d, vasURLOK: %{BOOL}d", v149, 0x14u);
        v144 = v148;
        v90 = v191;
      }

      else
      {

        v145 = v144;
      }

      v150 = v194;
      BYTE2(v194[15].isa) = v140;
      if (v144[OBJC_IVAR____TtC14softposreaderd13ReadOperation_skipLoyalty] == 1)
      {
        if (v144[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming])
        {
          v151 = *&v144[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse];
          *&v144[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse] = _swiftEmptyArrayStorage;

          sub_10012A4DC(0);
          sub_100027F94(&off_10037ED48);
        }

        else
        {
          [*&v144[OBJC_IVAR____TtC14softposreaderd13ReadOperation_operationQueue] cancelAllOperations];
          v152 = sub_1000207FC(4027, 0, 0, 0);
          sub_100186BE8("reader-total_transaction", 24, 2, v83, 0xD000000000000015, 0x800000010034F3F0);
          isa = v150[7].isa;
          os_unfair_lock_lock(isa + 8);
          sub_10011D358(&isa[4], 3);
          os_unfair_lock_unlock(isa + 8);
          BYTE2(v150[15].isa) = 0;
          aBlock = v152;
          type metadata accessor for ReadError(0);
          sub_100138C60(&qword_10039DA08, type metadata accessor for ReadError);
          v150[18].isa = _BridgedStoredNSError.errorCode.getter();
          sub_100027F94(&off_10037ED20);
          v154 = *&v144[OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback];
          v155 = v152;
          sub_100100FC0(v155);
        }

        return;
      }

      if ((v140 & 1) == 0)
      {
        v156 = v150;
        v157 = v181;
        aBlock = *&v181[v90];
        type metadata accessor for ReadError(0);
        sub_100138C60(&qword_10039DA08, type metadata accessor for ReadError);
        v156[18].isa = _BridgedStoredNSError.errorCode.getter();
        sub_100027F94(&off_10037ED70);
        v158 = *&v157[v90];
        aBlock = 4030;
        v159 = v158;
        v160 = static _ErrorCodeProtocol.~= infix(_:_:)();

        if ((v160 & 1) == 0)
        {
          aBlock = 4021;
          v161 = v159;
          v162 = static _ErrorCodeProtocol.~= infix(_:_:)();

          if (v162)
          {
            v163 = v194;
            if (v144[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming])
            {
              goto LABEL_86;
            }

            v164 = Logger.logObject.getter();
            v165 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v164, v165))
            {
              v166 = swift_slowAlloc();
              *v166 = 0;
              _os_log_impl(&_mh_execute_header, v164, v165, "vasDataNotFound and no paymentDataForthcoming", v166, 2u);
            }

            v167 = v163[7].isa;
          }

          else
          {
            v167 = v194[7].isa;
          }

          os_unfair_lock_lock(v167 + 8);
          sub_10011D358(v167 + 16, 3);
          os_unfair_lock_unlock(v167 + 8);
          sub_100186BE8("reader-total_transaction", 24, 2, v83, 0xD000000000000015, 0x800000010034F3F0);
          [*&v144[OBJC_IVAR____TtC14softposreaderd13ReadOperation_operationQueue] cancelAllOperations];
          v168 = *&v144[OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback];
          v169 = *(v180 + 16);
          v170 = *&v181[v90];
          sub_100100FC0(v170);

          return;
        }

LABEL_86:
        sub_10012A4DC(0);
        return;
      }

      sub_100027F94(&off_10037ED98);
      if (*(v180 + 16) == 2)
      {
LABEL_81:
        if ((v144[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming] & 1) == 0)
        {
          goto LABEL_88;
        }

        goto LABEL_86;
      }

      if (v193[v181] != 1)
      {
        if (v144[OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK] != 1)
        {
          return;
        }

        goto LABEL_81;
      }

LABEL_88:
      sub_100128B38();
      return;
    }

    if (v81 == 1)
    {
      sub_10012E36C(v190);
      if (qword_10039D630 != -1)
      {
        swift_once();
      }

      sub_10000403C(v176, qword_1003A3AA8);
      sub_100186BE8("reader-vas_read", 15, 2, *&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession], 0x2073617620646E65, 0xEC00000064616572);
      if ([v2 isCancelled])
      {
        if (qword_10039D628 != -1)
        {
          swift_once();
        }

        v87 = type metadata accessor for Logger();
        sub_10000403C(v87, qword_1003A3A90);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.info.getter();
        goto LABEL_40;
      }

      sub_100127988();
      v100 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
      v101 = *&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
      _s3__C4CodeOMa_11(0);
      aBlock = 4020;
      sub_100138C60(&qword_10039D9F0, _s3__C4CodeOMa_11);
      v102 = v101;
      v103 = static _ErrorCodeProtocol.~= infix(_:_:)();

      if (v103)
      {
      }

      else
      {
        aBlock = 4042;
        v120 = v102;
        v121 = static _ErrorCodeProtocol.~= infix(_:_:)();

        if ((v121 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v122 = type metadata accessor for Logger();
      sub_10000403C(v122, qword_1003A3A90);
      v123 = v2;
      v124 = Logger.logObject.getter();
      v125 = v2;
      v126 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v124, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        *v127 = 136315138;
        v195 = *&v125[v100];
        aBlock = v128;
        type metadata accessor for ReadError(0);
        sub_100138C60(&qword_10039D938, type metadata accessor for ReadError);
        v129 = Error.localizedDescription.getter();
        v131 = sub_100008F6C(v129, v130, &aBlock);

        *(v127 + 4) = v131;
        _os_log_impl(&_mh_execute_header, v124, v126, "Restart for %s", v127, 0xCu);
        sub_10000959C(v128);
      }

      v193 = *&v123[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
      v132 = v182;
      static DispatchTime.now()();
      v117 = v183;
      + infix(_:_:)();
      v194 = *(v185 + 8);
      (v194)(v132, v189);
      v133 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v200 = sub_100138CFC;
      v201 = v133;
      aBlock = _NSConcreteStackBlock;
      v197 = 1107296256;
      v119 = &unk_100384678;
      goto LABEL_65;
    }

    if (v81)
    {
      type metadata accessor for SPRReaderMode(0);
      aBlock = v81;
      _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
      __break(1u);
      return;
    }
  }

  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v94 = type metadata accessor for Logger();
  sub_10000403C(v94, qword_1003A3A90);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&_mh_execute_header, v95, v96, "SPRReaderMode is .payment, VAS-type polling for NFTag detection should not be active", v97, 2u);
  }

  v98 = sub_1000207FC(4017, 0, 0, 0);
  v99 = *&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
  *&v2[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError] = v98;
}

void sub_10012E310()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong start];
  }
}

void sub_10012E36C(id *a1)
{
  v2 = v1;
  v150 = a1;
  v3 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_141;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v4)
  {
    if (qword_10039D628 != -1)
    {
      goto LABEL_147;
    }

    goto LABEL_9;
  }

  if (qword_10039D628 != -1)
  {
    goto LABEL_143;
  }

LABEL_5:
  v5 = type metadata accessor for Logger();
  sub_10000403C(v5, qword_1003A3A90);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    if (v3)
    {
      v9 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v9 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v8 + 4) = v9;

    _os_log_impl(&_mh_execute_header, v6, v7, "Number of NFTag detected from VAS-type polling: %ld", v8, 0xCu);

    if (!v3)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (!v3)
    {
LABEL_19:
      v14 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_20;
    }
  }

  v14 = _CocoaArrayWrapper.endIndex.getter();
LABEL_20:
  v15 = _swiftEmptyArrayStorage;
  if (!v14)
  {
    goto LABEL_35;
  }

  v154 = _swiftEmptyArrayStorage;
  sub_10004E2DC(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    goto LABEL_146;
  }

  v15 = v154;
  v147 = v2;
  if (v3)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v16 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v2 = v16 & ~(v16 >> 63);
  do
  {
    if (v2 == v17)
    {
      __break(1u);
      goto LABEL_135;
    }

    if ((v150 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        v4 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v18 = v150[v17 + 4].isa;
    }

    v19 = v18;
    v156 = 0x2067617420534156;
    v157 = 0xE900000000000023;
    v153 = v17;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 8250;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    v22 = [(objc_class *)v19 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    v27 = v156;
    v3 = v157;
    v154 = v15;
    v29 = v15[2];
    v28 = v15[3];
    if (v29 >= v28 >> 1)
    {
      sub_10004E2DC((v28 > 1), v29 + 1, 1);
      v15 = v154;
    }

    ++v17;
    v15[2] = v29 + 1;
    v30 = &v15[2 * v29];
    v30[4] = v27;
    v30[5] = v3;
  }

  while (v14 != v17);
  v2 = v147;
LABEL_35:
  v156 = v15;
  sub_100004074(&qword_10039E270, &unk_1002C3BE0);
  sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0);
  v31 = BidirectionalCollection<>.joined(separator:)();
  v33 = v32;

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v156 = v3;
    *v36 = 136315138;
    *(v36 + 4) = sub_100008F6C(v31, v33, &v156);
    _os_log_impl(&_mh_execute_header, v34, v35, "%s... Attempt connect to tag #0 ...", v36, 0xCu);
    sub_10000959C(v3);
  }

  v17 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
  if ((v150 & 0xC000000000000001) != 0)
  {
    v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_40:
    v38 = v37;
    v156 = 0;
    v39 = [v17 connectTag:v37 error:&v156];

    if (!v39)
    {
      v47 = v156;

      v48 = _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v156 = v52;
        *v51 = 136315138;
        v154 = v48;
        swift_errorRetain();
        sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
        v53 = String.init<A>(describing:)();
        v55 = sub_100008F6C(v53, v54, &v156);

        *(v51 + 4) = v55;
        _os_log_impl(&_mh_execute_header, v49, v50, "connect(_ tag: NFTag) Error: %s", v51, 0xCu);
        sub_10000959C(v52);
      }

      else
      {
      }

      return;
    }

    v40 = v156;
    v41 = v2;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      v45 = (*(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig))[3];
      if (v45 >> 62)
      {
        if (v45 < 0)
        {
          v144 = (*(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig))[3];
        }

        v46 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v44 + 4) = v46;

      _os_log_impl(&_mh_execute_header, v42, v43, "Connected to tag #0. Preparing %ld VAS requests.", v44, 0xCu);
    }

    else
    {

      v42 = v41;
    }

    v56 = *(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig);
    v57 = *(v56 + 16);
    if (v57 > 1)
    {
      if (v57 == 2)
      {
        v63 = 1;
        goto LABEL_64;
      }

      if (v57 == 3)
      {
        v63 = 0;
LABEL_64:
        v64 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:v63];
        v2 = *(v56 + 24);
        if (v2 >> 62)
        {
          v138 = v64;
          v65 = _CocoaArrayWrapper.endIndex.getter();
          v64 = v138;
        }

        else
        {
          v65 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v66 = _swiftEmptyArrayStorage;
        v150 = v41;
        v147 = v64;
        v146 = v17;
        if (v65)
        {
          v156 = _swiftEmptyArrayStorage;
          v67 = v64;

          specialized ContiguousArray.reserveCapacity(_:)();
          if (v65 < 0)
          {
            __break(1u);
            goto LABEL_165;
          }

          v68 = 0;
          v3 = 0;
          do
          {
            v69 = v68 + 1;
            if (__OFADD__(v68, 1))
            {
              goto LABEL_138;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
              v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v68 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_140;
              }

              v70 = *(v2 + 8 * v68 + 32);
            }

            v71 = v70;
            v153 = v70;
            sub_10012F958(&v153, v67, &v154);

            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v72 = *(v156 + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
            ++v68;
          }

          while (v69 != v65);

          v66 = v156;
          v17 = v146;
          v41 = v150;
        }

        sub_10000411C(0, &unk_1003A3C20, NFVASRequest_ptr);
        osloga = v66;
        isa = Array._bridgeToObjectiveC()().super.isa;
        v156 = 0;
        v74 = [v17 performVAS:isa error:&v156];

        v75 = v156;
        if (v74)
        {
          sub_10000411C(0, &unk_1003A3C30, NFVASResponse_ptr);
          v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
          v76 = v75;
          goto LABEL_94;
        }

        v77 = v156;
        v78 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v79 = sub_1000207FC(4029, 0, 0, 0);
        v80 = *(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
        v145 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError;
        *(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v79;

        swift_errorRetain();
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          v156 = v84;
          *v83 = 136315138;
          v154 = v78;
          swift_errorRetain();
          sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
          v85 = String.init<A>(describing:)();
          v87 = sub_100008F6C(v85, v86, &v156);

          *(v83 + 4) = v87;
          _os_log_impl(&_mh_execute_header, v81, v82, "performVAS Error: %s", v83, 0xCu);
          sub_10000959C(v84);
          v41 = v150;
        }

        v74 = _convertErrorToNSError(_:)();
        v88 = [v74 domain];
        v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v91 = v90;

        if (v89 == String.init(cString:)() && v91 == v92)
        {
        }

        else
        {
          v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v93 & 1) == 0)
          {
            goto LABEL_92;
          }
        }

        if ([v74 code] == 29)
        {
          v94 = sub_1000207FC(4042, 0, 0, 0);
          v95 = *(&v41->isa + v145);
          *(&v41->isa + v145) = v94;

          v96 = Logger.logObject.getter();
          v97 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v96, v97))
          {
            v98 = swift_slowAlloc();
            *v98 = 0;
            _os_log_impl(&_mh_execute_header, v96, v97, "readError set: vasTagError", v98, 2u);
          }
        }

        if ([v74 code] == 65)
        {
          v99 = sub_1000207FC(4030, 0, 0, 0);
          v100 = *(&v41->isa + v145);
          *(&v41->isa + v145) = v99;

          v101 = Logger.logObject.getter();
          v102 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            *v103 = 0;
            _os_log_impl(&_mh_execute_header, v101, v102, "readError set: vasSelectOSE", v103, 2u);
          }

          goto LABEL_93;
        }

LABEL_92:

LABEL_93:
        v2 = _swiftEmptyArrayStorage;
LABEL_94:

        v104 = v2 >> 62;
        if (v2 >> 62)
        {
          v14 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v14 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (osloga >> 62)
        {
          if (v14 == _CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_98;
          }
        }

        else if (v14 == *((osloga & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_98:
          *v152 = 0;
          v156 = 0;
          v151 = 0;
          v3 = Logger.logObject.getter();
          v105 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v3, v105))
          {
            v106 = swift_slowAlloc();
            *v106 = 0;
            _os_log_impl(&_mh_execute_header, v3, v105, " --- VAS Responses ---", v106, 2u);
          }

          if (v104)
          {
            v107 = _CocoaArrayWrapper.endIndex.getter();
          }

          else
          {
            v107 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v108 = _swiftEmptyArrayStorage;
          if (!v107)
          {
LABEL_118:
            if (v152[0] == 1)
            {
              v117 = 4022;
LABEL_122:
              v118 = sub_1000207FC(v117, 0, 0, 0);
              v119 = *(&v150->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
              *(&v150->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v118;

              goto LABEL_123;
            }

            if (v151 == 1)
            {
              v117 = 4012;
              goto LABEL_122;
            }

            if ((*(&v150->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound) & 1) != 0 || *(&v150->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK) == 1)
            {
              v137 = *(&v150->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse);
              *(&v150->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasResponse) = v108;

              goto LABEL_123;
            }

LABEL_135:
            if (v156 != v14)
            {
              goto LABEL_123;
            }

            v117 = 4021;
            goto LABEL_122;
          }

          v154 = _swiftEmptyArrayStorage;

          specialized ContiguousArray.reserveCapacity(_:)();
          if ((v107 & 0x8000000000000000) == 0)
          {
            if (v104)
            {
              v109 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v109 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v110 = 0;
            v111 = v109 & ~(v109 >> 63);
            do
            {
              if (v111 == v110)
              {
                goto LABEL_139;
              }

              if ((v2 & 0xC000000000000001) != 0)
              {
                v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v110 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_143:
                  swift_once();
                  goto LABEL_5;
                }

                v112 = *(v2 + 8 * v110 + 32);
              }

              v113 = v112;
              v3 = (v110 + 1);
              sub_10013007C(v110, v112, v150, &v152[1], v152, &v151, &v156);

              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              v114 = v154[2];
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
              v110 = v3;
            }

            while (v107 != v3);

            v108 = v154;
            if (v152[1])
            {
              v115 = sub_1000207FC(4020, 0, 0, 0);
              v116 = *(&v150->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
              *(&v150->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v115;

              v17 = v146;
LABEL_123:
              v120 = Logger.logObject.getter();
              v121 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v120, v121))
              {
                v122 = swift_slowAlloc();
                *v122 = 0;
                _os_log_impl(&_mh_execute_header, v120, v121, "disconnectTag()", v122, 2u);
              }

              v154 = 0;
              if (![v17 disconnectTag:&v154])
              {
                v124 = v154;
                v125 = _convertNSErrorToError(_:)();

                swift_willThrow();
                v154 = v125;
                swift_errorRetain();
                sub_100004074(&unk_1003A3C00, &unk_1002C16C0);
                sub_10000411C(0, &qword_10039E2C8, NSError_ptr);
                swift_dynamicCast();

                v126 = v153;
                v127 = Logger.logObject.getter();
                v128 = static os_log_type_t.error.getter();

                if (os_log_type_enabled(v127, v128))
                {
                  v129 = swift_slowAlloc();
                  v130 = swift_slowAlloc();
                  v155 = v130;
                  *v129 = 136315138;
                  v131 = v126;
                  v132 = [v131 description];
                  v133 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v135 = v134;

                  v136 = sub_100008F6C(v133, v135, &v155);

                  *(v129 + 4) = v136;
                  _os_log_impl(&_mh_execute_header, v127, v128, "disconnectTag Error: %s", v129, 0xCu);
                  sub_10000959C(v130);
                }

                else
                {
                }

                return;
              }

              v123 = v154;

LABEL_160:

              return;
            }

            v17 = v146;
            goto LABEL_118;
          }

LABEL_165:
          __break(1u);
        }

        v139 = Logger.logObject.getter();
        v140 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v139, v140))
        {

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          return;
        }

        v141 = swift_slowAlloc();
        *v141 = 134218240;
        if (v104)
        {
          v142 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v142 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v141 + 4) = v142;

        *(v141 + 12) = 2048;
        if (osloga >> 62)
        {
          v143 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v143 = *((osloga & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v141 + 14) = v143;

        _os_log_impl(&_mh_execute_header, v139, v140, "responses.count: %ld, vasRequests.count: %ld, Error: Number of VAS Responses not equal to Requests", v141, 0x16u);

        goto LABEL_160;
      }
    }

    else
    {
      if (!v57)
      {

        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&_mh_execute_header, v58, v59, "Payment mode is invalid here", v60, 2u);
        }

        v61 = sub_1000207FC(4017, 0, 0, 0);
        v62 = *(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
        *(&v41->isa + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v61;

        return;
      }

      if (v57 == 1)
      {
        v63 = 2;
        goto LABEL_64;
      }
    }

    type metadata accessor for SPRReaderMode(0);
    v156 = v57;
    _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return;
  }

  if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v37 = v150[4].isa;
    goto LABEL_40;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  swift_once();
LABEL_9:
  v10 = type metadata accessor for Logger();
  sub_10000403C(v10, qword_1003A3A90);

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    if (v3)
    {
      v13 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v13 = *((v150 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v12 + 4) = v13;

    _os_log_impl(&_mh_execute_header, oslog, v11, "tags.count is %ld, not > 0", v12, 0xCu);
  }

  else
  {
  }
}

id sub_10012F958@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v84 = a3;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v81 = &v75[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v85 = &v75[-v11];
  __chkstk_darwin(v10);
  v13 = &v75[-v12];
  v14 = *a1;
  v15 = [objc_allocWithZone(NFVASRequest) init];
  v16 = [v14 merchantId];
  if (!v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = String._bridgeToObjectiveC()();
  }

  [v15 setMerchantId:v16];

  v17 = a2;
  [v15 setTerminalCap:a2];
  v18 = [v14 vasTerminalProtocol];
  [v15 setTerminalProtocol:v18];

  v19 = [v14 vasFilter];
  if (v19)
  {
    v20 = v19;
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100009548(v21, v23);
  }

  else
  {
    v24.super.isa = 0;
  }

  [v15 setFilter:v24.super.isa];

  v25 = [v14 vasUrl];
  if (v25)
  {
    v26 = v25;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    URL._bridgeToObjectiveC()(v27);
    v29 = v28;
    (*(v6 + 8))(v13, v5);
  }

  else
  {
    v29 = 0;
  }

  v82 = v15;
  v83 = v6;
  v80 = v5;
  [v15 setSignupUrl:v29];

  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  v31 = sub_10000403C(v30, qword_1003A3A90);
  v32 = v14;
  v33 = v17;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v76 = v35;
    v79 = v31;
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v86 = v78;
    *v36 = 136315906;
    v38 = [v32 merchantId];
    v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v42 = sub_100008F6C(v39, v41, &v86);

    *(v36 + 4) = v42;
    *(v36 + 12) = 2112;
    *(v36 + 14) = v33;
    v77 = v37;
    *v37 = v17;
    *(v36 + 22) = 2080;
    v43 = v33;
    v44 = [v32 vasTerminalProtocol];
    v45 = SPRVASTerminalProtocol.description.getter();
    v47 = v46;

    v48 = sub_100008F6C(v45, v47, &v86);

    *(v36 + 24) = v48;
    *(v36 + 32) = 2080;
    v49 = [v32 vasFilter];
    if (v49)
    {
      v50 = v49;
      v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {
      v51 = 0;
      v53 = 0xC000000000000000;
    }

    v54 = Data.description.getter();
    v56 = v55;
    sub_100009548(v51, v53);
    v57 = sub_100008F6C(v54, v56, &v86);

    *(v36 + 34) = v57;
    _os_log_impl(&_mh_execute_header, v34, v76, "In NFVASRequest setting merchantId: %s, terminalCap: %@, terminalProtocol: %s, filter: %s", v36, 0x2Au);
    sub_10000BD44(v77, &unk_10039E220, &qword_1002C3D60);

    swift_arrayDestroy();
  }

  else
  {
  }

  result = [v32 vasUrl];
  v59 = v83;
  v60 = v81;
  if (result)
  {
    v61 = v85;
    v62 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v63 = v80;
    (*(v59 + 16))(v60, v61, v80);
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v86 = v67;
      *v66 = 136315138;
      sub_100138C60(&qword_1003A3C40, &type metadata accessor for URL);
      v68 = dispatch thunk of CustomStringConvertible.description.getter();
      v69 = v60;
      v71 = v70;
      v72 = *(v59 + 8);
      v72(v69, v63);
      v73 = sub_100008F6C(v68, v71, &v86);

      *(v66 + 4) = v73;
      _os_log_impl(&_mh_execute_header, v64, v65, "signupUrl: %s", v66, 0xCu);
      sub_10000959C(v67);

      result = (v72)(v85, v63);
    }

    else
    {

      v74 = *(v59 + 8);
      v74(v60, v63);
      result = (v74)(v85, v63);
    }
  }

  *v84 = v82;
  return result;
}

void sub_10013007C(uint64_t a1, id a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, _BYTE *a6, void *a7)
{
  v11 = [a2 mobileCapabilities];
  if (v11)
  {
    v12 = v11;
    if (([v11 unsignedCharValue] & 0xC) == 4)
    {
      a3[OBJC_IVAR____TtC14softposreaderd13ReadOperation_skipLoyalty] = 1;
    }

    v13 = [v12 unsignedCharValue];

    if ((~v13 & 0x30) == 0)
    {
      a3[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming] = 1;
    }
  }

  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000403C(v14, qword_1003A3A90);
  v15 = a2;
  v16 = a3;
  v17 = v15;
  v18 = v16;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  v21 = &selRef_currencyCode;
  v22 = &selRef_currencyCode;
  if (os_log_type_enabled(v19, v20))
  {
    v161 = v20;
    v162 = a6;
    v23 = 7104878;
    v24 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    *v24 = 134219778;
    *(v24 + 4) = a1;
    *(v24 + 12) = 2080;
    v25 = [v17 request];
    if (v25 && (v26 = v25, v27 = [v25 merchantId], v26, v27))
    {
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;
    }

    else
    {
      v29 = 0xE300000000000000;
    }

    v30 = sub_100008F6C(v23, v29, &v169);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2080;
    sub_100004074(&qword_10039E268, &unk_1002C16F0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1002C1660;
    v32 = [v17 statusCode];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 unsignedLongLongValue];

      v167 = &type metadata for UInt64;
      v168 = &protocol witness table for UInt64;
      *&v166 = v34;
      sub_100029790(&v166, v31 + 32);
    }

    else
    {
      *(v31 + 56) = &type metadata for Int;
      *(v31 + 64) = &protocol witness table for Int;
      *(v31 + 32) = 0;
    }

    v35 = String.init(format:_:)();
    v37 = sub_100008F6C(v35, v36, &v169);

    *(v24 + 24) = v37;
    *(v24 + 32) = 2080;
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1002C1660;
    v39 = [v17 mobileCapabilities];
    if (v39)
    {
      v40 = v39;
      v41 = [v39 unsignedLongLongValue];

      v167 = &type metadata for UInt64;
      v168 = &protocol witness table for UInt64;
      *&v166 = v41;
      sub_100029790(&v166, v38 + 32);
    }

    else
    {
      *(v38 + 56) = &type metadata for Int;
      *(v38 + 64) = &protocol witness table for Int;
      *(v38 + 32) = 0;
    }

    v42 = String.init(format:_:)();
    v44 = sub_100008F6C(v42, v43, &v169);

    *(v24 + 34) = v44;
    *(v24 + 42) = 1024;
    v45 = v18[OBJC_IVAR____TtC14softposreaderd13ReadOperation_skipLoyalty];

    *(v24 + 44) = v45;
    *(v24 + 48) = 1024;
    v46 = v18[OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentDataForthcoming];

    *(v24 + 50) = v46;
    *(v24 + 54) = 2080;
    v47 = [v17 vasData];
    if (v47)
    {
      v48 = v47;
      v49 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      v52 = Data.hexString()();
      countAndFlagsBits = v52._countAndFlagsBits;
      object = v52._object;
      sub_100009548(v49, v51);
    }

    else
    {
      countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    *&v166 = countAndFlagsBits;
    *(&v166 + 1) = object;
    v55 = String.init<A>(_:)();
    v57 = sub_100008F6C(v55, v56, &v169);

    *(v24 + 56) = v57;
    *(v24 + 64) = 2080;
    v22 = &selRef_currencyCode;
    v58 = [v17 token];
    if (v58)
    {
      v59 = v58;
      v60 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;

      v63 = Data.hexString()();
      v64 = v63._countAndFlagsBits;
      v65 = v63._object;
      v66 = v62;
      v22 = &selRef_currencyCode;
      sub_100009548(v60, v66);
    }

    else
    {
      v64 = 0;
      v65 = 0xE000000000000000;
    }

    v21 = &selRef_currencyCode;
    *&v166 = v64;
    *(&v166 + 1) = v65;
    v67 = String.init<A>(_:)();
    v69 = sub_100008F6C(v67, v68, &v169);

    *(v24 + 66) = v69;
    _os_log_impl(&_mh_execute_header, v19, v161, "VAS response #%ld: (for merchantId: %s) -> statusCode: %s, mobileCapabilities: %s, skipLoyalty: %{BOOL}d, paymentDataForthcoming: %{BOOL}d, vasData: %s, mobileToken: %s", v24, 0x4Au);
    swift_arrayDestroy();

    a6 = v162;
  }

  else
  {
  }

  v70 = [v17 statusCode];
  sub_10000411C(0, &qword_1003A2308, NSNumber_ptr);
  v71 = v70;
  v72.super.super.isa = NSNumber.init(integerLiteral:)(25223).super.super.isa;
  if (!v71)
  {

    goto LABEL_33;
  }

  isa = v72.super.super.isa;
  v74 = static NSObject.== infix(_:_:)();

  if (v74)
  {

    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&_mh_execute_header, v75, v76, "VasDataNotActivated", v77, 2u);
    }

    *a4 = 1;
    v78 = 25223;
    goto LABEL_89;
  }

  v82 = v71;
  v83 = NSNumber.init(integerLiteral:)(27012).super.super.isa;
  v84 = static NSObject.== infix(_:_:)();

  if (v84)
  {

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 0;
      _os_log_impl(&_mh_execute_header, v85, v86, "VasUserIntervention", v87, 2u);
    }

    *a5 = 1;
    v78 = 27012;
    goto LABEL_89;
  }

  v88 = v82;
  v89 = NSNumber.init(integerLiteral:)(36864).super.super.isa;
  v90 = static NSObject.== infix(_:_:)();

  if (v90)
  {

    v91 = [v17 request];
    v92 = [v91 terminalProtocol];

    if (v92)
    {
      v93 = SPRVASTerminalProtocolProtocolFull;
      v94 = v92;
      v95 = static NSObject.== infix(_:_:)();

      if (v95)
      {

        v96 = [v17 v21[182]];
        if (v96)
        {
          v97 = v96;
          v98 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v100 = v99;

          sub_100009548(v98, v100);
          v101 = [v17 v21[182]];
          if (!v101)
          {
            goto LABEL_86;
          }

          v102 = v101;
          v103 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v105 = v104;

          v106 = v105;
          v107 = v105 >> 62;
          if ((v105 >> 62) <= 1)
          {
            if (!v107)
            {
              sub_100009548(v103, v105);
              v108 = BYTE6(v105);
              goto LABEL_80;
            }

LABEL_78:
            sub_100009548(v103, v106);
            LODWORD(v108) = HIDWORD(v103) - v103;
            if (!__OFSUB__(HIDWORD(v103), v103))
            {
              v108 = v108;
              goto LABEL_80;
            }

LABEL_103:
            __break(1u);
            return;
          }

          if (v107 == 2)
          {
            v145 = *(v103 + 16);
            v144 = *(v103 + 24);
            sub_100009548(v103, v106);
            v108 = v144 - v145;
            if (!__OFSUB__(v144, v145))
            {
LABEL_80:
              if (!v108)
              {
                goto LABEL_83;
              }

LABEL_86:
              v123 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasDataFound;
              goto LABEL_87;
            }

            __break(1u);
            goto LABEL_78;
          }

          sub_100009548(v103, v105);
        }

LABEL_83:
        *a6 = 1;
        v146 = Logger.logObject.getter();
        v147 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          *v148 = 0;
          _os_log_impl(&_mh_execute_header, v146, v147, "foundVasDataInvalid", v148, 2u);
        }

        goto LABEL_86;
      }

      v121 = SPRVASTerminalProtocolSignUpOnly;
      v122 = static NSObject.== infix(_:_:)();

      if (v122)
      {
        v123 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_vasURLOK;
LABEL_87:
        v18[v123] = 1;
LABEL_88:
        v78 = 36864;
        goto LABEL_89;
      }
    }

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&_mh_execute_header, v124, v125, "Invalid VASTerminalProtocol", v126, 2u);
    }

    goto LABEL_88;
  }

  v109 = v88;
  v110 = NSNumber.init(integerLiteral:)(27267).super.super.isa;
  v111 = static NSObject.== infix(_:_:)();

  if ((v111 & 1) == 0)
  {
    v115 = v109;
    v116 = NSNumber.init(integerLiteral:)(27392).super.super.isa;
    v117 = static NSObject.== infix(_:_:)();

    if (v117)
    {

      v118 = Logger.logObject.getter();
      v119 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v118, v119))
      {
        v120 = swift_slowAlloc();
        *v120 = 0;
        _os_log_impl(&_mh_execute_header, v118, v119, "VasWrongParameters - Wrong P1, P2", v120, 2u);
      }

      v78 = 27392;
      goto LABEL_89;
    }

    v127 = v115;
    v128 = NSNumber.init(integerLiteral:)(26368).super.super.isa;
    v129 = static NSObject.== infix(_:_:)();

    if (v129)
    {

      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&_mh_execute_header, v130, v131, "VasWrongLCField - Wrong length of command data field", v132, 2u);
      }

      v78 = 26368;
      goto LABEL_89;
    }

    v133 = v127;
    v134 = NSNumber.init(integerLiteral:)(27264).super.super.isa;
    v135 = static NSObject.== infix(_:_:)();

    if (v135)
    {

      v136 = Logger.logObject.getter();
      v137 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = swift_slowAlloc();
        *v138 = 0;
        _os_log_impl(&_mh_execute_header, v136, v137, "VasIncorrectData - Incorrect data in the command field", v138, 2u);
      }

      v78 = 27264;
      goto LABEL_89;
    }

    v139 = NSNumber.init(integerLiteral:)(25408).super.super.isa;
    v140 = static NSObject.== infix(_:_:)();

    if (v140)
    {
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v141, v142))
      {
        v143 = swift_slowAlloc();
        *v143 = 0;
        _os_log_impl(&_mh_execute_header, v141, v142, "VasUnsupportedApplicationVersion", v143, 2u);
      }

      v78 = 25408;
      goto LABEL_89;
    }

LABEL_33:
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v79, v80, "Unknown VAS Response Status Code", v81, 2u);
    }

    v78 = 0;
    goto LABEL_89;
  }

  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v112, v113))
  {
    v114 = swift_slowAlloc();
    *v114 = 0;
    _os_log_impl(&_mh_execute_header, v112, v113, "VasDataNotFound", v114, 2u);
  }

  if (__OFADD__(*a7, 1))
  {
    __break(1u);
    goto LABEL_103;
  }

  ++*a7;
  v78 = 27267;
LABEL_89:
  v149 = [v17 v21[182]];
  if (v149)
  {
    v150 = v149;
    v151 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v153 = v152;
  }

  else
  {
    v151 = 0;
    v153 = 0xF000000000000000;
  }

  v154 = [v17 v22[183]];
  if (v154)
  {
    v155 = v154;
    v156 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v158 = v157;
  }

  else
  {
    v156 = 0;
    v158 = 0xF000000000000000;
  }

  if (v153 >> 60 == 15)
  {
    v159 = 0;
  }

  else
  {
    v159 = Data._bridgeToObjectiveC()().super.isa;
    sub_10001A074(v151, v153);
  }

  if (v158 >> 60 == 15)
  {
    v160 = 0;
  }

  else
  {
    v160 = Data._bridgeToObjectiveC()().super.isa;
    sub_10001A074(v156, v158);
  }

  [objc_allocWithZone(SPRVASResponse) initWithStatus:v78 vasData:v159 mobileToken:v160];
}

void sub_100131058(uint64_t a1)
{
  v2 = v1;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v4 = sub_1000F5AC4(v30), (v5 & 1) != 0))
  {
    sub_10000BDA4(*(a1 + 56) + 32 * v4, v31);
    sub_10001A124(v30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {

      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000403C(v6, qword_1003A3A90);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "(Reader Mode) didStart polling A", v9, 2u);
      }

      v10 = (v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_pollingTracker);
      swift_beginAccess();
      if (v10[1] >= *v10)
      {
        atomic_fetch_add_explicit(v10, 1u, memory_order_relaxed);
      }

LABEL_11:
      swift_endAccess();
      goto LABEL_13;
    }

    v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v24)
    {
      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000403C(v25, qword_1003A3A90);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "(Reader Mode) didStart polling B", v28, 2u);
      }

      v29 = (v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_pollingTracker);
      swift_beginAccess();
      if (*v29 >= v29[1])
      {
        atomic_fetch_add_explicit(v29 + 1, 1u, memory_order_relaxed);
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_10001A124(v30);
  }

LABEL_13:
  v11 = (v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_pollingTracker);
  swift_beginAccess();
  v12 = v11[1];
  if (*v11 == 1 && v12 == 1)
  {
    v19 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
    v20 = *(v19 + 56);
    os_unfair_lock_lock(v20 + 8);
    sub_10011C8AC(&v20[4], 0);
    os_unfair_lock_unlock(v20 + 8);
    if (qword_10039D630 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for OSSignposter();
    sub_10000403C(v21, qword_1003A3AA8);
    v22 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession);
    sub_100186948("reader-ese_reader_mode_polling", 30, 2, v22, 0xD000000000000015, 0x800000010034F370);
    if (*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_paymentStartedCount) == 1 && (*(*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + 16) & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      sub_100186BE8("reader-vas_ese_reader_mode_switch", 33, 2, v22, 0xD00000000000001ELL, 0x800000010034F3C0);
      v23 = *(v19 + 56);
      os_unfair_lock_lock(v23 + 8);
      sub_10011D358(&v23[4], 2);
      os_unfair_lock_unlock(v23 + 8);
    }
  }

  else if (*v11 == v12)
  {
    v14 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotRemoveCard;
    if (*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotRemoveCard) == 1)
    {
      v15 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotSeePhone;
      if ((*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotSeePhone) & 1) == 0)
      {
        v16 = OBJC_IVAR____TtC14softposreaderd13ReadOperation_cardTearSent;
        if ((*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_cardTearSent) & 1) == 0)
        {
          v17 = *(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback);
          sub_100100D88(5, 0);
          v18 = *(*(v2 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics) + 56);
          os_unfair_lock_lock((v18 + 32));
          sub_10011C1A4((v18 + 16), 20);
          os_unfair_lock_unlock((v18 + 32));
          *(v2 + v16) = 1;
          *(v2 + v14) = 0;
          *(v2 + v15) = 0;
        }
      }
    }
  }
}

uint64_t sub_1001315B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v6 = v5;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  v18 = *&v5[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    v20 = *&v5[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
    static DispatchQoS.userInitiated.getter();
    static DispatchWorkItemFlags.enforceQoS.getter();
    v21 = swift_allocObject();
    *(v21 + 16) = v6;
    *(v21 + 24) = a2;
    aBlock[4] = v24;
    aBlock[5] = v21;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100003974;
    aBlock[3] = v25;
    v22 = _Block_copy(aBlock);
    v23 = v6;

    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v22);
    (*(v9 + 8))(v12, v8);
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100131838(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

void sub_1001318D8(char *a1, NSObject *a2, unint64_t a3, char *a4, void *a5)
{
  v250 = a5;
  v251 = a4;
  v253 = a2;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v243 = *(v8 - 8);
  v9 = *(v243 + 64);
  __chkstk_darwin(v8);
  v11 = &v231 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v242 = &v231 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for UUID();
  v240 = *(v241 - 8);
  v16 = *(v240 + 64);
  __chkstk_darwin(v241);
  v239 = &v231 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v247 = type metadata accessor for TLVTag();
  v246 = *(v247 - 8);
  v18 = *(v246 + 64);
  v19 = __chkstk_darwin(v247);
  v244 = &v231 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v245 = &v231 - v21;
  v22 = sub_100004074(&unk_10039E210, &unk_1002C65B0);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v249 = &v231 - v24;
  v252 = type metadata accessor for TLV();
  v25 = *(v252 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v252);
  v248 = &v231 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000411C(0, &qword_10039E280, NSObject_ptr);
  v28 = v5;
  v29 = *&v5[OBJC_IVAR____TtC14softposreaderd13ReadOperation_nfSeReaderSession];
  v238 = a1;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
    __break(1u);
    goto LABEL_154;
  }

  v30 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v30 != 2 || *(v253 + 16) == *(v253 + 24))
    {
LABEL_13:
      if (qword_10039D628 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_10000403C(v44, qword_1003A3A90);
      v253 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v253, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        aBlock = v47;
        *v46 = 136315138;
        *(v46 + 4) = sub_100008F6C(0xD000000000000029, 0x800000010034F340, &aBlock);
        v48 = "%s receivedData isEmpty";
LABEL_22:
        _os_log_impl(&_mh_execute_header, v253, v45, v48, v46, 0xCu);
        sub_10000959C(v47);

        return;
      }

LABEL_24:
      v52 = v253;

      return;
    }
  }

  else if (v30)
  {
    if (v253 == v253 >> 32)
    {
      goto LABEL_13;
    }
  }

  else if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_13;
  }

  v231 = v13;
  v232 = v11;
  v233 = v12;
  if (qword_10039D628 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_10000403C(v31, qword_1003A3A90);
  v33 = v253;
  sub_1000094F4(v253, a3);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  sub_100009548(v33, a3);
  v36 = os_log_type_enabled(v34, v35);
  v234 = v8;
  v236 = v29;
  v237 = a3;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v235 = v32;
    v38 = v37;
    v39 = swift_slowAlloc();
    aBlock = v39;
    *v38 = 136315138;
    v40 = Data.hexString()();
    v41 = sub_100008F6C(v40._countAndFlagsBits, v40._object, &aBlock);

    *(v38 + 4) = v41;
    v42 = v252;
    v43 = v28;
    _os_log_impl(&_mh_execute_header, v34, v35, "readerSession:receivedData: %s", v38, 0xCu);
    sub_10000959C(v39);

    v32 = v235;
  }

  else
  {

    v42 = v252;
    v43 = v28;
  }

  v49 = v250;
  v50 = v251;
  if ((sub_10011A8C8() & 1) == 0)
  {

    v253 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v253, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_100008F6C(v50, v49, &aBlock);
      v48 = "receivedData from unrecognized applet: %s";
      goto LABEL_22;
    }

    goto LABEL_24;
  }

  sub_1000094F4(v253, v237);
  v51 = v249;
  TLV.init(dataRepresentation:)();
  v251 = v43;
  (*(v25 + 56))(v51, 0, 1, v42);
  v253 = v25;
  v53 = v248;
  (*(v25 + 32))(v248, v51, v42);
  v54 = v245;
  TLV.tag.getter();
  v55 = v244;
  static TLVTag.eventStatus.getter();
  sub_100138C60(&qword_10039E260, &type metadata accessor for TLVTag);
  v56 = v247;
  v57 = dispatch thunk of static Equatable.== infix(_:_:)();
  v58 = *(v246 + 8);
  v58(v55, v56);
  if ((v57 & 1) == 0)
  {
    static TLVTag.eventOutOpsUird.getter();
    v93 = dispatch thunk of static Equatable.== infix(_:_:)();
    v58(v55, v56);
    v61 = v56;
    if ((v93 & 1) == 0)
    {
      static TLVTag.eventTrackError.getter();
      v107 = dispatch thunk of static Equatable.== infix(_:_:)();
      v58(v55, v61);
      if (v107)
      {
        v58(v54, v61);
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&_mh_execute_header, v108, v109, "HCI event: Track Error Buffer", v110, 2u);
        }

        v111 = TLV.value.getter();
        v113 = v112;
        v114 = sub_1000FAD88(v111, v112);
        sub_100009548(v111, v113);
        v115 = *(v114 + 16);
        v116 = v251;
        v235 = v32;
        if (v115)
        {
          v117 = sub_1000FB10C(v114);
          if (v117)
          {
            v118 = *&v116[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError];
            *&v116[OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError] = v117;
          }

          v119 = *(v114 + 16);
          if (v119)
          {
            aBlock = _swiftEmptyArrayStorage;
            sub_10004E2DC(0, v119, 0);
            v120 = aBlock;
            v121 = (v114 + 40);
            do
            {
              v122 = *(v121 - 1);
              v123 = *v121;
              sub_1000094F4(v122, *v121);
              v124 = Data.hexString()();
              sub_100009548(v122, v123);
              aBlock = v120;
              v126 = v120[2];
              v125 = v120[3];
              if (v126 >= v125 >> 1)
              {
                sub_10004E2DC((v125 > 1), v126 + 1, 1);
                v120 = aBlock;
              }

              v121 += 2;
              v120[2] = (v126 + 1);
              *&v120[2 * v126 + 4] = v124;
              --v119;
            }

            while (v119);

            v116 = v251;
          }

          else
          {

            v120 = _swiftEmptyArrayStorage;
          }

          aBlock = v120;
          sub_100004074(&qword_10039E270, &unk_1002C3BE0);
          sub_10001A570(&qword_10039E278, &qword_10039E270, &unk_1002C3BE0);
          BidirectionalCollection<>.joined(separator:)();

          v188 = *(*&v116[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics] + 56);
          os_unfair_lock_lock((v188 + 32));
          sub_10011C2EC((v188 + 16), 19);
          os_unfair_lock_unlock((v188 + 32));
        }

        v189 = &v116[OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus];
        if ((v116[OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus + 1] & 1) == 0 && (*v189 & 0xFE) == 6)
        {
          v190 = *&v116[OBJC_IVAR____TtC14softposreaderd13ReadOperation_queue];
          v191 = v242;
          static DispatchQoS.userInitiated.getter();
          v192 = v232;
          static DispatchWorkItemFlags.enforceQoS.getter();
          v193 = swift_allocObject();
          *(v193 + 16) = v116;
          v260 = sub_1001380BC;
          v261 = v193;
          aBlock = _NSConcreteStackBlock;
          v257 = 1107296256;
          v258 = sub_100003974;
          v259 = &unk_100384560;
          v194 = _Block_copy(&aBlock);
          v195 = v116;
          OS_dispatch_queue.async(group:qos:flags:execute:)();
          _Block_release(v194);
          (*(v243 + 8))(v192, v234);
          (*(v231 + 8))(v191, v233);
          (*(v253 + 8))(v248, v252);

          return;
        }

        v196 = v116;
        v68 = Logger.logObject.getter();
        v197 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v68, v197))
        {
          v198 = swift_slowAlloc();
          v199 = swift_slowAlloc();
          aBlock = v199;
          *v198 = 136315138;
          v60 = v248;
          if (v189[1])
          {
            v200 = 0xE300000000000000;
            v201 = 4271950;
          }

          else
          {
            v202 = *v189;
            v201 = SPRPayAppletStatus.description.getter();
            v200 = v203;
          }

          v204 = sub_100008F6C(v201, v200, &aBlock);

          *(v198 + 4) = v204;
          _os_log_impl(&_mh_execute_header, v68, v197, "No post-processing for last applet status: \n%s", v198, 0xCu);
          sub_10000959C(v199);

          goto LABEL_119;
        }
      }

      else
      {
        static TLVTag.eventSelectPPSEResponse.getter();
        v136 = dispatch thunk of static Equatable.== infix(_:_:)();
        v58(v55, v61);
        v58(v54, v61);
        if (v136)
        {
          v137 = Logger.logObject.getter();
          v138 = static os_log_type_t.info.getter();
          v139 = os_log_type_enabled(v137, v138);
          v140 = v253;
          v141 = v252;
          v142 = v248;
          if (v139)
          {
            v143 = swift_slowAlloc();
            *v143 = 0;
            _os_log_impl(&_mh_execute_header, v137, v138, "HCI event: Select PPSE Response", v143, 2u);
          }

          v144 = TLV.value.getter();
          v146 = v145;
          v147 = sub_1000FA3E8();
          sub_100009548(v144, v146);
          v148 = *&v251[OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics];
          sub_100027BBC(v147);

          (*(v140 + 8))(v142, v141);
          return;
        }
      }

      (*(v253 + 8))(v248, v252);
      return;
    }

    v58(v54, v56);
    v94 = v248;
    v95 = TLV.length.getter();
    if (v95 != 30)
    {
      v96 = v251;
      if (v95 == 8)
      {
        v97 = Logger.logObject.getter();
        v98 = static os_log_type_t.default.getter();
        v99 = os_log_type_enabled(v97, v98);
        v100 = v253;
        v101 = v252;
        if (v99)
        {
          v102 = swift_slowAlloc();
          *v102 = 0;
          _os_log_impl(&_mh_execute_header, v97, v98, "HCI event: OUT_OPS_UIRD: OPS only", v102, 2u);
        }

        v103 = TLV.value.getter();
        v105 = v104;
        v106 = sub_1000FA9C0(v103, v104);
        sub_100009548(v103, v105);
        if ((v106 & 0x100) == 0)
        {
          sub_1001371B0(v106);
          (*(v100 + 8))(v94, v101);
          v96[OBJC_IVAR____TtC14softposreaderd13ReadOperation_lastTransactionOutcomeReceived] = v106;
          return;
        }
      }

      else
      {
        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.error.getter();
        v175 = os_log_type_enabled(v173, v174);
        v100 = v253;
        v101 = v252;
        if (v175)
        {
          v176 = swift_slowAlloc();
          *v176 = 0;
          _os_log_impl(&_mh_execute_header, v173, v174, "HCI event: OUT_OPS_UIRD unrecognized length", v176, 2u);
        }
      }

      (*(v100 + 8))(v94, v101);
      return;
    }

    v156 = TLV.value.getter();
    v158 = v157;
    v159 = Data._Representation.subscript.getter();
    v161 = v160;
    sub_100009548(v156, v158);
    v162 = sub_1000FA9C0(v159, v161);
    sub_100009548(v159, v161);
    v62 = v251;
    if ((v162 & 0x100) == 0)
    {
      sub_1001371B0(v162);
      *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_lastTransactionOutcomeReceived) = v162;
    }

    v72 = TLV.value.getter();
    v164 = v163;
    v165 = sub_1000FAC48(8, v72, v163);
    v167 = v166;
    sub_100009548(v72, v164);
    v259 = &type metadata for Data;
    v260 = &protocol witness table for Data;
    aBlock = v165;
    v257 = v167;
    v168 = sub_10000BE18(&aBlock, &type metadata for Data);
    v169 = *v168;
    v170 = v168[1];
    v171 = v170 >> 62;
    if ((v170 >> 62) <= 1)
    {
      if (!v171)
      {
        v254[0] = *v168;
        LOWORD(v254[1]) = v170;
        BYTE2(v254[1]) = BYTE2(v170);
        BYTE3(v254[1]) = BYTE3(v170);
        BYTE4(v254[1]) = BYTE4(v170);
        BYTE5(v254[1]) = BYTE5(v170);
        v172 = v254 + BYTE6(v170);
LABEL_140:
        sub_10014B4B8(v254, v172, v255);
LABEL_141:
        v217 = v255[0];
        v216 = v255[1];
        sub_10000959C(&aBlock);
        v218 = sub_1000FF07C(v217, v216);
        if (v219)
        {
          (*(v253 + 8))(v94, v252);
          sub_100009548(v217, v216);
          return;
        }

        v220 = v218;
        v221 = *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback);
        sub_100100D88(v218, 0);
        if (v220 == 10)
        {
          v222 = sub_1000207FC(4046, 0, 0, 0);
          sub_100009548(v217, v216);
          (*(v253 + 8))(v94, v252);
          v223 = *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
          *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v222;

          return;
        }

        (*(v253 + 8))(v94, v252);
        sub_100009548(v217, v216);
        if (v220 != 8)
        {
          return;
        }

        goto LABEL_150;
      }

      v208 = v62;
      v62 = v169;
      v209 = v169 >> 32;
      v32 = v209 - v62;
      if (v209 < v62)
      {
        __break(1u);
        goto LABEL_159;
      }

      v210 = __DataStorage._bytes.getter();
      if (!v210)
      {
        goto LABEL_131;
      }

      v211 = __DataStorage._offset.getter();
      if (!__OFSUB__(v62, v211))
      {
        v210 += v62 - v211;
LABEL_131:
        v62 = v208;
        v212 = __DataStorage._length.getter();
        if (v212 >= v32)
        {
          v213 = v32;
        }

        else
        {
          v213 = v212;
        }

        v214 = &v210[v213];
        if (v210)
        {
          v215 = v214;
        }

        else
        {
          v215 = 0;
        }

        sub_10014B4B8(v210, v215, v255);
LABEL_138:
        v94 = v248;
        goto LABEL_141;
      }

LABEL_162:
      __break(1u);
      return;
    }

    if (v171 != 2)
    {
      memset(v254, 0, 14);
      v172 = v254;
      goto LABEL_140;
    }

    v177 = v62;
    v178 = *(v169 + 16);
    v179 = *(v169 + 24);
    v180 = __DataStorage._bytes.getter();
    if (v180)
    {
      v181 = __DataStorage._offset.getter();
      if (__OFSUB__(v178, v181))
      {
LABEL_161:
        __break(1u);
        goto LABEL_162;
      }

      v180 += v178 - v181;
    }

    v182 = __OFSUB__(v179, v178);
    v183 = v179 - v178;
    if (!v182)
    {
      v184 = __DataStorage._length.getter();
      if (v184 >= v183)
      {
        v185 = v183;
      }

      else
      {
        v185 = v184;
      }

      v186 = &v180[v185];
      if (v180)
      {
        v187 = v186;
      }

      else
      {
        v187 = 0;
      }

      sub_10014B4B8(v180, v187, v255);
      v62 = v177;
      goto LABEL_138;
    }

    __break(1u);
    goto LABEL_161;
  }

  v58(v54, v56);
  v59 = TLV.length.getter();
  v60 = v53;
  v61 = v236;
  v62 = v251;
  if (v59 == 1)
  {
    goto LABEL_31;
  }

  if (v59 == 22)
  {
    v127 = TLV.value.getter();
    v129 = v128;
    v130 = sub_1000FF07C(v127, v128);
    v132 = v131;
    sub_100009548(v127, v129);
    if (v132)
    {
LABEL_121:
      (*(v253 + 8))(v60, v252);
      return;
    }

    v133 = *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback);
    sub_100100D88(v130, 0);
    if (v130 == 10)
    {
      v134 = sub_1000207FC(4046, 0, 0, 0);
      (*(v253 + 8))(v60, v252);
      v135 = *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError);
      *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readError) = v134;

      return;
    }

    (*(v253 + 8))(v60, v252);
    if (v130 != 8)
    {
      return;
    }

LABEL_150:
    *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotSeePhone) = 1;
    *(*(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics) + 135) = 1;
    return;
  }

  if (v59 != 3)
  {
    v68 = Logger.logObject.getter();
    v149 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      v151 = "HCI event: Status: Unrecognized length";
      goto LABEL_77;
    }

    goto LABEL_120;
  }

LABEL_31:
  v63 = TLV.value.getter();
  v65 = v64;
  v66 = sub_10011AA24(v63, v64);
  sub_100009548(v63, v65);
  if ((v66 & 0x100) != 0)
  {
    v68 = Logger.logObject.getter();
    v149 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      v151 = "Could not get status byte from HCI event: Status";
      goto LABEL_77;
    }

LABEL_120:

    goto LABEL_121;
  }

  v67 = (v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_currentPayAppletStatus);
  *v67 = v66;
  v67[1] = 0;
  v68 = Logger.logObject.getter();
  if (v66 <= 0x14u)
  {
    if (v66 == 6)
    {
      v149 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v68, v149))
      {
        goto LABEL_120;
      }

      v150 = swift_slowAlloc();
      *v150 = 0;
      v151 = "HCI event: Status: Transaction Complete <--- --- ---";
      goto LABEL_77;
    }

    if (v66 != 7)
    {
LABEL_147:
      v224 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v68, v224))
      {
        goto LABEL_120;
      }

      v225 = swift_slowAlloc();
      *v225 = 16777472;
      *(v225 + 4) = v66;
      v151 = "HCI event: Unknown Status: %hhu";
      v152 = v224;
      v153 = v68;
      v154 = v225;
      v155 = 5;
      goto LABEL_78;
    }

    v149 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v68, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      v151 = "HCI event: Status: Transaction Error <--- --- ---";
      goto LABEL_77;
    }

    goto LABEL_120;
  }

  if (v66 != 21)
  {
    if (v66 != 29)
    {
      if (v66 == 30)
      {
        v69 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&_mh_execute_header, v68, v69, "HCI event: Status: Target Discovered", v70, 2u);
        }

        v71 = *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_callback);
        sub_100100D88(1, 0);
        v72 = *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics);
        sub_10011BBA0(&off_10037EDE8);
        sub_10011B164(&off_10037EDC0);
        if (qword_10039D630 == -1)
        {
LABEL_39:
          v73 = type metadata accessor for OSSignposter();
          sub_10000403C(v73, qword_1003A3AA8);
          sub_100187018(&off_10037EE10, 0xD000000000000012, 0x800000010034F2C0, "reader-ese_reader_mode_polling", 30, 2, 0xD000000000000013, 0x800000010034F300);
          v74 = *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_fallbackTransactionStarted) == 1;
          v235 = v32;
          v249 = v72;
          if (v74)
          {
            sub_100186BE8("reader-between_payment_reads", 28, 2, v61, 0xD00000000000001FLL, 0x800000010034F320);
            v75 = *(v72 + 56);
            os_unfair_lock_lock(v75 + 8);
            sub_10011D358(&v75[4], 15);
            os_unfair_lock_unlock(v75 + 8);
          }

          v76 = *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 24);
          v77 = *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor + 32);
          v250 = sub_10000BE18((v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_auditor), v76);
          sub_100004074(&unk_1003A3C10, &unk_1002C3760);
          inited = swift_initStackObject();
          v247 = xmmword_1002C1660;
          *(inited + 16) = xmmword_1002C1660;
          strcpy((inited + 32), "transactionId");
          *(inited + 46) = -4864;
          v79 = v240;
          v80 = v239;
          v81 = v241;
          (*(v240 + 16))(v239, *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_readerConfig) + OBJC_IVAR____TtC14softposreaderd19ReaderConfiguration_transactionUUID, v241);
          v82 = UUID.uuidString.getter();
          v84 = v83;
          (*(v79 + 8))(v80, v81);
          *(inited + 48) = v82;
          *(inited + 56) = v84;
          v85 = sub_100183EFC(inited);
          swift_setDeallocating();
          sub_10000BD44(inited + 32, &qword_10039FE90, &unk_1002C5970);
          (*(v77 + 8))(12, 2, v85, v76, v77);

          a1 = v248;
          if (TLV.length.getter() != 3)
          {
            v25 = v253;
LABEL_152:
            (*(v25 + 8))(a1, v252);
            return;
          }

          v86 = TLV.value.getter();
          v88 = v87;
          v12 = Data.at(index:)();
          v11 = v89;
          sub_100009548(v86, v88);
          v25 = v253;
          if (v11 >> 60 == 15)
          {
LABEL_44:
            v90 = Logger.logObject.getter();
            v91 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v90, v91))
            {
              v92 = swift_slowAlloc();
              *v92 = 0;
              _os_log_impl(&_mh_execute_header, v90, v91, "Could not get or unexpected polling type in HCI event", v92, 2u);
            }

            goto LABEL_152;
          }

LABEL_154:
          v226 = Data.toUInt8()();
          sub_10001A074(v12, v11);
          if (v226 == 17 || v226 == 255 || v226 == 19)
          {
            sub_100004074(&unk_1003A3BF0, &unk_1002C73A0);
            v227 = swift_initStackObject();
            *(v227 + 16) = v247;
            *(v227 + 32) = 24;
            v228 = v227 + 32;
            *(v227 + 64) = &type metadata for UInt8;
            *(v227 + 40) = v226;
            sub_10018399C(v227);
            swift_setDeallocating();
            v229 = sub_10000BD44(v228, &qword_10039EC60, &qword_1002C1F80);
            v230 = *(v249 + 7);
            __chkstk_darwin(v229);
            os_unfair_lock_lock((v230 + 32));
            sub_100117CD8((v230 + 16));
            os_unfair_lock_unlock((v230 + 32));

            (*(v25 + 8))(a1, v252);
            return;
          }

          goto LABEL_44;
        }

LABEL_159:
        swift_once();
        goto LABEL_39;
      }

      goto LABEL_147;
    }

    v149 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v68, v149))
    {
      goto LABEL_120;
    }

    v150 = swift_slowAlloc();
    *v150 = 0;
    v151 = "HCI event: Status: Multiple Card";
LABEL_77:
    v152 = v149;
    v153 = v68;
    v154 = v150;
    v155 = 2;
LABEL_78:
    _os_log_impl(&_mh_execute_header, v153, v152, v151, v154, v155);
LABEL_119:

    goto LABEL_120;
  }

  v205 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v68, v205))
  {
    v206 = swift_slowAlloc();
    *v206 = 0;
    _os_log_impl(&_mh_execute_header, v68, v205, "HCI event: Status: Remove Card", v206, 2u);
  }

  v207 = *(*(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_analytics) + 56);
  os_unfair_lock_lock(v207 + 8);
  sub_10011D358(&v207[4], 6);
  os_unfair_lock_unlock(v207 + 8);
  (*(v253 + 8))(v60, v252);
  *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_gotRemoveCard) = 1;
  *(v62 + OBJC_IVAR____TtC14softposreaderd13ReadOperation_cardTearSent) = 0;
}