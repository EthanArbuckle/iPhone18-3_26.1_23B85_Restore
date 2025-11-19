uint64_t sub_1010C6C3C(uint64_t a1, double a2, double a3)
{
  v6 = type metadata accessor for UUID();
  v54 = *(v6 - 8);
  v7 = *(v54 + 64);
  __chkstk_darwin(v6);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BeaconObservation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v53 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v52 = (&v48 - v16);
  __chkstk_darwin(v15);
  v18 = &v48 - v17;
  v19 = *(a1 + 16);

  v20 = _swiftEmptyArrayStorage;
  v51 = v11;
  if (v19)
  {
    v21 = *(v11 + 72);
    v49 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v50 = a1;
    v22 = a1 + v49;
    v23 = -a3;
    v24 = -a2;
    do
    {
      sub_10003500C(v22, v18, type metadata accessor for BeaconObservation);
      v25 = v18[*(v10 + 24)];
      if ((v25 - 13) >= 0x1F)
      {
        v26 = 1 << v25;
        if ((v26 & 0x67F) == 0)
        {
          if ((v26 & 0x980) != 0)
          {
            v27 = &v18[*(v10 + 20)];
            Date.timeIntervalSinceNow.getter();
            if (v28 >= v24)
            {
              goto LABEL_12;
            }
          }

          else
          {
            v29 = &v18[*(v10 + 20)];
            Date.timeIntervalSinceNow.getter();
            if (v30 >= v23)
            {
LABEL_12:
              sub_100029488(v18, v52, type metadata accessor for BeaconObservation);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v55 = v20;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_101124308(0, v20[2] + 1, 1);
                v20 = v55;
              }

              v33 = v20[2];
              v32 = v20[3];
              v34 = v33 + 1;
              if (v33 >= v32 >> 1)
              {
                sub_101124308(v32 > 1, v33 + 1, 1);
                v34 = v33 + 1;
                v20 = v55;
              }

              v20[2] = v34;
              sub_100029488(v52, v20 + v49 + v33 * v21, type metadata accessor for BeaconObservation);
              goto LABEL_6;
            }
          }
        }
      }

      sub_1010C8B84(v18, type metadata accessor for BeaconObservation);
LABEL_6:
      v22 += v21;
      --v19;
    }

    while (v19);
  }

  v35 = v20[2];
  if (v35)
  {
    v55 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v35, 0);
    v36 = *(v51 + 80);
    v52 = v20;
    v37 = v20 + ((v36 + 32) & ~v36);
    v38 = *(v51 + 72);
    v39 = v55;
    v40 = (v54 + 16);
    do
    {
      v41 = v53;
      sub_10003500C(v37, v53, type metadata accessor for BeaconObservation);
      (*v40)(v9, v41, v6);
      sub_1010C8B84(v41, type metadata accessor for BeaconObservation);
      v55 = v39;
      v42 = v9;
      v43 = v6;
      v45 = v39[2];
      v44 = v39[3];
      if (v45 >= v44 >> 1)
      {
        sub_101123D4C(v44 > 1, v45 + 1, 1);
        v39 = v55;
      }

      v39[2] = v45 + 1;
      (*(v54 + 32))(v39 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v45, v42, v43);
      v37 += v38;
      --v35;
      v6 = v43;
      v9 = v42;
    }

    while (v35);
  }

  else
  {

    v39 = _swiftEmptyArrayStorage;
  }

  v46 = sub_10000954C(v39);

  return v46;
}

uint64_t sub_1010C70E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v104 = a4;
  v77[0] = a2;
  v78 = a1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v87 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v101 = v77 - v10;
  v108 = type metadata accessor for BeaconObservation();
  v11 = *(v108 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v108);
  v15 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v77 - v16;
  v18 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v86 = v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v23 = v77 - v22;
  v24 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v95 = v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v91 = v77 - v29;
  __chkstk_darwin(v28);
  v105 = v77 - v30;
  v106 = type metadata accessor for UUID();
  v31 = *(*(v106 - 8) + 64);
  result = __chkstk_darwin(v106);
  v107 = v77 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = 0;
  v35 = 0;
  v36 = *(a3 + 56);
  v81 = a3 + 56;
  v37 = 1 << *(a3 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v80 = (v37 + 63) >> 6;
  v92 = v33 + 16;
  v109 = v11;
  v88 = (v6 + 16);
  v89 = (v11 + 56);
  v102 = (v6 + 56);
  v103 = (v11 + 48);
  v96 = (v6 + 48);
  v85 = (v6 + 32);
  v84 = (v6 + 8);
  v93 = v33;
  v90 = (v33 + 8);
  v97 = v23;
  v98 = a3;
  v82 = v5;
  do
  {
    do
    {
      if (!v39)
      {
        v48 = v35;
        while (1)
        {
          v35 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_36;
          }

          if (v35 >= v80)
          {
            goto LABEL_34;
          }

          v49 = *(v81 + 8 * v35);
          ++v48;
          if (v49)
          {
            v47 = __clz(__rbit64(v49));
            v100 = (v49 - 1) & v49;
            goto LABEL_13;
          }
        }
      }

      v47 = __clz(__rbit64(v39));
      v100 = (v39 - 1) & v39;
LABEL_13:
      v50 = v47 | (v35 << 6);
      v51 = *(a3 + 48);
      v52 = *(v93 + 72);
      v83 = v50;
      v53 = v107;
      (*(v93 + 16))(v107, v51 + v52 * v50, v106);
      v54 = sub_100035730(v53, sub_100023854, 0);
      v55 = v54[2];
      if (v55)
      {
        v56 = v54 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
        result = sub_10003500C(v56, v17, type metadata accessor for BeaconObservation);
        v57 = v108;
        if (v55 == 1)
        {
LABEL_15:
          v23 = v97;
          sub_100029488(v17, v97, type metadata accessor for BeaconObservation);
          (*v89)(v23, 0, 1, v57);

          a3 = v98;
          v58 = v57;
          v5 = v82;
          goto LABEL_17;
        }

        v73 = 1;
        while (1)
        {
          v74 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            break;
          }

          sub_10003500C(v56 + *(v109 + 72) * v73, v15, type metadata accessor for BeaconObservation);
          v75 = *(v57 + 20);
          if (static Date.< infix(_:_:)())
          {
            sub_1010C8B84(v17, type metadata accessor for BeaconObservation);
            v57 = v108;
            result = sub_100029488(v15, v17, type metadata accessor for BeaconObservation);
          }

          else
          {
            result = sub_1010C8B84(v15, type metadata accessor for BeaconObservation);
          }

          ++v73;
          if (v74 == v55)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        return result;
      }

      v58 = v108;
      (*v89)(v23, 1, 1, v108);

LABEL_17:
      v99 = *v103;
      v59 = v99(v23, 1, v58);
      v60 = v91;
      if (v59 == 1)
      {
        sub_10000B3A8(v23, &qword_1016A42E0, &qword_1013B0010);
        v61 = 1;
        v62 = v105;
      }

      else
      {
        v63 = &v23[*(v58 + 20)];
        v62 = v105;
        (*v88)(v105, v63, v5);
        sub_1010C8B84(v23, type metadata accessor for BeaconObservation);
        v61 = 0;
      }

      v64 = *v102;
      (*v102)(v62, v61, 1, v5);
      sub_1000D3410(v62, v60);
      v65 = *v96;
      if ((*v96)(v60, 1, v5) == 1)
      {
        sub_10000B3A8(v105, &unk_101696900, &unk_10138B1E0);
        sub_10000B3A8(v60, &unk_101696900, &unk_10138B1E0);
        result = (*v90)(v107, v106);
        v39 = v100;
        break;
      }

      v66 = v5;
      v94 = *v85;
      v94(v101, v60, v5);
      v67 = swift_allocObject();
      *(v67 + 16) = &off_101608510;
      v68 = sub_100035730(v107, sub_1010C8BF0, v67);

      v69 = v86;
      sub_1012BB138(v68, v86);

      v70 = v108;
      if (v99(v69, 1, v108) == 1)
      {
        sub_10000B3A8(v69, &qword_1016A42E0, &qword_1013B0010);
        v71 = v95;
        v64(v95, 1, 1, v66);
        v41 = v87;
        static Date.distantPast.getter();
        v72 = v65(v71, 1, v66);
        v5 = v66;
        a3 = v98;
        if (v72 != 1)
        {
          sub_10000B3A8(v95, &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v40 = v95;
        (*v88)(v95, (v69 + *(v70 + 20)), v66);
        sub_1010C8B84(v69, type metadata accessor for BeaconObservation);
        v64(v40, 0, 1, v66);
        v41 = v87;
        v94(v87, v40, v66);
        v5 = v66;
        a3 = v98;
      }

      v42 = v101;
      v43 = static Date.> infix(_:_:)();
      v44 = v41;
      v45 = v43;
      v46 = *v84;
      (*v84)(v44, v5);
      v46(v42, v5);
      sub_10000B3A8(v105, &unk_101696900, &unk_10138B1E0);
      result = (*v90)(v107, v106);
      v23 = v97;
      v39 = v100;
    }

    while ((v45 & 1) != 0);
    *(v78 + ((v83 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v83;
  }

  while (!__OFADD__(v79++, 1));
  __break(1u);
LABEL_34:

  return sub_10060AF64(v78, v77[0], v79, a3);
}

uint64_t sub_1010C7B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v82 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v98 = &v73 - v9;
  v104 = type metadata accessor for BeaconObservation();
  v10 = *(v104 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v104);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v73 - v15;
  v17 = sub_1000BC4D4(&qword_1016A42E0, &qword_1013B0010);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v81 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v88 = &v73 - v21;
  v22 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22 - 8);
  v91 = &v73 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v89 = &v73 - v27;
  __chkstk_darwin(v26);
  v96 = &v73 - v28;
  v101 = type metadata accessor for UUID();
  v29 = *(v101 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v101);
  v103 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v31) = *(a1 + 32);
  v32 = v31 & 0x3F;
  v74 = ((1 << v31) + 63) >> 6;
  v33 = 8 * v74;
  v102 = a2;

  if (v32 > 0xD)
  {
LABEL_39:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v71 = swift_slowAlloc();
      v72 = v102;

      v69 = sub_1010C6178(v71, v74, a1, v72);

      return v69;
    }
  }

  v97 = v4;
  v73 = &v73;
  __chkstk_darwin(v34);
  v75 = &v73 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v75, v33);
  v76 = 0;
  v35 = 0;
  v36 = *(a1 + 56);
  v78 = a1 + 56;
  v37 = 1 << *(a1 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & v36;
  v77 = (v37 + 63) >> 6;
  v90 = v29 + 16;
  v84 = (v10 + 56);
  v100 = (v10 + 48);
  v83 = (v5 + 16);
  v99 = (v5 + 56);
  v92 = (v5 + 32);
  v93 = (v5 + 48);
  v80 = (v5 + 8);
  v85 = (v29 + 8);
  v105 = v10;
  v33 = v96;
  v86 = v29;
  v87 = a1;
  do
  {
    do
    {
      if (!v39)
      {
        v48 = v35;
        v4 = v97;
        while (1)
        {
          v35 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_38;
          }

          if (v35 >= v77)
          {
            goto LABEL_35;
          }

          v49 = *(v78 + 8 * v35);
          ++v48;
          if (v49)
          {
            v95 = (v49 - 1) & v49;
            v47 = __clz(__rbit64(v49)) | (v35 << 6);
            goto LABEL_14;
          }
        }
      }

      v95 = (v39 - 1) & v39;
      v47 = __clz(__rbit64(v39)) | (v35 << 6);
      v4 = v97;
LABEL_14:
      v50 = *(a1 + 48);
      v51 = *(v29 + 72);
      v79 = v47;
      v52 = v103;
      (*(v29 + 16))(v103, v50 + v51 * v47, v101);
      v53 = sub_100035730(v52, sub_100023854, 0);
      v5 = v53;
      v29 = v53[2];
      if (v29)
      {
        v33 = v53 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
        sub_10003500C(v33, v16, type metadata accessor for BeaconObservation);
        a1 = v104;
        if (v29 == 1)
        {
LABEL_16:
          v54 = v88;
          sub_100029488(v16, v88, type metadata accessor for BeaconObservation);
          (*v84)(v54, 0, 1, a1);

          v33 = v96;
          v4 = v97;
          goto LABEL_18;
        }

        v4 = 1;
        while (1)
        {
          v10 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          sub_10003500C(v33 + *(v105 + 72) * v4, v14, type metadata accessor for BeaconObservation);
          v67 = *(a1 + 20);
          if (static Date.< infix(_:_:)())
          {
            sub_1010C8B84(v16, type metadata accessor for BeaconObservation);
            a1 = v104;
            sub_100029488(v14, v16, type metadata accessor for BeaconObservation);
          }

          else
          {
            sub_1010C8B84(v14, type metadata accessor for BeaconObservation);
          }

          ++v4;
          if (v10 == v29)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
        goto LABEL_39;
      }

      v54 = v88;
      a1 = v104;
      (*v84)(v88, 1, 1, v104);

LABEL_18:
      v94 = *v100;
      v55 = v94(v54, 1, a1);
      v5 = v89;
      if (v55 == 1)
      {
        sub_10000B3A8(v54, &qword_1016A42E0, &qword_1013B0010);
        v56 = 1;
      }

      else
      {
        (*v83)(v33, v54 + *(a1 + 20), v4);
        sub_1010C8B84(v54, type metadata accessor for BeaconObservation);
        v56 = 0;
      }

      v57 = v92;
      v58 = *v99;
      (*v99)(v33, v56, 1, v4);
      sub_1000D3410(v33, v5);
      v59 = *v93;
      if ((*v93)(v5, 1, v4) == 1)
      {
        sub_10000B3A8(v33, &unk_101696900, &unk_10138B1E0);
        sub_10000B3A8(v5, &unk_101696900, &unk_10138B1E0);
        (*v85)(v103, v101);
        v29 = v86;
        a1 = v87;
        v10 = v105;
        v39 = v95;
        break;
      }

      v60 = *v57;
      (*v57)(v98, v5, v4);
      v61 = swift_allocObject();
      *(v61 + 16) = &off_101608510;
      v62 = sub_100035730(v103, sub_1010C8BF0, v61);

      v63 = v81;
      sub_1012BB138(v62, v81);

      v64 = v104;
      if (v94(v63, 1, v104) == 1)
      {
        sub_10000B3A8(v63, &qword_1016A42E0, &qword_1013B0010);
        v65 = v91;
        v58(v91, 1, 1, v4);
        v41 = v82;
        static Date.distantPast.getter();
        v66 = v59(v65, 1, v4);
        v42 = v105;
        if (v66 != 1)
        {
          sub_10000B3A8(v91, &unk_101696900, &unk_10138B1E0);
        }
      }

      else
      {
        v40 = v91;
        (*v83)(v91, v63 + *(v64 + 20), v4);
        sub_1010C8B84(v63, type metadata accessor for BeaconObservation);
        v58(v40, 0, 1, v4);
        v41 = v82;
        v60(v82, v40, v4);
        v42 = v105;
      }

      v43 = v98;
      v44 = static Date.> infix(_:_:)();
      v45 = v41;
      v5 = v44;
      v46 = *v80;
      (*v80)(v45, v4);
      v46(v43, v4);
      v33 = v96;
      sub_10000B3A8(v96, &unk_101696900, &unk_10138B1E0);
      (*v85)(v103, v101);
      v39 = v95;
      v10 = v42;
      v29 = v86;
      a1 = v87;
    }

    while ((v5 & 1) != 0);
    *&v75[(v79 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v79;
  }

  while (!__OFADD__(v76++, 1));
  __break(1u);
LABEL_35:
  v69 = sub_10060AF64(v75, v74, v76, a1);

  return v69;
}

uint64_t sub_1010C86EC(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v41 = *(v2 - 8);
  v3 = *(v41 + 64);
  __chkstk_darwin(v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for BeaconObservation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v40 = &v35 - v13;
  __chkstk_darwin(v12);
  v15 = &v35 - v14;
  v16 = *(a1 + 16);

  v37 = v7;
  v38 = a1;
  if (v16)
  {
    v17 = *(v7 + 72);
    v39 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v18 = a1 + v39;
    v19 = _swiftEmptyArrayStorage;
    do
    {
      sub_10003500C(v18, v15, type metadata accessor for BeaconObservation);
      if (((1 << v15[*(v6 + 24)]) & 0xFFDFFFE7BFDLL) != 0)
      {
        sub_1010C8B84(v15, type metadata accessor for BeaconObservation);
      }

      else
      {
        sub_100029488(v15, v40, type metadata accessor for BeaconObservation);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_101124308(0, v19[2] + 1, 1);
          v19 = v42;
        }

        v22 = v19[2];
        v21 = v19[3];
        v23 = v22 + 1;
        if (v22 >= v21 >> 1)
        {
          v36 = v22 + 1;
          sub_101124308(v21 > 1, v22 + 1, 1);
          v23 = v36;
          v19 = v42;
        }

        v19[2] = v23;
        sub_100029488(v40, v19 + v39 + v22 * v17, type metadata accessor for BeaconObservation);
      }

      v18 += v17;
      --v16;
    }

    while (v16);
  }

  else
  {
    v19 = _swiftEmptyArrayStorage;
  }

  v24 = v19[2];
  if (v24)
  {
    v42 = _swiftEmptyArrayStorage;
    sub_101123D4C(0, v24, 0);
    v25 = v19 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v26 = *(v37 + 72);
    v39 = v19;
    v40 = v26;
    v27 = v42;
    v28 = (v41 + 16);
    do
    {
      sub_10003500C(v25, v11, type metadata accessor for BeaconObservation);
      (*v28)(v5, v11, v2);
      sub_1010C8B84(v11, type metadata accessor for BeaconObservation);
      v42 = v27;
      v29 = v5;
      v30 = v2;
      v32 = v27[2];
      v31 = v27[3];
      if (v32 >= v31 >> 1)
      {
        sub_101123D4C(v31 > 1, v32 + 1, 1);
        v27 = v42;
      }

      v27[2] = v32 + 1;
      (*(v41 + 32))(v27 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32, v29, v30);
      v25 += v40;
      --v24;
      v2 = v30;
      v5 = v29;
    }

    while (v24);
  }

  else
  {

    v27 = _swiftEmptyArrayStorage;
  }

  v33 = sub_10000954C(v27);

  return v33;
}

uint64_t sub_1010C8B3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1010C8B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1010C8C10(char a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *v6;
  v21 = a2;
  v22 = v12;
  v13 = type metadata accessor for MessagingMessageContext();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Transaction();
  sub_100D2577C(a6, v16);
  v17 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v18 = (v15 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = v21;
  *(v19 + 32) = a3;
  *(v19 + 40) = a4;
  *(v19 + 48) = v6;
  *(v19 + 56) = a5;
  sub_100476E9C(v16, v19 + v17);
  *(v19 + v18) = v22;
  sub_100017D5C(a3, a4);

  static Transaction.asyncTask(name:block:)();
}

uint64_t sub_1010C8DC4()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C630);
  v1 = sub_1000076D4(v0, qword_10177C630);
  if (qword_1016947E8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177AF70);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1010C8EB0(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 64) = a1;
  v6 = *(*(type metadata accessor for PeerTrustAckEnvelopeV1(0) - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1010C8F48, 0, 0);
}

uint64_t sub_1010C8F48()
{
  if (*(v0 + 64))
  {
    if (qword_101695238 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177C630);
    sub_100017D5C(v1, v2);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v8 = *(v0 + 24);
    v7 = *(v0 + 32);
    if (v6)
    {
      v9 = *(v0 + 64);
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v9 + 1;
      sub_100016590(v8, v7);
      _os_log_impl(&_mh_execute_header, v4, v5, "Ignoring non peertrust message: %d", v10, 8u);
    }

    else
    {
      sub_100016590(*(v0 + 24), *(v0 + 32));
    }

    v12 = *(v0 + 48);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v11 = *(v0 + 40);

    return _swift_task_switch(sub_1010C90FC, v11, 0);
  }
}

uint64_t sub_1010C90FC()
{
  v1 = v0[2];
  if (v1 == 1)
  {
    v2 = v0[3];
    v3 = v0[4];
    sub_100596538(v0[6]);
    v7 = v0[5];
    v0[7] = *(v7 + 112);
    v8 = *(v7 + 120);
    swift_getObjectType();
    v9 = *(v8 + 8);
    v10 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1010C9204, v10, v11);
  }

  else
  {
    sub_1010C943C(0, v1, v0[3], v0[4]);
    v4 = v0[6];

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1010C9204()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  type metadata accessor for PeerTrustService();
  sub_1010C9628();
  sub_100E8B550(v1);

  return _swift_task_switch(sub_1010C9294, v3, 0);
}

uint64_t sub_1010C9294()
{
  sub_1010C9680(*(v0 + 48));
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1010C92FC()
{
  v2 = *(type metadata accessor for MessagingMessageContext() - 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + ((*(v2 + 64) + ((*(v2 + 80) + 64) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *(v0 + 16);
  v10 = swift_task_alloc();
  *(v1 + 16) = v10;
  *v10 = v1;
  v10[1] = sub_100014650;

  return sub_1010C8EB0(v9, v3, v4, v5, v6);
}

void sub_1010C943C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_101695238 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177C630);
  sub_100017D5C(a3, a4);
  sub_100017D5C(a3, a4);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136446466;
    v11 = String.init<A>(describing:)();
    v13 = sub_1000136BC(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2048;
    sub_100016590(a3, a4);
    *(v9 + 14) = a2;
    sub_100016590(a3, a4);
    _os_log_impl(&_mh_execute_header, oslog, v8, "Unsupported version of %{public}s: %ld", v9, 0x16u);
    sub_100007BAC(v10);
  }

  else
  {
    sub_100016590(a3, a4);
    sub_100016590(a3, a4);
  }
}

unint64_t sub_1010C9628()
{
  result = qword_1016B1188;
  if (!qword_1016B1188)
  {
    type metadata accessor for PeerTrustService();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B1188);
  }

  return result;
}

uint64_t sub_1010C9680(uint64_t a1)
{
  v2 = type metadata accessor for PeerTrustAckEnvelopeV1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1010C96DC(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 96))())
  {
    return 1;
  }

  if ((*(a2 + 104))(a1, a2))
  {
    return 3;
  }

  return 2;
}

uint64_t sub_1010C9750(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100B320FC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1010C9FE8(v6);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_1010C97CC()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v6 = 0;
LABEL_13:

    return v6;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v6 = 0;
  if (v5)
  {
    return v6;
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
  {
    v6 = 1;
    goto LABEL_13;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    return 1;
  }

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  if (v14 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v16 == v17)
  {
    v6 = 2;
    goto LABEL_13;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v18)
  {
    return 2;
  }

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;
  if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
  {
    v6 = 3;
    goto LABEL_13;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v23)
  {
    return 3;
  }

  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;
  if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
  {
    v6 = 4;
    goto LABEL_13;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v28)
  {
    return 4;
  }

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;
  if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
  {
    v6 = 5;
    goto LABEL_13;
  }

  v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v33)
  {
    return 5;
  }

  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;
  if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
  {
    v6 = 10;
    goto LABEL_13;
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v38)
  {
    return 10;
  }

  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = v40;
  if (v39 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v41 == v42)
  {
    v6 = 11;
    goto LABEL_13;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v43)
  {
    return 11;
  }

  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;
  if (v44 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v46 == v47)
  {
    v6 = 6;
    goto LABEL_13;
  }

  v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v48)
  {
    return 6;
  }

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v50;
  if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
  {
    v6 = 7;
    goto LABEL_13;
  }

  v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v53)
  {
    return 7;
  }

  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;
  if (v54 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v56 == v57)
  {
    v6 = 8;
    goto LABEL_13;
  }

  v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v58)
  {
    return 8;
  }

  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;
  if (v59 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v61 == v62)
  {
    v6 = 9;
    goto LABEL_13;
  }

  v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v63)
  {
    return 9;
  }

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;
  if (v64 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v66 == v67)
  {
    v6 = 15;
    goto LABEL_13;
  }

  v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v68)
  {
    return 15;
  }

  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;
  if (v69 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v71 == v72)
  {
    v6 = 16;
    goto LABEL_13;
  }

  v73 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v73)
  {
    return 16;
  }

  v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v76 = v75;
  if (v74 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v76 == v77)
  {
    v6 = 17;
    goto LABEL_13;
  }

  v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v78)
  {
    return 17;
  }

  v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v80;
  if (v79 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v81 == v82)
  {
    v6 = 18;
    goto LABEL_13;
  }

  v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v83)
  {
    return 18;
  }

  _StringGuts.grow(_:)(60);
  v84._object = 0x800000010137B0D0;
  v84._countAndFlagsBits = 0xD00000000000003ALL;
  String.append(_:)(v84);
  type metadata accessor for SPBeaconLocationSource(0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void sub_1010C9FE8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1010CA31C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1010CA0FC(0, v2, 1, a1);
  }
}

