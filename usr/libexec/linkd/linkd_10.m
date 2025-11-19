uint64_t sub_1000C9BBC()
{
  sub_1000036A0();
  v1 = *(v0 + 224);
  *(v0 + 232) = sub_1000CCED0();
  sub_1000F9F0C(v0 + 16);
  v2 = sub_10001E094();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000C9C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000070C8();
  v15 = v14[26];
  v16 = Logger.logObject.getter();
  static os_log_type_t.debug.getter();
  v17 = sub_100018350();
  if (os_log_type_enabled(v17, v18))
  {
    sub_100005D40();
    v19 = swift_slowAlloc();
    sub_100004814(v19);
    sub_1000117B8();
    _os_log_impl(v20, v21, v22, v23, v24, 2u);
    sub_100004DE4();
  }

  v25 = async function pointer to Task<>.value.getter[1];
  v26 = swift_task_alloc();
  v14[30] = v26;
  *v26 = v14;
  v26[1] = sub_1000C9D20;
  v32 = v14[29];

  return Task<>.value.getter(v26, v32, &type metadata for () + 8, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000C9D20()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 240);
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  v5 = sub_10001E094();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000C9E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FDBDC();
  sub_100004884();
  v11 = v10[26];
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  v14 = sub_10001A88C();
  v16 = os_log_type_enabled(v14, v15);
  v17 = v10[29];
  v18 = v10[26];
  v19 = v10[27];
  v20 = v10[24];
  v21 = v10[25];
  if (v16)
  {
    sub_100005D40();
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Finished updating the metadata store", v22, 2u);
    sub_100004DE4();
  }

  swift_unknownObjectRelease();

  v23 = *(v21 + 8);
  v24 = sub_10000D358();
  v25(v24);
  v26 = v10[26];
  v27 = v10[23];

  sub_100006734();
  sub_1000FDC4C();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
}

uint64_t sub_1000C9F04()
{
  v2 = *(v0 + OBJC_IVAR____TtC10LinkDaemon8Registry_store);
  sub_100013334(v0 + OBJC_IVAR____TtC10LinkDaemon8Registry_applicationSource, v5);
  result = sub_1000CA0A0(v2, v5);
  if (v1)
  {
    return v4;
  }

  return result;
}

unint64_t sub_1000C9F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    v6._countAndFlagsBits = 0x646E75622077654ELL;
    v6._object = 0xED00000A3A73656CLL;
    String.append(_:)(v6);
    sub_1000C4584(a1);
    if (*(a3 + 16))
    {
LABEL_3:
      v7._object = 0x8000000100157620;
      v7._countAndFlagsBits = 0xD000000000000016;
      String.append(_:)(v7);
      sub_1000C4584(a3);
    }
  }

  else
  {
    v10 = *(a3 + 16);
    if (!v10 && !*(a2 + 16))
    {
      return 0xD000000000000013;
    }

    if (v10)
    {
      goto LABEL_3;
    }
  }

  if (*(a2 + 16))
  {
    v8._object = 0x8000000100157640;
    v8._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v8);
    sub_1000C46C4(a2);
  }

  return 0;
}

uint64_t sub_1000CA0A0(void *a1, uint64_t *a2)
{
  v56 = a2;
  v4 = type metadata accessor for LNBundleRecord();
  v55 = *(v4 - 8);
  v5 = *(v55 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = (v51 - v9);
  v11 = sub_10002EB80(&qword_10019A480, &qword_100150FE0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (v51 - v14);
  v63 = _swiftEmptyArrayStorage;
  v61 = _swiftEmptyArrayStorage;
  v62 = _swiftEmptyArrayStorage;
  v16 = sub_10007ABAC();
  if (v2)
  {

    v17 = _swiftEmptyArrayStorage;
    v18 = v56;
    goto LABEL_12;
  }

  v19 = v16;
  v58 = v11;
  v53 = a1;
  v54 = v7;
  v52 = 0;
  v20 = *(v16 + 16);
  if (v20)
  {
    v59 = _swiftEmptyArrayStorage;
    sub_1000B394C(0, v20, 0);
    v21 = v59;
    v22 = *(v55 + 80);
    v51[1] = v19;
    v23 = v19 + ((v22 + 32) & ~v22);
    v57 = *(v55 + 72);
    v24 = v58;
    do
    {
      sub_100027104(v23, v10);
      v25 = objc_autoreleasePoolPush();
      v26 = *(v24 + 48);
      v27 = v10[1];
      *v15 = *v10;
      v15[1] = v27;
      sub_100027104(v10, v15 + v26);

      objc_autoreleasePoolPop(v25);
      sub_100027240(v10, type metadata accessor for LNBundleRecord);
      v59 = v21;
      v29 = v21[2];
      v28 = v21[3];
      if (v29 >= v28 >> 1)
      {
        sub_1000B394C(v28 > 1, v29 + 1, 1);
        v21 = v59;
      }

      v21[2] = v29 + 1;
      sub_10005644C(v15, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v29, &qword_10019A480, &qword_100150FE0);
      v24 = v58;
      v23 += v57;
      --v20;
    }

    while (v20);

    v18 = v56;
    v30 = v53;
  }

  else
  {
    v30 = a1;

    v21 = _swiftEmptyArrayStorage;
    v18 = v56;
  }

  v31 = v52;
  v60 = sub_1000C40AC(v21);
  v32 = sub_1000034B4(v18, v18[3]);
  sub_1000F3854(*v32, &v60, &v61, &v62, &v63);
  v33 = v31;
  v34 = v54;
  if (v31)
  {

    v17 = v62;
LABEL_12:

    sub_1000034F8(v18);
    return v17;
  }

  v52 = 0;
  swift_beginAccess();
  v36 = v60 + 64;
  v37 = 1 << *(v60 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v60 + 64);
  v40 = (v37 + 63) >> 6;
  v58 = v60;
  result = swift_bridgeObjectRetain_n();
  v41 = _swiftEmptyArrayStorage;
  v42 = v55;
  if (v39)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v43 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v43 >= v40)
    {

      v50 = sub_10006E040(v41);

      swift_beginAccess();
      sub_10006E6E0(v50);
      swift_endAccess();

      swift_beginAccess();
      v17 = v63;
      swift_beginAccess();

      sub_1000034F8(v56);
      return v17;
    }

    v39 = *(v36 + 8 * v43);
    ++v33;
    if (v39)
    {
      v33 = v43;
      do
      {
LABEL_21:
        v44 = *(v42 + 72);
        sub_100027104(*(v58 + 56) + v44 * (__clz(__rbit64(v39)) | (v33 << 6)), v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100070D8C(0, v41[2] + 1, 1, v41);
          v41 = v48;
        }

        v46 = v41[2];
        v45 = v41[3];
        if (v46 >= v45 >> 1)
        {
          sub_100070D8C(v45 > 1, v46 + 1, 1, v41);
          v41 = v49;
        }

        v39 &= v39 - 1;
        v41[2] = v46 + 1;
        v42 = v55;
        v47 = v41 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + v46 * v44;
        v34 = v54;
        result = sub_1000F9F3C(v54, v47);
        v30 = v53;
      }

      while (v39);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000CA648()
{
  v1[8] = v0;
  v2 = *(type metadata accessor for LNBundleRecord() - 8);
  v1[9] = v2;
  v3 = *(v2 + 64) + 15;
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000CA704, 0, 0);
}

uint64_t sub_1000CA704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_1000920D4();
  a25 = v29;
  a26 = v30;
  sub_1000FDA90();
  a24 = v26;
  v31 = v26[8];
  v32 = *(v31 + OBJC_IVAR____TtC10LinkDaemon8Registry_ready);
  v26[11] = v32;
  if (v32)
  {
    v33 = async function pointer to Task<>.value.getter[1];

    v34 = swift_task_alloc();
    v35 = sub_1000FD5C4(v34);
    *v35 = v36;
    v35[1] = sub_1000CAD2C;
    sub_10001278C();
    sub_1000381A8();

    return Task<>.value.getter(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
  }

  v45 = (v31 + OBJC_IVAR____TtC10LinkDaemon8Registry_registryState);
  os_unfair_lock_lock((v31 + OBJC_IVAR____TtC10LinkDaemon8Registry_registryState));
  v46 = sub_10002EB80(&qword_10019B7B8, &unk_100150CF0);
  sub_1000CB564(v45 + *(v46 + 28), v31, &a14);
  os_unfair_lock_unlock(v45);
  if (a14)
  {
    v47 = v26[8];
    v48 = sub_1000C9F04();
    v26[13] = v48;
    v26[14] = v49;
    v26[15] = v50;
    sub_1000FDB04(v48);
    if (*(v27 + 16) || v31[2])
    {
      v51 = v26[8];
      v52 = sub_1000275B8(_swiftEmptyArrayStorage);
      v53 = *(v51 + OBJC_IVAR____TtC10LinkDaemon8Registry_store);
      v54 = sub_10007ACA8();
      v64 = v54;
      v65 = *(v54 + 16);
      if (v65)
      {
        a10 = v52;
        a11 = v27;
        a12 = v28;
        a13 = v31;
        v66 = v26[9];
        v67 = v26[10];
        a14 = _swiftEmptyArrayStorage;
        sub_100016D64();
        sub_1000FD384();
        a9 = v64;
        v69 = v64 + v68;
        v70 = *(v66 + 72);
        do
        {
          v71 = v26[10];
          sub_1000129BC();
          sub_100027104(v69, v71);
          v72 = *v71;
          v73 = *(v67 + 8);

          sub_1000FCE54();
          sub_100027240(v71, v74);
          sub_1000FDA3C();
          if (v76)
          {
            sub_100027028(v75 > 1);
            v53 = a14;
          }

          sub_1000FD75C();
        }

        while (!v77);

        v28 = a12;
        v31 = a13;
        v52 = a10;
      }

      else
      {

        v53 = _swiftEmptyArrayStorage;
      }

      sub_1000275B8(v53);
      sub_10001E0E8();

      sub_1000C53B4(v53, v52);
      sub_10000D34C();

      v78 = *(v65 + 16);

      if (v78)
      {

        v79 = swift_allocObject();
        v79[2] = v28;
        v79[3] = v31;
        v79[4] = v27;
        sub_100003D44(0, &qword_10019BAF0, OS_dispatch_queue_ptr);
        sub_100016628();

        static OS_dispatch_queue.main.getter();
        sub_100009A00();
        type metadata accessor for OSStateHandler();
        swift_allocObject();
        v26[16] = sub_1000FD118();
        if (qword_100198350 != -1)
        {
          sub_100007258();
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        sub_100011AB8(v80, qword_10019E100);
        v81 = Logger.logObject.getter();
        static os_log_type_t.fault.getter();
        v82 = sub_10001A88C();
        if (os_log_type_enabled(v82, v83))
        {
          sub_100005D40();
          v84 = swift_slowAlloc();
          sub_10001043C(v84);
          sub_100012858();
          _os_log_impl(v85, v86, v87, v88, v89, 2u);
          sub_10001D624();
        }

        v90 = swift_task_alloc();
        v26[17] = v90;
        *v90 = v26;
        sub_100023354(v90);
        sub_1000381A8();

        return sub_1000C8C28(v91, v92, v93);
      }

      v95 = sub_1000C32F8(v52);

      v26[7] = v95;
      v96 = sub_1000066C0();
      sub_10002EB80(v96, v97);
      sub_100018788();
      sub_1000FC7C4(v98);
      v99 = sub_1000FD8E4();

      if (qword_100198350 != -1)
      {
        sub_100007258();
        swift_once();
      }

      v100 = type metadata accessor for Logger();
      sub_10000347C(v100, qword_10019E100);
      sub_100008840();

      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v101, v102))
      {
        sub_10001153C();
        v103 = swift_slowAlloc();
        sub_100003BFC();
        v104 = swift_slowAlloc();
        a14 = v104;
        *v103 = 136315138;
        v105 = sub_100002B74();
        sub_100004C50(v105, v106, v107);
        sub_100091E9C();

        *(v103 + 4) = v99;
        sub_1000FD654();
        _os_log_impl(v108, v109, v110, v111, v112, 0xCu);
        sub_1000034F8(v104);
        sub_10001E150();

        sub_100004DE4();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v55 = v26[10];

  sub_100003A00();
  sub_1000381A8();

  return v57(v56, v57, v58, v59, v60, v61, v62, v63, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1000CAD2C()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000CAE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, os_unfair_lock_s *a13, uint64_t *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  sub_1000920D4();
  a25 = v29;
  a26 = v30;
  sub_1000FDA90();
  a24 = v26;
  v31 = v26[8];
  v32 = &v31[OBJC_IVAR____TtC10LinkDaemon8Registry_registryState];
  os_unfair_lock_lock(&v31[OBJC_IVAR____TtC10LinkDaemon8Registry_registryState]);
  v33 = sub_10002EB80(&qword_10019B7B8, &unk_100150CF0);
  sub_1000CB564(v32 + *(v33 + 28), v31, &a14);
  os_unfair_lock_unlock(v32);
  if (a14)
  {
    v34 = v26[8];
    v35 = sub_1000C9F04();
    v26[13] = v35;
    v26[14] = v36;
    v26[15] = v37;
    sub_1000FDB04(v35);
    if (*(v27 + 16) || *&v32[4]._os_unfair_lock_opaque)
    {
      v38 = v26[8];
      v39 = sub_1000275B8(_swiftEmptyArrayStorage);
      v40 = *(v38 + OBJC_IVAR____TtC10LinkDaemon8Registry_store);
      v41 = sub_10007ACA8();
      v52 = v41;
      v53 = *(v41 + 16);
      if (v53)
      {
        a10 = v39;
        a11 = v27;
        a12 = v28;
        a13 = v32;
        v54 = v26[9];
        v55 = v26[10];
        a14 = _swiftEmptyArrayStorage;
        sub_100016D64();
        sub_1000FD384();
        a9 = v52;
        v57 = v52 + v56;
        v58 = *(v54 + 72);
        do
        {
          v59 = v26[10];
          sub_1000129BC();
          sub_100027104(v57, v59);
          v60 = *v59;
          v61 = *(v55 + 8);

          sub_1000FCE54();
          sub_100027240(v59, v62);
          sub_1000FDA3C();
          if (v64)
          {
            sub_100027028(v63 > 1);
            v40 = a14;
          }

          sub_1000FD75C();
        }

        while (!v65);

        v28 = a12;
        v32 = a13;
        v39 = a10;
      }

      else
      {

        v40 = _swiftEmptyArrayStorage;
      }

      sub_1000275B8(v40);
      sub_10001E0E8();

      sub_1000C53B4(v40, v39);
      sub_10000D34C();

      v66 = *(v53 + 16);

      if (v66)
      {

        v67 = swift_allocObject();
        v67[2] = v28;
        v67[3] = v32;
        v67[4] = v27;
        sub_100003D44(0, &qword_10019BAF0, OS_dispatch_queue_ptr);
        sub_100016628();

        static OS_dispatch_queue.main.getter();
        sub_100009A00();
        type metadata accessor for OSStateHandler();
        swift_allocObject();
        v26[16] = sub_1000FD118();
        if (qword_100198350 != -1)
        {
          sub_100007258();
          swift_once();
        }

        v68 = type metadata accessor for Logger();
        sub_100011AB8(v68, qword_10019E100);
        v69 = Logger.logObject.getter();
        static os_log_type_t.fault.getter();
        v70 = sub_10001A88C();
        if (os_log_type_enabled(v70, v71))
        {
          sub_100005D40();
          v72 = swift_slowAlloc();
          sub_10001043C(v72);
          sub_100012858();
          _os_log_impl(v73, v74, v75, v76, v77, 2u);
          sub_10001D624();
        }

        v78 = swift_task_alloc();
        v26[17] = v78;
        *v78 = v26;
        sub_100023354(v78);
        sub_1000381A8();

        return sub_1000C8C28(v79, v80, v81);
      }

      v83 = sub_1000C32F8(v39);

      v26[7] = v83;
      v84 = sub_1000066C0();
      sub_10002EB80(v84, v85);
      sub_100018788();
      sub_1000FC7C4(v86);
      v87 = sub_1000FD8E4();

      if (qword_100198350 != -1)
      {
        sub_100007258();
        swift_once();
      }

      v88 = type metadata accessor for Logger();
      sub_10000347C(v88, qword_10019E100);
      sub_100008840();

      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v89, v90))
      {
        sub_10001153C();
        v91 = swift_slowAlloc();
        sub_100003BFC();
        v92 = swift_slowAlloc();
        a14 = v92;
        *v91 = 136315138;
        v93 = sub_100002B74();
        sub_100004C50(v93, v94, v95);
        sub_100091E9C();

        *(v91 + 4) = v87;
        sub_1000FD654();
        _os_log_impl(v96, v97, v98, v99, v100, 0xCu);
        sub_1000034F8(v92);
        sub_10001E150();

        sub_100004DE4();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v42 = v26[10];

  sub_100003A00();
  sub_1000381A8();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1000CB3C4()
{
  sub_1000070C8();
  sub_1000036D0();
  v2 = v1[17];
  v3 = v1[15];
  v4 = v1[14];
  v5 = v1[13];
  v6 = *v0;
  sub_10000298C();
  *v7 = v6;

  v8 = sub_10001E094();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1000CB504()
{
  sub_1000036A0();
  v1 = *(v0 + 128);

  v2 = *(v0 + 80);

  sub_100003A00();

  return v3();
}

void sub_1000CB564(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v98 = a3;
  v96 = a2;
  v4 = sub_10002EB80(&qword_10019BA18, &qword_100150EB8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v88 - v6;
  v8 = type metadata accessor for Date();
  v99 = *(v8 - 8);
  v9 = v99[8];
  __chkstk_darwin(v8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v88 - v13;
  __chkstk_darwin(v15);
  v17 = &v88 - v16;
  __chkstk_darwin(v18);
  v20 = &v88 - v19;
  v97 = a1;
  sub_100009E90(a1, v7, &qword_10019BA18, &qword_100150EB8);
  if (sub_1000032C4(v7, 1, v8) == 1)
  {
    sub_1000FC404(v7, &qword_10019BA18);
LABEL_20:
    v66 = 0;
    goto LABEL_21;
  }

  v92 = v99[4];
  v93 = v99 + 4;
  v92(v20, v7, v8);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v22 = v21;
  if (qword_100198350 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  v24 = sub_10000347C(v23, qword_10019E100);
  v25 = v99[2];
  v25(v14, v20, v8);
  v25(v11, v17, v8);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v95 = v17;
    v29 = v28;
    v90 = swift_slowAlloc();
    v101 = v90;
    *v29 = 136446722;
    sub_1000098AC(&unk_100199D30);
    LODWORD(v89) = v27;
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v91 = v24;
    v32 = v31;
    v94 = v20;
    v88 = v26;
    v33 = v99[1];
    v33(v14, v8);
    v34 = sub_100004C50(v30, v32, &v101);

    *(v29 + 4) = v34;
    *(v29 + 12) = 2082;
    v35 = v33;
    v36 = dispatch thunk of CustomStringConvertible.description.getter();
    v38 = v37;
    v33(v11, v8);
    v20 = v94;
    v39 = sub_100004C50(v36, v38, &v101);
    v24 = v91;

    *(v29 + 14) = v39;
    *(v29 + 22) = 2048;
    *(v29 + 24) = v22;
    v40 = v88;
    _os_log_impl(&_mh_execute_header, v88, v89, "Comparing %{public}s to %{public}s for audit: %fs", v29, 0x20u);
    swift_arrayDestroy();

    v17 = v95;
  }

  else
  {

    v35 = v99[1];
    v35(v11, v8);
    v35(v14, v8);
  }

  v41 = sub_10007FC3C();
  if (v41 >= v22)
  {
    v62 = v41;
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 134218240;
      *(v65 + 4) = v22;
      *(v65 + 12) = 2048;
      *(v65 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v63, v64, "Debounce not exceeded %f < %f", v65, 0x16u);
    }

    goto LABEL_19;
  }

  v42 = sub_1000C8FF0();
  v43 = *(type metadata accessor for Registry.State(0) + 20);
  v44 = *(v97 + v43);
  if (!v44)
  {
LABEL_13:
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "LSDatabaseContext appears unchanged, skipping audit", v61, 2u);
    }

LABEL_19:
    v35(v17, v8);
    v35(v20, v8);
    goto LABEL_20;
  }

  v90 = v43;
  v94 = v20;
  v95 = v17;
  v96 = v42;
  if (v42)
  {
    v89 = v44;
    v45 = v42;
    v46 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v91 = v8;
    v47 = v24;
    v49 = v48;
    v50 = v35;
    v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
    v54 = static Data.== infix(_:_:)();
    v55 = v51;
    v35 = v50;
    v56 = v89;
    sub_100009B18(v55, v53);
    v57 = v46;
    v20 = v94;
    v58 = v49;
    v24 = v47;
    v8 = v91;
    sub_100009B18(v57, v58);

    if (v54)
    {

      v17 = v95;
      v42 = v96;
      goto LABEL_13;
    }
  }

  else
  {
    v67 = v44;
    v45 = 0;
  }

  v68 = v44;
  v69 = v45;
  v70 = Logger.logObject.getter();
  v71 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v91 = v24;
    v101 = v73;
    *v72 = 136315394;
    v100 = v68;
    type metadata accessor for LSPersistentIdentifier(0);
    v89 = v35;
    v74 = v68;
    v75 = String.init<A>(describing:)();
    v77 = sub_100004C50(v75, v76, &v101);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2080;
    v78 = v96;
    v100 = v96;
    v79 = v69;
    sub_10002EB80(&qword_10019BB78, &unk_100151010);
    v80 = String.init<A>(describing:)();
    v82 = sub_100004C50(v80, v81, &v101);
    v35 = v89;

    *(v72 + 14) = v82;
    _os_log_impl(&_mh_execute_header, v70, v71, "%s != %s", v72, 0x16u);
    swift_arrayDestroy();

    v20 = v94;

    v83 = v95;
  }

  else
  {

    v83 = v95;
    v78 = v96;
  }

  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&_mh_execute_header, v84, v85, "Audit conditions met, proceeding", v86, 2u);
  }

  v35(v20, v8);
  v87 = v97;
  sub_1000FC404(v97, &qword_10019BA18);
  v92(v87, v83, v8);
  v66 = 1;
  sub_1000075C4(v87, 0, 1, v8);

  *(v87 + v90) = v78;
LABEL_21:
  *v98 = v66;
}

uint64_t sub_1000CBE94(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != 1)
  {
    return 0;
  }

  sub_10002EB80(&qword_10019B0D0, &unk_100150350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  *(inited + 32) = 0x7365676E616863;
  *(inited + 40) = 0xE700000000000000;
  v8 = sub_1000C9F6C(a2, a3, a4);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  Dictionary.init(dictionaryLiteral:)();
  return 0x6146207469647541;
}

void sub_1000CBFD0()
{
  sub_1000F4DE8(319, &qword_10019B7B0, type metadata accessor for Registry.State, &type metadata accessor for Mutex);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000CC104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = type metadata accessor for LNBundleRecord();
  v6 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v39 - v10;
  __chkstk_darwin(v12);
  v14 = (&v39 - v13);
  if (qword_1001982E8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000347C(v15, qword_10019DFF0);
  sub_100027104(a1, v14);
  v43 = a1;
  sub_100027104(a1, v11);
  sub_100027104(a2, v8);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v41 = a3;
    v19 = v18;
    v40 = swift_slowAlloc();
    v44 = v40;
    *v19 = 136315650;
    v20 = *v14;
    v21 = v14[1];

    sub_100027240(v14, type metadata accessor for LNBundleRecord);
    v22 = sub_100004C50(v20, v21, &v44);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2080;
    v23 = v42;
    v24 = &v11[*(v42 + 24)];
    v25 = *v24;
    v26 = *(v24 + 1);
    v27 = Data.description.getter();
    v29 = v28;
    sub_100027240(v11, type metadata accessor for LNBundleRecord);
    v30 = sub_100004C50(v27, v29, &v44);

    *(v19 + 14) = v30;
    *(v19 + 22) = 2080;
    v31 = &v8[*(v23 + 24)];
    v32 = *v31;
    v33 = *(v31 + 1);
    v34 = Data.description.getter();
    v36 = v35;
    sub_100027240(v8, type metadata accessor for LNBundleRecord);
    v37 = sub_100004C50(v34, v36, &v44);

    *(v19 + 24) = v37;
    _os_log_impl(&_mh_execute_header, v16, v17, "Found non-unique bundle %s: %s vs %s", v19, 0x20u);
    swift_arrayDestroy();

    a3 = v41;
  }

  else
  {

    sub_100027240(v8, type metadata accessor for LNBundleRecord);
    sub_100027240(v11, type metadata accessor for LNBundleRecord);
    sub_100027240(v14, type metadata accessor for LNBundleRecord);
  }

  return sub_100027104(v43, a3);
}

uint64_t sub_1000CC480(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v61 = a4;
  v62 = a3;
  v8 = sub_10002EB80(&qword_10019BB70, &qword_10014F850);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v15 = type metadata accessor for LNBundleRecord();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[3];
  v19 = a1[4];
  sub_1000034B4(a1, v20);
  v21 = (*(*(v19 + 8) + 8))(v20);
  v23 = v22;
  swift_beginAccess();
  sub_1000A0F30(v21, v23, *a2, v14);

  if (sub_1000032C4(v14, 1, v15) == 1)
  {
    sub_1000FC404(v14, &qword_10019BB70);
    swift_endAccess();
    sub_1000034B4(a1, a1[3]);
    if (sub_1000EE718())
    {
      sub_100013334(a1, v63);
      swift_beginAccess();
      sub_1000F5094(sub_1000702B8);
      v24 = *(*a5 + 16);
      sub_1000F514C(v24, sub_1000702B8);
      v25 = v64;
      v26 = sub_10001C5D0(v63, v64);
      v27 = *(*(v25 - 8) + 64);
      v28 = __chkstk_darwin(v26);
      v30 = &v61 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v31 + 16))(v30, v28);
      sub_1000FA39C(v24, v30, a5, &off_10018F930, sub_1000716A0);
      sub_1000034F8(v63);
      swift_endAccess();
    }
  }

  else
  {
    sub_1000F9F3C(v14, v18);
    swift_endAccess();
    v32 = &v18[*(v15 + 24)];
    v33 = *v32;
    v34 = *(v32 + 1);
    v36 = a1[3];
    v35 = a1[4];
    sub_1000034B4(a1, v36);
    v37 = (*(*(v35 + 8) + 24))(v36);
    v39 = v38;
    LOBYTE(v33) = static Data.== infix(_:_:)();
    sub_100009B18(v37, v39);
    if ((v33 & 1) == 0)
    {
      sub_1000034B4(a1, a1[3]);
      if (sub_1000EE718())
      {
        sub_100013334(a1, v63);
        v40 = v62;
        swift_beginAccess();
        sub_1000F5094(sub_1000702B8);
        v41 = *(*v40 + 16);
        sub_1000F514C(v41, sub_1000702B8);
        v42 = v64;
        v43 = sub_10001C5D0(v63, v64);
        v44 = *(*(v42 - 8) + 64);
        v45 = __chkstk_darwin(v43);
        v47 = &v61 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v48 + 16))(v47, v45);
        sub_1000FA39C(v41, v47, v40, &off_10018F930, sub_1000716A0);
        sub_1000034F8(v63);
      }

      else
      {
        v49 = a1[3];
        v62 = sub_1000034B4(a1, v49);
        v50 = v61;
        swift_beginAccess();
        sub_1000F5094(sub_100070D68);
        v51 = *(*v50 + 16);
        v52 = sub_1000F514C(v51, sub_100070D68);
        v53 = *(*(v49 - 8) + 64);
        v54 = __chkstk_darwin(v52);
        v56 = &v61 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v57 + 16))(v56, v62, v49, v54);
        sub_1000FA39C(v51, v56, v50, &off_10018F910, sub_1000716A0);
      }

      swift_endAccess();
    }

    sub_100027240(v18, type metadata accessor for LNBundleRecord);
  }

  v58 = a1[3];
  v59 = a1[4];
  sub_1000034B4(a1, v58);
  (*(*(v59 + 8) + 8))(v58);
  swift_beginAccess();
  sub_1000605D4();
  swift_endAccess();

  return sub_1000FC404(v11, &qword_10019BB70);
}

