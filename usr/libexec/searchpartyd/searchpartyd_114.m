uint64_t sub_100BEE208(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return _swift_task_switch(sub_100BEE228, 0, 0);
}

uint64_t sub_100BEE228()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100BEE2E4, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100BEE2E4()
{
  v1 = v0[7];
  sub_100BD8D08(v0[6]);
  v0[8] = 0;
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100BEE3A0()
{
  v1 = v0[7];

  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v2 = v0[8];
  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_1016B7860);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[8];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error in prox card storing: %{public}@", v8, 0xCu);
    sub_10000B3A8(v9, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_100BEE578()
{
  v2 = *(type metadata accessor for DiscoveryState.Mode(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100BCD23C(v4, v0 + v3);
}

uint64_t sub_100BEE6A8()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B7860);
  v1 = sub_1000076D4(v0, qword_1016B7860);
  if (qword_101694D40 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BCD0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100BEE800(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
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

uint64_t sub_100BEE9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1000BC4D4(&qword_1016B7D68, &qword_1013DD910);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100BEEAB8, 0, 0);
}

uint64_t sub_100BEEAB8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[4], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_100BF4430;
  v9 = v0[2];

  return unsafeBlocking<A>(_:)(v9, sub_100BF2310, v6, &type metadata for () + 8);
}

uint64_t sub_100BEEC00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1000BC4D4(&qword_1016B7E30, &qword_1013DDC30);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100BEECD8, 0, 0);
}

uint64_t sub_100BEECD8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[4], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_100BF4430;
  v9 = v0[2];

  return unsafeBlocking<A>(_:)(v9, sub_100BF3E74, v6, &type metadata for () + 8);
}

uint64_t sub_100BEEE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_1000BC4D4(&qword_1016B7DC0, &qword_1013DDA28);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v5[7] = *(v7 + 64);
  v5[8] = swift_task_alloc();

  return _swift_task_switch(sub_100BEEEF8, 0, 0);
}

uint64_t sub_100BEEEF8()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  (*(v3 + 16))(v1, v0[4], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(_:)[1];

  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_100ABD09C;
  v9 = v0[2];

  return unsafeBlocking<A>(_:)(v9, sub_100BF2FE8, v6, &type metadata for () + 8);
}

uint64_t sub_100BEF040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B7D68, &qword_1013DD910);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a1 + 16);
  (*(v5 + 16))(aBlock - v7, a2, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  (*(v5 + 32))(v11 + v10, v8, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100BF2338;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1000D2FB0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10164C560;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100BEF26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B7E30, &qword_1013DDC30);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a1 + 16);
  (*(v5 + 16))(aBlock - v7, a2, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  (*(v5 + 32))(v11 + v10, v8, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100BF3F5C;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10164CB28;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100BEF498(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B7DC0, &qword_1013DDA28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a1 + 16);
  (*(v5 + 16))(aBlock - v7, a2, v4);
  v10 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  (*(v5 + 32))(v11 + v10, v8, v4);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100BF3094;
  *(v12 + 24) = v11;
  aBlock[4] = sub_10040B9F8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013FE14;
  aBlock[3] = &unk_10164C7E0;
  v13 = _Block_copy(aBlock);

  dispatch_sync(v9, v13);
  _Block_release(v13);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100BEF6C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *(a1 + 32);

  sub_1000BC4D4(a3, a4);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_100BEF73C()
{
  result = qword_1016B7C10;
  if (!qword_1016B7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7C10);
  }

  return result;
}

Swift::Int sub_100BEF790(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for Device();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for Device() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100BEFCA0(v8, v9, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100BEF8BC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100BEF8BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = type metadata accessor for RSSIValue();
  v8 = *(v61 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v61);
  v60 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v59 = &v41[-v12];
  v13 = type metadata accessor for Device();
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v51 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __chkstk_darwin(v15);
  v58 = &v41[-v18];
  result = __chkstk_darwin(v17);
  v57 = &v41[-v21];
  v43 = a2;
  if (a3 != a2)
  {
    v23 = *(v20 + 16);
    v22 = v20 + 16;
    v24 = *a4;
    v25 = *(v22 + 56);
    v53 = (v8 + 8);
    v54 = v23;
    v52 = (v22 - 8);
    v55 = v13;
    v56 = v22;
    v26 = v24 + v25 * (a3 - 1);
    v48 = -v25;
    v49 = (v22 + 16);
    v27 = a1 - a3;
    v50 = v24;
    v42 = v25;
    v28 = v24 + v25 * a3;
LABEL_5:
    v46 = v26;
    v47 = a3;
    v44 = v28;
    v45 = v27;
    v62 = v27;
    while (1)
    {
      v29 = v57;
      v30 = v54;
      v54(v57, v28, v13);
      v31 = v58;
      v30(v58, v26, v13);
      v32 = v59;
      Device.rssi.getter();
      v33 = v60;
      Device.rssi.getter();
      sub_100BCA23C(&qword_1016B7DA8, 255, &type metadata accessor for RSSIValue);
      v34 = v61;
      v63 = dispatch thunk of static Comparable.< infix(_:_:)();
      v35 = *v53;
      v36 = v33;
      v13 = v55;
      (*v53)(v36, v34);
      v35(v32, v34);
      v37 = *v52;
      (*v52)(v31, v13);
      result = v37(v29, v13);
      if ((v63 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v26 = v46 + v42;
        v27 = v45 - 1;
        v28 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v28, v13);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v26, v39, v13);
      v26 += v48;
      v28 += v48;
      if (__CFADD__(v62++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100BEFCA0(unint64_t *a1, uint64_t a2, void (**a3)(void), unint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v156 = type metadata accessor for RSSIValue();
  v8 = *(v156 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v156);
  v155 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v154 = &v129 - v12;
  v13 = type metadata accessor for Device();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v136 = &v129 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v146 = &v129 - v19;
  v20 = __chkstk_darwin(v18);
  v153 = &v129 - v21;
  result = __chkstk_darwin(v20);
  v157 = &v129 - v23;
  v24 = a3[1];
  if (v24 < 1)
  {
    v27 = a3;
    v26 = _swiftEmptyArrayStorage;
LABEL_95:
    a4 = *v132;
    if (!*v132)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_127:
      result = sub_100B31E68(v26);
      v26 = result;
    }

    v160 = v26;
    v124 = *(v26 + 16);
    if (v124 >= 2)
    {
      while (*v27)
      {
        v125 = v26;
        v26 = *(v26 + 16 * v124);
        v126 = v125;
        v127 = *&v125[16 * v124 + 24];
        sub_100BF0920(*v27 + v14[9] * v26, *v27 + v14[9] * *&v125[16 * v124 + 16], *v27 + v14[9] * v127, a4);
        if (v5)
        {
        }

        if (v127 < v26)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_100B31E68(v126);
        }

        if (v124 - 2 >= *(v126 + 2))
        {
          goto LABEL_121;
        }

        v128 = &v126[16 * v124];
        *v128 = v26;
        v128[1] = v127;
        v160 = v126;
        result = sub_100B31DDC(v124 - 1);
        v26 = v160;
        v124 = *(v160 + 16);
        if (v124 <= 1)
        {
        }
      }

      goto LABEL_131;
    }
  }

  v130 = a4;
  v25 = 0;
  v151 = (v8 + 8);
  v152 = v14 + 2;
  v150 = (v14 + 1);
  v148 = (v14 + 4);
  v26 = _swiftEmptyArrayStorage;
  v27 = a3;
  v134 = a3;
  v149 = v13;
  v141 = v14;
  while (1)
  {
    if (v25 + 1 >= v24)
    {
      v45 = v25 + 1;
    }

    else
    {
      v143 = v24;
      v131 = v26;
      v28 = *v27;
      v29 = v14[9];
      v30 = v25;
      v133 = v25;
      v31 = v28 + v29 * (v25 + 1);
      v32 = v29;
      v158 = v29;
      v159 = v28;
      v33 = v28;
      v34 = v14[2];
      v34();
      v35 = v33 + v32 * v30;
      v36 = v153;
      v145 = v34;
      (v34)(v153, v35, v13);
      v37 = v154;
      Device.rssi.getter();
      v38 = v155;
      Device.rssi.getter();
      v39 = sub_100BCA23C(&qword_1016B7DA8, 255, &type metadata accessor for RSSIValue);
      v40 = v156;
      v144 = v39;
      LODWORD(v147) = dispatch thunk of static Comparable.< infix(_:_:)();
      v41 = *v151;
      (*v151)(v38, v40);
      v140 = v41;
      v41(v37, v40);
      v42 = v141[1];
      a4 = v150;
      v42(v36, v13);
      v139 = v42;
      result = (v42)(v157, v13);
      v43 = v133 + 2;
      v44 = v159 + v158 * (v133 + 2);
      while (1)
      {
        v45 = v143;
        if (v143 == v43)
        {
          break;
        }

        v46 = v157;
        v47 = v145;
        (v145)(v157, v44, v13);
        v48 = v153;
        (v47)(v153, v31, v13);
        v49 = v154;
        Device.rssi.getter();
        v50 = v155;
        Device.rssi.getter();
        v51 = v156;
        v52 = dispatch thunk of static Comparable.< infix(_:_:)();
        v142 = v5;
        LODWORD(v159) = v52 & 1;
        v53 = v140;
        (v140)(v50, v51);
        v54 = v49;
        v13 = v149;
        v53(v54, v51);
        a4 = v150;
        v55 = v139;
        (v139)(v48, v13);
        result = v55(v46, v13);
        ++v43;
        v44 += v158;
        v31 += v158;
        v5 = v142;
        if ((v147 & 1) != v159)
        {
          v45 = v43 - 1;
          break;
        }
      }

      v27 = v134;
      v14 = v141;
      v26 = v131;
      v25 = v133;
      if (v147)
      {
        if (v45 < v133)
        {
          goto LABEL_124;
        }

        if (v133 < v45)
        {
          a4 = v158 * (v45 - 1);
          v56 = v45;
          v57 = v45 * v158;
          v143 = v45;
          v58 = v133 * v158;
          do
          {
            if (v25 != --v56)
            {
              v59 = *v27;
              if (!v59)
              {
                goto LABEL_130;
              }

              v159 = *v148;
              v159(v136, v59 + v58, v13);
              if (v58 < a4 || v59 + v58 >= v59 + v57)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v58 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v159)(v59 + a4, v136, v13);
              v27 = v134;
            }

            ++v25;
            a4 -= v158;
            v57 -= v158;
            v58 += v158;
          }

          while (v25 < v56);
          v14 = v141;
          v26 = v131;
          v25 = v133;
          v45 = v143;
        }
      }
    }

    v60 = v27[1];
    if (v45 < v60)
    {
      if (__OFSUB__(v45, v25))
      {
        goto LABEL_123;
      }

      if (v45 - v25 < v130)
      {
        if (__OFADD__(v25, v130))
        {
          goto LABEL_125;
        }

        if (v25 + v130 >= v60)
        {
          a4 = v27[1];
        }

        else
        {
          a4 = v25 + v130;
        }

        if (a4 < v25)
        {
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (v45 != a4)
        {
          break;
        }
      }
    }

    a4 = v45;
    if (v45 < v25)
    {
      goto LABEL_122;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    v137 = a4;
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v26 + 16) + 1, 1, v26);
      v26 = result;
    }

    a4 = *(v26 + 16);
    v61 = *(v26 + 24);
    v62 = a4 + 1;
    if (a4 >= v61 >> 1)
    {
      result = sub_100A5B430((v61 > 1), a4 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 16) = v62;
    v63 = v26 + 16 * a4;
    v64 = v137;
    *(v63 + 32) = v25;
    *(v63 + 40) = v64;
    if (!*v132)
    {
      goto LABEL_132;
    }

    if (a4)
    {
      v14 = *v132;
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v26 + 32);
          v67 = *(v26 + 40);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_53:
          if (v69)
          {
            goto LABEL_111;
          }

          v82 = (v26 + 16 * v62);
          v84 = *v82;
          v83 = v82[1];
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_114;
          }

          v88 = (v26 + 32 + 16 * v65);
          v90 = *v88;
          v89 = v88[1];
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_117;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_118;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v92 = (v26 + 16 * v62);
        v94 = *v92;
        v93 = v92[1];
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_67:
        if (v87)
        {
          goto LABEL_113;
        }

        v95 = v26 + 16 * v65;
        v97 = *(v95 + 32);
        v96 = *(v95 + 40);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_116;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_74:
        a4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (!*v27)
        {
          goto LABEL_129;
        }

        v103 = *(v26 + 32 + 16 * a4);
        v104 = *(v26 + 32 + 16 * v65 + 8);
        sub_100BF0920(*v27 + v141[9] * v103, *v27 + v141[9] * *(v26 + 32 + 16 * v65), *v27 + v141[9] * v104, v14);
        if (v5)
        {
        }

        if (v104 < v103)
        {
          goto LABEL_107;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_100B31E68(v26);
        }

        if (a4 >= *(v26 + 16))
        {
          goto LABEL_108;
        }

        v105 = v26 + 16 * a4;
        *(v105 + 32) = v103;
        *(v105 + 40) = v104;
        v160 = v26;
        result = sub_100B31DDC(v65);
        v26 = v160;
        v62 = *(v160 + 16);
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = v26 + 32 + 16 * v62;
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_109;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_110;
      }

      v77 = (v26 + 16 * v62);
      v79 = *v77;
      v78 = v77[1];
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_112;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_115;
      }

      if (v81 >= v73)
      {
        v99 = (v26 + 32 + 16 * v65);
        v101 = *v99;
        v100 = v99[1];
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_119;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v24 = v27[1];
    v25 = v137;
    v14 = v141;
    if (v137 >= v24)
    {
      goto LABEL_95;
    }
  }

  v131 = v26;
  v142 = v5;
  v106 = *v27;
  v107 = v14[9];
  v147 = v14[2];
  v108 = v106 + v107 * (v45 - 1);
  v144 = -v107;
  v133 = v25;
  v109 = (v25 - v45);
  v145 = v106;
  v135 = v107;
  v110 = v106 + v45 * v107;
  v137 = a4;
LABEL_86:
  v143 = v45;
  v138 = v110;
  v139 = v109;
  v140 = v108;
  v111 = v109;
  while (1)
  {
    v158 = v111;
    v112 = v157;
    v113 = v147;
    v147(v157, v110, v13);
    v114 = v153;
    v113(v153, v108, v13);
    v115 = v154;
    Device.rssi.getter();
    v116 = v155;
    Device.rssi.getter();
    sub_100BCA23C(&qword_1016B7DA8, 255, &type metadata accessor for RSSIValue);
    v117 = v156;
    LODWORD(v159) = dispatch thunk of static Comparable.< infix(_:_:)();
    v14 = v151;
    v118 = *v151;
    v119 = v116;
    v13 = v149;
    (*v151)(v119, v117);
    v118(v115, v117);
    v120 = *v150;
    (*v150)(v114, v13);
    result = v120(v112, v13);
    if ((v159 & 1) == 0)
    {
LABEL_85:
      v45 = v143 + 1;
      v108 = &v140[v135];
      v109 = v139 - 1;
      v110 = &v138[v135];
      a4 = v137;
      if (v143 + 1 != v137)
      {
        goto LABEL_86;
      }

      v5 = v142;
      v27 = v134;
      v26 = v131;
      v25 = v133;
      if (v137 < v133)
      {
        goto LABEL_122;
      }

      goto LABEL_33;
    }

    v121 = v158;
    if (!v145)
    {
      break;
    }

    v122 = *v148;
    v14 = v146;
    (*v148)(v146, v110, v13);
    swift_arrayInitWithTakeFrontToBack();
    v122(v108, v14, v13);
    v108 += v144;
    v110 += v144;
    v123 = __CFADD__(v121, 1);
    v111 = (v121 + 1);
    if (v123)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
  return result;
}

uint64_t sub_100BF0920(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v66 = type metadata accessor for RSSIValue();
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v66);
  v67 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v53 - v11;
  v70 = type metadata accessor for Device();
  v12 = *(v70 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v70);
  v64 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v14);
  v71 = &v53 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v20 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_62;
  }

  v21 = (a2 - a1) / v19;
  v75 = a1;
  v74 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v23;
    if (v23 >= 1)
    {
      v38 = -v19;
      v58 = (v7 + 8);
      v59 = (v12 + 16);
      v56 = (v12 + 8);
      v57 = a4;
      v39 = v37;
      v69 = a1;
      v60 = v38;
      do
      {
        v54 = v37;
        v40 = a2;
        v41 = v38 + a2;
        v61 = v40;
        v62 = v41;
        while (1)
        {
          v42 = v72;
          if (v40 <= a1)
          {
            v75 = v40;
            v73 = v54;
            goto LABEL_59;
          }

          v55 = v37;
          v72 += v38;
          v43 = v38 + v39;
          v44 = *v59;
          v45 = v70;
          v68 = v42;
          v44();
          v46 = v64;
          (v44)(v64, v41, v45);
          v47 = v65;
          Device.rssi.getter();
          v48 = v67;
          Device.rssi.getter();
          sub_100BCA23C(&qword_1016B7DA8, 255, &type metadata accessor for RSSIValue);
          v49 = v66;
          LODWORD(v63) = dispatch thunk of static Comparable.< infix(_:_:)();
          v50 = *v58;
          (*v58)(v48, v49);
          v50(v47, v49);
          v51 = *v56;
          (*v56)(v46, v45);
          v51(v71, v45);
          if (v63)
          {
            break;
          }

          v37 = v43;
          v52 = v43;
          if (v68 < v39 || v72 >= v39)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v69;
            v38 = v60;
          }

          else
          {
            a1 = v69;
            v38 = v60;
            if (v68 != v39)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v37;
          v40 = v61;
          v41 = v62;
          if (v52 <= v57)
          {
            a2 = v61;
            goto LABEL_58;
          }
        }

        if (v68 < v61 || v72 >= v61)
        {
          a2 = v62;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v69;
          v37 = v55;
          v38 = v60;
        }

        else
        {
          a2 = v62;
          a1 = v69;
          v37 = v55;
          v38 = v60;
          if (v68 != v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v39 > v57);
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v22;
    v73 = a4 + v22;
    if (v22 >= 1 && a2 < v72)
    {
      v25 = *(v12 + 16);
      v59 = (v7 + 8);
      v60 = v25;
      v61 = v19;
      v62 = v12 + 16;
      v58 = (v12 + 8);
      do
      {
        v69 = a1;
        v26 = v70;
        v27 = v60;
        v60();
        v28 = v64;
        (v27)(v64, a4, v26);
        v29 = v65;
        Device.rssi.getter();
        v30 = v67;
        Device.rssi.getter();
        sub_100BCA23C(&qword_1016B7DA8, 255, &type metadata accessor for RSSIValue);
        v31 = v66;
        LODWORD(v68) = dispatch thunk of static Comparable.< infix(_:_:)();
        v32 = *v59;
        (*v59)(v30, v31);
        (v32)(v29, v31);
        v33 = *v58;
        (*v58)(v28, v26);
        v33(v71, v26);
        if (v68)
        {
          v34 = v61;
          v35 = v69;
          if (v69 < a2 || v69 >= a2 + v61)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v69 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v34;
        }

        else
        {
          v34 = v61;
          v36 = a4 + v61;
          v35 = v69;
          if (v69 < a4 || v69 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v69 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = v36;
          a4 += v34;
        }

        a1 = v35 + v34;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_10060AC18(&v75, &v74, &v73);
  return 1;
}

uint64_t sub_100BF1088()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BDB0EC(v2, v3);
}

uint64_t sub_100BF1130(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100BDBB80(a1, v1);
}

uint64_t sub_100BF11C8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016B7C40, &unk_1013DD720) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100014744;

  return sub_100BD4DCC(a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_100BF1308(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100BD5168(a1, v5, v4);
}

uint64_t sub_100BF13B4()
{
  v2 = *(sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100BDBE98(v4, v0 + v3);
}

void sub_100BF14C8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v28 = *(v2 - 8);
  v3 = *(v28 + 64);
  __chkstk_darwin(v2);
  v5 = &v25[-v4];
  v6 = type metadata accessor for UUID();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Device();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_101694D50 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000076D4(v15, qword_1016B7860);
  (*(v11 + 16))(v14, a1, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = v17;
    v19 = v18;
    v27 = swift_slowAlloc();
    v31 = v27;
    *v19 = 136315651;
    *(v19 + 4) = sub_1000136BC(0xD00000000000001ELL, 0x800000010136EED0, &v31);
    *(v19 + 12) = 2160;
    *(v19 + 14) = 1752392040;
    *(v19 + 22) = 2081;
    Device.id.getter();
    Identifier.id.getter();
    (*(v28 + 8))(v5, v2);
    sub_100BCA23C(&qword_101696930, 255, &type metadata accessor for UUID);
    v20 = v30;
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    v23 = v22;
    (*(v29 + 8))(v9, v20);
    (*(v11 + 8))(v14, v10);
    v24 = sub_1000136BC(v21, v23, &v31);

    *(v19 + 24) = v24;
    _os_log_impl(&_mh_execute_header, v16, v26, "%s Discovered device %{private,mask.hash}s", v19, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_100BF18E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_100BF1928()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BE5540(v2, v3, v4);
}

uint64_t sub_100BF19D0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100BEA480(v0);
}

uint64_t sub_100BF1A60()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100BE9968(v2);
}

uint64_t sub_100BF1AF8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ObservationStreams() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100BE611C(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_100BF1C30()
{
  v1 = type metadata accessor for ObservationStreams();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 2);
  swift_unknownObjectRelease();
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  (*(v2 + 8))(&v0[v3], v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100BF1D10(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ObservationStreams() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100014744;

  return sub_100BE7ED4(a1, v7, v8, v9, v10, v1 + v6);
}

uint64_t sub_100BF1E48(uint64_t a1)
{
  v4 = *(type metadata accessor for AnalyticsEvent() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100BEB5F4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100BF1F68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_10116632C(v2, v3);
}

uint64_t sub_100BF200C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_1011656A4(v0);
}

uint64_t sub_100BF209C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100BEAD34(v2);
}

uint64_t sub_100BF2134()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100014744;

  return sub_100BC1E34(v0);
}

uint64_t sub_100BF220C(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016B7D68, &qword_1013DD910) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100BEE9E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100BF234C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BC28D8(v4, v0 + v3);
}

uint64_t sub_100BF2424(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100BC2DA0(a1, v4);
}

uint64_t sub_100BF24C0()
{
  v2 = *(sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0) - 8);
  v3 = (*(v2 + 80) + 65) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100BC35CC(v4, v0 + 24, v0 + v3);
}

uint64_t sub_100BF25D8(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100BC4FB8(a1, v5, v4);
}

uint64_t sub_100BF2680(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100BC4B48(a1, v4);
}

uint64_t sub_100BF271C(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100014744;

  return sub_100BED8C4(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_100BF284C()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100BEDB00(v4, v0 + v3);
}

uint64_t sub_100BF2954(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100BC535C(a1, v4, v5, v7);
}

uint64_t sub_100BF2A14()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BD6B18(v2, v3);
}

uint64_t sub_100BF2AC0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1001BA6C8;

  return sub_100BD897C(a1, v1);
}

uint64_t sub_100BF2B58(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100BC7B08(a1, v5);
}

uint64_t sub_100BF2C04()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100BF2CD4()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100BEE208(v4, v0 + v3);
}

uint64_t sub_100BF2DDC()
{
  v2 = *(type metadata accessor for DiscoveryState.Mode(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014650;

  return sub_100BCD23C(v4, v0 + v3);
}

uint64_t sub_100BF2EE4(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016B7DC0, &qword_1013DDA28) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100BEEE20(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100BF3010(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v4 = *(sub_1000BC4D4(a1, a2) - 8);
  v5 = *(v3 + 16);
  v6 = v3 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a3(v5, v6);
}

uint64_t sub_100BF311C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100BBB9A0(a1, v1);
}

uint64_t sub_100BF31B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBD65C();
}

uint64_t sub_100BF3254()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBEE60();
}

uint64_t sub_100BF32F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100BBF5C4();
}