void sub_1010CA0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = type metadata accessor for Date();
  v8 = *(*(v36 - 8) + 64);
  v9 = __chkstk_darwin(v36);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v30 - v12;
  v31 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v37 = *a4;
    v15 = v37 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v33 = v15;
    v34 = a3;
    v17 = *(v37 + 8 * a3);
    v32 = v16;
    v18 = v16;
    while (1)
    {
      v19 = *v15;
      v20 = v17;
      v21 = v19;
      v22 = [v20 timestamp];
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v23 = [v21 timestamp];
      v24 = v35;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LOBYTE(v23) = static Date.< infix(_:_:)();
      v25 = *v14;
      v26 = v24;
      v27 = v36;
      (*v14)(v26, v36);
      v25(v13, v27);

      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v34 + 1;
        v15 = v33 + 8;
        v16 = v32 - 1;
        if (v34 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v28 = *v15;
      v17 = *(v15 + 8);
      *v15 = v17;
      *(v15 + 8) = v28;
      v15 -= 8;
      if (__CFADD__(v18++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1010CA31C(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v117 = a1;
  v126 = type metadata accessor for Date();
  v9 = *(*(v126 - 8) + 64);
  v10 = __chkstk_darwin(v126);
  v125 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v124 = &v111 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v117;
    if (!*v117)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v17 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v106 = a4;
    }

    else
    {
LABEL_121:
      v106 = sub_100B31E68(a4);
    }

    v127 = v106;
    v107 = *(v106 + 2);
    if (v107 >= 2)
    {
      while (*v17)
      {
        a4 = *&v106[16 * v107];
        v108 = v106;
        v109 = *&v106[16 * v107 + 24];
        sub_1010CAB8C((*v17 + 8 * a4), (*v17 + 8 * *&v106[16 * v107 + 16]), (*v17 + 8 * v109), v5);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v109 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_100B31E68(v108);
        }

        if (v107 - 2 >= *(v108 + 2))
        {
          goto LABEL_115;
        }

        v110 = &v108[16 * v107];
        *v110 = a4;
        v110[1] = v109;
        v127 = v108;
        sub_100B31DDC(v107 - 1);
        v106 = v127;
        v107 = *(v127 + 2);
        if (v107 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v15 = 0;
  v123 = (v12 + 8);
  v16 = _swiftEmptyArrayStorage;
  v116 = a4;
  v112 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v121 = v14;
      v114 = v16;
      v115 = v6;
      v18 = *a3;
      v19 = *(*a3 + 8 * v15);
      v120 = 8 * v17;
      v20 = (v18 + 8 * v17);
      v21 = *v20;
      v5 = (v20 + 2);
      v22 = v19;
      v23 = v21;
      v24 = [v22 timestamp];
      v25 = v124;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v26 = [v23 timestamp];
      v27 = v125;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      LODWORD(v122) = static Date.< infix(_:_:)();
      v28 = *v123;
      v29 = v126;
      (*v123)(v27, v126);
      v28(v25, v29);

      v113 = v17;
      v30 = (v17 + 2);
      while (1)
      {
        v15 = v121;
        if (v121 == v30)
        {
          break;
        }

        v31 = *(v5 - 8);
        v32 = *v5;
        v33 = v31;
        v34 = [v32 timestamp];
        v35 = v124;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v36 = [v33 timestamp];
        v37 = v125;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LODWORD(v36) = static Date.< infix(_:_:)() & 1;
        v38 = v37;
        v39 = v126;
        v28(v38, v126);
        v28(v35, v39);

        ++v30;
        v5 += 8;
        if ((v122 & 1) != v36)
        {
          v15 = (v30 - 1);
          break;
        }
      }

      v16 = v114;
      v6 = v115;
      a4 = v116;
      v17 = v113;
      v40 = v120;
      if (v122)
      {
        if (v15 < v113)
        {
          goto LABEL_118;
        }

        a3 = v112;
        if (v113 < v15)
        {
          v41 = 8 * v15 - 8;
          v42 = v15;
          v43 = v113;
          do
          {
            if (v43 != --v42)
            {
              v45 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v44 = *(v45 + v40);
              *(v45 + v40) = *(v45 + v41);
              *(v45 + v41) = v44;
            }

            v43 = (v43 + 1);
            v41 -= 8;
            v40 += 8;
          }

          while (v43 < v42);
        }
      }

      else
      {
        a3 = v112;
      }
    }

    v46 = a3[1];
    if (v15 < v46)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v47 = (v17 + a4);
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v47 >= v46)
        {
          v47 = a3[1];
        }

        if (v47 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v47)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v62 = v16;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v16 = v62;
    }

    else
    {
      v16 = sub_100A5B430(0, *(v62 + 2) + 1, 1, v62);
    }

    a4 = *(v16 + 2);
    v63 = *(v16 + 3);
    v5 = a4 + 1;
    if (a4 >= v63 >> 1)
    {
      v16 = sub_100A5B430((v63 > 1), a4 + 1, 1, v16);
    }

    *(v16 + 2) = v5;
    v64 = &v16[16 * a4];
    *(v64 + 4) = v17;
    *(v64 + 5) = v15;
    v65 = *v117;
    if (!*v117)
    {
      goto LABEL_126;
    }

    if (a4)
    {
      while (1)
      {
        v66 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v67 = *(v16 + 4);
          v68 = *(v16 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_56:
          if (v70)
          {
            goto LABEL_105;
          }

          v83 = &v16[16 * v5];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_108;
          }

          v89 = &v16[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_112;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v5 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v93 = &v16[16 * v5];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_70:
        if (v88)
        {
          goto LABEL_107;
        }

        v96 = &v16[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_110;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_77:
        a4 = v66 - 1;
        if (v66 - 1 >= v5)
        {
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v104 = v16;
        v5 = *&v16[16 * a4 + 32];
        v17 = *&v16[16 * v66 + 40];
        sub_1010CAB8C((*a3 + 8 * v5), (*a3 + 8 * *&v16[16 * v66 + 32]), (*a3 + 8 * v17), v65);
        if (v6)
        {
          goto LABEL_99;
        }

        if (v17 < v5)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_100B31E68(v104);
        }

        if (a4 >= *(v104 + 2))
        {
          goto LABEL_102;
        }

        v105 = &v104[16 * a4];
        *(v105 + 4) = v5;
        *(v105 + 5) = v17;
        v127 = v104;
        a4 = &v127;
        sub_100B31DDC(v66);
        v16 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v16[16 * v5 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_103;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_104;
      }

      v78 = &v16[16 * v5];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_106;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_109;
      }

      if (v82 >= v74)
      {
        v100 = &v16[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_113;
        }

        if (v69 < v103)
        {
          v66 = v5 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v116;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v114 = v16;
  v115 = v6;
  v122 = *a3;
  v48 = v122 + 8 * v15 - 8;
  v113 = v17;
  a4 = v17 - v15;
  v118 = v47;
LABEL_29:
  v120 = v48;
  v121 = v15;
  v49 = *(v122 + 8 * v15);
  v119 = a4;
  v50 = v48;
  while (1)
  {
    v51 = *v50;
    v5 = v49;
    v52 = v51;
    v53 = [v5 timestamp];
    v54 = v124;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v55 = [v52 timestamp];
    v56 = v125;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v55) = static Date.< infix(_:_:)();
    v57 = *v123;
    v58 = v56;
    v59 = v126;
    (*v123)(v58, v126);
    v57(v54, v59);

    if ((v55 & 1) == 0)
    {
LABEL_28:
      v15 = v121 + 1;
      v48 = v120 + 8;
      a4 = v119 - 1;
      if ((v121 + 1) != v118)
      {
        goto LABEL_29;
      }

      v15 = v118;
      v16 = v114;
      v6 = v115;
      a3 = v112;
      v17 = v113;
      goto LABEL_36;
    }

    if (!v122)
    {
      break;
    }

    v60 = *v50;
    v49 = *(v50 + 8);
    *v50 = v49;
    *(v50 + 8) = v60;
    v50 -= 8;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1010CAB8C(id *a1, id *a2, id *a3, void **a4)
{
  v57 = type metadata accessor for Date();
  v8 = *(v57 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v57);
  v56 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v55 = &v50 - v12;
  v13 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v13 = a2 - a1;
  }

  v14 = v13 >> 3;
  v15 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v15 = a3 - a2;
  }

  v16 = v15 >> 3;
  if (v14 >= v15 >> 3)
  {
    v58 = a1;
    a1 = a2;
    if (a4 != a2 || &a2[v16] <= a4)
    {
      memmove(a4, a2, 8 * v16);
    }

    v59 = &a4[v16];
    if (a3 - a2 >= 8 && a2 > v58)
    {
      v51 = (v8 + 8);
LABEL_27:
      v50 = a1;
      v31 = a1 - 1;
      v32 = a3 - 1;
      v33 = v59;
      v52 = a1 - 1;
      do
      {
        v34 = a4;
        v35 = v32;
        v36 = v32 + 1;
        v37 = *--v33;
        v38 = *v31;
        v39 = v37;
        v54 = v39;
        v40 = v38;
        v53 = v40;
        v41 = [v39 timestamp];
        v42 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v43 = [v40 timestamp];
        v44 = v56;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v43) = static Date.< infix(_:_:)();
        v45 = *v51;
        v46 = v44;
        v47 = v57;
        (*v51)(v46, v57);
        v45(v42, v47);

        if (v43)
        {
          a4 = v34;
          a3 = v35;
          v48 = v52;
          if (v36 != v50)
          {
            *v35 = *v52;
          }

          if (v59 <= v34 || (a1 = v48, v48 <= v58))
          {
            a1 = v48;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        a4 = v34;
        if (v36 != v59)
        {
          *v35 = *v33;
        }

        v32 = v35 - 1;
        v59 = v33;
        v31 = v52;
      }

      while (v33 > v34);
      v59 = v33;
      a1 = v50;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v14] <= a4)
    {
      memmove(a4, a1, 8 * v14);
    }

    v59 = &a4[v14];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v54 = a3;
      v17 = (v8 + 8);
      while (1)
      {
        v58 = a1;
        v18 = *a4;
        v19 = *a2;
        v20 = v18;
        v21 = [v19 timestamp];
        v22 = v55;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v23 = [v20 timestamp];
        v24 = v56;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        LOBYTE(v23) = static Date.< infix(_:_:)();
        v25 = *v17;
        v26 = v24;
        v27 = v57;
        (*v17)(v26, v57);
        v25(v22, v27);

        if ((v23 & 1) == 0)
        {
          break;
        }

        v28 = a2;
        v29 = v58;
        v30 = v58 == a2++;
        if (!v30)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v29 + 1;
        if (a4 >= v59 || a2 >= v54)
        {
          goto LABEL_39;
        }
      }

      v28 = a4;
      v29 = v58;
      v30 = v58 == a4++;
      if (v30)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v29 = *v28;
      goto LABEL_18;
    }
  }

LABEL_39:
  if (a1 != a4 || a1 >= (a4 + ((v59 - a4 + (v59 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a1, a4, 8 * (v59 - a4));
  }

  return 1;
}

void *sub_1010CB028(unint64_t a1)
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
  v5 = sub_1003CC318(v3, 0);
  sub_1010CB58C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1010CB0BC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100652D24(&qword_1016C75B8, &qword_1016C75B0, &qword_101404A08);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&qword_1016C75B0, &qword_101404A08);
            v9 = sub_100268264(v13, i, a3);
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
        sub_100008BB8(0, &qword_101697768, SPMemberCircleDataIntegrity_ptr);
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

uint64_t sub_1010CB25C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100652D24(&qword_1016C75A8, &qword_1016C75A0, &qword_101404A00);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&qword_1016C75A0, &qword_101404A00);
            v9 = sub_100268264(v13, i, a3);
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
        sub_100008BB8(0, &qword_101697770, SPOwnedCircleDataIntegrity_ptr);
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

uint64_t sub_1010CB3FC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100652D24(&qword_1016C7598, &qword_1016C7590, &qword_1014049F8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&qword_1016C7590, &qword_1014049F8);
            v9 = sub_1002682E4(v13, i, a3);
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
        type metadata accessor for DarwinNotification.Listener();
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

uint64_t sub_1010CB58C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100652D24(&qword_1016C7560, &qword_1016C7558, &unk_1014049D8);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&qword_1016C7558, &unk_1014049D8);
            v9 = sub_10026863C(v13, i, a3);
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
        sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
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

uint64_t sub_1010CB72C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100652D24(&qword_1016C7568, &unk_1016C1A90, &unk_1013F54D0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&unk_1016C1A90, &unk_1013F54D0);
            v9 = sub_100268264(v13, i, a3);
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
        sub_100008BB8(0, &qword_1016C1A78, SPCommandKeys_ptr);
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

uint64_t sub_1010CB8CC(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_100652D24(&qword_1016C7588, &qword_1016C7580, &qword_1014049F0);
          for (i = 0; i != v6; ++i)
          {
            sub_1000BC4D4(&qword_1016C7580, &qword_1014049F0);
            v9 = sub_100268264(v13, i, a3);
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
        sub_100008BB8(0, &qword_1016C1A88, SPCommandKey_ptr);
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

id sub_1010CBA6C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_autoreleasePoolPush();
  v12 = [objc_allocWithZone(CLReductiveFilterOptions) initWithBeaconType:a2 transmitPower:a3];
  v13 = v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v36 = v12;
    v37 = v11;
    v42 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v15 = a1 + 32;
    v16 = (v7 + 8);
    do
    {
      sub_10001F280(v15, v41);
      sub_10001F280(v41, v38);
      v17 = v39;
      v18 = v40;
      sub_1000035D0(v38, v39);
      v19 = (*(v18 + 16))(v17, v18);
      v20 = v39;
      v21 = v40;
      sub_1000035D0(v38, v39);
      v22 = (*(v21 + 24))(v20, v21);
      v23 = objc_allocWithZone(CLLocation);
      v24 = v39;
      v25 = v40;
      sub_1000035D0(v38, v39);
      v26 = (*(v25 + 32))(v24, v25);
      v27 = v39;
      v28 = v40;
      sub_1000035D0(v38, v39);
      (*(v28 + 8))(v27, v28);
      isa = Date._bridgeToObjectiveC()().super.isa;
      (*v16)(v10, v6);
      [v23 initWithCoordinate:isa altitude:v19 horizontalAccuracy:v22 verticalAccuracy:-1.0 timestamp:{v26, -1.0}];

      sub_100007BAC(v41);
      sub_100007BAC(v38);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v30 = v42[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v15 += 40;
      --v14;
    }

    while (v14);
    v13 = v36;
    v11 = v37;
  }

  v41[0] = sub_1010CB028(v31);
  sub_1010C9750(v41);

  v32 = objc_opt_self();
  sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
  v33 = Array._bridgeToObjectiveC()().super.isa;

  v34 = [v32 applyFilterToLocationTrace:v33 options:v13];

  objc_autoreleasePoolPop(v11);
  return v34;
}

id sub_1010CBE04(uint64_t a1, uint64_t a2, double a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_allocWithZone(CLReductiveFilterOptions) initWithBeaconType:a2 transmitPower:a3];
  v8 = *(a1 + 16);
  if (v8)
  {
    v29 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v9 = sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
    v10 = a1 + 32;
    do
    {
      sub_10001F280(v10, v28);
      sub_10001F280(v28, v25);
      v11 = v26;
      v12 = v27;
      v13 = sub_10015049C(v25, v26);
      v14 = *(*(v11 - 8) + 64);
      __chkstk_darwin(v13);
      v16 = &v25[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v17 + 16))(v16);
      sub_100F949B8(v16, v9, v11, v12);
      sub_100007BAC(v28);
      sub_100007BAC(v25);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = v29[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v10 += 40;
      --v8;
    }

    while (v8);
  }

  v28[0] = sub_1010CB028(v19);
  sub_1010C9750(v28);

  v20 = objc_opt_self();
  sub_100008BB8(0, &qword_1016A3160, CLLocation_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22 = [v20 applyFilterToLocationObservations:isa options:v7];

  objc_autoreleasePoolPop(v6);
  return v22;
}

uint64_t sub_1010CC0B8()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((*(v0 + 40) & 1) != 0 || (isUserAgent.getter() & 1) == 0)
  {
    v5 = *(v0 + 32);
    if (*(v5 + 128))
    {
      v6 = *(v5 + 128);

      v8 = sub_10021D518(v7);

      v15 = v8;
    }

    else
    {
      if (qword_101695248 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_1000076D4(v11, qword_1016C75C0);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v12, v13, "No observation store on this platform!", v14, 2u);
      }

      v15 = 0;
    }

    v16 = *(v0 + 8);

    return v16(v15);
  }

  else
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1010CC3BC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1010CC3E0, v2, 0);
}

uint64_t sub_1010CC3E0()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    v5 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v8 = v0[4];
  v9 = *(v8 + 128);
  if (v9)
  {
    v11 = v0[2];
    v10 = v0[3];
    v12 = *(v8 + 128);

    sub_100228740(v11, v10, v9);
    v18 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v5 = v18;
LABEL_7:
    v6 = v0[1];

    return v6(v5);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016C75C0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "No observation store on this platform!", v16, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v17 = v0[1];

  return v17();
}

uint64_t sub_1010CC680(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1010CC6A4, v1, 0);
}

uint64_t sub_1010CC6A4()
{
  v1 = v0[3];
  if (*(v1 + 128))
  {
    v2 = v0[2];
    v3 = *(v1 + 128);

    v5 = sub_10021CAC0(v4);

    v6 = v0[1];

    return v6(v5);
  }

  else
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016C75C0);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "No observation store on this platform!", v11, 2u);
    }

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1010CC864(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CC884, v1, 0);
}