uint64_t sub_1000CCB28(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = 0;
  v19 = 0xE000000000000000;
  switch(a2 >> 62)
  {
    case 2uLL:
      v8 = *(a1 + 16);
      break;
    default:
      break;
  }

  sub_1000098F0(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_1000098AC(&unk_10019BB08);
  v15 = xmmword_10014CE90;
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v17)
    {
      break;
    }

    v9 = v16;
    sub_10002EB80(&qword_10019BB10, &qword_100150FD0);
    v10 = swift_allocObject();
    *(v10 + 16) = v15;
    *(v10 + 56) = &type metadata for UInt8;
    *(v10 + 64) = &protocol witness table for UInt8;
    *(v10 + 32) = v9;
    v11._countAndFlagsBits = String.init(format:_:)();
    String.append(_:)(v11);
  }

  (*(v14 + 8))(v7, v4);
  return v18;
}

uint64_t sub_1000CCD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_10002CCE0(a4);
  sub_10000D4DC(0, 0xF000000000000000);

  sub_1000FA61C(a2, a3);

  result = sub_10000D4DC(a2, a3);
  *a5 = 0;
  *(a5 + 8) = _swiftEmptyArrayStorage;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = 0;
  return result;
}

uint64_t sub_1000CCDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_defaultActor_initialize();
  *(v8 + 144) = 1;
  sub_10002EB80(&unk_10019BCE0, &qword_1001516F8);
  swift_allocObject();
  v17 = sub_1000C405C();
  *(v8 + 200) = 0;
  *(v8 + 208) = 0u;
  *(v8 + 224) = 0u;
  *(v8 + 233) = 0u;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 152) = a4;
  *(v8 + 160) = v17;
  *(v8 + 168) = 0;
  *(v8 + 176) = a1;
  *(v8 + 184) = a2;
  *(v8 + 192) = a3;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  return v8;
}

uint64_t sub_1000CCEF4()
{
  sub_1000FDCA4();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100011AB8(v8, qword_10019E100);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  v11 = sub_10001A88C();
  if (os_log_type_enabled(v11, v12))
  {
    sub_100005D40();
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, v4, v13, 2u);
    sub_100004DE4();
  }

  v14 = *(v5 + 160);
  v2(v7);
  sub_1000FDC90();

  return sub_1000CCFEC(v15);
}

uint64_t sub_1000CCFEC(char a1)
{
  v2 = v1;
  v3 = *(v1 + 168);
  if (!v3)
  {
    if (qword_100198350 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000347C(v11, qword_10019E100);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Task idle, creating new task at priority utility", v14, 2u);
    }

    v10 = sub_1000CD2B8(v2);
    v15 = *(v2 + 168);
    *(v2 + 168) = v10;
    goto LABEL_18;
  }

  v5 = qword_100198350;

  if ((a1 & 1) == 0)
  {
    if (v5 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000347C(v16, qword_10019E100);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Cancelling existing task and creating new", v19, 2u);
    }

    Task.cancel()();
    v10 = sub_1000CD2B8(v2);

    v20 = *(v2 + 168);
    *(v2 + 168) = v10;
LABEL_18:

    return v10;
  }

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000347C(v6, qword_10019E100);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Task active, returning existing", v9, 2u);
  }

  return v3;
}

uint64_t sub_1000CD2B8(uint64_t a1)
{
  v2 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  if (qword_100198350 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000347C(v6, qword_10019E100);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Creating processing task", v9, 2u);
  }

  static TaskPriority.high.getter();
  v10 = type metadata accessor for TaskPriority();
  sub_1000075C4(v5, 0, 1, v10);
  v11 = sub_1000098AC(&unk_10019BC08);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v11;
  v12[4] = a1;
  swift_retain_n();
  return sub_10003A6C0(0, 0, v5, &unk_100151650, v12);
}

uint64_t sub_1000CD4BC()
{
  sub_1000036A0();
  *(v0 + 152) = *(*(v0 + 160) + 160);
  sub_1000098AC(&unk_10019BC08);

  v1 = sub_1000FD0FC();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000CD54C()
{
  sub_1000036A0();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *(v1 + 16) = v0 + 152;
  v2 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v3 = swift_task_alloc();
  *(v0 + 176) = v3;
  sub_10002EB80(&unk_10019BC10, &unk_100151658);
  *v3 = v0;
  v3[1] = sub_1000CD638;
  sub_100011B30();

  return withCheckedContinuation<A>(isolation:function:_:)(v4, v5, v6, v7, 0xE600000000000000, v8, v1, v9);
}

uint64_t sub_1000CD638()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = v1[22];
  v3 = v1[21];
  v4 = v1[20];
  v5 = *v0;
  sub_10000298C();
  *v6 = v5;

  sub_10000D6D8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CD750()
{
  sub_1000070C8();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  *(v0 + 184) = v1;
  *(v0 + 192) = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  *(v0 + 200) = v3;
  *(v0 + 208) = v4;
  v5 = *(v0 + 96);
  *(v0 + 216) = v5;
  v6 = *(v0 + 104);
  *(v0 + 57) = v6;
  if (v2)
  {
    *(v0 + 16) = v1 & 1;
    *(v0 + 24) = v2;
    *(v0 + 32) = v3;
    *(v0 + 40) = v4;
    *(v0 + 48) = v5;
    *(v0 + 56) = v6 & 1;
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    *(v0 + 224) = sub_10000347C(v7, qword_10019E100);
    v8 = Logger.logObject.getter();
    static os_log_type_t.debug.getter();
    v9 = sub_100018350();
    if (os_log_type_enabled(v9, v10))
    {
      sub_100005D40();
      v11 = swift_slowAlloc();
      sub_100004814(v11);
      sub_1000117B8();
      _os_log_impl(v12, v13, v14, v15, v16, 2u);
      sub_100004DE4();
    }

    swift_task_alloc();
    sub_1000103E4();
    *(v0 + 232) = v17;
    *v17 = v18;
    v17[1] = sub_1000CD9A4;
    v19 = *(v0 + 160);

    return sub_1000CDFFC(v0 + 16, 0);
  }

  else
  {
    v21 = *(v0 + 152);

    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100011AB8(v22, qword_10019E100);
    v23 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v24 = sub_100018350();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 67109120;
      v26[1] = static Task<>.isCancelled.getter() & 1;
      sub_1000117B8();
      _os_log_impl(v27, v28, v29, v30, v31, 8u);
      sub_100004DE4();
    }

    v32 = *(v0 + 160);

    v33 = *(v32 + 168);
    *(v32 + 168) = 0;

    sub_100003A00();

    return v34();
  }
}

uint64_t sub_1000CD9A4()
{
  sub_1000070C8();
  sub_1000FD774();
  sub_10000788C();
  *v4 = v3;
  v5 = *(v1 + 232);
  v6 = *v2;
  sub_1000050EC();
  *v7 = v6;
  v10[30] = v8;
  v10[31] = v9;
  v10[32] = v0;

  sub_1000FD738();
  v12 = *(v11 + 160);
  if (v0)
  {
    v13 = sub_1000CDDB4;
  }

  else
  {
    v13 = sub_1000CDAC0;
  }

  return _swift_task_switch(v13, v12, 0);
}

uint64_t sub_1000CDAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000FDBA0();
  sub_1000FCEF0();
  v13 = *(v12 + 224);
  v14 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v15 = sub_100018350();
  if (os_log_type_enabled(v15, v16))
  {
    sub_100005D40();
    v17 = swift_slowAlloc();
    sub_100004814(v17);
    sub_1000117B8();
    _os_log_impl(v18, v19, v20, v21, v22, 2u);
    sub_100004DE4();
  }

  v23 = *(v12 + 160);

  v24 = *(v23 + 152);
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24 + 32;
    do
    {
      v28 = *(v12 + 240);
      v27 = *(v12 + 248);
      sub_100013334(v26, v12 + 112);
      v29 = *sub_1000034B4((v12 + 112), *(v12 + 136));

      v31 = sub_10009F638(v30);
      sub_10003597C(v31, v32);

      v33 = *sub_1000034B4((v12 + 112), *(v12 + 136));

      sub_1000275B8(v34);
      v35 = sub_1000FD7B0();
      sub_10003597C(v35, v27);

      sub_1000034F8((v12 + 112));
      v26 += 40;
      --v25;
    }

    while (v25);
  }

  v37 = *(v12 + 240);
  v36 = *(v12 + 248);

  if (static Task<>.isCancelled.getter())
  {
    v38 = *(v12 + 224);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    v41 = sub_10001A88C();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v12 + 57);
    v46 = *(v12 + 208);
    v45 = *(v12 + 216);
    v48 = *(v12 + 192);
    v47 = *(v12 + 200);
    v49 = *(v12 + 184);
    if (v43)
    {
      sub_100005D40();
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Processing task cancelled", v50, 2u);
      sub_100004DE4();
    }

    sub_1000FC1C0(v49, v48, v47, v46, v45);

    v51 = *(v12 + 152);

    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v52 = type metadata accessor for Logger();
    sub_100011AB8(v52, qword_10019E100);
    v53 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v54 = sub_100018350();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 67109120;
      v56[1] = static Task<>.isCancelled.getter() & 1;
      sub_1000117B8();
      _os_log_impl(v57, v58, v59, v60, v61, 8u);
      sub_100004DE4();
    }

    v62 = *(v12 + 160);

    v63 = *(v62 + 168);
    *(v62 + 168) = 0;

    sub_100003A00();
    sub_1000FD244();

    return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12);
  }

  else
  {
    v73 = *(v12 + 57);
    sub_1000FC1C0(*(v12 + 184), *(v12 + 192), *(v12 + 200), *(v12 + 208), *(v12 + 216));
    sub_1000FD0FC();
    sub_1000FD244();

    return _swift_task_switch(v74, v75, v76);
  }
}

void *sub_1000CDDD0@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v6 = *(v2 + 112);
  v7 = *(v2 + 120);
  result = v6(__src);
  if (!v3)
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_100009E90(a1, &v9, &qword_10019BC00, &qword_100151630);
    if (v10)
    {
      sub_10001A798(&v9, v11);
      sub_100118B18(v11);
      sub_1000034F8(v11);
    }

    else
    {
      sub_1000FC404(&v9, &qword_10019BC00);
    }

    sub_100118E48();
    return memcpy(a2, __dst, 0xA8uLL);
  }

  return result;
}

void *sub_1000CDEB0()
{
  v15 = _swiftEmptyArrayStorage;
  os_unfair_lock_lock((v0 + 200));
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  sub_1000FC220(v1, v2, v3, v4, v5);
  os_unfair_lock_unlock((v0 + 200));
  if (v2)
  {

    sub_1000FA61C(v4, v5);
    sub_100070C90();
    v8 = v7;
    v9 = v7[2];
    if (v9 >= v7[3] >> 1)
    {
      sub_100070C90();
      v8 = v14;
    }

    v8[2] = v9 + 1;
    v10 = &v8[6 * v9];
    *(v10 + 32) = v1 & 1;
    v10[5] = v2;
    v10[6] = v3;
    v10[7] = v4;
    v10[8] = v5;
    *(v10 + 72) = v6 & 1;
    v15 = v8;
  }

  v11 = *(v0 + 160);
  v12 = sub_1000C38A4();
  sub_10006E638(v12);
  sub_1000FC1C0(v1, v2, v3, v4, v5);
  return v15;
}

uint64_t sub_1000CDFFC(uint64_t a1, char a2)
{
  *(v3 + 57) = a2;
  *(v3 + 456) = a1;
  *(v3 + 464) = v2;
  *(v3 + 58) = *a1;
  v4 = *(a1 + 24);
  *(v3 + 472) = *(a1 + 8);
  *(v3 + 488) = v4;
  *(v3 + 59) = *(a1 + 40);
  v5 = type metadata accessor for Schema.RuntimeError();
  *(v3 + 504) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v3 + 512) = swift_task_alloc();
  *(v3 + 520) = swift_task_alloc();
  v7 = *(*(type metadata accessor for RegistryError(0) - 8) + 64) + 15;
  *(v3 + 528) = swift_task_alloc();
  v8 = *(type metadata accessor for LNBundleRecord() - 8);
  *(v3 + 536) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 544) = swift_task_alloc();

  return _swift_task_switch(sub_1000CE144, v2, 0);
}