uint64_t sub_100BF338C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100BC1190(a1, v1);
}

uint64_t sub_100BF3428(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100BC12C0(a1, v1);
}

uint64_t sub_100BF34C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100BCB6C8(v2, v3);
}

uint64_t sub_100BF355C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100BCB93C(a1, v5);
}

uint64_t sub_100BF3604(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100014744;

  return sub_100BCC404(a1, v4, v5, v7);
}

uint64_t sub_100BF36C4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100BD92B8(v2);
}

uint64_t sub_100BF375C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100BC18D0(v2, v3);
}

uint64_t sub_100BF37F4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100014744;

  return sub_100BC1AE0(a1, v5);
}

uint64_t sub_100BF389C()
{
  v1 = sub_1000BC4D4(&unk_1016B7C30, &qword_1013DBFD0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100BF3978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BF39E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BF3A48(uint64_t a1)
{
  v4 = *(type metadata accessor for Device() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100BDCC94(a1, v6, v1 + v5);
}

uint64_t sub_100BF3B2C(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unknownObjectRelease();
  a1(*(v2 + 32));

  return _swift_deallocObject(v2, a2);
}

uint64_t sub_100BF3B88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100014744;

  return sub_100BDEEE0(a1, v4, v5, v6);
}

uint64_t sub_100BF3C3C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014744;

  return sub_100BDF434(v2);
}

uint64_t sub_100BF3CD4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_100014744;

  return sub_100BDCAB4(a1, v1);
}

uint64_t sub_100BF3D70(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016B7E30, &qword_1013DDC30) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100BEEC00(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100BF3E9C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_1000BC4D4(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(v2 + 16);

  (*(v4 + 8))(v2 + v5, v3);

  return _swift_deallocObject(v2, v5 + v6);
}

uint64_t sub_100BF3F70()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100014744;

  return sub_100BCAE24(v4, v0 + v3, v5);
}

unint64_t sub_100BF4078()
{
  result = qword_1016A6DC0;
  if (!qword_1016A6DC0)
  {
    sub_100008BB8(255, &qword_1016B7E40, SPAccessoryPairingConfiguration_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016A6DC0);
  }

  return result;
}

uint64_t sub_100BF40E0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(v1 + 16);

  (*(v3 + 8))(v1 + v4, v2);

  return _swift_deallocObject(v1, v4 + v5);
}

uint64_t sub_100BF41AC()
{
  v2 = *(type metadata accessor for UUID() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100014744;

  return sub_100BCA648(v4, v0 + v3);
}

uint64_t sub_100BF4284()
{
  v1 = *(type metadata accessor for DiscoveryState.Mode(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(v0 + 16);

  v5 = sub_1000BC4D4(&unk_1016B7BF0, &qword_1013B4AF0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2, 4, v5))
  {
    v6 = type metadata accessor for UUID();
    (*(*(v6 - 8) + 8))(v0 + v2, v6);
  }

  return _swift_deallocObject(v0, ((v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
}

unint64_t sub_100BF43C4()
{
  result = qword_1016B7E50;
  if (!qword_1016B7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B7E50);
  }

  return result;
}

uint64_t sub_100BF4448(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_100BF44DC;

  return daemon.getter();
}

uint64_t sub_100BF44DC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100BFADB4(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100BFADB4(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100BF46C0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100BF46C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 56);
  v6 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v7 = sub_100BFAEC8;
  }

  else
  {
    v8 = v3[9];

    v7 = sub_100BF4800;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100BF4800()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 104) = qword_10177B348;

  return _swift_task_switch(sub_100BF489C, 0, 0);
}

uint64_t sub_100BF489C()
{
  v1 = *(v0 + 104);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_100BF4960;
  v4 = *(v0 + 104);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000D2BE0, v4, &type metadata for Configuration);
}

uint64_t sub_100BF4960()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100BF4A78, 0, 0);
}

uint64_t sub_100BF4A78()
{
  v1 = v0[7];
  v0[15] = v0[2];
  return _swift_task_switch(sub_100BF4A9C, v1, 0);
}

uint64_t sub_100BF4A9C()
{
  v1 = v0[11];
  v0[16] = sub_10107355C(v0[15]);

  return _swift_task_switch(sub_100BF4B18, v1, 0);
}

uint64_t sub_100BF4B18()
{
  v1 = *(v0 + 88);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_100BF4BF4;
  v4 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100111B08, v4, &type metadata for Int);
}

uint64_t sub_100BF4BF4()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_100BF4D0C, v2, 0);
}

uint64_t sub_100BF4D0C()
{
  v1 = v0[7];
  v0[18] = v0[3];
  return _swift_task_switch(sub_100BFAEC4, v1, 0);
}

uint64_t sub_100BF4D30(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = async function pointer to daemon.getter[1];
  v4 = swift_task_alloc();
  v2[8] = v4;
  *v4 = v2;
  v4[1] = sub_100BF4DC4;

  return daemon.getter();
}

uint64_t sub_100BF4DC4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v12 = *v1;
  *(v3 + 72) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for BeaconStoreActor();
  v9 = sub_100BFADB4(&qword_1016AA400, 255, &type metadata accessor for Daemon);
  v10 = sub_100BFADB4(&qword_101698D20, 255, type metadata accessor for BeaconStoreActor);
  *v6 = v12;
  v6[1] = sub_100BF4FA8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100BF4FA8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v5 = *(*v2 + 56);
  v6 = *v2;
  v3[11] = a1;
  v3[12] = v1;

  if (v1)
  {
    v7 = sub_100BF581C;
  }

  else
  {
    v8 = v3[9];

    v7 = sub_100BF50E8;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100BF50E8()
{
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  *(v0 + 104) = qword_10177B348;

  return _swift_task_switch(sub_100BF5184, 0, 0);
}

uint64_t sub_100BF5184()
{
  v1 = *(v0 + 104);
  v2 = async function pointer to unsafeBlocking<A>(_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_100BF5248;
  v4 = *(v0 + 104);

  return unsafeBlocking<A>(_:)(v0 + 16, sub_1000DFF78, v4, &type metadata for Configuration);
}

uint64_t sub_100BF5248()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_100BF5360, 0, 0);
}

uint64_t sub_100BF5360()
{
  v1 = v0[7];
  v0[15] = v0[2];
  return _swift_task_switch(sub_100BF5384, v1, 0);
}

uint64_t sub_100BF5384()
{
  v1 = v0[11];
  v0[16] = sub_10107355C(v0[15]);

  return _swift_task_switch(sub_100BF5400, v1, 0);
}

uint64_t sub_100BF5400()
{
  v1 = *(v0 + 88);
  v2 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v3 = swift_task_alloc();
  *(v0 + 136) = v3;
  *v3 = v0;
  v3[1] = sub_100BF54DC;
  v4 = *(v0 + 88);

  return unsafeBlocking<A>(context:_:)(v0 + 24, 0xD000000000000010, 0x800000010134A8C0, sub_100BFAECC, v4, &type metadata for Int);
}

uint64_t sub_100BF54DC()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 88);
  v4 = *v0;

  return _swift_task_switch(sub_100BF55F4, v2, 0);
}

uint64_t sub_100BF55F4()
{
  v1 = v0[7];
  v0[18] = v0[3];
  return _swift_task_switch(sub_100BF5618, v1, 0);
}

uint64_t sub_100BF5618()
{
  v1 = v0[18];
  v2 = v0[6];
  v3 = __OFADD__(v1, v2);
  v4 = v1 + v2;
  if (v3)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  if (v0[16] >= v4)
  {
    v14 = v0[11];

    v13 = v0[1];
    goto LABEL_8;
  }

  if (qword_1016950D0 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v5 = type metadata accessor for Logger();
  sub_1000076D4(v5, qword_10177C418);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[18];
    v9 = v0[16];
    v10 = swift_slowAlloc();
    *v10 = 134218240;
    *(v10 + 4) = v9;
    *(v10 + 12) = 2048;
    *(v10 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v6, v7, "Pairing limit reached: %ld. Current count: %ld.", v10, 0x16u);
  }

  v11 = v0[11];

  type metadata accessor for SPPairingSessionError(0);
  v0[5] = 17;
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = v0[4];
  swift_willThrow();

  v13 = v0[1];
LABEL_8:

  return v13();
}

uint64_t sub_100BF581C()
{
  v1 = v0[9];

  v2 = v0[12];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100BF5880(uint64_t a1, uint64_t a2)
{
  v3[150] = v2;
  v3[149] = a2;
  v3[148] = a1;
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3[151] = v4;
  v5 = *(v4 - 8);
  v3[152] = v5;
  v6 = *(v5 + 64) + 15;
  v3[153] = swift_task_alloc();
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3[154] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[155] = swift_task_alloc();
  v9 = *(*(type metadata accessor for DispatchQoS() - 8) + 64) + 15;
  v3[156] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v3[157] = swift_task_alloc();
  v11 = type metadata accessor for FMNAccountType();
  v3[158] = v11;
  v12 = *(v11 - 8);
  v3[159] = v12;
  v13 = *(v12 + 64) + 15;
  v3[160] = swift_task_alloc();
  v14 = type metadata accessor for AirPodsLEPairingLockAckEndPoint();
  v3[161] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v3[162] = swift_task_alloc();
  v3[163] = swift_task_alloc();

  return _swift_task_switch(sub_100BF5A74, v2, 0);
}

uint64_t sub_100BF5A74()
{
  sub_10001F280(v0[149], (v0 + 138));
  sub_1000BC4D4(&qword_101698620, &unk_10138FF80);
  if (!swift_dynamicCast())
  {
    v28 = type metadata accessor for PairingValidatorError();
    sub_100BFADB4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, enum case for PairingValidatorError.invalidAckRequestType(_:), v28);
    swift_willThrow();
LABEL_9:
    v30 = v0[163];
    v31 = v0[162];
    v32 = v0[160];
    v33 = v0[157];
    v34 = v0[156];
    v35 = v0[155];
    v36 = v0[153];

    v37 = v0[1];

    return v37();
  }

  v1 = v0[163];
  v2 = v0[162];
  v3 = v0[161];
  v4 = v0[160];
  v5 = v0[159];
  v6 = v0[158];
  v7 = v0[157];
  memcpy(v0 + 2, v0 + 36, 0x110uLL);
  v8 = enum case for FMNAccountType.w2Accessory(_:);
  v9 = *(v5 + 104);
  v9(v4, enum case for FMNAccountType.w2Accessory(_:), v6);
  type metadata accessor for AccountURLComponents();
  swift_allocObject();
  *v1 = sub_1010B32C8(v4);
  v9(v1 + *(v3 + 20), v8, v6);
  v10 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = type metadata accessor for FMNMockingPreferences();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v15 = type metadata accessor for ServerInteractionController(0);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  v18 = swift_allocObject();
  sub_100BFADFC(v1, v2, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  v0[164] = sub_10061FCDC(v2, v14, v18);
  sub_100164F7C((v0 + 2), (v0 + 70));
  v19 = sub_100BFA5FC((v0 + 2));
  v21 = v20;
  v0[165] = v19;
  v0[166] = v20;
  sub_100165224((v0 + 2));
  if (v21 >> 60 == 15)
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_1000076D4(v22, qword_10177C448);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Unable to generate BAA payload", v25, 2u);
    }

    v26 = v0[163];

    type metadata accessor for SPPairingSessionError(0);
    v0[144] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v27 = v0[143];
    swift_willThrow();

    sub_100165224((v0 + 2));
    sub_100BFAE64(v26, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
    goto LABEL_9;
  }

  v39 = v0[156];
  v40 = v0[155];
  v41 = v0[154];
  v42 = v0[153];
  v43 = v0[152];
  v51 = v0[151];
  sub_1000BC488();
  static DispatchQoS.unspecified.getter();
  v0[145] = _swiftEmptyArrayStorage;
  sub_100BFADB4(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1000BC4D4(&unk_101695580, &qword_101385D90);
  sub_1000BC51C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v43 + 104))(v42, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v51);
  v0[167] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v44 = type metadata accessor for DeviceIdentityUtility();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  v47 = swift_allocObject();
  sub_100164F7C((v0 + 2), (v0 + 104));
  sub_10002E98C(v19, v21);
  swift_defaultActor_initialize();
  v48 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v49 = type metadata accessor for Date();
  (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
  *(v47 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v47 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v47 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  v50 = swift_task_alloc();
  v0[168] = v50;
  *v50 = v0;
  v50[1] = sub_100BF616C;

  return sub_10028733C((v0 + 2), v19, v21, v47);
}

uint64_t sub_100BF616C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 1344);
  v6 = *(*v3 + 1200);
  v8 = *v3;
  v4[169] = a1;
  v4[170] = a2;
  v4[171] = a3;

  return _swift_task_switch(sub_100BF628C, v6, 0);
}

uint64_t sub_100BF628C()
{
  v1 = v0[169];
  if (v1)
  {
    v2 = v0[171];
    v3 = v0[170];
    v4 = v0[164];
    v5 = v0[150];
    v6 = v0[148];
    v7 = v0[169];

    sub_100017D5C(v3, v2);
    v8 = sub_1004FC0C0(v1, v3, v2, 0, v4);
    v0[172] = v8;
    sub_100165328(v1, v3, v2);
    v10 = sub_100BFADB4(&qword_1016B7F20, v9, type metadata accessor for ProximityPairingValidator);
    v11 = type metadata accessor for AirPodsLEPairingLockAckResponse();
    v6[3] = v11;
    v6[4] = sub_100BFADB4(&qword_1016985D8, 255, type metadata accessor for AirPodsLEPairingLockAckResponse);
    v12 = sub_1000280DC(v6);
    v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v14 = swift_task_alloc();
    v0[173] = v14;
    *v14 = v0;
    v14[1] = sub_100BF6674;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v12, v5, v10, 0x293A5F286B6361, 0xE700000000000000, sub_100BFAC4C, v8, v11);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_10177C448);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Could not create pairing ack request", v18, 2u);
    }

    v19 = v0[167];
    v20 = v0[166];
    v21 = v0[165];
    v22 = v0[164];
    v23 = v0[163];

    type metadata accessor for SPPairingSessionError(0);
    v0[147] = 6;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v24 = v0[146];
    swift_willThrow();

    sub_100006654(v21, v20);
    sub_100165224((v0 + 2));
    sub_100BFAE64(v23, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
    v25 = v0[163];
    v26 = v0[162];
    v27 = v0[160];
    v28 = v0[157];
    v29 = v0[156];
    v30 = v0[155];
    v31 = v0[153];

    v32 = v0[1];

    return v32();
  }
}