uint64_t sub_1010CC884()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    goto LABEL_7;
  }

  v6 = v0[3];
  v7 = *(v6 + 128);
  if (v7)
  {
    v8 = v0[2];
    v9 = *(v6 + 128);

    sub_10022077C(v8, v7);

LABEL_7:
    v5 = v0[1];
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016C75C0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "No observation store on this platform!", v13, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v5 = v0[1];
LABEL_15:

  return v5();
}

uint64_t sub_1010CCAC8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CCAE8, v1, 0);
}

uint64_t sub_1010CCAE8()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    goto LABEL_7;
  }

  v6 = v0[3];
  v7 = *(v6 + 128);
  if (v7)
  {
    v8 = v0[2];
    v9 = *(v6 + 128);

    sub_1002207A8(v8, v7);

LABEL_7:
    v5 = v0[1];
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016C75C0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "No observation store on this platform!", v13, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v5 = v0[1];
LABEL_15:

  return v5();
}

uint64_t sub_1010CCD4C()
{
  if (isUserAgent.getter())
  {
    goto LABEL_2;
  }

  v2 = *(v0 + 16);
  if (*(v2 + 128))
  {
    v3 = *(v2 + 128);

    sub_100216764(v4);

LABEL_2:
    v1 = *(v0 + 8);
    goto LABEL_10;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_1016C75C0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "No observation store on this platform!", v8, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v1 = *(v0 + 8);
LABEL_10:

  return v1();
}

uint64_t sub_1010CCEF0()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 40) & 1) == 0 && (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected isUserAgent is true on non-macOS platform!";
    goto LABEL_15;
  }

  v6 = *(v0 + 32);
  if (*(v6 + 128))
  {
    v7 = *(v6 + 128);

    sub_10020DFE8(v8);

    goto LABEL_17;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016C75C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No observation store on this platform!";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);
  }

LABEL_16:

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
LABEL_17:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1010CD178(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  return _swift_task_switch(sub_1010CD19C, v1, 0);
}

uint64_t sub_1010CD19C()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    v5 = &_swiftEmptySetSingleton;
    goto LABEL_7;
  }

  v8 = v0[3];
  if (*(v8 + 128))
  {
    v9 = v0[2];
    v10 = *(v8 + 128);

    v12 = sub_10021783C(v11);

    v5 = v12;
LABEL_7:
    v6 = v0[1];

    return v6(v5);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016C75C0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "No observation store on this platform!", v16, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v17 = v0[1];

  return v17();
}

uint64_t sub_1010CD424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v6 = *(*(sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_10169E358, &qword_101404C50) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[7] = v8;
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_1010CD550;

  return sub_1010D4938(v8, a2);
}

uint64_t sub_1010CD550()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1010CD660, v2, 0);
}

uint64_t sub_1010CD660()
{
  v1 = *(v0 + 48);
  sub_1000D2A70(*(v0 + 56), v1, &qword_10169E358, &qword_101404C50);
  v2 = type metadata accessor for KeySyncSnapshot();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  if (v3 == 1)
  {
    sub_10000B3A8(*(v0 + 48), &qword_10169E358, &qword_101404C50);
    v6 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v7 = *(v0 + 48);
    sub_10112CE20(*(v0 + 40));
    sub_1010D6FB8(v4, type metadata accessor for KeySyncSnapshot);
  }

  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_1010D4F70(*(v0 + 24), v10, *(v0 + 16));
  sub_10000B3A8(v10, &unk_1016AF8A0, &unk_10139D7C0);
  sub_10000B3A8(v8, &qword_10169E358, &qword_101404C50);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1010CD810(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1010CD834, v2, 0);
}

uint64_t sub_1010CD834()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    v5 = v0[2];

    v6 = type metadata accessor for ObservedAdvertisement(0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    goto LABEL_7;
  }

  v8 = v0[4];
  v9 = *(v8 + 128);
  if (v9)
  {
    v11 = v0[2];
    v10 = v0[3];
    v12 = *(v8 + 128);

    sub_10021AE2C(v10, v9, v11);

LABEL_7:
    v7 = v0[1];
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016C75C0);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "No observation store on this platform!", v16, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v7 = v0[1];
LABEL_15:

  return v7();
}

uint64_t sub_1010CDAC4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CDAE4, v1, 0);
}

uint64_t sub_1010CDAE4()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    goto LABEL_7;
  }

  v6 = v0[3];
  v7 = *(v6 + 128);
  if (v7)
  {
    v8 = v0[2];
    v9 = *(v6 + 128);

    sub_10021F1B0(v8, v7);

LABEL_7:
    v5 = v0[1];
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016C75C0);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "No observation store on this platform!", v13, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v5 = v0[1];
LABEL_15:

  return v5();
}

uint64_t sub_1010CDD28(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CDD48, v1, 0);
}

uint64_t sub_1010CDD48()
{
  if (isUserAgent.getter())
  {
    goto LABEL_2;
  }

  v2 = v0[3];
  v3 = *(v2 + 128);
  if (v3)
  {
    v4 = v0[2];
    v5 = *(v2 + 128);

    sub_10021593C(v4, v3);

LABEL_2:
    v1 = v0[1];
    goto LABEL_10;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_1016C75C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "No observation store on this platform!", v9, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v1 = v0[1];
LABEL_10:

  return v1();
}

uint64_t sub_1010CDED8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CDEF8, v1, 0);
}

uint64_t sub_1010CDEF8()
{
  if (isUserAgent.getter())
  {
    goto LABEL_2;
  }

  v2 = v0[3];
  v3 = *(v2 + 128);
  if (v3)
  {
    v4 = v0[2];
    v5 = *(v2 + 128);

    sub_10021614C(v4, v3);

LABEL_2:
    v1 = v0[1];
    goto LABEL_10;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000076D4(v6, qword_1016C75C0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "No observation store on this platform!", v9, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v1 = v0[1];
LABEL_10:

  return v1();
}

uint64_t sub_1010CE088(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_1010CE0AC, v2, 0);
}

uint64_t sub_1010CE0AC()
{
  v1 = v0[4];
  v2 = *(v1 + 128);
  if (v2)
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = *(v1 + 128);

    sub_10021C328(v3, v2, v4);

    v6 = v0[1];
  }

  else
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016C75C0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No observation store on this platform!", v10, 2u);
    }

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_1010CE238(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010CE258, v1, 0);
}

uint64_t sub_1010CE258()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    v5 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v8 = v0[3];
  v9 = *(v8 + 128);
  if (v9)
  {
    v10 = v0[2];
    v11 = *(v8 + 128);

    sub_1002283A4(v10, v9);
    v17 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v5 = v17;
LABEL_7:
    v6 = v0[1];

    return v6(v5);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016C75C0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "No observation store on this platform!", v15, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v16 = v0[1];

  return v16();
}

uint64_t sub_1010CE514()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 40) & 1) == 0 && (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_18;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected isUserAgent is true on non-macOS platform!";
LABEL_17:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_18:

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
    v13 = *(v0 + 8);

    return v13();
  }

  v6 = *(v0 + 32);
  if (!*(v6 + 128))
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_18;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No observation store on this platform.";
    goto LABEL_17;
  }

  v7 = *(v6 + 128);

  v9 = sub_10020B708(v8);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_1010CE7E4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 48) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return _swift_task_switch(sub_1010CE80C, v4, 0);
}