uint64_t sub_1000CE144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1000920D4();
  a25 = v27;
  a26 = v28;
  sub_1000FDA90();
  a24 = v26;
  v30 = *(v26 + 488);
  v29 = *(v26 + 496);
  v31 = *(v26 + 456);
  v32 = *(v26 + 464);
  v33 = *(v26 + 58) & 1;
  v34 = *(v26 + 59) & 1;
  v125 = *(v26 + 472);
  os_unfair_lock_lock((v32 + 200));
  v35 = *(v32 + 248);
  sub_1000FC1C0(*(v32 + 208), *(v32 + 216), *(v32 + 224), *(v32 + 232), *(v32 + 240));
  *(v32 + 208) = v33;
  *(v32 + 216) = v125;
  *(v32 + 232) = v30;
  *(v32 + 240) = v29;
  *(v32 + 248) = v34;
  sub_1000F9ED4(v31, v26 + 16);
  os_unfair_lock_unlock((v32 + 200));
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v36 = *(v26 + 456);
  v37 = *(v26 + 464);
  v38 = type metadata accessor for Logger();
  *(v26 + 552) = sub_1000FD798(v38, qword_10019E100);
  sub_1000F9ED4(v36, v26 + 64);

  sub_1000F9ED4(v36, v26 + 112);

  v39 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v40 = sub_10001A88C();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v26 + 456);
    v43 = swift_slowAlloc();
    sub_100003BFC();
    v44 = swift_slowAlloc();
    v45 = v44;
    a14 = v44;
    *v43 = 136315650;
    v46 = *(v42 + 32);
    if (v46 >> 60 == 15)
    {
      v47 = sub_1000FD5AC();
      v48 = 0xE400000000000000;
    }

    else
    {
      v47 = sub_1000FD848(v44, v46);
      v48 = v51;
    }

    v53 = *(v26 + 456);
    v52 = *(v26 + 464);
    v54 = sub_100004C50(v47, v48, &a14);

    *(v43 + 4) = v54;
    *(v43 + 12) = 1024;
    sub_1000F9F0C(v53);
    *(v43 + 14) = *v53 & 1;
    sub_1000F9F0C(v53);
    *(v43 + 18) = 1024;
    v55 = *(v52 + 144);

    *(v43 + 20) = v55;

    sub_1000FD3B4();
    _os_log_impl(v56, v57, v58, v59, v43, 0x18u);
    sub_1000034F8(v45);
    sub_10001D624();

    sub_100004DE4();
  }

  else
  {
    v50 = *(v26 + 456);
    v49 = *(v26 + 464);

    sub_1000F9F0C(v50);

    sub_1000F9F0C(v50);
  }

  v60 = *(*(v26 + 456) + 16);
  v61 = *(*(v26 + 464) + 176);
  sub_100008840();

  v63 = sub_10007ABD8(v62);

  v64 = *(v63 + 16);
  if (v64)
  {
    *&v125 = v60;
    v65 = *(v26 + 544);
    v66 = *(v26 + 536);
    a14 = _swiftEmptyArrayStorage;
    sub_100016D64();
    sub_1000FD384();
    a10 = v63;
    v68 = v63 + v67;
    v69 = *(v66 + 72);
    do
    {
      v70 = *(v26 + 544);
      sub_1000129BC();
      sub_100027104(v68, v70);
      v71 = *v70;
      v72 = *(v65 + 8);

      sub_1000FCE54();
      sub_100027240(v70, v73);
      a14 = v39;
      v75 = v39[2];
      v74 = v39[3];
      if (v75 >= v74 >> 1)
      {
        sub_100011438(v74 > 1, v75 + 1, 1);
        v39 = a14;
      }

      v39[2] = v75 + 1;
      v76 = &v39[2 * v75];
      v76[4] = v71;
      v76[5] = v72;
      v68 += v69;
      --v64;
    }

    while (v64);
  }

  else
  {

    v39 = _swiftEmptyArrayStorage;
  }

  *(v26 + 560) = v39;
  v78 = v39[2];
  *(v26 + 568) = v78;
  if (v78)
  {
    *(v26 + 60) = 0;
    *(v26 + 584) = _swiftEmptyArrayStorage;
    *(v26 + 576) = 0;
    if (v39[2])
    {
      *(v26 + 592) = v39[4];
      *(v26 + 600) = v39[5];

      v79 = swift_task_alloc();
      *(v26 + 608) = v79;
      *v79 = v26;
      sub_10001287C(v79);
      sub_1000381A8();

      return sub_1000D17D8(v80, v81);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *(v26 + 624) = _swiftEmptyArrayStorage;
    v83 = *(v26 + 464);

    if (*(v83 + 128))
    {
      sub_1000FD644();
      v64 = 0;
      v84();
    }

    else
    {
      sub_1000FD634();
    }

    sub_1000FD720();
    if (v86)
    {
      *(v26 + 61) = 0;
      *(v26 + 648) = _swiftEmptyArrayStorage;
      sub_1000FDBBC();
      sub_10001D3EC();
      swift_task_alloc();
      sub_1000103E4();
      *(v26 + 672) = v87;
      *v87 = v88;
      sub_10000789C(v87);
      sub_1000381A8();

      return sub_1000CFBD4(v89, v90, v91);
    }

    else
    {
      if (*(v85 + 32) >> 60 == 15)
      {
        sub_1000FD050();
      }

      else
      {
        v64 = *(v85 + 24);
        sub_1000FD9E4(v85);
        if ((v93 & 1) != 0 || (v39[18] & 1) == 0)
        {
          v94 = sub_100002B74();
          sub_1000098F0(v94, v95);
          v96 = sub_100002B74();
          sub_1000D2104(v96, v97);
          v98 = sub_100002B74();
          sub_10000D4DC(v98, v99);
        }
      }

      sub_1000FD810();
      sub_1000F9ED4(v64, v26 + 160);

      v100 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v101 = sub_1000FD458();
      sub_1000F9F0C(v101);
      if (sub_1000103CC())
      {
        v102 = sub_1000FD860();
        sub_100003BFC();
        v103 = swift_slowAlloc();
        a14 = v103;
        sub_1000FD318(4.8151e-34);
        if (!v107 & v106)
        {
          v108 = sub_1000FD5AC();
          v110 = 0xE400000000000000;
        }

        else
        {
          v108 = sub_1000FD848(v104, v105);
          v110 = v109;
        }

        v111 = *(v26 + 464);
        sub_100004C50(v108, v110, &a14);

        sub_1000FD2F4();
        *(v102 + 14) = v110;

        sub_1000117B8();
        _os_log_impl(v112, v113, v114, v115, v116, 0x12u);
        sub_1000034F8(v103);
        sub_10001D624();

        sub_100004DE4();
      }

      else
      {
        sub_1000FD938();
      }

      sub_1000FC404(v26 + 208, &qword_10019BC00);
      sub_1000FD150();
      sub_1000FD554();
      sub_1000FD574();

      sub_1000FD07C();
      sub_1000381A8();

      return v120(v117, v118, v119, v120, v121, v122, v123, v124, a9, a10, v125, *(&v125 + 1), a13, a14, a15, a16, a17, a18);
    }
  }

  return result;
}

uint64_t sub_1000CE778()
{
  sub_1000070C8();
  sub_1000FD774();
  sub_10000788C();
  *v4 = v3;
  v5 = *(v1 + 608);
  *v4 = *v2;
  *(v3 + 616) = v0;

  sub_1000FD738();
  v7 = *(v6 + 464);
  if (v0)
  {
    v8 = sub_1000CF06C;
  }

  else
  {
    v8 = sub_1000CE890;
  }

  return _swift_task_switch(v8, v7, 0);
}

void sub_1000CE890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000FD50C();
  a19 = v21;
  a20 = v22;
  sub_1000FCEF0();
  a18 = v20;
  v23 = *(v20 + 584);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *(v20 + 584);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v83 = *(v25 + 16);
    sub_100004E28();
    sub_100013A60();
    v25 = v84;
  }

  v26 = *(v25 + 16);
  if (v26 >= *(v25 + 24) >> 1)
  {
    sub_100013A60();
    v25 = v85;
  }

  v27 = *(v20 + 600);
  v28 = *(v20 + 592);
  v29 = *(v20 + 568);
  v30 = *(v20 + 576) + 1;
  *(v25 + 16) = v26 + 1;
  v31 = v25 + 16 * v26;
  *(v31 + 32) = v28;
  *(v31 + 40) = v27;
  if (v30 == v29)
  {
    v32 = *(v20 + 616);
    v33 = *(v20 + 60);
    *(v20 + 624) = v25;
    v34 = *(v20 + 560);
    v35 = *(v20 + 464);

    if (*(v35 + 128))
    {
      sub_1000FD644();
      v36();
      if (!v32)
      {
        goto LABEL_10;
      }
    }

    sub_1000FD634();
LABEL_10:
    sub_1000FD720();
    if (v38)
    {
      *(v20 + 61) = v33;
      *(v20 + 648) = _swiftEmptyArrayStorage;
      sub_1000FDBBC();
      sub_10001D3EC();
      swift_task_alloc();
      sub_1000103E4();
      *(v20 + 672) = v39;
      *v39 = v40;
      sub_10000789C(v39);
      sub_1000FD440();

      sub_1000CFBD4(v41, v42, v43);
    }

    else
    {
      if ((v33 & 1) != 0 || *(v37 + 32) >> 60 == 15)
      {
        sub_1000FD050();
      }

      else
      {
        v32 = *(v37 + 24);
        sub_1000FD9E4(v37);
        if ((v59 & 1) != 0 || (*(v35 + 144) & 1) == 0)
        {
          v60 = sub_100002B74();
          sub_1000098F0(v60, v61);
          v62 = sub_100002B74();
          sub_1000D2104(v62, v63);
          v64 = sub_100002B74();
          sub_10000D4DC(v64, v65);
        }
      }

      sub_1000FD810();
      sub_1000F9ED4(v32, v20 + 160);

      v52 = Logger.logObject.getter();
      static os_log_type_t.default.getter();
      v53 = sub_1000FD458();
      sub_1000F9F0C(v53);
      if (sub_1000103CC())
      {
        v54 = sub_1000FD860();
        sub_100003BFC();
        v55 = swift_slowAlloc();
        a10 = v55;
        sub_1000FD318(4.8151e-34);
        if (!v58 & v47)
        {
          v68 = 0xE400000000000000;
          v66 = sub_1000FD5AC();
        }

        else
        {
          v66 = sub_1000FD848(v56, v57);
          v68 = v67;
        }

        v69 = *(v20 + 464);
        sub_100004C50(v66, v68, &a10);

        sub_1000FD2F4();
        *(v54 + 14) = v68;

        sub_1000117B8();
        _os_log_impl(v70, v71, v72, v73, v74, 0x12u);
        sub_1000034F8(v55);
        sub_10001D624();

        sub_100004DE4();
      }

      else
      {
        sub_1000FD938();
      }

      sub_1000FC404(v20 + 208, &qword_10019BC00);
      sub_1000FD150();
      sub_1000FD554();
      sub_1000FD574();

      sub_1000FD07C();
      sub_1000FD440();

      v78(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12);
    }

    return;
  }

  v45 = *(v20 + 576) + 1;
  *(v20 + 584) = v25;
  sub_1000FD9D0(v45);
  if (v47)
  {
    __break(1u);
  }

  else
  {
    sub_1000FD708(v46);

    v48 = swift_task_alloc();
    *(v20 + 608) = v48;
    *v48 = v20;
    sub_10001287C();
    sub_100091D5C();
    sub_1000FD440();

    sub_1000D17D8(v49, v50);
  }
}

uint64_t sub_1000CEBF8()
{
  sub_1000070C8();
  sub_1000FD774();
  sub_10000788C();
  *v4 = v3;
  v5 = *(v1 + 672);
  *v4 = *v2;
  *(v3 + 680) = v0;

  sub_1000FD738();
  v7 = *(v6 + 464);
  if (v0)
  {
    v8 = sub_1000CF514;
  }

  else
  {
    v8 = sub_1000CED10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1000CED10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000FDBA0();
  a19 = v24;
  a20 = v25;
  sub_1000FCEF0();
  a18 = v20;
  v26 = *(v20 + 648);
  sub_100013334(v20 + 248, v20 + 288);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v20 + 648);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v81 = v28[2];
    v82 = sub_100004E28();
    sub_1000702B8(v82, v83, v84, v28);
    v28 = v85;
  }

  v30 = v28[2];
  v29 = v28[3];
  if (v30 >= v29 >> 1)
  {
    sub_1000702B8(v29 > 1, v30 + 1, 1, v28);
    v28 = v86;
  }

  sub_1000FD994();
  sub_10000518C();
  v32 = *(v31 + 64) + 15;
  swift_task_alloc();
  sub_10000D5B0();
  v33();
  *(v20 + 352) = type metadata accessor for LSLinkBundleRecord(0);
  *(v20 + 360) = &off_10018F930;
  sub_100013234((v20 + 328));
  sub_100013CEC();
  sub_1000F9F3C(v21, v34);
  result = sub_1000FD6C4();
  if (v22 == v23)
  {
    if ((*(v20 + 61) & 1) != 0 || (sub_1000FD9FC(), !v38 & v37))
    {
      sub_1000FD050();
    }

    else
    {
      v55 = *(v36 + 24);
      sub_1000FD9E4(v36);
      if ((v56 & 1) != 0 || (*(v30 + 145) & 1) == 0)
      {
        v57 = sub_100016D84();
        sub_1000098F0(v57, v58);
        v59 = sub_100016D84();
        sub_1000D2104(v59, v60);
        v61 = sub_100016D84();
        sub_10000D4DC(v61, v62);
      }
    }

    v39 = *(v20 + 552);
    v41 = *(v20 + 456);
    v40 = *(v20 + 464);

    sub_1000F9ED4(v41, v20 + 160);

    v42 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    v43 = sub_100013EB0();
    sub_1000F9F0C(v43);
    if (sub_100012824())
    {
      v44 = *(v20 + 456);
      v45 = swift_slowAlloc();
      sub_100003BFC();
      swift_slowAlloc();
      sub_1000FDB18();
      sub_1000FD974(4.8151e-34);
      if (!v38 & v37)
      {
        v65 = 0xE400000000000000;
        v63 = sub_1000FD5AC();
      }

      else
      {
        v63 = sub_1000FD848(v46, v47);
        v65 = v64;
      }

      v66 = *(v20 + 464);
      sub_100004C50(v63, v65, &a9);

      sub_100027044();
      *(v45 + 14) = v65;

      sub_100012858();
      _os_log_impl(v67, v68, v69, v70, v71, 0x12u);
      sub_1000034F8(v21);
      sub_100004DE4();

      sub_10001D624();
    }

    else
    {
      sub_1000FD938();
    }

    sub_1000FC404(v20 + 208, &qword_10019BC00);
    v72 = *(v20 + 544);
    sub_100013DAC();
    sub_1000FD260();
    sub_1000FD280();

    sub_1000FD07C();
    sub_1000FD244();

    return v76(v73, v74, v75, v76, v77, v78, v79, v80, a9, a10, a11, a12);
  }

  v48 = *(v20 + 656);
  *(v20 + 648) = v28;
  if (v48 >= *(v20 + 640))
  {
    __break(1u);
    goto LABEL_28;
  }

  *(v20 + 656) = v48 + 1;
  if (__OFADD__(v48, 1))
  {
LABEL_28:
    __break(1u);
    return result;
  }

  sub_1000FD7C8(v48);
  sub_10001D3EC();
  swift_task_alloc();
  sub_1000103E4();
  *(v20 + 672) = v49;
  *v49 = v50;
  sub_10000789C();
  sub_1000FD244();

  return sub_1000CFBD4(v51, v52, v53);
}

void sub_1000CF06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100019AE0();
  a19 = v21;
  a20 = v22;
  sub_1000FCEF0();
  a18 = v20;
  v23 = *(v20 + 616);
  v24 = *(v20 + 600);
  v25 = *(v20 + 552);

  swift_errorRetain();
  v26 = Logger.logObject.getter();
  static os_log_type_t.fault.getter();

  if (sub_1000286A4())
  {
    v27 = *(v20 + 616);
    v28 = *(v20 + 600);
    v29 = *(v20 + 592);
    v30 = *(v20 + 528);
    v31 = sub_1000063EC();
    sub_100010D80();
    swift_slowAlloc();
    sub_1000FDB18();
    *v31 = 136446466;
    v32 = sub_10001561C();
    v35 = sub_100004C50(v32, v33, v34);

    *(v31 + 4) = v35;
    sub_1000FD0F0();
    sub_1000C9340();
    v36 = sub_100027F58();
    v38 = v37;
    sub_100002CF0();
    sub_100027240(v30, v39);
    sub_100004C50(v36, v38, &a9);
    sub_10001E0E8();

    *(v31 + 14) = v36;
    sub_100018D34(&_mh_execute_header, v40, v41, "Error unregistering %{public}s from the\nmetadata store: %{public}s");
    sub_10001D31C();
    sub_100004DE4();

    sub_10001D624();
  }

  else
  {
    v42 = *(v20 + 600);
  }

  v43 = *(v20 + 616);
  if (*(v20 + 57) == 1)
  {
    v44 = *(v20 + 584);
    v45 = *(v20 + 560);
    v46 = *(v20 + 464);

    *(v46 + 144) = 1;
    swift_willThrow();
    v47 = *(v20 + 616);
    v48 = *(v20 + 544);
    sub_100013DAC();
    sub_1000FD260();
    sub_1000FD280();

    sub_100003A00();
    sub_10000C08C();

    v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
  }

  else
  {
    v57 = *(v20 + 568);
    v58 = *(v20 + 576) + 1;
    v59 = *(v20 + 616);

    if (v58 == v57)
    {
      *(v20 + 624) = *(v20 + 584);
      v60 = *(v20 + 560);
      v61 = *(v20 + 464);

      if (*(v61 + 128))
      {
        sub_1000FD644();
        v43 = 0;
        v62();
      }

      else
      {
        sub_1000FD634();
      }

      v63 = *(*(v20 + 456) + 8);
      *(v20 + 632) = v63;
      v64 = *(v63 + 16);
      *(v20 + 640) = v64;
      if (v64)
      {
        *(v20 + 61) = 1;
        *(v20 + 648) = _swiftEmptyArrayStorage;
        *(v20 + 656) = 1;
        sub_100013334(v63 + 32, v20 + 248);
        sub_10001D3EC();
        swift_task_alloc();
        sub_1000103E4();
        *(v20 + 672) = v65;
        *v65 = v66;
        sub_10000789C(v65);
        sub_10000C08C();

        sub_1000CFBD4(v67, v68, v69);
      }

      else
      {
        sub_1000FD050();
        sub_1000FD810();
        sub_1000F9ED4(v43, v20 + 160);

        v78 = Logger.logObject.getter();
        static os_log_type_t.default.getter();
        v79 = sub_1000FD458();
        sub_1000F9F0C(v79);
        if (sub_1000103CC())
        {
          v80 = sub_1000FD860();
          sub_100003BFC();
          v81 = swift_slowAlloc();
          a9 = v81;
          sub_1000FD318(4.8151e-34);
          if (!v84 & v73)
          {
            v87 = 0xE400000000000000;
            v85 = sub_1000FD5AC();
          }

          else
          {
            v85 = sub_1000FD848(v82, v83);
            v87 = v86;
          }

          v88 = *(v20 + 464);
          sub_100004C50(v85, v87, &a9);

          sub_1000FD2F4();
          *(v80 + 14) = v87;

          sub_1000117B8();
          _os_log_impl(v89, v90, v91, v92, v93, 0x12u);
          sub_1000034F8(v81);
          sub_10001D624();

          sub_100004DE4();
        }

        else
        {
          sub_1000FD938();
        }

        sub_1000FC404(v20 + 208, &qword_10019BC00);
        sub_1000FD150();
        sub_1000FD554();
        sub_1000FD574();

        sub_1000FD07C();
        sub_10000C08C();

        v97(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12);
      }
    }

    else
    {
      v71 = *(v20 + 576) + 1;
      *(v20 + 60) = 1;
      sub_1000FD9D0(v71);
      if (v73)
      {
        __break(1u);
      }

      else
      {
        sub_1000FD708(v72);

        v74 = swift_task_alloc();
        *(v20 + 608) = v74;
        *v74 = v20;
        sub_10001287C();
        sub_100091D5C();
        sub_10000C08C();

        sub_1000D17D8(v75, v76);
      }
    }
  }
}

uint64_t sub_1000CF514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100007858();
  a21 = v26;
  a22 = v27;
  sub_100012AA8();
  a20 = v22;
  v28 = *(v22 + 520);
  v29 = *(v22 + 504);
  *(v22 + 440) = *(v22 + 680);
  swift_errorRetain();
  sub_10002EB80(&unk_100198760, &qword_10014F3C0);
  if (swift_dynamicCast())
  {
    v30 = *(v22 + 504);
    sub_1000F9F3C(*(v22 + 520), *(v22 + 512));
    sub_10000D358();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v32 = *(v22 + 512);
    if (EnumCaseMultiPayload == 2)
    {
      *(v22 + 448) = *v32;
      if (swift_dynamicCast())
      {
        v33 = *(v22 + 416);
        v34 = *(v22 + 424);
        v35 = *(v22 + 432);

        if (v34 == 5)
        {
          v36 = *(v22 + 680);
          v37 = *(v22 + 664);

          v38 = v37 - 1;
          v39 = *(v22 + 440);

          goto LABEL_20;
        }
      }
    }

    else
    {
      sub_100027240(v32, type metadata accessor for Schema.RuntimeError);
    }
  }

  v40 = *(v22 + 680);
  v41 = *(v22 + 552);
  v42 = *(v22 + 440);

  sub_100013334(v22 + 248, v22 + 368);
  swift_errorRetain();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v43, v44))
  {
    v24 = *(v22 + 680);
    v45 = *(v22 + 528);
    v46 = sub_1000063EC();
    sub_100010D80();
    swift_slowAlloc();
    sub_1000FD2D0();
    *v46 = 136446466;
    v47 = *(v22 + 392);
    sub_1000034B4((v22 + 368), v47);
    sub_1000039EC();
    v49 = v48(v47);
    v25 = v50;
    sub_1000034F8((v22 + 368));
    v51 = sub_100004890();
    sub_100004C50(v51, v25, v52);
    sub_1000248A8();

    *(v46 + 4) = v49;
    *(v46 + 12) = 2082;
    sub_1000C9340();
    sub_100027F58();
    sub_1000FDB24();
    sub_100002CF0();
    sub_100027240(v45, v53);
    v54 = sub_100004890();
    sub_100004C50(v54, v24, v55);
    sub_100016628();

    *(v46 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v43, v44, "Error registering %{public}s in the metadata store: %{public}s", v46, 0x16u);
    sub_10001D31C();
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8((v22 + 368));
  }

  v56 = *(v22 + 680);
  if (*(v22 + 57) == 1)
  {
    v57 = *(v22 + 648);
    v58 = *(v22 + 624);
    v59 = *(v22 + 464);

    *(v59 + 144) = 1;
    swift_willThrow();
    sub_1000034F8((v22 + 248));
    sub_1000FC404(v22 + 208, &qword_10019BC00);
    v60 = *(v22 + 680);
    v61 = *(v22 + 544);
    sub_100013DAC();
    sub_1000FD260();
    sub_1000FD280();

    sub_100003A00();
    sub_10000783C();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
  }

  v71 = *(v22 + 656);
  v72 = *(v22 + 640);
  sub_1000034F8((v22 + 248));

  if (v71 == v72)
  {
    v73 = *(v22 + 648);
LABEL_32:
    sub_1000FD050();
    goto LABEL_33;
  }

  v74 = *(v22 + 656);
  v75 = *(v22 + 648);
  *(v22 + 61) = 1;
  while (1)
  {
    *(v22 + 648) = v75;
    if (v74 >= *(v22 + 640))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v129 = v75[2];
      v130 = sub_100004E28();
      sub_1000702B8(v130, v131, v132, v75);
      v75 = v133;
      goto LABEL_22;
    }

    *(v22 + 656) = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      goto LABEL_46;
    }

    sub_1000FD7C8(v74);
    v38 = 3;