uint64_t sub_100BF6674()
{
  v2 = *v1;
  v3 = *(*v1 + 1384);
  v4 = *v1;
  *(*v1 + 1392) = v0;

  v5 = *(v2 + 1200);
  if (v0)
  {
    v6 = sub_100BF68EC;
  }

  else
  {
    v6 = sub_100BF67A0;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BF67A0()
{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[167];
  v6 = v0[166];
  v7 = v0[165];
  v8 = v0[164];
  v9 = v0[163];
  v10 = v0[162];
  v13 = v0[160];
  v14 = v0[157];
  v15 = v0[156];
  v16 = v0[155];
  v17 = v0[153];

  sub_100006654(v7, v6);
  sub_100165328(v4, v3, v2);
  sub_100165224((v0 + 2));
  sub_100BFAE64(v9, type metadata accessor for AirPodsLEPairingLockAckEndPoint);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100BF68EC()
{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  v4 = v0[169];
  v5 = v0[167];
  v6 = v0[166];
  v7 = v0[165];
  v8 = v0[164];
  v9 = v0[163];
  v10 = v0[148];

  sub_100006654(v7, v6);
  sub_100165328(v4, v3, v2);
  sub_100165224((v0 + 2));
  sub_100BFAE64(v9, type metadata accessor for AirPodsLEPairingLockAckEndPoint);
  sub_100101758(v10);
  v11 = v0[174];
  v12 = v0[163];
  v13 = v0[162];
  v14 = v0[160];
  v15 = v0[157];
  v16 = v0[156];
  v17 = v0[155];
  v18 = v0[153];

  v19 = v0[1];

  return v19();
}

uint64_t sub_100BF6A38(uint64_t a1)
{
  v14 = a1;
  v2 = sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v13 = *(v3 + 16);
  v13(&v11 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v12 = *(v3 + 32);
  v12(v8 + v7, v6, v2);
  Future.addFailure(block:)();

  v13(v6, v14, v2);
  v9 = swift_allocObject();
  v12(v9 + v7, v6, v2);
  Future.addSuccess(block:)();
}

uint64_t sub_100BF6C18()
{
  if (qword_1016950E0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177C448);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136446210;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v5 = String.init<A>(describing:)();
    v7 = sub_1000136BC(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, v1, v2, "Ack pairing failed. %{public}s", v3, 0xCu);
    sub_100007BAC(v4);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100BF6E38(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AirPodsLEPairingLockAckResponse();
  v5 = *(*(v4 - 1) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v47 - v9;
  v11 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v47 - v17;
  if (FMNServerInteractionController.FMNResponseFields.statusCode.getter() == 200)
  {
    v47[4] = a2;
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    v20 = sub_1000076D4(v19, qword_10177C448);
    (*(v12 + 16))(v18, a1, v11);
    v47[3] = v20;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v47[2] = a1;
      v24 = v23;
      v47[0] = swift_slowAlloc();
      v49 = v47[0];
      *v24 = 136446210;
      sub_100BFADB4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v25 = dispatch thunk of CustomStringConvertible.description.getter();
      v47[1] = v4;
      v26 = v8;
      v27 = v10;
      v29 = v28;
      (*(v12 + 8))(v18, v11);
      v30 = sub_1000136BC(v25, v29, &v49);
      v10 = v27;
      v8 = v26;

      *(v24 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Ack pairing success: %{public}s", v24, 0xCu);
      sub_100007BAC(v47[0]);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }

    v40 = type metadata accessor for JSONDecoder();
    v41 = *(v40 + 48);
    v42 = *(v40 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    v43 = FMNServerInteractionController.FMNResponseFields.data.getter();
    v45 = v44;
    sub_100BFADB4(&qword_101698600, 255, type metadata accessor for AirPodsLEPairingLockAckResponse);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100016590(v43, v45);
    sub_100BFADFC(v10, v8, type metadata accessor for AirPodsLEPairingLockAckResponse);
    sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
    CheckedContinuation.resume(returning:)();

    return sub_100BFAE64(v10, type metadata accessor for AirPodsLEPairingLockAckResponse);
  }

  else
  {
    if (qword_1016950E0 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177C448);
    (*(v12 + 16))(v16, a1, v11);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v49 = v35;
      *v34 = 136446210;
      sub_100BFADB4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v36 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v37;
      (*(v12 + 8))(v16, v11);
      v39 = sub_1000136BC(v36, v38, &v49);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "Ack pairing failed. Response %{public}s", v34, 0xCu);
      sub_100007BAC(v35);
    }

    else
    {

      (*(v12 + 8))(v16, v11);
    }

    type metadata accessor for SPPairingSessionError(0);
    v48 = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v48 = v49;
    sub_1000BC4D4(&qword_1016985F8, &unk_10138FF70);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_100BF766C(uint64_t a1, uint64_t a2)
{
  v3[97] = v2;
  v3[96] = a2;
  v3[95] = a1;
  return _swift_task_switch(sub_100BF7694, v2, 0);
}

uint64_t sub_100BF7694()
{
  sub_10001F280(v0[96], (v0 + 90));
  sub_1000BC4D4(&qword_101698650, &qword_10138FFB0);
  if (swift_dynamicCast())
  {
    v1 = v0[95];
    memcpy(v0 + 2, v0 + 46, 0x160uLL);
    v1[3] = type metadata accessor for AirPodsLEPairingLockCheckResponse();
    v1[4] = sub_100BFADB4(&qword_1016985E8, 255, type metadata accessor for AirPodsLEPairingLockCheckResponse);
    v2 = sub_1000280DC(v1);
    v3 = swift_task_alloc();
    v0[98] = v3;
    *v3 = v0;
    v3[1] = sub_10015E378;
    v4 = v0[97];

    return sub_100BF78B8(v2, (v0 + 2));
  }

  else
  {
    v6 = type metadata accessor for PairingValidatorError();
    sub_100BFADB4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
    swift_allocError();
    (*(*(v6 - 8) + 104))(v7, enum case for PairingValidatorError.invalidRequestType(_:), v6);
    swift_willThrow();
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100BF78B8(uint64_t a1, uint64_t a2)
{
  v3[274] = v2;
  v3[273] = a2;
  v3[272] = a1;
  v4 = *(*(sub_1000BC4D4(&qword_1016985F0, &unk_10139D780) - 8) + 64) + 15;
  v3[275] = swift_task_alloc();
  v5 = type metadata accessor for AirPodsLEPairingLockCheckEndPoint();
  v3[276] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[277] = swift_task_alloc();
  v3[278] = swift_task_alloc();

  return _swift_task_switch(sub_100BF7998, v2, 0);
}

id sub_100BF7998()
{
  static os_log_type_t.default.getter();
  if (qword_1016950C8 != -1)
  {
    swift_once();
  }

  v1 = v0[278];
  v2 = v0[277];
  v3 = v0[276];
  v4 = v0[275];
  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_101385D80;
  *(v5 + 56) = &type metadata for String;
  *(v5 + 64) = sub_100008C00();
  *(v5 + 32) = 0xD000000000000013;
  *(v5 + 40) = 0x800000010136F240;
  os_log(_:dso:log:_:_:)();

  v6 = enum case for FMNAccountType.w2Accessory(_:);
  v7 = type metadata accessor for FMNAccountType();
  (*(*(v7 - 8) + 104))(v1, v6, v7);
  *(v1 + *(v3 + 20)) = 0;
  v8 = type metadata accessor for SearchPartyURLSessionFactory(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = type metadata accessor for FMNMockingPreferences();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = FMNURLSessionFactory.init(mockSessionCreationBlock:preferences:)();
  v13 = type metadata accessor for ServerInteractionController(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  sub_100BFADFC(v1, v2, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  v0[279] = sub_10061F8C4(v2, v12, v16);
  result = [objc_opt_self() defaultStore];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = sub_100513CD8();

  if (!v19 || (v20 = sub_100513FCC(), v22 = v21, v19, !v22))
  {
    v25 = v0 + 266;
    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_1000076D4(v31, qword_10177BE78);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to retrieve masked identifier", v34, 2u);
    }

    v30 = v0[278];

    type metadata accessor for SPPairingSessionError(0);
    v0[267] = 27;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    goto LABEL_17;
  }

  v23 = sub_100BF9F54(v0[273]);
  v0[280] = v23;
  v0[281] = v24;
  if (v24 >> 60 == 15)
  {
    v25 = v0 + 268;

    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_1000076D4(v26, qword_10177BE78);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to generate BAA payload", v29, 2u);
    }

    v30 = v0[278];

    type metadata accessor for SPPairingSessionError(0);
    v0[269] = 26;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
LABEL_17:
    _BridgedStoredNSError.init(_:userInfo:)();
    v35 = *v25;
    swift_willThrow();

    sub_100BFAE64(v30, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
    v36 = v0[278];
    v37 = v0[277];
    v38 = v0[275];

    v39 = v0[1];

    return v39();
  }

  v40 = v23;
  v41 = v24;
  v42 = v0[273];
  v43 = type metadata accessor for DeviceIdentityUtility();
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  sub_100165278(v42, (v0 + 2));
  sub_10002E98C(v40, v41);
  swift_defaultActor_initialize();
  v47 = OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certExpiryDate;
  v48 = type metadata accessor for Date();
  (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
  *(v46 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_refKey) = 0;
  *(v46 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_certs) = _swiftEmptyArrayStorage;
  *(v46 + OBJC_IVAR____TtC12searchpartyd21DeviceIdentityUtility_signingType) = 9;
  v49 = swift_task_alloc();
  v0[282] = v49;
  *v49 = v0;
  v49[1] = sub_100BF807C;
  v50 = v0[273];

  return sub_100B60CB4(v50, v20, v22, v40, v41, v46);
}

uint64_t sub_100BF807C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *(*v3 + 2256);
  v6 = *(*v3 + 2192);
  v8 = *v3;
  v4[283] = a1;
  v4[284] = a2;
  v4[285] = a3;

  return _swift_task_switch(sub_100BF819C, v6, 0);
}

uint64_t sub_100BF819C()
{
  v83 = v0;
  v1 = v0[283];
  if (v1)
  {
    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v2 = v0[273];
    v3 = type metadata accessor for Logger();
    sub_1000076D4(v3, qword_10177BE78);
    sub_100165278(v2, (v0 + 46));
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    sub_1001652D4(v2);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[273];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v82[0] = v8;
      *v7 = 136315138;
      v9 = *(v6 + 136);
      v10 = *(v6 + 144);
      v11 = Data.description.getter();
      v13 = sub_1000136BC(v11, v12, v82);

      *(v7 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v4, v5, "serialNumber: %s", v7, 0xCu);
      sub_100007BAC(v8);
    }

    v14 = v0[273];
    sub_100165278(v14, (v0 + 90));
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    sub_1001652D4(v14);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = v0[273];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v82[0] = v19;
      *v18 = 136315138;
      v20 = *(v17 + 104);
      v21 = *(v17 + 112);
      v22 = Data.hexString.getter();
      v24 = sub_1000136BC(v22, v23, v82);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "ECID: %s", v18, 0xCu);
      sub_100007BAC(v19);
    }

    v25 = v0[273];
    sub_100165278(v25, (v0 + 134));
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    sub_1001652D4(v25);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = v0[273];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v82[0] = v30;
      *v29 = 136315138;
      v31 = *(v28 + 120);
      v32 = *(v28 + 128);
      v33 = Data.hexString.getter();
      v35 = sub_1000136BC(v33, v34, v82);

      *(v29 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v26, v27, "ChipId: %s", v29, 0xCu);
      sub_100007BAC(v30);
    }

    v36 = v0[273];
    sub_100165278(v36, (v0 + 178));
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    sub_1001652D4(v36);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = v0[273];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v82[0] = v41;
      *v40 = 136315138;
      v42 = *v39;
      v43 = v39[1];
      v44 = Data.hexString.getter();
      v46 = sub_1000136BC(v44, v45, v82);

      *(v40 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v37, v38, "H1 (hashed C2): %s", v40, 0xCu);
      sub_100007BAC(v41);
    }

    v47 = v0[273];
    sub_100165278(v47, (v0 + 222));
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    sub_1001652D4(v47);
    if (os_log_type_enabled(v48, v49))
    {
      v50 = v0[273];
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v82[0] = v52;
      *v51 = 136315138;
      v53 = sub_100927660();
      v55 = sub_1000136BC(v53, v54, v82);

      *(v51 + 4) = v55;
      _os_log_impl(&_mh_execute_header, v48, v49, "PairingLock Check data: %s", v51, 0xCu);
      sub_100007BAC(v52);
    }

    v56 = v0[285];
    v57 = v0[284];
    v58 = v0[283];
    v59 = v0[279];
    v60 = v0[274];

    sub_100017D5C(v57, v56);
    v61 = sub_1004FBDB4(v1, v57, v56, 0, v59);
    v0[286] = v61;
    sub_100165328(v58, v57, v56);
    v63 = sub_100BFADB4(&qword_1016B7F20, v62, type metadata accessor for ProximityPairingValidator);
    v64 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v65 = swift_task_alloc();
    v0[287] = v65;
    v66 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
    *v65 = v0;
    v65[1] = sub_100BF898C;
    v67 = v0[272];

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v67, v60, v63, 0xD000000000000013, 0x800000010136F240, sub_100BFA5A4, v61, v66);
  }

  else
  {
    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v68 = type metadata accessor for Logger();
    sub_1000076D4(v68, qword_10177BE78);
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Could not create pairing lock request", v71, 2u);
    }

    v72 = v0[281];
    v73 = v0[280];
    v74 = v0[279];
    v75 = v0[278];

    type metadata accessor for SPPairingSessionError(0);
    v0[271] = 1;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v76 = v0[270];
    swift_willThrow();

    sub_100006654(v73, v72);
    sub_100BFAE64(v75, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
    v77 = v0[278];
    v78 = v0[277];
    v79 = v0[275];

    v80 = v0[1];

    return v80();
  }
}

uint64_t sub_100BF898C()
{
  v2 = *v1;
  v3 = *(*v1 + 2296);
  v4 = *v1;
  *(*v1 + 2304) = v0;

  v5 = *(v2 + 2192);
  if (v0)
  {
    v6 = sub_100BF8BB8;
  }

  else
  {
    v6 = sub_100BF8AB8;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100BF8AB8()
{
  v1 = v0[286];
  v2 = v0[285];
  v3 = v0[284];
  v4 = v0[283];
  v5 = v0[281];
  v6 = v0[280];
  v7 = v0[279];
  v8 = v0[278];
  v9 = v0[277];
  v10 = v0[275];

  sub_100165328(v4, v3, v2);
  sub_100006654(v6, v5);
  sub_100BFAE64(v8, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100BF8BB8()
{
  v1 = v0[286];
  v2 = v0[285];
  v3 = v0[284];
  v4 = v0[283];
  v5 = v0[281];
  v6 = v0[280];
  v7 = v0[279];
  v8 = v0[278];

  sub_100165328(v4, v3, v2);
  sub_100006654(v6, v5);
  sub_100BFAE64(v8, type metadata accessor for AirPodsLEPairingLockCheckEndPoint);
  v9 = v0[288];
  v10 = v0[278];
  v11 = v0[277];
  v12 = v0[275];

  v13 = v0[1];

  return v13();
}

uint64_t sub_100BF8CB0(uint64_t a1)
{
  v14 = a1;
  v2 = sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - v5;
  v13 = *(v3 + 16);
  v13(&v11 - v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v12 = *(v3 + 32);
  v12(v8 + v7, v6, v2);
  Future.addFailure(block:)();

  v13(v6, v14, v2);
  v9 = swift_allocObject();
  v12(v9 + v7, v6, v2);
  Future.addSuccess(block:)();
}

uint64_t sub_100BF8E90()
{
  if (qword_101694DB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177BE78);
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error in verify pairing request. Error - %{public}@", v3, 0xCu);
    sub_100288C6C(v4);
  }

  type metadata accessor for SPPairingSessionError(0);
  sub_100032898(_swiftEmptyArrayStorage);
  sub_100BFADB4(&unk_1016B2710, 255, type metadata accessor for SPPairingSessionError);
  _BridgedStoredNSError.init(_:userInfo:)();
  sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t sub_100BF9078(uint64_t a1)
{
  v81 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v2 = *(*(v81 - 8) + 64);
  v3 = __chkstk_darwin(v81);
  v80 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v75 - v5;
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for FMNServerInteractionController.FMNResponseFields();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v75 - v16;
  __chkstk_darwin(v15);
  v19 = &v75 - v18;
  v20 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
  if (v20 == 409)
  {
    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177BE78);
    (*(v10 + 16))(v17, a1, v9);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v82 = v34;
      *v33 = 136446210;
      sub_100BFADB4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v36;
      (*(v10 + 8))(v17, v9);
      v38 = sub_1000136BC(v35, v37, &v82);

      *(v33 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v31, v32, "Pairing lock failed: %{public}s", v33, 0xCu);
      sub_100007BAC(v34);
    }

    else
    {

      (*(v10 + 8))(v17, v9);
    }

    v60 = type metadata accessor for PairingValidatorError();
    sub_100BFADB4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
    v61 = swift_allocError();
    (*(*(v60 - 8) + 104))(v62, enum case for PairingValidatorError.pairedToAnotherAccount(_:), v60);
    v82 = v61;
    goto LABEL_23;
  }

  if (v20 != 200)
  {
    if (qword_101694DB8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000076D4(v39, qword_10177BE78);
    v40 = *(v10 + 16);
    v79 = a1;
    v40(v14, a1, v9);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v82 = v44;
      *v43 = 136446210;
      sub_100BFADB4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      v47 = v46;
      (*(v10 + 8))(v14, v9);
      v48 = sub_1000136BC(v45, v47, &v82);

      *(v43 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v41, v42, "Pairing lock failed: %{public}s", v43, 0xCu);
      sub_100007BAC(v44);
    }

    else
    {

      (*(v10 + 8))(v14, v9);
    }

    v63 = type metadata accessor for PairingValidatorError();
    sub_100BFADB4(&qword_101698628, 255, &type metadata accessor for PairingValidatorError);
    v64 = swift_allocError();
    v66 = v65;
    *v65 = FMNServerInteractionController.FMNResponseFields.statusCode.getter();
    (*(*(v63 - 8) + 104))(v66, enum case for PairingValidatorError.pairingLockFailure(_:), v63);
    v82 = v64;
LABEL_23:
    sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
    return CheckedContinuation.resume(throwing:)();
  }

  v78 = v6;
  if (qword_101694DB8 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  v22 = sub_1000076D4(v21, qword_10177BE78);
  (*(v10 + 16))(v19, a1, v9);
  v77 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v82 = v76;
    *v25 = 136446210;
    sub_100BFADB4(&qword_1016A62C0, 255, &type metadata accessor for FMNServerInteractionController.FMNResponseFields);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v79 = a1;
    v28 = v27;
    (*(v10 + 8))(v19, v9);
    v29 = sub_1000136BC(v26, v28, &v82);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, v24, "Pairing success: %{public}s", v25, 0xCu);
    sub_100007BAC(v76);
  }

  else
  {

    (*(v10 + 8))(v19, v9);
  }

  v49 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v51 = v50;
  static String.Encoding.utf8.getter();
  v52 = String.init(data:encoding:)();
  v54 = v53;
  sub_100016590(v49, v51);
  if (v54)
  {

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v82 = v58;
      *v57 = 136315138;
      v59 = sub_1000136BC(v52, v54, &v82);

      *(v57 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v55, v56, "response data: %s", v57, 0xCu);
      sub_100007BAC(v58);
    }

    else
    {
    }
  }

  v68 = type metadata accessor for JSONDecoder();
  v69 = *(v68 + 48);
  v70 = *(v68 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  v71 = FMNServerInteractionController.FMNResponseFields.data.getter();
  v73 = v72;
  sub_100BFADB4(&qword_101698648, 255, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  v74 = v78;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  sub_100016590(v71, v73);
  sub_100BFADFC(v74, v80, type metadata accessor for AirPodsLEPairingLockCheckResponse);
  sub_1000BC4D4(&qword_101698630, &unk_10138FF90);
  CheckedContinuation.resume(returning:)();

  return sub_100BFAE64(v74, type metadata accessor for AirPodsLEPairingLockCheckResponse);
}

uint64_t sub_100BF9CC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100BF766C(a1, a2);
}

uint64_t sub_100BF9D68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014744;

  return sub_100BF5880(a1, a2);
}

uint64_t sub_100BF9E10(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014650;

  return sub_100BF4448(v2);
}

uint64_t sub_100BF9F54(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v7 = *(a1 + 136);
  v8 = *(a1 + 144);
  v9 = Data.trimmed.getter();
  v11 = v10;
  *&v61 = v9;
  *(&v61 + 1) = v10;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v12 = String.init<A>(bytes:encoding:)();
  v47 = v11;
  v46 = v9;
  if (!v13)
  {
    v12 = Data.hexString.getter();
  }

  v14 = v12;
  v15 = v13;
  v48 = *(a1 + 120);
  sub_1000E0A3C();
  v16 = DataProtocol.intValue.getter();
  v54 = *(a1 + 104);
  v17 = DataProtocol.intValue.getter();
  v19 = *(a1 + 320);
  v18 = *(a1 + 328);
  *&v55 = 0;
  *(&v55 + 1) = v16;
  v20 = *(a1 + 336);
  v21 = *(a1 + 344);
  *&v56 = v17;
  *(&v56 + 1) = &off_101609080;
  *&v57 = v14;
  *(&v57 + 1) = v15;
  v58 = xmmword_10138FDA0;
  *&v59 = v19;
  *(&v59 + 1) = v18;
  *&v60 = v20;
  *(&v60 + 1) = v21;
  v61 = v55;
  v62 = v56;
  v65 = v59;
  v66 = v60;
  v63 = v57;
  v64 = xmmword_10138FDA0;
  sub_100017D5C(v19, v18);
  sub_100017D5C(v20, v21);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C418);
  sub_1001650CC(&v55, &v48);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  sub_100165128(&v55);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v54 = v26;
    *v25 = 136315138;
    sub_1001650CC(&v55, &v48);
    sub_10107D964();
    v28 = v27;
    v30 = v29;
    sub_100165128(&v55);
    v31 = sub_1000136BC(v28, v30, &v54);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "BAARKProperties %s", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v50 = v63;
  v51 = v64;
  v52 = v65;
  v53 = v66;
  v48 = v61;
  v49 = v62;
  sub_10016517C();
  v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v34 = v33;
  v35 = *(a1 + 216);
  v36 = *(a1 + 208);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v32, v34);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  if (os_log_type_enabled(v37, v38))
  {
    v45 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v54 = v44;
    *v45 = 136315138;
    *&v48 = v36;
    *(&v48 + 1) = v35;
    *&v49 = v32;
    *(&v49 + 1) = v34;
    sub_100017D5C(v36, v35);
    sub_100017D5C(v32, v34);
    v39 = String.init<A>(describing:)();
    v41 = sub_1000136BC(v39, v40, &v54);

    *(v45 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "BAARequestPayload %s", v45, 0xCu);
    sub_100007BAC(v44);
  }

  *&v48 = v36;
  *(&v48 + 1) = v35;
  *&v49 = v32;
  *(&v49 + 1) = v34;
  sub_1001651D0();
  v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v46, v47);

  sub_100165128(&v55);
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  return v42;
}

uint64_t sub_100BFA5FC(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for PropertyListEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  v7 = *(a1 + 112);
  v8 = *(a1 + 120);
  v9 = Data.trimmed.getter();
  v11 = v10;
  *&v61 = v9;
  *(&v61 + 1) = v10;
  static String.Encoding.utf8.getter();
  sub_100165078();
  v12 = String.init<A>(bytes:encoding:)();
  v47 = v11;
  v46 = v9;
  if (!v13)
  {
    v12 = Data.hexString.getter();
  }

  v14 = v12;
  v15 = v13;
  v48 = *(a1 + 96);
  sub_1000E0A3C();
  v16 = DataProtocol.intValue.getter();
  v54 = *(a1 + 80);
  v17 = DataProtocol.intValue.getter();
  v19 = *(a1 + 208);
  v18 = *(a1 + 216);
  *&v55 = 0;
  *(&v55 + 1) = v16;
  v20 = *(a1 + 224);
  v21 = *(a1 + 232);
  *&v56 = v17;
  *(&v56 + 1) = &off_1016090B0;
  *&v57 = v14;
  *(&v57 + 1) = v15;
  v58 = xmmword_10138FDA0;
  *&v59 = v19;
  *(&v59 + 1) = v18;
  *&v60 = v20;
  *(&v60 + 1) = v21;
  v61 = v55;
  v62 = v56;
  v65 = v59;
  v66 = v60;
  v63 = v57;
  v64 = xmmword_10138FDA0;
  sub_100017D5C(v19, v18);
  sub_100017D5C(v20, v21);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177C418);
  sub_1001650CC(&v55, &v48);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  sub_100165128(&v55);
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v54 = v26;
    *v25 = 136315138;
    sub_1001650CC(&v55, &v48);
    sub_10107D964();
    v28 = v27;
    v30 = v29;
    sub_100165128(&v55);
    v31 = sub_1000136BC(v28, v30, &v54);

    *(v25 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v23, v24, "BAARKProperties %s", v25, 0xCu);
    sub_100007BAC(v26);
  }

  v50 = v63;
  v51 = v64;
  v52 = v65;
  v53 = v66;
  v48 = v61;
  v49 = v62;
  sub_10016517C();
  v32 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v34 = v33;
  v35 = *(a1 + 152);
  v36 = *(a1 + 144);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v36, v35);
  sub_100017D5C(v32, v34);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.debug.getter();
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  if (os_log_type_enabled(v37, v38))
  {
    v45 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *&v54 = v44;
    *v45 = 136315138;
    *&v48 = v36;
    *(&v48 + 1) = v35;
    *&v49 = v32;
    *(&v49 + 1) = v34;
    sub_100017D5C(v36, v35);
    sub_100017D5C(v32, v34);
    v39 = String.init<A>(describing:)();
    v41 = sub_1000136BC(v39, v40, &v54);

    *(v45 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v37, v38, "BAARequestPayload %s", v45, 0xCu);
    sub_100007BAC(v44);
  }

  *&v48 = v36;
  *(&v48 + 1) = v35;
  *&v49 = v32;
  *(&v49 + 1) = v34;
  sub_1001651D0();
  v42 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  sub_100016590(v46, v47);

  sub_100165128(&v55);
  sub_100016590(v36, v35);
  sub_100016590(v32, v34);
  return v42;
}