uint64_t sub_1010CE80C()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    v5 = *(v0 + 16);

    v6 = type metadata accessor for DeviceEvent(0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    goto LABEL_7;
  }

  v8 = *(v0 + 40);
  v9 = *(v8 + 128);
  if (v9)
  {
    v11 = *(v0 + 24);
    v10 = *(v0 + 32);
    v12 = *(v0 + 16);
    v13 = *(v0 + 48);
    v14 = *(v8 + 128);

    sub_100221138(v11, v13, v10, v9, v12);

LABEL_7:
    v7 = *(v0 + 8);
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_1016C75C0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "No observation store on this platform!", v18, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v7 = *(v0 + 8);
LABEL_15:

  return v7();
}

uint64_t sub_1010CEAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  return _swift_task_switch(sub_1010CEAD8, v3, 0);
}

uint64_t sub_1010CEAD8()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 64) & 1) == 0 && (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected isUserAgent is true on non-macOS platform!";
    goto LABEL_15;
  }

  v6 = *(v0 + 56);
  v7 = *(v6 + 128);
  if (v7)
  {
    v9 = *(v0 + 40);
    v8 = *(v0 + 48);
    v10 = *(v0 + 32);
    v11 = *(v6 + 128);

    sub_100223CF0(v9, v8, v7, v10);

    v12 = *(v0 + 8);
    goto LABEL_17;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000076D4(v13, qword_1016C75C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No observation store on this platform!";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);
  }

LABEL_16:

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v12 = *(v0 + 8);
LABEL_17:

  return v12();
}

uint64_t sub_1010CED94(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return _swift_task_switch(sub_1010CEDB4, v1, 0);
}

uint64_t sub_1010CEDB4()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 0x7365547265646E75;
  *(v0 + 24) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (*(v0 + 48) & 1) == 0 && (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected isUserAgent is true on non-macOS platform!";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_16:

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }

  v6 = *(v0 + 40);
  v7 = *(v6 + 128);
  if (!v7)
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No observation store on this platform!";
    goto LABEL_15;
  }

  v8 = *(v0 + 32);
  v9 = *(v6 + 128);

  sub_100219688(v8, v7);
  v13 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

  v14 = *(v0 + 8);

  return v14(v13);
}

uint64_t sub_1010CF0A8(uint64_t a1, char a2)
{
  *(v3 + 192) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  v4 = type metadata accessor for BeaconIdentifier();
  *(v3 + 40) = v4;
  v5 = *(v4 - 8);
  *(v3 + 48) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 56) = swift_task_alloc();
  v7 = type metadata accessor for SharedBeaconRecord(0);
  *(v3 + 64) = v7;
  v8 = *(v7 - 8);
  *(v3 + 72) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 80) = swift_task_alloc();
  *(v3 + 88) = swift_task_alloc();
  *(v3 + 96) = swift_task_alloc();
  v10 = async function pointer to daemon.getter[1];
  v11 = swift_task_alloc();
  *(v3 + 104) = v11;
  *v11 = v3;
  v11[1] = sub_1010CF210;

  return daemon.getter();
}

uint64_t sub_1010CF210(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v12 = *v1;
  *(v3 + 112) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 120) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_1010D6F70(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1010D6F70(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_1010CF3F4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1010CF3F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  v4[16] = a1;
  v4[17] = v1;

  if (v1)
  {
    v7 = v4[4];
    v8 = sub_1010CFCF8;
  }

  else
  {
    v9 = v4[14];

    v8 = sub_1010CF52C;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1010CF52C()
{
  v1 = *(v0 + 128);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 144) = v3;
  v4 = sub_1000BC4D4(&qword_101697720, &unk_101392640);
  *v3 = v0;
  v3[1] = sub_1010CF618;
  v5 = *(v0 + 128);

  return unsafeBlocking<A>(context:_:)(v0 + 16, 0xD000000000000010, 0x800000010134A8C0, sub_100129E44, v5, v4);
}

uint64_t sub_1010CF618()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 128);
  v4 = *v0;

  return _swift_task_switch(sub_1010CF730, v2, 0);
}

uint64_t sub_1010CF730()
{
  v1 = v0[4];
  v0[19] = v0[2];
  return _swift_task_switch(sub_1010CF754, v1, 0);
}

void sub_1010CF754()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 72);
    v34 = *(v0 + 64);
    v32 = *(v0 + 152);
    while (v3 < *(v1 + 16))
    {
      v5 = *(v0 + 96);
      v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v7 = *(v4 + 72);
      sub_10001BBA0(*(v0 + 152) + v6 + v7 * v3, v5, type metadata accessor for SharedBeaconRecord);
      v8 = *(v5 + *(v34 + 64));
      if (v8 == 4 || v8 == 1)
      {
        sub_1010D7018(*(v0 + 96), *(v0 + 88), type metadata accessor for SharedBeaconRecord);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10112421C(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v11 = _swiftEmptyArrayStorage[2];
        v10 = _swiftEmptyArrayStorage[3];
        if (v11 >= v10 >> 1)
        {
          sub_10112421C(v10 > 1, v11 + 1, 1);
        }

        v12 = *(v0 + 88);
        _swiftEmptyArrayStorage[2] = v11 + 1;
        sub_1010D7018(v12, _swiftEmptyArrayStorage + v6 + v11 * v7, type metadata accessor for SharedBeaconRecord);
        v1 = v32;
      }

      else
      {
        sub_1010D6FB8(*(v0 + 96), type metadata accessor for SharedBeaconRecord);
      }

      if (v2 == ++v3)
      {
        v13 = *(v0 + 152);
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    v14 = _swiftEmptyArrayStorage[2];
    if (v14)
    {
      v15 = *(v0 + 72);
      v16 = *(v0 + 48);
      v33 = *(v0 + 40);
      v35 = *(v0 + 64);
      sub_101124760(0, v14, 0);
      v17 = _swiftEmptyArrayStorage + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v31 = *(v15 + 72);
      do
      {
        v18 = *(v0 + 80);
        v19 = *(v0 + 56);
        sub_10001BBA0(v17, v18, type metadata accessor for SharedBeaconRecord);
        v20 = getuid();
        sub_1000294F0(v20);
        v21 = *(v35 + 20);
        v22 = *(v33 + 20);
        v23 = type metadata accessor for UUID();
        (*(*(v23 - 8) + 16))(v19 + v22, v18 + v21, v23);
        sub_1010D6FB8(v18, type metadata accessor for SharedBeaconRecord);
        v25 = _swiftEmptyArrayStorage[2];
        v24 = _swiftEmptyArrayStorage[3];
        if (v25 >= v24 >> 1)
        {
          sub_101124760(v24 > 1, v25 + 1, 1);
        }

        v26 = *(v0 + 56);
        _swiftEmptyArrayStorage[2] = v25 + 1;
        sub_1010D7018(v26, _swiftEmptyArrayStorage + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v25, type metadata accessor for BeaconIdentifier);
        v17 += v31;
        --v14;
      }

      while (v14);
    }

    *(v0 + 160) = _swiftEmptyArrayStorage;
    v27 = swift_task_alloc();
    *(v0 + 168) = v27;
    *v27 = v0;
    v27[1] = sub_1010CFB0C;
    v28 = *(v0 + 192);
    v29 = *(v0 + 24);
    v30 = *(v0 + 32);

    sub_1010D2DD4(_swiftEmptyArrayStorage, v29, v28);
  }
}

uint64_t sub_1010CFB0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 168);
  v6 = *v2;
  v4[22] = v1;

  v7 = v4[4];
  if (v1)
  {
    v8 = sub_1010CFD8C;
  }

  else
  {
    v4[23] = a1;
    v8 = sub_1010CFC48;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1010CFC48()
{
  v1 = v0[20];
  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];
  v8 = v0[23];

  return v7(v8);
}

uint64_t sub_1010CFCF8()
{
  v1 = v0[14];

  v2 = v0[17];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v6 = v0[7];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010CFD8C()
{
  v1 = v0[20];
  v2 = v0[16];

  v3 = v0[22];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1010CFE2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000076D4(v7, qword_1016C75C0);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Unexpected isUserAgent is true on non-macOS platform!", v10, 2u);
    }

    v11 = type metadata accessor for ObservedAdvertisement(0);
    return (*(*(v11 - 8) + 56))(a3, 1, 1, v11);
  }

  else
  {
    v13 = *(v3 + 128);
    if (v13)
    {
      v14 = *(v3 + 128);

      sub_10021B7F4(a1, a2, v13, a3);
    }

    else
    {
      if (qword_101695248 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_1016C75C0);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "No observation store on this platform!", v18, 2u);
      }

      sub_1010D6C78();
      swift_allocError();
      return swift_willThrow();
    }
  }
}

uint64_t sub_1010D0080(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010D00A0, v1, 0);
}

uint64_t sub_1010D00A0()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    goto LABEL_7;
  }

  v6 = v0[3];
  if (*(v6 + 128))
  {
    v7 = v0[2];
    v8 = *(v6 + 128);

    sub_100228CEC(v7);

LABEL_7:
    v5 = v0[1];
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_1000076D4(v9, qword_1016C75C0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "No observation store on this platform!", v12, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v5 = v0[1];
LABEL_15:

  return v5();
}

uint64_t sub_1010D02E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(type metadata accessor for DeviceEvent(0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_1000BC4D4(&qword_1016C7750, &unk_101404C90);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v7 = sub_1000BC4D4(&qword_1016B3CF0, &qword_1013D4A70);
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();

  return _swift_task_switch(sub_1010D0444, v1, 0);
}

uint64_t sub_1010D0444()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    goto LABEL_7;
  }

  v20 = v0[3];
  v21 = *(v20 + 128);
  if (v21)
  {
    v22 = v0[2];
    v23 = *(v20 + 128);

    sub_1002256D0(v22, v21);

LABEL_7:
    v5 = *(v0[3] + 144);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v0[9];
      v35 = *(v7 + 16);
      v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v33 = (v0[6] + 8);
      v34 = *(v7 + 72);
      v9 = (v7 + 8);
      v32 = *(v0[3] + 144);

      do
      {
        v10 = v0[10];
        v12 = v0[7];
        v11 = v0[8];
        v14 = v0[4];
        v13 = v0[5];
        v15 = v0[2];
        v35(v10, v8, v11);
        sub_10001BBA0(v15, v14, type metadata accessor for DeviceEvent);
        AsyncStream.Continuation.yield(_:)();
        (*v33)(v12, v13);
        (*v9)(v10, v11);
        v8 += v34;
        --v6;
      }

      while (v6);
    }

    v16 = v0[10];
    v17 = v0[7];
    v18 = v0[4];

    v19 = v0[1];
    goto LABEL_19;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000076D4(v24, qword_1016C75C0);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "No observation store on this platform!", v27, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v28 = v0[10];
  v29 = v0[7];
  v30 = v0[4];

  v19 = v0[1];
LABEL_19:

  return v19();
}

uint64_t sub_1010D07D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[7] = a1;
  v6 = *(*(sub_1000BC4D4(&qword_10169E358, &qword_101404C50) - 8) + 64) + 15;
  v7 = swift_task_alloc();
  v4[10] = v7;
  v8 = type metadata accessor for KeySyncSnapshot();
  v4[11] = v8;
  v9 = *(v8 - 8);
  v4[12] = v9;
  v10 = *(v9 + 64) + 15;
  v4[13] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[14] = v11;
  *v11 = v4;
  v11[1] = sub_1010D0914;

  return sub_1010D4938(v7, a2);
}

uint64_t sub_1010D0914()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return _swift_task_switch(sub_1010D0A24, v2, 0);
}

uint64_t sub_1010D0A24()
{
  v1 = *(v0 + 80);
  if ((*(*(v0 + 96) + 48))(v1, 1, *(v0 + 88)) == 1)
  {
    sub_10000B3A8(v1, &qword_10169E358, &qword_101404C50);
  }

  else
  {
    v7 = *(v0 + 104);
    v8 = *(v0 + 64);
    sub_1010D7018(v1, v7, type metadata accessor for KeySyncSnapshot);
    sub_10112D9E4(v8, (v0 + 16));
    sub_1010D6FB8(v7, type metadata accessor for KeySyncSnapshot);
    if ((*(v0 + 48) & 1) == 0)
    {
      v2 = 0;
      v10 = *(v0 + 32);
      v11 = *(v0 + 16);
      goto LABEL_4;
    }
  }

  v10 = 0u;
  v11 = 0u;
  v2 = 1;
LABEL_4:
  v3 = *(v0 + 104);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);

  *v5 = v11;
  *(v5 + 16) = v10;
  *(v5 + 32) = v2;
  v6 = *(v0 + 8);

  return v6();
}

NSString sub_1010D0B90()
{
  result = String._bridgeToObjectiveC()();
  qword_10177C648 = result;
  return result;
}

uint64_t sub_1010D0BC8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016C75C0);
  v1 = sub_1000076D4(v0, qword_1016C75C0);
  if (qword_101695250 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177C650);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1010D0C90(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = 0xD000000000000017;
  *(v1 + 120) = 0x8000000101404A20;
  *(v1 + 136) = _swiftEmptyArrayStorage;
  *(v1 + 144) = _swiftEmptyArrayStorage;
  *(v1 + 152) = xmmword_10139D920;
  if (isUserAgent.getter())
  {

    a1 = 0;
  }

  *(v1 + 128) = a1;
  return v1;
}