LABEL_20:
    *(v22 + 664) = v38;
    if (v38)
    {
      v84 = *(*(v22 + 456) + 40);
      swift_task_alloc();
      sub_1000103E4();
      *(v22 + 672) = v85;
      *v85 = v86;
      sub_10000789C();
      sub_10000783C();

      return sub_1000CFBD4(v87, v88, v89);
    }

    v76 = *(v22 + 648);
    sub_100013334(v22 + 248, v22 + 288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = *(v22 + 648);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_22:
    v79 = v75[2];
    v78 = v75[3];
    if (v79 >= v78 >> 1)
    {
      sub_1000702B8(v78 > 1, v79 + 1, 1, v75);
      v75 = v134;
    }

    sub_1000FD994();
    sub_10000518C();
    v81 = *(v80 + 64) + 15;
    swift_task_alloc();
    sub_10000D5B0();
    v82();
    *(v22 + 352) = type metadata accessor for LSLinkBundleRecord(0);
    *(v22 + 360) = &off_10018F930;
    sub_100013234((v22 + 328));
    sub_100013CEC();
    sub_1000F9F3C(v23, v83);
    sub_1000FD6C4();
    if (v24 == v25)
    {
      break;
    }

    v74 = *(v22 + 656);
  }

  if (*(v22 + 61))
  {
    goto LABEL_32;
  }

  sub_1000FD9FC();
  if (!v93 & v92)
  {
    goto LABEL_32;
  }

  v121 = *(v91 + 24);
  sub_1000FD9E4(v91);
  if ((v122 & 1) != 0 || (*(v79 + 145) & 1) == 0)
  {
    v123 = sub_100016D84();
    sub_1000098F0(v123, v124);
    v125 = sub_100016D84();
    sub_1000D2104(v125, v126);
    v127 = sub_100016D84();
    sub_10000D4DC(v127, v128);
  }

LABEL_33:
  v94 = *(v22 + 552);
  v96 = *(v22 + 456);
  v95 = *(v22 + 464);

  sub_1000F9ED4(v96, v22 + 160);

  v97 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  v98 = sub_100013EB0();
  sub_1000F9F0C(v98);
  if (sub_100012824())
  {
    v99 = *(v22 + 456);
    v100 = swift_slowAlloc();
    sub_100003BFC();
    swift_slowAlloc();
    sub_1000FD2D0();
    sub_1000FD974(4.8151e-34);
    if (!v93 & v92)
    {
      v105 = 0xE400000000000000;
      v103 = sub_1000FD5AC();
    }

    else
    {
      v103 = sub_1000FD848(v101, v102);
      v105 = v104;
    }

    v106 = *(v22 + 464);
    sub_100004C50(v103, v105, &a10);

    sub_100027044();
    *(v100 + 14) = v105;

    sub_100012858();
    _os_log_impl(v107, v108, v109, v110, v111, 0x12u);
    sub_1000034F8(v23);
    sub_100004DE4();

    sub_10001D624();
  }

  else
  {
    sub_1000FD938();
  }

  sub_1000FC404(v22 + 208, &qword_10019BC00);
  v112 = *(v22 + 544);
  sub_100013DAC();
  sub_1000FD260();
  sub_1000FD280();

  sub_1000FD07C();
  sub_10000783C();

  return v116(v113, v114, v115, v116, v117, v118, v119, v120, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1000CFBD4(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 264) = a3;
  *(v4 + 272) = v3;
  *(v4 + 344) = a2;
  *(v4 + 256) = a1;
  v5 = type metadata accessor for OSSignpostID();
  *(v4 + 280) = v5;
  v6 = *(v5 - 8);
  *(v4 + 288) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 296) = swift_task_alloc();

  return _swift_task_switch(sub_1000CFC9C, v3, 0);
}

uint64_t sub_1000CFC9C()
{
  sub_1000070C8();
  sub_100009E90(*(v0 + 264), v0 + 136, &qword_10019BC00, &qword_100151630);
  if (*(v0 + 160))
  {
    sub_10001A798((v0 + 136), v0 + 96);
    sub_10001A798((v0 + 96), v0 + 56);
  }

  else
  {
    v1 = *(v0 + 272);
    v2 = sub_1000FC404(v0 + 136, &qword_10019BC00);
    v3 = *(v1 + 128);
    if (v3)
    {
      v4 = *(*(v0 + 272) + 136);
      v3(v2);
    }

    else
    {
      *(v0 + 88) = 0;
      *(v0 + 72) = 0u;
      *(v0 + 56) = 0u;
    }
  }

  v5 = *(v0 + 296);
  v6 = *(v0 + 72);
  *(v0 + 16) = *(v0 + 56);
  *(v0 + 32) = v6;
  *(v0 + 48) = *(v0 + 88);
  static OSSignpostID.exclusive.getter();
  v7 = sub_10001E094();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1000CFDAC()
{
  sub_1000036A0();
  v1 = v0[37];
  v2 = v0[34];
  sub_10001116C();
  sub_1000C43B0();
  v0[38] = v3;
  sub_1000FD780();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000CFE3C()
{
  sub_1000070C8();
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v1 + 176);
  *(v0 + 312) = v3;
  sub_100013334(v2, v0 + 176);
  sub_100009E90(v0 + 16, v0 + 216, &qword_10019BC00, &qword_100151630);
  v4 = swift_allocObject();
  *(v0 + 320) = v4;
  *(v4 + 16) = v1;
  sub_10001A798((v0 + 176), v4 + 24);
  v5 = *(v0 + 232);
  *(v4 + 64) = *(v0 + 216);
  *(v4 + 80) = v5;
  *(v4 + 96) = *(v0 + 248);
  v6 = v3;
  sub_1000FD610();

  v7 = swift_task_alloc();
  *(v0 + 328) = v7;
  *v7 = v0;
  v7[1] = sub_1000CFF78;
  v8 = *(v0 + 344);
  v9 = *(v0 + 256);

  return sub_10007B444();
}

uint64_t sub_1000CFF78()
{
  sub_1000070C8();
  sub_1000036D0();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 328);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v3 + 336) = v0;

  if (v0)
  {
    v10 = *(v3 + 312);
    v9 = *(v3 + 320);
    v11 = *(v3 + 272);

    v12 = sub_1000D01CC;
    v13 = v11;
  }

  else
  {
    v14 = *(v3 + 320);

    v12 = sub_1000D00A4;
    v13 = 0;
  }

  return _swift_task_switch(v12, v13, 0);
}

uint64_t sub_1000D00A4()
{
  sub_100027014();
  sub_1000036C4();
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[34];
  sub_100003854();
  sub_1000F1750();

  v6 = *(v4 + 8);
  v7 = sub_10000D358();
  v8(v7);
  sub_100012B94();
  sub_100091EFC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D0158()
{
  sub_1000036A0();
  v1 = *(v0 + 296);
  sub_1000FC404(v0 + 16, &unk_10019BC00);

  sub_100006734();

  return v2();
}

uint64_t sub_1000D01E4()
{
  sub_100027014();
  sub_1000036C4();
  v1 = v0[37];
  v2 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v5 = v0[34];
  sub_100003854();
  sub_1000F1750();

  v6 = *(v4 + 8);
  v7 = sub_10000D358();
  v8(v7);
  sub_100012B94();
  sub_100091EFC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D0298()
{
  sub_1000036A0();
  v1 = *(v0 + 296);
  sub_1000FC404(v0 + 16, &unk_10019BC00);

  sub_100003A00();
  v3 = *(v0 + 336);

  return v2();
}

uint64_t sub_1000D0310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[47] = a2;
  v3[48] = a3;
  v3[46] = a1;
  v5 = *(*(sub_10002EB80(&qword_1001990C0, &unk_10014E200) - 8) + 64) + 15;
  v3[49] = swift_task_alloc();

  return _swift_task_switch(sub_1000D03B4, a1, 0);
}

uint64_t sub_1000D03B4()
{
  sub_1000070C8();
  v1 = v0[47];
  v2 = v0[46];
  sub_1000CDDD0(v0[48], v0 + 2);
  v0[50] = 0;
  sub_100009990();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000D0468()
{
  sub_1000FDBF4();
  sub_100004884();
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v2 = v0[47];
  v3 = type metadata accessor for Logger();
  v0[51] = sub_10000347C(v3, qword_10019E100);
  sub_100013334(v2, (v0 + 23));
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    sub_10001153C();
    v6 = swift_slowAlloc();
    sub_100003BFC();
    swift_slowAlloc();
    sub_1000FD2D0();
    *v6 = 136446210;
    v7 = v0[26];
    sub_1000034B4(v0 + 23, v7);
    sub_1000039EC();
    v9 = v8(v7);
    v11 = v10;
    sub_1000034F8(v0 + 23);
    v12 = sub_100004890();
    sub_100004C50(v12, v11, v13);
    sub_10001E0E8();

    *(v6 + 4) = v9;
    sub_100012F74(&_mh_execute_header, v14, v5, "Registering %{public}s in the metadata store");
    sub_1000034F8(v1);
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {

    sub_1000034F8(v0 + 23);
  }

  v15 = v0[46];
  sub_1000FD7BC();
  sub_10001064C();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1000D05F8()
{
  sub_1000036A0();
  v1 = *(*(v0 + 368) + 176);
  *(v0 + 416) = v1;
  v2 = v1;
  v3 = sub_100010448();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000D0660()
{
  v1 = *(v0 + 416);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v4 = *(v0 + 376);
  v5 = v4[3];
  sub_1000034B4(v4, v5);
  sub_1000039EC();
  v7 = v6(v5);
  v9 = v8;
  v10 = v4[4];
  sub_1000034B4(v4, v4[3]);
  v11 = *(*(v10 + 8) + 16);
  v12 = sub_100016628();
  v13(v12);
  v14 = v4[4];
  sub_1000034B4(v4, v4[3]);
  v15 = *(*(v14 + 8) + 24);
  v16 = sub_100016628();
  v18 = v17(v16);
  v20 = v19;
  sub_1000034B4(v4, v4[3]);
  v21 = sub_100009A00();
  v22 = type metadata accessor for LSLinkBundleRecord(v21);
  v23 = *(v0 + 112);
  v24 = *(v0 + 40);
  v25 = *(v14 + *(v22 + 36));
  v26 = *(v0 + 48);
  v27 = *(v0 + 64);
  v28 = *(v0 + 72);
  *(v0 + 424) = v24;
  *(v0 + 432) = v28;
  sub_10007D2BC(v7, v9, v3, v18, v20, v25, v23, v24, v26, *(&v26 + 1), v27, v28, *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  *(v0 + 440) = v2;
  if (v2)
  {
    v29 = *(v0 + 416);
    v30 = *(v0 + 392);
    v31 = sub_1000106B8();
    sub_100009B18(v31, v32);

    sub_1000FC14C(v0 + 16);
    sub_1000FC404(v30, &qword_1001990C0);
    v33 = *(v0 + 392);

    sub_1000FCE6C();

    return v34();
  }

  else
  {
    v36 = *(v0 + 416);
    v37 = *(v0 + 392);
    v38 = *(v0 + 368);
    v39 = sub_1000106B8();
    sub_100009B18(v39, v40);

    sub_1000FC404(v37, &qword_1001990C0);

    return _swift_task_switch(sub_1000D08A8, v38, 0);
  }
}

uint64_t sub_1000D08A8()
{
  sub_1000036A0();
  *(v0 + 448) = *(*(v0 + 368) + 184);

  v1 = sub_100010448();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000D0910()
{
  sub_1000036A0();
  v1 = v0[46];
  v0[57] = [objc_opt_self() sharedVocabulary];
  v0[58] = sub_100027434();
  sub_1000FD780();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000D0998()
{
  sub_1000036A0();
  v1 = *(*(v0 + 368) + 176);
  *(v0 + 472) = v1;
  v2 = v1;
  v3 = sub_100010448();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000D0A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_1000FD50C();
  a19 = v21;
  a20 = v22;
  sub_1000FCEF0();
  a18 = v20;
  v23 = v20[59];
  v24 = v20[55];
  v25 = v20[47];
  v26 = v25[3];
  sub_1000034B4(v25, v26);
  sub_1000039EC();
  v28 = v27(v26);
  v20[60] = sub_100078CB8(v28, v29);
  if (v24)
  {
    v30 = v20[56];
    v31 = v20[57];

    v32 = v20[58];
    v33 = v20[59];
    v34 = v20[51];
    v35 = v20[47];

    sub_100013334(v35, (v20 + 28));
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = sub_1000063EC();
      sub_100010D80();
      swift_slowAlloc();
      sub_1000FD604();
      *v38 = 136446466;
      v40 = v20[31];
      v39 = v20[32];
      sub_1000034B4(v20 + 28, v40);
      sub_1000039EC();
      v41(v40);
      sub_1000FDB24();
      sub_1000034F8(v20 + 28);
      v42 = sub_100004890();
      sub_100004C50(v42, v40, v43);
      sub_100016628();

      *(v38 + 4) = v39;
      sub_1000FD0F0();
      v20[44] = v24;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      v44 = String.init<A>(describing:)();
      v46 = sub_100004C50(v44, v45, &a10);

      *(v38 + 14) = v46;
      sub_1000FCE9C();
      sub_10001E150();

      sub_10001D624();
    }

    else
    {

      sub_1000034F8(v20 + 28);
    }

    v20[67] = 0;
    sub_100011A24();
  }

  else
  {
    v48 = v20[59];
    v49 = v20[54];
    v50 = v20[46];
    v51 = v20[47];

    v52 = swift_task_alloc();
    *(v52 + 16) = v51;

    sub_1000C3574(sub_1000FC1A0, v52, v49);
    v20[61] = v53;
    v20[62] = 0;
  }

  sub_1000FD440();

  return _swift_task_switch(v54, v55, v56);
}

uint64_t sub_1000D0C88()
{
  sub_1000036A0();
  v1 = *(*(v0 + 368) + 176);
  *(v0 + 504) = v1;
  v2 = v1;
  v3 = sub_100010448();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000D0CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_1000FD50C();
  a19 = v21;
  a20 = v22;
  sub_1000FCEF0();
  a18 = v20;
  v23 = v20[62];
  v24 = v20[63];
  v25 = v20[47];
  v26 = v25[3];
  sub_1000034B4(v25, v26);
  sub_1000039EC();
  v28 = v27(v26);
  v20[64] = sub_10007AB80(v28, v29);
  if (v23)
  {
    v31 = v20[60];
    v30 = v20[61];
    v32 = v20[56];
    v33 = v20[57];

    v34 = v20[63];
    v35 = v20[58];
    v36 = v20[51];
    v37 = v20[47];

    sub_100013334(v37, (v20 + 28));
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = sub_1000063EC();
      sub_100010D80();
      swift_slowAlloc();
      sub_1000FD604();
      *v40 = 136446466;
      v42 = v20[31];
      v41 = v20[32];
      sub_1000034B4(v20 + 28, v42);
      sub_1000039EC();
      v43(v42);
      sub_1000FDB24();
      sub_1000034F8(v20 + 28);
      v44 = sub_100004890();
      sub_100004C50(v44, v42, v45);
      sub_100016628();

      *(v40 + 4) = v41;
      sub_1000FD0F0();
      v20[44] = v23;
      swift_errorRetain();
      sub_10002EB80(&unk_100198760, &qword_10014F3C0);
      v46 = String.init<A>(describing:)();
      v48 = sub_100004C50(v46, v47, &a10);

      *(v40 + 14) = v48;
      sub_1000FCE9C();
      sub_10001E150();

      sub_10001D624();
    }

    else
    {

      sub_1000034F8(v20 + 28);
    }

    v20[67] = 0;
    sub_100011A24();
    sub_1000FD7BC();
    sub_1000FD440();

    return _swift_task_switch(v69, v70, v71);
  }

  else
  {
    v50 = v20[63];

    v51 = swift_task_alloc();
    v20[65] = v51;
    *v51 = v20;
    v51[1] = sub_1000D0FA4;
    v53 = v20[60];
    v52 = v20[61];
    v54 = v20[57];
    v55 = v20[58];
    v56 = v20[56];
    v57 = v20[53];
    v58 = v20[47];
    sub_1000FD440();

    return sub_100027A3C(v59, v60, v61, v62, v63, v64, v65, v66);
  }
}

uint64_t sub_1000D0FA4()
{
  sub_100027014();
  sub_1000036C4();
  sub_1000FD774();
  sub_10000788C();
  *v4 = v3;
  v5 = v1[65];
  *v4 = *v2;
  *(v3 + 528) = v0;

  sub_1000FD738();
  v7 = *(v6 + 512);
  v8 = v1[61];
  v9 = v1[60];

  sub_100011B30();
  sub_100091EFC();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_1000D10F4()
{
  sub_1000036A0();
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[56];

  v0[67] = v0[66];
  sub_100011A24();
  v4 = sub_1000FD7BC();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000D1160()
{
  sub_1000036A0();
  *(v0 + 544) = *(*(v0 + 368) + 192);

  v1 = sub_100010448();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000D11C8()
{
  sub_1000070C8();
  v1 = v0[68];
  v2 = v0[47];
  v3 = v2[3];
  sub_1000034B4(v2, v3);
  sub_1000039EC();
  v0[69] = v4(v3);
  v0[70] = v5;
  sub_10000D6D8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D1258()
{
  sub_1000070C8();
  v1 = v0[68];
  v2 = v0[67];
  sub_10006BCE0(v0[69], v0[70], 0x53555F6E65, 0xE500000000000000);
  v0[71] = v2;
  v3 = v0[70];
  v4 = v0[68];
  if (v2)
  {
    v5 = v0[70];
  }

  else
  {
  }

  sub_100009990();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D1320()
{
  sub_1000036A0();
  sub_1000FC14C(v0 + 16);
  v1 = *(v0 + 392);

  sub_100006734();

  return v2();
}

uint64_t sub_1000D1380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_100007858();
  a21 = v23;
  a22 = v24;
  sub_100012AA8();
  a20 = v22;
  v25 = v22[66];
  v26 = v22[51];
  sub_100013334(v22[47], (v22 + 38));
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = v22[66];
    v30 = v22[57];
    v50 = v22[58];
    v31 = v22[56];
    v32 = sub_1000063EC();
    sub_100010D80();
    a11 = swift_slowAlloc();
    *v32 = 136446466;
    v33 = v22[41];
    sub_1000034B4(v22 + 38, v33);
    sub_1000039EC();
    v35 = v34(v33);
    v37 = v36;
    sub_1000034F8(v22 + 38);
    sub_100004C50(v35, v37, &a11);
    sub_1000099C0();

    *(v32 + 4) = v35;
    *(v32 + 12) = 2082;
    v22[45] = v29;
    swift_errorRetain();
    sub_10002EB80(&unk_100198760, &qword_10014F3C0);
    v38 = String.init<A>(describing:)();
    v40 = sub_100004C50(v38, v39, &a11);

    *(v32 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v27, v28, "AutoShortcutsDonator failed to donate App Shortcuts to Siri Vocabulary and server for %{public}s with: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    sub_100004DE4();

    sub_100004DE4();
  }

  else
  {
    v41 = v22[66];
    v43 = v22[57];
    v42 = v22[58];
    v44 = v22[56];

    sub_1000034F8(v22 + 38);
  }

  v22[67] = 0;
  sub_100011A24();
  sub_1000FD7BC();
  sub_10000783C();

  return _swift_task_switch(v45, v46, v47);
}

uint64_t sub_1000D1598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18)
{
  sub_100013D88();
  a17 = v19;
  a18 = v20;
  sub_100004884();
  a16 = v18;
  v21 = v18[71];
  v22 = v18[51];
  sub_100013334(v18[47], (v18 + 33));
  swift_errorRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = v18[71];
    v26 = sub_1000063EC();
    sub_100010D80();
    swift_slowAlloc();
    sub_1000FCF0C();
    *v26 = 136446466;
    v28 = v18[36];
    v27 = v18[37];
    sub_1000034B4(v18 + 33, v28);
    sub_1000039EC();
    v29(v28);
    sub_1000FDB24();
    sub_1000034F8(v18 + 33);
    sub_100004C50(v27, v28, &a9);
    sub_100016628();

    *(v26 + 4) = v27;
    sub_1000FD0F0();
    v18[43] = v25;
    swift_errorRetain();
    sub_10002EB80(&unk_100198760, &qword_10014F3C0);
    v30 = String.init<A>(describing:)();
    v32 = sub_100004C50(v30, v31, &a9);

    *(v26 + 14) = v32;
    sub_1000FCE9C();
    sub_10001E150();

    sub_10001D624();

    sub_1000FC14C((v18 + 2));
  }

  else
  {
    v34 = v18[71];

    sub_1000FC14C((v18 + 2));
    sub_1000034F8(v18 + 33);
  }

  v35 = v18[49];

  sub_100006734();
  sub_100091FC0();

  return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10);
}

id sub_1000D1760@<X0>(void **a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v6 = a2[3];
  v5 = a2[4];
  sub_1000034B4(a2, v6);
  *a3 = (*(*(v5 + 8) + 8))(v6);
  a3[1] = v7;
  a3[2] = v4;
  return v4;
}

uint64_t sub_1000D17D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for OSSignpostID();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1000D189C, v2, 0);
}

uint64_t sub_1000D189C()
{
  sub_1000036A0();
  v1 = *(v0 + 56);
  static OSSignpostID.exclusive.getter();
  v2 = sub_10001E094();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000D18F8()
{
  sub_1000036A0();
  v1 = v0[7];
  sub_10001116C();
  sub_1000C43B0();
  v0[8] = v2;
  v3 = swift_task_alloc();
  v4 = sub_100016D40(v3);
  *v4 = v5;
  v4[1] = sub_1000D19B8;
  v6 = v0[3];
  v7 = v0[4];
  v8 = v0[2];

  return sub_1000D1CCC(v4, v8, v6, v7);
}

uint64_t sub_1000D19B8()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 72);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 80) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D1AB0()
{
  sub_100027014();
  sub_1000036C4();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  sub_100003854();
  sub_1000F1750();

  v6 = *(v4 + 8);
  v7 = sub_10000D358();
  v8(v7);
  sub_100012B94();
  sub_100091EFC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D1B64()
{
  sub_1000036A0();
  v1 = *(v0 + 56);

  sub_100006734();

  return v2();
}

uint64_t sub_1000D1BBC()
{
  sub_100027014();
  sub_1000036C4();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  sub_100003854();
  sub_1000F1750();

  v6 = *(v4 + 8);
  v7 = sub_10000D358();
  v8(v7);
  sub_100012B94();
  sub_100091EFC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D1C70()
{
  sub_1000036A0();
  v1 = *(v0 + 56);

  sub_100003A00();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_1000D1CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[8] = a2;
  return _swift_task_switch(sub_1000D1CF0, a4, 0);
}

uint64_t sub_1000D1CF0()
{
  sub_1000FDBF4();
  sub_100004884();
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v2 = v0[9];
  v3 = type metadata accessor for Logger();
  sub_100011AB8(v3, qword_10019E100);

  v4 = Logger.logObject.getter();
  static os_log_type_t.default.getter();
  sub_1000FD458();

  if (sub_1000103CC())
  {
    v6 = v0[8];
    v5 = v0[9];
    sub_10001153C();
    v7 = swift_slowAlloc();
    sub_100003BFC();
    swift_slowAlloc();
    sub_1000FCF0C();
    *v7 = 136446210;
    v8 = sub_100016D84();
    *(v7 + 4) = sub_100004C50(v8, v9, v10);
    sub_1000129B0();
    sub_1000FD8CC(v11, v12, v13, v14);
    sub_1000034F8(v1);
    sub_10001E150();

    sub_100004DE4();
  }

  v15 = v0[9];
  v16 = v0[8];
  v17 = *(v0[10] + 176);
  sub_1000077D8();
  sub_10007F8D0();
  v0[11] = 0;

  v0[12] = *(v0[10] + 184);
  objc_opt_self();
  sub_100018D28();

  v0[13] = [v16 sharedVocabulary];
  v0[14] = sub_100027434();
  sub_10001E094();
  sub_10001064C();

  return _swift_task_switch(v18, v19, v20);
}

uint64_t sub_1000D1EC0()
{
  sub_1000070C8();
  v1 = *(v0 + 88);
  sub_10002FA78(*(v0 + 64), *(v0 + 72), 0x2EEAu, *(v0 + 96), *(v0 + 104), *(v0 + 112));
  if (v1)
  {
    *(v0 + 120) = v1;
    v2 = *(v0 + 80);
    v3 = sub_1000D2098;
  }

  else
  {
    sub_10002FA78(*(v0 + 64), *(v0 + 72), 0x1E8Eu, *(v0 + 96), *(v0 + 104), *(v0 + 112));
    v4 = *(v0 + 104);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    v7 = *(v0 + 72);
    v8 = *(v0 + 80);
    v9 = *(v0 + 64);
    sub_10002FCF8();
    v3 = sub_1000D1F84;
    v2 = v8;
  }

  return _swift_task_switch(v3, v2, 0);
}

uint64_t sub_1000D1F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  if (qword_100198160 != -1)
  {
    swift_once();
  }

  v12 = v10[13];
  v11 = v10[14];
  v13 = v10[12];
  v15 = v10[8];
  v14 = v10[9];
  sub_10002EB80(&unk_100198B60, &qword_10014E3C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10014CE90;
  *(inited + 32) = v15;
  *(inited + 40) = v14;

  sub_1000B53A4(inited);
  sub_1000356F4(v17);

  sub_100006734();
  sub_100091FC0();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1000D2098()
{
  sub_1000036A0();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];

  v4 = v0[15];
  sub_100003A00();

  return v5();
}

uint64_t sub_1000D2104(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static OSSignpostID.exclusive.getter();
  sub_1000C43B0();
  sub_1000D22D4(v3, a1, a2);
  sub_1000F1750();

  return (*(v7 + 8))(v10, v6);
}

void sub_1000D22D4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for RegistryError(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 176);
  sub_10007B13C();
  if (v3)
  {

    if (qword_100198350 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000347C(v12, qword_10019E100);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136446210;
      sub_1000C9340();
      v17 = sub_100027F58();
      v19 = v18;
      sub_100027240(v10, type metadata accessor for RegistryError);
      v20 = sub_100004C50(v17, v19, &v30);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error updating the metadata store last seen version: %{public}s", v15, 0xCu);
      sub_1000034F8(v16);
    }

    else
    {
    }
  }

  else
  {

    *(a1 + 144) = 0;
    if (qword_100198350 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000347C(v21, qword_10019E100);
    sub_1000098F0(a2, a3);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();
    sub_100009B18(a2, a3);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v30 = v25;
      *v24 = 136315138;
      v26 = sub_1000CCB28(a2, a3);
      v28 = sub_100004C50(v26, v27, &v30);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Updated metadata store last seen version to: %s", v24, 0xCu);
      sub_1000034F8(v25);
    }
  }
}

uint64_t sub_1000D264C()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 136);
  sub_10002CCE0(*(v0 + 128));
  v3 = *(v0 + 152);

  v4 = *(v0 + 160);

  v5 = *(v0 + 168);

  v6 = *(v0 + 184);

  v7 = *(v0 + 192);

  sub_1000FC404(v0 + 208, &unk_10019BC10);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1000D26C4()
{
  v0 = sub_1000D264C();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_1000D2710()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019E118 = result;
  unk_10019E120 = v1;
  return result;
}

uint64_t sub_1000D2740()
{
  v0 = sub_1000FD1C4();
  v1 = sub_10000482C(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_100002958();
  v6 = v5 - v4;
  sub_100008094();
  v7 = sub_1000066C0();
  sub_100027104(v7, v8);
  sub_10000D358();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 9002;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_100002CF0();
      sub_100027240(v6, v13);
      result = 9003;
      break;
    case 2:
      v14 = type metadata accessor for UUID();
      sub_10000482C(v14);
      (*(v15 + 8))(v6);
      result = 9005;
      break;
    case 3:
      sub_100002CF0();
      sub_100027240(v6, v12);
      result = 9000;
      break;
    case 4:
      return result;
    case 5:
      result = 9008;
      break;
    case 6:
      result = 9007;
      break;
    case 7:
      result = 9011;
      break;
    default:
      sub_100002CF0();
      sub_100027240(v6, v11);
      result = 9001;
      break;
  }

  return result;
}

void sub_1000D2868()
{
  sub_100006A04();
  v3 = type metadata accessor for RegistryError(0);
  v4 = sub_10000482C(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100002720();
  Dictionary.init(dictionaryLiteral:)();
  v7 = sub_100027F58();
  v9 = v8;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000133B8();
  v20 = &type metadata for String;
  *&v19 = v7;
  *(&v19 + 1) = v9;
  sub_1000398F4(&v19, v18);
  swift_isUniquelyReferenced_nonNull_native();
  sub_100068968(v18, v1, v2);

  sub_100008094();
  v10 = sub_100016D84();
  sub_100027104(v10, v11);
  sub_1000064C8();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    *&v19 = *v0;
    sub_10002EB80(&unk_100198760, &qword_10014F3C0);
    v12 = sub_100003D44(0, &qword_10019B400, NSError_ptr);
    if (swift_dynamicCast())
    {
      v13 = *&v18[0];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;
      v20 = v12;
      *&v19 = v13;
      sub_1000398F4(&v19, v18);
      swift_isUniquelyReferenced_nonNull_native();
      sub_100068968(v18, v14, v16);
    }
  }

  else
  {
    sub_100002CF0();
    sub_100027240(v0, v17);
  }

  sub_1000069EC();
}

uint64_t sub_1000D2A54()
{
  if (qword_100198358 != -1)
  {
    swift_once();
  }

  v0 = qword_10019E118;

  return v0;
}

uint64_t sub_1000D2AC4(uint64_t a1)
{
  v2 = sub_1000098AC(&unk_10019BE70);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000D2B30(uint64_t a1)
{
  v2 = sub_1000098AC(&unk_10019BE70);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000D2B9C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_10019E128 = result;
  unk_10019E130 = v1;
  return result;
}

uint64_t sub_1000D2BCC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = sub_10002EB80(&qword_100198C20, &qword_10014D090);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v26 - v11;
  if (Selector.description.getter() == a1 && v13 == a2)
  {
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v15 & 1) == 0)
    {
      v17 = a5;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v17;
        *v21 = v17;
        v22 = v17;
        _os_log_impl(&_mh_execute_header, v18, v19, "Connection from %@ triggering audit", v20, 0xCu);
        sub_1000FC404(v21, &unk_10019A260);
      }

      v23 = type metadata accessor for TaskPriority();
      sub_1000075C4(v12, 1, 1, v23);
      v24 = swift_allocObject();
      v24[2] = 0;
      v24[3] = 0;
      v24[4] = a3;
      v25 = a3;
      sub_10003A6C0(0, 0, v12, &unk_100150FA0, v24);
    }
  }

  return result;
}