uint64_t sub_100BFAC7C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_100BFAD2C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(sub_1000BC4D4(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_100BFADB4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100BFADFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BFAE64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_100BFAF24()
{
  v1 = type metadata accessor for OwnedBeaconGroup(0);
  v2 = sub_1003CDA20(*(v0 + *(v1 + 40)));
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_1011244D8(0, v3, 0);
    v4 = (v2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      sub_100017D5C(v5, *v4);
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      if (v8 >= v7 >> 1)
      {
        sub_1011244D8((v7 > 1), v8 + 1, 1);
      }

      v4 += 2;
      _swiftEmptyArrayStorage[2] = v8 + 1;
      v9 = &_swiftEmptyArrayStorage[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100BFB030()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BD00);
  sub_1000076D4(v0, qword_10177BD00);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100BFB0B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v5 = *(*(type metadata accessor for StableIdentifier() - 8) + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v6 = *(*(sub_1000BC4D4(&qword_1016B7F68, &qword_1013DDFD0) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v7 = type metadata accessor for PairingConfig();
  v4[22] = v7;
  v8 = *(v7 - 8);
  v4[23] = v8;
  v9 = *(v8 + 64) + 15;
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280) - 8) + 64) + 15;
  v4[27] = swift_task_alloc();
  v11 = type metadata accessor for OwnedBeaconRecord();
  v4[28] = v11;
  v12 = *(v11 - 8);
  v4[29] = v12;
  v4[30] = *(v12 + 64);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();
  v4[37] = swift_task_alloc();

  return _swift_task_switch(sub_100BFB2E0, v3, 0);
}

uint64_t sub_100BFB2E0()
{
  v1 = *(*(v0 + 144) + 128);
  v2 = swift_task_alloc();
  *(v0 + 304) = v2;
  *v2 = v0;
  v2[1] = sub_100BFB374;

  return sub_100A9A4DC();
}

uint64_t sub_100BFB374(char a1)
{
  v2 = *(*v1 + 304);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 412) = a1;

  return _swift_task_switch(sub_100BFB48C, v3, 0);
}

uint64_t sub_100BFB48C()
{
  v70 = v0;
  if (*(v0 + 412) != 1)
  {
    type metadata accessor for SPPairingSessionError(0);
    *(v0 + 104) = 20;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C01198(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v38 = *(v0 + 96);
LABEL_10:
    swift_willThrow();
    goto LABEL_11;
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  sub_10001F280(*(v0 + 128), v0 + 16);
  sub_1000BC4D4(&qword_1016B7F70, &qword_1013E02D0);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (!v4)
  {
    v39 = *(v0 + 216);
    v5(v39, 1, 1, *(v0 + 224));
    sub_10000B3A8(v39, &unk_1016A9A20, &qword_10138B280);
    v40 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, enum case for PairingBeaconStoreError.invalidBeaconRecordType(_:), v40);
    goto LABEL_10;
  }

  v6 = *(v0 + 296);
  v7 = *(v0 + 216);
  v8 = *(v0 + 176);
  v9 = *(v0 + 184);
  v10 = *(v0 + 168);
  v11 = *(v0 + 136);
  v5(v7, 0, 1, *(v0 + 224));
  sub_100C00F28(v7, v6, type metadata accessor for OwnedBeaconRecord);
  sub_10001F280(v11, v0 + 56);
  sub_1000BC4D4(&qword_1016B7F78, &qword_1013DDFD8);
  v12 = swift_dynamicCast();
  v13 = *(v9 + 56);
  if (v12)
  {
    v14 = *(v0 + 208);
    v15 = *(v0 + 168);
    v13(v15, 0, 1, *(v0 + 176));
    sub_100C00F28(v15, v14, type metadata accessor for PairingConfig);
    if (qword_101694D58 != -1)
    {
      swift_once();
    }

    v16 = *(v0 + 288);
    v17 = *(v0 + 296);
    v19 = *(v0 + 200);
    v18 = *(v0 + 208);
    v20 = type metadata accessor for Logger();
    *(v0 + 312) = sub_1000076D4(v20, qword_10177BD00);
    sub_100C00F90(v17, v16, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v18, v19, type metadata accessor for PairingConfig);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 288);
    if (v23)
    {
      v25 = *(v0 + 224);
      v27 = *(v0 + 192);
      v26 = *(v0 + 200);
      v68 = *(v0 + 176);
      v28 = swift_slowAlloc();
      v69[0] = swift_slowAlloc();
      *v28 = 141558531;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      v29 = *(v25 + 20);
      type metadata accessor for UUID();
      sub_100C01198(&qword_101696930, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100C01018(v24, type metadata accessor for OwnedBeaconRecord);
      v33 = sub_1000136BC(v30, v32, v69);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2080;
      sub_100C00F90(v26, v27, type metadata accessor for PairingConfig);
      v34 = String.init<A>(describing:)();
      v36 = v35;
      sub_100C01018(v26, type metadata accessor for PairingConfig);
      v37 = sub_1000136BC(v34, v36, v69);

      *(v28 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v21, v22, "Saving beacon record: %{private,mask.hash}s with config %s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v58 = *(v0 + 200);

      sub_100C01018(v58, type metadata accessor for PairingConfig);
      sub_100C01018(v24, type metadata accessor for OwnedBeaconRecord);
    }

    v59 = *(v0 + 144);
    sub_100C00F90(*(v0 + 296) + *(*(v0 + 224) + 24), *(v0 + 160), type metadata accessor for StableIdentifier);
    v60 = async function pointer to unsafeBlocking<A>(context:_:)[1];

    v61 = swift_task_alloc();
    *(v0 + 320) = v61;
    v62 = sub_1000BC4D4(&qword_101698C80, &unk_1013A23F0);
    *v61 = v0;
    v61[1] = sub_100BFBCC0;
    v63 = *(v0 + 144);

    return unsafeBlocking<A>(context:_:)(v0 + 112, 0xD000000000000010, 0x800000010134A8C0, sub_10012B078, v63, v62);
  }

  v54 = *(v0 + 296);
  v55 = *(v0 + 168);
  v13(v55, 1, 1, *(v0 + 176));
  sub_10000B3A8(v55, &qword_1016B7F68, &qword_1013DDFD0);
  v56 = type metadata accessor for PairingBeaconStoreError();
  sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
  swift_allocError();
  (*(*(v56 - 8) + 104))(v57, enum case for PairingBeaconStoreError.invalidPairingConfigurationType(_:), v56);
  swift_willThrow();
  sub_100C01018(v54, type metadata accessor for OwnedBeaconRecord);
LABEL_11:
  v43 = *(v0 + 288);
  v42 = *(v0 + 296);
  v45 = *(v0 + 272);
  v44 = *(v0 + 280);
  v47 = *(v0 + 256);
  v46 = *(v0 + 264);
  v48 = *(v0 + 248);
  v50 = *(v0 + 208);
  v49 = *(v0 + 216);
  v51 = *(v0 + 200);
  v64 = *(v0 + 192);
  v65 = *(v0 + 168);
  v66 = *(v0 + 160);
  v67 = *(v0 + 152);

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_100BFBCC0()
{
  v1 = *(*v0 + 320);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return _swift_task_switch(sub_100BFBDD8, v2, 0);
}

uint64_t sub_100BFBDD8()
{
  v53 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_10013D1C8(sub_100C00FF8, v3, v2);
  *(v0 + 328) = v4;

  v5 = *(v4 + 16);
  *(v0 + 336) = v5;
  if (v5)
  {
    v6 = *(v0 + 232);
    v7 = *(v6 + 80);
    *(v0 + 408) = v7;
    *(v0 + 344) = *(v6 + 72);
    *(v0 + 352) = 0;
    v8 = *(v0 + 312);
    v10 = *(v0 + 272);
    v9 = *(v0 + 280);
    v12 = *(v0 + 152);
    v11 = *(v0 + 160);
    sub_100C00F90(*(v0 + 328) + ((v7 + 32) & ~v7), v9, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v9, v10, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v11, v12, type metadata accessor for StableIdentifier);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 272);
      v16 = *(v0 + 224);
      v17 = *(v0 + 152);
      v18 = swift_slowAlloc();
      v52[0] = swift_slowAlloc();
      *v18 = 141558531;
      *(v18 + 4) = 1752392040;
      *(v18 + 12) = 2081;
      v19 = *(v16 + 20);
      type metadata accessor for UUID();
      sub_100C01198(&qword_101696930, &type metadata accessor for UUID);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v22 = v21;
      sub_100C01018(v15, type metadata accessor for OwnedBeaconRecord);
      v23 = sub_1000136BC(v20, v22, v52);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2080;
      v24 = sub_1010DA578();
      v26 = v25;
      sub_100C01018(v17, type metadata accessor for StableIdentifier);
      v27 = sub_1000136BC(v24, v26, v52);

      *(v18 + 24) = v27;
      _os_log_impl(&_mh_execute_header, v13, v14, "Removing %{private,mask.hash}s matching the same stable identifier: %s", v18, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v37 = *(v0 + 272);
      v38 = *(v0 + 152);

      sub_100C01018(v38, type metadata accessor for StableIdentifier);
      sub_100C01018(v37, type metadata accessor for OwnedBeaconRecord);
    }

    v39 = *(v0 + 408);
    v40 = *(v0 + 280);
    v41 = *(v0 + 264);
    v50 = *(v0 + 256);
    v51 = *(v0 + 144);
    v42 = (v39 + 24) & ~v39;
    v43 = (*(v0 + 240) + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    sub_100C00F90(v40, v41, type metadata accessor for OwnedBeaconRecord);
    v44 = swift_allocObject();
    *(v0 + 360) = v44;
    sub_100C00F28(v41, v44 + ((v39 + 16) & ~v39), type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v40, v50, type metadata accessor for OwnedBeaconRecord);
    v45 = swift_allocObject();
    *(v0 + 368) = v45;
    *(v45 + 16) = v51;
    sub_100C00F28(v50, v45 + v42, type metadata accessor for OwnedBeaconRecord);
    v46 = (v45 + v43);
    *v46 = sub_100C01078;
    v46[1] = v44;
    v47 = async function pointer to unsafeBlocking<A>(context:_:)[1];

    v48 = swift_task_alloc();
    *(v0 + 376) = v48;
    *v48 = v0;
    v48[1] = sub_100BFC3D4;

    return unsafeBlocking<A>(context:_:)(v48, 0xD000000000000010, 0x800000010134A8C0, sub_100C010E8, v45, &type metadata for () + 8);
  }

  else
  {

    v28 = *(v0 + 296);
    v29 = *(v0 + 208);
    v30 = *(v0 + 144);
    v31 = sub_100C01198(&qword_1016B7F28, type metadata accessor for BeaconStoreActor);
    v32 = swift_task_alloc();
    *(v0 + 384) = v32;
    v32[2] = v30;
    v32[3] = v28;
    v32[4] = v29;
    v33 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v34 = swift_task_alloc();
    *(v0 + 392) = v34;
    *v34 = v0;
    v34[1] = sub_100BFCAD4;
    v35 = *(v0 + 248);
    v36 = *(v0 + 224);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v35, v30, v31, 0xD000000000000029, 0x800000010136F260, sub_100C0118C, v32, v36);
  }
}

uint64_t sub_100BFC3D4()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v3 = *(*v0 + 144);
  v5 = *v0;

  return _swift_task_switch(sub_100BFC500, v3, 0);
}

uint64_t sub_100BFC500()
{
  v53 = v0;
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 336);
  v4 = *(v0 + 280);

  sub_100C01018(v4, type metadata accessor for OwnedBeaconRecord);
  if (v2 + 1 == v3)
  {
    v5 = *(v0 + 328);

    v6 = *(v0 + 296);
    v7 = *(v0 + 208);
    v8 = *(v0 + 144);
    v9 = sub_100C01198(&qword_1016B7F28, type metadata accessor for BeaconStoreActor);
    v10 = swift_task_alloc();
    *(v0 + 384) = v10;
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v7;
    v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v12 = swift_task_alloc();
    *(v0 + 392) = v12;
    *v12 = v0;
    v12[1] = sub_100BFCAD4;
    v13 = *(v0 + 248);
    v14 = *(v0 + 224);

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v13, v8, v9, 0xD000000000000029, 0x800000010136F260, sub_100C0118C, v10, v14);
  }

  else
  {
    v15 = *(v0 + 344);
    v16 = *(v0 + 352) + 1;
    *(v0 + 352) = v16;
    v17 = *(v0 + 312);
    v19 = *(v0 + 272);
    v18 = *(v0 + 280);
    v21 = *(v0 + 152);
    v20 = *(v0 + 160);
    sub_100C00F90(*(v0 + 328) + ((*(v0 + 408) + 32) & ~*(v0 + 408)) + v15 * v16, v18, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v18, v19, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v20, v21, type metadata accessor for StableIdentifier);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 272);
    if (v24)
    {
      v26 = *(v0 + 224);
      v27 = *(v0 + 152);
      v28 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v28 = 141558531;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2081;
      v29 = *(v26 + 20);
      type metadata accessor for UUID();
      sub_100C01198(&qword_101696930, &type metadata accessor for UUID);
      v30 = dispatch thunk of CustomStringConvertible.description.getter();
      v32 = v31;
      sub_100C01018(v25, type metadata accessor for OwnedBeaconRecord);
      v33 = sub_1000136BC(v30, v32, &v52);

      *(v28 + 14) = v33;
      *(v28 + 22) = 2080;
      v34 = sub_1010DA578();
      v36 = v35;
      sub_100C01018(v27, type metadata accessor for StableIdentifier);
      v37 = sub_1000136BC(v34, v36, &v52);

      *(v28 + 24) = v37;
      _os_log_impl(&_mh_execute_header, v22, v23, "Removing %{private,mask.hash}s matching the same stable identifier: %s", v28, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      v38 = *(v0 + 152);

      sub_100C01018(v38, type metadata accessor for StableIdentifier);
      sub_100C01018(v25, type metadata accessor for OwnedBeaconRecord);
    }

    v39 = *(v0 + 408);
    v40 = *(v0 + 280);
    v41 = *(v0 + 264);
    v50 = *(v0 + 256);
    v51 = *(v0 + 144);
    v42 = (v39 + 24) & ~v39;
    v43 = (*(v0 + 240) + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    sub_100C00F90(v40, v41, type metadata accessor for OwnedBeaconRecord);
    v44 = swift_allocObject();
    *(v0 + 360) = v44;
    sub_100C00F28(v41, v44 + ((v39 + 16) & ~v39), type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v40, v50, type metadata accessor for OwnedBeaconRecord);
    v45 = swift_allocObject();
    *(v0 + 368) = v45;
    *(v45 + 16) = v51;
    sub_100C00F28(v50, v45 + v42, type metadata accessor for OwnedBeaconRecord);
    v46 = (v45 + v43);
    *v46 = sub_100C01078;
    v46[1] = v44;
    v47 = async function pointer to unsafeBlocking<A>(context:_:)[1];

    v48 = swift_task_alloc();
    *(v0 + 376) = v48;
    *v48 = v0;
    v48[1] = sub_100BFC3D4;

    return unsafeBlocking<A>(context:_:)(v48, 0xD000000000000010, 0x800000010134A8C0, sub_100C010E8, v45, &type metadata for () + 8);
  }
}

uint64_t sub_100BFCAD4()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v4 = *v1;
  *(*v1 + 400) = v0;

  v5 = *(v2 + 384);
  v6 = *(v2 + 144);

  if (v0)
  {
    v7 = sub_100BFCDF4;
  }

  else
  {
    v7 = sub_100BFCC1C;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100BFCC1C()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[33];
  v6 = v0[31];
  v13 = v0[32];
  v14 = v0[27];
  v7 = v0[26];
  v15 = v0[25];
  v16 = v0[24];
  v8 = v0[20];
  v17 = v0[21];
  v18 = v0[19];
  v9 = v0[15];
  v9[3] = v0[28];
  v9[4] = sub_100C01198(&qword_1016B7F60, type metadata accessor for OwnedBeaconRecord);
  v10 = sub_1000280DC(v9);
  sub_100C00F28(v6, v10, type metadata accessor for OwnedBeaconRecord);
  sub_100C01018(v8, type metadata accessor for StableIdentifier);
  sub_100C01018(v7, type metadata accessor for PairingConfig);
  sub_100C01018(v2, type metadata accessor for OwnedBeaconRecord);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100BFCDF4()
{
  v1 = v0[37];
  v2 = v0[26];
  sub_100C01018(v0[20], type metadata accessor for StableIdentifier);
  sub_100C01018(v2, type metadata accessor for PairingConfig);
  sub_100C01018(v1, type metadata accessor for OwnedBeaconRecord);
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[34];
  v5 = v0[35];
  v8 = v0[32];
  v7 = v0[33];
  v9 = v0[31];
  v11 = v0[26];
  v10 = v0[27];
  v12 = v0[25];
  v15 = v0[24];
  v16 = v0[21];
  v17 = v0[20];
  v18 = v0[19];
  v19 = v0[50];

  v13 = v0[1];

  return v13();
}

void sub_100BFCF68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v34 - v9;
  if (a1)
  {
    swift_errorRetain();
    if (qword_101694D58 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_1000076D4(v11, qword_10177BD00);
    sub_100C00F90(a2, v10, type metadata accessor for OwnedBeaconRecord);
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = v16;
      *v14 = 141558531;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v17 = *(v4 + 20);
      type metadata accessor for UUID();
      sub_100C01198(&qword_101696930, &type metadata accessor for UUID);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      sub_100C01018(v10, type metadata accessor for OwnedBeaconRecord);
      v21 = sub_1000136BC(v18, v20, &v35);

      *(v14 + 14) = v21;
      *(v14 + 22) = 2114;
      swift_errorRetain();
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 24) = v22;
      *v15 = v22;
      _os_log_impl(&_mh_execute_header, v12, v13, "Failed to remove %{private,mask.hash}s due to %{public}@", v14, 0x20u);
      sub_10000B3A8(v15, &qword_10169BB30, &unk_10138B3C0);

      sub_100007BAC(v16);

      return;
    }

    v33 = v10;
  }

  else
  {
    if (qword_101694D58 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_1000076D4(v23, qword_10177BD00);
    sub_100C00F90(a2, v8, type metadata accessor for OwnedBeaconRecord);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35 = v27;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      v28 = *(v4 + 20);
      type metadata accessor for UUID();
      sub_100C01198(&qword_101696930, &type metadata accessor for UUID);
      v29 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v30;
      sub_100C01018(v8, type metadata accessor for OwnedBeaconRecord);
      v32 = sub_1000136BC(v29, v31, &v35);

      *(v26 + 14) = v32;
      _os_log_impl(&_mh_execute_header, v24, v25, "Successfully removed %{private,mask.hash}s", v26, 0x16u);
      sub_100007BAC(v27);

      return;
    }

    v33 = v8;
  }

  sub_100C01018(v33, type metadata accessor for OwnedBeaconRecord);
}

uint64_t sub_100BFD45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v5 = sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v30 - v8;
  v30 = &v30 - v8;
  v10 = type metadata accessor for PairingConfig();
  v32 = *(v10 - 8);
  v11 = *(v32 + 64);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OwnedBeaconRecord();
  v31 = *(v13 - 8);
  v14 = *(v31 + 64);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v30 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  sub_100C00F90(v33, v15, type metadata accessor for OwnedBeaconRecord);
  sub_100C00F90(v34, v12, type metadata accessor for PairingConfig);
  v21 = a1;
  v22 = v5;
  (*(v6 + 16))(v9, v21, v5);
  v23 = sub_100C01198(&qword_1016B7F28, type metadata accessor for BeaconStoreActor);
  v24 = (*(v31 + 80) + 40) & ~*(v31 + 80);
  v25 = (v14 + *(v32 + 80) + v24) & ~*(v32 + 80);
  v26 = (v11 + *(v6 + 80) + v25) & ~*(v6 + 80);
  v27 = swift_allocObject();
  v28 = v35;
  *(v27 + 2) = v35;
  *(v27 + 3) = v23;
  *(v27 + 4) = v28;
  sub_100C00F28(v15, &v27[v24], type metadata accessor for OwnedBeaconRecord);
  sub_100C00F28(v12, &v27[v25], type metadata accessor for PairingConfig);
  (*(v6 + 32))(&v27[v26], v30, v22);
  swift_retain_n();
  sub_10025EDD4(0, 0, v19, &unk_1013DDFF0, v27);
}

uint64_t sub_100BFD834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = *(type metadata accessor for PairingConfig() - 8);
  v7[6] = v9;
  v7[7] = *(v9 + 64);
  v7[8] = swift_task_alloc();
  v10 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v7[9] = v10;
  v7[10] = *(v10 + 64);
  v7[11] = swift_task_alloc();
  v11 = sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
  v7[12] = v11;
  v12 = *(v11 - 8);
  v7[13] = v12;
  v7[14] = *(v12 + 64);
  v7[15] = swift_task_alloc();

  return _swift_task_switch(sub_100BFD9D0, a4, 0);
}

uint64_t sub_100BFD9D0()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[11];
  v5 = v0[8];
  v19 = v0[10];
  v20 = v0[7];
  v17 = v0[9];
  v18 = v0[6];
  v6 = v0[4];
  v7 = v0[3];
  v21 = v0[2];
  (*(v2 + 16))(v1, v0[5], v3);
  v8 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v9 = swift_allocObject();
  v0[16] = v9;
  (*(v2 + 32))(v9 + v8, v1, v3);
  sub_100C00F90(v7, v4, type metadata accessor for OwnedBeaconRecord);
  sub_100C00F90(v6, v5, type metadata accessor for PairingConfig);
  v10 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v11 = (v19 + *(v18 + 80) + v10) & ~*(v18 + 80);
  v12 = swift_allocObject();
  v0[17] = v12;
  *(v12 + 16) = v21;
  sub_100C00F28(v4, v12 + v10, type metadata accessor for OwnedBeaconRecord);
  sub_100C00F28(v5, v12 + v11, type metadata accessor for PairingConfig);
  v13 = (v12 + ((v20 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = sub_100C013A8;
  v13[1] = v9;
  v14 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v15 = swift_task_alloc();
  v0[18] = v15;
  *v15 = v0;
  v15[1] = sub_100BFDC4C;

  return unsafeBlocking<A>(context:_:)(v15, 0xD000000000000010, 0x800000010134A8C0, sub_100C01434, v12, &type metadata for () + 8);
}

uint64_t sub_100BFDC4C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 16);
  v5 = *v0;

  return _swift_task_switch(sub_100BFDD78, v3, 0);
}

uint64_t sub_100BFDD78()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[11];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100BFDE00(uint64_t a1)
{
  v2 = type metadata accessor for OwnedBeaconRecord();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v21 - v7;
  v9 = sub_1000BC4D4(&unk_1016B15A0, &qword_1013A0900);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (v21 - v11);
  sub_1000D2A70(a1, v21 - v11, &unk_1016B15A0, &qword_1013A0900);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = *v12;
    if (qword_101694D58 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1000076D4(v14, qword_10177BD00);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Failure saving record: %{public}@", v17, 0xCu);
      sub_10000B3A8(v18, &qword_10169BB30, &unk_10138B3C0);
    }

    type metadata accessor for SPPairingSessionError(0);
    v21[0] = 11;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C01198(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v21[0] = v21[1];
    sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100C00F28(v12, v8, type metadata accessor for OwnedBeaconRecord);
    sub_100C00F90(v8, v6, type metadata accessor for OwnedBeaconRecord);
    sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0);
    CheckedContinuation.resume(returning:)();
    return sub_100C01018(v8, type metadata accessor for OwnedBeaconRecord);
  }
}

uint64_t sub_100BFE168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v5 = *(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8);
  v4[52] = v5;
  v4[53] = *(v5 + 64);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v4[56] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v4[57] = swift_task_alloc();

  return _swift_task_switch(sub_100BFE284, v3, 0);
}

uint64_t sub_100BFE284()
{
  v1 = *(*(v0 + 408) + 128);
  v2 = swift_task_alloc();
  *(v0 + 464) = v2;
  *v2 = v0;
  v2[1] = sub_100BFE318;

  return sub_100A9A4DC();
}

uint64_t sub_100BFE318(char a1)
{
  v2 = *(*v1 + 464);
  v3 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 496) = a1;

  return _swift_task_switch(sub_100BFE430, v3, 0);
}

uint64_t sub_100BFE430()
{
  if (*(v0 + 496) != 1)
  {
    type metadata accessor for SPPairingSessionError(0);
    *(v0 + 368) = 20;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C01198(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v19 = *(v0 + 360);
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  sub_10001F280(*(v0 + 392), v0 + 256);
  sub_1000BC4D4(&qword_1016B7F38, &qword_1013DDFA8);
  if (!swift_dynamicCast())
  {
    v20 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v20 - 8) + 104))(v21, enum case for PairingBeaconStoreError.invalidPairingKeysType(_:), v20);
    goto LABEL_9;
  }

  v1 = *(v0 + 400);
  v2 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v2;
  *(v0 + 80) = *(v0 + 160);
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  sub_10001F280(v1, v0 + 296);
  sub_1000BC4D4(&qword_1016B7F48, &qword_1013DDFB0);
  type metadata accessor for AccessoryPairingInfo(0);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 432);
    v4 = *(v0 + 440);
    v7 = *(v0 + 416);
    v6 = *(v0 + 424);
    v8 = *(v0 + 408);
    v9 = *(v0 + 376);
    *(v0 + 472) = v9;
    v10 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
    swift_beginAccess();
    sub_1000D2A70(v9 + v10, v4, &qword_101697268, &qword_101394FE0);
    sub_1000D2A70(v4, v5, &qword_101697268, &qword_101394FE0);
    v11 = (*(v7 + 80) + 112) & ~*(v7 + 80);
    v12 = swift_allocObject();
    *(v0 + 480) = v12;
    *(v12 + 16) = v8;
    v13 = *(v0 + 16);
    *(v12 + 40) = *(v0 + 32);
    v14 = *(v0 + 64);
    *(v12 + 56) = *(v0 + 48);
    *(v12 + 72) = v14;
    *(v12 + 88) = *(v0 + 80);
    *(v12 + 24) = v13;
    *(v12 + 104) = v9;
    sub_100A7027C(v5, v12 + v11);

    sub_100102538(v0 + 16, v0 + 176);
    v15 = async function pointer to unsafeBlocking<A>(context:_:)[1];

    v16 = swift_task_alloc();
    *(v0 + 488) = v16;
    *v16 = v0;
    v16[1] = sub_100BFE8C4;
    v18 = *(v0 + 448);
    v17 = *(v0 + 456);

    return unsafeBlocking<A>(context:_:)(v17, 0xD000000000000010, 0x800000010134A8C0, sub_100C0153C, v12, v18);
  }

  v26 = type metadata accessor for PairingBeaconStoreError();
  sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
  swift_allocError();
  (*(*(v26 - 8) + 104))(v27, enum case for PairingBeaconStoreError.invalidAccessoryInfoType(_:), v26);
  swift_willThrow();
  sub_1001DA760(v0 + 16);
LABEL_10:
  v22 = *(v0 + 456);
  v24 = *(v0 + 432);
  v23 = *(v0 + 440);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100BFE8C4()
{
  v1 = *(*v0 + 488);
  v2 = *(*v0 + 480);
  v3 = *(*v0 + 440);
  v4 = *(*v0 + 408);
  v6 = *v0;

  sub_10000B3A8(v3, &qword_101697268, &qword_101394FE0);

  return _swift_task_switch(sub_100BFEA24, v4, 0);
}

uint64_t sub_100BFEA24()
{
  v1 = v0[57];
  v2 = type metadata accessor for OwnedBeaconRecord();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[59];
  v5 = v0[48];
  if (v3 == 1)
  {
    sub_1001DA760((v0 + 2));

    sub_10000B3A8(v1, &unk_1016A9A20, &qword_10138B280);
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0;
  }

  else
  {
    *(v5 + 24) = v2;
    *(v5 + 32) = sub_100C01198(&qword_1016B7F60, type metadata accessor for OwnedBeaconRecord);
    v6 = sub_1000280DC(v5);
    sub_100C00F28(v1, v6, type metadata accessor for OwnedBeaconRecord);
    sub_1001DA760((v0 + 2));
  }

  v7 = v0[57];
  v8 = v0[54];
  v9 = v0[55];

  v10 = v0[1];

  return v10();
}

uint64_t sub_100BFEBA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[53] = a3;
  v4[54] = v3;
  v4[51] = a1;
  v4[52] = a2;
  v5 = sub_1000BC4D4(&qword_1016B7F58, &qword_1013DDFC0);
  v4[55] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v7 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v8 = type metadata accessor for MACAddress();
  v4[59] = v8;
  v9 = *(v8 - 8);
  v4[60] = v9;
  v4[61] = *(v9 + 64);
  v4[62] = swift_task_alloc();
  v4[63] = swift_task_alloc();
  v10 = *(*(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8) + 64) + 15;
  v4[64] = swift_task_alloc();

  return _swift_task_switch(sub_100BFED34, v3, 0);
}

uint64_t sub_100BFED34()
{
  v1 = *(*(v0 + 432) + 128);
  v2 = swift_task_alloc();
  *(v0 + 520) = v2;
  *v2 = v0;
  v2[1] = sub_100BFEDC8;

  return sub_100A9A4DC();
}

uint64_t sub_100BFEDC8(char a1)
{
  v2 = *(*v1 + 520);
  v3 = *(*v1 + 432);
  v5 = *v1;
  *(*v1 + 552) = a1;

  return _swift_task_switch(sub_100BFEEE0, v3, 0);
}