uint64_t sub_1010D0D28()
{
  v1 = v0[2];
  v2 = *(v1 + 128);
  v0[3] = v2;
  if (v2)
  {

    return _swift_task_switch(sub_1010D0E18, 0, 0);
  }

  else
  {
    v3 = type metadata accessor for StateCapture();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();

    v6 = StateCapture.init(_:)();
    v7 = *(v1 + 160);
    *(v1 + 160) = v6;

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1010D0E18()
{
  if (qword_101695468 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for Logger();
  v4 = sub_1000076D4(v3, qword_10177CCE0);
  sub_100C630FC(v4);

  return _swift_task_switch(sub_1010D0EC4, v1, 0);
}

uint64_t sub_1010D0EC4()
{
  v1 = *(v0 + 16);
  v2 = type metadata accessor for StateCapture();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();

  v5 = StateCapture.init(_:)();
  v6 = *(v1 + 160);
  *(v1 + 160) = v5;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1010D0F70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v41 = a1;
  v42 = a2;
  v3 = type metadata accessor for StateCaptureDateType();
  v37 = *(v3 - 8);
  v38 = v3;
  v4 = *(v37 + 64);
  __chkstk_darwin(v3);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeviceEvent(0);
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  __chkstk_darwin(v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v36 - v12;
  v14 = type metadata accessor for StateCaptureHintAPI();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v36 - v20;
  StateCaptureHint.api.getter();
  (*(v15 + 104))(v19, enum case for StateCaptureHintAPI.request(_:), v14);
  sub_1010D6F70(&qword_101698DD0, 255, &type metadata accessor for StateCaptureHintAPI);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v22 = *(v15 + 8);
  v22(v19, v14);
  v22(v21, v14);
  if (v43 != v44)
  {
    v33 = 1;
    v32 = v42;
    goto LABEL_9;
  }

  if (*(v41 + 128))
  {
    v23 = *(v41 + 128);

    sub_100222D9C(v24);

    if (!v2)
    {
      v43 = _swiftEmptyDictionarySingleton;
      dispatch thunk of _AnySequenceBox._makeIterator()();
      dispatch thunk of _AnyIteratorBoxBase.next()();
      v26 = v40;
      v27 = *(v39 + 48);
      if (v27(v13, 1, v40) != 1)
      {
        do
        {
          sub_1010D7018(v13, v9, type metadata accessor for DeviceEvent);
          sub_1010D156C(&v43, v9);
          sub_1010D6FB8(v9, type metadata accessor for DeviceEvent);
          dispatch thunk of _AnyIteratorBoxBase.next()();
        }

        while (v27(v13, 1, v26) != 1);
      }

      v28 = objc_opt_self();
      sub_1000BC4D4(&qword_1016C7758, &unk_101404D20);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v43 = 0;
      v30 = [v28 dataWithPropertyList:isa format:200 options:0 error:&v43];

      v31 = v43;
      v32 = v42;
      if (v30)
      {
        static Data._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v37 + 104))(v36, enum case for StateCaptureDateType.serialized(_:), v38);
        StateCaptureStateData.init(type:title:data:)();

        v33 = 0;
LABEL_9:
        v34 = type metadata accessor for StateCaptureStateData();
        return (*(*(v34 - 8) + 56))(v32, v33, 1, v34);
      }

      v35 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {
    sub_1010D6C78();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1010D185C()
{
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 integerForKey:v3];

  if (v4 != 1)
  {
    v5 = *(v0 + 16);
    sub_1010D1AD8(0);
    v6 = [v1 standardUserDefaults];
    v7 = String._bridgeToObjectiveC()();
    [v6 setInteger:1 forKey:v7];
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1010D1AD8(uint64_t a1)
{
  v2 = *(v1 + 128);
  if (v2)
  {
    v4 = *(v1 + 128);

    v5 = sub_100207454(a1, v2);
  }

  else
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000076D4(v6, qword_1016C75C0);
    v7 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v7, v5))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v7, v5, "No observation store on this platform!", v8, 2u);
    }

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
  }

  return v5;
}

uint64_t sub_1010D1C20()
{
  v1[2] = v0;
  v2 = *(type metadata accessor for LocalFindableAccessoryRecord() - 8);
  v1[3] = v2;
  v3 = *(v2 + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v1[8] = v8;
  *v8 = v1;
  v8[1] = sub_1010D1D68;

  return daemon.getter();
}

uint64_t sub_1010D1D68(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1010D6F70(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_1010D6F70(&unk_1016AA520, 255, type metadata accessor for CloudStorageService);
  *v6 = v12;
  v6[1] = sub_1010D1F4C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1010D1F4C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v10 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v5 = v3[2];
    v6 = sub_1010D28FC;
  }

  else
  {
    v7 = v3[9];
    v8 = v3[2];

    v6 = sub_1010D2074;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1010D2074()
{
  v1 = *(v0[2] + 128);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[11];

    return _swift_task_switch(sub_1010D2228, v2, 0);
  }

  else
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_1016C75C0);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "No observation store on this platform!", v6, 2u);
    }

    v7 = v0[11];

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();

    v8 = v0[7];
    v9 = v0[4];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1010D2228()
{
  v1 = *(*(v0 + 88) + 128);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_1010D22BC;

  return sub_100031364();
}

uint64_t sub_1010D22BC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(v4 + 120) = a1;
  *(v4 + 128) = v1;

  v7 = *(v3 + 16);
  if (v1)
  {
    v8 = sub_1010D25FC;
  }

  else
  {
    v8 = sub_1010D23F0;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1010D23F0()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[6];
    v4 = v0[3];
    sub_101123D4C(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v17 = *(v4 + 72);
    do
    {
      v6 = v0[7];
      v8 = v0[4];
      v7 = v0[5];
      sub_10001BBA0(v5, v8, type metadata accessor for LocalFindableAccessoryRecord);
      (*(v3 + 16))(v6, v8, v7);
      sub_1010D6FB8(v8, type metadata accessor for LocalFindableAccessoryRecord);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_101123D4C(v9 > 1, v10 + 1, 1);
      }

      v11 = v0[7];
      v12 = v0[5];
      _swiftEmptyArrayStorage[2] = v10 + 1;
      (*(v3 + 32))(_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v10, v11, v12);
      v5 += v17;
      --v2;
    }

    while (v2);
  }

  v13 = v0[15];

  v0[17] = _swiftEmptyArrayStorage;
  v14 = v0[13];
  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_1010D2680;

  return sub_10020C214(_swiftEmptyArrayStorage, v14);
}

uint64_t sub_1010D25FC()
{
  v1 = v0[13];
  v2 = v0[11];

  v3 = v0[16];
  v4 = v0[7];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1010D2680(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  v10 = *v2;
  v3[19] = a1;
  v3[20] = v1;

  if (v1)
  {
    v5 = v3[2];
    v6 = sub_1010D2974;
  }

  else
  {
    v7 = v3[17];
    v8 = v3[2];

    v6 = sub_1010D27A8;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1010D27A8()
{
  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000076D4(v1, qword_1016C75C0);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[19];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "Deleted %ld device events.", v5, 0xCu);
  }

  v6 = v0[13];
  v7 = v0[11];
  v8 = v0[7];
  v9 = v0[4];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1010D28FC()
{
  v1 = v0[9];

  v2 = v0[12];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1010D2974()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[11];

  v4 = v0[20];
  v5 = v0[7];
  v6 = v0[4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1010D2A04()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  v4 = v0[18];

  v5 = v0[20];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1010D2A5C(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for ObservationStoreService();
  *v5 = v2;
  v5[1] = sub_100014744;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_1010D2B04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1010D183C();
}

uint64_t sub_1010D2B90(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for ObservationStoreService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_1010D2C38()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_1010D0D08();
}

uint64_t sub_1010D2CC4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for ObservationStoreService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_1010D2D6C()
{
  v1 = *v0;
  type metadata accessor for ObservationStoreService();
  sub_1010D6F70(&qword_1016AA450, v2, type metadata accessor for ObservationStoreService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_1010D2DD4(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 40) = a3;
  *(v4 + 16) = a1;
  return _swift_task_switch(sub_1010D2DFC, v3, 0);
}

uint64_t sub_1010D2DFC()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    v5 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v8 = *(v0 + 32);
  v9 = *(v8 + 128);
  if (v9)
  {
    v10 = *(v0 + 40);
    v12 = *(v0 + 16);
    v11 = *(v0 + 24);
    v13 = *(v8 + 128);

    sub_100214264(v12, v11, v10, v9);
    v19 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v5 = v19;
LABEL_7:
    v6 = *(v0 + 8);

    return v6(v5);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_1016C75C0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "No observation store on this platform!", v17, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1010D30B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010D30D0, v1, 0);
}

uint64_t sub_1010D30D0()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    v5 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v8 = v0[3];
  v9 = *(v8 + 128);
  if (v9)
  {
    v10 = v0[2];
    v11 = *(v8 + 128);

    sub_100216ED0(v10, v9);
    v17 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v5 = v17;
LABEL_7:
    v6 = v0[1];

    return v6(v5);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016C75C0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "No observation store on this platform!", v15, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v16 = v0[1];

  return v16();
}

uint64_t sub_1010D336C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010D338C, v1, 0);
}

uint64_t sub_1010D338C()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    v5 = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v8 = v0[3];
  v9 = *(v8 + 128);
  if (v9)
  {
    v10 = v0[2];
    v11 = *(v8 + 128);

    sub_1002183B8(v10, v9);
    v17 = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v5 = v17;
LABEL_7:
    v6 = v0[1];

    return v6(v5);
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_1000076D4(v12, qword_1016C75C0);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "No observation store on this platform!", v15, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v16 = v0[1];

  return v16();
}

uint64_t sub_1010D3628(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_1010D3648, v1, 0);
}

uint64_t sub_1010D3648()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    LOBYTE(v2) = 0;
    v5 = 1;
    goto LABEL_7;
  }

  v8 = v0[3];
  v9 = *(v8 + 128);
  if (v9)
  {
    v2 = v0[2];
    v10 = *(v8 + 128);

    LODWORD(v2) = sub_10021A3F4(v2, v9);

    v5 = (v2 >> 8) & 1;
LABEL_7:
    v6 = v0[1];

    return v6(v2 | (v5 << 8));
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_1000076D4(v11, qword_1016C75C0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "No observation store on this platform!", v14, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v15 = v0[1];

  return v15();
}

uint64_t sub_1010D38DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8) + 64) + 15;
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&unk_1016AA510, &unk_101393150) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v4[15] = v7;
  v8 = *(v7 - 8);
  v4[16] = v8;
  v9 = *(v8 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_1016AA500, &unk_1013B3600) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v11 = type metadata accessor for DeviceEvent(0);
  v4[26] = v11;
  v12 = *(v11 - 8);
  v4[27] = v12;
  v13 = *(v12 + 64) + 15;
  v4[28] = swift_task_alloc();

  return _swift_task_switch(sub_1010D3B34, v3, 0);
}

uint64_t sub_1010D3B34()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  v0[2] = 0x7365547265646E75;
  v0[3] = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (v0[29] & 1) == 0 && (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "Unexpected isUserAgent is true on non-macOS platform!";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_16:

    sub_1010D6C78();
    swift_allocError();
    swift_willThrow();
    v13 = v0[28];
    v15 = v0[24];
    v14 = v0[25];
    v17 = v0[22];
    v16 = v0[23];
    v18 = v0[20];
    v19 = v0[21];
    v21 = v0[18];
    v20 = v0[19];
    v22 = v0[17];
    v89 = v0[14];
    v91 = v0[13];
    v93 = v0[12];
    v95 = v0[11];
    v97 = v0[10];
    v100 = v0[9];
    v104 = v0[8];

    v23 = v0[1];
    goto LABEL_17;
  }

  v6 = v0[7];
  v7 = *(v6 + 128);
  if (!v7)
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1000076D4(v12, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_16;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "No observation store on this platform!";
    goto LABEL_15;
  }

  v8 = v0[25];
  v10 = v0[5];
  v9 = v0[6];
  v11 = *(v6 + 128);

  sub_100221138(v10, 8, v9, v7, v8);
  v25 = v0[26];
  v26 = v0[25];
  v27 = (*(v0[27] + 48))(v26, 1, v25);
  if (v27 == 1)
  {

    v28 = &unk_1016AA500;
    v29 = &unk_1013B3600;
  }

  else
  {
    v30 = v0[28];
    v31 = v0[14];
    sub_1010D7018(v26, v30, type metadata accessor for DeviceEvent);
    sub_1000D2A70(v30 + *(v25 + 32), v31, &unk_1016AA510, &unk_101393150);
    v32 = type metadata accessor for DeviceEvent.AttachmentInfo(0);
    if ((*(*(v32 - 8) + 48))(v31, 1, v32) != 1)
    {
      v106 = v0[24];
      v44 = v0[17];
      v45 = v0[18];
      v46 = v0[15];
      v47 = v0[16];
      v49 = v0[13];
      v48 = v0[14];
      v102 = v0[5];
      v50 = *(v47 + 16);
      v50(v44, v48, v46);
      sub_1010D6FB8(v48, type metadata accessor for DeviceEvent.AttachmentInfo);
      (*(v47 + 32))(v45, v44, v46);
      v50(v49, v45, v46);
      v51 = *(v47 + 56);
      v51(v49, 0, 1, v46);
      v52 = v0;
      sub_100221138(v102, 3, v49, v7, v106);
      v53 = v0[15];
      v54 = v0[13];
      v110 = v0[23];
      v55 = v0[18];
      v56 = v51;
      v57 = v52[12];
      v58 = v52[5];
      sub_10000B3A8(v54, &qword_1016980D0, &unk_10138F3B0);
      v50(v57, v55, v53);
      v107 = v56;
      v56(v57, 0, 1, v53);
      sub_100221138(v58, 4, v57, v7, v110);
      v59 = v52[18];
      v60 = v52[22];
      v61 = v52[15];
      v62 = v52[11];
      v63 = v52[5];
      sub_10000B3A8(v52[12], &qword_1016980D0, &unk_10138F3B0);
      v50(v62, v59, v61);
      v56(v62, 0, 1, v61);
      sub_100221138(v63, 1, v62, v7, v60);
      v64 = v52;
      v65 = v52[21];
      v66 = v64[18];
      v67 = v64[15];
      v68 = v64[10];
      v0 = v64;
      v69 = v64[5];
      sub_10000B3A8(v64[11], &qword_1016980D0, &unk_10138F3B0);
      v50(v68, v66, v67);
      v107(v68, 0, 1, v67);
      sub_100221138(v69, 2, v68, v7, v65);
      v70 = v0[20];
      v71 = v0[18];
      v72 = v0[15];
      v73 = v0[9];
      v74 = v0[5];
      sub_10000B3A8(v0[10], &qword_1016980D0, &unk_10138F3B0);
      v50(v73, v71, v72);
      v107(v73, 0, 1, v72);
      sub_100221138(v74, 5, v73, v7, v70);
      v76 = v0[18];
      v75 = v0[19];
      v77 = v0[15];
      v78 = v0[8];
      v79 = v0[5];
      sub_10000B3A8(v0[9], &qword_1016980D0, &unk_10138F3B0);
      v50(v78, v76, v77);
      v107(v78, 0, 1, v77);
      sub_100221138(v79, 6, v78, v7, v75);
      v80 = v0[23];
      v81 = v0[24];
      v82 = v0[22];
      v99 = v0[21];
      v103 = v0[28];
      v108 = v0[20];
      v83 = v0[18];
      v111 = v0[19];
      v84 = v0[15];
      v85 = v0[16];
      v86 = v0[8];
      v87 = v0[4];

      sub_10000B3A8(v86, &qword_1016980D0, &unk_10138F3B0);
      (*(v85 + 8))(v83, v84);
      sub_1010D6FB8(v103, type metadata accessor for DeviceEvent);
      sub_1000D2AD8(v81, v87, &unk_1016AA500, &unk_1013B3600);
      v88 = type metadata accessor for AttachedAccessoryEventsTransport();
      sub_1000D2AD8(v80, v87 + v88[5], &unk_1016AA500, &unk_1013B3600);
      sub_1000D2AD8(v82, v87 + v88[6], &unk_1016AA500, &unk_1013B3600);
      sub_1000D2AD8(v99, v87 + v88[7], &unk_1016AA500, &unk_1013B3600);
      sub_1000D2AD8(v108, v87 + v88[8], &unk_1016AA500, &unk_1013B3600);
      sub_1000D2AD8(v111, v87 + v88[9], &unk_1016AA500, &unk_1013B3600);
      v33 = v88;
      v34 = 0;
      goto LABEL_25;
    }

    v26 = v0[14];
    sub_1010D6FB8(v0[28], type metadata accessor for DeviceEvent);

    v28 = &unk_1016AA510;
    v29 = &unk_101393150;
  }

  sub_10000B3A8(v26, v28, v29);
  v33 = type metadata accessor for AttachedAccessoryEventsTransport();
  v34 = 1;
LABEL_25:
  v35 = v0[28];
  v37 = v0[24];
  v36 = v0[25];
  v39 = v0[22];
  v38 = v0[23];
  v41 = v0[20];
  v40 = v0[21];
  v42 = v0[18];
  v43 = v0[19];
  v90 = v0[17];
  v92 = v0[14];
  v94 = v0[13];
  v96 = v0[12];
  v98 = v0[11];
  v101 = v0[10];
  v105 = v0[9];
  v109 = v0[8];
  (*(*(v33 - 8) + 56))(v0[4], v34, 1);

  v23 = v0[1];
LABEL_17:

  return v23();
}

uint64_t sub_1010D4938(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1010D49D8;

  return sub_1010CC3BC(a2, &off_101607728);
}