uint64_t sub_1000D2E08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BFAC;

  return sub_1000CA648();
}

uint64_t sub_1000D2E98()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D2F98()
{
  sub_1000036A0();
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 40), 0);
  sub_100003A00();

  return v2();
}

uint64_t sub_1000D3010()
{
  sub_1000036A0();
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = v1;
  sub_1000FD548([v2 currentConnection]);
  v4 = swift_task_alloc();
  v5 = sub_1000FD2AC(v4);
  *v5 = v6;
  v5[1] = sub_1000C4BC0;
  v7 = *(v0 + 16);
  v8 = sub_10000687C();

  return sub_1000D84A0(v8, v9, v10, v11, v12);
}

uint64_t sub_1000D30CC()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D3420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = type metadata accessor for RegistryError(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D34D8, 0, 0);
}

uint64_t sub_1000D37D8()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D3B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v13;
  v8[11] = v14;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = type metadata accessor for RegistryError(0);
  v8[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000D3BD8, 0, 0);
}

uint64_t sub_1000D3F08()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D4278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for RegistryError(0);
  v7[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000D4324, 0, 0);
}

uint64_t sub_1000D4630()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D4984()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D4CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for RegistryError(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000D4D80, 0, 0);
}

uint64_t sub_1000D5074()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D53B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for RegistryError(0);
  v7[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000D545C, 0, 0);
}