uint64_t sub_100BFEEE0()
{
  if (*(v0 + 552) != 1)
  {
    type metadata accessor for SPPairingSessionError(0);
    *(v0 + 392) = 20;
    sub_100032898(_swiftEmptyArrayStorage);
    sub_100C01198(&unk_1016B2710, type metadata accessor for SPPairingSessionError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v10 = *(v0 + 384);
LABEL_8:
    swift_willThrow();
LABEL_9:
    v14 = *(v0 + 504);
    v13 = *(v0 + 512);
    v15 = *(v0 + 496);
    v17 = *(v0 + 456);
    v16 = *(v0 + 464);
    v18 = *(v0 + 448);

    v19 = *(v0 + 8);

    return v19();
  }

  sub_10001F280(*(v0 + 416), v0 + 256);
  sub_1000BC4D4(&qword_1016B7F38, &qword_1013DDFA8);
  if (!swift_dynamicCast())
  {
    v11 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for PairingBeaconStoreError.invalidPairingKeysType(_:), v11);
    goto LABEL_8;
  }

  v1 = *(v0 + 424);
  v2 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v2;
  *(v0 + 80) = *(v0 + 160);
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  sub_10001F280(v1, v0 + 296);
  sub_1000BC4D4(&qword_1016B7F48, &qword_1013DDFB0);
  type metadata accessor for AccessoryPairingInfo(0);
  if (!swift_dynamicCast())
  {
    v21 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, enum case for PairingBeaconStoreError.invalidAccessoryInfoType(_:), v21);
    swift_willThrow();
    goto LABEL_13;
  }

  v4 = *(v0 + 512);
  v5 = *(v0 + 400);
  *(v0 + 528) = v5;
  v6 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v5 + v6, v4, &qword_101697268, &qword_101394FE0);
  v7 = type metadata accessor for AccessoryProductInfo();
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_10000B3A8(v4, &qword_101697268, &qword_101394FE0);
  if (v6 == 1)
  {
    v8 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for PairingBeaconStoreError.invalidProductInfo(_:), v8);
    swift_willThrow();

LABEL_13:
    sub_1001DA760(v0 + 16);
    goto LABEL_9;
  }

  v23 = *(v0 + 472);
  v24 = *(v0 + 480);
  v25 = *(v0 + 464);
  v26 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v5 + v26, v25, &qword_1016A40D0, &unk_10138BE70);
  if ((*(v24 + 48))(v25, 1, v23) == 1)
  {
    sub_10000B3A8(*(v0 + 464), &qword_1016A40D0, &unk_10138BE70);
    v27 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, enum case for PairingBeaconStoreError.invalidClassicMacAddress(_:), v27);
    swift_willThrow();
    sub_1001DA760(v0 + 16);

    goto LABEL_9;
  }

  v30 = *(v0 + 496);
  v29 = *(v0 + 504);
  v32 = *(v0 + 480);
  v31 = *(v0 + 488);
  v33 = *(v0 + 472);
  v44 = *(v0 + 432);
  v45 = *(v32 + 32);
  v45(v29, *(v0 + 464), v33);
  v34 = *(v5 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_allSerialNumbersAndPartIds);
  v35 = *(v32 + 16);

  v35(v30, v29, v33);
  v36 = (*(v32 + 80) + 112) & ~*(v32 + 80);
  v37 = swift_allocObject();
  *(v0 + 536) = v37;
  *(v37 + 16) = v44;
  v38 = *(v0 + 16);
  *(v37 + 40) = *(v0 + 32);
  v39 = *(v0 + 64);
  *(v37 + 56) = *(v0 + 48);
  *(v37 + 72) = v39;
  *(v37 + 88) = *(v0 + 80);
  *(v37 + 24) = v38;
  *(v37 + 104) = v5;
  v45(v37 + v36, v30, v33);
  *(v37 + ((v31 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v34;

  sub_100102538(v0 + 16, v0 + 176);
  v40 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v41 = swift_task_alloc();
  *(v0 + 544) = v41;
  *v41 = v0;
  v41[1] = sub_100BFF638;
  v42 = *(v0 + 456);
  v43 = *(v0 + 440);

  return unsafeBlocking<A>(context:_:)(v42, 0xD000000000000010, 0x800000010134A8C0, sub_100C00E80, v37, v43);
}

uint64_t sub_100BFF638()
{
  v1 = *(*v0 + 544);
  v2 = *(*v0 + 536);
  v3 = *(*v0 + 432);
  v5 = *v0;

  return _swift_task_switch(sub_100BFF764, v3, 0);
}

uint64_t sub_100BFF764()
{
  v1 = v0[56];
  sub_1000D2A70(v0[57], v1, &qword_1016B7F58, &qword_1013DDFC0);
  v2 = sub_1000BC4D4(&qword_1016973B8, &qword_1013EAD60);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[66];
  v5 = v0[63];
  v6 = v0[59];
  v7 = v0[60];
  v9 = v0[56];
  v8 = v0[57];
  v10 = v0[51];
  if (v3 == 1)
  {
    v11 = v0[66];

    sub_1001DA760((v0 + 2));
    sub_10000B3A8(v8, &qword_1016B7F58, &qword_1013DDFC0);
    (*(v7 + 8))(v5, v6);
    sub_10000B3A8(v9, &qword_1016B7F58, &qword_1013DDFC0);
    *v10 = 0u;
    *(v10 + 16) = 0u;
    *(v10 + 32) = 0u;
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    v12 = *(v2 + 48);
    *(v10 + 24) = type metadata accessor for OwnedBeaconRecord();
    *(v10 + 32) = sub_100C01198(&qword_1016B7F60, type metadata accessor for OwnedBeaconRecord);
    v13 = sub_1000280DC(v10);
    sub_100C00F28(v9, v13, type metadata accessor for OwnedBeaconRecord);
    *(v10 + 64) = type metadata accessor for OwnedBeaconGroup(0);
    *(v10 + 72) = sub_100C01198(&qword_1016B7F30, type metadata accessor for OwnedBeaconGroup);
    v14 = sub_1000280DC((v10 + 40));
    sub_100C00F28(v9 + v12, v14, type metadata accessor for OwnedBeaconGroup);

    sub_1001DA760((v0 + 2));
    sub_10000B3A8(v8, &qword_1016B7F58, &qword_1013DDFC0);
    (*(v7 + 8))(v5, v6);
  }

  v16 = v0[63];
  v15 = v0[64];
  v17 = v0[62];
  v19 = v0[57];
  v18 = v0[58];
  v20 = v0[56];

  v21 = v0[1];

  return v21();
}

uint64_t sub_100BFFA20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[44] = a3;
  v4[45] = v3;
  v4[42] = a1;
  v4[43] = a2;
  v5 = *(*(sub_1000BC4D4(&qword_1016A40D0, &unk_10138BE70) - 8) + 64) + 15;
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v6 = type metadata accessor for MACAddress();
  v4[48] = v6;
  v7 = *(v6 - 8);
  v4[49] = v7;
  v8 = *(v7 + 64) + 15;
  v4[50] = swift_task_alloc();
  v4[51] = swift_task_alloc();
  v9 = *(*(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8) + 64) + 15;
  v4[52] = swift_task_alloc();

  return _swift_task_switch(sub_100BFFB6C, v3, 0);
}

uint64_t sub_100BFFB6C()
{
  sub_10001F280(*(v0 + 344), v0 + 176);
  sub_1000BC4D4(&qword_1016B7F38, &qword_1013DDFA8);
  if (!swift_dynamicCast())
  {
    v10 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for PairingBeaconStoreError.invalidPairingKeysType(_:), v10);
    swift_willThrow();
LABEL_8:
    v15 = *(v0 + 408);
    v14 = *(v0 + 416);
    v16 = *(v0 + 400);
    v18 = *(v0 + 368);
    v17 = *(v0 + 376);

    v19 = *(v0 + 8);

    return v19();
  }

  v1 = *(v0 + 352);
  v2 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v2;
  *(v0 + 80) = *(v0 + 160);
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  sub_10001F280(v1, v0 + 216);
  sub_1000BC4D4(&qword_1016B7F48, &qword_1013DDFB0);
  type metadata accessor for AccessoryPairingInfo(0);
  if (!swift_dynamicCast())
  {
    v12 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v12 - 8) + 104))(v13, enum case for PairingBeaconStoreError.invalidAccessoryInfoType(_:), v12);
    swift_willThrow();
    goto LABEL_7;
  }

  v4 = *(v0 + 416);
  v5 = *(v0 + 328);
  *(v0 + 424) = v5;
  v6 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(v5 + v6, v4, &qword_101697268, &qword_101394FE0);
  v7 = type metadata accessor for AccessoryProductInfo();
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v4, 1, v7);
  sub_10000B3A8(v4, &qword_101697268, &qword_101394FE0);
  if (v6 == 1)
  {
    v8 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for PairingBeaconStoreError.invalidProductInfo(_:), v8);
    swift_willThrow();

LABEL_7:
    sub_1001DA760(v0 + 16);
    goto LABEL_8;
  }

  v21 = *(v0 + 384);
  v22 = *(v0 + 392);
  v23 = *(v0 + 376);
  v24 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_classicMacAddress;
  swift_beginAccess();
  sub_1000D2A70(v5 + v24, v23, &qword_1016A40D0, &unk_10138BE70);
  v25 = *(v22 + 48);
  if (v25(v23, 1, v21) == 1)
  {
    sub_10000B3A8(*(v0 + 376), &qword_1016A40D0, &unk_10138BE70);
    v26 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, enum case for PairingBeaconStoreError.invalidClassicMacAddress(_:), v26);
    swift_willThrow();
    sub_1001DA760(v0 + 16);

    goto LABEL_8;
  }

  v28 = *(v0 + 384);
  v29 = *(v0 + 368);
  v30 = *(*(v0 + 392) + 32);
  v30(*(v0 + 408), *(v0 + 376), v28);
  v31 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_macAddress;
  swift_beginAccess();
  sub_1000D2A70(v5 + v31, v29, &qword_1016A40D0, &unk_10138BE70);
  v32 = v25(v29, 1, v28);
  v33 = *(v0 + 384);
  v34 = *(v0 + 368);
  if (v32 == 1)
  {
    v35 = *(v0 + 408);
    v36 = *(v0 + 392);
    sub_10000B3A8(*(v0 + 368), &qword_1016A40D0, &unk_10138BE70);
    v37 = type metadata accessor for PairingBeaconStoreError();
    sub_100C01198(&qword_1016B7F40, &type metadata accessor for PairingBeaconStoreError);
    swift_allocError();
    (*(*(v37 - 8) + 104))(v38, enum case for PairingBeaconStoreError.invalidMacAddress(_:), v37);
    swift_willThrow();
    sub_1001DA760(v0 + 16);

    (*(v36 + 8))(v35, v33);
    goto LABEL_8;
  }

  v39 = *(v0 + 360);
  v40 = *(v0 + 336);
  v30(*(v0 + 400), *(v0 + 368), *(v0 + 384));
  v41 = type metadata accessor for __DataStorage();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = __DataStorage.init(length:)();
  *(v0 + 432) = v44;
  v40[3] = type metadata accessor for StandaloneBeacon();
  v40[4] = sub_100C01198(&qword_1016B7F50, type metadata accessor for StandaloneBeacon);
  v45 = sub_1000280DC(v40);
  v46 = *(v39 + 128);
  v47 = swift_task_alloc();
  *(v0 + 440) = v47;
  *v47 = v0;
  v47[1] = sub_100C00310;
  v48 = *(v0 + 400);
  v49 = *(v0 + 408);

  return sub_100B90BDC(v45, v0 + 16, v5, v48, v49, 0x6000000000, v44 | 0x4000000000000000);
}

uint64_t sub_100C00310()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  v5 = *(v2 + 360);
  if (v0)
  {
    v6 = sub_100C00538;
  }

  else
  {
    v6 = sub_100C0043C;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100C0043C()
{
  v1 = v0[53];
  v2 = v0[54];
  v4 = v0[51];
  v3 = v0[52];
  v6 = v0[49];
  v5 = v0[50];
  v8 = v0[47];
  v7 = v0[48];
  v9 = v0[46];
  sub_1001DA760((v0 + 2));

  v10 = *(v6 + 8);
  v10(v5, v7);
  v10(v4, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100C00538()
{
  v1 = v0[53];
  v2 = v0[54];
  v4 = v0[50];
  v3 = v0[51];
  v5 = v0[48];
  v6 = v0[49];
  v7 = v0[42];
  sub_1001DA760((v0 + 2));

  v8 = *(v6 + 8);
  v8(v4, v5);
  v8(v3, v5);
  sub_100101758(v7);
  v9 = v0[56];
  v11 = v0[51];
  v10 = v0[52];
  v12 = v0[50];
  v14 = v0[46];
  v13 = v0[47];

  v15 = v0[1];

  return v15();
}

uint64_t sub_100C00638(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for MACAddress();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v3[7] = *(v5 + 64);
  v3[8] = swift_task_alloc();
  v6 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v3[9] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[10] = swift_task_alloc();

  return _swift_task_switch(sub_100C00740, v2, 0);
}

uint64_t sub_100C00740()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[3], v2);
  v5 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[11] = v6;
  *(v6 + 16) = v4;
  (*(v3 + 32))(v6 + v5, v1, v2);
  v7 = async function pointer to unsafeBlocking<A>(context:_:)[1];

  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_100C0089C;
  v10 = v0[9];
  v9 = v0[10];

  return unsafeBlocking<A>(context:_:)(v9, 0xD000000000000010, 0x800000010134A8C0, sub_100102120, v6, v10);
}

uint64_t sub_100C0089C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 32);
  v5 = *v0;

  return _swift_task_switch(sub_100C009C8, v3, 0);
}

uint64_t sub_100C009C8()
{
  v1 = v0[10];
  v2 = type metadata accessor for OwnedBeaconGroup(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[2];
  if (v3 == 1)
  {
    sub_10000B3A8(v1, &unk_1016AF8B0, &unk_1013A0700);
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0;
  }

  else
  {
    *(v4 + 24) = v2;
    *(v4 + 32) = sub_100C01198(&qword_1016B7F30, type metadata accessor for OwnedBeaconGroup);
    v5 = sub_1000280DC(v4);
    sub_100C00F28(v1, v5, type metadata accessor for OwnedBeaconGroup);
  }

  v6 = v0[10];
  v7 = v0[8];

  v8 = v0[1];

  return v8();
}

uint64_t sub_100C00B18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100BFE168(a1, a2, a3);
}

uint64_t sub_100C00BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100BFB0B0(a1, a2, a3);
}

uint64_t sub_100C00C78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014744;

  return sub_100BFEBA4(a1, a2, a3);
}

uint64_t sub_100C00D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_100014650;

  return sub_100BFFA20(a1, a2, a3);
}

uint64_t sub_100C00DD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_100C00638(a1, a2);
}

uint64_t sub_100C00E80@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MACAddress() - 8);
  v4 = (*(v3 + 80) + 112) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 104);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100E6D6EC(v5, v1 + 24, v6, v1 + v4, v7, a1);
}

uint64_t sub_100C00F28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C00F90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100C01018(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100C01078(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_100BFCF68(a1, v4);
}

void sub_100C010E8()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  sub_100E75AC0(v3, v0 + v2, v5, v6);
}

uint64_t sub_100C01198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100C011E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for PairingConfig() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0) - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = v1[2];
  v14 = v1[3];
  v15 = v1[4];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_100014650;

  return sub_100BFD834(a1, v13, v14, v15, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_100C013A8(uint64_t a1)
{
  v2 = *(*(sub_1000BC4D4(&qword_1016B7F80, &qword_1013DDFE0) - 8) + 80);

  return sub_100BFDE00(a1);
}

uint64_t sub_100C01434()
{
  v1 = *(type metadata accessor for OwnedBeaconRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PairingConfig() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_100E6D368(v6, v0 + v2, (v0 + v5), v8, v9);
}

uint64_t sub_100C0153C@<X0>(char *a1@<X8>)
{
  v3 = *(sub_1000BC4D4(&qword_101697268, &qword_101394FE0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 104);
  v6 = v1 + ((*(v3 + 80) + 112) & ~*(v3 + 80));

  return sub_100E6D39C(v4, (v1 + 24), v5, v6, a1);
}

void *sub_100C015C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v7 = sub_1000BC4D4(&qword_101698E38, &unk_101395BA0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v22 - v9;
  swift_defaultActor_initialize();
  v2[14] = 0;
  type metadata accessor for PairingCoordinatorStateManager();
  v2[22] = PairingCoordinatorStateManager.__allocating_init()();
  v2[29] = 0;
  type metadata accessor for WorkItemQueue();
  v11 = type metadata accessor for WorkItemQueue.WarningOptions();
  v12 = *(*(v11 - 8) + 56);
  v12(v10, 1, 1, v11);
  UUID.init()();
  v2[30] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v12(v10, 1, 1, v11);
  UUID.init()();
  v2[31] = WorkItemQueue.__allocating_init(name:identifier:warningOptions:)();
  v13 = sub_1000BC4D4(&qword_1016B8100, &qword_1013DE218);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v2[20] = AsyncStreamProvider.init()();
  v16 = sub_1000BC4D4(&qword_1016B8108, &unk_1013DE220);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v2[21] = AsyncStreamProvider.init()();
  v19 = v23;
  sub_10001F280(v23, (v2 + 15));
  sub_100C023E4(a2, (v2 + 23));
  type metadata accessor for Transaction();
  v20 = static Transaction.current.getter();
  sub_100C02454(a2);
  sub_100007BAC(v19);
  v3[28] = v20;
  return v3;
}

uint64_t sub_100C0183C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return _swift_task_switch(sub_100C0185C, v1, 0);
}

uint64_t sub_100C0185C()
{
  sub_100C023E4(v0[8] + 184, (v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v2 = *sub_1000035D0(v0 + 2, v1);
    v3 = swift_task_alloc();
    v0[9] = v3;
    *v3 = v0;
    v3[1] = sub_100C01958;

    return sub_100F87B58();
  }

  else
  {
    sub_100C02454((v0 + 2));
    v5 = v0[7];
    *v5 = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_100C01958(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(v4 + 80) = a1;
  *(v4 + 88) = v1;

  v7 = *(v3 + 64);
  if (v1)
  {
    v8 = sub_100C01B64;
  }

  else
  {
    v8 = sub_100C01A8C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C01A8C()
{
  v1 = v0[10];
  if (v1)
  {
    v2 = v0[7];
    v2[3] = sub_100650E24();
    v2[4] = sub_100C024BC(&qword_1016B80F8, 255, sub_100650E24);
    *v2 = v1;
    sub_100007BAC(v0 + 2);
  }

  else
  {
    sub_100007BAC(v0 + 2);
    v3 = v0[7];
    *(v3 + 32) = 0;
    *v3 = 0u;
    *(v3 + 16) = 0u;
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100C01B64()
{
  sub_100007BAC(v0 + 2);
  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

void *sub_100C01BC8()
{
  v1 = v0[14];

  sub_100007BAC(v0 + 15);
  v2 = v0[20];

  v3 = v0[21];

  v4 = v0[22];

  sub_100C02454((v0 + 23));
  v5 = v0[28];

  v6 = v0[29];

  v7 = v0[30];

  v8 = v0[31];

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_100C01C38()
{
  sub_100C01BC8();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100C01D30(__int128 *a1)
{
  swift_beginAccess();
  sub_100007BAC((v1 + 120));
  sub_10000A748(a1, v1 + 120);
  return swift_endAccess();
}

uint64_t sub_100C01DF0()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_100C01E28(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_100C01E70()
{
  swift_beginAccess();
  v1 = *(v0 + 232);
}

uint64_t sub_100C01EA8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 232);
  *(v1 + 232) = a1;
}

uint64_t sub_100C01F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = async function pointer to PairingCoordinator.stream()[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for UniversalPairingCoordinator();
  *v7 = v3;
  v7[1] = sub_100014744;

  return PairingCoordinator.stream()(a1, v8, a3);
}

uint64_t sub_100C01FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = async function pointer to PairingCoordinator.analyticsStream()[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for UniversalPairingCoordinator();
  *v7 = v3;
  v7[1] = sub_100014650;

  return PairingCoordinator.analyticsStream()(a1, v8, a3);
}

uint64_t sub_100C020A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = async function pointer to PairingCoordinator.setState(_:)[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = type metadata accessor for UniversalPairingCoordinator();
  *v7 = v3;
  v7[1] = sub_100014744;

  return PairingCoordinator.setState(_:)(a1, v8, a3);
}

void sub_100C0215C()
{
  type metadata accessor for UniversalPairingCoordinator();

  PairingCoordinator.setup()();
}

uint64_t sub_100C02194(uint64_t a1)
{
  v2 = type metadata accessor for PairingOperation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for PairingOperation.overallPairing(_:))
  {
    return 0x8155A43676E00000;
  }

  if (v7 == enum case for PairingOperation.peripheralRetrieval(_:) || v7 == enum case for PairingOperation.metadataRead(_:) || v7 == enum case for PairingOperation.productInfoFetch(_:) || v7 == enum case for PairingOperation.pairingStart(_:))
  {
    return 0x40AAD21B3B700000;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_100C02300(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C0183C(a1);
}

uint64_t sub_100C02398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UniversalPairingCoordinator();

  return PairingCoordinator.updateDependencies(_:)(a1, v5, a3);
}

uint64_t sub_100C023E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B80F0, &unk_1013DE208);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C02454(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016B80F0, &unk_1013DE208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C024BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

unint64_t sub_100C02518()
{
  result = qword_1016B8110;
  if (!qword_1016B8110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8110);
  }

  return result;
}

unint64_t sub_100C0256C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v86[10] = v1[10];
  v86[11] = v3;
  v86[12] = v1[12];
  v87 = *(v1 + 26);
  v4 = v1[7];
  v86[6] = v1[6];
  v86[7] = v4;
  v5 = v1[9];
  v86[8] = v1[8];
  v86[9] = v5;
  v6 = v1[3];
  v86[2] = v1[2];
  v86[3] = v6;
  v7 = v1[5];
  v86[4] = v1[4];
  v86[5] = v7;
  v8 = v1[1];
  v86[0] = *v1;
  v86[1] = v8;
  v9 = sub_1001DA684(v86);
  if (v9 <= 3)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v37 = sub_10004CA28(v86);
        a1[3] = &type metadata for AirPodsLESendPairingDataCommandPayload;
        a1[4] = sub_1009A00A4();
        v38 = swift_allocObject();
        *a1 = v38;
        memmove((v38 + 16), v37, 0xD8uLL);
        v39 = v1[11];
        v82 = v1[10];
        v83 = v39;
        v84 = v1[12];
        v85 = *(v1 + 26);
        v40 = v1[7];
        v78 = v1[6];
        v79 = v40;
        v41 = v1[9];
        v80 = v1[8];
        v81 = v41;
        v42 = v1[3];
        v74 = v1[2];
        v75 = v42;
        v43 = v1[5];
        v76 = v1[4];
        v77 = v43;
        v44 = v1[1];
        v72 = *v1;
        v73 = v44;
        v34 = sub_10004CA28(&v72);
        v35 = &unk_1016B0720;
        v36 = &unk_1013CDFD0;
      }

      else
      {
        v63 = sub_10004CA28(v86);
        a1[3] = &type metadata for AirPodsMCFinalizePairingCommandPayload;
        a1[4] = sub_1009A1FAC();
        v64 = swift_allocObject();
        *a1 = v64;
        memmove((v64 + 16), v63, 0xC0uLL);
        v65 = v1[11];
        v82 = v1[10];
        v83 = v65;
        v84 = v1[12];
        v85 = *(v1 + 26);
        v66 = v1[7];
        v78 = v1[6];
        v79 = v66;
        v67 = v1[9];
        v80 = v1[8];
        v81 = v67;
        v68 = v1[3];
        v74 = v1[2];
        v75 = v68;
        v69 = v1[5];
        v76 = v1[4];
        v77 = v69;
        v70 = v1[1];
        v72 = *v1;
        v73 = v70;
        v34 = sub_10004CA28(&v72);
        v35 = &unk_1016B82A8;
        v36 = &unk_1013E7AE0;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = sub_10004CA28(v86);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v11 = swift_allocObject();
        *a1 = v11;
        v12 = v10[1];
        *(v11 + 16) = *v10;
        *(v11 + 32) = v12;
        v13 = v1[1];
        v72 = *v1;
        v73 = v13;
        v14 = v1[5];
        v76 = v1[4];
        v77 = v14;
        v15 = v1[3];
        v74 = v1[2];
        v75 = v15;
        v16 = v1[9];
        v80 = v1[8];
        v81 = v16;
        v17 = v1[7];
        v78 = v1[6];
        v79 = v17;
        v85 = *(v1 + 26);
        v18 = v1[12];
        v83 = v1[11];
        v84 = v18;
        v82 = v1[10];
        v19 = sub_10004CA28(&v72);
        v20 = v19[2];
        v21 = v19[3];
        sub_100017D5C(*v19, v19[1]);
        return sub_100017D5C(v20, v21);
      }

      v45 = sub_10004CA28(v86);
      a1[3] = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      a1[4] = sub_100391B40();
      v46 = swift_allocObject();
      *a1 = v46;
      memmove((v46 + 16), v45, 0x50uLL);
      v47 = v1[11];
      v82 = v1[10];
      v83 = v47;
      v84 = v1[12];
      v85 = *(v1 + 26);
      v48 = v1[7];
      v78 = v1[6];
      v79 = v48;
      v49 = v1[9];
      v80 = v1[8];
      v81 = v49;
      v50 = v1[3];
      v74 = v1[2];
      v75 = v50;
      v51 = v1[5];
      v76 = v1[4];
      v77 = v51;
      v52 = v1[1];
      v72 = *v1;
      v73 = v52;
      v34 = sub_10004CA28(&v72);
      v35 = &unk_10169EAC0;
      v36 = &unk_10139E338;
    }

    return sub_1000D2A70(v34, v71, v35, v36);
  }

  if (v9 <= 5)
  {
    if (v9 != 4)
    {
      v53 = sub_10004CA28(v86);
      v54 = *v53;
      v55 = v53[1];
      a1[3] = &type metadata for AirPodsSWPairingCompleteCommandPayload;
      a1[4] = sub_100391A98();
      *a1 = v54;
      a1[1] = v55;
      v56 = v1[11];
      v82 = v1[10];
      v83 = v56;
      v84 = v1[12];
      v85 = *(v1 + 26);
      v57 = v1[7];
      v78 = v1[6];
      v79 = v57;
      v58 = v1[9];
      v80 = v1[8];
      v81 = v58;
      v59 = v1[3];
      v74 = v1[2];
      v75 = v59;
      v60 = v1[5];
      v76 = v1[4];
      v77 = v60;
      v61 = v1[1];
      v72 = *v1;
      v73 = v61;
      v62 = sub_10004CA28(&v72);
      return sub_100017D5C(*v62, *(v62 + 8));
    }

    v23 = sub_10004CA28(v86);
    a1[3] = &type metadata for AirPodsMCSendPairingStatusCommandPayload;
    a1[4] = sub_1009A1F58();
    v24 = swift_allocObject();
    *a1 = v24;
    v25 = v23[3];
    v27 = *v23;
    v26 = v23[1];
    v24[3] = v23[2];
    v24[4] = v25;
    v24[1] = v27;
    v24[2] = v26;
    v28 = v1[11];
    v82 = v1[10];
    v83 = v28;
    v84 = v1[12];
    v85 = *(v1 + 26);
    v29 = v1[7];
    v78 = v1[6];
    v79 = v29;
    v30 = v1[9];
    v80 = v1[8];
    v81 = v30;
    v31 = v1[3];
    v74 = v1[2];
    v75 = v31;
    v32 = v1[5];
    v76 = v1[4];
    v77 = v32;
    v33 = v1[1];
    v72 = *v1;
    v73 = v33;
    v34 = sub_10004CA28(&v72);
    v35 = &unk_1016B82A0;
    v36 = &unk_1013DE2D0;
    return sub_1000D2A70(v34, v71, v35, v36);
  }

  if (v9 == 6)
  {
    a1[3] = &type metadata for AccessoryGenericPayload;
    result = sub_10030FF74();
  }

  else
  {
    a1[3] = &type metadata for UnpairCommandPayload;
    result = sub_10027EE90();
  }

  a1[4] = result;
  return result;
}

uint64_t sub_100C02A24(void *a1)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[12];
  v16 = *(v1 + 26);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_10099DA9C(a1);
}

double sub_100C02A90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100C02E28(a1, a2, a3, a4, v14);
  if (!v5)
  {
    v8 = v14[11];
    *(a5 + 160) = v14[10];
    *(a5 + 176) = v8;
    *(a5 + 192) = v14[12];
    *(a5 + 208) = v15;
    v9 = v14[7];
    *(a5 + 96) = v14[6];
    *(a5 + 112) = v9;
    v10 = v14[9];
    *(a5 + 128) = v14[8];
    *(a5 + 144) = v10;
    v11 = v14[3];
    *(a5 + 32) = v14[2];
    *(a5 + 48) = v11;
    v12 = v14[5];
    *(a5 + 64) = v14[4];
    *(a5 + 80) = v12;
    result = *v14;
    v13 = v14[1];
    *a5 = v14[0];
    *(a5 + 16) = v13;
  }

  return result;
}

double sub_100C02B34@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v14 = a1;
  sub_100101824();
  FixedWidthInteger.data.getter();
  sub_1003CD9CC();
  BinaryDecodable.init(data:)();
  if (!v2)
  {
    v11[0] = v13;
    sub_1009A1D78(v11);
    v5 = v11[11];
    *(a2 + 160) = v11[10];
    *(a2 + 176) = v5;
    *(a2 + 192) = v11[12];
    *(a2 + 208) = v12;
    v6 = v11[7];
    *(a2 + 96) = v11[6];
    *(a2 + 112) = v6;
    v7 = v11[9];
    *(a2 + 128) = v11[8];
    *(a2 + 144) = v7;
    v8 = v11[3];
    *(a2 + 32) = v11[2];
    *(a2 + 48) = v8;
    v9 = v11[5];
    *(a2 + 64) = v11[4];
    *(a2 + 80) = v9;
    result = *v11;
    v10 = v11[1];
    *a2 = v11[0];
    *(a2 + 16) = v10;
  }

  return result;
}

uint64_t sub_100C02C18(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = sub_100A743A8(a3, a4);
  if (!v4)
  {
    v10 = result;
    v11 = v8;
    v12 = v9;
    sub_100017D5C(result, v8);
    sub_100496024(v10, v11, v15);
    v13 = v15[0];
    v14 = v15[1];
    a1[3] = &type metadata for CollaborativeKeyGen.v2.C2;
    a1[4] = sub_1001023F4();
    *a1 = v13;
    a1[1] = v14;
    a2[3] = type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
    a2[4] = &off_101645BC0;
    result = sub_100016590(v10, v11);
    *a2 = v12;
  }

  return result;
}

__n128 sub_100C02CF8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_100C04520(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a4 + 32) = v8[2];
    *(a4 + 48) = v7;
    *(a4 + 64) = v8[4];
    result = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = result;
  }

  return result;
}

unint64_t sub_100C02D50(uint64_t a1)
{
  *(a1 + 8) = sub_100C02D80();
  result = sub_100C02DD4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100C02D80()
{
  result = qword_1016B8290;
  if (!qword_1016B8290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8290);
  }

  return result;
}

unint64_t sub_100C02DD4()
{
  result = qword_1016B8298;
  if (!qword_1016B8298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8298);
  }

  return result;
}

