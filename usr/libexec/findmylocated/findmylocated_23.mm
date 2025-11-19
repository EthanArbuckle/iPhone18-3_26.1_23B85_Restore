uint64_t sub_10023BAC0(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v106 = type metadata accessor for Handle();
  v8 = *(v106 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v106);
  v98 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v97 = v95 - v13;
  v14 = __chkstk_darwin(v12);
  v103 = v95 - v15;
  __chkstk_darwin(v14);
  v102 = v95 - v16;
  v114 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v17 = *(*(v114 - 8) + 64);
  v18 = __chkstk_darwin(v114);
  v107 = v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v95 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v95 - v24;
  v26 = __chkstk_darwin(v23);
  v27 = __chkstk_darwin(v26);
  v110 = v95 - v28;
  v29 = __chkstk_darwin(v27);
  v109 = v95 - v30;
  v31 = __chkstk_darwin(v29);
  v108 = v95 - v32;
  result = __chkstk_darwin(v31);
  v36 = (v95 - v35);
  v38 = *(v37 + 72);
  if (!v38)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_70;
  }

  v39 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_71;
  }

  v40 = (a2 - a1) / v38;
  v117 = a1;
  v116 = a4;
  if (v40 >= v39 / v38)
  {
    v102 = v34;
    v43 = v39 / v38 * v38;
    v105 = v25;
    if (a4 < a2 || a2 + v43 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v67 = a4 + v43;
    if (v43 < 1)
    {
      v71 = a4 + v43;
    }

    else
    {
      v104 = v22;
      v68 = -v38;
      v99 = (v8 + 8);
      v100 = -v38;
      v69 = a4 + v43;
      v70 = v102;
      v71 = v67;
      v111 = a4;
      v112 = a1;
      do
      {
        v95[0] = v71;
        v72 = a2;
        a2 += v68;
        v113 = a2;
        v101 = v72;
        while (1)
        {
          if (v72 <= a1)
          {
            v117 = v72;
            v115 = v95[0];
            goto LABEL_68;
          }

          v108 = a3;
          v109 = v69;
          v96 = v71;
          v110 = v69 + v68;
          sub_100005F04(v69 + v68, v70, &qword_1005AFFE0, &qword_1004D6060);
          v73 = v105;
          sub_100005F04(a2, v105, &qword_1005AFFE0, &qword_1004D6060);
          v74 = v104;
          sub_100005F04(v70, v104, &qword_1005AFFE0, &qword_1004D6060);
          v75 = v97;
          Friend.handle.getter();
          v76 = type metadata accessor for Friend();
          v77 = *(*(v76 - 8) + 8);
          v77(v74, v76);
          v103 = Handle.identifier.getter();
          v79 = v78;
          v80 = *v99;
          v81 = v75;
          v82 = v106;
          (*v99)(v81, v106);
          v83 = v107;
          sub_100005F04(v73, v107, &qword_1005AFFE0, &qword_1004D6060);
          v84 = v98;
          Friend.handle.getter();
          v77(v83, v76);
          v85 = Handle.identifier.getter();
          v87 = v86;
          v80(v84, v82);
          if (v103 != v85)
          {
            goto LABEL_52;
          }

          if (v79 == v87)
          {
            LODWORD(v103) = 0;
          }

          else
          {
LABEL_52:
            LODWORD(v103) = _stringCompareWithSmolCheck(_:_:expecting:)();
          }

          v88 = v108;
          v89 = v100;
          v90 = v108 + v100;
          v91 = *(v114 + 48);
          v92 = type metadata accessor for FriendshipAction();
          v93 = *(*(v92 - 8) + 8);
          v93(v107 + v91, v92);
          v93(v104 + v91, v92);
          sub_100002CE0(v105, &qword_1005AFFE0, &qword_1004D6060);
          v70 = v102;
          sub_100002CE0(v102, &qword_1005AFFE0, &qword_1004D6060);
          a1 = v112;
          a2 = v113;
          v94 = v111;
          if (v103)
          {
            break;
          }

          v71 = v110;
          a3 = v88 + v89;
          if (v88 < v109 || v90 >= v109)
          {
            swift_arrayInitWithTakeFrontToBack();
            v68 = v89;
          }

          else
          {
            v68 = v89;
            if (v88 != v109)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v69 = v71;
          v72 = v101;
          if (v110 <= v94)
          {
            a2 = v101;
            goto LABEL_67;
          }
        }

        a3 = v88 + v89;
        if (v88 < v101 || v90 >= v101)
        {
          swift_arrayInitWithTakeFrontToBack();
          v71 = v96;
          v68 = v89;
        }

        else
        {
          v71 = v96;
          v68 = v89;
          if (v88 != v101)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v69 = v109;
      }

      while (v109 > v94);
    }

LABEL_67:
    v117 = a2;
    v115 = v71;
  }

  else
  {
    v41 = a3;
    v42 = v40 * v38;
    if (a4 < a1 || a1 + v42 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v105 = a4 + v42;
    v115 = a4 + v42;
    if (v42 >= 1 && a2 < v41)
    {
      v104 = (v8 + 8);
      v100 = v38;
      v101 = v41;
      v99 = v36;
      do
      {
        v112 = a1;
        v113 = a2;
        sub_100005F04(a2, v36, &qword_1005AFFE0, &qword_1004D6060);
        v111 = a4;
        v45 = v108;
        sub_100005F04(a4, v108, &qword_1005AFFE0, &qword_1004D6060);
        v46 = v109;
        sub_100005F04(v36, v109, &qword_1005AFFE0, &qword_1004D6060);
        v47 = v102;
        Friend.handle.getter();
        v48 = type metadata accessor for Friend();
        v49 = *(*(v48 - 8) + 8);
        v49(v46, v48);
        v107 = Handle.identifier.getter();
        v51 = v50;
        v52 = *v104;
        v53 = v47;
        v54 = v106;
        (*v104)(v53, v106);
        v55 = v110;
        sub_100005F04(v45, v110, &qword_1005AFFE0, &qword_1004D6060);
        v56 = v103;
        Friend.handle.getter();
        v49(v55, v48);
        v57 = Handle.identifier.getter();
        v59 = v58;
        v52(v56, v54);
        if (v107 == v57 && v51 == v59)
        {
          v60 = 0;
        }

        else
        {
          v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v61 = *(v114 + 48);
        v62 = type metadata accessor for FriendshipAction();
        v63 = *(*(v62 - 8) + 8);
        v63(v110 + v61, v62);
        v63(v109 + v61, v62);
        sub_100002CE0(v108, &qword_1005AFFE0, &qword_1004D6060);
        v36 = v99;
        sub_100002CE0(v99, &qword_1005AFFE0, &qword_1004D6060);
        v64 = v112;
        a2 = v113;
        a4 = v111;
        v66 = v100;
        v65 = v101;
        if (v60)
        {
          if (v112 < v113 || v112 >= v113 + v100)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v112 != v113)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v66;
        }

        else
        {
          if (v112 < v111 || v112 >= v111 + v100)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v112 != v111)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v116 = a4 + v66;
          a4 += v66;
        }

        a1 = v64 + v66;
        v117 = a1;
      }

      while (a4 < v105 && a2 < v65);
    }
  }

LABEL_68:
  sub_10023C67C(&v117, &v116, &v115);
  return 1;
}

uint64_t sub_10023C4F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10023C584(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_10023C598(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for Fence();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_10023C67C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_10023C76C(void *result, uint64_t a2, void *a3, unsigned int *a4, unsigned int *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_10023D3B4(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

unint64_t *sub_10023C7FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = sub_100240804(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

unint64_t *sub_10023C898(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v9 = sub_10024031C(v8, a2, a3, a5);

    return v9;
  }

  return result;
}

void *sub_10023C938(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
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

    v8 = sub_100027540(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_10023CA4C(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005A9188, &unk_1004D80D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v40 - v5;
  v6 = type metadata accessor for Friend();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v53 = &v40 - v12;
  result = __chkstk_darwin(v11);
  v45 = &v40 - v15;
  v46 = v14;
  v16 = 0;
  v47 = v1;
  v48 = a1;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v42 = v14 + 32;
  v43 = v23;
  v51 = (v14 + 8);
  v52 = v14 + 16;
  v44 = v18;
  if ((v21 & v17) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      do
      {
LABEL_9:
        v25 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v27 = v45;
        v26 = v46;
        v28 = *(v46 + 72);
        v29 = *(v48 + 48) + v28 * (v25 | (v16 << 6));
        v49 = *(v46 + 16);
        v50 = v28;
        v49(v45, v29, v6);
        (*(v26 + 32))(v53, v27, v6);
        v30 = *v1;
        if (*(*v1 + 16) && (v31 = *(v30 + 40), sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend), v32 = dispatch thunk of Hashable._rawHashValue(seed:)(), v33 = -1 << *(v30 + 32), v34 = v32 & ~v33, ((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
        {
          v35 = ~v33;
          while (1)
          {
            v49(v10, *(v30 + 48) + v34 * v50, v6);
            sub_1000093F8(&qword_1005AE9B8, &type metadata accessor for Friend);
            v36 = dispatch thunk of static Equatable.== infix(_:_:)();
            v37 = *v51;
            (*v51)(v10, v6);
            if (v36)
            {
              break;
            }

            v34 = (v34 + 1) & v35;
            if (((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v38 = v41;
          v39 = v53;
          v1 = v47;
          sub_1001AC818(v53, v41);
          sub_100002CE0(v38, &qword_1005A9188, &unk_1004D80D0);
          result = v37(v39, v6);
        }

        else
        {
LABEL_14:
          v1 = v47;
          sub_1000247D8(v10, v53);
          result = (*v51)(v10, v6);
        }

        v23 = v43;
        v18 = v44;
      }

      while (v22);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10023CE40(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v41 = &v40 - v5;
  v6 = type metadata accessor for Device();
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v53 = &v40 - v12;
  result = __chkstk_darwin(v11);
  v45 = &v40 - v15;
  v46 = v14;
  v16 = 0;
  v47 = v1;
  v48 = a1;
  v19 = *(a1 + 56);
  v18 = a1 + 56;
  v17 = v19;
  v20 = 1 << *(v18 - 24);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v42 = v14 + 32;
  v43 = v23;
  v51 = (v14 + 8);
  v52 = v14 + 16;
  v44 = v18;
  if ((v21 & v17) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      do
      {
LABEL_9:
        v25 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v27 = v45;
        v26 = v46;
        v28 = *(v46 + 72);
        v29 = *(v48 + 48) + v28 * (v25 | (v16 << 6));
        v49 = *(v46 + 16);
        v50 = v28;
        v49(v45, v29, v6);
        (*(v26 + 32))(v53, v27, v6);
        v30 = *v1;
        if (*(*v1 + 16) && (v31 = *(v30 + 40), sub_1000093F8(&qword_1005AE9C0, &type metadata accessor for Device), v32 = dispatch thunk of Hashable._rawHashValue(seed:)(), v33 = -1 << *(v30 + 32), v34 = v32 & ~v33, ((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) != 0))
        {
          v35 = ~v33;
          while (1)
          {
            v49(v10, *(v30 + 48) + v34 * v50, v6);
            sub_1000093F8(&qword_1005AE9C8, &type metadata accessor for Device);
            v36 = dispatch thunk of static Equatable.== infix(_:_:)();
            v37 = *v51;
            (*v51)(v10, v6);
            if (v36)
            {
              break;
            }

            v34 = (v34 + 1) & v35;
            if (((*(v30 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v38 = v41;
          v39 = v53;
          v1 = v47;
          sub_1001ACDF0(v53, v41);
          sub_100002CE0(v38, &qword_1005AA718, &qword_1004C4370);
          result = v37(v39, v6);
        }

        else
        {
LABEL_14:
          v1 = v47;
          sub_100234D0C(v10, v53);
          result = (*v51)(v10, v6);
        }

        v23 = v43;
        v18 = v44;
      }

      while (v22);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10023D234(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v6 = a1;
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v10 = &v14 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    result = sub_10023D3B4(v10, v8, v6, a2, a3);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_10023C76C(v12, v8, v6, a2, a3);

  if (!v3)
  {
    return v13;
  }

  return result;
}

uint64_t sub_10023D3B4(unint64_t *a1, uint64_t a2, void *a3, unsigned int *a4, unsigned int *a5)
{
  v60[0] = a2;
  v61 = a1;
  v80 = type metadata accessor for HandleType();
  v8 = *(v80 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v80);
  v79 = v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v78 = v60 - v12;
  v77 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v13 = *(*(v77 - 8) + 64);
  v14 = __chkstk_darwin(v77);
  v76 = v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v90 = v60 - v16;
  v91 = type metadata accessor for FriendshipAction();
  v17 = *(v91 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v91);
  v75 = v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v96 = v60 - v21;
  v22 = type metadata accessor for Friend();
  v23 = *(*(v22 - 8) + 64);
  result = __chkstk_darwin(v22);
  v87 = v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = 0;
  v27 = 0;
  v81 = a3;
  v28 = a3;
  v29 = result;
  v30 = v28[8];
  v64 = v28 + 8;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v63 = (v31 + 63) >> 6;
  v73 = v25 + 2;
  v72 = v17 + 16;
  v88 = v25;
  v86 = v25 + 1;
  v71 = *a4;
  v70 = (v8 + 104);
  v69 = (v8 + 8);
  v68 = v17 + 8;
  v66 = *a5;
  v89 = v17;
  v65 = (v17 + 104);
  v74 = result;
  while (v33)
  {
    v85 = (v33 - 1) & v33;
    v34 = __clz(__rbit64(v33)) | (v27 << 6);
    v35 = v96;
LABEL_12:
    v38 = v81;
    v39 = v87;
    v40 = v88[2];
    v40(v87, v81[6] + v88[9] * v34, v29);
    v41 = v38[7];
    v42 = v89[9];
    v67 = v34;
    v43 = v89[2];
    v44 = v35;
    v45 = v91;
    v43(v44, v41 + v42 * v34, v91);
    v46 = v90;
    v40(v90, v39, v29);
    v47 = v77;
    v82 = *(v77 + 48);
    v43((v46 + v82), v96, v45);
    v48 = v76;
    sub_100005F04(v46, v76, &qword_1005AFFE0, &qword_1004D6060);
    v83 = *(v47 + 48);
    v49 = v78;
    Friend.type.getter();
    v84 = v88[1];
    v84(v48, v29);
    v50 = v79;
    v51 = v80;
    (*v70)(v79, v71, v80);
    LOBYTE(v47) = static HandleType.== infix(_:_:)();
    v52 = *v69;
    (*v69)(v50, v51);
    v53 = v51;
    v54 = v91;
    v52(v49, v53);
    v55 = v89[1];
    v55(v48 + v83, v54);
    if (v47)
    {
      (*v65)(v75, v66, v54);
      sub_1000093F8(&qword_1005AFFE8, &type metadata accessor for FriendshipAction);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v94 == v92 && v95 == v93)
      {
        v58 = v91;
        v55(v75, v91);
        sub_100002CE0(v90, &qword_1005AFFE0, &qword_1004D6060);

        v55(v96, v58);
        v29 = v74;
        result = (v84)(v87, v74);
        v33 = v85;
LABEL_18:
        *(v61 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
        if (__OFADD__(v62++, 1))
        {
          __break(1u);
          return sub_10023DBBC(v61, v60[0], v62, v81);
        }
      }

      else
      {
        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v57 = v91;
        v55(v75, v91);
        sub_100002CE0(v90, &qword_1005AFFE0, &qword_1004D6060);

        v55(v96, v57);
        v29 = v74;
        result = (v84)(v87, v74);
        v33 = v85;
        if (v56)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_100002CE0(v90, &qword_1005AFFE0, &qword_1004D6060);
      v55(v96, v54);
      v29 = v74;
      result = (v84)(v87, v74);
      v33 = v85;
    }
  }

  v36 = v27;
  v35 = v96;
  while (1)
  {
    v27 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v27 >= v63)
    {
      return sub_10023DBBC(v61, v60[0], v62, v81);
    }

    v37 = v64[v27];
    ++v36;
    if (v37)
    {
      v85 = (v37 - 1) & v37;
      v34 = __clz(__rbit64(v37)) | (v27 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10023DBBC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = type metadata accessor for FriendshipAction();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  v9 = __chkstk_darwin(v61);
  v60 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = v47 - v11;
  v12 = type metadata accessor for Friend();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = __chkstk_darwin(v12);
  v59 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = v47 - v16;
  if (!a3)
  {
    return _swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10004B564(&qword_1005B0058, &qword_1004D15B0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v47[3] = v56 + 16;
  v48 = a2;
  v58 = v56 + 32;
  v21 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v47[1] = v57 + 32;
  v47[2] = v57 + 16;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v26 = a4[6];
    v27 = v56;
    v55 = *(v56 + 72);
    v28 = v50;
    (*(v56 + 16))(v50, v26 + v55 * v25, v12);
    v29 = a4[7];
    v30 = v57;
    v54 = *(v57 + 72);
    v31 = v29 + v54 * v25;
    v32 = v12;
    v33 = v51;
    v34 = v61;
    (*(v57 + 16))(v51, v31, v61);
    v53 = *(v27 + 32);
    v53(v59, v28, v32);
    v35 = *(v30 + 32);
    v36 = v33;
    v12 = v32;
    v35(v60, v36, v34);
    v37 = *(v18 + 40);
    sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v38 = -1 << *(v18 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v21 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_26:
    *(v21 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v53((*(v18 + 48) + v41 * v55), v59, v32);
    result = (v35)(*(v18 + 56) + v41 * v54, v60, v61);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47[0];
    v19 = v52;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_10023E060(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v61 = type metadata accessor for Location();
  v57 = *(v61 - 8);
  v8 = *(v57 + 64);
  v9 = __chkstk_darwin(v61);
  v60 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v51 = v47 - v11;
  v12 = type metadata accessor for Handle();
  v56 = *(v12 - 8);
  v13 = *(v56 + 64);
  v14 = __chkstk_darwin(v12);
  v59 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v50 = v47 - v16;
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  sub_10004B564(&qword_1005B0008, &qword_1004D1570);
  result = static _DictionaryStorage.allocate(capacity:)();
  v18 = result;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v47[3] = v56 + 16;
  v48 = a2;
  v58 = v56 + 32;
  v21 = result + 64;
  v49 = a1;
  v47[0] = a4;
  v47[1] = v57 + 32;
  v47[2] = v57 + 16;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v52 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v26 = a4[6];
    v27 = v56;
    v55 = *(v56 + 72);
    v28 = v50;
    (*(v56 + 16))(v50, v26 + v55 * v25, v12);
    v29 = a4[7];
    v30 = v57;
    v54 = *(v57 + 72);
    v31 = v29 + v54 * v25;
    v32 = v12;
    v33 = v51;
    v34 = v61;
    (*(v57 + 16))(v51, v31, v61);
    v53 = *(v27 + 32);
    v53(v59, v28, v32);
    v35 = *(v30 + 32);
    v36 = v33;
    v12 = v32;
    v35(v60, v36, v34);
    v37 = *(v18 + 40);
    sub_1000093F8(&qword_1005A91B0, &type metadata accessor for Handle);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v38 = -1 << *(v18 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v21 + 8 * (v39 >> 6))) == 0)
    {
      v42 = 0;
      v43 = (63 - v38) >> 6;
      a2 = v48;
      a1 = v49;
      while (++v40 != v43 || (v42 & 1) == 0)
      {
        v44 = v40 == v43;
        if (v40 == v43)
        {
          v40 = 0;
        }

        v42 |= v44;
        v45 = *(v21 + 8 * v40);
        if (v45 != -1)
        {
          v41 = __clz(__rbit64(~v45)) + (v40 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v41 = __clz(__rbit64((-1 << v39) & ~*(v21 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    a2 = v48;
    a1 = v49;
LABEL_26:
    *(v21 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
    v53((*(v18 + 48) + v41 * v55), v59, v32);
    result = (v35)(*(v18 + 56) + v41 * v54, v60, v61);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v47[0];
    v19 = v52;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v52 = (v24 - 1) & v24;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_10023E504(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_10023E65C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10023E7B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v39 = *(v41 - 8);
  v8 = *(v39 + 64);
  v9 = __chkstk_darwin(v41);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = (&v35 - v13);
  v42 = a4;
  v16 = *(a4 + 64);
  v15 = a4 + 64;
  v14 = v16;
  v17 = -1 << *(v15 - 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v14;
  if (!a2)
  {
LABEL_18:
    v26 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v42;
    a1[1] = v15;
    a1[2] = ~v17;
    a1[3] = v26;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v26 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = -1 << *(v15 - 32);
    v37 = a1;
    result = 0;
    v20 = 0;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    v38 = a3;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v26 = v20;
      v27 = v25 | (v20 << 6);
      v28 = v42;
      v29 = *(v42 + 48);
      v30 = type metadata accessor for Friend();
      (*(*(v30 - 8) + 16))(v11, v29 + *(*(v30 - 8) + 72) * v27, v30);
      v31 = *(v28 + 56);
      v32 = type metadata accessor for FriendshipAction();
      (*(*(v32 - 8) + 16))(&v11[*(v41 + 48)], v31 + *(*(v32 - 8) + 72) * v27, v32);
      a1 = v40;
      sub_1000176A8(v11, v40, &qword_1005AFFE0, &qword_1004D6060);
      sub_1000176A8(a1, a2, &qword_1005AFFE0, &qword_1004D6060);
      a3 = v38;
      if (v22 == v38)
      {
        goto LABEL_23;
      }

      a2 += *(v39 + 72);
      result = v22;
      v33 = __OFADD__(v22++, 1);
      v20 = v26;
      if (v33)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = *(v15 + 8 * v24);
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v34 = v20 + 1;
    }

    else
    {
      v34 = v21;
    }

    v26 = v34 - 1;
    a3 = result;
LABEL_23:
    v17 = v36;
    a1 = v37;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_10023EAC0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v42 = a5(0);
  v44 = *(v42 - 8);
  v9 = *(v44 + 64);
  v10 = (__chkstk_darwin)();
  v43 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v41 = &v35 - v13;
  v14 = a4 + 56;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v33 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v14;
    *(a1 + 16) = ~v15;
    *(a1 + 24) = v33;
    *(a1 + 32) = v17;
    return a3;
  }

  if (!a3)
  {
    v33 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(a4 + 32);
    v36 = a1;
    result = 0;
    v18 = 0;
    v19 = (63 - v15) >> 6;
    v37 = v44 + 32;
    v38 = v44 + 16;
    a1 = 1;
    v39 = a4 + 56;
    v40 = a3;
    v20 = v41;
    while (v17)
    {
      v46 = a2;
LABEL_15:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v45 = v18;
      v24 = a4;
      v25 = *(a4 + 48);
      v26 = v43;
      v27 = v44;
      v28 = *(v44 + 72);
      v29 = v42;
      (*(v44 + 16))(v43, v25 + v28 * (v23 | (v18 << 6)), v42);
      v30 = *(v27 + 32);
      v30(v20, v26, v29);
      v31 = v46;
      v30(v46, v20, v29);
      a3 = v40;
      if (a1 == v40)
      {
        v15 = v35;
        a1 = v36;
        a4 = v24;
        v33 = v45;
        v14 = v39;
        goto LABEL_25;
      }

      a2 = &v31[v28];
      result = a1;
      v32 = __OFADD__(a1++, 1);
      a4 = v24;
      v18 = v45;
      v14 = v39;
      if (v32)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v46 = a2;
        v18 = v22;
        goto LABEL_15;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v34 = v18 + 1;
    }

    else
    {
      v34 = v19;
    }

    v33 = v34 - 1;
    a3 = result;
    v15 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10023ED68(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for Handle();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_10023F00C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1002345CC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10023F0A4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100241384();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v8 = *(v4 - 2);
      v7 = *(v4 - 1);
      v9 = *v4;
      v4 += 5;
      v12[0] = v6;
      v12[1] = v5;
      v12[2] = v8;
      v12[3] = v7;
      v12[4] = v9;

      sub_10023471C(v10, v12);

      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_10023F15C(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1000093F8(&qword_1005AECC0, &type metadata accessor for UUID);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_10001CFF8(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10023F2F8(uint64_t a1)
{
  v2 = type metadata accessor for Friend();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1000093F8(&qword_1005AE9B0, &type metadata accessor for Friend);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_1000247D8(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10023F494(uint64_t a1)
{
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1000093F8(&qword_1005A9250, &type metadata accessor for Device);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100234A2C(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10023F630(uint64_t a1)
{
  v2 = type metadata accessor for Device();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1000093F8(&qword_1005AE9C0, &type metadata accessor for Device);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100234D0C(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10023F7CC(uint64_t a1)
{
  v2 = type metadata accessor for ClientID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1000093F8(&qword_1005AE9D0, &type metadata accessor for ClientID);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_10002F5B4(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10023F968(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_1002414A8();
    sub_1000093F8(&qword_1005B05F0, sub_1002414A8);
    result = Set.init(minimumCapacity:)();
    v10 = result;
    if (i)
    {
      break;
    }

    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v7 = *(a1 + 8 * i + 32);
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_100234FEC(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10023FAC8(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1002345CC(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_10023FBE0(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v61 = a1;
  v2 = sub_10004B564(&qword_1005AFFF8, &unk_1004D2ED0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v54 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v59 = &v49 - v6;
  v62 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v60 = *(v62 - 8);
  v7 = *(v60 + 64);
  v8 = __chkstk_darwin(v62);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v53 = &v49 - v10;
  v11 = type metadata accessor for HandleType();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v49 - v17;
  v19 = type metadata accessor for FriendshipAction();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = __chkstk_darwin(v19);
  v50 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v52 = &v49 - v25;
  __chkstk_darwin(v24);
  v27 = &v49 - v26;
  v55 = v20[13];
  v55(&v49 - v26, enum case for FriendshipAction.remove(_:), v19);
  v28 = sub_1000093F8(&qword_1005AFFE8, &type metadata accessor for FriendshipAction);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v64 = v19;
  v56 = v28;
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v67 == v65 && v68 == v66)
  {
    v29 = 1;
  }

  else
  {
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v57 = v20[1];
  v58 = v20 + 1;
  v57(v27, v64);

  if ((v29 & 1) == 0)
  {
    return 1;
  }

  v30 = v63;
  Friend.type.getter();
  v31 = v12[13];
  v31(v16, enum case for HandleType.futureFollower(_:), v11);
  v32 = static HandleType.== infix(_:_:)();
  v33 = v12[1];
  v33(v16, v11);
  v34 = (v33)(v18, v11);
  if (v32)
  {
    __chkstk_darwin(v34);
    *(&v49 - 2) = v30;
    v35 = v59;
    sub_1004501F8(sub_10024135C, (&v49 - 4), v61, v59);
    v36 = v62;
    if ((*(v60 + 48))(v35, 1, v62) == 1)
    {
      v37 = v35;
LABEL_12:
      sub_100002CE0(v37, &qword_1005AFFF8, &unk_1004D2ED0);
      return 0;
    }

    v43 = v53;
    sub_1000176A8(v35, v53, &qword_1005AFFE0, &qword_1004D6060);
    v44 = *(v36 + 48);
    v45 = enum case for FriendshipAction.add(_:);
    v46 = v52;
  }

  else
  {
    Friend.type.getter();
    v31(v16, enum case for HandleType.futureFollowing(_:), v11);
    v38 = static HandleType.== infix(_:_:)();
    v33(v16, v11);
    v39 = (v33)(v18, v11);
    if ((v38 & 1) == 0)
    {
      return 1;
    }

    __chkstk_darwin(v39);
    *(&v49 - 2) = v30;
    v40 = v54;
    sub_1004501F8(sub_100241334, (&v49 - 4), v61, v54);
    v41 = v62;
    if ((*(v60 + 48))(v40, 1, v62) == 1)
    {
      v37 = v40;
      goto LABEL_12;
    }

    v43 = v51;
    sub_1000176A8(v40, v51, &qword_1005AFFE0, &qword_1004D6060);
    v47 = *(v41 + 48);
    v45 = enum case for FriendshipAction.add(_:);
    v46 = v50;
  }

  v55(v46, v45, v64);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v67 == v65 && v68 == v66)
  {
    v57(v46, v64);
    sub_100002CE0(v43, &qword_1005AFFE0, &qword_1004D6060);
  }

  else
  {
    v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v57(v46, v64);
    sub_100002CE0(v43, &qword_1005AFFE0, &qword_1004D6060);

    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10024031C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v36 = a2;
  v51 = a4;
  v37 = a1;
  v50 = type metadata accessor for FriendshipAction();
  v5 = *(v50 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v50);
  v48 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Friend();
  v8 = *(*(v47 - 8) + 64);
  result = __chkstk_darwin(v47);
  v45 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v52 = a3;
  v13 = *(a3 + 64);
  v38 = 0;
  v39 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v43 = v5 + 16;
  v44 = v10 + 16;
  v49 = v5;
  v46 = v10;
  v41 = v10 + 8;
  v42 = v5 + 8;
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v54 = (v16 - 1) & v16;
LABEL_11:
    v21 = v18 | (v12 << 6);
    v22 = v52;
    v23 = v45;
    v24 = v46;
    v25 = v47;
    (*(v46 + 16))(v45, v52[6] + *(v46 + 72) * v21, v47);
    v26 = v22[7];
    v28 = v48;
    v27 = v49;
    v29 = *(v49 + 72);
    v40 = v21;
    v30 = v26 + v29 * v21;
    v31 = v50;
    (*(v49 + 16))(v48, v30, v50);
    v32 = *v51;

    v53 = sub_10023FBE0(v33, v23);

    (*(v27 + 8))(v28, v31);
    result = (*(v24 + 8))(v23, v25);
    v16 = v54;
    if (v53)
    {
      *(v37 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v38++, 1))
      {
        __break(1u);
        return sub_10023DBBC(v37, v36, v38, v52);
      }
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      return sub_10023DBBC(v37, v36, v38, v52);
    }

    v20 = *(v39 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v54 = (v20 - 1) & v20;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10024063C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  v12 = swift_retain_n();
  if (v9 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_10023C898(v15, v10, a1, a2, a3);

      return v13;
    }
  }

  __chkstk_darwin(v12);
  bzero(&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0), v11);

  v13 = sub_10024031C((&v16 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0)), v10, a1, a3);

  if (v4)
  {
    swift_willThrow();
  }

  return v13;
}

uint64_t sub_100240804(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v73 = a4;
  v64[0] = a2;
  v65 = a1;
  v72 = type metadata accessor for Handle();
  v5 = *(v72 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v72);
  v71 = v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for HandleType();
  v8 = *(v84 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v84);
  v83 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v82 = v64 - v12;
  v94 = sub_10004B564(&qword_1005AFFE0, &qword_1004D6060);
  v13 = *(*(v94 - 8) + 64);
  v14 = __chkstk_darwin(v94);
  v93 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v99 = v64 - v16;
  v17 = type metadata accessor for FriendshipAction();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v90 = v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v97 = v64 - v22;
  v104 = type metadata accessor for Friend();
  v23 = *(*(v104 - 8) + 64);
  result = __chkstk_darwin(v104);
  v27 = v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = 0;
  v28 = 0;
  v85 = a3;
  v29 = *(a3 + 64);
  v68 = a3 + 64;
  v30 = 1 << *(a3 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & v29;
  v67 = (v30 + 63) >> 6;
  v80 = v25 + 2;
  v79 = v18 + 16;
  v95 = v25 + 1;
  v96 = v25;
  v78 = enum case for HandleType.pendingOffer(_:);
  v77 = (v8 + 104);
  v76 = (v8 + 8);
  v91 = v18 + 8;
  v75 = enum case for FriendshipAction.add(_:);
  v98 = v18;
  v74 = (v18 + 104);
  v70 = (v5 + 8);
  v92 = v17;
  v81 = v27;
  while (v32)
  {
    v41 = __clz(__rbit64(v32));
    v89 = (v32 - 1) & v32;
LABEL_13:
    v44 = v41 | (v28 << 6);
    v45 = v85;
    v46 = v96[2];
    v46(v27, v85[6] + v96[9] * v44, v104);
    v47 = v45[7];
    v48 = v98[9];
    v69 = v44;
    v49 = v98[2];
    v50 = v97;
    v49(v97, v47 + v48 * v44, v17);
    v51 = v99;
    v52 = v27;
    v53 = v104;
    v46(v99, v52, v104);
    v54 = v94;
    v87 = *(v94 + 48);
    v49((v51 + v87), v50, v17);
    v55 = v93;
    sub_100005F04(v51, v93, &qword_1005AFFE0, &qword_1004D6060);
    v56 = *(v54 + 48);
    v57 = v82;
    Friend.type.getter();
    v88 = v96[1];
    v88(v55, v53);
    v58 = v83;
    v59 = v84;
    (*v77)(v83, v78, v84);
    LOBYTE(v54) = static HandleType.== infix(_:_:)();
    v60 = *v76;
    (*v76)(v58, v59);
    v60(v57, v59);
    v61 = v98[1];
    v62 = v55 + v56;
    v17 = v92;
    v61(v62);
    if ((v54 & 1) == 0)
    {
LABEL_17:
      sub_100002CE0(v99, &qword_1005AFFE0, &qword_1004D6060);
      (v61)(v97, v17);
      v27 = v81;
      result = (v88)(v81, v104);
      v32 = v89;
      goto LABEL_18;
    }

    (*v74)(v90, v75, v17);
    sub_1000093F8(&qword_1005AFFE8, &type metadata accessor for FriendshipAction);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v102 == v100 && v103 == v101)
    {
      (v61)(v90, v17);
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();
      (v61)(v90, v17);

      if ((v33 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v34 = v99;
    v35 = v93;
    sub_100005F04(v99, v93, &qword_1005AFFE0, &qword_1004D6060);
    v87 = *(v94 + 48);
    v36 = v71;
    Friend.handle.getter();
    v37 = v104;
    v38 = v88;
    v88(v35, v104);
    v86 = sub_1002603C4(v36, v73);
    (*v70)(v36, v72);
    sub_100002CE0(v34, &qword_1005AFFE0, &qword_1004D6060);
    v39 = v35 + v87;
    v40 = v92;
    (v61)(v39, v92);
    v17 = v40;
    (v61)(v97, v40);
    v27 = v81;
    result = v38(v81, v37);
    v32 = v89;
    if (!v86)
    {
LABEL_18:
      *(v65 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
      if (__OFADD__(v66++, 1))
      {
        __break(1u);
        return sub_10023DBBC(v65, v64[0], v66, v85);
      }
    }
  }

  v42 = v28;
  while (1)
  {
    v28 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v28 >= v67)
    {
      return sub_10023DBBC(v65, v64[0], v66, v85);
    }

    v43 = *(v68 + 8 * v28);
    ++v42;
    if (v43)
    {
      v41 = __clz(__rbit64(v43));
      v89 = (v43 - 1) & v43;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1002410F8(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_10023C7FC(v12, v7, a1, a2);

      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  __chkstk_darwin(v9);
  bzero(&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_100240804((&v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_1002412D8(uint64_t a1)
{
  v2 = type metadata accessor for FriendInfoOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100241384()
{
  result = qword_1005B05C0;
  if (!qword_1005B05C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B05C0);
  }

  return result;
}

uint64_t sub_1002413D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100241440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002414A8()
{
  result = qword_1005B33E0;
  if (!qword_1005B33E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005B33E0);
  }

  return result;
}

uint64_t sub_100241560(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for HandleType();
  v126 = *(v4 - 8);
  v5 = *(v126 + 64);
  v6 = __chkstk_darwin(v4);
  v122 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = (&v118 - v8);
  v10 = type metadata accessor for DarwinNotifications();
  v128 = *(v10 - 8);
  v129 = v10;
  v11 = *(v128 + 64);
  __chkstk_darwin(v10);
  v127 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for Friend();
  v13 = *(v125 - 8);
  isa = v13[8].isa;
  v15 = __chkstk_darwin(v125);
  v123 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v124 = &v118 - v17;
  v138 = sub_10004B564(&qword_1005B0650, &qword_1004D1F80);
  v18 = *(v138 - 8);
  v19 = v18[8].isa;
  __chkstk_darwin(v138);
  v137 = &v118 - v20;
  v136 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v140 = *(v136 - 8);
  v21 = v140[8].isa;
  __chkstk_darwin(v136);
  v135 = &v118 - v22;
  v130 = type metadata accessor for DataManager.State(0);
  v23 = *(*(v130 - 8) + 64);
  v24 = __chkstk_darwin(v130);
  v131 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v28 = &v118 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v118 - v30;
  __chkstk_darwin(v29);
  v33 = &v118 - v32;
  v34 = OBJC_IVAR____TtC13findmylocated11DataManager_state;
  swift_beginAccess();
  sub_1002434C4(v2 + v34, v33);
  v141 = a1;
  LOBYTE(a1) = sub_100207E2C(v33, a1);
  v139 = v33;
  result = sub_100243528(v33);
  if ((a1 & 1) == 0)
  {
    v36 = static SystemInfo.isInternalBuild.getter();
    v121 = v4;
    v120 = v9;
    v119 = v13;
    if (v36)
    {
      if (qword_1005A80B8 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000A6F0(v37, qword_1005DFF18);
      sub_1002434C4(v141, v31);

      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v134 = v38;
        v41 = v40;
        v143[0] = swift_slowAlloc();
        *v41 = 141558787;
        *(v41 + 4) = 1752392040;
        *(v41 + 12) = 2081;
        v42 = v139;
        v43 = sub_1002434C4(v2 + v34, v139);
        LODWORD(v133) = v39;
        v44 = sub_1001DA250(v43);
        v46 = v45;
        sub_100243528(v42);
        v47 = sub_10000D01C(v44, v46, v143);

        *(v41 + 14) = v47;
        *(v41 + 22) = 2160;
        *(v41 + 24) = 1752392040;
        *(v41 + 32) = 2081;
        v49 = sub_1001DA250(v48);
        v51 = v50;
        sub_100243528(v31);
        v52 = sub_10000D01C(v49, v51, v143);

        *(v41 + 34) = v52;
        v53 = v134;
        _os_log_impl(&_mh_execute_header, v134, v133, "State: %{private,mask.hash}s -> %{private,mask.hash}s", v41, 0x2Au);
        swift_arrayDestroy();
      }

      else
      {

        sub_100243528(v31);
      }

      v54 = v18;
    }

    else
    {
      v54 = v18;
      if (qword_1005A80B8 != -1)
      {
        swift_once();
      }

      v55 = type metadata accessor for Logger();
      sub_10000A6F0(v55, qword_1005DFF18);
      sub_1002434C4(v141, v28);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        LODWORD(v133) = v57;
        v59 = v58;
        v143[0] = swift_slowAlloc();
        v134 = v18;
        *v59 = 136446466;
        v60 = v139;
        v61 = sub_1002434C4(v2 + v34, v139);
        v62 = v56;
        v63 = sub_1001DA804(v61);
        v65 = v64;
        sub_100243528(v60);
        v66 = sub_10000D01C(v63, v65, v143);

        *(v59 + 4) = v66;
        *(v59 + 12) = 2082;
        v68 = sub_1001DA804(v67);
        v70 = v69;
        sub_100243528(v28);
        v71 = sub_10000D01C(v68, v70, v143);

        *(v59 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v62, v133, "State: %{public}s -> %{public}s", v59, 0x16u);
        swift_arrayDestroy();
        v54 = v134;
      }

      else
      {

        sub_100243528(v28);
      }
    }

    swift_beginAccess();
    sub_100243584(v141, v2 + v34);
    swift_endAccess();
    v72 = OBJC_IVAR____TtC13findmylocated11DataManager_stateContinuations;
    swift_beginAccess();
    v73 = *(*(v2 + v72) + 16);
    if (v73)
    {
      if (qword_1005A80B8 != -1)
      {
        swift_once();
      }

      v74 = type metadata accessor for Logger();
      sub_10000A6F0(v74, qword_1005DFF18);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 134217984;
        *(v77 + 4) = v73;
        _os_log_impl(&_mh_execute_header, v75, v76, "Publishing State change event to %ld subscribers", v77, 0xCu);
      }
    }

    v78 = *(v2 + v72);
    v79 = (v78 + 64);
    v80 = 1 << *(v78 + 32);
    v81 = -1;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    v82 = v81 & *(v78 + 64);
    v83 = (v80 + 63) >> 6;
    v84 = v54 + 1;
    v132 = v140 + 1;
    v133 = v140 + 2;
    v134 = v78;

    v85 = 0;
    v86 = v137;
    if (v82)
    {
      while (1)
      {
        v87 = v85;
LABEL_28:
        v88 = __clz(__rbit64(v82));
        v82 &= v82 - 1;
        v89 = v135;
        v73 = v140;
        v72 = v136;
        (v140[2].isa)(v135, v134[7].isa + v140[9].isa * (v88 | (v87 << 6)), v136);
        sub_1002434C4(v141, v139);
        AsyncStream.Continuation.yield(_:)();
        (v84->isa)(v86, v138);
        (v73[1].isa)(v89, v72);
        if (!v82)
        {
          goto LABEL_24;
        }
      }
    }

    while (1)
    {
LABEL_24:
      v87 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        __break(1u);
        goto LABEL_48;
      }

      if (v87 >= v83)
      {
        break;
      }

      v82 = *(v79 + v87);
      ++v85;
      if (v82)
      {
        v85 = v87;
        goto LABEL_28;
      }
    }

    v90 = v131;
    sub_1002434C4(v141, v131);
    result = swift_getEnumCaseMultiPayload();
    if (result > 2)
    {
      if ((result - 3) < 3)
      {
        return result;
      }

      if (result == 6)
      {
        v91 = &enum case for DarwinNotifications.initialized(_:);
      }

      else
      {
        v91 = &enum case for DarwinNotifications.devicesChanged(_:);
      }

      goto LABEL_41;
    }

    if ((result - 1) >= 2)
    {
      v95 = v128;
      v94 = v129;
      v96 = v127;
      (*(v128 + 104))(v127, enum case for DarwinNotifications.meDeviceChanged(_:), v129);
      v97 = DarwinNotifications.rawValue.getter();
      v99 = v98;
      (*(v95 + 8))(v96, v94);
      sub_1002435E8(v97, v99);

      return sub_100192D30(v90);
    }

    v73 = v119;
    v79 = v119[4].isa;
    v72 = v124;
    v92 = v90;
    v82 = v125;
    v79(v124, v92, v125);
    v84 = v120;
    Friend.type.getter();
    v85 = v126;
    v86 = v121;
    v93 = (*(v126 + 88))(v84, v121);
    if (v93 == enum case for HandleType.follower(_:))
    {
      (v73[1].isa)(v72, v82);
      v91 = &enum case for DarwinNotifications.followersChanged(_:);
LABEL_41:
      v101 = v128;
      v100 = v129;
      v102 = v127;
      (*(v128 + 104))(v127, *v91, v129);
      v103 = DarwinNotifications.rawValue.getter();
      v105 = v104;
      (*(v101 + 8))(v102, v100);
      sub_1002435E8(v103, v105);
    }

    if (v93 == enum case for HandleType.following(_:))
    {
      (v73[1].isa)(v72, v82);
      v91 = &enum case for DarwinNotifications.followingsChanged(_:);
      goto LABEL_41;
    }

    if (v93 == enum case for HandleType.futureFollower(_:) || v93 == enum case for HandleType.futureFollowing(_:) || v93 == enum case for HandleType.pendingOffer(_:))
    {
      return (v73[1].isa)(v72, v82);
    }

LABEL_48:
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v106 = type metadata accessor for Logger();
    sub_10000A6F0(v106, qword_1005DFF18);
    v107 = v123;
    v79(v123, v72, v82);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v142 = v141;
      *v110 = 136446466;
      *(v110 + 4) = sub_10000D01C(0x7328657461647075, 0xEE00293A65746174, &v142);
      *(v110 + 12) = 2080;
      v140 = v108;
      v111 = v122;
      LODWORD(v139) = v109;
      Friend.type.getter();
      sub_100243960(&qword_1005A9198, &type metadata accessor for HandleType);
      v138 = dispatch thunk of CustomStringConvertible.description.getter();
      v112 = v82;
      v114 = v113;
      v115 = *(v85 + 8);
      v115(v111, v86);
      (v73[1].isa)(v107, v112);
      v116 = sub_10000D01C(v138, v114, &v142);

      *(v110 + 14) = v116;
      v117 = v140;
      _os_log_impl(&_mh_execute_header, v140, v139, "%{public}s Unexpected friend.type %s!", v110, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (v73[1].isa)(v107, v82);
      v115 = *(v85 + 8);
    }

    return (v115)(v84, v86);
  }

  return result;
}

uint64_t sub_100242458(uint64_t a1)
{
  v39 = a1;
  v38 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v35 = *(v38 - 8);
  v1 = *(v35 + 64);
  __chkstk_darwin(v38);
  v3 = &v27 - v2;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v27 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  __chkstk_darwin(v11);
  v13 = &v27 - v12;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v36 = v13;
    UUID.init()();
    v30 = v3;
    v31 = *(v9 + 16);
    v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v27, v13, v8);
    v16 = *(v9 + 80);
    v34 = v9;
    v37 = v7;
    v32 = v16 | 7;
    v17 = swift_allocObject();
    v18 = v35;
    v28 = v8;
    v29 = v1;
    *(v17 + 16) = v15;
    v33 = *(v9 + 32);
    v19 = v27;
    v33(v17 + ((v16 + 24) & ~v16), v27, v8);

    v20 = v38;
    AsyncStream.Continuation.onTermination.setter();
    v21 = type metadata accessor for TaskPriority();
    (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
    v22 = v30;
    (*(v18 + 16))(v30, v39, v20);
    v23 = v28;
    v31(v19, v36, v28);
    v24 = (*(v18 + 80) + 40) & ~*(v18 + 80);
    v25 = (v29 + v16 + v24) & ~v16;
    v26 = swift_allocObject();
    *(v26 + 2) = 0;
    *(v26 + 3) = 0;
    *(v26 + 4) = v15;
    (*(v18 + 32))(&v26[v24], v22, v38);
    v33(&v26[v25], v19, v23);

    sub_1001D7F30(0, 0, v37, &unk_1004D1F90, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_10024285C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v16 - v10;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v13 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = a2;
  (*(v6 + 32))(&v14[v13], &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);

  sub_1001D7F30(0, 0, v11, &unk_1004D1FA0, v14);
}

uint64_t sub_100242A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100242A5C, a4, 0);
}

uint64_t sub_100242A5C()
{
  v1 = v0[2];
  sub_100242ABC(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100242ABC(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005AC670, &qword_1004C6F18);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v29 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFF18);
  v28 = *(v7 + 16);
  v28(v12, a1, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = v5;
    v17 = v16;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v17 = 136446210;
    sub_100243960(&qword_1005A92C0, &type metadata accessor for UUID);
    v18 = dispatch thunk of CustomStringConvertible.description.getter();
    v26 = a1;
    v20 = v19;
    (*(v7 + 8))(v12, v6);
    v21 = sub_10000D01C(v18, v20, &v30);
    a1 = v26;

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v14, v15, "Removing stateContinuation for %{public}s", v17, 0xCu);
    sub_100004984(v25);

    v5 = v27;
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  v22 = v29;
  v28(v29, a1, v6);
  v23 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  (*(*(v23 - 8) + 56))(v5, 1, 1, v23);
  swift_beginAccess();
  sub_100146188(v5, v22);
  return swift_endAccess();
}

uint64_t sub_100242E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v8 = sub_10004B564(&qword_1005B0650, &qword_1004D1F80);
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v10 = *(v9 + 64) + 15;
  v6[10] = swift_task_alloc();
  v11 = *(*(type metadata accessor for DataManager.State(0) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_100242F68, a4, 0);
}

uint64_t sub_100242F68()
{
  v1 = v0[12];
  v2 = v0[5];
  sub_1002430EC(v0[6], v0[7]);
  v3 = OBJC_IVAR____TtC13findmylocated11DataManager_state;
  swift_beginAccess();
  sub_1002434C4(v2 + v3, v1);

  return _swift_task_switch(sub_10024300C, 0, 0);
}

uint64_t sub_10024300C()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[6];
  sub_1002434C4(v1, v0[11]);
  sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v2, v4);
  sub_100243528(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002430EC(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_10004B564(&qword_1005AC670, &qword_1004C6F18);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v32 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v27 - v12;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFF18);
  v31 = *(v8 + 16);
  v31(v13, a2, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v6;
    v18 = v17;
    v28 = swift_slowAlloc();
    v34 = v28;
    *v18 = 136446210;
    sub_100243960(&qword_1005A92C0, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = a2;
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_10000D01C(v19, v21, &v34);
    a2 = v29;

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Storing stateContinuation for %{public}s", v18, 0xCu);
    sub_100004984(v28);

    v6 = v30;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v23 = v32;
  v31(v32, a2, v7);
  v24 = sub_10004B564(&qword_1005AC678, &qword_1004C6F20);
  v25 = *(v24 - 8);
  (*(v25 + 16))(v6, v33, v24);
  (*(v25 + 56))(v6, 0, 1, v24);
  swift_beginAccess();
  sub_100146188(v6, v23);
  return swift_endAccess();
}

uint64_t sub_1002434C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100243528(uint64_t a1)
{
  v2 = type metadata accessor for DataManager.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100243584(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_1002435E8(uint64_t a1, unint64_t a2)
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFF18);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10000D01C(a1, a2, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "Posting notification: %s", v7, 0xCu);
    sub_100004984(v8);
  }

  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  v10 = String._bridgeToObjectiveC()();
  CFNotificationCenterPostNotification(v9, v10, 0, 0, 1u);
}

uint64_t sub_100243780(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_10024285C(a1, v4, v5);
}

uint64_t sub_1002437F4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_10004B564(&qword_1005AC678, &qword_1004C6F20) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for UUID() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000368C;

  return sub_100242E5C(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100243960(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1002439A8(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100003690;

  return sub_100242A3C(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100243AA0()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100243B58, v0, 0);
}

uint64_t sub_100243B58()
{
  v17 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E59C0, &v16);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];
  type metadata accessor for XPCActivity();
  static DispatchQoS.utility.getter();
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v7;
  v11 = async function pointer to XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)[1];

  v12 = swift_task_alloc();
  v0[5] = v12;
  *v12 = v0;
  v12[1] = sub_100243DC8;
  v13 = v0[4];
  v14 = v0[2];

  return XPCActivity.__allocating_init(name:qos:criteriaBlock:handler:)(0xD000000000000030, 0x80000001004E5980, v13, &unk_1004D1FB8, v14, &unk_1004D1FC8, v10);
}

uint64_t sub_100243DC8(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_100243EE0, v3, 0);
}

uint64_t sub_100243EE0()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *(v2 + 112);
  *(v2 + 112) = v0[6];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100243F58(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_1002440B0(a1);
}

uint64_t sub_100244004(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_100243F58(a1);
}

uint64_t sub_1002440B0(uint64_t a1)
{
  v2[292] = v1;
  v2[291] = a1;
  v3 = type metadata accessor for XPCActivity.Criteria.Options();
  v2[293] = v3;
  v4 = *(v3 - 8);
  v2[294] = v4;
  v5 = *(v4 + 64) + 15;
  v2[295] = swift_task_alloc();
  v6 = type metadata accessor for XPCActivity.Priority();
  v2[296] = v6;
  v7 = *(v6 - 8);
  v2[297] = v7;
  v8 = *(v7 + 64) + 15;
  v2[298] = swift_task_alloc();

  return _swift_task_switch(sub_1002441D0, v1, 0);
}

uint64_t sub_1002441D0()
{
  v10 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[299] = sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E5A20, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  v0[300] = v6;
  *v6 = v0;
  v6[1] = sub_100244388;
  v7 = v0[292];

  return sub_100245BB8((v0 + 62));
}

uint64_t sub_100244388()
{
  v1 = *v0;
  v2 = *(*v0 + 2400);
  v3 = *(*v0 + 2336);
  v5 = *v0;

  memcpy((v1 + 976), (v1 + 496), 0x1E0uLL);

  return _swift_task_switch(sub_1002444A8, v3, 0);
}

uint64_t sub_1002444A8()
{
  v36 = v0;
  memcpy((v0 + 16), (v0 + 496), 0x1E0uLL);
  if (sub_100033B90(v0 + 16) == 1)
  {
    goto LABEL_2;
  }

  v12 = *(v0 + 384);
  *(v0 + 2192) = *(v0 + 368);
  *(v0 + 2208) = v12;
  *(v0 + 2224) = *(v0 + 400);
  v13 = *(v0 + 320);
  *(v0 + 2128) = *(v0 + 304);
  *(v0 + 2144) = v13;
  v14 = *(v0 + 352);
  *(v0 + 2160) = *(v0 + 336);
  *(v0 + 2176) = v14;
  v15 = *(v0 + 288);
  *(v0 + 2096) = *(v0 + 272);
  *(v0 + 2112) = v15;
  if (sub_10005A3B0(v0 + 2096) != 1)
  {
    goto LABEL_7;
  }

  memcpy((v0 + 1456), (v0 + 976), 0x1E0uLL);
  v16 = *(v0 + 1184);
  *(v0 + 2032) = *(v0 + 1168);
  *(v0 + 2048) = v16;
  v17 = *(v0 + 1216);
  *(v0 + 2064) = *(v0 + 1200);
  *(v0 + 2080) = v17;
  v18 = *(v0 + 1120);
  *(v0 + 1968) = *(v0 + 1104);
  *(v0 + 1984) = v18;
  v19 = *(v0 + 1152);
  *(v0 + 2000) = *(v0 + 1136);
  *(v0 + 2016) = v19;
  v20 = *(v0 + 1088);
  *(v0 + 1936) = *(v0 + 1072);
  *(v0 + 1952) = v20;
  if (sub_10002D650(v0 + 1936) == 1)
  {
    sub_100245124(v0 + 1856, v0 + 2240);
    sub_100002CE0(v0 + 496, &qword_1005A90D8, &unk_1004C6AB0);
    if (!*(v0 + 1896))
    {
LABEL_2:
      v1 = *(v0 + 2384);
      v2 = *(v0 + 2376);
      v3 = *(v0 + 2368);
      v4 = *(v0 + 2360);
      v5 = *(v0 + 2352);
      v6 = *(v0 + 2344);
      v7 = *(v0 + 2328);
      sub_1004BA244();
      (*(v2 + 104))(v1, enum case for XPCActivity.Priority.utility(_:), v3);
      sub_10004B564(&qword_1005B0658, &qword_1004D1FD8);
      v8 = *(v5 + 72);
      v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1004C2310;
      static XPCActivity.Criteria.Options.requiresClassC.getter();
      static XPCActivity.Criteria.Options.requiresNetwork.getter();
      *(v0 + 2320) = v10;
      sub_100245078(&qword_1005B0660, &type metadata accessor for XPCActivity.Criteria.Options);
      sub_10004B564(&qword_1005B0668, &qword_1004D1FE0);
      sub_1002450C0();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      XPCActivity.Criteria.init(priority:repeating:delay:gracePeriod:interval:options:)();
      v11 = 0;
      goto LABEL_11;
    }

    v21 = &qword_1005AD7A8;
    v22 = &qword_1004CA280;
    v23 = v0 + 1856;
  }

  else
  {
LABEL_7:
    v21 = &qword_1005A90D8;
    v22 = &unk_1004C6AB0;
    v23 = v0 + 496;
  }

  sub_100002CE0(v23, v21, v22);
  v24 = *(v0 + 2392);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v35 = v28;
    *v27 = 136446210;
    *(v27 + 4) = sub_10000D01C(0xD000000000000018, 0x80000001004E5A20, &v35);
    _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s not eligible, since we have non-nil serverSettings already.", v27, 0xCu);
    sub_100004984(v28);
  }

  v11 = 1;
LABEL_11:
  v29 = *(v0 + 2384);
  v30 = *(v0 + 2360);
  v31 = *(v0 + 2328);
  v32 = type metadata accessor for XPCActivity.Criteria();
  (*(*(v32 - 8) + 56))(v31, v11, 1, v32);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1002448B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v4 = type metadata accessor for XPCActivity.State();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_10024497C, 0, 0);
}

uint64_t sub_10024497C()
{
  v24 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  (*(v2 + 16))(v1, v0[6], v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == enum case for XPCActivity.State.run(_:))
  {
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000A6F0(v5, qword_1005DFF18);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_10000D01C(0xD000000000000024, 0x80000001004E59C0, &v23);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s receive state .run", v8, 0xCu);
      sub_100004984(v9);
    }

    v10 = v0[7];
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[11] = Strong;
    if (Strong)
    {
      v12 = swift_task_alloc();
      v0[12] = v12;
      *v12 = v0;
      v12[1] = sub_100244D0C;

      return sub_1001E31FC();
    }

    v21 = v0[5];
    type metadata accessor for XPCActivity();
    sub_100245078(&qword_1005B0330, &type metadata accessor for XPCActivity);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v22;
    v18 = sub_100244E98;
    goto LABEL_16;
  }

  if (v4 == enum case for XPCActivity.State.defer(_:))
  {
    v14 = v0[5];
    type metadata accessor for XPCActivity();
    sub_100245078(&qword_1005B0330, &type metadata accessor for XPCActivity);
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    v18 = sub_100244F60;
LABEL_16:

    return _swift_task_switch(v18, v15, v17);
  }

  (*(v0[9] + 8))(v0[10], v0[8]);
  v19 = v0[10];

  v20 = v0[1];

  return v20();
}

uint64_t sub_100244D0C()
{
  v1 = *v0;
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);
  v8 = *v0;

  v4 = *(v1 + 40);
  type metadata accessor for XPCActivity();
  sub_100245078(&qword_1005B0330, &type metadata accessor for XPCActivity);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100244E98, v6, v5);
}

uint64_t sub_100244E98()
{
  v1 = *(v0 + 40);
  dispatch thunk of XPCActivity.done()();

  return _swift_task_switch(sub_100244F00, 0, 0);
}

uint64_t sub_100244F00()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100244F60()
{
  v1 = *(v0 + 40);
  dispatch thunk of XPCActivity.defer()();

  return _swift_task_switch(sub_100245194, 0, 0);
}

uint64_t sub_100244FC8(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000368C;

  return sub_1002448B8(a1, a2, v7);
}

uint64_t sub_100245078(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002450C0()
{
  result = qword_1005B0670;
  if (!qword_1005B0670)
  {
    sub_10004B610(&qword_1005B0668, &qword_1004D1FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0670);
  }

  return result;
}

uint64_t sub_100245124(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AD7A8, &qword_1004CA280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100245198()
{
  *(v1 + 24) = v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v1;
  v3[1] = sub_10024522C;

  return daemon.getter();
}

uint64_t sub_10024522C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009440(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009440(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_100245408;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100245408(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = v4[3];

    return _swift_task_switch(sub_100245820, v7, 0);
  }

  else
  {
    v8 = v4[5];

    v9 = swift_task_alloc();
    v4[9] = v9;
    *v9 = v6;
    v9[1] = sub_100245590;

    return sub_1003063B8();
  }
}

uint64_t sub_100245590(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 24);
  v8 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v6 = sub_1002459EC;
  }

  else
  {
    v6 = sub_1002456BC;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002456BC()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[10];
  v7 = v0[7];
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager load LocalStorage All devices count:%ld", v8, 0xCu);
  }

  else
  {
    v9 = v0[10];
  }

  v10 = v0[10];
  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100245820()
{
  v14 = v0;
  v1 = v0[8];
  v2 = v0[5];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager read all devices failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_1002459EC()
{
  v14 = v0;
  v1 = v0[11];
  v2 = v0[7];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager read all devices failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  v11 = v0[1];

  return v11(_swiftEmptyArrayStorage);
}

uint64_t sub_100245BB8(uint64_t a1)
{
  v2[184] = v1;
  v2[183] = a1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[185] = v4;
  *v4 = v2;
  v4[1] = sub_100245C50;

  return daemon.getter();
}

uint64_t sub_100245C50(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1480);
  v12 = *v1;
  *(v3 + 1488) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1496) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009440(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009440(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_100245E2C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100245E2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1496);
  v6 = *v2;
  v4[188] = a1;
  v4[189] = v1;

  if (v1)
  {
    v7 = v4[184];

    return _swift_task_switch(sub_100245FBC, v7, 0);
  }

  else
  {
    v8 = v4[186];

    v9 = swift_task_alloc();
    v4[190] = v9;
    *v9 = v6;
    v9[1] = sub_100035F5C;

    return sub_1003067FC((v4 + 62));
  }
}

uint64_t sub_100245FBC()
{
  v14 = v0;
  v1 = *(v0 + 1488);

  v2 = *(v0 + 1512);
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v0 + 1456) = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager read serverSettings fromLocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  sub_1002477BC((v0 + 16));
  memcpy(*(v0 + 1464), (v0 + 16), 0x1E0uLL);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1002461AC()
{
  v14 = v0;
  v1 = *(v0 + 1504);

  v2 = *(v0 + 1528);
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    *(v0 + 1456) = v2;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager read serverSettings fromLocalStorage failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  sub_1002477BC((v0 + 16));
  memcpy(*(v0 + 1464), (v0 + 16), 0x1E0uLL);
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10024639C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_100246430;

  return daemon.getter();
}

uint64_t sub_100246430(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009440(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009440(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10024660C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10024660C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_100246A24, v7, 0);
  }

  else
  {
    v8 = v4[6];

    v9 = swift_task_alloc();
    v4[10] = v9;
    *v9 = v6;
    v9[1] = sub_10024679C;
    v10 = v4[3];

    return sub_100306670(v10);
  }
}

uint64_t sub_10024679C()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_100246BF8;
  }

  else
  {
    v4 = sub_1002468C4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002468C4()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF18);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  v7 = v0[3];
  if (v5)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v7 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "DataManager write AllDevices count:%ld into LocalStorage", v8, 0xCu);
  }

  else
  {
    v9 = v0[3];
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_100246A24()
{
  v14 = v0;
  v1 = v0[9];
  v2 = v0[6];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager writeAllDevices failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100246BF8()
{
  v14 = v0;
  v1 = v0[11];
  v2 = v0[8];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager writeAllDevices failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100246DCC(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[5] = v4;
  *v4 = v2;
  v4[1] = sub_100246E60;

  return daemon.getter();
}

uint64_t sub_100246E60(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009440(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009440(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10024703C;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10024703C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[8] = a1;
  v4[9] = v1;

  if (v1)
  {
    v7 = v4[4];

    return _swift_task_switch(sub_100247414, v7, 0);
  }

  else
  {
    v8 = v4[6];

    v9 = swift_task_alloc();
    v4[10] = v9;
    *v9 = v6;
    v9[1] = sub_1002471CC;
    v10 = v4[3];

    return sub_1003069F0(v10);
  }
}

uint64_t sub_1002471CC()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 32);
  v6 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_1002475E8;
  }

  else
  {
    v4 = sub_1002472F4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002472F4()
{
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 64);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DataManager write server Settings into LocalStorage", v6, 2u);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100247414()
{
  v14 = v0;
  v1 = v0[9];
  v2 = v0[6];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager write serverSettings failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002475E8()
{
  v14 = v0;
  v1 = v0[11];
  v2 = v0[8];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136446210;
    v0[2] = v1;
    swift_errorRetain();
    sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
    v8 = String.init<A>(describing:)();
    v10 = sub_10000D01C(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "DataManager write serverSettings failed with error: %{public}s", v6, 0xCu);
    sub_100004984(v7);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

double sub_1002477BC(_OWORD *a1)
{
  result = 0.0;
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_100247800@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v222 = a1;
  v199 = a2;
  v4 = sub_10004B564(&qword_1005B3360, &unk_1004C6AA0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v214 = v191 - v6;
  v228 = type metadata accessor for Friend();
  v215 = *(v228 - 8);
  v7 = *(v215 + 64);
  __chkstk_darwin(v228);
  v225 = v191 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = type metadata accessor for Handle();
  v226 = *(v230 - 8);
  v9 = *(v226 + 64);
  v10 = __chkstk_darwin(v230);
  v212 = v191 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v192 = v191 - v13;
  v14 = __chkstk_darwin(v12);
  v229 = v191 - v15;
  v16 = __chkstk_darwin(v14);
  v223 = v191 - v17;
  __chkstk_darwin(v16);
  v213 = v191 - v18;
  v227 = type metadata accessor for PersonHandle();
  v200 = *(v227 - 8);
  v19 = *(v200 + 64);
  v20 = __chkstk_darwin(v227);
  v211 = v191 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v210 = v191 - v23;
  __chkstk_darwin(v22);
  v231 = v191 - v24;
  v221 = sub_10004B564(&qword_1005B0678, &qword_1004D2008);
  v25 = *(*(v221 - 8) + 64);
  __chkstk_darwin(v221);
  v224 = v191 - v26;
  v208 = type metadata accessor for Fence.Participant();
  v207 = *(v208 - 8);
  v27 = v207[8];
  v28 = __chkstk_darwin(v208);
  v206 = v191 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v205 = v191 - v31;
  v32 = __chkstk_darwin(v30);
  v220 = v191 - v33;
  __chkstk_darwin(v32);
  v219 = v191 - v34;
  v218 = type metadata accessor for Fence.Variant();
  v216 = *(v218 - 8);
  v35 = *(v216 + 64);
  __chkstk_darwin(v218);
  v217 = (v191 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = type metadata accessor for Fence.Trigger();
  v202 = *(v204 - 8);
  v37 = *(v202 + 8);
  v38 = __chkstk_darwin(v204);
  v197 = v191 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v201 = v191 - v40;
  v41 = type metadata accessor for UUID();
  v42 = *(v41 - 8);
  v43 = *(v42 + 64);
  v44 = __chkstk_darwin(v41);
  v46 = v191 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v48 = v191 - v47;
  v49 = type metadata accessor for Fence.ID();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  __chkstk_darwin(v49);
  v53 = v191 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  Fence.id.getter();
  Fence.ID.uuid.getter();
  v54 = *(v50 + 8);
  v209 = v49;
  v54(v53, v49);
  static UUID.nilUUID.getter();
  v55 = static UUID.== infix(_:_:)();
  v56 = *(v42 + 8);
  v56(v46, v41);
  v56(v48, v41);
  v57 = 0;
  v203 = 0;
  if ((v55 & 1) == 0)
  {
    Fence.id.getter();
    v57 = Fence.ID.uuidString.getter();
    v203 = v58;
    v54(v53, v209);
  }

  v59 = v217;
  v209 = v3;
  Fence.variant.getter();
  v60 = v216;
  v61 = v218;
  v62 = (*(v216 + 88))(v59, v218);
  if (v62 == enum case for Fence.Variant.oneTime(_:) || v62 == enum case for Fence.Variant.recurring(_:))
  {
    (*(v60 + 96))(v59, v61);
    v65 = v202;
    v66 = v201;
    v67 = v204;
    (*(v202 + 4))(v201, v59, v204);
    v68 = v197;
    (*(v65 + 2))(v197, v66, v67);
    v69 = (*(v65 + 11))(v68, v67);
    v63 = v230;
    if (v69 != enum case for Fence.Trigger.arriving(_:))
    {
      v72 = v224;
      if (v69 != enum case for Fence.Trigger.leaving(_:))
      {
        goto LABEL_109;
      }

      (*(v65 + 1))(v66, v67);
      v197 = 0xE400000000000000;
      v196 = 1953069157;
      v70 = v208;
      v71 = v207;
      goto LABEL_12;
    }

    (*(v65 + 1))(v66, v67);
    v197 = 0xE500000000000000;
    v64 = 0x7265746E65;
  }

  else
  {
    v63 = v230;
    if (v62 != enum case for Fence.Variant.scheduled(_:))
    {
      goto LABEL_109;
    }

    (*(v60 + 8))(v59, v61);
    v197 = 0xE900000000000064;
    v64 = 0x656C756465686373;
  }

  v196 = v64;
  v70 = v208;
  v71 = v207;
  v72 = v224;
LABEL_12:
  v73 = v219;
  Fence.createdBy.getter();
  v74 = v220;
  Fence.finder.getter();
  v75 = *(v221 + 48);
  v76 = v71[4];
  v76(v72, v73, v70);
  v76(&v72[v75], v74, v70);
  v77 = v71[11];
  v78 = v77(v72, v70);
  v79 = v78;
  LODWORD(v201) = enum case for Fence.Participant.me(_:);
  v198 = v57;
  if (v78 == enum case for Fence.Participant.me(_:))
  {
    v80 = v77(&v72[v75], v70);
    if (v80 != v79)
    {
      if (v80 != enum case for Fence.Participant.other(_:))
      {
        goto LABEL_109;
      }

      goto LABEL_18;
    }

    goto LABEL_20;
  }

  if (v78 == enum case for Fence.Participant.other(_:))
  {
    v81 = v77(&v72[v75], v70);
    if (v81 == v201)
    {
LABEL_18:
      v194 = 0x744F796669746F4ELL;
      v82 = 0xEC00000073726568;
      v83 = &v227;
      goto LABEL_21;
    }

    if (v81 == v79)
    {
LABEL_20:
      v195 = 0xE800000000000000;
      v82 = 0x654D796669746F4ELL;
      v83 = &v226;
LABEL_21:
      *(v83 - 32) = v82;
      v84 = v71[1];
      v204 = (v71 + 1);
      v193 = v84;
      v84(v72, v70);
      v85 = v222;
      v86 = *(v222 + 16);
      v202 = &_swiftEmptyArrayStorage;
      if (v86)
      {
        v232 = &_swiftEmptyArrayStorage;
        sub_10000E8E0(0, v86, 0);
        v87 = v232;
        v224 = *(v215 + 16);
        v88 = v85 + ((*(v215 + 80) + 32) & ~*(v215 + 80));
        v222 = *(v215 + 72);
        v89 = (v215 + 8);
        v90 = v213;
        do
        {
          v91 = v225;
          v92 = v228;
          (v224)(v225, v88, v228);
          Friend.handle.getter();
          (*v89)(v91, v92);
          v232 = v87;
          v94 = *(v87 + 2);
          v93 = *(v87 + 3);
          if (v94 >= v93 >> 1)
          {
            sub_10000E8E0(v93 > 1, v94 + 1, 1);
            v87 = v232;
          }

          *(v87 + 2) = v94 + 1;
          v63 = v230;
          (*(v226 + 32))(&v87[((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v94], v90, v230);
          v88 += v222;
          --v86;
        }

        while (v86);
        v224 = v87;
        v70 = v208;
        v71 = v207;
      }

      else
      {
        v224 = &_swiftEmptyArrayStorage;
      }

      v95 = Fence.others.getter();
      v96 = v214;
      v222 = *(v95 + 16);
      if (v222)
      {
        v97 = 0;
        v220 = *(v200 + 16);
        v98 = (*(v200 + 80) + 32) & ~*(v200 + 80);
        v191[1] = v95;
        v219 = (v95 + v98);
        v99 = *(v200 + 72);
        v228 = v226 + 16;
        v100 = (v226 + 8);
        v101 = (v226 + 32);
        v217 = (v226 + 56);
        v218 = v99;
        v221 = v200 + 16;
        v215 = v226 + 48;
        v216 = v200 + 8;
        v102 = &_swiftEmptyArrayStorage;
        v103 = v229;
        v213 = (v226 + 32);
        (v220)(v231, v95 + v98, v227);
        while (1)
        {
          v104 = *(v224 + 2);
          if (v104)
          {
            v225 = v102;
            v105 = &v224[(*(v226 + 80) + 32) & ~*(v226 + 80)];
            v106 = *(v226 + 72);
            v107 = *(v226 + 16);
            while (1)
            {
              v107(v103, v105, v63);
              v108 = PersonHandle.id.getter();
              v110 = v109;
              if (v108 == Handle.identifier.getter() && v110 == v111)
              {
                break;
              }

              v112 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v112)
              {
                goto LABEL_42;
              }

              v103 = v229;
              v63 = v230;
              (*v100)(v229, v230);
              v105 += v106;
              if (!--v104)
              {
                v113 = 1;
                v102 = v225;
                v101 = v213;
                v96 = v214;
                goto LABEL_43;
              }
            }

LABEL_42:
            v101 = v213;
            v96 = v214;
            v103 = v229;
            v63 = v230;
            (*v213)(v214, v229, v230);
            v113 = 0;
            v102 = v225;
          }

          else
          {
            v113 = 1;
          }

LABEL_43:
          (*v217)(v96, v113, 1, v63);
          (*v216)(v231, v227);
          if ((*v215)(v96, 1, v63) == 1)
          {
            sub_100002CE0(v96, &qword_1005B3360, &unk_1004C6AA0);
          }

          else
          {
            v114 = *v101;
            (*v101)(v223, v96, v63);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v102 = sub_1001FCA0C(0, *(v102 + 2) + 1, 1, v102);
            }

            v116 = *(v102 + 2);
            v115 = *(v102 + 3);
            if (v116 >= v115 >> 1)
            {
              v102 = sub_1001FCA0C(v115 > 1, v116 + 1, 1, v102);
            }

            *(v102 + 2) = v116 + 1;
            v114(&v102[((*(v226 + 80) + 32) & ~*(v226 + 80)) + *(v226 + 72) * v116], v223, v63);
            v103 = v229;
          }

          if (++v97 == v222)
          {
            break;
          }

          (v220)(v231, &v219[v218 * v97], v227);
        }

        v225 = v102;

        v70 = v208;
        v71 = v207;
      }

      else
      {

        v225 = &_swiftEmptyArrayStorage;
      }

      v117 = v205;
      Fence.findee.getter();
      v118 = enum case for Fence.Participant.other(_:);
      v119 = v71[13];
      v120 = v206;
      v119(v206, enum case for Fence.Participant.other(_:), v70);
      v121 = static Fence.Participant.== infix(_:_:)();
      v122 = v193;
      v193(v120, v70);
      v122(v117, v70);
      LODWORD(v231) = v118;
      if ((v121 & 1) != 0 && *(v225 + 2))
      {
        v123 = v226;
        v124 = v192;
        (*(v226 + 16))(v192, &v225[(*(v123 + 80) + 32) & ~*(v123 + 80)], v63);
        v228 = Handle.serverID.getter();
        v224 = v125;
        (*(v123 + 8))(v124, v63);
      }

      else
      {
        v228 = 0;
        v224 = 0;
      }

      v126 = v205;
      Fence.createdBy.getter();
      v127 = v206;
      v128 = v201;
      v119(v206, v201, v70);
      v129 = static Fence.Participant.== infix(_:_:)();
      v122(v127, v70);
      v122(v126, v70);
      if (v129)
      {
        Fence.findee.getter();
        v119(v127, v128, v70);
        LODWORD(v229) = static Fence.Participant.== infix(_:_:)();
        v122(v127, v70);
        v122(v126, v70);
      }

      else
      {
        LODWORD(v229) = 0;
      }

      Fence.createdBy.getter();
      v119(v127, v231, v70);
      v130 = static Fence.Participant.== infix(_:_:)();
      v122(v127, v70);
      v122(v126, v70);
      if (v130)
      {
        Fence.findee.getter();
        v119(v127, v128, v70);
        v131 = static Fence.Participant.== infix(_:_:)();
        v122(v127, v70);
        v122(v126, v70);
      }

      else
      {
        v131 = 0;
      }

      v232 = &_swiftEmptyArrayStorage;
      if (v229)
      {
        LODWORD(v223) = v131;
        v132 = Fence.others.getter();
        v133 = *(v132 + 16);
        if (v133)
        {
          v231 = *(v200 + 16);
          v134 = *(v200 + 80);
          v229 = v132;
          v135 = v132 + ((v134 + 32) & ~v134);
          v136 = *(v200 + 72);
          v137 = (v200 + 8);
          v138 = &_swiftEmptyArrayStorage;
          do
          {
            v140 = v210;
            v141 = v227;
            (v231)(v210, v135, v227);
            v142 = PersonHandle.email.getter();
            v144 = v143;
            (*v137)(v140, v141);
            if (v144)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v138 = sub_1001FC900(0, *(v138 + 2) + 1, 1, v138);
              }

              v146 = *(v138 + 2);
              v145 = *(v138 + 3);
              if (v146 >= v145 >> 1)
              {
                v138 = sub_1001FC900((v145 > 1), v146 + 1, 1, v138);
              }

              *(v138 + 2) = v146 + 1;
              v139 = &v138[16 * v146];
              *(v139 + 4) = v142;
              *(v139 + 5) = v144;
            }

            v135 += v136;
            --v133;
          }

          while (v133);
        }

        else
        {

          v138 = &_swiftEmptyArrayStorage;
        }

        v232 = v138;

        v147 = Fence.others.getter();
        v148 = *(v147 + 16);
        if (v148)
        {
          v231 = *(v200 + 16);
          v149 = *(v200 + 80);
          v222 = v147;
          v150 = v147 + ((v149 + 32) & ~v149);
          v229 = *(v200 + 72);
          v151 = (v200 + 8);
          v152 = &_swiftEmptyArrayStorage;
          do
          {
            v154 = v211;
            v155 = v227;
            (v231)(v211, v150, v227);
            v156 = PersonHandle.phoneNumber.getter();
            v158 = v157;
            (*v151)(v154, v155);
            if (v158)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v152 = sub_1001FC900(0, *(v152 + 2) + 1, 1, v152);
              }

              v160 = *(v152 + 2);
              v159 = *(v152 + 3);
              v161 = v152;
              if (v160 >= v159 >> 1)
              {
                v161 = sub_1001FC900((v159 > 1), v160 + 1, 1, v152);
              }

              v152 = v161;
              *(v161 + 2) = v160 + 1;
              v153 = &v161[16 * v160];
              *(v153 + 4) = v156;
              *(v153 + 5) = v158;
            }

            v150 += v229;
            --v148;
          }

          while (v148);
        }

        else
        {

          v152 = &_swiftEmptyArrayStorage;
        }

        v162 = *(v138 + 2);

        v202 = v152;
        if (v162)
        {
          if ((v223 & 1) == 0)
          {
            goto LABEL_107;
          }

          goto LABEL_94;
        }

        if (qword_1005A80F0 != -1)
        {
          swift_once();
        }

        v163 = type metadata accessor for Logger();
        sub_10000A6F0(v163, qword_1005DFFA0);
        v164 = Logger.logObject.getter();
        v165 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          *v166 = 0;
          _os_log_impl(&_mh_execute_header, v164, v165, "FenceByMeOnMe: No emails. Adding phone numbers...", v166, 2u);
        }

        LOBYTE(v131) = v223;
        if (!*(v152 + 2))
        {
          v182 = Logger.logObject.getter();
          v183 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v182, v183))
          {
            v184 = swift_slowAlloc();
            *v184 = 0;
            _os_log_impl(&_mh_execute_header, v182, v183, "FenceByMeOnMe: No phone numbers either.", v184, 2u);
          }

          if ((v131 & 1) == 0)
          {
            goto LABEL_107;
          }

LABEL_94:
          v168 = *(v225 + 2);
          if (v168)
          {
            v231 = *(v226 + 16);
            v169 = &v225[(*(v226 + 80) + 32) & ~*(v226 + 80)];
            v170 = *(v226 + 72);
            v171 = (v226 + 8);
            v172 = &_swiftEmptyArrayStorage;
            do
            {
              v174 = v212;
              v175 = v230;
              (v231)(v212, v169, v230);
              v176 = Handle.serverID.getter();
              v178 = v177;
              (*v171)(v174, v175);
              if (v178)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v172 = sub_1001FC900(0, *(v172 + 2) + 1, 1, v172);
                }

                v180 = *(v172 + 2);
                v179 = *(v172 + 3);
                if (v180 >= v179 >> 1)
                {
                  v172 = sub_1001FC900((v179 > 1), v180 + 1, 1, v172);
                }

                *(v172 + 2) = v180 + 1;
                v173 = &v172[16 * v180];
                *(v173 + 4) = v176;
                *(v173 + 5) = v178;
              }

              v169 += v170;
              --v168;
            }

            while (v168);

            goto LABEL_108;
          }

LABEL_107:

          v172 = &_swiftEmptyArrayStorage;
LABEL_108:
          v185 = v232;
          v186 = v199;
          v187 = v203;
          *v199 = v198;
          v186[1] = v187;
          v188 = v224;
          v186[2] = v228;
          v186[3] = v188;
          v189 = v195;
          v186[4] = v194;
          v186[5] = v189;
          v190 = v197;
          v186[6] = v196;
          v186[7] = v190;
          v186[8] = v185;
          v186[9] = v202;
          v186[10] = v172;
          return result;
        }

        sub_1002492B0(v167);
      }

      if ((v131 & 1) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_94;
    }
  }

LABEL_109:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100249050@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Fence.AcceptanceStatus();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = v8;
    if (a1 == 0x6465747065636341 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v11 = &enum case for Fence.AcceptanceStatus.accepted(_:);
LABEL_6:

LABEL_7:
      (*(v16 + 104))(v10, *v11, v6);
      (*(v16 + 32))(a3, v10, v6);
      return (*(v16 + 56))(a3, 0, 1, v6);
    }

    if (a1 == 0x6E6564646948 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v11 = &enum case for Fence.AcceptanceStatus.pendingHidden(_:);
      goto LABEL_6;
    }

    if (a1 == 0x676E69646E6550 && a2 == 0xE700000000000000)
    {
      v11 = &enum case for Fence.AcceptanceStatus.pending(_:);
      goto LABEL_6;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v16;
    if (v13)
    {
      v11 = &enum case for Fence.AcceptanceStatus.pending(_:);
      goto LABEL_7;
    }
  }

  v14 = *(v8 + 56);

  return v14(a3, 1, 1, v6);
}

uint64_t sub_1002492B0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1001FC900(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002493A4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1001FCA34(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_100249520(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100249664(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_10024ADE4(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_10024AE84(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_100249754()
{
  v0 = type metadata accessor for Fence.Participant();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v18 - v6;
  v8 = type metadata accessor for Fence.Variant();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Fence.variant.getter();
  v13 = (*(v9 + 88))(v12, v8);
  if (v13 == enum case for Fence.Variant.oneTime(_:))
  {
    (*(v9 + 8))(v12, v8);
    v14 = 0;
  }

  else
  {
    if (v13 != enum case for Fence.Variant.recurring(_:) && v13 != enum case for Fence.Variant.scheduled(_:))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    (*(v9 + 8))(v12, v8);
    Fence.createdBy.getter();
    Fence.finder.getter();
    v14 = static Fence.Participant.== infix(_:_:)();
    v16 = *(v1 + 8);
    v16(v5, v0);
    v16(v7, v0);
  }

  return v14 & 1;
}

uint64_t sub_1002499DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Fence.MonitorRegion.Source();
  v15 = *(v6 - 8);
  v7 = *(v15 + 64);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 48 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v10 = &enum case for Fence.MonitorRegion.Source.unknown(_:);
LABEL_5:
    (*(v15 + 104))(v9, *v10, v6);
    (*(v15 + 32))(a3, v9, v6);
    return (*(v15 + 56))(a3, 0, 1, v6);
  }

  if (a1 == 49 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v10 = &enum case for Fence.MonitorRegion.Source.currentLocation(_:);
    goto LABEL_5;
  }

  if (a1 == 50 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v10 = &enum case for Fence.MonitorRegion.Source.friendLocation(_:);
    goto LABEL_5;
  }

  if (a1 == 51 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v10 = &enum case for Fence.MonitorRegion.Source.labelledLocation(_:);
    goto LABEL_5;
  }

  if (a1 == 52 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v10 = &enum case for Fence.MonitorRegion.Source.addressBook(_:);
    goto LABEL_5;
  }

  if (a1 == 53 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v10 = &enum case for Fence.MonitorRegion.Source.custom(_:);
    goto LABEL_5;
  }

  if (a1 == 54 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v10 = &enum case for Fence.MonitorRegion.Source.droppedPin(_:);
    goto LABEL_5;
  }

  if (a1 == 55 && a2 == 0xE100000000000000)
  {

LABEL_34:
    v10 = &enum case for Fence.MonitorRegion.Source.tool(_:);
    goto LABEL_5;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {
    goto LABEL_34;
  }

  v13 = *(v15 + 56);

  return v13(a3, 1, 1, v6);
}

uint64_t sub_100249D6C@<X0>(uint64_t a1@<X8>)
{
  v144 = a1;
  v2 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v139 = &v109 - v4;
  v5 = type metadata accessor for Date();
  v135 = *(v5 - 8);
  v136 = v5;
  v6 = *(v135 + 64);
  __chkstk_darwin(v5);
  v134 = &v109 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaceMark();
  v132 = *(v8 - 8);
  v133 = v8;
  v9 = *(v132 + 64);
  __chkstk_darwin(v8);
  v131 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for Fence.MonitorRegion.Source();
  v125 = *(v126 - 8);
  v11 = *(v125 + 64);
  v12 = __chkstk_darwin(v126);
  v122 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v124 = &v109 - v14;
  v15 = type metadata accessor for Fence.MonitorRegion();
  v129 = *(v15 - 8);
  v130 = v15;
  v16 = *(v129 + 64);
  v17 = __chkstk_darwin(v15);
  v128 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v127 = &v109 - v20;
  __chkstk_darwin(v19);
  v121 = &v109 - v21;
  v22 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v109 - v24;
  v138 = type metadata accessor for UUID();
  v26 = *(v138 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v138);
  v141 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v142 = &v109 - v30;
  v31 = type metadata accessor for Fence.Participant();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v36 = &v109 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v38 = &v109 - v37;
  v39 = type metadata accessor for Fence.Variant();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v140 = &v109 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v42);
  v45 = &v109 - v44;
  v143 = v1;
  Fence.variant.getter();
  v123 = *(v40 + 88);
  v46 = v123(v45, v39);
  if (v46 == enum case for Fence.Variant.oneTime(_:))
  {
    (*(v40 + 8))(v45, v39);
LABEL_8:
    v53 = type metadata accessor for FenceRecord();
    return (*(*(v53 - 8) + 56))(v144, 1, 1, v53);
  }

  v119 = enum case for Fence.Variant.oneTime(_:);
  v137 = v26;
  v118 = enum case for Fence.Variant.recurring(_:);
  if (v46 != enum case for Fence.Variant.recurring(_:) && v46 != enum case for Fence.Variant.scheduled(_:))
  {
    goto LABEL_37;
  }

  v117 = enum case for Fence.Variant.scheduled(_:);
  v47 = *(v40 + 8);
  v120 = v39;
  v116 = v40 + 8;
  v115 = v47;
  v47(v45, v39);
  Fence.createdBy.getter();
  Fence.finder.getter();
  v48 = static Fence.Participant.== infix(_:_:)();
  v49 = *(v32 + 8);
  v49(v36, v31);
  v49(v38, v31);
  if ((v48 & 1) == 0)
  {
    goto LABEL_8;
  }

  Fence.ckRecordIdentifier.getter();
  v50 = v137;
  v51 = v138;
  v52 = (*(v137 + 48))(v25, 1, v138);
  v114 = v40 + 88;
  if (v52 == 1)
  {
    sub_100002CE0(v25, &qword_1005A96E0, &qword_1004C2A80);
    UUID.init()();
  }

  else
  {
    (*(v50 + 32))(v142, v25, v51);
  }

  v55 = v125;
  v56 = v124;
  v57 = v121;
  Fence.region.getter();
  Fence.MonitorRegion.source.getter();
  v58 = *(v129 + 8);
  v59 = v57;
  v60 = v130;
  v58(v59, v130);
  v61 = v122;
  v62 = v126;
  (*(v55 + 16))(v122, v56, v126);
  v63 = (*(v55 + 88))(v61, v62);
  if (v63 == enum case for Fence.MonitorRegion.Source.unknown(_:))
  {
    v129 = 0;
  }

  else
  {
    if (v63 == enum case for Fence.MonitorRegion.Source.currentLocation(_:))
    {
      v64 = 1;
    }

    else if (v63 == enum case for Fence.MonitorRegion.Source.friendLocation(_:))
    {
      v64 = 2;
    }

    else if (v63 == enum case for Fence.MonitorRegion.Source.labelledLocation(_:))
    {
      v64 = 3;
    }

    else if (v63 == enum case for Fence.MonitorRegion.Source.addressBook(_:))
    {
      v64 = 4;
    }

    else if (v63 == enum case for Fence.MonitorRegion.Source.custom(_:))
    {
      v64 = 5;
    }

    else if (v63 == enum case for Fence.MonitorRegion.Source.droppedPin(_:))
    {
      v64 = 6;
    }

    else
    {
      if (v63 != enum case for Fence.MonitorRegion.Source.tool(_:))
      {
        goto LABEL_33;
      }

      v64 = 7;
    }

    v129 = v64;
  }

  (*(v55 + 8))(v56, v62);
  v65 = v131;
  Fence.placemark.getter();
  v126 = PlaceMark.locality.getter();
  v125 = v66;
  v124 = PlaceMark.administrativeArea.getter();
  v122 = v67;
  v121 = PlaceMark.country.getter();
  v113 = v68;
  v112 = PlaceMark.stateCode.getter();
  v111 = v69;
  v110 = PlaceMark.streetAddress.getter();
  v109 = v70;
  v71 = PlaceMark.streetName.getter();
  v73 = v72;
  (*(v132 + 8))(v65, v133);
  v74 = v127;
  Fence.region.getter();
  Fence.MonitorRegion.center.getter();
  v76 = v75;
  v78 = v77;
  v58(v74, v60);
  v79 = v128;
  Fence.region.getter();
  Fence.MonitorRegion.radius.getter();
  v81 = v80;
  v58(v79, v60);
  v82 = v134;
  static Date.now.getter();
  v83 = objc_allocWithZone(CLLocation);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v85 = [v83 initWithCoordinate:isa altitude:v76 horizontalAccuracy:v78 verticalAccuracy:0.0 timestamp:{v81, -1.0}];

  (*(v135 + 8))(v82, v136);
  (*(v137 + 16))(v141, v142, v51);
  v86 = Fence.label.getter();
  v88 = v87;
  v89 = v140;
  Fence.variant.getter();
  v90 = v89;
  v91 = v120;
  v92 = v123(v90, v120);
  if (v92 == v119 || v92 == v118)
  {
    v115(v140, v91);
    v97 = type metadata accessor for Fence.Schedule();
    v96 = v139;
    (*(*(v97 - 8) + 56))(v139, 1, 1, v97);
    goto LABEL_32;
  }

  if (v92 != v117)
  {
LABEL_37:
    while (1)
    {
LABEL_33:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v93 = v140;
  (*(v40 + 96))(v140, v91);
  v94 = type metadata accessor for Fence.Schedule();
  v95 = *(v94 - 8);
  v96 = v139;
  (*(v95 + 32))(v139, v93, v94);
  (*(v95 + 56))(v96, 0, 1, v94);
LABEL_32:
  v98 = type metadata accessor for FenceRecord();
  v99 = v144;
  v100 = v144 + v98[9];
  Fence.muteEndDate.getter();
  v101 = v137;
  (*(v137 + 8))(v142, v51);
  (*(v101 + 32))(v99, v141, v51);
  v102 = (v99 + v98[5]);
  *v102 = v86;
  v102[1] = v88;
  *(v99 + v98[6]) = v85;
  *(v99 + v98[7]) = v129;
  sub_10024AD74(v96, v99 + v98[8]);
  v103 = (v99 + v98[10]);
  v104 = v125;
  *v103 = v126;
  v103[1] = v104;
  v105 = v122;
  v103[2] = v124;
  v103[3] = v105;
  v106 = v113;
  v103[4] = v121;
  v103[5] = v106;
  v107 = v111;
  v103[6] = v112;
  v103[7] = v107;
  v108 = v109;
  v103[8] = v110;
  v103[9] = v108;
  v103[10] = v71;
  v103[11] = v73;
  return (*(*(v98 - 1) + 56))(v99, 0, 1, v98);
}

uint64_t sub_10024AAD4()
{
  v0 = type metadata accessor for Fence.Variant();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Fence.Participant();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  Fence.finder.getter();
  (*(v6 + 104))(v10, enum case for Fence.Participant.me(_:), v5);
  v13 = static Fence.Participant.== infix(_:_:)();
  v14 = *(v6 + 8);
  v14(v10, v5);
  v14(v12, v5);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  Fence.variant.getter();
  v15 = (*(v1 + 88))(v4, v0);
  v16 = v15 != enum case for Fence.Variant.oneTime(_:);
  if (v15 != enum case for Fence.Variant.oneTime(_:) && v15 != enum case for Fence.Variant.recurring(_:) && v15 != enum case for Fence.Variant.scheduled(_:))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  (*(v1 + 8))(v4, v0);
  return v16;
}

uint64_t sub_10024AD74(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024ADE4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

uint64_t sub_10024AE84(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10024B08C();
          for (i = 0; i != v6; ++i)
          {
            sub_10004B564(&qword_1005B0680, &qword_1004D2010);
            v9 = sub_10024B004(v13, i, a3);
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
        sub_1002414A8();
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

void (*sub_10024B004(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_10024B084;
  }

  __break(1u);
  return result;
}

unint64_t sub_10024B08C()
{
  result = qword_1005B0688;
  if (!qword_1005B0688)
  {
    sub_10004B610(&qword_1005B0680, &qword_1004D2010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0688);
  }

  return result;
}

uint64_t sub_10024B0F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B0690, &qword_1004D2018);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024B160(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10024B1A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10024B20C()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

Swift::Int sub_10024B244()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for FenceServiceClient();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024B2A0()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFF88);
  v1 = sub_10000A6F0(v0, qword_1005DFF88);
  if (qword_1005A80F0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000A6F0(v0, qword_1005DFFA0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10024B368()
{
  v1[2] = v0;
  v2 = *(*(type metadata accessor for UUID() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(sub_10004B564(&qword_1005B0370, &unk_1004D2410) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_10024B430, 0, 0);
}

uint64_t sub_10024B430()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  swift_defaultActor_initialize();
  strcpy((v3 + 112), "FenceService");
  *(v3 + 125) = 0;
  *(v3 + 126) = -5120;
  v4 = OBJC_IVAR____TtC13findmylocated12FenceService_serviceDescription;
  v5 = type metadata accessor for XPCServiceDescription();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  *(v3 + OBJC_IVAR____TtC13findmylocated12FenceService_trampoline) = 0;
  v6 = OBJC_IVAR____TtC13findmylocated12FenceService_connectionPool;
  sub_10004B564(&qword_1005B0990, &qword_1004D2310);
  *(v3 + v6) = XPCClientConnectionPool.__allocating_init()();
  *(v3 + OBJC_IVAR____TtC13findmylocated12FenceService_systemClockDidChangeObserver) = 0;
  *(v3 + OBJC_IVAR____TtC13findmylocated12FenceService_systemTimeZoneDidChangeObserver) = 0;
  *(v3 + OBJC_IVAR____TtC13findmylocated12FenceService_darwinSignificantTimeChangeTask) = 0;
  *(v3 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcAlarmHandlerTask) = 0;
  *(v3 + OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask) = 0;
  v7 = OBJC_IVAR____TtC13findmylocated12FenceService_triggerWorkItemQueue;
  type metadata accessor for WorkItemQueue();
  v8 = type metadata accessor for WorkItemQueue.WarningOptions();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  UUID.init()();
  *(v3 + v7) = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  type metadata accessor for XPCSessionManager();
  v9 = async function pointer to XPCSessionManager.__allocating_init(name:)[1];
  v10 = swift_task_alloc();
  v0[5] = v10;
  *v10 = v0;
  v10[1] = sub_10024B658;

  return XPCSessionManager.__allocating_init(name:)(0x72655365636E6546, 0xEC00000065636976);
}

uint64_t sub_10024B658(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return _swift_task_switch(sub_10024B758, 0, 0);
}

uint64_t sub_10024B758()
{
  v2 = v0[3];
  v1 = v0[4];
  *(v0[2] + OBJC_IVAR____TtC13findmylocated12FenceService_xpcSessionManager) = v0[6];

  v3 = v0[1];
  v4 = v0[2];

  return v3(v4);
}

uint64_t sub_10024B7D8()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_10024B89C, v0, 0);
}

uint64_t sub_10024B89C()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FenceService: startup", v4, 2u);
  }

  v6 = v0[3];
  v5 = v0[4];
  v7 = v0[2];

  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = sub_1000032D4(&qword_1005AF4A8, 255, type metadata accessor for FenceService);
  v10 = swift_allocObject();
  v10[2] = v7;
  v10[3] = v9;
  v10[4] = v7;
  v10[5] = v6;
  swift_retain_n();
  sub_1001D7F30(0, 0, v5, &unk_1004D23D8, v10);

  v0[5] = *(v7 + OBJC_IVAR____TtC13findmylocated12FenceService_connectionPool);
  v11 = swift_allocObject();
  v0[6] = v11;
  *(v11 + 16) = v7;
  *(v11 + 24) = v6;

  sub_10004B564(&qword_1005B0990, &qword_1004D2310);
  sub_10001534C();
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v0[7] = v13;
  v0[8] = v12;

  return _swift_task_switch(sub_10024BB00, v13, v12);
}

uint64_t sub_10024BB00()
{
  v2 = v0[5];
  v1 = v0[6];
  dispatch thunk of XPCClientConnectionPool.setStopProcessing(_:)();

  v3 = v0[7];
  v4 = v0[8];

  return _swift_task_switch(sub_10024BB84, v3, v4);
}

uint64_t sub_10024BB84()
{
  v1 = v0[4];
  v2 = v0[5];
  dispatch thunk of XPCClientConnectionPool.setRemoveHandler(_:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10024BC28()
{
  v10 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 24) = sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x2870757472617473, 0xE900000000000029, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s Waiting for first unlock", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = async function pointer to daemon.getter[1];
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_10024BDD8;

  return daemon.getter();
}

uint64_t sub_10024BDD8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 32);
  v12 = *v1;
  *(v3 + 40) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  v7 = type metadata accessor for Daemon();
  UnlockService = type metadata accessor for FirstUnlockService();
  v9 = sub_1000032D4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1000032D4(&qword_1005AD510, 255, &type metadata accessor for FirstUnlockService);
  *v6 = v12;
  v6[1] = sub_10024BFBC;

  return ActorServiceDaemon.getService<A>()(v7, UnlockService, v9, v10);
}

uint64_t sub_10024BFBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  v4[7] = a1;
  v4[8] = v1;

  if (v1)
  {
    v7 = v4[2];

    return _swift_task_switch(sub_10024C564, v7, 0);
  }

  else
  {
    v8 = v4[5];

    v9 = *(&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + 1);
    v12 = (&async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock() + async function pointer to dispatch thunk of FirstUnlockService.waitForFirstUnlock());
    v10 = swift_task_alloc();
    v4[9] = v10;
    *v10 = v6;
    v10[1] = sub_10024C160;

    return v12();
  }
}

uint64_t sub_10024C160()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_10024C270, v2, 0);
}

uint64_t sub_10024C270()
{
  v10 = v0;
  v1 = v0[3];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0x2870757472617473, 0xE900000000000029, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s first unlock completed", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_10024C3D8;
  v7 = v0[2];

  return sub_10025345C();
}

uint64_t sub_10024C3D8()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = v0;

  v5 = *(v2 + 16);
  if (v0)
  {
    v6 = sub_10024C6C8;
  }

  else
  {
    v6 = sub_10024C504;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_10024C504()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10024C564()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error retryAllUnacceptedFenceShares: %{public}@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10024C6C8()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[3];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error retryAllUnacceptedFenceShares: %{public}@", v6, 0xCu);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10024C82C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10024C8C8, 0, 0);
}

uint64_t sub_10024C8C8()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "stopProcessing", v4, 2u);
  }

  v6 = v0[2];
  v5 = v0[3];

  v7 = type metadata accessor for TaskPriority();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;

  sub_1001D7F30(0, 0, v5, &unk_1004D2400, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_10024CA7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10024D568();
}

uint64_t sub_10024CB0C()
{
  v1[12] = v0;
  v2 = *(*(sub_10004B564(&qword_1005B09F8, &qword_1004D23A8) - 8) + 64) + 15;
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for XPCServiceDescription();
  v1[14] = v3;
  v4 = *(v3 - 8);
  v1[15] = v4;
  v5 = *(v4 + 64) + 15;
  v1[16] = swift_task_alloc();
  v6 = type metadata accessor for MachServiceName();
  v1[17] = v6;
  v7 = *(v6 - 8);
  v1[18] = v7;
  v8 = *(v7 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10024CC6C, v0, 0);
}

uint64_t sub_10024CC6C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v22 = *(v0 + 152);
  v23 = *(v0 + 136);
  v3 = *(v0 + 120);
  v26 = *(v0 + 112);
  v24 = *(v0 + 128);
  v25 = *(v0 + 104);
  v4 = *(v0 + 96);
  v5 = type metadata accessor for FenceService.Trampoline();
  v6 = objc_allocWithZone(v5);
  swift_weakInit();
  swift_weakAssign();
  *(v0 + 80) = v6;
  *(v0 + 88) = v5;
  v7 = objc_msgSendSuper2((v0 + 80), "init");
  *(v0 + 168) = v7;
  v8 = objc_opt_self();
  v9 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate21FenceServiceClientXPC_];
  *(v0 + 176) = v9;
  MachServiceName.init(_:)();
  v10 = [v8 interfaceWithProtocol:&OBJC_PROTOCOL____TtP12FindMyLocate21FenceServiceDaemonXPC_];
  *(v0 + 184) = v10;
  (*(v2 + 16))(v22, v1, v23);
  v11 = type metadata accessor for ServiceEntitlements();
  *(v0 + 40) = v11;
  *(v0 + 48) = sub_1000032D4(&qword_1005B0A00, 255, &type metadata accessor for ServiceEntitlements);
  v12 = sub_10000331C((v0 + 16));
  (*(*(v11 - 8) + 104))(v12, enum case for ServiceEntitlements.locationService(_:), v11);
  swift_allocObject();
  swift_weakInit();
  v13 = v7;
  v14 = v10;
  v15 = v9;
  XPCServiceDescription.init(name:exportedObject:exportedInterface:remoteObjectInterface:options:requiredEntitlement:shouldAccept:)();
  v16 = *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_trampoline);
  *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_trampoline) = v13;
  v17 = v13;

  (*(v3 + 16))(v25, v24, v26);
  (*(v3 + 56))(v25, 0, 1, v26);
  v18 = OBJC_IVAR____TtC13findmylocated12FenceService_serviceDescription;
  swift_beginAccess();
  sub_100251A44(v25, v4 + v18);
  swift_endAccess();
  *(v0 + 192) = *(v4 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcSessionManager);
  type metadata accessor for XPCSessionManager();
  sub_1000032D4(&qword_1005B0A08, 255, &type metadata accessor for XPCSessionManager);
  v20 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10024CFE8, v20, v19);
}

uint64_t sub_10024CFE8()
{
  v1 = v0[24];
  v2 = v0[16];
  dispatch thunk of XPCSessionManager.register(service:)();
  v0[25] = 0;
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_10024D0D4;
  v4 = v0[12];

  return sub_100293A88();
}

uint64_t sub_10024D0D4()
{
  v1 = *(*v0 + 208);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_10024D1E4, v2, 0);
}

uint64_t sub_10024D1E4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v12 = *(v0 + 104);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v2, v6);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10024D2D8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v7 = *(v0 + 128);
  v6 = *(v0 + 136);
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v13 = *(v0 + 104);

  (*(v9 + 8))(v7, v8);
  (*(v5 + 8))(v2, v6);

  v10 = *(v0 + 8);
  v11 = *(v0 + 200);

  return v10();
}

uint64_t sub_10024D3CC()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 40);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error adding connection: %{public}@", v7, 0xCu);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10024D584()
{
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "FenceService: All client connections have been terminated. Invalidating...", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10024D698()
{
  v1 = *(v0 + 120);

  sub_100002CE0(v0 + OBJC_IVAR____TtC13findmylocated12FenceService_serviceDescription, &qword_1005B09F8, &qword_1004D23A8);

  v2 = *(v0 + OBJC_IVAR____TtC13findmylocated12FenceService_connectionPool);

  v3 = *(v0 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcSessionManager);

  v4 = *(v0 + OBJC_IVAR____TtC13findmylocated12FenceService_systemClockDidChangeObserver);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC13findmylocated12FenceService_systemTimeZoneDidChangeObserver);
  swift_unknownObjectRelease();
  v6 = *(v0 + OBJC_IVAR____TtC13findmylocated12FenceService_darwinSignificantTimeChangeTask);

  v7 = *(v0 + OBJC_IVAR____TtC13findmylocated12FenceService_xpcAlarmHandlerTask);

  v8 = *(v0 + OBJC_IVAR____TtC13findmylocated12FenceService_significantTimeChangeDebounceTask);

  v9 = *(v0 + OBJC_IVAR____TtC13findmylocated12FenceService_triggerWorkItemQueue);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10024D770()
{
  sub_10024D698();

  return _swift_defaultActor_deallocate(v0);
}

void sub_10024D7C4()
{
  sub_10024D88C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10024D88C()
{
  if (!qword_1005B07A0)
  {
    type metadata accessor for XPCServiceDescription();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005B07A0);
    }
  }
}

uint64_t sub_10024D8E4(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FenceService(0);
  *v5 = v2;
  v5[1] = sub_10000368C;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_10024D990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for FenceService(0);
  *v9 = v4;
  v9[1] = sub_10000368C;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10024DA58(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.firstLaunchSinceReboot()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for FenceService(0);
  *v5 = v2;
  v5[1] = sub_100003690;

  return ActorServiceProtocol.firstLaunchSinceReboot()(v6, a2);
}

uint64_t sub_10024DB04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_10024B7D8();
}

uint64_t sub_10024DB90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100003690;

  return sub_10024CB0C();
}

uint64_t sub_10024DC1C()
{
  v1 = *v0;
  type metadata accessor for FenceService(0);
  sub_1000032D4(&qword_1005A9278, 255, type metadata accessor for FenceService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_10024DC8C()
{
  v2 = *(*v1 + 1056);
  v5 = *v1;
  *(*v1 + 1064) = v0;

  if (v0)
  {
    v3 = sub_10024FF50;
  }

  else
  {
    v3 = sub_10024DDA0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10024DDA0()
{
  v1 = v0[128];
  v2 = v0[127];
  v3 = v0[125];
  v4 = v0[124];
  v5 = v0[123];
  v6 = v0[122];
  v7 = v0[105];
  v8 = v0[104];
  (*(v3 + 16))(v5, v2, v4);
  v9 = enum case for FenceResponse.fence(_:);
  v10 = type metadata accessor for FenceResponse();
  (*(*(v10 - 8) + 104))(v5, v9, v10);
  swift_storeEnumTagMultiPayload();
  v8(v5);
  sub_100002CE0(v5, &qword_1005B09D8, &qword_1004D2390);
  v11 = *(v3 + 8);
  v11(v2, v4);
  v11(v1, v4);
  v12 = v0[131];
  v13 = v0[128];
  v14 = v0[127];
  v15 = v0[126];
  v16 = v0[123];
  v17 = v0[121];
  v18 = v0[120];
  v19 = v0[119];
  v20 = v0[116];
  v21 = v0[113];
  v24 = v0[112];
  v25 = v0[111];
  v26 = v0[108];
  v27 = v0[107];
  v28 = v0[106];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10024DFBC()
{
  v2 = *(*v1 + 1072);
  v5 = *v1;
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v3 = sub_10025027C;
  }

  else
  {
    v3 = sub_10024E0D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10024E0D0()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[121];
  v4 = v0[118];
  v5 = v0[117];
  v6 = v0[105];
  v7 = v0[104];
  v8 = enum case for FenceResponse.void(_:);
  v9 = type metadata accessor for FenceResponse();
  (*(*(v9 - 8) + 104))(v1, v8, v9);
  swift_storeEnumTagMultiPayload();
  v7(v1);
  sub_100002CE0(v1, &qword_1005B09D8, &qword_1004D2390);
  (*(v4 + 8))(v3, v5);
  v10 = v0[131];
  v11 = v0[128];
  v12 = v0[127];
  v13 = v0[126];
  v14 = v0[123];
  v15 = v0[121];
  v16 = v0[120];
  v17 = v0[119];
  v18 = v0[116];
  v19 = v0[113];
  v22 = v0[112];
  v23 = v0[111];
  v24 = v0[108];
  v25 = v0[107];
  v26 = v0[106];

  v20 = v0[1];

  return v20();
}

uint64_t sub_10024E2B4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1088);
  v12 = *v1;
  *(v3 + 1096) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000032D4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1000032D4(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10024E498;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10024E498(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1104);
  v6 = *v2;
  *(*v2 + 1112) = v1;

  if (v1)
  {
    v7 = v4[103];

    return _swift_task_switch(sub_10024E96C, v7, 0);
  }

  else
  {
    v8 = v4[137];

    v4[140] = a1;
    v9 = swift_task_alloc();
    v4[141] = v9;
    *v9 = v6;
    v9[1] = sub_10024E624;

    return sub_100006424();
  }
}

uint64_t sub_10024E624(uint64_t a1)
{
  v2 = *(*v1 + 1128);
  v3 = *(*v1 + 824);
  v5 = *v1;
  *(*v1 + 1136) = a1;

  return _swift_task_switch(sub_10024E73C, v3, 0);
}

uint64_t sub_10024E73C()
{
  v1 = *(v0 + 1120);

  return _swift_task_switch(sub_10024E7A4, 0, 0);
}

uint64_t sub_10024E7A4()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[105];
  v4 = v0[104];
  *v1 = v0[142];
  v5 = enum case for FenceResponse.fences(_:);
  v6 = type metadata accessor for FenceResponse();
  (*(*(v6 - 8) + 104))(v1, v5, v6);
  swift_storeEnumTagMultiPayload();
  v4(v1);
  sub_100002CE0(v1, &qword_1005B09D8, &qword_1004D2390);
  v7 = v0[131];
  v8 = v0[128];
  v9 = v0[127];
  v10 = v0[126];
  v11 = v0[123];
  v12 = v0[121];
  v13 = v0[120];
  v14 = v0[119];
  v15 = v0[116];
  v16 = v0[113];
  v19 = v0[112];
  v20 = v0[111];
  v21 = v0[108];
  v22 = v0[107];
  v23 = v0[106];

  v17 = v0[1];

  return v17();
}

uint64_t sub_10024E96C()
{
  v1 = *(v0 + 1096);

  return _swift_task_switch(sub_10024E9D4, 0, 0);
}

uint64_t sub_10024E9D4()
{
  v32 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[139];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[139];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v31);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s getFences Error: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  v10 = v0[123];
  v11 = v0[122];
  v12 = v0[105];
  v13 = v0[104];
  *v10 = v0[139];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v13(v10);

  sub_100002CE0(v10, &qword_1005B09D8, &qword_1004D2390);
  v14 = v0[131];
  v15 = v0[128];
  v16 = v0[127];
  v17 = v0[126];
  v18 = v0[123];
  v19 = v0[121];
  v20 = v0[120];
  v21 = v0[119];
  v22 = v0[116];
  v23 = v0[113];
  v26 = v0[112];
  v27 = v0[111];
  v28 = v0[108];
  v29 = v0[107];
  v30 = v0[106];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10024ECDC()
{
  v2 = *(*v1 + 1144);
  v5 = *v1;
  *(*v1 + 1152) = v0;

  if (v0)
  {
    v3 = sub_1002505A8;
  }

  else
  {
    v3 = sub_10024EDF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10024EDF0()
{
  v1 = v0[126];
  v2 = v0[125];
  v3 = v0[124];
  v4 = v0[123];
  v5 = v0[122];
  v6 = v0[118];
  v26 = v0[117];
  v28 = v0[120];
  v7 = v0[105];
  v8 = v0[104];
  (*(v2 + 16))(v4, v1, v3);
  v9 = enum case for FenceResponse.fence(_:);
  v10 = type metadata accessor for FenceResponse();
  (*(*(v10 - 8) + 104))(v4, v9, v10);
  swift_storeEnumTagMultiPayload();
  v8(v4);
  sub_100002CE0(v4, &qword_1005B09D8, &qword_1004D2390);
  (*(v2 + 8))(v1, v3);
  (*(v6 + 8))(v28, v26);
  v11 = v0[131];
  v12 = v0[128];
  v13 = v0[127];
  v14 = v0[126];
  v15 = v0[123];
  v16 = v0[121];
  v17 = v0[120];
  v18 = v0[119];
  v19 = v0[116];
  v20 = v0[113];
  v23 = v0[112];
  v24 = v0[111];
  v25 = v0[108];
  v27 = v0[107];
  v29 = v0[106];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10024F018()
{
  v2 = *(*v1 + 1160);
  v3 = *(*v1 + 896);
  v6 = *v1;
  *(*v1 + 1168) = v0;

  sub_100002CE0(v3, &qword_1005B09D0, &unk_1004D2380);
  if (v0)
  {
    v4 = sub_1002508D4;
  }

  else
  {
    v4 = sub_10024F158;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10024F158()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[116];
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[105];
  v8 = v0[104];
  v9 = enum case for FenceResponse.void(_:);
  v10 = type metadata accessor for FenceResponse();
  (*(*(v10 - 8) + 104))(v1, v9, v10);
  swift_storeEnumTagMultiPayload();
  v8(v1);
  sub_100002CE0(v1, &qword_1005B09D8, &qword_1004D2390);
  sub_100002CE0(v6, &unk_1005AE5B0, &qword_1004C32F0);
  (*(v4 + 8))(v3, v5);
  v11 = v0[131];
  v12 = v0[128];
  v13 = v0[127];
  v14 = v0[126];
  v15 = v0[123];
  v16 = v0[121];
  v17 = v0[120];
  v18 = v0[119];
  v19 = v0[116];
  v20 = v0[113];
  v23 = v0[112];
  v24 = v0[111];
  v25 = v0[108];
  v26 = v0[107];
  v27 = v0[106];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10024F358()
{
  v2 = *(*v1 + 1176);
  v3 = *(*v1 + 856);
  v6 = *v1;
  *(*v1 + 1184) = v0;

  sub_100002CE0(v3, &qword_1005A9148, &qword_1004D2370);
  if (v0)
  {
    v4 = sub_100250C1C;
  }

  else
  {
    v4 = sub_10024F498;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10024F498()
{
  v1 = v0[123];
  v2 = v0[122];
  v3 = v0[118];
  v27 = v0[117];
  v29 = v0[119];
  v25 = v0[111];
  v4 = v0[110];
  v5 = v0[109];
  v6 = v0[108];
  v7 = v0[105];
  v8 = v0[104];
  sub_100005F04(v6, v1, &qword_1005B09C8, &qword_1004D2378);
  v9 = enum case for FenceResponse.triggerID(_:);
  v10 = type metadata accessor for FenceResponse();
  (*(*(v10 - 8) + 104))(v1, v9, v10);
  swift_storeEnumTagMultiPayload();
  v8(v1);
  sub_100002CE0(v1, &qword_1005B09D8, &qword_1004D2390);
  sub_100002CE0(v6, &qword_1005B09C8, &qword_1004D2378);
  (*(v4 + 8))(v25, v5);
  (*(v3 + 8))(v29, v27);
  v11 = v0[131];
  v12 = v0[128];
  v13 = v0[127];
  v14 = v0[126];
  v15 = v0[123];
  v16 = v0[121];
  v17 = v0[120];
  v18 = v0[119];
  v19 = v0[116];
  v20 = v0[113];
  v23 = v0[112];
  v24 = v0[111];
  v26 = v0[108];
  v28 = v0[107];
  v30 = v0[106];

  v21 = v0[1];

  return v21();
}

uint64_t sub_10024F6DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1192);
  v12 = *v1;
  *(v3 + 1200) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 1208) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for DataManager(0);
  v9 = sub_1000032D4(&unk_1005AFA50, 255, &type metadata accessor for Daemon);
  v10 = sub_1000032D4(&qword_1005A90D0, 255, type metadata accessor for DataManager);
  *v6 = v12;
  v6[1] = sub_10024F8C0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10024F8C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1208);
  v6 = *v2;
  *(*v2 + 1216) = v1;

  if (v1)
  {
    v7 = v4[103];

    return _swift_task_switch(sub_10024FBE0, v7, 0);
  }

  else
  {
    v8 = v4[150];

    v4[153] = a1;
    v9 = swift_task_alloc();
    v4[154] = v9;
    *v9 = v6;
    v9[1] = sub_10024FA50;

    return sub_1001E17C0((v4 + 2));
  }
}

uint64_t sub_10024FA50()
{
  v1 = *v0;
  v2 = *(*v0 + 1232);
  v3 = *(*v0 + 824);
  v5 = *v0;

  sub_100002CE0(v1 + 16, &qword_1005B02C0, &unk_1004D5E90);

  return _swift_task_switch(sub_10024FB78, v3, 0);
}

uint64_t sub_10024FB78()
{
  v1 = *(v0 + 1224);

  return _swift_task_switch(sub_100252020, 0, 0);
}

uint64_t sub_10024FBE0()
{
  v1 = *(v0 + 1200);

  return _swift_task_switch(sub_10024FC48, 0, 0);
}

uint64_t sub_10024FC48()
{
  v32 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[152];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[152];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v31);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s, forceRefreshClient failed with error: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  v10 = v0[123];
  v11 = v0[122];
  v12 = v0[105];
  v13 = v0[104];
  *v10 = v0[152];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v13(v10);

  sub_100002CE0(v10, &qword_1005B09D8, &qword_1004D2390);
  v14 = v0[131];
  v15 = v0[128];
  v16 = v0[127];
  v17 = v0[126];
  v18 = v0[123];
  v19 = v0[121];
  v20 = v0[120];
  v21 = v0[119];
  v22 = v0[116];
  v23 = v0[113];
  v26 = v0[112];
  v27 = v0[111];
  v28 = v0[108];
  v29 = v0[107];
  v30 = v0[106];

  v24 = v0[1];

  return v24();
}

uint64_t sub_10024FF50()
{
  v35 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[133];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[133];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v34);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s updateFence Error: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  v10 = v0[128];
  v11 = v0[125];
  v12 = v0[124];
  v13 = v0[123];
  v14 = v0[122];
  v15 = v0[105];
  v16 = v0[104];
  *v13 = v0[133];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v16(v13);

  sub_100002CE0(v13, &qword_1005B09D8, &qword_1004D2390);
  (*(v11 + 8))(v10, v12);
  v17 = v0[131];
  v18 = v0[128];
  v19 = v0[127];
  v20 = v0[126];
  v21 = v0[123];
  v22 = v0[121];
  v23 = v0[120];
  v24 = v0[119];
  v25 = v0[116];
  v26 = v0[113];
  v29 = v0[112];
  v30 = v0[111];
  v31 = v0[108];
  v32 = v0[107];
  v33 = v0[106];

  v27 = v0[1];

  return v27();
}

uint64_t sub_10025027C()
{
  v35 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[135];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[135];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v34);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s deleteFence Error: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  v10 = v0[123];
  v11 = v0[122];
  v12 = v0[121];
  v13 = v0[118];
  v14 = v0[117];
  v15 = v0[105];
  v16 = v0[104];
  *v10 = v0[135];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v16(v10);

  sub_100002CE0(v10, &qword_1005B09D8, &qword_1004D2390);
  (*(v13 + 8))(v12, v14);
  v17 = v0[131];
  v18 = v0[128];
  v19 = v0[127];
  v20 = v0[126];
  v21 = v0[123];
  v22 = v0[121];
  v23 = v0[120];
  v24 = v0[119];
  v25 = v0[116];
  v26 = v0[113];
  v29 = v0[112];
  v30 = v0[111];
  v31 = v0[108];
  v32 = v0[107];
  v33 = v0[106];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1002505A8()
{
  v35 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[144];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[144];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v34);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s acceptFence Error: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  v10 = v0[123];
  v11 = v0[122];
  v12 = v0[120];
  v13 = v0[118];
  v14 = v0[117];
  v15 = v0[105];
  v16 = v0[104];
  *v10 = v0[144];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v16(v10);

  sub_100002CE0(v10, &qword_1005B09D8, &qword_1004D2390);
  (*(v13 + 8))(v12, v14);
  v17 = v0[131];
  v18 = v0[128];
  v19 = v0[127];
  v20 = v0[126];
  v21 = v0[123];
  v22 = v0[121];
  v23 = v0[120];
  v24 = v0[119];
  v25 = v0[116];
  v26 = v0[113];
  v29 = v0[112];
  v30 = v0[111];
  v31 = v0[108];
  v32 = v0[107];
  v33 = v0[106];

  v27 = v0[1];

  return v27();
}

uint64_t sub_1002508D4()
{
  v36 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[146];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[146];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v35 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v35);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s muteFences Error: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  v10 = v0[123];
  v11 = v0[122];
  v12 = v0[116];
  v13 = v0[115];
  v14 = v0[114];
  v15 = v0[113];
  v16 = v0[105];
  v17 = v0[104];
  *v10 = v0[146];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v17(v10);

  sub_100002CE0(v10, &qword_1005B09D8, &qword_1004D2390);
  sub_100002CE0(v15, &unk_1005AE5B0, &qword_1004C32F0);
  (*(v13 + 8))(v12, v14);
  v18 = v0[131];
  v19 = v0[128];
  v20 = v0[127];
  v21 = v0[126];
  v22 = v0[123];
  v23 = v0[121];
  v24 = v0[120];
  v25 = v0[119];
  v26 = v0[116];
  v27 = v0[113];
  v30 = v0[112];
  v31 = v0[111];
  v32 = v0[108];
  v33 = v0[107];
  v34 = v0[106];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100250C1C()
{
  v38 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[148];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[148];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v37 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001CLL, 0x80000001004E5C50, &v37);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s, triggerFence failed with error: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  v10 = v0[123];
  v11 = v0[122];
  v35 = v0[119];
  v12 = v0[118];
  v13 = v0[117];
  v14 = v0[111];
  v15 = v0[110];
  v16 = v0[109];
  v17 = v0[105];
  v18 = v0[104];
  *v10 = v0[148];
  swift_storeEnumTagMultiPayload();
  swift_errorRetain();
  v18(v10);

  sub_100002CE0(v10, &qword_1005B09D8, &qword_1004D2390);
  (*(v15 + 8))(v14, v16);
  (*(v12 + 8))(v35, v13);
  v19 = v0[131];
  v20 = v0[128];
  v21 = v0[127];
  v22 = v0[126];
  v23 = v0[123];
  v24 = v0[121];
  v25 = v0[120];
  v26 = v0[119];
  v27 = v0[116];
  v28 = v0[113];
  v31 = v0[112];
  v32 = v0[111];
  v33 = v0[108];
  v34 = v0[107];
  v36 = v0[106];

  v29 = v0[1];

  return v29();
}

uint64_t sub_100250F70()
{
  v1 = v0[4];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100250FD4()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[16];
  v6 = v0[1];

  return v6();
}

uint64_t sub_100251060()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002510E0()
{
  v16 = v0;
  v1 = v0[5];

  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF88);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[7];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0x75716552656B616DLL, 0xEF293A5F28747365, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s error: %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  v11 = v0[7];
  swift_willThrow();
  v12 = v0[1];
  v13 = v0[7];

  return v12();
}

uint64_t sub_1002512E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1002519DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100251314(uint64_t a1, uint64_t a2)
{
  v4 = sub_100251FCC();
  v5 = sub_10004E724();

  return Error<>._code.getter(a1, a2, v4, v5);
}

uint64_t sub_10025136C()
{
  v1 = v0[11];

  v2 = v0[11];
  v0[9] = v0[14];
  OnceCheckedContinuation.resume(throwing:)();

  v3 = v0[1];

  return v3();
}

uint64_t sub_100251594()
{
  v0 = type metadata accessor for Logger();
  sub_10004F154(v0, qword_1005DFFA0);
  sub_10000A6F0(v0, qword_1005DFFA0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10025165C()
{
  v1 = *(*(v0 + 16) + 112);
  v2 = *(&async function pointer to dispatch thunk of FM.XPCSession.connection.getter + 1);
  v5 = (&async function pointer to dispatch thunk of FM.XPCSession.connection.getter + async function pointer to dispatch thunk of FM.XPCSession.connection.getter);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_100251704;

  return v5();
}

uint64_t sub_100251704(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100251804, 0, 0);
}

uint64_t sub_100251804()
{
  v19 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446210;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_10000D01C(v12, v14, &v18);

    *(v8 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "Fences Service: removed connection: %{public}s", v8, 0xCu);
    sub_100004984(v9);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_1002519DC(uint64_t a1)
{
  if ((a1 - 1) >= 0x18)
  {
    return 24;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_1002519F0()
{
  result = qword_1005B09B8;
  if (!qword_1005B09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B09B8);
  }

  return result;
}

uint64_t sub_100251A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B09F8, &qword_1004D23A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100251AB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_10024BC08(a1, v4, v5, v7);
}

uint64_t sub_100251B74()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_10024C82C(v2);
}

uint64_t sub_100251C0C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10000368C;

  return sub_10024CA7C();
}

uint64_t getEnumTagSinglePayload for FenceServiceClient.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FenceServiceClient.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100251E20()
{
  type metadata accessor for FenceResponse();
  if (v0 <= 0x3F)
  {
    sub_100251ECC();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Fence.Variant();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Fence.ID();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_100251ECC()
{
  if (!qword_1005A9788)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005A9788);
    }
  }
}

unint64_t sub_100251F20()
{
  result = qword_1005B0AB8;
  if (!qword_1005B0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0AB8);
  }

  return result;
}

unint64_t sub_100251F78()
{
  result = qword_1005B0AC0;
  if (!qword_1005B0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0AC0);
  }

  return result;
}

unint64_t sub_100251FCC()
{
  result = qword_1005B0AC8;
  if (!qword_1005B0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0AC8);
  }

  return result;
}

uint64_t sub_100252024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v4[9] = v8;
  v9 = *(v8 - 8);
  v4[10] = v9;
  v10 = *(v9 + 64) + 15;
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_100252144, v3, 0);
}

uint64_t sub_100252144()
{
  v21 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF88);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[9];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5D60, &v20);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100009488(&qword_1005ADD18, &type metadata accessor for URL);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10000D01C(v13, v15, &v20);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s url:%{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = async function pointer to daemon.getter[1];
  v18 = swift_task_alloc();
  v0[12] = v18;
  *v18 = v0;
  v18[1] = sub_100252400;

  return daemon.getter();
}

uint64_t sub_100252400(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  v12 = *v1;
  *(v3 + 104) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 112) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009488(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009488(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1002525DC;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002525DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v10 = *v2;
  v3[15] = a1;
  v3[16] = v1;

  if (v1)
  {
    v5 = v3[5];
    v6 = sub_100253360;
  }

  else
  {
    v7 = v3[13];
    v8 = v3[5];

    v6 = sub_100252704;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100252704()
{
  v1 = v0[3];
  v2 = v0[4];
  v0[17] = Data.init(base64Encoded:options:)();
  v0[18] = v3;
  if (v3 >> 60 == 15)
  {
    v4 = v0[15];
    v6 = v0[3];
    v5 = v0[4];
    type metadata accessor for FenceServiceClient.Failure(0);
    sub_100009488(&qword_1005A9140, type metadata accessor for FenceServiceClient.Failure);
    swift_allocError();
    *v7 = v6;
    v7[1] = v5;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v8 = v0[11];
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }

  else
  {

    return _swift_task_switch(sub_10025286C, 0, 0);
  }
}

uint64_t sub_10025286C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[2];
  v5 = swift_task_alloc();
  v0[19] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_100252974;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD00000000000002BLL, 0x80000001004E5D00, sub_100257B28, v5, &type metadata for () + 8);
}

uint64_t sub_100252974()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v7 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v4 = sub_100252D20;
  }

  else
  {
    v5 = *(v2 + 152);

    v4 = sub_100252A90;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100252AAC()
{
  v1 = *(v0 + 64);
  static Clock<>.continuous.getter();
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_100252B78;
  v3 = *(v0 + 64);

  return sub_100291918(0x8AC7230489E80000, 0, 0, 0, 1);
}

uint64_t sub_100252B78()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  v3[23] = v0;

  if (v0)
  {
    v4 = v3[5];
    (*(v3[7] + 8))(v3[8], v3[6]);

    return _swift_task_switch(sub_100252F2C, v4, 0);
  }

  else
  {
    (*(v3[7] + 8))(v3[8], v3[6]);
    v5 = swift_task_alloc();
    v3[24] = v5;
    *v5 = v3;
    v5[1] = sub_100252E10;
    v6 = v3[17];
    v7 = v3[18];
    v8 = v3[5];
    v9 = v3[2];

    return sub_100253F44(v9, v6, v7);
  }
}

uint64_t sub_100252D20()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_100252D8C, v2, 0);
}

uint64_t sub_100252D8C()
{
  v1 = v0[15];
  sub_10001A794(v0[17], v0[18]);

  v2 = v0[21];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100252E10()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v7 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = sub_1002533D8;
  }

  else
  {
    v5 = sub_100252FB0;
    v4 = 0;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100252F2C()
{
  v1 = v0[15];
  sub_10001A794(v0[17], v0[18]);

  v2 = v0[23];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100252FB0()
{
  v1 = v0[15];
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[26] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_1002530A8;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v5, 0, 0, 0xD000000000000025, 0x80000001004E5D30, sub_100257B34, v3, &type metadata for () + 8);
}

uint64_t sub_1002530A8()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v7 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v4 = sub_100253270;
  }

  else
  {
    v5 = *(v2 + 208);

    v4 = sub_1002531C4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002531E0()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = v0[8];
  sub_10001A794(v0[17], v0[18]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100253270()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 40);

  return _swift_task_switch(sub_1002532DC, v2, 0);
}

uint64_t sub_1002532DC()
{
  v1 = v0[15];
  sub_10001A794(v0[17], v0[18]);

  v2 = v0[28];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100253360()
{
  v1 = v0[13];

  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002533D8()
{
  v1 = v0[15];
  sub_10001A794(v0[17], v0[18]);

  v2 = v0[25];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10025345C()
{
  v1[3] = v0;
  v1[4] = *v0;
  v2 = async function pointer to daemon.getter[1];
  v3 = swift_task_alloc();
  v1[5] = v3;
  *v3 = v1;
  v3[1] = sub_100253518;

  return daemon.getter();
}

uint64_t sub_100253518(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009488(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009488(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_1002536F4;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1002536F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v9 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = v3[3];
    v6 = sub_100253EE0;
  }

  else
  {
    v7 = v3[6];

    v6 = sub_100253818;
    v5 = 0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100253818()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  v3 = sub_10004B564(&qword_1005B0AF0, &qword_1004D2650);
  *v2 = v0;
  v2[1] = sub_100253900;
  v4 = *(v0 + 64);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD000000000000025, 0x80000001004E5DB0, sub_100257CD4, v4, v3);
}

uint64_t sub_100253900()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_100253CAC;
  }

  else
  {
    v3 = sub_100253A14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100253A14()
{
  v1 = v0[3];
  v0[12] = v0[2];
  return _swift_task_switch(sub_100253A34, v1, 0);
}

uint64_t sub_100253A34()
{
  v19 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v2 = type metadata accessor for Logger();
  sub_10000A6F0(v2, qword_1005DFF88);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[12];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5DE0, &v18);
    *(v7 + 12) = 2050;
    *(v7 + 14) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s retrying %{public}ld share invites.", v7, 0x16u);
    sub_100004984(v8);
  }

  else
  {
    v9 = v0[12];
  }

  v10 = v0[12];
  v11 = v0[8];
  v12 = v0[3];
  v13 = v0[4];
  sub_100009488(&qword_1005AF4A8, type metadata accessor for FenceService);
  v14 = swift_task_alloc();
  v0[13] = v14;
  v14[2] = v10;
  v14[3] = v12;
  v14[4] = v11;
  v14[5] = v13;
  v15 = async function pointer to withDiscardingTaskGroup<A>(returning:isolation:body:)[1];
  v16 = swift_task_alloc();
  v0[14] = v16;
  *v16 = v0;
  v16[1] = sub_100253D2C;

  return withDiscardingTaskGroup<A>(returning:isolation:body:)();
}

uint64_t sub_100253CC8()
{
  v1 = v0[8];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100253D2C()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 24);
  v6 = *v0;

  return _swift_task_switch(sub_100253E7C, v4, 0);
}

uint64_t sub_100253E7C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100253EE0()
{
  v1 = v0[6];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100253F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[26] = a3;
  v4[27] = v3;
  v4[24] = a1;
  v4[25] = a2;
  v4[28] = *v3;
  v5 = type metadata accessor for URL();
  v4[29] = v5;
  v6 = *(v5 - 8);
  v4[30] = v6;
  v4[31] = *(v6 + 64);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_100254078, v3, 0);
}

uint64_t sub_100254078()
{
  v22 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[24];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF88);
  v6 = *(v3 + 16);
  v0[34] = v6;
  v0[35] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[33];
  v11 = v0[29];
  v12 = v0[30];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v13 = 136446723;
    *(v13 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E5D80, &v21);
    *(v13 + 12) = 2160;
    *(v13 + 14) = 1752392040;
    *(v13 + 22) = 2081;
    sub_100009488(&qword_1005ADD18, &type metadata accessor for URL);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v12 + 8))(v10, v11);
    v17 = sub_10000D01C(v14, v16, &v21);

    *(v13 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s accepting share invite for url: %{private,mask.hash}s", v13, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v12 + 8))(v10, v11);
  }

  v18 = async function pointer to daemon.getter[1];
  v19 = swift_task_alloc();
  v0[36] = v19;
  *v19 = v0;
  v19[1] = sub_10025436C;

  return daemon.getter();
}

uint64_t sub_10025436C(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 288);
  v12 = *v1;
  v3[37] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[38] = v6;
  v7 = type metadata accessor for Daemon();
  v3[39] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_100009488(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[40] = v9;
  v10 = sub_100009488(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_100254584;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100254584(uint64_t a1)
{
  v3 = *(*v2 + 304);
  v4 = *v2;
  v4[41] = a1;
  v4[42] = v1;

  if (v1)
  {
    v5 = v4[27];

    return _swift_task_switch(sub_10025529C, v5, 0);
  }

  else
  {
    v6 = v4[37];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[43] = v8;
    *v8 = v4;
    v8[1] = sub_100254748;

    return daemon.getter();
  }
}

uint64_t sub_100254748(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 344);
  v5 = *v1;
  v3[44] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[45] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_100009488(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_100254928;
  v10 = v3[40];
  v11 = v3[39];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_100254928(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 360);
  v10 = *v2;
  v3[46] = a1;
  v3[47] = v1;

  if (v1)
  {
    v5 = v3[27];
    v6 = sub_100255344;
  }

  else
  {
    v7 = v3[44];
    v8 = v3[27];

    v6 = sub_100254A9C;
    v5 = v8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100254A9C()
{
  sub_10004B564(&qword_1005AE320, &qword_1004D38D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004C1900;
  v2 = sub_100257B3C();
  *(v1 + 56) = sub_10004B564(&qword_1005B0AD8, &qword_1004D2620);
  *(v1 + 32) = v2;
  v3 = objc_allocWithZone(NSSet);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v3 initWithArray:isa];

  static Set._conditionallyBridgeFromObjectiveC(_:result:)();
  v6 = v0[46];
  v7 = v0[41];
  sub_10005CF04();
  swift_allocError();
  *v8 = 9;
  swift_willThrow();

  v10 = v0[32];
  v9 = v0[33];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100255058()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v4 = *v1;
  *(*v1 + 416) = v0;

  v5 = *(v2 + 400);
  v6 = *(v2 + 216);

  if (v0)
  {
    v7 = sub_1002553F8;
  }

  else
  {
    v7 = sub_1002551CC;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_1002551CC()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[46];
  v4 = v0[41];
  v6 = v0[32];
  v5 = v0[33];

  v7 = v0[1];

  return v7();
}

uint64_t sub_10025529C()
{
  v1 = v0[37];

  v2 = v0[42];
  v4 = v0[32];
  v3 = v0[33];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100255344()
{
  v1 = v0[44];
  v2 = v0[41];

  v3 = v0[47];
  v5 = v0[32];
  v4 = v0[33];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002553F8()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[46];
  v4 = v0[41];

  v5 = v0[52];
  v7 = v0[32];
  v6 = v0[33];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002554BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[7] = a2;
  v7 = type metadata accessor for URL();
  v6[12] = v7;
  v8 = *(v7 - 8);
  v6[13] = v8;
  v9 = *(v8 + 64) + 15;
  v6[14] = swift_task_alloc();

  return _swift_task_switch(sub_100255584, 0, 0);
}

void sub_100255584()
{
  v1 = v0[7];
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v0[15] = v2;
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[7];
    *(v1 + 24) = v4;
    os_unfair_lock_unlock(v5 + 4);
    v0[16] = sub_10025F0A0(&off_10058BBC8);
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v6[1] = sub_10025565C;
    v8 = v0[9];
    v7 = v0[10];
    v9 = v0[8];

    sub_1001C1044(v8, v7);
  }
}

uint64_t sub_10025565C()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v7 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_100255C44;
  }

  else
  {
    v5 = *(v2 + 128);

    v4 = sub_100255778;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100255778()
{
  v24 = v0;
  if (qword_1005A80E8 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[9];
  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF88);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[13];
  v9 = v0[14];
  v11 = v0[12];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v12 = 136446723;
    *(v12 + 4) = sub_10000D01C(0xD000000000000021, 0x80000001004E5D80, &v23);
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    sub_100009488(&qword_1005ADD18, &type metadata accessor for URL);
    v13 = dispatch thunk of CustomStringConvertible.description.getter();
    v15 = v14;
    (*(v10 + 8))(v9, v11);
    v16 = sub_10000D01C(v13, v15, &v23);

    *(v12 + 24) = v16;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s accepted url: %{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v17 = sub_10004CBC0(v0[15], v0[15] < 5, 0, 0);
  sub_10001157C(v17, v18, v19);

  v20 = v0[14];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100255A3C()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v7 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v4 = sub_100255BCC;
  }

  else
  {
    v5 = *(v2 + 160);

    v4 = sub_100255B58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100255B58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 112);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100255BCC()
{
  v2 = v0[19];
  v1 = v0[20];

  v3 = v0[2];

  v4 = v0[22];
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}