uint64_t sub_1000D545C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v19 = v16[2];
  if (v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v20 = v19;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      sub_1000FD2C4(v16[5]);
      if (v14)
      {
        v21 = async function pointer to Task<>.value.getter[1];

        v22 = swift_task_alloc();
        v23 = sub_10001664C(v22);
        *v23 = v24;
        v23[1] = sub_1000D5774;
        sub_10001278C();
        sub_10000783C();

        return Task<>.value.getter(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  v33 = v16[7];
  sub_1000FD0BC(v16[6]);
  sub_1000FD898(v34);
  v35 = v15;
  sub_1000112C8();
  sub_1000A7558();
  sub_100028664();
  if (v17)
  {
    sub_1000FD908();
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v36 = sub_1000FD398();
    v37 = sub_10000347C(v36, qword_10019E100);
    sub_100008094();
    v38 = sub_10001317C();
    sub_100027104(v38, v39);

    v40 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000FD920();
    v41 = sub_10001D5C8();
    v42 = v16[10];
    if (v41)
    {
      v43 = sub_1000FD368();
      sub_100010D80();
      swift_slowAlloc();
      sub_1000FD53C();
      v45 = sub_1000FCF70(4.8752e-34, v44);
      sub_1000FD34C(v45);
      sub_1000FD408();
      sub_100002CF0();
      sub_100027240(v42, v46);
      v47 = sub_100012014();
      sub_100004C50(v47, v48, v49);
      sub_1000099C0();

      *(v43 + 14) = v42;
      sub_1000FCF90(&_mh_execute_header, v50, v51, "%{public}s: %{public}s");
      sub_100028688();
      sub_100004DE4();

      sub_10001E150();
    }

    else
    {

      sub_100002CF0();
      sub_100027240(v42, v60);
    }

    sub_1000294C0();
    sub_100007BEC();
    sub_1000098AC(v61);
    sub_1000105E8();
    sub_100008094();
    sub_100027104(v37, v62);
    swift_willThrow();

    sub_100002CF0();
    sub_100027240(v37, v63);

    sub_1000188F8();
    sub_10000783C();

    return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000FD3E0();

    sub_1000088B0();
    sub_10000783C();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000D5774()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D5874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();

  v18 = *(v15 + 56);
  sub_1000FD0BC(*(v15 + 48));
  sub_1000FD898(v19);
  v20 = v14;
  sub_1000112C8();
  sub_1000A7558();
  sub_100028664();
  if (v16)
  {
    sub_1000FD908();
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v21 = sub_1000FD398();
    v22 = sub_10000347C(v21, qword_10019E100);
    sub_100008094();
    v23 = sub_10001317C();
    sub_100027104(v23, v24);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000FD920();
    v26 = sub_10001D5C8();
    v27 = *(v15 + 80);
    if (v26)
    {
      v28 = sub_1000FD368();
      sub_100010D80();
      swift_slowAlloc();
      sub_1000FD53C();
      v30 = sub_1000FCF70(4.8752e-34, v29);
      sub_1000FD34C(v30);
      sub_1000FD408();
      sub_100002CF0();
      sub_100027240(v27, v31);
      v32 = sub_100012014();
      sub_100004C50(v32, v33, v34);
      sub_1000099C0();

      *(v28 + 14) = v27;
      sub_1000FCF90(&_mh_execute_header, v35, v36, "%{public}s: %{public}s");
      sub_100028688();
      sub_100004DE4();

      sub_10001E150();
    }

    else
    {

      sub_100002CF0();
      sub_100027240(v27, v46);
    }

    sub_1000294C0();
    sub_100007BEC();
    sub_1000098AC(v47);
    sub_1000105E8();
    sub_100008094();
    sub_100027104(v22, v48);
    swift_willThrow();

    sub_100002CF0();
    sub_100027240(v22, v49);

    sub_1000188F8();
    sub_10000783C();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000FD3E0();

    sub_1000088B0();
    sub_10000783C();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000D5AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for RegistryError(0);
  v7[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000D5B80, 0, 0);
}

uint64_t sub_1000D5B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v19 = v16[2];
  if (v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v20 = v19;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      sub_1000FD2C4(v16[5]);
      if (v14)
      {
        v21 = async function pointer to Task<>.value.getter[1];

        v22 = swift_task_alloc();
        v23 = sub_10001664C(v22);
        *v23 = v24;
        v23[1] = sub_1000D5E98;
        sub_10001278C();
        sub_10000783C();

        return Task<>.value.getter(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  v33 = v16[7];
  sub_1000FD0BC(v16[6]);
  sub_1000FD898(v34);
  v35 = v15;
  sub_1000112C8();
  sub_1000A75F8();
  sub_100028664();
  if (v17)
  {
    sub_1000FD908();
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v36 = sub_1000FD398();
    v37 = sub_10000347C(v36, qword_10019E100);
    sub_100008094();
    v38 = sub_10001317C();
    sub_100027104(v38, v39);

    v40 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000FD920();
    v41 = sub_10001D5C8();
    v42 = v16[10];
    if (v41)
    {
      v43 = sub_1000FD368();
      sub_100010D80();
      swift_slowAlloc();
      sub_1000FD53C();
      v45 = sub_1000FCF70(4.8752e-34, v44);
      sub_1000FD34C(v45);
      sub_1000FD408();
      sub_100002CF0();
      sub_100027240(v42, v46);
      v47 = sub_100012014();
      sub_100004C50(v47, v48, v49);
      sub_1000099C0();

      *(v43 + 14) = v42;
      sub_1000FCF90(&_mh_execute_header, v50, v51, "%{public}s: %{public}s");
      sub_100028688();
      sub_100004DE4();

      sub_10001E150();
    }

    else
    {

      sub_100002CF0();
      sub_100027240(v42, v60);
    }

    sub_1000294C0();
    sub_100007BEC();
    sub_1000098AC(v61);
    sub_1000105E8();
    sub_100008094();
    sub_100027104(v37, v62);
    swift_willThrow();

    sub_100002CF0();
    sub_100027240(v37, v63);

    sub_1000188F8();
    sub_10000783C();

    return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000FD3E0();

    sub_1000088B0();
    sub_10000783C();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000D5E98()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D5F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();

  v18 = *(v15 + 56);
  sub_1000FD0BC(*(v15 + 48));
  sub_1000FD898(v19);
  v20 = v14;
  sub_1000112C8();
  sub_1000A75F8();
  sub_100028664();
  if (v16)
  {
    sub_1000FD908();
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v21 = sub_1000FD398();
    v22 = sub_10000347C(v21, qword_10019E100);
    sub_100008094();
    v23 = sub_10001317C();
    sub_100027104(v23, v24);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000FD920();
    v26 = sub_10001D5C8();
    v27 = *(v15 + 80);
    if (v26)
    {
      v28 = sub_1000FD368();
      sub_100010D80();
      swift_slowAlloc();
      sub_1000FD53C();
      v30 = sub_1000FCF70(4.8752e-34, v29);
      sub_1000FD34C(v30);
      sub_1000FD408();
      sub_100002CF0();
      sub_100027240(v27, v31);
      v32 = sub_100012014();
      sub_100004C50(v32, v33, v34);
      sub_1000099C0();

      *(v28 + 14) = v27;
      sub_1000FCF90(&_mh_execute_header, v35, v36, "%{public}s: %{public}s");
      sub_100028688();
      sub_100004DE4();

      sub_10001E150();
    }

    else
    {

      sub_100002CF0();
      sub_100027240(v27, v46);
    }

    sub_1000294C0();
    sub_100007BEC();
    sub_1000098AC(v47);
    sub_1000105E8();
    sub_100008094();
    sub_100027104(v22, v48);
    swift_willThrow();

    sub_100002CF0();
    sub_100027240(v22, v49);

    sub_1000188F8();
    sub_10000783C();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000FD3E0();

    sub_1000088B0();
    sub_10000783C();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000D61F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v13;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  v8[2] = a2;
  v8[3] = a3;
  v9 = type metadata accessor for RegistryError(0);
  v8[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000D62AC, 0, 0);
}

uint64_t sub_1000D65B0()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D68FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 136) = a8;
  *(v8 + 64) = a7;
  *(v8 + 72) = v13;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = type metadata accessor for RegistryError(0);
  *(v8 + 80) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 88) = swift_task_alloc();
  *(v8 + 96) = swift_task_alloc();

  return _swift_task_switch(sub_1000D69B4, 0, 0);
}

uint64_t sub_1000D69B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000070C8();
  v16 = *(v15 + 24);
  if (v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v17 = v16;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      sub_1000FD5D0(*(v15 + 48));
      if (v14)
      {
        v18 = async function pointer to Task<>.value.getter[1];

        v19 = swift_task_alloc();
        v20 = sub_1000FD2B8(v19);
        *v20 = v21;
        v20[1] = sub_1000D6B0C;
        sub_10001278C();

        return Task<>.value.getter(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  swift_task_alloc();
  sub_1000103E4();
  *(v15 + 120) = v30;
  *v30 = v31;
  v30[1] = sub_1000D6CA4;
  v32 = *(v15 + 64);
  v33 = *(v15 + 72);
  v34 = *(v15 + 136);
  v35 = sub_1000186B8();

  return sub_1000ED3F8(v35, v36, v37, v38, v39);
}

uint64_t sub_1000D6B0C()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D6C0C()
{
  sub_1000036A0();

  swift_task_alloc();
  sub_1000103E4();
  *(v0 + 120) = v1;
  *v1 = v2;
  v1[1] = sub_1000D6CA4;
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 136);
  v6 = sub_1000186B8();

  return sub_1000ED3F8(v6, v7, v8, v9, v10);
}

uint64_t sub_1000D6CA4()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D6D9C()
{
  sub_1000070C8();
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];

  sub_100006734();

  return v5();
}

uint64_t sub_1000D6E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000FD50C();
  sub_1000FCEF0();
  v13 = v12[16];
  v14 = v12[12];
  sub_1000C9340();
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v15 = v12[11];
  v16 = v12[12];
  v17 = sub_1000FD6AC();
  sub_1000FD798(v17, qword_10019E100);
  sub_100008094();
  v18 = sub_1000066C0();
  sub_100027104(v18, v19);

  v20 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013EB0();

  v21 = sub_1000286A4();
  v22 = v12[11];
  if (v21)
  {
    v23 = sub_1000FD190();
    sub_100010D80();
    swift_slowAlloc();
    sub_1000FD2D0();
    v25 = sub_1000FCF18(4.8752e-34, v24);
    sub_1000FD0D4(v25);
    sub_1000FD2DC();
    sub_100002CF0();
    v27 = sub_100027240(v22, v26);
    sub_1000FD228(v27);
    sub_100016628();

    *(v23 + 14) = v22;
    sub_100018D34(&_mh_execute_header, v28, v29, "%{public}s: %{public}s");
    sub_10001D31C();
    sub_100004DE4();

    sub_10001D624();
  }

  else
  {

    sub_100002CF0();
    sub_100027240(v22, v30);
  }

  v31 = v12[16];
  v33 = v12[11];
  v32 = v12[12];
  v35 = v12[9];
  v34 = v12[10];
  v36 = v12[8];
  sub_100007BEC();
  sub_1000098AC(v37);
  sub_1000105E8();
  sub_100008094();
  sub_100027104(v32, v38);
  swift_willThrow();

  sub_100002CF0();
  sub_100027240(v32, v39);

  sub_1000188F8();
  sub_1000FD440();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_1000D6FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for RegistryError(0);
  v6[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000D70A0, 0, 0);
}

uint64_t sub_1000D70A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000070C8();
  v16 = v15[3];
  if (v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v17 = v16;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      sub_1000FDAD4(v15[6]);
      if (v14)
      {
        v18 = async function pointer to Task<>.value.getter[1];

        v19 = swift_task_alloc();
        v20 = sub_1000FD5C4(v19);
        *v20 = v21;
        v20[1] = sub_1000D71F0;
        sub_10001278C();

        return Task<>.value.getter(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  swift_task_alloc();
  sub_1000103E4();
  v15[13] = v30;
  *v30 = v31;
  v30[1] = sub_1000D7380;
  v32 = sub_1000186B8();

  return sub_1000EEF30(v32, v33);
}

uint64_t sub_1000D71F0()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D72F0()
{
  sub_1000036A0();

  swift_task_alloc();
  sub_1000103E4();
  *(v0 + 104) = v1;
  *v1 = v2;
  v1[1] = sub_1000D7380;
  v3 = sub_1000186B8();

  return sub_1000EEF30(v3, v4);
}

uint64_t sub_1000D7380()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 112) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D7478()
{
  sub_1000036A0();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  sub_100006734();

  return v3();
}

uint64_t sub_1000D74E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000FD50C();
  sub_1000FCEF0();
  v13 = v12[14];
  v14 = v12[10];
  sub_1000C9340();
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v15 = v12[9];
  v16 = v12[10];
  v17 = sub_1000FD6AC();
  sub_1000FD798(v17, qword_10019E100);
  sub_100008094();
  v18 = sub_1000066C0();
  sub_100027104(v18, v19);

  v20 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013EB0();

  v21 = sub_1000286A4();
  v22 = v12[9];
  if (v21)
  {
    v23 = sub_1000FD190();
    sub_100010D80();
    swift_slowAlloc();
    sub_1000FD2D0();
    v25 = sub_1000FCF18(4.8752e-34, v24);
    sub_1000FD0D4(v25);
    sub_1000FD2DC();
    sub_100002CF0();
    v27 = sub_100027240(v22, v26);
    sub_1000FD228(v27);
    sub_100016628();

    *(v23 + 14) = v22;
    sub_100018D34(&_mh_execute_header, v28, v29, "%{public}s: %{public}s");
    sub_10001D31C();
    sub_100004DE4();

    sub_10001D624();
  }

  else
  {

    sub_100002CF0();
    sub_100027240(v22, v30);
  }

  v31 = v12[14];
  v33 = v12[9];
  v32 = v12[10];
  v35 = v12[7];
  v34 = v12[8];
  sub_100007BEC();
  sub_1000098AC(v36);
  sub_1000105E8();
  sub_100008094();
  sub_100027104(v32, v37);
  swift_willThrow();

  sub_100002CF0();
  sub_100027240(v32, v38);

  sub_1000FCE24();
  sub_1000FD440();

  return v40(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_1000D76BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = type metadata accessor for RegistryError(0);
  v8[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7768, 0, 0);
}

uint64_t sub_1000D7768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000070C8();
  v16 = v15[3];
  if (v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v17 = v16;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      sub_1000FD5D0(v15[6]);
      if (v14)
      {
        v18 = async function pointer to Task<>.value.getter[1];

        v19 = swift_task_alloc();
        v20 = sub_1000FD2B8(v19);
        *v20 = v21;
        v20[1] = sub_1000D78BC;
        sub_10001278C();

        return Task<>.value.getter(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  swift_task_alloc();
  sub_1000103E4();
  v15[15] = v30;
  *v30 = v31;
  v30[1] = sub_1000D7A50;
  v32 = v15[8];
  v33 = v15[9];
  v34 = sub_1000186B8();

  return sub_1000EFCA0(v34, v35, v36, v37);
}

uint64_t sub_1000D78BC()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D79BC()
{
  sub_1000036A0();

  swift_task_alloc();
  sub_1000103E4();
  *(v0 + 120) = v1;
  *v1 = v2;
  v1[1] = sub_1000D7A50;
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = sub_1000186B8();

  return sub_1000EFCA0(v5, v6, v7, v8);
}

uint64_t sub_1000D7A50()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000D7B48()
{
  sub_1000070C8();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  sub_100006734();

  return v4();
}

uint64_t sub_1000D7BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000FD50C();
  sub_1000FCEF0();
  v14 = v12[16];
  v15 = v12[12];
  sub_1000C9340();
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v16 = v12[11];
  v17 = v12[12];
  v18 = sub_1000FD6AC();
  sub_1000FD798(v18, qword_10019E100);
  sub_100008094();
  v19 = sub_1000066C0();
  sub_100027104(v19, v20);

  v21 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013EB0();

  v22 = sub_1000286A4();
  v23 = v12[11];
  if (v22)
  {
    v24 = sub_1000FD190();
    sub_100010D80();
    swift_slowAlloc();
    sub_1000FD2D0();
    v26 = sub_1000FCF18(4.8752e-34, v25);
    sub_1000FD0D4(v26);
    sub_1000FD2DC();
    sub_100002CF0();
    v28 = sub_100027240(v23, v27);
    sub_1000FD228(v28);
    sub_100016628();

    *(v24 + 14) = v23;
    sub_100018D34(&_mh_execute_header, v29, v30, "%{public}s: %{public}s");
    sub_10001D31C();
    sub_100004DE4();

    sub_10001D624();
  }

  else
  {

    sub_100002CF0();
    sub_100027240(v23, v31);
  }

  sub_1000FDA10();
  sub_100007BEC();
  sub_1000098AC(v32);
  sub_1000105E8();
  sub_100008094();
  sub_100027104(v21, v33);
  swift_willThrow();

  sub_100002CF0();
  sub_100027240(v21, v34);

  sub_1000188F8();
  sub_1000FD440();

  return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12);
}

uint64_t sub_1000D7DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = type metadata accessor for RegistryError(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D7E58, 0, 0);
}

uint64_t sub_1000D8158()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D84A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for RegistryError(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8548, 0, 0);
}

uint64_t sub_1000D883C()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D8B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = type metadata accessor for RegistryError(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D8C30, 0, 0);
}

uint64_t sub_1000D8F38()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D9288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = type metadata accessor for RegistryError(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000D9340, 0, 0);
}

uint64_t sub_1000D9340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100007858();
  a21 = v25;
  a22 = v26;
  sub_100012AA8();
  a20 = v23;
  v27 = *(v23 + 16);
  if (v27)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v28 = v27;
    sub_10000EEB4();
    sub_10002864C();
    if (v22)
    {
      sub_1000FD530(*(v23 + 40));
      if (v22)
      {
        v29 = async function pointer to Task<>.value.getter[1];

        v30 = swift_task_alloc();
        v31 = sub_100019698(v30);
        *v31 = v32;
        v31[1] = sub_1000D9664;
        sub_10001278C();
        sub_10000783C();

        return Task<>.value.getter(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  sub_100017FB0();
  sub_1000FCFB0(v41);
  sub_1000805FC();
  sub_1000FD1E0();
  if (v27)
  {
    sub_1000FD4F4();
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v42 = sub_1000287A8();
    v43 = sub_10000347C(v42, qword_10019E100);
    sub_100008094();
    v44 = sub_10001317C();
    sub_100027104(v44, v45);

    v46 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000FD4C4();
    v47 = sub_1000FD4AC();
    v48 = *(v23 + 96);
    if (v47)
    {
      sub_1000FCED4();
      sub_100009C34();
      sub_1000FD604();
      sub_1000FDB5C(4.8752e-34);
      v49 = sub_1000106B8();
      v52 = sub_100004C50(v49, v50, v51);
      sub_1000FCEB8(v52);
      sub_1000133B8();
      sub_100002CF0();
      v54 = sub_100027240(v48, v53);
      sub_1000FD494(v54, v55, &a10);
      sub_1000248A8();

      *(v24 + 14) = v48;
      sub_1000FCE34(&_mh_execute_header, v56, v57, "%{public}s: %{public}s");
      sub_1000FCE9C();
      sub_10001E150();

      sub_100004DE4();
    }

    else
    {

      sub_100002CF0();
      sub_100027240(v48, v68);
    }

    sub_1000FD1AC();
    v70 = *(v23 + 56);
    v69 = *(v23 + 64);
    v71 = *(v23 + 48);
    sub_100007BEC();
    sub_1000098AC(v72);
    sub_1000105E8();
    sub_100008094();
    sub_100027104(v43, v73);
    swift_willThrow();

    sub_100002CF0();
    sub_100027240(v43, v74);

    sub_10001DD38();
    sub_10000783C();

    return v76(v75, v76, v77, v78, v79, v80, v81, v82, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000046D4();
    v59 = *(v23 + 56);
    v58 = *(v23 + 64);

    sub_1000088B0();
    sub_10000783C();

    return v62(v60, v61, v62, v63, v64, v65, v66, v67, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000D9664()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000D9764(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_100007858();
  a21 = v25;
  a22 = v26;
  sub_100012AA8();
  a20 = v23;

  sub_100017FB0();
  sub_1000FCFB0(v27);
  sub_1000805FC();
  sub_1000FD1E0();
  if (v22)
  {
    sub_1000FD4F4();
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v28 = sub_1000287A8();
    v29 = sub_10000347C(v28, qword_10019E100);
    sub_100008094();
    v30 = sub_10001317C();
    sub_100027104(v30, v31);

    v32 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000FD4C4();
    v33 = sub_1000FD4AC();
    v34 = *(v23 + 96);
    if (v33)
    {
      sub_1000FCED4();
      sub_100009C34();
      sub_1000FD604();
      sub_1000FDB5C(4.8752e-34);
      v35 = sub_1000106B8();
      v38 = sub_100004C50(v35, v36, v37);
      sub_1000FCEB8(v38);
      sub_1000133B8();
      sub_100002CF0();
      v40 = sub_100027240(v34, v39);
      sub_1000FD494(v40, v41, &a10);
      sub_1000248A8();

      *(v24 + 14) = v34;
      sub_1000FCE34(&_mh_execute_header, v42, v43, "%{public}s: %{public}s");
      sub_1000FCE9C();
      sub_10001E150();

      sub_100004DE4();
    }

    else
    {

      sub_100002CF0();
      sub_100027240(v34, v55);
    }

    sub_1000FD1AC();
    v57 = *(v23 + 56);
    v56 = *(v23 + 64);
    v58 = *(v23 + 48);
    sub_100007BEC();
    sub_1000098AC(v59);
    sub_1000105E8();
    sub_100008094();
    sub_100027104(v29, v60);
    swift_willThrow();

    sub_100002CF0();
    sub_100027240(v29, v61);

    sub_10001DD38();
    sub_10000783C();

    return v63(v62, v63, v64, v65, v66, v67, v68, v69, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000046D4();
    v45 = *(v23 + 56);
    v44 = *(v23 + 64);

    sub_1000088B0();
    sub_10000783C();

    return v48(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000D99D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for RegistryError(0);
  v6[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000D9A78, 0, 0);
}

uint64_t sub_1000D9D88()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DA0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for RegistryError(0);
  v7[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA18C, 0, 0);
}

uint64_t sub_1000DA18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();
  v19 = v16[2];
  if (v19)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v20 = v19;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      sub_1000FD2C4(v16[5]);
      if (v14)
      {
        v21 = async function pointer to Task<>.value.getter[1];

        v22 = swift_task_alloc();
        v23 = sub_10001664C(v22);
        *v23 = v24;
        v23[1] = sub_1000DA4A4;
        sub_10001278C();
        sub_10000783C();

        return Task<>.value.getter(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  v33 = v16[7];
  sub_1000FD0BC(v16[6]);
  sub_1000FD898(v34);
  v35 = v15;
  sub_1000112C8();
  sub_1000A70F4();
  sub_100028664();
  if (v17)
  {
    sub_1000FD908();
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v36 = sub_1000FD398();
    v37 = sub_10000347C(v36, qword_10019E100);
    sub_100008094();
    v38 = sub_10001317C();
    sub_100027104(v38, v39);

    v40 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000FD920();
    v41 = sub_10001D5C8();
    v42 = v16[10];
    if (v41)
    {
      v43 = sub_1000FD368();
      sub_100010D80();
      swift_slowAlloc();
      sub_1000FD53C();
      v45 = sub_1000FCF70(4.8752e-34, v44);
      sub_1000FD34C(v45);
      sub_1000FD408();
      sub_100002CF0();
      sub_100027240(v42, v46);
      v47 = sub_100012014();
      sub_100004C50(v47, v48, v49);
      sub_1000099C0();

      *(v43 + 14) = v42;
      sub_1000FCF90(&_mh_execute_header, v50, v51, "%{public}s: %{public}s");
      sub_100028688();
      sub_100004DE4();

      sub_10001E150();
    }

    else
    {

      sub_100002CF0();
      sub_100027240(v42, v60);
    }

    sub_1000294C0();
    sub_100007BEC();
    sub_1000098AC(v61);
    sub_1000105E8();
    sub_100008094();
    sub_100027104(v37, v62);
    swift_willThrow();

    sub_100002CF0();
    sub_100027240(v37, v63);

    sub_1000188F8();
    sub_10000783C();

    return v65(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000FD3E0();

    sub_1000088B0();
    sub_10000783C();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000DA4A4()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DA5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_100007858();
  sub_100012AA8();

  v18 = *(v15 + 56);
  sub_1000FD0BC(*(v15 + 48));
  sub_1000FD898(v19);
  v20 = v14;
  sub_1000112C8();
  sub_1000A70F4();
  sub_100028664();
  if (v16)
  {
    sub_1000FD908();
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v21 = sub_1000FD398();
    v22 = sub_10000347C(v21, qword_10019E100);
    sub_100008094();
    v23 = sub_10001317C();
    sub_100027104(v23, v24);

    v25 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000FD920();
    v26 = sub_10001D5C8();
    v27 = *(v15 + 80);
    if (v26)
    {
      v28 = sub_1000FD368();
      sub_100010D80();
      swift_slowAlloc();
      sub_1000FD53C();
      v30 = sub_1000FCF70(4.8752e-34, v29);
      sub_1000FD34C(v30);
      sub_1000FD408();
      sub_100002CF0();
      sub_100027240(v27, v31);
      v32 = sub_100012014();
      sub_100004C50(v32, v33, v34);
      sub_1000099C0();

      *(v28 + 14) = v27;
      sub_1000FCF90(&_mh_execute_header, v35, v36, "%{public}s: %{public}s");
      sub_100028688();
      sub_100004DE4();

      sub_10001E150();
    }

    else
    {

      sub_100002CF0();
      sub_100027240(v27, v46);
    }

    sub_1000294C0();
    sub_100007BEC();
    sub_1000098AC(v47);
    sub_1000105E8();
    sub_100008094();
    sub_100027104(v22, v48);
    swift_willThrow();

    sub_100002CF0();
    sub_100027240(v22, v49);

    sub_1000188F8();
    sub_10000783C();

    return v51(v50, v51, v52, v53, v54, v55, v56, v57, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000FD3E0();

    sub_1000088B0();
    sub_10000783C();

    return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000DA804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for RegistryError(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000DA8AC, 0, 0);
}

uint64_t sub_1000DABA0()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DAEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for RegistryError(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000DAF84, 0, 0);
}

uint64_t sub_1000DB278()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DB5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for RegistryError(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000DB65C, 0, 0);
}

uint64_t sub_1000DB950()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DBC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for RegistryError(0);
  v7[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000DBD38, 0, 0);
}

uint64_t sub_1000DC044()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DC398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = type metadata accessor for RegistryError(0);
  v6[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000DC440, 0, 0);
}

uint64_t sub_1000DC750()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DCAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for RegistryError(0);
  v5[7] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_1000DCB50, 0, 0);
}

uint64_t sub_1000DCE44()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 88);
  v3 = *(v1 + 80);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DD180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = type metadata accessor for RegistryError(0);
  v8[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD22C, 0, 0);
}

uint64_t sub_1000DD528()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DD86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = type metadata accessor for RegistryError(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000DD924, 0, 0);
}

uint64_t sub_1000DDC24()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DDF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = type metadata accessor for RegistryError(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000DE024, 0, 0);
}

uint64_t sub_1000DE324()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DE66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = type metadata accessor for RegistryError(0);
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000DE744, 0, 0);
}

uint64_t sub_1000DE744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000FDB68();
  a21 = v24;
  a22 = v25;
  sub_100012AA8();
  a20 = v23;
  v26 = *(v23 + 24);
  if (v26)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v27 = v26;
    sub_10000EEB4();
    sub_10002864C();
    if (v22)
    {
      sub_1000FD5D0(*(v23 + 48));
      if (v22)
      {
        v28 = async function pointer to Task<>.value.getter[1];

        v29 = swift_task_alloc();
        v30 = sub_1000FD2B8(v29);
        *v30 = v31;
        v30[1] = sub_1000DEAFC;
        sub_10001278C();
        sub_1000FD424();

        return Task<>.value.getter(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  v40 = *(v23 + 64);
  v41 = *(v23 + 72);
  v42 = *(*(v23 + 56) + OBJC_IVAR____TtC10LinkDaemon8Registry_store);
  *(v23 + 16) = 0;
  v43 = *(v42 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  _LNMetadataProviderDirect.metadataVersion(forBundleIdentifier:error:)(v40, v41, (v23 + 16));
  v44 = *(v23 + 16);
  v45 = *(v23 + 96);
  if (v44)
  {
    v46 = *(v23 + 16);
    swift_willThrow();
    v47 = v44;
    sub_1000C9340();
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v49 = *(v23 + 88);
    v48 = *(v23 + 96);
    v50 = *(v23 + 40);
    v51 = type metadata accessor for Logger();
    v52 = sub_10000347C(v51, qword_10019E100);
    sub_100008094();
    v53 = sub_10001317C();
    sub_100027104(v53, v54);

    v55 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000FD4C4();
    v56 = sub_1000FD4AC();
    v57 = *(v23 + 88);
    if (v56)
    {
      v59 = *(v23 + 32);
      v58 = *(v23 + 40);
      sub_1000063EC();
      a11 = sub_100009C34();
      *v50 = 136446466;
      v60 = sub_1000106B8();
      v63 = sub_100004C50(v60, v61, v62);
      sub_1000FCEB8(v63);
      sub_1000133B8();
      sub_100002CF0();
      v65 = sub_100027240(v57, v64);
      sub_1000FD494(v65, v66, &a11);
      sub_1000248A8();

      *(v50 + 14) = v57;
      sub_1000FCE34(&_mh_execute_header, v67, v68, "%{public}s: %{public}s");
      sub_1000FCE9C();
      sub_10001E150();

      sub_100004DE4();
    }

    else
    {

      sub_100002CF0();
      sub_100027240(v57, v77);
    }

    sub_1000FDA24();
    v78 = *(v23 + 56);
    sub_100007BEC();
    sub_1000098AC(v79);
    sub_1000105E8();
    sub_100008094();
    sub_100027104(v52, v80);
    swift_willThrow();

    sub_100002CF0();
    sub_100027240(v52, v81);

    sub_100003A00();
    sub_1000FD424();

    return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000FDA30();

    sub_1000105C0();
    sub_1000FD424();

    return v71(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000DEAFC()
{
  sub_1000036A0();
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v3 = *v0;
  sub_10000298C();
  *v4 = v3;

  sub_100009990();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1000DEC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1000FDB68();
  a21 = v23;
  a22 = v24;
  sub_100012AA8();
  a20 = v22;

  v25 = *(*(v22 + 56) + OBJC_IVAR____TtC10LinkDaemon8Registry_store);
  *(v22 + 16) = 0;
  v26 = *(v25 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  _LNMetadataProviderDirect.metadataVersion(forBundleIdentifier:error:)(*(v22 + 64), *(v22 + 72), (v22 + 16));
  v27 = *(v22 + 16);
  v28 = *(v22 + 96);
  if (v27)
  {
    v29 = *(v22 + 16);
    swift_willThrow();
    v30 = v27;
    sub_1000C9340();
    if (qword_100198350 != -1)
    {
      sub_100007258();
      swift_once();
    }

    v32 = *(v22 + 88);
    v31 = *(v22 + 96);
    v33 = *(v22 + 40);
    v34 = type metadata accessor for Logger();
    v35 = sub_10000347C(v34, qword_10019E100);
    sub_100008094();
    v36 = sub_10001317C();
    sub_100027104(v36, v37);

    v38 = Logger.logObject.getter();
    static os_log_type_t.error.getter();
    sub_1000FD4C4();
    v39 = sub_1000FD4AC();
    v40 = *(v22 + 88);
    if (v39)
    {
      v42 = *(v22 + 32);
      v41 = *(v22 + 40);
      sub_1000063EC();
      a11 = sub_100009C34();
      *v33 = 136446466;
      v43 = sub_1000106B8();
      v46 = sub_100004C50(v43, v44, v45);
      sub_1000FCEB8(v46);
      sub_1000133B8();
      sub_100002CF0();
      v48 = sub_100027240(v40, v47);
      sub_1000FD494(v48, v49, &a11);
      sub_1000248A8();

      *(v33 + 14) = v40;
      sub_1000FCE34(&_mh_execute_header, v50, v51, "%{public}s: %{public}s");
      sub_1000FCE9C();
      sub_10001E150();

      sub_100004DE4();
    }

    else
    {

      sub_100002CF0();
      sub_100027240(v40, v61);
    }

    sub_1000FDA24();
    v62 = *(v22 + 56);
    sub_100007BEC();
    sub_1000098AC(v63);
    sub_1000105E8();
    sub_100008094();
    sub_100027104(v35, v64);
    swift_willThrow();

    sub_100002CF0();
    sub_100027240(v35, v65);

    sub_100003A00();
    sub_1000FD424();

    return v67(v66, v67, v68, v69, v70, v71, v72, v73, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    sub_1000FDA30();

    sub_1000105C0();
    sub_1000FD424();

    return v54(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1000DEF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  v9 = type metadata accessor for RegistryError(0);
  v8[12] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000DEFD4, 0, 0);
}

uint64_t sub_1000DEFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000070C8();
  v16 = v15[3];
  if (v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v17 = v16;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      v18 = *(v15[6] + OBJC_IVAR____TtC10LinkDaemon8Registry_ready);
      v15[15] = v18;
      if (v18)
      {
        v19 = async function pointer to Task<>.value.getter[1];

        v20 = swift_task_alloc();
        v15[16] = v20;
        *v20 = v15;
        v20[1] = sub_1000DF134;
        sub_10001278C();

        return Task<>.value.getter(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  swift_task_alloc();
  sub_1000103E4();
  v15[17] = v29;
  *v29 = v30;
  v29[1] = sub_1000DF2CC;
  v31 = v15[10];
  v32 = v15[11];
  v33 = v15[8];
  v34 = v15[9];
  v35 = sub_10000E1B8();

  return sub_1000E8710(v35, v36, v37, v38, v39, v40);
}

uint64_t sub_1000DF134()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 128);
  v3 = *(v1 + 120);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DF234()
{
  sub_1000036A0();

  swift_task_alloc();
  sub_1000103E4();
  *(v0 + 136) = v1;
  *v1 = v2;
  v1[1] = sub_1000DF2CC;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = sub_10000E1B8();

  return sub_1000E8710(v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1000DF2CC()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 144) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000DF3C4()
{
  sub_100027014();
  sub_1000036C4();
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[9];

  v6 = v0[2];

  sub_1000105C0();
  sub_100091EFC();

  return v9(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1000DF454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_100019AE0();
  a19 = v23;
  a20 = v24;
  sub_1000FCEF0();
  a18 = v20;
  v25 = v20[18];
  v26 = v20[14];
  sub_1000C9340();
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v27 = v20[13];
  v28 = v20[14];
  v29 = sub_1000FD6AC();
  sub_1000FD798(v29, qword_10019E100);
  sub_100008094();
  v30 = sub_1000066C0();
  sub_100027104(v30, v31);

  v32 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013EB0();

  v33 = sub_1000286A4();
  v34 = v20[13];
  if (v33)
  {
    v35 = sub_1000FD190();
    sub_100010D80();
    swift_slowAlloc();
    sub_1000FDB18();
    *v35 = 136446466;
    v36 = sub_10001561C();
    v39 = sub_100004C50(v36, v37, v38);
    sub_1000FD0D4(v39);
    sub_1000FD2DC();
    sub_100002CF0();
    sub_100027240(v34, v40);
    sub_100004C50(v21, v22, &a9);
    sub_100016628();

    *(v35 + 14) = v34;
    sub_100018D34(&_mh_execute_header, v41, v42, "%{public}s: %{public}s");
    sub_10001D31C();
    sub_100004DE4();

    sub_10001D624();
  }

  else
  {

    sub_100002CF0();
    sub_100027240(v34, v43);
  }

  v44 = v20[18];
  v46 = v20[13];
  v45 = v20[14];
  v48 = v20[11];
  v47 = v20[12];
  v49 = v20[8];
  v50 = v20[9];
  sub_100007BEC();
  sub_1000098AC(v51);
  sub_1000105E8();
  sub_100008094();
  sub_100027104(v45, v52);
  swift_willThrow();

  sub_100002CF0();
  sub_100027240(v45, v53);

  sub_10001DD38();
  sub_10000C08C();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12);
}

uint64_t sub_1000DF658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for RegistryError(0);
  v6[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000DF700, 0, 0);
}

uint64_t sub_1000DF700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000070C8();
  v16 = v15[3];
  if (v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v17 = v16;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      sub_1000FD2C4(v15[8]);
      if (v14)
      {
        v18 = async function pointer to Task<>.value.getter[1];

        v19 = swift_task_alloc();
        v20 = sub_10001664C(v19);
        *v20 = v21;
        v20[1] = sub_1000DF85C;
        sub_10001278C();

        return Task<>.value.getter(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  sub_1000FCF38();
  v31 = *(v30 + 4);
  swift_task_alloc();
  sub_1000103E4();
  v15[14] = v32;
  *v32 = v33;
  v34 = sub_1000FD020(v32);

  return v35(v34);
}

uint64_t sub_1000DF85C()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000DF95C()
{
  sub_1000036A0();

  sub_1000FCF38();
  v2 = *(v1 + 4);
  swift_task_alloc();
  sub_1000103E4();
  *(v0 + 112) = v3;
  *v3 = v4;
  v5 = sub_1000FD020(v3);

  return v6(v5);
}

uint64_t sub_1000DF9F8()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000DFAF0()
{
  sub_1000036A0();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[2];

  sub_1000105C0();

  return v4(v3);
}

uint64_t sub_1000DFB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000FD50C();
  sub_1000FCEF0();
  v13 = v12[15];
  v14 = v12[11];
  sub_1000C9340();
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v15 = v12[10];
  v16 = v12[11];
  v17 = sub_1000FD6AC();
  sub_1000FD798(v17, qword_10019E100);
  sub_100008094();
  v18 = sub_1000066C0();
  sub_100027104(v18, v19);

  v20 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013EB0();

  v21 = sub_1000286A4();
  v22 = v12[10];
  if (v21)
  {
    v23 = sub_1000FD190();
    sub_100010D80();
    swift_slowAlloc();
    sub_1000FD2D0();
    v25 = sub_1000FCF18(4.8752e-34, v24);
    sub_1000FD0D4(v25);
    sub_1000FD2DC();
    sub_100002CF0();
    v27 = sub_100027240(v22, v26);
    sub_1000FD228(v27);
    sub_100016628();

    *(v23 + 14) = v22;
    sub_100018D34(&_mh_execute_header, v28, v29, "%{public}s: %{public}s");
    sub_10001D31C();
    sub_100004DE4();

    sub_10001D624();
  }

  else
  {

    sub_100002CF0();
    sub_100027240(v22, v30);
  }

  v31 = v12[15];
  v33 = v12[10];
  v32 = v12[11];
  v34 = v12[9];
  sub_100007BEC();
  sub_1000098AC(v35);
  sub_1000105E8();
  sub_100008094();
  sub_100027104(v32, v36);
  swift_willThrow();

  sub_100002CF0();
  sub_100027240(v32, v37);

  sub_1000FCE24();
  sub_1000FD440();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1000DFD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v9 = type metadata accessor for RegistryError(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_1000DFDE8, 0, 0);
}

uint64_t sub_1000DFDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000070C8();
  v16 = v15[2];
  if (v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v17 = v16;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      sub_1000FD530(v15[5]);
      if (v14)
      {
        v18 = async function pointer to Task<>.value.getter[1];

        v19 = swift_task_alloc();
        v20 = sub_100019698(v19);
        *v20 = v21;
        v20[1] = sub_1000DFF04;
        sub_10001278C();

        return Task<>.value.getter(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  v30 = sub_1000FD09C(v15[6]);

  return _swift_task_switch(v30, v31, v32);
}

uint64_t sub_1000DFF04()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 120);
  v3 = *(v1 + 112);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E0004()
{
  sub_1000036A0();

  v1 = sub_1000FD09C(*(v0 + 48));

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1000E0060()
{
  sub_1000070C8();
  v1 = v0[16];
  v0[17] = sub_10004E028(v0[7], v0[8], v0[9], v0[10]);
  v0[18] = 0;
  sub_100009990();

  return _swift_task_switch(v2, v3, v4);
}

uint64_t sub_1000E00EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  v12 = v10[12];
  v11 = v10[13];
  v13 = v10[10];
  v14 = v10[8];
  v15 = v10[6];
  sub_10006AF24(1000, v10[17]);

  sub_1000105C0();
  sub_100091FC0();

  return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1000E019C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  sub_100019AE0();
  a19 = v21;
  a20 = v22;
  sub_1000FCEF0();
  a18 = v20;
  v23 = v20[18];
  v24 = v20[13];
  sub_1000C9340();
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v25 = v20[12];
  v26 = v20[13];
  v27 = v20[4];
  v28 = type metadata accessor for Logger();
  sub_1000FD798(v28, qword_10019E100);
  sub_100008094();
  v29 = sub_1000066C0();
  sub_100027104(v29, v30);

  v31 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013EB0();

  v32 = sub_1000286A4();
  v33 = v20[12];
  if (v32)
  {
    v35 = v20[3];
    v34 = v20[4];
    v36 = sub_1000063EC();
    sub_100010D80();
    swift_slowAlloc();
    sub_1000FDB18();
    *v36 = 136446466;
    v37 = sub_10001561C();
    v40 = sub_100004C50(v37, v38, v39);
    sub_1000FD0D4(v40);
    sub_1000FD2DC();
    sub_100002CF0();
    sub_100027240(v33, v41);
    sub_100004C50(v34, v35, &a9);
    sub_100016628();

    *(v36 + 14) = v33;
    sub_100018D34(&_mh_execute_header, v42, v43, "%{public}s: %{public}s");
    sub_10001D31C();
    sub_100004DE4();

    sub_10001D624();
  }

  else
  {

    sub_100002CF0();
    sub_100027240(v33, v44);
  }

  v45 = v20[18];
  v47 = v20[12];
  v46 = v20[13];
  v49 = v20[10];
  v48 = v20[11];
  v50 = v20[8];
  v51 = v20[6];
  sub_100007BEC();
  sub_1000098AC(v52);
  sub_1000105E8();
  sub_100008094();
  sub_100027104(v46, v53);
  swift_willThrow();

  sub_100002CF0();
  sub_100027240(v46, v54);

  sub_10001DD38();
  sub_10000C08C();

  return v56(v55, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
}

uint64_t sub_1000E03B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[4] = a2;
  v7[5] = a3;
  v7[3] = a1;
  v8 = type metadata accessor for RegistryError(0);
  v7[10] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000E045C, 0, 0);
}

uint64_t sub_1000E045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000070C8();
  v16 = v15[3];
  if (v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v17 = v16;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      sub_1000FD5D0(v15[6]);
      if (v14)
      {
        v18 = async function pointer to Task<>.value.getter[1];

        v19 = swift_task_alloc();
        v20 = sub_1000FD2B8(v19);
        *v20 = v21;
        v20[1] = sub_1000E05B0;
        sub_10001278C();

        return Task<>.value.getter(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  swift_task_alloc();
  sub_1000103E4();
  v15[15] = v30;
  *v30 = v31;
  v30[1] = sub_1000E0744;
  v32 = v15[8];
  v33 = v15[9];
  v34 = sub_10000E1B8();

  return sub_1000EB6C0(v34, v35, v36, v37);
}

uint64_t sub_1000E05B0()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 112);
  v3 = *(v1 + 104);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E06B0()
{
  sub_1000036A0();

  swift_task_alloc();
  sub_1000103E4();
  *(v0 + 120) = v1;
  *v1 = v2;
  v1[1] = sub_1000E0744;
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = sub_10000E1B8();

  return sub_1000EB6C0(v5, v6, v7, v8);
}

uint64_t sub_1000E0744()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 128) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000E083C()
{
  sub_1000070C8();
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);

  v4 = *(v0 + 16);

  sub_1000105C0();

  return v5(v4);
}

uint64_t sub_1000E08C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = type metadata accessor for RegistryError(0);
  v6[9] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000E0970, 0, 0);
}

uint64_t sub_1000E0970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000070C8();
  v16 = v15[3];
  if (v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v17 = v16;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      sub_1000FD2C4(v15[6]);
      if (v14)
      {
        v18 = async function pointer to Task<>.value.getter[1];

        v19 = swift_task_alloc();
        v20 = sub_10001664C(v19);
        *v20 = v21;
        v20[1] = sub_1000E0AA4;
        sub_10001278C();

        return Task<>.value.getter(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  swift_task_alloc();
  sub_1000103E4();
  v15[14] = v30;
  *v30 = v31;
  v32 = sub_100026400(v30);

  return sub_1000EBEC4(v32, v33, v34);
}

uint64_t sub_1000E0AA4()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E0BA4()
{
  sub_1000036A0();

  swift_task_alloc();
  sub_1000103E4();
  *(v0 + 112) = v1;
  *v1 = v2;
  v3 = sub_100026400(v1);

  return sub_1000EBEC4(v3, v4, v5);
}

uint64_t sub_1000E0C18()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 112);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 120) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000E0D10()
{
  sub_1000070C8();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);

  v4 = *(v0 + 16);

  sub_1000105C0();

  return v5(v4);
}

uint64_t sub_1000E0D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1000FD50C();
  sub_1000FCEF0();
  v13 = v12[15];
  v14 = v12[11];
  sub_1000C9340();
  if (qword_100198350 != -1)
  {
    sub_100007258();
    swift_once();
  }

  v15 = v12[10];
  v16 = v12[11];
  v17 = sub_1000FD6AC();
  sub_1000FD798(v17, qword_10019E100);
  sub_100008094();
  v18 = sub_1000066C0();
  sub_100027104(v18, v19);

  v20 = Logger.logObject.getter();
  static os_log_type_t.error.getter();
  sub_100013EB0();

  v21 = sub_1000286A4();
  v22 = v12[10];
  if (v21)
  {
    v23 = sub_1000FD190();
    sub_100010D80();
    swift_slowAlloc();
    sub_1000FD2D0();
    v25 = sub_1000FCF18(4.8752e-34, v24);
    sub_1000FD0D4(v25);
    sub_1000FD2DC();
    sub_100002CF0();
    v27 = sub_100027240(v22, v26);
    sub_1000FD228(v27);
    sub_100016628();

    *(v23 + 14) = v22;
    sub_100018D34(&_mh_execute_header, v28, v29, "%{public}s: %{public}s");
    sub_10001D31C();
    sub_100004DE4();

    sub_10001D624();
  }

  else
  {

    sub_100002CF0();
    sub_100027240(v22, v30);
  }

  v31 = v12[15];
  v33 = v12[10];
  v32 = v12[11];
  v35 = v12[8];
  v34 = v12[9];
  v36 = v12[7];
  sub_100007BEC();
  sub_1000098AC(v37);
  sub_1000105E8();
  sub_100008094();
  sub_100027104(v32, v38);
  swift_willThrow();

  sub_100002CF0();
  sub_100027240(v32, v39);

  sub_1000188F8();
  sub_1000FD440();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12);
}

uint64_t sub_1000E0F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v8 = type metadata accessor for RegistryError(0);
  v7[9] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v7[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1028, 0, 0);
}

uint64_t sub_1000E1324()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 104);
  v3 = *(v1 + 96);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E1668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = type metadata accessor for RegistryError(0);
  v5[8] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return _swift_task_switch(sub_1000E1710, 0, 0);
}

uint64_t sub_1000E1710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_1000070C8();
  v16 = v15[3];
  if (v16)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1000064BC();
    v17 = v16;
    sub_10000EEB4();
    sub_10002864C();
    if (v14)
    {
      sub_1000FDAD4(v15[6]);
      if (v14)
      {
        v18 = async function pointer to Task<>.value.getter[1];

        v19 = swift_task_alloc();
        v20 = sub_1000FD5C4(v19);
        *v20 = v21;
        v20[1] = sub_1000E1860;
        sub_10001278C();

        return Task<>.value.getter(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14);
      }
    }
  }

  swift_task_alloc();
  sub_1000103E4();
  v15[13] = v30;
  *v30 = v31;
  v30[1] = sub_1000E19F0;
  v32 = sub_10000E1B8();

  return sub_1000ECC84(v32, v33);
}

uint64_t sub_1000E1860()
{
  sub_1000036A0();
  sub_1000036D0();
  v2 = *(v1 + 96);
  v3 = *(v1 + 88);
  v4 = *v0;
  sub_10000298C();
  *v5 = v4;

  v6 = sub_10001E094();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000E1960()
{
  sub_1000036A0();

  swift_task_alloc();
  sub_1000103E4();
  *(v0 + 104) = v1;
  *v1 = v2;
  v1[1] = sub_1000E19F0;
  v3 = sub_10000E1B8();

  return sub_1000ECC84(v3, v4);
}

uint64_t sub_1000E19F0()
{
  sub_1000036A0();
  sub_1000036D0();
  sub_1000050EC();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  sub_10000298C();
  *v7 = v6;
  *(v8 + 112) = v0;

  sub_100009990();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1000E1AE8()
{
  sub_1000070C8();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  v3 = *(v0 + 16);

  sub_1000105C0();
  v4 = sub_1000FDAF8();

  return v5(v4);
}

uint64_t sub_1000E1B84(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000E1C2C;

  return sub_1000D2FFC();
}

uint64_t sub_1000E1C2C()
{
  sub_1000070C8();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_10002EB80(&unk_10019AB90, &unk_100150500);
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v10 = sub_1000118C0();
  v11(v10);

  _Block_release(v3);
  sub_100003A00();

  return v12();
}

uint64_t sub_1000E1D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000E1DA8()
{
  sub_1000070C8();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  objc_opt_self();
  sub_10000D34C();

  v4 = v2;

  v5 = sub_10001A998();
  sub_1000FD488([v5 v6]);
  v7 = swift_task_alloc();
  v8 = sub_1000FD470(v7);
  *v8 = v9;
  sub_1000FD464(v8);
  v10 = v0[3];
  v11 = v0[4];
  v12 = v0[2];
  sub_10000687C();
  sub_1000FDC64();

  return sub_1000D8B78(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1000E1F24(int a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  sub_100003D44(0, &qword_100199040, LNSystemProtocol_ptr);
  sub_1000FB58C(&qword_10019ABB0);
  v9 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v5[4] = v9;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v5[5] = v11;
  a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1000E2078;

  return sub_1000E1D8C(v9, a2, a3, v11);
}

uint64_t sub_1000E2078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  sub_10000C92C();
  v12 = *v11;
  v13 = *v11;
  sub_10000298C();
  *v14 = v13;
  v15 = v12[6];
  v16 = v12[4];
  v17 = v12[2];
  *v14 = *v11;

  sub_1000FD594();
  v19 = *(v18 + 40);

  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_1000FD950();
    v20 = v11;
  }

  else
  {
    sub_10002EB80(&unk_10019AB90, &unk_100150500);
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    v20 = 0;
  }

  v21 = sub_100013570();
  v22(v21);

  _Block_release(v13);
  sub_1000FCEFC();
  sub_100091FC0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_1000E221C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000E2238()
{
  sub_1000036C4();
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  objc_opt_self();
  sub_10000D34C();

  v5 = v2;
  v6 = v4;

  v7 = sub_10001A998();
  sub_1000FD488([v7 v8]);
  v9 = swift_task_alloc();
  v10 = sub_1000FD470(v9);
  *v10 = v11;
  sub_1000FD464(v10);
  v12 = v0[3];
  v13 = v0[4];
  v14 = v0[2];
  sub_10000687C();
  sub_100091EFC();

  return sub_1000D9288(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1000E2340(void *a1, int a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a1;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  sub_100003D44(0, &unk_10019BBF0, LNValueType_ptr);
  v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5[5] = v9;
  if (a3)
  {
    a3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v5[6] = v11;
  v12 = a1;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1000E247C;

  return sub_1000E221C(v12, v9, a3, v11);
}

uint64_t sub_1000E247C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FDBDC();
  sub_100004884();
  sub_10000C92C();
  v12 = *v11;
  v13 = *v11;
  sub_10000298C();
  *v14 = v13;
  v15 = v12[7];
  v16 = v12[5];
  v17 = v12[3];
  v18 = v12[2];
  *v14 = *v11;

  sub_1000FD594();
  v20 = *(v19 + 48);

  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_1000FD950();
    v21 = v11;
  }

  else
  {
    sub_10002EB80(&unk_10019AB90, &unk_100150500);
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    v21 = 0;
  }

  v22 = v13[4];
  v23 = sub_1000120A8();
  v24(v23);

  _Block_release(v22);
  sub_1000FCEFC();
  sub_1000FDC4C();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1000E265C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000E2730;

  return sub_1000167F4(v5, v7);
}

uint64_t sub_1000E2730()
{
  sub_100027014();
  sub_1000036C4();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = v5[5];
  v7 = v5[4];
  v8 = v5[2];
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_100003D44(0, &unk_10019AB20, LNActionMetadata_ptr);
    sub_100092038();
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v11 = sub_1000118C0();
  v12(v11);

  _Block_release(v3);
  sub_100003A00();
  sub_100091EFC();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1000E289C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100003B20();
}

uint64_t sub_1000E28B0()
{
  sub_1000070C8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = objc_opt_self();
  v4 = v2;

  v0[4] = [v3 currentConnection];
  v5 = swift_task_alloc();
  v6 = sub_1000FDAC8(v5);
  *v6 = v7;
  v6[1] = sub_1000E2980;
  v9 = v0[2];
  v8 = v0[3];
  v10 = sub_10000687C();

  return sub_1000D99D0(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1000E2980()
{
  sub_1000070C8();
  sub_1000048B4();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_100011B30();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = sub_10001AB40();

    return v13(v12);
  }
}

uint64_t sub_1000E2AC8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  sub_100003D44(0, &unk_10019BBE0, LNFullyQualifiedActionIdentifier_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[4] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_1000E2BB0;

  return sub_1000E289C(v5);
}

uint64_t sub_1000E2BB0()
{
  sub_100027014();
  sub_1000036C4();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = v5[5];
  v7 = v5[4];
  v8 = v5[2];
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_10002EB80(&unk_10019AB90, &unk_100150500);
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v11 = sub_1000118C0();
  v12(v11);

  _Block_release(v3);
  sub_100003A00();
  sub_100091EFC();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1000E2D2C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000E2D44()
{
  sub_1000070C8();
  v1 = v0[3];
  v2 = v0[4];
  objc_opt_self();
  sub_100018D28();

  v3 = v2;
  v4 = sub_1000077D8();
  sub_1000FD1B8([v4 v5]);
  v6 = swift_task_alloc();
  v7 = sub_1000FD0C8(v6);
  *v7 = v8;
  v7[1] = sub_10001F054;
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];
  v12 = sub_10000687C();

  return sub_1000DA0E0(v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000E2E30(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000E2F14;

  return sub_1000E2D2C(a1, v7);
}

uint64_t sub_1000E2F14()
{
  sub_100028788();
  sub_1000036C4();
  sub_10000C92C();
  v3 = *v2;
  v4 = *v2;
  sub_10000298C();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[2];
  *v5 = *v2;

  sub_1000FD594();
  v9 = *(v8 + 32);

  if (v1)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    v10 = v0;
  }

  else
  {
    sub_100003D44(0, &unk_10019ABA0, LNBundleActionsMetadata_ptr);
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    v10 = 0;
  }

  v11 = sub_1000118C0();
  v12(v11);

  _Block_release(v4);
  sub_1000FCEFC();
  sub_10001A7B0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1000E309C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000E30B4()
{
  sub_1000070C8();
  v1 = v0[3];
  v2 = v0[4];
  objc_opt_self();
  sub_100018D28();

  v3 = v2;
  v4 = sub_1000077D8();
  sub_1000FD1B8([v4 v5]);
  v6 = swift_task_alloc();
  v7 = sub_1000FD0C8(v6);
  *v7 = v8;
  v7[1] = sub_10001F054;
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];
  v12 = sub_10000687C();

  return sub_1000D53B0(v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000E31A0(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000E3284;

  return sub_1000E309C(a1, v7);
}

uint64_t sub_1000E3284()
{
  sub_100028788();
  sub_1000036C4();
  sub_10000C92C();
  v3 = *v2;
  v4 = *v2;
  sub_10000298C();
  *v5 = v4;
  v6 = v3[5];
  v7 = v3[2];
  *v5 = *v2;

  sub_1000FD594();
  v9 = *(v8 + 32);

  if (v1)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    v10 = v0;
  }

  else
  {
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    v10 = 0;
  }

  v11 = sub_1000118C0();
  v12(v11);

  _Block_release(v4);
  sub_1000FCEFC();
  sub_10001A7B0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1000E33E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000E3404()
{
  sub_1000070C8();
  sub_1000FD5A0();
  v2 = objc_opt_self();
  v3 = v1;

  sub_1000FD488([v2 currentConnection]);
  v4 = swift_task_alloc();
  v5 = sub_1000FD470(v4);
  *v5 = v6;
  sub_1000FD464(v5);
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];
  sub_10000687C();
  sub_1000FDC64();

  return sub_1000D3420(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1000E34E0()
{
  sub_1000070C8();
  sub_1000048B4();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_100011B30();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = sub_10001AB40();

    return v13(v12);
  }
}

uint64_t sub_1000E3608()
{
  sub_1000036A0();

  sub_100003A00();
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_1000E3684(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_10002930C;

  return sub_1000E33E8(v6, v8, v9, v11);
}

uint64_t sub_1000E3780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return sub_100003B20();
}

uint64_t sub_1000E379C()
{
  sub_1000070C8();
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  v4 = objc_opt_self();
  v5 = v2;

  v0[8] = [v4 currentConnection];
  v6 = swift_task_alloc();
  v7 = sub_100016D40(v6);
  *v7 = v8;
  v7[1] = sub_1000E3884;
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[2];
  v12 = v0[3];
  v23 = v0[5];
  v24 = v0[6];
  sub_10000687C();
  sub_1000FDC64();

  return sub_1000D3B20(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1000E3884()
{
  sub_1000070C8();
  sub_1000048B4();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v3 + 80) = v0;

  if (v0)
  {
    sub_100011B30();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = sub_10001AB40();

    return v13(v12);
  }
}

uint64_t sub_1000E39AC()
{
  sub_1000036A0();

  sub_100003A00();
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_1000E3AA8(int a1, uint64_t a2, int a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v5[4] = v9;
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v5[5] = v12;
  a5;
  v14 = swift_task_alloc();
  v5[6] = v14;
  *v14 = v5;
  v14[1] = sub_100029494;

  return sub_1000E3780(v8, v10, a2, v11, v13);
}

uint64_t sub_1000E3BD4(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000E3C7C;

  return sub_1000C4AF0();
}

uint64_t sub_1000E3C7C()
{
  sub_1000070C8();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v10 = sub_1000118C0();
  v11(v10);

  _Block_release(v3);
  sub_100003A00();

  return v12();
}

uint64_t sub_1000E3DD0()
{
  sub_1000036A0();
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = v1;
  sub_1000FD548([v2 currentConnection]);
  v4 = swift_task_alloc();
  v5 = sub_1000FD2AC(v4);
  *v5 = v6;
  v5[1] = sub_1000C4BC0;
  v7 = *(v0 + 16);
  v8 = sub_10000687C();

  return sub_1000DA804(v8, v9, v10, v11, v12);
}

uint64_t sub_1000E3EAC(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000E3F54;

  return sub_1000E3DBC();
}

uint64_t sub_1000E3F54()
{
  sub_1000070C8();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_100003D44(0, &unk_10019AB80, LNRegisteredBundleMetadata_ptr);
    sub_100092038();
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v10 = sub_1000118C0();
  v11(v10);

  _Block_release(v3);
  sub_100003A00();

  return v12();
}

uint64_t sub_1000E40B8()
{
  sub_1000036A0();
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = v1;
  sub_1000FD548([v2 currentConnection]);
  v4 = swift_task_alloc();
  v5 = sub_1000FD2AC(v4);
  *v5 = v6;
  v5[1] = sub_1000C4BC0;
  v7 = *(v0 + 16);
  v8 = sub_10000687C();

  return sub_1000DAEDC(v8, v9, v10, v11, v12);
}

uint64_t sub_1000E4194(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000E423C;

  return sub_1000E40A4();
}

uint64_t sub_1000E423C()
{
  sub_1000070C8();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_10002EB80(&unk_10019B2C0, &unk_10014F8B0);
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v10 = sub_1000118C0();
  v11(v10);

  _Block_release(v3);
  sub_100003A00();

  return v12();
}

uint64_t sub_1000E43BC(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000E4490;

  return sub_1000C4A08(v5, v7);
}

uint64_t sub_1000E4490()
{
  sub_100027014();
  sub_1000036C4();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = v5[5];
  v7 = v5[4];
  v8 = v5[2];
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_100003D44(0, &qword_10019AB50, LNEntityMetadata_ptr);
    sub_100092038();
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v11 = sub_1000118C0();
  v12(v11);

  _Block_release(v3);
  sub_100003A00();
  sub_100091EFC();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1000E461C(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1000E4718;

  return sub_1000C5194(v6, v8, v9, v11);
}

uint64_t sub_1000E4718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  sub_100011514();
  v14 = v13[6];
  v15 = v13[5];
  v16 = v13[4];
  v17 = v13[2];
  v18 = *v12;
  sub_10000298C();
  *v19 = v18;

  sub_1000125A8();
  v21 = *(v20 + 24);
  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_100008840();

    v22 = sub_100011138();
    v23(v22, 0, v11);

    _Block_release(v21);
  }

  else
  {
    sub_100011138();
    sub_1000FD780();
    v24();
    _Block_release(v21);
  }

  sub_100007528();
  sub_100091FC0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_1000E48AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000E48C4()
{
  sub_1000070C8();
  v1 = v0[3];
  v2 = v0[4];
  objc_opt_self();
  sub_100018D28();

  v3 = v2;
  v4 = sub_1000077D8();
  sub_1000FD1B8([v4 v5]);
  v6 = swift_task_alloc();
  v7 = sub_1000FD0C8(v6);
  *v7 = v8;
  v7[1] = sub_10001F054;
  v10 = v0[3];
  v9 = v0[4];
  v11 = v0[2];
  v12 = sub_10000687C();

  return sub_1000D5AD4(v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000E49B0(int a1, int a2, int a3, void *a4)
{
  v6 = sub_1000FD7EC(a1, a2, a3, a4);
  sub_1000131F0();
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v6;
  v7[4] = v5;
  v8 = v4;
  v9 = v5;
  v10 = sub_1000077D8();

  return sub_100006240(v10, v11);
}

uint64_t sub_1000E4A14(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v3[4] = v7;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000FCD68;

  return sub_1000E48AC(a1, v7);
}

uint64_t sub_1000E4B0C()
{
  sub_1000036A0();
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = v1;
  sub_1000FD548([v2 currentConnection]);
  v4 = swift_task_alloc();
  v5 = sub_1000FD2AC(v4);
  *v5 = v6;
  v5[1] = sub_1000C4BC0;
  v7 = *(v0 + 16);
  v8 = sub_10000687C();

  return sub_1000DB5B4(v8, v9, v10, v11, v12);
}

uint64_t sub_1000E4BE8(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000E4C90;

  return sub_1000E4AF8();
}

uint64_t sub_1000E4C90()
{
  sub_1000070C8();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_10002EB80(&unk_10019B2D0, &unk_1001504F0);
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v10 = sub_1000118C0();
  v11(v10);

  _Block_release(v3);
  sub_100003A00();

  return v12();
}

uint64_t sub_1000E4E10(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000E4EE4;

  return sub_10001F900(v5, v7);
}

uint64_t sub_1000E4EE4()
{
  sub_100027014();
  sub_1000036C4();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = v5[5];
  v7 = v5[4];
  v8 = v5[2];
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_100003D44(0, &qword_10019AB60, LNEnumMetadata_ptr);
    sub_100092038();
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v11 = sub_1000118C0();
  v12(v11);

  _Block_release(v3);
  sub_100003A00();
  sub_100091EFC();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1000E5050(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000E5068()
{
  sub_1000070C8();
  v1 = v0[3];
  v2 = v0[4];
  v3 = objc_opt_self();
  v4 = v2;

  sub_1000FD1B8([v3 currentConnection]);
  v5 = swift_task_alloc();
  v6 = sub_1000FD0C8(v5);
  *v6 = v7;
  v6[1] = sub_10001F054;
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];
  v11 = sub_10000687C();

  return sub_1000DBC8C(v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1000E5158(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000E522C;

  return sub_1000E5050(v5, v7);
}

uint64_t sub_1000E522C()
{
  sub_100027014();
  sub_1000036C4();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = v5[5];
  v7 = v5[4];
  v8 = v5[2];
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_100003D44(0, &qword_10019B2B0, LNExamplePhraseDescription_ptr);
    sub_100092038();
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v11 = sub_1000118C0();
  v12(v11);

  _Block_release(v3);
  sub_100003A00();
  sub_100091EFC();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20);
}

uint64_t sub_1000E5398(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_100003B20();
}

uint64_t sub_1000E53AC()
{
  sub_1000070C8();
  v1 = v0[2];
  v2 = v0[3];
  v3 = objc_opt_self();
  v4 = v2;

  v0[4] = [v3 currentConnection];
  v5 = swift_task_alloc();
  v6 = sub_1000FDAC8(v5);
  *v6 = v7;
  v6[1] = sub_1000E2980;
  v9 = v0[2];
  v8 = v0[3];
  v10 = sub_10000687C();

  return sub_1000DC398(v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1000E549C(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_100003D44(0, &unk_10019AB30, LNAssistantSuggestionPhraseQuery_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v3[5] = v5;
  a3;
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_1000E5588;

  return sub_1000E5398(v5);
}

uint64_t sub_1000E5588()
{
  sub_100027014();
  sub_1000036C4();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = v5[6];
  v7 = v5[5];
  v8 = v5[2];
  v9 = *v1;
  sub_10000298C();
  *v10 = v9;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    v11 = v3[4];
    v7 = sub_10002EB80(&unk_10019B2A0, &unk_1001504E0);
    sub_1000FB58C(&unk_10019AB40);
    sub_100012928();
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v12 = sub_1000118C0();
  v13(v12);

  _Block_release(v3);
  sub_100003A00();
  sub_100091EFC();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21);
}

uint64_t sub_1000E572C()
{
  sub_1000036A0();
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = v1;
  sub_1000FD548([v2 currentConnection]);
  v4 = swift_task_alloc();
  v5 = sub_1000FD2AC(v4);
  *v5 = v6;
  v5[1] = sub_1000C4BC0;
  v7 = *(v0 + 16);
  v8 = sub_10000687C();

  return sub_1000DCAA8(v8, v9, v10, v11, v12);
}

uint64_t sub_1000E5808(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1000E58B0;

  return sub_1000E5718();
}

uint64_t sub_1000E58B0()
{
  sub_1000070C8();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  v8 = *v1;
  sub_10000298C();
  *v9 = v8;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_10002EB80(&unk_10019AB70, &unk_10014F8C0);
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v10 = sub_1000118C0();
  v11(v10);

  _Block_release(v3);
  sub_100003A00();

  return v12();
}

uint64_t sub_1000E5A10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000E5A2C()
{
  sub_1000070C8();
  sub_1000FD5A0();
  objc_opt_self();
  sub_10000D34C();

  v2 = v1;

  v3 = sub_10001A998();
  sub_1000FD488([v3 v4]);
  v5 = swift_task_alloc();
  v6 = sub_1000FD470(v5);
  *v6 = v7;
  sub_1000FD464(v6);
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];
  sub_10000687C();
  sub_1000FDC64();

  return sub_1000DD86C(v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1000E5B9C(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v4[4] = v8;
  if (a2)
  {
    a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v4[5] = v11;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1000E5CA8;

  return sub_1000E5A10(v7, v9, a2, v11);
}

uint64_t sub_1000E5CA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100013D88();
  sub_100004884();
  sub_10000C92C();
  v12 = *v11;
  v13 = *v11;
  sub_10000298C();
  *v14 = v13;
  v15 = v12[6];
  v16 = v12[4];
  v17 = v12[2];
  *v14 = *v11;

  sub_1000FD594();
  v19 = *(v18 + 40);

  if (v10)
  {
    _convertErrorToNSError(_:)();
    sub_1000FD950();
    v20 = v11;
  }

  else
  {
    sub_100003D44(0, &qword_10019B2E0, LNQueryMetadata_ptr);
    sub_100092038();
    Array._bridgeToObjectiveC()();
    sub_100091E9C();

    v20 = 0;
  }

  v21 = sub_100013570();
  v22(v21);

  _Block_release(v13);
  sub_1000FCEFC();
  sub_100091FC0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_1000E5E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000E5E58()
{
  sub_1000070C8();
  sub_1000FD5A0();
  v2 = objc_opt_self();
  v3 = v1;

  sub_1000FD488([v2 currentConnection]);
  v4 = swift_task_alloc();
  v5 = sub_1000FD470(v4);
  *v5 = v6;
  sub_1000FD464(v5);
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[2];
  sub_10000687C();
  sub_1000FDC64();

  return sub_1000DDF6C(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1000E5F54(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v4[4] = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1000E4718;

  return sub_1000E5E3C(v6, v8, v9, v11);
}

uint64_t sub_1000E6050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_100003B20();
}

uint64_t sub_1000E6068()
{
  sub_1000070C8();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  objc_opt_self();
  v4 = v1;
  v5 = v2;
  v6 = v3;
  v7 = sub_1000066C0();
  v0[6] = [v7 v8];
  v9 = swift_task_alloc();
  v10 = sub_1000FDABC(v9);
  *v10 = v11;
  v10[1] = sub_1000E6140;
  v13 = v0[4];
  v12 = v0[5];
  v14 = v0[2];
  v15 = v0[3];
  v16 = sub_10000687C();

  return sub_1000DD180(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1000E6140()
{
  sub_1000070C8();
  sub_1000048B4();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_10000298C();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_100011B30();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {

    v12 = sub_10001AB40();

    return v13(v12);
  }
}

uint64_t sub_1000E6268()
{
  sub_1000036A0();

  sub_100003A00();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t sub_1000E6364(uint64_t a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a2;
  v5[5] = _Block_copy(aBlock);
  v10 = a2;
  v11 = a3;
  a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1000E6448;

  return sub_1000E6050(a1, a2, a3);
}

uint64_t sub_1000E6448()
{
  sub_100028788();
  sub_1000036C4();
  sub_100007538();
  v3 = v2;
  sub_10000788C();
  *v4 = v3;
  v6 = v5[6];
  v7 = v5[4];
  v8 = v5[3];
  v9 = v5[2];
  v10 = *v1;
  sub_10000298C();
  *v11 = v10;

  if (v0)
  {
    _convertErrorToNSError(_:)();
    sub_10001D304();
    sub_10001725C();
  }

  else
  {
    sub_10002EB80(&unk_10019AB70, &unk_10014F8C0);
    Dictionary._bridgeToObjectiveC()();
    sub_100091E9C();

    sub_100091ED8();
  }

  v12 = *(v3 + 40);
  v13 = sub_1000120A8();
  v14(v13);

  _Block_release(v12);
  sub_100003A00();
  sub_10001A7B0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22);
}

uint64_t sub_1000E65E0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return sub_100003B20();
}

uint64_t sub_1000E65F8()
{
  sub_1000070C8();
  v1 = *(v0 + 24);
  sub_1000FDA9C(*(v0 + 32));
  v3 = *(v2 + OBJC_IVAR____TtC10LinkDaemon13MetadataStore_provider);
  sub_10000D34C();

  sub_100018AEC();
  sub_1000A6AD8();
  sub_1000105C0();

  return v4();
}

uint64_t sub_1000E66B4(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1000E6788;

  return sub_1000E65E0(v5, v7);
}