uint64_t sub_100C02E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v136 = a4;
  v137 = a3;
  v9 = type metadata accessor for String.Encoding();
  v139 = *(v9 - 8);
  v140 = v9;
  v10 = *(v139 + 64);
  __chkstk_darwin(v9);
  v138 = &v129 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B0728, &qword_1013CDFE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v129 - v14;
  v16 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v129 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = a2;
  sub_10001F280(a2, &v143);
  v141 = sub_1000BC4D4(&qword_1016B0730, &unk_1013DE2E0);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v15, 0, 1, v16);
    sub_1009A1C54(v15, v20);
    sub_10099E5C0(v20, a1);
    if (v5)
    {
      return sub_1009A1CB8(v20);
    }

    v34 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
    swift_beginAccess();
    sub_1000D2A70(a1 + v34, &v143, &qword_101697378, &unk_101391940);
    v35 = *(&v144 + 1);
    if (!*(&v144 + 1))
    {
      sub_10000B3A8(&v143, &qword_101697378, &unk_101391940);
      sub_100413200();
      swift_allocError();
      *v62 = 8;
      swift_willThrow();
      return sub_1009A1CB8(v20);
    }

    v129 = a5;
    v135 = v20;
    v36 = v145;
    v37 = sub_1000035D0(&v143, *(&v144 + 1));
    v38 = *(v35 - 8);
    v39 = *(v38 + 64);
    __chkstk_darwin(v37);
    v41 = &v129 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v38 + 16))(v41);
    sub_10000B3A8(&v143, &qword_101697378, &unk_101391940);
    v42 = (*(*(*(v36 + 8) + 8) + 40))(v35);
    v44 = v43;
    (*(v38 + 8))(v41, v35);
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    v46 = sub_1000076D4(v45, qword_10177ACB0);
    sub_100017D5C(v42, v44);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    sub_100016590(v42, v44);
    v49 = os_log_type_enabled(v47, v48);
    v50 = v42;
    v134 = v44;
    if (v49)
    {
      v51 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&v143 = v131;
      *v51 = 136446210;
      v52 = Data.hexString.getter();
      v54 = sub_1000136BC(v52, v53, &v143);
      LODWORD(v130) = v48;
      v55 = v54;

      *(v51 + 4) = v55;
      v50 = v42;
      _os_log_impl(&_mh_execute_header, v47, v130, "sharedCommitment: %{public}s", v51, 0xCu);
      sub_100007BAC(v131);
    }

    if (*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) == 1)
    {
      v138 = a1;
      v56 = type metadata accessor for __DataStorage();
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      swift_allocObject();
      v59 = __DataStorage.init(length:)();
      *&v143 = 0x3C00000000;
      *(&v143 + 1) = v59;
      sub_1007765FC(&v143, 0);
      v60 = v143;
      v61 = *(&v143 + 1) | 0x4000000000000000;
LABEL_24:
      sub_100017D5C(v60, v61);
      v71 = Logger.logObject.getter();
      v72 = static os_log_type_t.default.getter();
      sub_100016590(v60, v61);
      v73 = os_log_type_enabled(v71, v72);
      v132 = v46;
      v133 = v50;
      v139 = v61;
      v140 = v60;
      if (v73)
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v143 = v75;
        *v74 = 136446210;
        sub_100017D5C(v60, v61);
        v76 = Data.description.getter();
        v77 = v60;
        v78 = v76;
        v80 = v79;
        sub_100016590(v77, v61);
        v81 = sub_1000136BC(v78, v80, &v143);

        *(v74 + 4) = v81;
        _os_log_impl(&_mh_execute_header, v71, v72, "maskedIdentifier: %{public}s", v74, 0xCu);
        sub_100007BAC(v75);
      }

      v82 = v138;
      *&v143 = *(v138 + 32);
      sub_100102194();
      v83 = FixedWidthInteger.data.getter();
      v85 = v84;
      sub_100017D5C(v83, v84);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      sub_100016590(v83, v85);
      v88 = os_log_type_enabled(v86, v87);
      v130 = v85;
      v131 = v83;
      if (v88)
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *&v143 = v90;
        *v89 = 136446210;
        v91 = Data.hexString.getter();
        v93 = v82;
        v94 = sub_1000136BC(v91, v92, &v143);

        *(v89 + 4) = v94;
        v82 = v93;
        _os_log_impl(&_mh_execute_header, v86, v87, "response.pairingEpoch: %{public}s", v89, 0xCu);
        sub_100007BAC(v90);
      }

      v95 = *(v82 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8);
      if (v95 >> 60 == 15 || (v96 = *(v82 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3 + 8), v96 >> 60 == 15) || (v97 = *(v82 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8), v97 >> 60 == 15) || (v98 = (v82 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1), v99 = *(v82 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8), v99 >> 60 == 15))
      {
        sub_10001F280(v142, &v143);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.error.getter();
        v102 = os_log_type_enabled(v100, v101);
        v103 = v131;
        if (v102)
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v160 = v105;
          *v104 = 136446210;
          sub_10001F280(&v143, v158);
          v106 = String.init<A>(describing:)();
          v108 = v107;
          sub_100007BAC(&v143);
          v109 = sub_1000136BC(v106, v108, &v160);

          *(v104 + 4) = v109;
          _os_log_impl(&_mh_execute_header, v100, v101, "Invalid pairing lock data %{public}s", v104, 0xCu);
          sub_100007BAC(v105);
        }

        else
        {

          sub_100007BAC(&v143);
        }

        v111 = v134;
        v110 = v135;
        v112 = v133;
        sub_100413200();
        swift_allocError();
        *v113 = 2;
        swift_willThrow();
        sub_100016590(v103, v130);
        sub_100016590(v140, v139);
        sub_100016590(v112, v111);
        return sub_1009A1CB8(v110);
      }

      else
      {
        v114 = *(v82 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
        v141 = *(v82 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3);
        v115 = v141;
        v142 = v114;
        v138 = *(v82 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
        v116 = v138;
        v117 = *v98;
        sub_10002E98C(v114, v95);
        sub_10002E98C(v115, v96);
        sub_10002E98C(v116, v97);
        sub_10002E98C(v117, v99);
        v119 = v136;
        v118 = v137;
        sub_100017D5C(v137, v136);
        *&v128 = v118;
        *(&v128 + 1) = v119;
        *(&v127 + 1) = v130;
        *&v127 = v131;
        sub_1008BB678(v133, v134, v142, v95, v140, v139, v141, v96, v159, v138, v97, v117, v99, v127, v128);
        sub_1009A1CB8(v135);
        v151 = v159[8];
        v152 = v159[9];
        v153 = v159[10];
        v154 = v159[11];
        v147 = v159[4];
        v148 = v159[5];
        v149 = v159[6];
        v150 = v159[7];
        v143 = v159[0];
        v144 = v159[1];
        v145 = v159[2];
        v146 = v159[3];
        result = sub_1001DA318(&v143);
        v120 = v154;
        v121 = v129;
        *(v129 + 160) = v153;
        *(v121 + 176) = v120;
        *(v121 + 192) = v155;
        *(v121 + 208) = v156;
        v122 = v150;
        *(v121 + 96) = v149;
        *(v121 + 112) = v122;
        v123 = v152;
        *(v121 + 128) = v151;
        *(v121 + 144) = v123;
        v124 = v146;
        *(v121 + 32) = v145;
        *(v121 + 48) = v124;
        v125 = v148;
        *(v121 + 64) = v147;
        *(v121 + 80) = v125;
        v126 = v144;
        *v121 = v143;
        *(v121 + 16) = v126;
      }

      return result;
    }

    if (*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId + 8))
    {
      v63 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId);
      v64 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId + 8);

      v65 = v138;
      static String.Encoding.utf8.getter();
      v60 = String.data(using:allowLossyConversion:)();
      v61 = v66;

      (*(v139 + 8))(v65, v140);
      if (v61 >> 60 != 15)
      {
        v138 = a1;
        goto LABEL_24;
      }
    }

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "Unable to decode masked apple ID", v69, 2u);
    }

    sub_100413200();
    swift_allocError();
    *v70 = 7;
    swift_willThrow();
    sub_100016590(v50, v134);
    return sub_1009A1CB8(v135);
  }

  else
  {
    v22(v15, 1, 1, v16);
    sub_10000B3A8(v15, &qword_1016B0728, &qword_1013CDFE0);
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000076D4(v24, qword_10177ACB0);
    sub_10001F280(v142, &v143);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v157 = v28;
      *v27 = 136446210;
      sub_10001F280(&v143, v158);
      v29 = String.init<A>(describing:)();
      v31 = v30;
      sub_100007BAC(&v143);
      v32 = sub_1000136BC(v29, v31, &v157);

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v25, v26, "Invalid pairing lock response %{public}s", v27, 0xCu);
      sub_100007BAC(v28);
    }

    else
    {

      sub_100007BAC(&v143);
    }

    sub_100413200();
    swift_allocError();
    *v33 = 2;
    return swift_willThrow();
  }
}

uint64_t sub_100C03C24(uint64_t a1, uint64_t a2)
{
  sub_10001F280(a1, v85);
  sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
  if (swift_dynamicCast())
  {
    v80 = v84[0];
    v81 = v84[1];
    v82 = v84[2];
    v83 = v84[3];
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177ACB0);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Received pairing status.", v8, 2u);
    }

    v9 = v81;
    sub_100017D5C(v81, *(&v81 + 1));
    v10 = sub_1008CDF88(v81, *(&v81 + 1));
    if (v10)
    {
      v11 = v10;
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v76 = v15;
        *v14 = 136446210;
        v16 = sub_1008CDD10(v11);
        v18 = sub_1000136BC(v16, v17, &v76);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Pairing failed with status %{public}s", v14, 0xCu);
        sub_100007BAC(v15);
      }

      sub_100413200();
      swift_allocError();
      v20 = 4;
LABEL_20:
      *v19 = v20;
      swift_willThrow();
      return sub_1009A2054(&v80);
    }

    sub_100017D5C(v80, *(&v80 + 1));
    sub_10049636C(v80, *(&v80 + 1), &v76);
    if (v2)
    {

      sub_100C046EC(&v80, &v76);
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      sub_1009A2054(&v80);
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v76 = v35;
        *v34 = 136315138;
        v36 = Data.hexString.getter();
        v38 = sub_1000136BC(v36, v37, &v76);

        *(v34 + 4) = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Invalid C3: %s", v34, 0xCu);
        sub_100007BAC(v35);
      }

      sub_100413200();
      swift_allocError();
      v20 = 9;
      goto LABEL_20;
    }

    v75 = v76;
    v74 = v77;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = os_log_type_enabled(v39, v40);
    v86 = a2;
    if (v41)
    {
      v42 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v76 = v72;
      *v42 = 136446210;
      v43 = sub_1008CDD10(0);
      v45 = sub_1000136BC(v43, v44, &v76);

      *(v42 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v40, "status: %{public}s", v42, 0xCu);
      sub_100007BAC(v72);
    }

    sub_100C046EC(&v80, &v76);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v46, v47))
    {
      sub_1009A2054(&v80);
LABEL_36:

      sub_100C046EC(&v80, &v76);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      sub_1009A2054(&v80);
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v76 = v61;
        *v60 = 136315138;
        v62 = Data.hexString.getter();
        v64 = sub_1000136BC(v62, v63, &v76);

        *(v60 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v58, v59, "C3: %s", v60, 0xCu);
        sub_100007BAC(v61);
      }

      v78 = &type metadata for CollaborativeKeyGen.v2.C3;
      v79 = sub_10010194C();
      v76 = v75;
      v77 = v74;
      v65 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC3;
      v66 = v86;
      swift_beginAccess();
      sub_100C04748(&v76, v66 + v65);
      swift_endAccess();
      v67 = *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status);
      v68 = *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status + 8);
      *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_status) = v9;
      sub_100017D5C(v9, *(&v9 + 1));
      sub_100006654(v67, v68);
      v69 = v82;
      sub_100017D5C(v82, *(&v82 + 1));
      sub_1009A2054(&v80);
      v70 = *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4);
      v71 = *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4 + 8);
      *(v66 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_payloadSignatureS4) = v69;
      return sub_100006654(v70, v71);
    }

    v48 = swift_slowAlloc();
    result = swift_slowAlloc();
    v73 = result;
    v76 = result;
    *v48 = 134218242;
    v49 = v82;
    v50 = *(&v82 + 1) >> 62;
    if ((*(&v82 + 1) >> 62) > 1)
    {
      if (v50 != 2)
      {
        v51 = 0;
        goto LABEL_35;
      }

      v53 = *(v82 + 16);
      v52 = *(v82 + 24);
      v54 = __OFSUB__(v52, v53);
      v51 = v52 - v53;
      if (!v54)
      {
        goto LABEL_35;
      }

      __break(1u);
    }

    else if (!v50)
    {
      v51 = BYTE14(v82);
LABEL_35:
      *(v48 + 4) = v51;
      sub_1009A2054(&v80);
      *(v48 + 12) = 2080;
      v55 = Data.hexString.getter();
      v57 = sub_1000136BC(v55, v56, &v76);

      *(v48 + 14) = v57;
      _os_log_impl(&_mh_execute_header, v46, v47, "S4 count %ld: %s", v48, 0x16u);
      sub_100007BAC(v73);

      goto LABEL_36;
    }

    LODWORD(v51) = HIDWORD(v49) - v49;
    if (__OFSUB__(HIDWORD(v49), v49))
    {
      __break(1u);
      return result;
    }

    v51 = v51;
    goto LABEL_35;
  }

  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  sub_1000076D4(v21, qword_10177ACB0);
  sub_10001F280(a1, v84);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v76 = v25;
    *v24 = 136446210;
    sub_10001F280(v84, &v80);
    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_100007BAC(v84);
    v29 = sub_1000136BC(v26, v28, &v76);

    *(v24 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v23, "Invalid sendPairingStatus payload %{public}s", v24, 0xCu);
    sub_100007BAC(v25);
  }

  else
  {

    sub_100007BAC(v84);
  }

  sub_100413200();
  swift_allocError();
  *v30 = 0;
  return swift_willThrow();
}

uint64_t sub_100C04520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (a3 >> 60 == 15)
  {
    sub_100413200();
    swift_allocError();
    *v5 = 9;
    return swift_willThrow();
  }

  v9 = v4;
  sub_10001F280(a1, v18);
  sub_100017D5C(a2, a3);
  sub_1000BC4D4(&qword_1016973C0, &unk_10138BF40);
  type metadata accessor for CollaborativeKeyGen.v2.OwnerContext();
  if (!swift_dynamicCast())
  {
    sub_100413200();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
    return sub_100006654(a2, a3);
  }

  v11 = v19;
  CCCKG2ParamsP224Sha256Version2();
  OpeningSize = CCCKG2GetOpeningSize();

  sub_1001003F4(a2, a3, v11, OpeningSize, v17);
  if (v9)
  {

    sub_100413200();
    swift_allocError();
    *v13 = 10;
    swift_willThrow();

    return sub_100006654(a2, a3);
  }

  sub_100006654(a2, a3);

  v15 = v17[3];
  a4[2] = v17[2];
  a4[3] = v15;
  a4[4] = v17[4];
  v16 = v17[1];
  *a4 = v17[0];
  a4[1] = v16;
  return result;
}

uint64_t sub_100C04748(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_101697320, &qword_10138BE90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C047B8(uint64_t a1)
{
  v1 = (*(a1 + 208) >> 59) & 6;
  if (v1 == 6)
  {
    return (*a1 + 6);
  }

  else
  {
    return v1 | (*(a1 + 192) >> 63);
  }
}

uint64_t sub_100C047E4(uint64_t result, unsigned int a2)
{
  if (a2 < 6)
  {
    v2 = *(result + 24) & 0xCFFFFFFFFFFFFFFFLL;
    v3 = *(result + 40) & 0xCFFFFFFFFFFFFFFFLL;
    v4 = *(result + 56) & 0xCFFFFFFFFFFFFFFFLL;
    v5 = *(result + 72) & 0xCFFFFFFFFFFFFFFFLL;
    v6 = *(result + 88) & 0xCFFFFFFFFFFFFFFFLL;
    v7 = *(result + 104) & 0xCFFFFFFFFFFFFFFFLL;
    v8 = *(result + 120) & 0xCFFFFFFFFFFFFFFFLL;
    v9 = *(result + 136) & 0xCFFFFFFFFFFFFFFFLL;
    v10 = *(result + 152) & 0xCFFFFFFFFFFFFFFFLL;
    v11 = *(result + 168) & 0xCFFFFFFFFFFFFFFFLL;
    v12 = a2 >> 1;
    v13 = *(result + 192) | (a2 << 63);
    v14 = *(result + 208) & 0xCFFFFFFFFFFFFFFFLL | ((v12 & 3) << 60);
    *(result + 8) &= 0xCFFFFFFFFFFFFFFFLL;
    *(result + 24) = v2;
    *(result + 40) = v3;
    *(result + 56) = v4;
    *(result + 72) = v5;
    *(result + 88) = v6;
    *(result + 104) = v7;
    *(result + 120) = v8;
    *(result + 136) = v9;
    *(result + 152) = v10;
    *(result + 168) = v11;
    *(result + 192) = v13;
    *(result + 208) = v14;
  }

  else
  {
    *result = a2 - 6;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 120) = 0u;
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 168) = 0u;
    *(result + 184) = 0u;
    *(result + 200) = 0;
    *(result + 208) = 0x3000000000000000;
  }

  return result;
}