uint64_t sub_1010D49D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v8 = *v2;
  *(v3 + 40) = a1;
  *(v3 + 48) = v1;

  if (v1)
  {
    v6 = sub_1010D4D8C;
  }

  else
  {
    v6 = sub_1010D4B04;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1010D4B04()
{
  if (*(v0[5] + 16))
  {
    v1 = v0[6];
    sub_1011305AC(v0[5], v0[2]);
    if (v1)
    {
      if (qword_101695270 != -1)
      {
        swift_once();
      }

      v2 = type metadata accessor for Logger();
      sub_1000076D4(v2, qword_10177C6B8);
      swift_errorRetain();
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        *v5 = 138543362;
        swift_errorRetain();
        v7 = _swift_stdlib_bridgeErrorToNSError();
        *(v5 + 4) = v7;
        *v6 = v7;
        _os_log_impl(&_mh_execute_header, v3, v4, "Couldn't create KeySyncSnapshot, %{public}@", v5, 0xCu);
        sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
      }

      else
      {
      }

      v12 = v0[2];
      v13 = type metadata accessor for KeySyncSnapshot();
      (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
    }

    else
    {
      v10 = v0[2];
      v11 = type metadata accessor for KeySyncSnapshot();
      (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
    }
  }

  else
  {
    v8 = v0[2];
    v9 = type metadata accessor for KeySyncSnapshot();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1010D4D8C()
{
  v1 = v0[6];
  if (qword_101695270 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_10177C6B8);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Couldn't create KeySyncSnapshot, %{public}@", v5, 0xCu);
    sub_10000B3A8(v6, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v8 = v0[2];
  v9 = type metadata accessor for KeySyncSnapshot();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = v0[1];

  return v10();
}

uint64_t sub_1010D4F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a1;
  v5 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = (&v22 - v12);
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A70(a2, v8, &unk_1016AF8A0, &unk_10139D7C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000B3A8(v8, &unk_1016AF8A0, &unk_10139D7C0);
    (*(v15 + 16))(v18, v23, v14);
    v19 = *(v15 + 32);
    v20 = 1;
  }

  else
  {
    sub_1000D2AD8(v8, v13, &unk_1016C8FC0, &unk_10139D7D0);
    if (*v13 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = *v13;
    }

    v19 = *(v15 + 32);
    v19(v18, v13 + *(v9 + 36), v14);
  }

  *a3 = v20;
  return (v19)(a3 + *(v9 + 36), v18, v14);
}

uint64_t sub_1010D51F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v6 = *(*(sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_10169E358, &qword_101404C50) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[7] = v8;
  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_1010D5324;

  return sub_1010D4938(v8, a2);
}

uint64_t sub_1010D5324()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_1010D5434, v2, 0);
}

uint64_t sub_1010D5434()
{
  v1 = *(v0 + 48);
  sub_1000D2A70(*(v0 + 56), v1, &qword_10169E358, &qword_101404C50);
  v2 = type metadata accessor for KeySyncSnapshot();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  if (v3 == 1)
  {
    sub_10000B3A8(*(v0 + 48), &qword_10169E358, &qword_101404C50);
    v6 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  }

  else
  {
    v7 = *(v0 + 48);
    sub_10112D3D0(*(v0 + 40));
    sub_1010D6FB8(v4, type metadata accessor for KeySyncSnapshot);
  }

  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = *(v0 + 40);
  sub_1010D4F70(*(v0 + 24), v10, *(v0 + 16));
  sub_10000B3A8(v10, &unk_1016AF8A0, &unk_10139D7C0);
  sub_10000B3A8(v8, &qword_10169E358, &qword_101404C50);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1010D5604()
{
  if (isUserAgent.getter())
  {
    if (qword_101695248 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016C75C0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    goto LABEL_7;
  }

  v6 = *(v0 + 16);
  if (*(v6 + 128))
  {
    v7 = *(v6 + 128);

    sub_100220C64();

LABEL_7:
    v5 = *(v0 + 8);
    goto LABEL_15;
  }

  if (qword_101695248 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_1000076D4(v8, qword_1016C75C0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "No observation store on this platform!", v11, 2u);
  }

  sub_1010D6C78();
  swift_allocError();
  swift_willThrow();
  v5 = *(v0 + 8);
LABEL_15:

  return v5();
}

uint64_t sub_1010D586C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1000BC4D4(&qword_1016B3DF8, &qword_101404C30);
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1010D593C, a4, 0);
}

uint64_t sub_1010D593C()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v2 = *(v1 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 136) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5F0C4(0, v2[2] + 1, 1, v2);
    *(v1 + 136) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_100A5F0C4(v4 > 1, v5 + 1, 1, v2);
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v2[2] = v5 + 1;
  (*(v6 + 32))(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7, v8);
  *(v1 + 136) = v2;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1010D5A9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_1000BC4D4(a3, a4);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v22 - v12;
  v14 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v22 - v16;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v10 + 16))(v13, a1, v9);
  v19 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  *(v20 + 4) = a2;
  (*(v10 + 32))(&v20[v19], v13, v9);

  sub_10025EDD4(0, 0, v17, a6, v20);
}

uint64_t sub_1010D5C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1000BC4D4(&qword_1016B3CF0, &qword_1013D4A70);
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1010D5D4C, a4, 0);
}

uint64_t sub_1010D5D4C()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v2 = *(v1 + 144);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 144) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5F0E8(0, v2[2] + 1, 1, v2);
    *(v1 + 144) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_100A5F0E8(v4 > 1, v5 + 1, 1, v2);
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v2[2] = v5 + 1;
  (*(v6 + 32))(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7, v8);
  *(v1 + 144) = v2;

  v9 = v0[1];

  return v9();
}

uint64_t sub_1010D5E7C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_10002E1FC(a1);
}

uint64_t sub_1010D5F14(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_1010CDD28(a1);
}

uint64_t sub_1010D5FAC(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_1010CDED8(a1);
}

uint64_t sub_1010D6044()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1010CCD2C();
}

uint64_t sub_1010D60D4(uint64_t a1, uint64_t a2, char a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100780A44;

  return sub_1010D2DD4(a1, a2, a3);
}

uint64_t sub_1010D6184(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100780A44;

  return sub_1010D30B0(a1);
}

uint64_t sub_1010D621C(double a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100780A44;

  return sub_1010CD178(a1);
}

uint64_t sub_1010D62B4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100780A44;

  return sub_1010D336C(a1);
}

uint64_t sub_1010D634C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10077E2A8;

  return sub_1010D3628(a1);
}

uint64_t sub_1010D63E4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_1010CD810(a1, a2);
}

uint64_t sub_1010D6490(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100780A44;

  return sub_1010CED94(a1);
}

uint64_t sub_1010D6528()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1010CCED0();
}

uint64_t sub_1010D65B8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100780A44;

  return sub_1010CE4F4();
}

uint64_t sub_1010D6648()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000D2118;

  return sub_1010CC098();
}

uint64_t sub_1010D66D8(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_1010CDAC4(a1);
}

uint64_t sub_1010D6770(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100780A44;

  return sub_1010CE238(a1);
}

uint64_t sub_1010D6808(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100780A44;

  return sub_1010CC3BC(a1, a2);
}

uint64_t sub_1010D68B0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_1010D0080(a1);
}

uint64_t sub_1010D6948()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_1010D55E4();
}

uint64_t sub_1010D69D8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100014744;

  return sub_1010CE7E4(a1, a2, a3, a4);
}

uint64_t sub_1010D6A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_100014744;

  return sub_1010D38DC(a1, a2, a3);
}

uint64_t sub_1010D6B50(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_1010D02E4(a1);
}

unint64_t sub_1010D6C78()
{
  result = qword_1016C7740;
  if (!qword_1016C7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7740);
  }

  return result;
}

uint64_t sub_1010D6CCC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C650);
  sub_1000076D4(v0, qword_10177C650);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1010D6D68(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016B3CF0, &qword_1013D4A70) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_1010D5C7C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1010D6E6C(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016B3DF8, &qword_101404C30) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1010D586C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1010D6F70(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1010D6FB8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1010D7018(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1010D70A4()
{
  result = qword_1016C7760;
  if (!qword_1016C7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7760);
  }

  return result;
}

unint64_t sub_1010D70FC()
{
  result = qword_1016C7768[0];
  if (!qword_1016C7768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1016C7768);
  }

  return result;
}

uint64_t sub_1010D71A8()
{
  v1 = *(v0 + 32);

  return v0;
}

uint64_t sub_1010D71D8()
{
  v1 = *(*v0 + 80);
  type metadata accessor for AbstractXPCClientConnectionPool();
  swift_getWitnessTable();
  v2._countAndFlagsBits = CustomStringConvertible.typeDescription.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 8250;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = CustomStringConvertible<>.addressDescription.getter();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 62;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 60;
}

uint64_t sub_1010D72CC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177C668);
  sub_1000076D4(v0, qword_10177C668);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1010D734C()
{
  sub_1010D71A8();

  return swift_deallocClassInstance();
}

unint64_t sub_1010D73CC(__int16 a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 3;
      if ((a1 & 4) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 4) == 0)
      {
        if ((a1 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_35;
      }
    }

    goto LABEL_24;
  }

  if ((a1 & 2) != 0)
  {
    v1 = 2;
    if ((a1 & 4) == 0)
    {
LABEL_25:
      if ((a1 & 8) == 0)
      {
        if ((a1 & 0x10) != 0)
        {
          goto LABEL_36;
        }

        goto LABEL_27;
      }

LABEL_35:
      v1 |= 8uLL;
      if ((a1 & 0x10) != 0)
      {
LABEL_36:
        v1 |= 0x10uLL;
        if ((a1 & 0x20) != 0)
        {
LABEL_37:
          v1 |= 0x20uLL;
          if ((a1 & 0x40) != 0)
          {
LABEL_38:
            v1 |= 0x40uLL;
            if ((a1 & 0x80) != 0)
            {
LABEL_39:
              v1 |= 0x80uLL;
              if ((a1 & 0x100) != 0)
              {
LABEL_40:
                v1 |= 0x100uLL;
                if ((a1 & 0x400) != 0)
                {
                  goto LABEL_41;
                }

LABEL_32:
                if ((a1 & 0x800) != 0)
                {
                  goto LABEL_42;
                }

                goto LABEL_33;
              }

LABEL_31:
              if ((a1 & 0x400) != 0)
              {
                goto LABEL_41;
              }

              goto LABEL_32;
            }

LABEL_30:
            if ((a1 & 0x100) != 0)
            {
              goto LABEL_40;
            }

            goto LABEL_31;
          }

LABEL_29:
          if ((a1 & 0x80) != 0)
          {
            goto LABEL_39;
          }

          goto LABEL_30;
        }

LABEL_28:
        if ((a1 & 0x40) != 0)
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }

LABEL_27:
      if ((a1 & 0x20) != 0)
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

LABEL_24:
    v1 |= 4uLL;
    goto LABEL_25;
  }

  v1 = 0;
  if ((a1 & 4) != 0)
  {
    goto LABEL_24;
  }

  if ((a1 & 8) != 0)
  {
    goto LABEL_35;
  }

LABEL_9:
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_36;
  }

  if ((a1 & 0x20) != 0)
  {
    goto LABEL_37;
  }

  if ((a1 & 0x40) != 0)
  {
    goto LABEL_38;
  }

  if ((a1 & 0x80) != 0)
  {
    goto LABEL_39;
  }

  if ((a1 & 0x100) != 0)
  {
    goto LABEL_40;
  }

  if ((a1 & 0x400) == 0)
  {
    if ((a1 & 0x800) == 0)
    {
      if ((a1 & 0x200) == 0)
      {
        if ((a1 & 0x1000) != 0)
        {
          goto LABEL_18;
        }

        goto LABEL_51;
      }

LABEL_44:
      v1 |= 0x200uLL;
      goto LABEL_45;
    }

    goto LABEL_42;
  }

LABEL_41:
  v1 |= 0x400uLL;
  if ((a1 & 0x800) != 0)
  {
LABEL_42:
    v1 |= 0x800uLL;
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_45;
    }

LABEL_43:
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