uint64_t sub_100C04A0C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_100C04A90()
{
  v1 = *(v0 + 16);
  *(v1 + 24) = &type metadata for AirTagProductInfo;
  *(v1 + 32) = sub_100656218();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100C04B04(uint64_t a1)
{
  v39 = a1;
  v38 = sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  v35 = *(v38 - 8);
  v1 = *(v35 + 64);
  __chkstk_darwin(v38);
  v3 = &v27 - v2;
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
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

    sub_10025EDD4(0, 0, v37, &unk_1013DF6C0, v26);

    return (*(v34 + 8))(v36, v23);
  }

  return result;
}

uint64_t sub_100C04F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
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

  sub_10025EDD4(0, 0, v11, &unk_1013DF6E0, v14);
}

uint64_t sub_100C050E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100C05108, a4, 0);
}

uint64_t sub_100C05108()
{
  v1 = v0[2];
  sub_100C05168(v0[3]);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100C05168(uint64_t a1)
{
  v3 = sub_1000BC4D4(&qword_1016998C0, &qword_1013DF6D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v32 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v28 - v12;
  if (qword_101694758 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177ADD8);
  v31 = *(v8 + 16);
  v31(v13, a1, v7);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v30 = v1;
    v28 = v19;
    v33 = v19;
    *v18 = 136446210;
    sub_100C0A0A8(&qword_101696930, &type metadata accessor for UUID);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v6;
    v23 = v22;
    (*(v8 + 8))(v13, v7);
    v24 = sub_1000136BC(v20, v23, &v33);
    v6 = v21;

    *(v18 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Removing lockStateContinuation for %{public}s", v18, 0xCu);
    sub_100007BAC(v28);

    a1 = v29;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v25 = v32;
  v31(v32, a1, v7);
  v26 = sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
  swift_beginAccess();
  sub_1001DEBE4(v6, v25);
  return swift_endAccess();
}

uint64_t sub_100C054FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_1000BC4D4(&qword_1016A23A8, &qword_1013AAC68);
  v6[5] = v8;
  v9 = *(v8 - 8);
  v6[6] = v9;
  v10 = *(v9 + 64) + 15;
  v6[7] = swift_task_alloc();

  return _swift_task_switch(sub_100C055D0, a4, 0);
}

uint64_t sub_100C055D0()
{
  v1 = *(v0 + 16);
  sub_100C05708(*(v0 + 24), *(v0 + 32));
  *(v0 + 65) = *(v1 + 176);

  return _swift_task_switch(sub_100C05644, 0, 0);
}

uint64_t sub_100C05644()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  *(v0 + 64) = *(v0 + 65);
  sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  AsyncStream.Continuation.yield(_:)();
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100C05708(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v3 = sub_1000BC4D4(&qword_1016998C0, &qword_1013DF6D0);
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
  if (qword_101694758 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000076D4(v14, qword_10177ADD8);
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
    sub_100C0A0A8(&qword_101696930, &type metadata accessor for UUID);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = a2;
    v21 = v20;
    (*(v8 + 8))(v13, v7);
    v22 = sub_1000136BC(v19, v21, &v34);
    a2 = v29;

    *(v18 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Storing lockStateContinuation for %{public}s", v18, 0xCu);
    sub_100007BAC(v28);

    v6 = v30;
  }

  else
  {

    (*(v8 + 8))(v13, v7);
  }

  v23 = v32;
  v31(v32, a2, v7);
  v24 = sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70);
  v25 = *(v24 - 8);
  (*(v25 + 16))(v6, v33, v24);
  (*(v25 + 56))(v6, 0, 1, v24);
  swift_beginAccess();
  sub_1001DEBE4(v6, v23);
  return swift_endAccess();
}

uint64_t sub_100C05AD4()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = *(*(sub_1000BC4D4(&qword_101698C00, &qword_10138B570) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();

  return _swift_task_switch(sub_100C05B98, 0, 0);
}

uint64_t sub_100C05B98()
{
  v1 = *(v0 + 16);
  swift_defaultActor_initialize();
  v2 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  v3 = enum case for PairingUIState.idle(_:);
  v4 = type metadata accessor for PairingUIState();
  (*(*(v4 - 8) + 104))(v1 + v2, v3, v4);
  v5 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_sharingClient;
  *(v1 + v5) = [objc_allocWithZone(SFClient) init];
  *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_remoteUILauncher) = 0;
  *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_streamObserverTask) = 0;
  v6 = sub_1000BC4D4(&qword_1016B8528, &qword_1013DF688);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_pairingUIStreamProvider) = AsyncStreamProvider.init()();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  *(v0 + 40) = v10;
  *v10 = v0;
  v10[1] = sub_100C05CFC;

  return daemon.getter();
}

uint64_t sub_100C05CFC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  *(v3 + 48) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 56) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for SystemMonitorService();
  v9 = sub_100C0A0A8(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100C0A0A8(&qword_1016B1110, type metadata accessor for SystemMonitorService);
  *v6 = v12;
  v6[1] = sub_100C05ED8;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100C05ED8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 56);
  v7 = *v2;

  v8 = *(v4 + 48);
  if (v1)
  {

    v9 = sub_100C0628C;
  }

  else
  {

    *(v5 + 64) = a1;
    v9 = sub_100C0602C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100C0602C()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_systemMonitorService) = *(v0 + 64);
  return _swift_task_switch(sub_100C06058, v1, 0);
}

uint64_t sub_100C06058()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_systemMonitorService);
  if (v2)
  {
    v4 = v0[3];
    v3 = v0[4];
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
    v6 = sub_100C0A0A8(&qword_1016B84F8, type metadata accessor for PairingUIManager);
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v6;
    v7[4] = v2;
    v7[5] = v1;
    v7[6] = v4;
    swift_retain_n();

    v8 = sub_10025EDD4(0, 0, v3, &unk_1013DF698, v7);
    v9 = *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_streamObserverTask);
    *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_streamObserverTask) = v8;
  }

  else
  {
    if (qword_101694D60 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_1016B8368);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No SystemMonitorService available!", v13, 2u);
    }
  }

  v14 = v0[4];

  v15 = v0[1];
  v16 = v0[2];

  return v15(v16);
}

uint64_t sub_100C0628C()
{
  v1 = *(v0 + 16);
  *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_systemMonitorService) = 0;
  return _swift_task_switch(sub_100C06058, v1, 0);
}

uint64_t sub_100C062B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = sub_1000BC4D4(&qword_1016B8530, &qword_1013DF6A0);
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = sub_1000BC4D4(&qword_1016B8538, &qword_1013DF6A8);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v13 = sub_1000BC4D4(&qword_1016B8540, &qword_1013DF6B0);
  v5[11] = v13;
  v14 = *(v13 - 8);
  v5[12] = v14;
  v15 = *(v14 + 64) + 15;
  v5[13] = swift_task_alloc();

  return _swift_task_switch(sub_100C06454, a5, 0);
}

uint64_t sub_100C06454()
{
  if (qword_101694D60 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 112) = sub_1000076D4(v1, qword_1016B8368);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Start listening to lock state changes.", v4, 2u);
  }

  v5 = *(v0 + 24);

  return _swift_task_switch(sub_100C06578, v5, 0);
}

uint64_t sub_100C06578()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];
  swift_allocObject();
  swift_weakInit();
  (*(v3 + 104))(v2, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  AsyncStream.init(_:bufferingPolicy:_:)();

  return _swift_task_switch(sub_100C06680, v5, 0);
}

uint64_t sub_100C06680()
{
  v1 = v0[13];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v5 = sub_100C0A0A8(&qword_1016B84F8, type metadata accessor for PairingUIManager);
  v0[15] = v5;
  v0[16] = 0;
  v6 = v0[4];
  v7 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_100C0679C;
  v9 = v0[13];
  v10 = v0[11];

  return AsyncStream.Iterator.next(isolation:)(v0 + 20, v6, v5, v10);
}

uint64_t sub_100C0679C()
{
  v1 = *(*v0 + 136);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return _swift_task_switch(sub_100C068AC, v2, 0);
}

uint64_t sub_100C068AC()
{
  v1 = *(v0 + 160);
  if (v1 == 5)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    goto LABEL_24;
  }

  v2 = *(v0 + 128);
  static Task<>.checkCancellation()();
  *(v0 + 144) = v2;
  v3 = *(v0 + 112);
  if (v2)
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error in listening to lock state changes: %{public}@", v6, 0xCu);
      sub_10000B3A8(v7, &qword_10169BB30, &unk_10138B3C0);
    }

    else
    {
    }

LABEL_24:
    v25 = *(v0 + 104);
    v26 = *(v0 + 80);
    v27 = *(v0 + 56);

    v28 = *(v0 + 8);

    return v28();
  }

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *(v0 + 16) = v12;
    v13 = 0xE700000000000000;
    v14 = 0x6E776F6E6B6E55;
    *v11 = 136446210;
    v15 = 0xE700000000000000;
    v16 = 0x676E696B636F4CLL;
    v17 = 0xE600000000000000;
    v18 = 0x64656B636F4CLL;
    if (v1 != 3)
    {
      v18 = 0x64656B636F6C6E55;
      v17 = 0xE800000000000000;
    }

    if (v1 != 2)
    {
      v16 = v18;
      v15 = v17;
    }

    if (v1)
    {
      v14 = 0x64656C6261736944;
      v13 = 0xE800000000000000;
    }

    if (v1 <= 1)
    {
      v19 = v14;
    }

    else
    {
      v19 = v16;
    }

    if (v1 <= 1)
    {
      v20 = v13;
    }

    else
    {
      v20 = v15;
    }

    v21 = sub_1000136BC(v19, v20, (v0 + 16));

    *(v11 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "Received lock state change event %{public}s.", v11, 0xCu);
    sub_100007BAC(v12);
  }

  v22 = swift_task_alloc();
  *(v0 + 152) = v22;
  *v22 = v0;
  v22[1] = sub_100C06C40;
  v23 = *(v0 + 32);

  return sub_100C06DF0(v1);
}

uint64_t sub_100C06C40()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *v0;

  v1[16] = v1[18];
  v4 = v1[15];
  v5 = v1[4];
  v6 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v7 = swift_task_alloc();
  v1[17] = v7;
  *v7 = v3;
  v7[1] = sub_100C0679C;
  v8 = v1[13];
  v9 = v1[11];

  return AsyncStream.Iterator.next(isolation:)(v1 + 20, v5, v4, v9);
}

uint64_t sub_100C06DF0(char a1)
{
  *(v2 + 40) = v1;
  *(v2 + 80) = a1;
  v3 = type metadata accessor for PairingUIState();
  *(v2 + 48) = v3;
  v4 = *(v3 - 8);
  *(v2 + 56) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100C06EB4, v1, 0);
}

uint64_t sub_100C06EB4()
{
  if ((*(v0 + 80) & 0xFE) == 2)
  {
    v2 = *(v0 + 56);
    v1 = *(v0 + 64);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
    swift_beginAccess();
    (*(v2 + 16))(v1, v4 + v5, v3);
    LOBYTE(v4) = PairingUIState.interruptible.getter();
    (*(v2 + 8))(v1, v3);
    if (v4)
    {
      if (qword_101694D60 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_1000076D4(v6, qword_1016B8368);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&_mh_execute_header, v7, v8, "Screen is locked and UI is displayed! Interrupting the flow...", v9, 2u);
      }

      v10 = *(v0 + 40);

      v11 = *(v10 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_remoteUILauncher);
      *(v0 + 72) = v11;
      if (v11)
      {

        return _swift_task_switch(sub_100C070BC, v11, 0);
      }

      v12 = *(v0 + 40);
      sub_100C087A4();
    }
  }

  v13 = *(v0 + 64);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100C070BC()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 72) + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle);
  [v2 invalidate];

  return _swift_task_switch(sub_100C07158, v1, 0);
}

uint64_t sub_100C07158()
{
  v1 = v0[5];
  sub_100C087A4();
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100C071C0(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v3 = type metadata accessor for FMRemoteUILauncher.AlertType(0);
  v2[28] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for PairingUIState();
  v2[30] = v5;
  v6 = *(v5 - 8);
  v2[31] = v6;
  v7 = *(v6 + 64) + 15;
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();

  return _swift_task_switch(sub_100C072BC, v1, 0);
}

uint64_t sub_100C072BC()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[27];
  v6 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  v31 = v4[2];
  v32 = v5;
  v31(v2, v5 + v6, v3);
  v30 = v4[13];
  v30(v1, enum case for PairingUIState.idle(_:), v3);
  LOBYTE(v5) = static PairingUIState.== infix(_:_:)();
  v7 = v4[1];
  v7(v1, v3);
  v7(v2, v3);
  if (v5)
  {
    v9 = v0[32];
    v8 = v0[33];
    v11 = v0[30];
    v10 = v0[31];
    v29 = v0[27];
    v30(v8, enum case for PairingUIState.alertPreparation(_:), v11);
    swift_beginAccess();
    (*(v10 + 24))(v32 + v6, v8, v11);
    swift_endAccess();
    v12 = *(v29 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_pairingUIStreamProvider);
    v31(v9, v32 + v6, v11);
    AsyncStreamProvider.yield(value:transaction:)();
    v7(v9, v11);
    v7(v8, v11);
    if (qword_101694D60 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    v0[34] = v13;
    v0[35] = sub_1000076D4(v13, qword_1016B8368);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Show detection view.", v16, 2u);
    }

    v17 = v0[27];

    v18 = *(v17 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_sharingClient);
    v0[2] = v0;
    v0[7] = v0 + 40;
    v0[3] = sub_100C07754;
    v19 = swift_continuation_init();
    v0[17] = sub_1000BC4D4(&qword_1016B8518, &qword_1013DF670);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100C07E2C;
    v0[13] = &unk_10164D018;
    v0[14] = v19;
    [v18 startProxCardTransactionWithOptions:16 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    if (qword_101694D60 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000076D4(v20, qword_1016B8368);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Detection view already displayed. Skipping.", v23, 2u);
    }

    v25 = v0[32];
    v24 = v0[33];
    v26 = v0[29];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_100C07754()
{
  v1 = *(*v0 + 216);
  v3 = *v0;

  return _swift_task_switch(sub_100C07848, v1, 0);
}

uint64_t sub_100C07848()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 320);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "startProxCardTransaction proceed = %{BOOL}d", v5, 8u);
  }

  if (v2)
  {
    v6 = *(v0 + 216);
    v7 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_remoteUILauncher;
    *(v0 + 288) = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_remoteUILauncher;
    v8 = *(v6 + v7);
    if (v8)
    {
      *(v0 + 312) = v8;

      v9 = sub_100C07DA4;
      v10 = v8;
    }

    else
    {
      v21 = *(v0 + 224);
      sub_10001F280(*(v0 + 208), *(v0 + 232));
      swift_storeEnumTagMultiPayload();
      *(v0 + 296) = sub_100C0A0A8(&qword_1016B8520, type metadata accessor for PairingUIManager);
      v22 = type metadata accessor for FMRemoteUILauncher(0);
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      *(v0 + 304) = swift_allocObject();

      v9 = sub_100C07ABC;
      v10 = 0;
    }

    return _swift_task_switch(v9, v10, 0);
  }

  else
  {
    v11 = *(v0 + 280);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Can't proceed with proxCard displaying.", v14, 2u);
    }

    v15 = *(v0 + 216);

    sub_100C087A4();
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 232);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_100C07ABC()
{
  receiver = v0[19].receiver;
  swift_defaultActor_initialize();
  *&receiver[OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle] = 0;
  v2 = OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_logger;
  if (qword_101694FA0 != -1)
  {
    swift_once();
  }

  super_class = v0[18].super_class;
  v3 = v0[19].receiver;
  v5 = v0[17].receiver;
  v6 = v0[14].super_class;
  v7 = v0[13].super_class;
  v8 = sub_1000076D4(v5, qword_10177C288);
  (*(*(v5 - 8) + 16))(&receiver[v2], v8, v5);
  sub_100C09D38(v6, &v3[OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertType]);
  v9 = type metadata accessor for RemoteHandleObserverDelegateTrampoline();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtC12searchpartydP33_B6591815384A8DEB8885452F1FDF33D538RemoteHandleObserverDelegateTrampoline_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = super_class;
  swift_unknownObjectWeakAssign();
  v0[12].receiver = v10;
  v0[12].super_class = v9;
  *&v3[OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandleDelegateTrampoline] = objc_msgSendSuper2(v0 + 12, "init");

  return _swift_task_switch(sub_100C07C4C, v3, 0);
}

uint64_t sub_100C07C4C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);

  sub_100C09D9C(v1);

  return _swift_task_switch(sub_100C07CC4, v2, 0);
}

uint64_t sub_100C07CC4()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[38];

  v4 = *(v2 + v1);
  if (v4)
  {
    v0[39] = v4;

    return _swift_task_switch(sub_100C07DA4, v4, 0);
  }

  else
  {
    v6 = v0[32];
    v5 = v0[33];
    v7 = v0[29];

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_100C07DA4()
{
  v1 = v0[39];
  sub_100EF6F7C();

  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[29];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100C07E2C(uint64_t a1, char a2)
{
  v3 = *sub_1000035D0((a1 + 32), *(a1 + 56));
  **(*(v3 + 64) + 40) = a2;

  return _swift_continuation_resume(v3);
}

uint64_t sub_100C07E88(int a1)
{
  v60 = a1;
  v2 = sub_1000BC4D4(&qword_1016B8508, &qword_1013DF660);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v51 - v4;
  v6 = type metadata accessor for PairingUIState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v58 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v59 = &v51 - v12;
  __chkstk_darwin(v11);
  v14 = &v51 - v13;
  v15 = sub_1000BC4D4(&qword_1016B8510, &qword_1013DF668);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15 - 8);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  v22 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  v57 = *(v7 + 16);
  v57(v14, v1 + v22, v6);
  v23 = (*(v7 + 88))(v14, v6);
  if (v23 != enum case for PairingUIState.displayed(_:))
  {
    return (*(v7 + 8))(v14, v6);
  }

  v52 = v19;
  v55 = v1;
  v54 = v23;
  (*(v7 + 96))(v14, v6);
  sub_100C09C58(v14, v21);
  v24 = *(v2 + 48);
  v25 = v21;
  v26 = v60;
  *v5 = v60 & 1;
  v56 = v25;
  sub_100C09CC8(v25, &v5[v24]);
  v27 = type metadata accessor for PairingUIState.Displayed();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v53 = v24;
  v30 = v29(&v5[v24], 1, v27);
  if ((v26 & 1) == 0)
  {
    if (v30 != 1)
    {
      v41 = v52;
      v42 = v53;
      sub_100C09CC8(&v5[v53], v52);
      v43 = (*(v28 + 88))(v41, v27);
      v44 = v56;
      if (v43 == enum case for PairingUIState.Displayed.frozen(_:))
      {
        v45 = v59;
        (*(v28 + 56))(v59, 1, 1, v27);
        (*(v7 + 104))(v45, v54, v6);
        v46 = v55;
        swift_beginAccess();
        (*(v7 + 24))(v46 + v22, v45, v6);
        swift_endAccess();
        v47 = *(v46 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_pairingUIStreamProvider);
        v48 = v46 + v22;
        v49 = v58;
        v57(v58, v48, v6);
        AsyncStreamProvider.yield(value:transaction:)();
        v50 = *(v7 + 8);
        v50(v49, v6);
        v50(v45, v6);
        sub_10000B3A8(v56, &qword_1016B8510, &qword_1013DF668);
        v39 = &v5[v42];
      }

      else
      {
        if (v43 != enum case for PairingUIState.Displayed.delayedFinish(_:))
        {
          sub_10000B3A8(v56, &qword_1016B8510, &qword_1013DF668);
          (*(v28 + 8))(v41, v27);
          goto LABEL_9;
        }

        sub_100C087A4();
        sub_10000B3A8(v44, &qword_1016B8510, &qword_1013DF668);
        v39 = &v5[v53];
      }

      v37 = &qword_1016B8510;
      v38 = &qword_1013DF668;
      return sub_10000B3A8(v39, v37, v38);
    }

LABEL_8:
    sub_10000B3A8(v56, &qword_1016B8510, &qword_1013DF668);
LABEL_9:
    v37 = &qword_1016B8508;
    v38 = &qword_1013DF660;
    v39 = v5;
    return sub_10000B3A8(v39, v37, v38);
  }

  if (v30 != 1)
  {
    goto LABEL_8;
  }

  v31 = v59;
  (*(v28 + 104))(v59, enum case for PairingUIState.Displayed.frozen(_:), v27);
  (*(v28 + 56))(v31, 0, 1, v27);
  (*(v7 + 104))(v31, v54, v6);
  v32 = v55;
  swift_beginAccess();
  (*(v7 + 24))(v32 + v22, v31, v6);
  swift_endAccess();
  v33 = *(v32 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_pairingUIStreamProvider);
  v34 = v32 + v22;
  v35 = v58;
  v57(v58, v34, v6);
  AsyncStreamProvider.yield(value:transaction:)();
  v36 = *(v7 + 8);
  v36(v35, v6);
  v36(v31, v6);
  v37 = &qword_1016B8510;
  v38 = &qword_1013DF668;
  v39 = v56;
  return sub_10000B3A8(v39, v37, v38);
}

uint64_t sub_100C084CC()
{
  v1[5] = v0;
  v2 = type metadata accessor for PairingUIState();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();

  return _swift_task_switch(sub_100C0858C, v0, 0);
}

uint64_t sub_100C0858C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  LOBYTE(v4) = PairingUIState.interruptible.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = *(v0[5] + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_remoteUILauncher);
    v0[9] = v6;
    if (v6)
    {

      return _swift_task_switch(sub_100C08710, v6, 0);
    }

    v10 = v0[8];

    v9 = v0[1];
  }

  else
  {
    v7 = v0[8];
    sub_100C09C04();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();

    v9 = v0[1];
  }

  return v9();
}

uint64_t sub_100C08710()
{
  v1 = *(v0[9] + OBJC_IVAR____TtC12searchpartyd18FMRemoteUILauncher_alertHandle);
  [v1 invalidate];

  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

id sub_100C087A4()
{
  v1 = v0;
  v2 = type metadata accessor for PairingUIState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  (*(v3 + 104))(&v17 - v8, enum case for PairingUIState.finished(_:), v2);
  v10 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  (*(v3 + 24))(v0 + v10, v9, v2);
  swift_endAccess();
  v11 = *(v0 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_pairingUIStreamProvider);
  (*(v3 + 16))(v7, v1 + v10, v2);
  AsyncStreamProvider.yield(value:transaction:)();
  v12 = *(v3 + 8);
  v12(v7, v2);
  v12(v9, v2);
  v13 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_streamObserverTask;
  if (*(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_streamObserverTask))
  {
    v14 = *(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_streamObserverTask);

    Task.cancel()();

    v15 = *(v1 + v13);
  }

  *(v1 + v13) = 0;

  return [*(v1 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_sharingClient) invalidate];
}

uint64_t sub_100C089B8()
{
  v1 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  v2 = type metadata accessor for PairingUIState();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_pairingUIStreamProvider);

  v4 = *(v0 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_remoteUILauncher);

  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_systemMonitorService);

  v6 = *(v0 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_streamObserverTask);

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for PairingUIManager()
{
  result = qword_1016B83C8;
  if (!qword_1016B83C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100C08AD4()
{
  result = type metadata accessor for PairingUIState();
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

uint64_t sub_100C08B98@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  v4 = type metadata accessor for PairingUIState();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_100C08C30(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PairingUIManager();

  return PairingUIManager.stream()(v3, a2);
}

uint64_t sub_100C08C7C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100014744;

  return sub_100C071C0(a1);
}

uint64_t sub_100C08D10()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100C084CC();
}

uint64_t sub_100C08DA0()
{
  v1[5] = v0;
  v2 = type metadata accessor for PairingUIState();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100C08E6C, v0, 0);
}

uint64_t sub_100C08E6C()
{
  v20 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  v5 = v0[5];
  v6 = type metadata accessor for PairingUIState.Displayed();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  (*(v4 + 104))(v1, enum case for PairingUIState.displayed(_:), v3);
  v7 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  (*(v4 + 24))(v5 + v7, v1, v3);
  swift_endAccess();
  v8 = *(v5 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_pairingUIStreamProvider);
  (*(v4 + 16))(v2, v5 + v7, v3);
  AsyncStreamProvider.yield(value:transaction:)();
  v9 = *(v4 + 8);
  v9(v2, v3);
  v9(v1, v3);
  if (qword_101694D60 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000076D4(v10, qword_1016B8368);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1000136BC(0xD000000000000015, 0x800000010136F500, &v19);
    _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
    sub_100007BAC(v14);
  }

  v16 = v0[8];
  v15 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_100C09114()
{
  v1[8] = v0;
  v2 = type metadata accessor for PairingUIState();
  v1[9] = v2;
  v3 = *(v2 - 8);
  v1[10] = v3;
  v4 = *(v3 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_100C091E0, v0, 0);
}

uint64_t sub_100C091E0()
{
  v45 = v0;
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  v5 = OBJC_IVAR____TtC12searchpartyd16PairingUIManager_state;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v6(v1, v4 + v5, v2);
  v7 = PairingUIState.interruptible.getter();
  v8 = *(v3 + 8);
  v8(v1, v2);
  if (v7)
  {
    v9 = v0[8];
    sub_100C087A4();
    if (qword_101694D60 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1000076D4(v10, qword_1016B8368);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v44 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1000136BC(0xD000000000000017, 0x800000010136F4E0, &v44);
      _os_log_impl(&_mh_execute_header, v11, v12, "%s", v13, 0xCu);
      sub_100007BAC(v14);
    }
  }

  else
  {
    if (qword_101694D60 != -1)
    {
      swift_once();
    }

    v42 = v5;
    v43 = v8;
    v15 = type metadata accessor for Logger();
    sub_1000076D4(v15, qword_1016B8368);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "State is not interruptible!", v18, 2u);
    }

    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[9];
    v22 = v0[10];

    v6(v19, v4 + v42, v21);
    v41 = v4;
    v23 = enum case for PairingUIState.Displayed.frozen(_:);
    v24 = type metadata accessor for PairingUIState.Displayed();
    v40 = v6;
    v25 = *(v24 - 8);
    v39 = *(v25 + 104);
    v39(v20, v23, v24);
    v38 = *(v25 + 56);
    v38(v20, 0, 1, v24);
    v26 = enum case for PairingUIState.displayed(_:);
    v37 = *(v22 + 104);
    v37(v20, enum case for PairingUIState.displayed(_:), v21);
    LOBYTE(v22) = static PairingUIState.== infix(_:_:)();
    v43(v20, v21);
    v43(v19, v21);
    if (v22)
    {
      v28 = v0[11];
      v27 = v0[12];
      v29 = v0[9];
      v30 = v0[10];
      v36 = v0[8];
      v39(v27, enum case for PairingUIState.Displayed.delayedFinish(_:), v24);
      v38(v27, 0, 1, v24);
      v37(v27, v26, v29);
      swift_beginAccess();
      (*(v30 + 24))(v41 + v42, v27, v29);
      swift_endAccess();
      v31 = *(v36 + OBJC_IVAR____TtC12searchpartyd16PairingUIManager_pairingUIStreamProvider);
      v40(v28, v41 + v42, v29);
      AsyncStreamProvider.yield(value:transaction:)();
      v43(v28, v29);
      v43(v27, v29);
    }
  }

  v33 = v0[11];
  v32 = v0[12];

  v34 = v0[1];

  return v34();
}

uint64_t sub_100C096FC()
{
  v10 = v0;
  v1 = *(v0 + 16);
  sub_100C087A4();
  if (qword_101694D60 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016B8368);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000136BC(0xD000000000000017, 0x800000010136F4C0, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_100007BAC(v6);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100C09878()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014650;

  return sub_100C08DA0();
}

uint64_t sub_100C09904()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C09114();
}

uint64_t sub_100C09990()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100014744;

  return sub_100C096DC();
}

uint64_t sub_100C09A1C(uint64_t a1)
{
  result = sub_100C0A0A8(&qword_1016B84F8, type metadata accessor for PairingUIManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100C09ABC()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016B8368);
  v1 = sub_1000076D4(v0, qword_1016B8368);
  if (qword_101694D68 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177BD18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100C09B84()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177BD18);
  sub_1000076D4(v0, qword_10177BD18);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100C09C04()
{
  result = qword_1016B8500;
  if (!qword_1016B8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8500);
  }

  return result;
}

uint64_t sub_100C09C58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B8510, &qword_1013DF668);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C09CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B8510, &qword_1013DF668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C09D38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMRemoteUILauncher.AlertType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100C09D9C(uint64_t a1)
{
  v2 = type metadata accessor for FMRemoteUILauncher.AlertType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100C09DF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014650;

  return sub_100C062B4(a1, v4, v5, v6, v7);
}

uint64_t sub_100C09EC8(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_100C04F08(a1, v4, v5);
}

uint64_t sub_100C09F3C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1000BC4D4(&qword_1016998C8, &qword_1013AAC70) - 8);
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
  v13[1] = sub_100014744;

  return sub_100C054FC(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_100C0A0A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100C0A0F0(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_100C050E8(a1, v6, v7, v8, v1 + v5);
}

unint64_t sub_100C0A1FC()
{
  result = qword_1016B8548;
  if (!qword_1016B8548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B8548);
  }

  return result;
}

uint64_t sub_100C0A250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[46] = a1;
  v4[47] = a2;
  v5 = sub_1000BC4D4(&qword_101697240, &unk_10138BDA0);
  v4[50] = v5;
  v6 = *(v5 - 8);
  v4[51] = v6;
  v7 = *(v6 + 64) + 15;
  v4[52] = swift_task_alloc();
  v8 = sub_1000BC4D4(&qword_101697248, &qword_1013DC4D0);
  v4[53] = v8;
  v9 = *(v8 - 8);
  v4[54] = v9;
  v10 = *(v9 + 64) + 15;
  v4[55] = swift_task_alloc();
  v11 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v4[56] = v11;
  v12 = *(v11 - 8);
  v4[57] = v12;
  v13 = *(v12 + 64) + 15;
  v4[58] = swift_task_alloc();
  v14 = *(*(sub_1000BC4D4(&qword_101697250, &unk_10138BDB0) - 8) + 64) + 15;
  v4[59] = swift_task_alloc();
  v15 = *(*(sub_1000BC4D4(&qword_101697258, &unk_1013DC4C0) - 8) + 64) + 15;
  v4[60] = swift_task_alloc();
  v16 = type metadata accessor for Peripheral.ConnectionOptions();
  v4[61] = v16;
  v17 = *(v16 - 8);
  v4[62] = v17;
  v18 = *(v17 + 64) + 15;
  v4[63] = swift_task_alloc();
  v19 = *(*(sub_1000BC4D4(&qword_101697260, &unk_10138BDC0) - 8) + 64) + 15;
  v4[64] = swift_task_alloc();
  v20 = *(*(sub_1000BC4D4(&qword_101697270, &qword_10138BDD0) - 8) + 64) + 15;
  v4[65] = swift_task_alloc();
  v21 = type metadata accessor for ContinuousClock.Instant();
  v4[66] = v21;
  v22 = *(v21 - 8);
  v4[67] = v22;
  v23 = *(v22 + 64) + 15;
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v4[78] = swift_task_alloc();
  v4[79] = swift_task_alloc();
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();
  v4[84] = swift_task_alloc();
  v24 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v4[85] = v24;
  v25 = *(v24 - 8);
  v4[86] = v25;
  v26 = *(v25 + 64) + 15;
  v4[87] = swift_task_alloc();
  v27 = type metadata accessor for Device();
  v4[88] = v27;
  v28 = *(v27 - 8);
  v4[89] = v28;
  v29 = *(v28 + 64) + 15;
  v4[90] = swift_task_alloc();
  v30 = type metadata accessor for ContinuousClock();
  v4[91] = v30;
  v31 = *(v30 - 8);
  v4[92] = v31;
  v32 = *(v31 + 64) + 15;
  v4[93] = swift_task_alloc();

  return _swift_task_switch(sub_100C0A75C, v3, 0);
}

uint64_t sub_100C0A75C()
{
  v1 = v0[93];
  ContinuousClock.init()();
  v0[94] = type metadata accessor for CentralManager();
  v2 = async function pointer to static CentralManager.pairingCentralManager.getter[1];
  v3 = swift_task_alloc();
  v0[95] = v3;
  *v3 = v0;
  v3[1] = sub_100C0A804;

  return static CentralManager.pairingCentralManager.getter();
}

uint64_t sub_100C0A804(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 760);
  v6 = *v2;
  *(v4 + 768) = a1;
  *(v4 + 776) = v1;

  v7 = *(v3 + 392);
  if (v1)
  {
    v8 = sub_100C0DF24;
  }

  else
  {
    v8 = sub_100C0A93C;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C0A93C()
{
  sub_1000BC4D4(&qword_10169BCF0, &unk_1013E2690);
  v1 = type metadata accessor for CentralManager.State();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[98] = v5;
  *(v5 + 16) = xmmword_10138BBE0;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, enum case for CentralManager.State.poweredOn(_:), v1);
  v7(v6 + v3, enum case for CentralManager.State.restricted(_:), v1);
  v8 = async function pointer to CentralManagerProtocol.await(states:)[1];
  v9 = swift_task_alloc();
  v0[99] = v9;
  v10 = sub_100C114D4(&unk_1016C1160, 255, &type metadata accessor for CentralManager);
  *v9 = v0;
  v9[1] = sub_100C0AB08;
  v11 = v0[96];
  v12 = v0[94];

  return CentralManagerProtocol.await(states:)(v5, v12, v10);
}

uint64_t sub_100C0AB08()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  *(*v1 + 800) = v0;

  v5 = *(v2 + 784);
  v6 = *(v2 + 392);

  if (v0)
  {
    v7 = sub_100C0E130;
  }

  else
  {
    v7 = sub_100C0AC50;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_100C0AC50()
{
  v59 = v0;
  if (qword_101694D70 != -1)
  {
    swift_once();
  }

  v1 = v0[96];
  v2 = type metadata accessor for Logger();
  v0[101] = v2;
  v0[102] = sub_1000076D4(v2, qword_1016B8550);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[96];
    v6 = v0[94];
    v7 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, &v58);
    *(v7 + 12) = 2080;
    v0[45] = v5;
    sub_100C114D4(&qword_1016B8628, 255, &type metadata accessor for CentralManager);
    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = sub_1000136BC(v8, v9, &v58);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s %s has powered on", v7, 0x16u);
    swift_arrayDestroy();
  }

  v11 = v0[47];
  (*(v0[89] + 16))(v0[90], v0[48], v0[88]);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  v14 = os_log_type_enabled(v12, v13);
  v15 = v0[90];
  v16 = v0[89];
  v17 = v0[88];
  if (v14)
  {
    v18 = v0[87];
    v55 = v13;
    v19 = v0[86];
    v20 = v0[85];
    log = v12;
    v21 = v0[47];
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v22 = 136315650;
    *(v22 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, &v58);
    *(v22 + 12) = 2082;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    (*(v19 + 8))(v18, v20);
    v26 = sub_1000136BC(v23, v25, &v58);

    *(v22 + 14) = v26;
    *(v22 + 22) = 2082;
    sub_100C114D4(&unk_1016B7C90, 255, &type metadata accessor for Device);
    v27 = dispatch thunk of CustomStringConvertible.description.getter();
    v29 = v28;
    (*(v16 + 8))(v15, v17);
    v30 = sub_1000136BC(v27, v29, &v58);

    *(v22 + 24) = v30;
    _os_log_impl(&_mh_execute_header, log, v55, "%s Connecting to: %{public}s. Device: %{public}s", v22, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v16 + 8))(v15, v17);
  }

  v31 = v0[93];
  v32 = v0[84];
  v33 = v0[65];
  v34 = v0[63];
  v56 = v0[64];
  v35 = v0[61];
  v36 = v0[62];
  v38 = v0[59];
  v37 = v0[60];
  ContinuousClock.now.getter();
  v39 = enum case for ConnectUseCase.findMyPair(_:);
  v40 = type metadata accessor for ConnectUseCase();
  v41 = *(v40 - 8);
  (*(v41 + 104))(v33, v39, v40);
  (*(v41 + 56))(v33, 0, 1, v40);
  sub_1000BC4D4(&qword_101697280, &unk_1013B61F0);
  v42 = *(v36 + 72);
  v43 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_101385D80;
  static Peripheral.ConnectionOptions.hideFromBTSettings.getter();
  v0[44] = v44;
  sub_100C114D4(&qword_101697288, 255, &type metadata accessor for Peripheral.ConnectionOptions);
  sub_1000BC4D4(&qword_101697290, &qword_10138BDF0);
  sub_1000041A4(&qword_101697298, &qword_101697290, &qword_10138BDF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v45 = type metadata accessor for PeripheralPairingInfo();
  (*(*(v45 - 8) + 56))(v37, 1, 1, v45);
  v46 = type metadata accessor for LongTermKey();
  (*(*(v46 - 8) + 56))(v38, 1, 1, v46);
  Peripheral.Options.init(connectionOptions:pairingInfo:temporaryLTK:)();
  v47 = type metadata accessor for Peripheral.Options();
  (*(*(v47 - 8) + 56))(v56, 0, 1, v47);
  v48 = *(&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + 1);
  v57 = (&async function pointer to dispatch thunk of Peripheral.connect(useCase:options:) + async function pointer to dispatch thunk of Peripheral.connect(useCase:options:));
  v49 = swift_task_alloc();
  v0[103] = v49;
  *v49 = v0;
  v49[1] = sub_100C0B3B0;
  v50 = v0[65];
  v51 = v0[64];
  v52 = v0[47];

  return v57(v50, v51);
}

uint64_t sub_100C0B3B0()
{
  v2 = *v1;
  v3 = *(*v1 + 824);
  v4 = *v1;
  *(*v1 + 832) = v0;

  v5 = v2[65];
  v6 = v2[64];
  v7 = v2[49];
  sub_10000B3A8(v6, &qword_101697260, &unk_10138BDC0);
  sub_10000B3A8(v5, &qword_101697270, &qword_10138BDD0);
  if (v0)
  {
    v8 = sub_100C0E34C;
  }

  else
  {
    v8 = sub_100C0B534;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_100C0B534()
{
  v49 = v0;
  v1 = v0[93];
  v2 = v0[83];
  ContinuousClock.now.getter();
  if (qword_101694D48 != -1)
  {
    swift_once();
  }

  v3 = v0[84];
  v4 = v0[83];
  v5 = v0[82];
  v6 = v0[81];
  v7 = v0[67];
  v8 = v0[66];
  v0[105] = sub_1000076D4(v0[101], qword_10177BCE8);
  v9 = *(v7 + 16);
  v0[106] = v9;
  v0[107] = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v3, v8);
  v9(v6, v4, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[82];
  v14 = v0[81];
  v15 = v0[67];
  v16 = v0[66];
  if (v12)
  {
    loga = v10;
    v17 = v0[57];
    v18 = v0[58];
    v44 = v0[56];
    v45 = v11;
    v19 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v19 = 136315394;
    *(v19 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, &v48);
    *(v19 + 12) = 2082;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100C114D4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
    v20 = static Duration.description<A>(_:_:units:)();
    v22 = v21;
    (*(v17 + 8))(v18, v44);
    v23 = *(v15 + 8);
    v23(v14, v16);
    v23(v13, v16);
    v24 = sub_1000136BC(v20, v22, &v48);

    *(v19 + 14) = v24;
    _os_log_impl(&_mh_execute_header, loga, v45, "%s Connection latency: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v23 = *(v15 + 8);
    v23(v14, v16);
    v23(v13, v16);
  }

  v0[108] = v23;
  v25 = v0[102];
  v26 = v0[47];

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v0[87];
    v30 = v0[86];
    v31 = v0[85];
    v32 = v0[47];
    v33 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *v33 = 136315394;
    *(v33 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, &v48);
    *(v33 + 12) = 2082;
    Peripheral.id.getter();
    sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    (*(v30 + 8))(v29, v31);
    v37 = sub_1000136BC(v34, v36, &v48);

    *(v33 + 14) = v37;
    _os_log_impl(&_mh_execute_header, v27, v28, "%s Connected to: %{public}s", v33, 0x16u);
    swift_arrayDestroy();
  }

  v38 = v0[55];
  type metadata accessor for Service();
  Identifier.init(stringLiteral:)();
  v39 = *(&async function pointer to dispatch thunk of Peripheral.subscript.getter + 1);
  log = (&async function pointer to dispatch thunk of Peripheral.subscript.getter + async function pointer to dispatch thunk of Peripheral.subscript.getter);
  v40 = swift_task_alloc();
  v0[109] = v40;
  *v40 = v0;
  v40[1] = sub_100C0BA74;
  v41 = v0[55];
  v42 = v0[47];

  return (log)(v41);
}

uint64_t sub_100C0BA74(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 872);
  v6 = *v2;
  v4[110] = a1;
  v4[111] = v1;

  v7 = v3[55];
  v8 = v3[54];
  v9 = v3[53];
  v10 = v3[49];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100C0E58C;
  }

  else
  {
    v11 = sub_100C0BBFC;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100C0BBFC()
{
  v1 = v0[52];
  type metadata accessor for Characteristic();
  Identifier.init(stringLiteral:)();
  v2 = *(&async function pointer to dispatch thunk of Service.subscript.getter + 1);
  v7 = (&async function pointer to dispatch thunk of Service.subscript.getter + async function pointer to dispatch thunk of Service.subscript.getter);
  v3 = swift_task_alloc();
  v0[112] = v3;
  *v3 = v0;
  v3[1] = sub_100C0BCD0;
  v4 = v0[110];
  v5 = v0[52];

  return v7(v5);
}

uint64_t sub_100C0BCD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 896);
  v6 = *v2;
  v4[113] = a1;
  v4[114] = v1;

  v7 = v3[52];
  v8 = v3[51];
  v9 = v3[50];
  v10 = v3[49];
  (*(v8 + 8))(v7, v9);
  if (v1)
  {
    v11 = sub_100C0E7E8;
  }

  else
  {
    v11 = sub_100C0BE58;
  }

  return _swift_task_switch(v11, v10, 0);
}

uint64_t sub_100C0BE58()
{
  v71 = v0;
  v1 = *(v0 + 856);
  v2 = *(v0 + 848);
  v3 = *(v0 + 840);
  v4 = *(v0 + 744);
  v5 = *(v0 + 664);
  v6 = *(v0 + 640);
  v7 = *(v0 + 632);
  v8 = *(v0 + 624);
  v9 = *(v0 + 528);
  ContinuousClock.now.getter();
  v2(v7, v5, v9);
  v2(v8, v6, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 864);
  v14 = *(v0 + 632);
  v15 = *(v0 + 624);
  v16 = *(v0 + 536);
  v17 = *(v0 + 528);
  if (v12)
  {
    log = v10;
    v18 = *(v0 + 456);
    v19 = *(v0 + 464);
    v65 = *(v0 + 448);
    v66 = v11;
    v20 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *v20 = 136315394;
    *(v20 + 4) = sub_1000136BC(0xD00000000000002CLL, 0x800000010136F550, &v69);
    *(v20 + 12) = 2082;
    static Duration.UnitsFormatStyle.Unit.milliseconds.getter();
    sub_100C114D4(&qword_1016C11E0, 255, &type metadata accessor for ContinuousClock.Instant);
    v64 = static Duration.description<A>(_:_:units:)();
    v22 = v21;
    (*(v18 + 8))(v19, v65);
    v13(v15, v17);
    v13(v14, v17);
    v23 = sub_1000136BC(v64, v22, &v69);

    *(v20 + 14) = v23;
    _os_log_impl(&_mh_execute_header, log, v66, "%s Service/Characteristic discovery latency: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v13(v15, v17);
    v13(v14, v17);
  }

  v24 = *(v0 + 384);
  LODWORD(v24) = Device.productID.getter();
  if (v24 == static Device.invalidProductID.getter())
  {
    v25 = *(v0 + 744);
    v26 = *(v0 + 616);
    ContinuousClock.now.getter();
    *(v0 + 232) = &type metadata for PoshAccessoryNonOwnerCommand;
    v27 = sub_10038B8D0();
    *(v0 + 240) = v27;
    v28 = sub_10038B924();
    *(v0 + 248) = v28;
    *(v0 + 216) = 0;
    *(v0 + 208) = 0;
    v29 = v0 + 208;
    *(v0 + 224) = 11;
    v30 = swift_task_alloc();
    *(v0 + 920) = v30;
    *v30 = v0;
    v30[1] = sub_100C0C4E8;
    v31 = *(v0 + 904);
    v32 = *(v0 + 392);
    v33 = v0 + 160;
  }

  else
  {
    v34 = *(v0 + 384);
    v35 = Device.productID.getter();
    *(v0 + 324) = 76;
    sub_100101824();
    v69 = FixedWidthInteger.data.getter();
    v70 = v36;
    *(v0 + 348) = v35;
    v37 = FixedWidthInteger.data.getter();
    v39 = v38;
    Data.append(_:)();
    sub_100016590(v37, v39);
    v40 = v69;
    v41 = v70;
    *(v0 + 944) = v70;
    *(v0 + 936) = v40;
    v42 = *(v0 + 816);
    v43 = *(v0 + 376);

    sub_100017D5C(v40, v41);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    sub_100016590(v40, v41);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 696);
      v47 = *(v0 + 688);
      v48 = *(v0 + 680);
      loga = v45;
      v49 = *(v0 + 376);
      v50 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v50 = 136446466;
      Peripheral.id.getter();
      sub_1000041A4(&qword_10169BCC8, &qword_10169A060, &unk_10139DB00);
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      (*(v47 + 8))(v46, v48);
      v54 = sub_1000136BC(v51, v53, &v69);

      *(v50 + 4) = v54;
      *(v50 + 12) = 2080;
      sub_100017D5C(v40, v41);
      v55 = sub_100313D58(v40, v41);
      v57 = v56;
      sub_100016590(v40, v41);
      v58 = sub_1000136BC(v55, v57, &v69);

      *(v50 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v44, loga, "%{public}s productData: %s", v50, 0x16u);
      swift_arrayDestroy();
    }

    v59 = *(v0 + 744);
    v60 = *(v0 + 584);
    ContinuousClock.now.getter();
    *(v0 + 88) = &type metadata for PoshAccessoryNonOwnerCommand;
    v27 = sub_10038B8D0();
    *(v0 + 96) = v27;
    v28 = sub_10038B924();
    *(v0 + 104) = v28;
    *(v0 + 64) = xmmword_10139D980;
    v29 = v0 + 64;
    *(v0 + 80) = 11;
    v61 = swift_task_alloc();
    *(v0 + 952) = v61;
    *v61 = v0;
    v61[1] = sub_100C0CF58;
    v31 = *(v0 + 904);
    v62 = *(v0 + 392);
    v33 = v0 + 16;
  }

  return sub_100C0EFC8(v33, v31, v29, &type metadata for PoshAccessoryNonOwnerCommand, v27, v28, 0);
}