LABEL_33:
  if ((a1 & 0x200) != 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  v2 = v1 | a1 & 0x400;
  v3 = v1 >> 11;
  if ((a1 & 0x800) == 0)
  {
    LODWORD(v3) = 1;
  }

  if (v3)
  {
    v1 = v2;
  }

  else
  {
    v1 = v2 | 0x800;
  }

  if ((a1 & 0x1000) != 0)
  {
LABEL_18:
    v1 |= 0x1000uLL;
    if ((a1 & 0x2000) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_52;
  }

LABEL_51:
  if ((a1 & 0x2000) != 0)
  {
LABEL_19:
    v1 |= 0x2000uLL;
    if ((a1 & 0x4000) == 0)
    {
      return v1;
    }

    goto LABEL_53;
  }

LABEL_52:
  if ((a1 & 0x4000) != 0)
  {
LABEL_53:
    v1 |= 0x4000uLL;
  }

  return v1;
}

uint64_t sub_1010D74EC(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100A5B2CC(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5B2CC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x756F5379616C702ELL;
  *(v5 + 5) = 0xEA0000000000646ELL;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100A5B2CC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6C6563634174752ELL;
    *(v8 + 5) = 0xE800000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100A5B2CC((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x6B6F6F4C63666E2ELL;
    *(v11 + 5) = 0xEA00000000007075;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100A5B2CC((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x6B6F6F4C656C622ELL;
  *(v14 + 5) = 0xEA00000000007075;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100A5B2CC((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x505241552ELL;
    *(v17 + 5) = 0xE500000000000000;
  }

LABEL_31:
  if ((a1 & 0x20) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    if (v19 >= v18 >> 1)
    {
      v2 = sub_100A5B2CC((v18 > 1), v19 + 1, 1, v2);
    }

    *(v2 + 2) = v19 + 1;
    v20 = &v2[16 * v19];
    *(v20 + 4) = 0x646F4D74736F6C2ELL;
    *(v20 + 5) = 0xE900000000000065;
  }

  if ((a1 & 0x40) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v22 = *(v2 + 2);
    v21 = *(v2 + 3);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_100A5B2CC((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 2) = v22 + 1;
    v23 = &v2[16 * v22];
    *(v23 + 4) = 0xD000000000000010;
    *(v23 + 5) = 0x8000000101358B20;
    if ((a1 & 0x80) == 0)
    {
LABEL_39:
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }
  }

  else if ((a1 & 0x80) == 0)
  {
    goto LABEL_39;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100A5B2CC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0x656D616E65722ELL;
  *(v26 + 5) = 0xE700000000000000;
  if ((a1 & 0x100) == 0)
  {
LABEL_40:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_61;
  }

LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100A5B2CC((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0x65676E61722ELL;
  *(v29 + 5) = 0xE600000000000000;
  if ((a1 & 0x400) == 0)
  {
LABEL_41:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_66;
  }

LABEL_61:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_100A5B2CC((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0x69646E694674622ELL;
  *(v32 + 5) = 0xEA0000000000676ELL;
  if ((a1 & 0x800) == 0)
  {
LABEL_42:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_71;
  }

LABEL_66:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_100A5B2CC((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD000000000000015;
  *(v35 + 5) = 0x800000010137B270;
  if ((a1 & 0x200) == 0)
  {
LABEL_43:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_76;
  }

LABEL_71:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_100A5B2CC((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0x746164705577662ELL;
  *(v38 + 5) = 0xE900000000000065;
  if ((a1 & 0x1000) == 0)
  {
LABEL_44:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_81;
  }

LABEL_76:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_100A5B2CC((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0xD000000000000019;
  *(v41 + 5) = 0x800000010137B250;
  if ((a1 & 0x4000) != 0)
  {
LABEL_81:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v43 = *(v2 + 2);
    v42 = *(v2 + 3);
    if (v43 >= v42 >> 1)
    {
      v2 = sub_100A5B2CC((v42 > 1), v43 + 1, 1, v2);
    }

    *(v2 + 2) = v43 + 1;
    v44 = &v2[16 * v43];
    *(v44 + 4) = 0x325665676E61722ELL;
    *(v44 + 5) = 0xE800000000000000;
  }

LABEL_86:
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_10012B138();
  v45 = BidirectionalCollection<>.joined(separator:)();
  v47 = v46;

  v48._countAndFlagsBits = v45;
  v48._object = v47;
  String.append(_:)(v48);

  v49._countAndFlagsBits = 93;
  v49._object = 0xE100000000000000;
  String.append(_:)(v49);
  return 91;
}

void *sub_1010D7CD4(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v3 = SPBeaconTaskNamePlaySound;
  v2 = sub_100A5D81C(0, 1, 1, _swiftEmptyArrayStorage);
  v5 = v2[2];
  v4 = v2[3];
  v6 = v5 + 1;
  if (v5 >= v4 >> 1)
  {
    v2 = sub_100A5D81C((v4 > 1), v5 + 1, 1, v2);
  }

  v2[2] = v6;
  v2[v5 + 4] = v3;
  v7 = v2[3];
  v8 = v5 + 2;
  v9 = SPBeaconTaskNameStopSound;
  if ((v5 + 2) > (v7 >> 1))
  {
    v59 = v9;
    v2 = sub_100A5D81C((v7 > 1), v8, 1, v2);
    v9 = v59;
  }

  v2[2] = v8;
  v2[v6 + 4] = v9;
  if ((a1 & 0x20) != 0)
  {
LABEL_9:
    v10 = SPBeaconTaskNameEnableLostMode;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5D81C(0, v2[2] + 1, 1, v2);
    }

    v12 = v2[2];
    v11 = v2[3];
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v2 = sub_100A5D81C((v11 > 1), v12 + 1, 1, v2);
    }

    v2[2] = v13;
    v2[v12 + 4] = v10;
    v14 = v2[3];
    v15 = v12 + 2;
    v16 = SPBeaconTaskNameDisableLostMode;
    if ((v12 + 2) > (v14 >> 1))
    {
      v60 = v16;
      v2 = sub_100A5D81C((v14 > 1), v15, 1, v2);
      v16 = v60;
    }

    v2[2] = v15;
    v2[v13 + 4] = v16;
  }

LABEL_16:
  if ((a1 & 0x40) != 0)
  {
    v17 = SPBeaconTaskNameEnableNotifyWhenFound;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5D81C(0, v2[2] + 1, 1, v2);
    }

    v19 = v2[2];
    v18 = v2[3];
    v20 = v19 + 1;
    if (v19 >= v18 >> 1)
    {
      v2 = sub_100A5D81C((v18 > 1), v19 + 1, 1, v2);
    }

    v2[2] = v20;
    v2[v19 + 4] = v17;
    v21 = v2[3];
    v22 = v19 + 2;
    v23 = SPBeaconTaskNameDisableNotifyWhenFound;
    if ((v19 + 2) > (v21 >> 1))
    {
      v61 = v23;
      v2 = sub_100A5D81C((v21 > 1), v22, 1, v2);
      v23 = v61;
    }

    v2[2] = v22;
    v2[v20 + 4] = v23;
    if ((a1 & 0x100) == 0)
    {
LABEL_18:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_38;
    }
  }

  else if ((a1 & 0x100) == 0)
  {
    goto LABEL_18;
  }

  v24 = SPBeaconTaskNameBeginRanging;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5D81C(0, v2[2] + 1, 1, v2);
  }

  v26 = v2[2];
  v25 = v2[3];
  v27 = v26 + 1;
  if (v26 >= v25 >> 1)
  {
    v2 = sub_100A5D81C((v25 > 1), v26 + 1, 1, v2);
  }

  v2[2] = v27;
  v2[v26 + 4] = v24;
  v28 = v2[3];
  v29 = v26 + 2;
  v30 = SPBeaconTaskNameEndRanging;
  if ((v26 + 2) > (v28 >> 1))
  {
    v62 = v30;
    v2 = sub_100A5D81C((v28 > 1), v29, 1, v2);
    v30 = v62;
  }

  v2[2] = v29;
  v2[v27 + 4] = v30;
  if ((a1 & 0x400) == 0)
  {
LABEL_19:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_45;
  }

LABEL_38:
  v31 = SPBeaconTaskNameBeginBTFinding;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5D81C(0, v2[2] + 1, 1, v2);
  }

  v33 = v2[2];
  v32 = v2[3];
  v34 = v33 + 1;
  if (v33 >= v32 >> 1)
  {
    v2 = sub_100A5D81C((v32 > 1), v33 + 1, 1, v2);
  }

  v2[2] = v34;
  v2[v33 + 4] = v31;
  v35 = v2[3];
  v36 = v33 + 2;
  v37 = SPBeaconTaskNameEndBTFinding;
  if ((v33 + 2) > (v35 >> 1))
  {
    v63 = v37;
    v2 = sub_100A5D81C((v35 > 1), v36, 1, v2);
    v37 = v63;
  }

  v2[2] = v36;
  v2[v34 + 4] = v37;
  if ((a1 & 0x80) == 0)
  {
LABEL_20:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_50;
  }

LABEL_45:
  v38 = SPBeaconTaskNameRename;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5D81C(0, v2[2] + 1, 1, v2);
  }

  v40 = v2[2];
  v39 = v2[3];
  if (v40 >= v39 >> 1)
  {
    v2 = sub_100A5D81C((v39 > 1), v40 + 1, 1, v2);
  }

  v2[2] = v40 + 1;
  v2[v40 + 4] = v38;
  if ((a1 & 0x800) == 0)
  {
LABEL_21:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_57;
  }

LABEL_50:
  v41 = SPBeaconTaskNameBeginLeashing;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5D81C(0, v2[2] + 1, 1, v2);
  }

  v43 = v2[2];
  v42 = v2[3];
  v44 = v43 + 1;
  if (v43 >= v42 >> 1)
  {
    v2 = sub_100A5D81C((v42 > 1), v43 + 1, 1, v2);
  }

  v2[2] = v44;
  v2[v43 + 4] = v41;
  v45 = v2[3];
  v46 = v43 + 2;
  v47 = SPBeaconTaskNameEndLeashing;
  if ((v43 + 2) > (v45 >> 1))
  {
    v64 = v47;
    v2 = sub_100A5D81C((v45 > 1), v46, 1, v2);
    v47 = v64;
  }

  v2[2] = v46;
  v2[v44 + 4] = v47;
  if ((a1 & 0x200) == 0)
  {
LABEL_22:
    if ((a1 & 0x4000) == 0)
    {
      return v2;
    }

    goto LABEL_62;
  }

LABEL_57:
  v48 = SPBeaconTaskNameAccessoryFirmwareUpdate;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5D81C(0, v2[2] + 1, 1, v2);
  }

  v50 = v2[2];
  v49 = v2[3];
  if (v50 >= v49 >> 1)
  {
    v2 = sub_100A5D81C((v49 > 1), v50 + 1, 1, v2);
  }

  v2[2] = v50 + 1;
  v2[v50 + 4] = v48;
  if ((a1 & 0x4000) != 0)
  {
LABEL_62:
    v51 = SPBeaconTaskNameFindingExperienceV2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5D81C(0, v2[2] + 1, 1, v2);
    }

    v53 = v2[2];
    v52 = v2[3];
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v2 = sub_100A5D81C((v52 > 1), v53 + 1, 1, v2);
    }

    v2[2] = v54;
    v2[v53 + 4] = v51;
    v55 = v2[3];
    v56 = v53 + 2;
    v57 = SPBeaconTaskNamePrecisionVFX;
    if ((v53 + 2) > (v55 >> 1))
    {
      v65 = v57;
      v2 = sub_100A5D81C((v55 > 1), v56, 1, v2);
      v57 = v65;
    }

    v2[2] = v56;
    v2[v54 + 4] = v57;
  }

  return v2;
}

uint64_t sub_1010D840C(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100A5B2CC(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5B2CC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x756F5379616C702ELL;
  *(v5 + 5) = 0xEA0000000000646ELL;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100A5B2CC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x6C6563634174752ELL;
    *(v8 + 5) = 0xE800000000000000;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100A5B2CC((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0x6B6F6F4C63666E2ELL;
    *(v11 + 5) = 0xEA00000000007075;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100A5B2CC((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0x6B6F6F4C656C622ELL;
  *(v14 + 5) = 0xEA00000000007075;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100A5B2CC((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x707261752ELL;
    *(v17 + 5) = 0xE500000000000000;
  }

LABEL_31:
  if ((a1 & 0x20) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v19 = *(v2 + 2);
    v18 = *(v2 + 3);
    if (v19 >= v18 >> 1)
    {
      v2 = sub_100A5B2CC((v18 > 1), v19 + 1, 1, v2);
    }

    *(v2 + 2) = v19 + 1;
    v20 = &v2[16 * v19];
    *(v20 + 4) = 0x646F4D74736F6C2ELL;
    *(v20 + 5) = 0xE900000000000065;
  }

  if ((a1 & 0x40) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v22 = *(v2 + 2);
    v21 = *(v2 + 3);
    if (v22 >= v21 >> 1)
    {
      v2 = sub_100A5B2CC((v21 > 1), v22 + 1, 1, v2);
    }

    *(v2 + 2) = v22 + 1;
    v23 = &v2[16 * v22];
    *(v23 + 4) = 0xD000000000000010;
    *(v23 + 5) = 0x8000000101358B20;
    if ((a1 & 0x80) == 0)
    {
LABEL_39:
      if ((a1 & 0x100) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_57;
    }
  }

  else if ((a1 & 0x80) == 0)
  {
    goto LABEL_39;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100A5B2CC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0x656D616E65722ELL;
  *(v26 + 5) = 0xE700000000000000;
  if ((a1 & 0x100) == 0)
  {
LABEL_40:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_62;
  }

LABEL_57:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100A5B2CC((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0x65676E61722ELL;
  *(v29 + 5) = 0xE600000000000000;
  if ((a1 & 0x200) == 0)
  {
LABEL_41:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_67;
  }

LABEL_62:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_100A5B2CC((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  *(v32 + 4) = 0x746164705577662ELL;
  *(v32 + 5) = 0xE900000000000065;
  if ((a1 & 0x400) == 0)
  {
LABEL_42:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_72;
  }

LABEL_67:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_100A5B2CC((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0x69646E694674622ELL;
  *(v35 + 5) = 0xEA0000000000676ELL;
  if ((a1 & 0x800) == 0)
  {
LABEL_43:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_77;
  }

LABEL_72:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_100A5B2CC((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  *(v38 + 4) = 0xD000000000000015;
  *(v38 + 5) = 0x800000010137B270;
  if ((a1 & 0x1000) == 0)
  {
LABEL_44:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_82;
  }

LABEL_77:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_100A5B2CC((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  *(v41 + 4) = 0xD000000000000019;
  *(v41 + 5) = 0x800000010137B250;
  if ((a1 & 0x2000) == 0)
  {
LABEL_45:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_87;
  }

LABEL_82:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_100A5B2CC((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  strcpy(v44 + 32, ".shareRequest");
  *(v44 + 23) = -4864;
  if ((a1 & 0x4000) != 0)
  {
LABEL_87:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v46 = *(v2 + 2);
    v45 = *(v2 + 3);
    if (v46 >= v45 >> 1)
    {
      v2 = sub_100A5B2CC((v45 > 1), v46 + 1, 1, v2);
    }

    *(v2 + 2) = v46 + 1;
    v47 = &v2[16 * v46];
    *(v47 + 4) = 0x325665676E61722ELL;
    *(v47 + 5) = 0xE800000000000000;
  }

LABEL_92:
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_10012B138();
  v48 = BidirectionalCollection<>.joined(separator:)();
  v50 = v49;

  v51._countAndFlagsBits = v48;
  v51._object = v50;
  String.append(_:)(v51);

  v52._countAndFlagsBits = 93;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
  return 91;
}

uint64_t sub_1010D8C84(__int16 a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 3;
      if ((a1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 4) != 0)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    if ((a1 & 2) == 0)
    {
      v1 = 0;
      if ((a1 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v1 = 2;
    if ((a1 & 4) != 0)
    {
LABEL_4:
      v1 = v1 | 4;
    }
  }

LABEL_5:
  if ((a1 & 8) != 0)
  {
    v1 = v1 | 8;
    if ((a1 & 0x200) == 0)
    {
LABEL_7:
      if ((a1 & 0x400) == 0)
      {
        goto LABEL_8;
      }

LABEL_16:
      v1 = v1 | 0x20;
      if ((a1 & 0x1000) == 0)
      {
        return v1;
      }

      return v1 | 0x40;
    }
  }

  else if ((a1 & 0x200) == 0)
  {
    goto LABEL_7;
  }

  v1 = v1 | 0x10;
  if ((a1 & 0x400) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((a1 & 0x1000) != 0)
  {
    return v1 | 0x40;
  }

  return v1;
}

uint64_t sub_1010D8CF8(__int16 a1)
{
  if (a1)
  {
    if ((a1 & 2) != 0)
    {
      v1 = 3;
      if ((a1 & 4) == 0)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v1 = 1;
      if ((a1 & 4) == 0)
      {
        if ((a1 & 8) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_32;
      }
    }

    goto LABEL_21;
  }

  if ((a1 & 2) != 0)
  {
    v1 = 2;
    if ((a1 & 4) == 0)
    {
LABEL_22:
      if ((a1 & 8) == 0)
      {
        if ((a1 & 0x10) != 0)
        {
          goto LABEL_33;
        }

        goto LABEL_24;
      }

LABEL_32:
      v1 = v1 | 8;
      if ((a1 & 0x10) != 0)
      {
LABEL_33:
        v1 = v1 | 0x10;
        if ((a1 & 0x20) != 0)
        {
LABEL_34:
          v1 = v1 | 0x20;
          if ((a1 & 0x40) != 0)
          {
LABEL_35:
            v1 = v1 | 0x40;
            if ((a1 & 0x80) != 0)
            {
LABEL_36:
              v1 = v1 | 0x80;
              if ((a1 & 0x100) != 0)
              {
LABEL_37:
                v1 = v1 | 0x100;
                if ((a1 & 0x400) != 0)
                {
                  goto LABEL_38;
                }

LABEL_29:
                if ((a1 & 0x800) != 0)
                {
                  goto LABEL_39;
                }

                goto LABEL_30;
              }

LABEL_28:
              if ((a1 & 0x400) != 0)
              {
                goto LABEL_38;
              }

              goto LABEL_29;
            }

LABEL_27:
            if ((a1 & 0x100) != 0)
            {
              goto LABEL_37;
            }

            goto LABEL_28;
          }

LABEL_26:
          if ((a1 & 0x80) != 0)
          {
            goto LABEL_36;
          }

          goto LABEL_27;
        }

LABEL_25:
        if ((a1 & 0x40) != 0)
        {
          goto LABEL_35;
        }

        goto LABEL_26;
      }

LABEL_24:
      if ((a1 & 0x20) != 0)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

LABEL_21:
    v1 = v1 | 4;
    goto LABEL_22;
  }

  v1 = 0;
  if ((a1 & 4) != 0)
  {
    goto LABEL_21;
  }

  if ((a1 & 8) != 0)
  {
    goto LABEL_32;
  }

LABEL_9:
  if ((a1 & 0x10) != 0)
  {
    goto LABEL_33;
  }

  if ((a1 & 0x20) != 0)
  {
    goto LABEL_34;
  }

  if ((a1 & 0x40) != 0)
  {
    goto LABEL_35;
  }

  if ((a1 & 0x80) != 0)
  {
    goto LABEL_36;
  }

  if ((a1 & 0x100) != 0)
  {
    goto LABEL_37;
  }

  if ((a1 & 0x400) == 0)
  {
    if ((a1 & 0x800) == 0)
    {
      if ((a1 & 0x200) == 0)
      {
        goto LABEL_42;
      }

LABEL_41:
      v1 = v1 | 0x200;
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_38:
  v1 = v1 | 0x400;
  if ((a1 & 0x800) != 0)
  {
LABEL_39:
    v1 = v1 | 0x800;
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_42;
    }

LABEL_40:
    if ((v1 & 0x200) != 0)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_30:
  if ((a1 & 0x200) != 0)
  {
    goto LABEL_40;
  }

LABEL_42:
  if ((a1 & 0x1000) != 0)
  {
    v1 = v1 | 0x1000;
  }

  if ((a1 & 0x4000) != 0)
  {
    return v1 | 0x4000;
  }

  return v1;
}

Swift::Int sub_1010D8EA0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1010D8F14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

BOOL sub_1010D8FA4(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *sub_1010D8FD4@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1010D9000@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1010D90D4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1010D9270(a1);

  *a2 = v3;
  return result;
}

unint64_t sub_1010D9114()
{
  result = qword_1016C77F0;
  if (!qword_1016C77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C77F0);
  }

  return result;
}

unint64_t sub_1010D916C()
{
  result = qword_1016C77F8;
  if (!qword_1016C77F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C77F8);
  }

  return result;
}

unint64_t sub_1010D91C4()
{
  result = qword_1016C7800;
  if (!qword_1016C7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7800);
  }

  return result;
}

unint64_t sub_1010D921C()
{
  result = qword_1016C7808;
  if (!qword_1016C7808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C7808);
  }

  return result;
}

uint64_t sub_1010D9270(uint64_t result)
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

uint64_t sub_1010D92A8(uint64_t a1)
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

uint64_t sub_1010D92E0(int a1)
{
  v2 = type metadata accessor for Bit();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v44 = a1;
  sub_100101824();
  v10 = FixedWidthInteger.data.getter();
  v12 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (v12)
    {
      if (v10 != v10 >> 32)
      {
        goto LABEL_7;
      }
    }

    else if ((v11 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_31:
    sub_100016590(v10, v11);
    return 0;
  }

  if (v12 != 2 || *(v10 + 16) == *(v10 + 24))
  {
    goto LABEL_31;
  }

LABEL_7:
  v13 = v10;
  v14 = v11;
  v15 = Data._Representation.subscript.getter();
  sub_100016590(v13, v14);
  LOBYTE(v44) = v15;
  sub_1000198E8();
  result = FixedWidthInteger.bits()();
  v37 = result;
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_34;
  }

  v17 = v37;
  v18 = *(v3 + 16);
  v39 = v37 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v42 = v18;
  (v18)(v9);
  v19 = *(v3 + 104);
  v41 = enum case for Bit.one(_:);
  v36 = v3 + 104;
  v40 = v19;
  v19(v7);
  sub_100019DF0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20 = *(v3 + 8);
  v20(v7, v2);
  result = (v20)(v9, v2);
  if (*(v17 + 16) < 2uLL)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v34 = v43;
  v35 = v44;
  v38 = *(v3 + 72);
  v42(v9, v39 + v38, v2);
  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  result = (v20)(v9, v2);
  v21 = v37;
  if (*(v37 + 16) < 3uLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v32 = v43;
  v33 = v44;
  v42(v9, v39 + 2 * v38, v2);
  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  result = (v20)(v9, v2);
  if (*(v21 + 16) < 4uLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v30 = v43;
  v31 = v44;
  v42(v9, v39 + 3 * v38, v2);
  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  result = (v20)(v9, v2);
  if (*(v21 + 16) < 5uLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v28 = v43;
  v29 = v44;
  v42(v9, v39 + 4 * v38, v2);
  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  result = (v20)(v9, v2);
  if (*(v21 + 16) < 6uLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v26 = v43;
  v27 = v44;
  v42(v9, v39 + 5 * v38, v2);
  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  result = (v20)(v9, v2);
  if (*(v21 + 16) < 7uLL)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  v22 = v35 == v34;
  v23 = 2;
  if (v35 == v34)
  {
    v23 = 3;
  }

  if (v33 == v32)
  {
    v22 = v23;
  }

  if (v31 == v30)
  {
    v22 |= 4uLL;
  }

  if (v29 == v28)
  {
    v22 |= 8uLL;
  }

  if (v27 == v26)
  {
    v22 |= 0x200uLL;
  }

  if (v44 == v43)
  {
    v24 = v22 | 0x400;
  }

  else
  {
    v24 = v22;
  }

  v42(v9, v39 + 6 * v38, v2);

  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  v20(v9, v2);
  if (v44 == v43)
  {
    return v24 | 0x1000;
  }

  else
  {
    return v24;
  }
}

uint64_t sub_1010D99D0(int a1)
{
  v2 = type metadata accessor for Bit();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v44 = a1;
  sub_100101824();
  v10 = FixedWidthInteger.data.getter();
  v12 = v11 >> 62;
  if ((v11 >> 62) <= 1)
  {
    if (v12)
    {
      if (v10 != v10 >> 32)
      {
        goto LABEL_7;
      }
    }

    else if ((v11 & 0xFF000000000000) != 0)
    {
      goto LABEL_7;
    }

LABEL_32:
    sub_100016590(v10, v11);
    return 0;
  }

  if (v12 != 2 || *(v10 + 16) == *(v10 + 24))
  {
    goto LABEL_32;
  }

LABEL_7:
  v13 = v10;
  v14 = v11;
  v15 = Data._Representation.subscript.getter();
  sub_100016590(v13, v14);
  LOBYTE(v44) = v15;
  sub_1000198E8();
  result = FixedWidthInteger.bits()();
  v37 = result;
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_35;
  }

  v17 = v37;
  v18 = *(v3 + 16);
  v39 = v37 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v42 = v18;
  (v18)(v9);
  v19 = *(v3 + 104);
  v41 = enum case for Bit.one(_:);
  v36 = v3 + 104;
  v40 = v19;
  v19(v7);
  sub_100019DF0();
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20 = *(v3 + 8);
  v20(v7, v2);
  result = (v20)(v9, v2);
  if (*(v17 + 16) < 2uLL)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v34 = v43;
  v35 = v44;
  v38 = *(v3 + 72);
  v42(v9, v39 + v38, v2);
  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  result = (v20)(v9, v2);
  v21 = v37;
  if (*(v37 + 16) < 3uLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v32 = v43;
  v33 = v44;
  v42(v9, v39 + 2 * v38, v2);
  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  result = (v20)(v9, v2);
  if (*(v21 + 16) < 4uLL)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v30 = v43;
  v31 = v44;
  v42(v9, v39 + 3 * v38, v2);
  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  result = (v20)(v9, v2);
  if (*(v21 + 16) < 5uLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v28 = v43;
  v29 = v44;
  v42(v9, v39 + 4 * v38, v2);
  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  result = (v20)(v9, v2);
  if (*(v21 + 16) < 6uLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v26 = v43;
  v27 = v44;
  v42(v9, v39 + 5 * v38, v2);
  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  result = (v20)(v9, v2);
  if (*(v21 + 16) < 7uLL)
  {
LABEL_40:
    __break(1u);
    return result;
  }

  v22 = v35 == v34;
  if (v35 == v34)
  {
    v23 = 3;
  }

  else
  {
    v23 = 2;
  }

  if (v33 == v32)
  {
    v22 = v23;
  }

  if (v31 == v30)
  {
    v22 |= 4u;
  }

  if (v29 == v28)
  {
    v22 |= 8u;
  }

  if (v27 == v26)
  {
    v22 |= 0x200u;
  }

  if (v44 == v43)
  {
    v24 = v22 | 0x400;
  }

  else
  {
    v24 = v22;
  }

  v42(v9, v39 + 6 * v38, v2);

  v40(v7, v41, v2);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v20(v7, v2);
  v20(v9, v2);
  if (v44 == v43)
  {
    return v24 | 0x1000;
  }

  else
  {
    return v24;
  }
}

void sub_1010DA0DC()
{
  sub_1010DA18C();
  if (v0 <= 0x3F)
  {
    sub_1010DA1BC();
    if (v1 <= 0x3F)
    {
      sub_1010DA228(319);
      if (v2 <= 0x3F)
      {
        sub_1010DA3BC(319);
        if (v3 <= 0x3F)
        {
          sub_1010DA508();
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

ValueMetadata *sub_1010DA18C()
{
  result = qword_1016C7890;
  if (!qword_1016C7890)
  {
    result = &type metadata for StableIdentifier.UDID;
    atomic_store(&type metadata for StableIdentifier.UDID, &qword_1016C7890);
  }

  return result;
}

void sub_1010DA1BC()
{
  if (!qword_1016C7898)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1016C7898);
    }
  }
}

void sub_1010DA228(uint64_t a1)
{
  if (!qword_1016C78A0)
  {
    __chkstk_darwin(a1);
    type metadata accessor for UUID();
    sub_1000BC580(&qword_1016C78A8, &qword_101405268);
    sub_1000BC580(&qword_1016C78B0, &qword_101405270);
    sub_1000BC580(&qword_1016C78B8, &qword_101405278);
    sub_1000BC580(&qword_1016C78C0, &qword_101405280);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016C78A0);
    }
  }
}

void sub_1010DA3BC(uint64_t a1)
{
  if (!qword_1016C78C8)
  {
    __chkstk_darwin(a1);
    type metadata accessor for UUID();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1016C78C8);
    }
  }
}

ValueMetadata *sub_1010DA508()
{
  result = qword_1016C78D0;
  if (!qword_1016C78D0)
  {
    result = &type metadata for StableIdentifier.AccountAltDsid;
    atomic_store(&type metadata for StableIdentifier.AccountAltDsid, &qword_1016C78D0);
  }

  return result;
}

uint64_t sub_1010DA578()
{
  v1 = v0;
  *&v104 = type metadata accessor for UUID();
  v2 = *(v104 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v104);
  v6 = &v96 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v96 - v7;
  v9 = type metadata accessor for StableIdentifier();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10012BF78(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v64 = *v12;
      v103 = *(v12 + 1);
      v104 = v64;
      v66 = *(v12 + 4);
      v65 = *(v12 + 5);
      sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
      v67 = swift_allocObject();
      v68 = v103;
      v69 = v104;
      *(v67 + 16) = xmmword_10138B360;
      *(v67 + 32) = v69;
      *(v67 + 48) = v68;
      *(v67 + 64) = v66;
      *(v67 + 72) = v65;
      v106 = v67;
      sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
      sub_10012B138();
      v32 = BidirectionalCollection<>.joined(separator:)();

      return v32;
    }

    v34 = *v12;
    v33 = *(v12 + 1);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10138BBE0;
    *(v35 + 56) = &type metadata for String;
    v36 = sub_100008C00();
    v37 = 3095148;
    v38 = 0xE300000000000000;
LABEL_25:
    *(v35 + 32) = v37;
    *(v35 + 40) = v38;
    *(v35 + 96) = &type metadata for String;
    *(v35 + 104) = v36;
    *(v35 + 64) = v36;
    *(v35 + 72) = v34;
    *(v35 + 80) = v33;
    return String.init(format:_:)();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v39 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v40 = &v12[v39[12]];
    v41 = *v40;
    v42 = *(v40 + 1);
    v43 = &v12[v39[16]];
    v45 = *v43;
    v44 = *(v43 + 1);
    v46 = &v12[v39[20]];
    v48 = *v46;
    v47 = *(v46 + 1);
    v101 = v48;
    *&v102 = v47;
    v49 = &v12[v39[24]];
    v50 = v2;
    v51 = *v49;
    v52 = v49[1];
    v53 = &v12[v39[28]];
    v55 = *v53;
    v54 = *(v53 + 1);
    *&v103 = v50;
    (*(v50 + 32))(v8, v12, v104);
    if (v42)
    {
      v56 = v41;
    }

    else
    {
      v56 = 0;
    }

    if (v42)
    {
      v57 = v42;
    }

    else
    {
      v57 = 0xE000000000000000;
    }

    v98 = v57;
    v99 = v56;
    if (v44)
    {
      v58 = v44;
    }

    else
    {
      v45 = 0;
      v58 = 0xE000000000000000;
    }

    v97 = v58;
    if (v54)
    {
      v59 = v55;
    }

    else
    {
      v59 = 0;
    }

    *&v100 = v59;
    if (v54)
    {
      v60 = v54;
    }

    else
    {
      v60 = 0xE000000000000000;
    }

    if (v52)
    {

      v61 = 0;
      v62 = 0xE000000000000000;
    }

    else
    {
      LOBYTE(v106) = v51;

      v61 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v70;
    }

    if (v42)
    {
    }

    else if (!v44)
    {
      if (v52)
      {

        swift_bridgeObjectRelease_n();

        sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
        v88 = swift_allocObject();
        v100 = xmmword_10138BBE0;
        *(v88 + 16) = xmmword_10138BBE0;
        *(v88 + 32) = UUID.uuidString.getter();
        *(v88 + 40) = v89;
        v90 = v102;
        *(v88 + 48) = v101;
        *(v88 + 56) = v90;
        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v91 = swift_allocObject();
        *(v91 + 16) = v100;
        *(v91 + 56) = &type metadata for String;
        v92 = sub_100008C00();
        *(v91 + 64) = v92;
        *(v91 + 32) = 3095137;
        *(v91 + 40) = 0xE300000000000000;
        v106 = v88;
        sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
        sub_10012B138();
        v93 = BidirectionalCollection<>.joined(separator:)();
        v95 = v94;

        *(v91 + 96) = &type metadata for String;
        *(v91 + 104) = v92;
        *(v91 + 72) = v93;
        *(v91 + 80) = v95;
        goto LABEL_34;
      }

LABEL_33:
      sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_10138C0D0;
      v72 = v98;
      *(v71 + 32) = v99;
      *(v71 + 40) = v72;
      v73 = v97;
      *(v71 + 48) = v45;
      *(v71 + 56) = v73;
      v74 = v102;
      *(v71 + 64) = v101;
      *(v71 + 72) = v74;
      *(v71 + 80) = v61;
      *(v71 + 88) = v62;
      *(v71 + 96) = v100;
      *(v71 + 104) = v60;
      v106 = 46786;
      v107 = 0xA200000000000000;
      v105 = v71;
      sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
      sub_10012B138();
      v75 = BidirectionalCollection<>.joined(separator:)();
      v77 = v76;

      v78._countAndFlagsBits = v75;
      v78._object = v77;
      String.append(_:)(v78);

      v79 = v106;
      v80 = v107;
      v81 = swift_allocObject();
      v102 = xmmword_10138BBE0;
      *(v81 + 16) = xmmword_10138BBE0;
      *(v81 + 32) = UUID.uuidString.getter();
      *(v81 + 40) = v82;
      *(v81 + 48) = v79;
      *(v81 + 56) = v80;
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v83 = swift_allocObject();
      *(v83 + 16) = v102;
      *(v83 + 56) = &type metadata for String;
      v84 = sub_100008C00();
      *(v83 + 64) = v84;
      *(v83 + 32) = 3095137;
      *(v83 + 40) = 0xE300000000000000;
      v106 = v81;
      v85 = BidirectionalCollection<>.joined(separator:)();
      v87 = v86;

      *(v83 + 96) = &type metadata for String;
      *(v83 + 104) = v84;
      *(v83 + 72) = v85;
      *(v83 + 80) = v87;
LABEL_34:
      v32 = String.init(format:_:)();
      (*(v103 + 8))(v8, v104);
      return v32;
    }

    goto LABEL_33;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v34 = *v12;
    v33 = *(v12 + 1);
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_10138BBE0;
    *(v35 + 56) = &type metadata for String;
    v36 = sub_100008C00();
    v37 = 792356205;
    v38 = 0xE400000000000000;
    goto LABEL_25;
  }

  v14 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
  v15 = &v12[v14[12]];
  v16 = *(v15 + 1);
  *&v103 = *v15;
  v17 = &v12[v14[16]];
  v19 = *v17;
  v18 = *(v17 + 1);
  v20 = &v12[v14[20]];
  v21 = *v20;
  v22 = *(v20 + 1);
  v23 = v12[v14[24]];
  (*(v2 + 32))(v6, v12, v104);
  sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_10138C0D0;
  *(v24 + 32) = UUID.uuidString.getter();
  *(v24 + 40) = v25;
  *(v24 + 48) = v103;
  *(v24 + 56) = v16;
  *(v24 + 64) = v19;
  *(v24 + 72) = v18;
  *(v24 + 80) = v21;
  *(v24 + 88) = v22;
  LOBYTE(v106) = v23;
  *(v24 + 96) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v24 + 104) = v26;
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10138BBE0;
  *(v27 + 56) = &type metadata for String;
  v28 = sub_100008C00();
  *(v27 + 64) = v28;
  *(v27 + 32) = 0x2F3A656C6568;
  *(v27 + 40) = 0xE600000000000000;
  v106 = v24;
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_10012B138();
  v29 = BidirectionalCollection<>.joined(separator:)();
  v31 = v30;

  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = v28;
  *(v27 + 72) = v29;
  *(v27 + 80) = v31;
  v32 = String.init(format:_:)();
  (*(v2 + 8))(v6, v104);
  return v32;
}

uint64_t sub_1010DADF4(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    v19 = 0;
    LOBYTE(v18) = 1;
    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1010DD394(result, a2, 10);

    v18 = (v6 >> 8) & 1;
LABEL_63:
    if (v18)
    {
      v19 = 0;
    }

    else
    {
      v19 = v6;
    }

    return v19 | ((v18 & 1) << 8);
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v3 = v20;
    }

    v5 = *result;
    if (v5 == 43)
    {
      if (v3 >= 1)
      {
        if (--v3)
        {
          LOBYTE(v6) = 0;
          if (result)
          {
            v11 = (result + 1);
            while (1)
            {
              v12 = *v11 - 48;
              if (v12 > 9)
              {
                goto LABEL_61;
              }

              if (((10 * v6) & 0xF00) != 0)
              {
                goto LABEL_61;
              }

              v6 = (10 * v6) + v12;
              if ((v6 >> 8))
              {
                goto LABEL_61;
              }

              ++v11;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          while (1)
          {
            v15 = *result - 48;
            if (v15 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) + v15;
            if ((v6 >> 8))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_60;
      }

LABEL_61:
      LOBYTE(v6) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v3 >= 1)
    {
      if (--v3)
      {
        LOBYTE(v6) = 0;
        if (result)
        {
          v7 = (result + 1);
          while (1)
          {
            v8 = *v7 - 48;
            if (v8 > 9)
            {
              goto LABEL_61;
            }

            if (((10 * v6) & 0xF00) != 0)
            {
              goto LABEL_61;
            }

            v6 = (10 * v6) - v8;
            if ((v6 & 0xFFFFFF00) != 0)
            {
              goto LABEL_61;
            }

            ++v7;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_60:
        LOBYTE(v3) = 0;
LABEL_62:
        v22 = v3;
        LOBYTE(v18) = v3;

        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v21[0] = result;
  v21[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v2)
      {
        LOBYTE(v6) = 0;
        v16 = v21;
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) + v17;
          if ((v6 >> 8))
          {
            break;
          }

          ++v16;
          if (!--v2)
          {
            goto LABEL_60;
          }
        }
      }

      goto LABEL_61;
    }

    if (v2)
    {
      v3 = v2 - 1;
      if (v2 != 1)
      {
        LOBYTE(v6) = 0;
        v9 = v21 + 1;
        while (1)
        {
          v10 = *v9 - 48;
          if (v10 > 9)
          {
            break;
          }

          if (((10 * v6) & 0xF00) != 0)
          {
            break;
          }

          v6 = (10 * v6) - v10;
          if ((v6 & 0xFFFFFF00) != 0)
          {
            break;
          }

          ++v9;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v2)
  {
    v3 = v2 - 1;
    if (v2 != 1)
    {
      LOBYTE(v6) = 0;
      v13 = v21 + 1;
      while (1)
      {
        v14 = *v13 - 48;
        if (v14 > 9)
        {
          break;
        }

        if (((10 * v6) & 0xF00) != 0)
        {
          break;
        }

        v6 = (10 * v6) + v14;
        if ((v6 >> 8))
        {
          break;
        }

        ++v13;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_1010DB10C(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1010DDF3C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}