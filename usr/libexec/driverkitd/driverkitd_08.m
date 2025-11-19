uint64_t sub_1000A26D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v40 = a5;
  v41 = a1;
  v42 = a2;
  v38 = a7;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a3;
  (*(v11 + 16))(v14, a4, v10);
  v16 = a3[14];
  v39 = a3[13];
  sub_10000A990(a6, v46);
  v17 = v47;
  v18 = sub_100003DA0(v46, v47);
  v19 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v18);
  v21 = (&v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21);
  v44 = &type metadata for Data;
  v45 = &off_10012DA28;
  v43 = *v21;
  v23 = type metadata accessor for KernelCollection();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  v26 = swift_allocObject();
  v27 = sub_100003DA0(&v43, &type metadata for Data);
  v28 = *(*(&type metadata for Data - 1) + 64);
  __chkstk_darwin(v27);
  v30 = (&v37 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v31 + 16))(v30);
  v32 = v26 + OBJC_IVAR____TtC10driverkitd16KernelCollection_data;
  *(v32 + 24) = &type metadata for Data;
  *(v32 + 32) = &off_10012DA28;
  *v32 = *v30;
  *(v26 + 16) = v15;
  (*(v11 + 32))(v26 + OBJC_IVAR____TtC10driverkitd16KernelCollection_path, v14, v10);
  v33 = (v26 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch);
  *v33 = v39;
  v33[1] = v16;
  *(v26 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) = v40;

  sub_100003C90(&v43);
  sub_100003C90(v46);
  v34 = v48;
  v35 = sub_10009AF80(v26, v41);

  if (!v34)
  {
    *v38 = v35;
  }

  return result;
}

void sub_1000A2A04()
{
  v2 = v1;
  v89 = type metadata accessor for URL.DirectoryHint();
  v3 = *(v89 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v89);
  v88 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  *&v87 = &v75 - v8;
  v77 = type metadata accessor for URL();
  v95 = *(v77 - 8);
  v9 = *(v95 + 64);
  v10 = __chkstk_darwin(v77);
  v76 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v75 - v13;
  __chkstk_darwin(v12);
  v16 = *(v0 + 488);
  if (!v16)
  {
    static os_log_type_t.info.getter();
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v26 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    return;
  }

  v79 = &v75 - v15;
  v17 = *(v0 + 496);
  v18 = *(v16 + 16);
  v81 = v0;
  v80 = v17;
  if (v18)
  {
    v78 = v1;
    *&v94 = _swiftEmptyArrayStorage;

    sub_1000635C4(0, v18, 0);
    v19 = v94;
    v85 = *(v95 + 56);
    v84 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v83 = (v3 + 104);
    v86 = v95 + 56;
    v82 = (v95 + 32);
    v75 = v16;
    v20 = (v16 + 40);
    v21 = v77;
    do
    {
      v23 = *(v20 - 1);
      v22 = *v20;
      v85(v87, 1, 1, v21);
      (*v83)(v88, v84, v89);

      URL.init(filePath:directoryHint:relativeTo:)();
      *&v94 = v19;
      v25 = v19[2];
      v24 = v19[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000635C4(v24 > 1, v25 + 1, 1);
        v19 = v94;
      }

      v19[2] = v25 + 1;
      (*(v95 + 32))(v19 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v25, v14, v21);
      v20 += 2;
      --v18;
    }

    while (v18);

    v2 = v78;
  }

  else
  {

    v19 = _swiftEmptyArrayStorage;
  }

  *&v94 = &_swiftEmptyDictionarySingleton;
  v27 = v19[2];
  v28 = v77;
  if (v27)
  {
    v29 = 0;
    v30 = (v95 + 8);
    v31 = v79;
    while (v29 < v19[2])
    {
      (*(v95 + 16))(v31, v19 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v29, v28);
      sub_1000A69BC(&v94, v31, v81, v80);
      if (v2)
      {

        (*v30)(v31, v28);

        return;
      }

      ++v29;
      (*v30)(v31, v28);
      if (v27 == v29)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:

    v32 = v94;
    if (!*(v94 + 16))
    {
      sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
      v74 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      return;
    }

    v88 = sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v33 = swift_allocObject();
    v87 = xmmword_1000F3160;
    *(v33 + 16) = xmmword_1000F3160;
    v34 = sub_10009F428(v32);
    v78 = v2;
    *&v94 = v34;
    sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0);
    v35 = BidirectionalCollection<>.joined(separator:)();
    v37 = v36;

    *(v33 + 56) = &type metadata for String;
    v86 = sub_100003D24();
    *(v33 + 64) = v86;
    *(v33 + 32) = v35;
    *(v33 + 40) = v37;
    v85 = sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v38 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v39 = v32 + 64;
    v40 = 1 << *(v32 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v32 + 64);
    v82 = (v81 + 672);
    v43 = (v40 + 63) >> 6;
    v95 += 8;

    v44 = 0;
    v83 = v43;
    v89 = v32;
    while (v42)
    {
LABEL_26:
      sub_10000A990(*(v32 + 56) + 40 * (__clz(__rbit64(v42)) | (v44 << 6)), &v94);
      v55 = sub_100009F34(&v94, v91);
      v56 = v81;
      v57 = *(v81 + 656);
      __chkstk_darwin(v55);
      *(&v75 - 2) = v56;
      *(&v75 - 1) = v91;

      os_unfair_lock_lock(v57 + 18);
      v58 = v78;
      sub_1000A9700(&v57[4], v90);
      v78 = v58;
      v59 = v57 + 18;
      if (v58)
      {
        os_unfair_lock_unlock(v59);

        v84 = static os_log_type_t.error.getter();
        v60 = swift_allocObject();
        *(v60 + 16) = v87;
        v61 = v92;
        v62 = v93;
        sub_100003C4C(v91, v92);
        v63 = v76;
        (*(v62 + 64))(v61, v62);
        v64 = URL.absoluteString.getter();
        v66 = v65;
        (*v95)(v63, v77);
        v67 = v86;
        *(v60 + 56) = &type metadata for String;
        *(v60 + 64) = v67;
        *(v60 + 32) = v64;
        *(v60 + 40) = v66;
        v68 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        if ((*(v56 + 649) & 2) == 0)
        {
          swift_willThrow();

          sub_100003C90(v91);
          return;
        }

        v78 = 0;
      }

      else
      {
        os_unfair_lock_unlock(v59);

        sub_10000A990(v91, v90);
        v69 = v82;
        swift_beginAccess();
        v70 = *v69;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v69 = v70;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v70 = sub_100031798(0, v70[2] + 1, 1, v70);
          *v69 = v70;
        }

        v73 = v70[2];
        v72 = v70[3];
        if (v73 >= v72 >> 1)
        {
          v70 = sub_100031798((v72 > 1), v73 + 1, 1, v70);
        }

        v70[2] = v73 + 1;
        sub_100009F34(v90, &v70[5 * v73 + 4]);
        *v69 = v70;
        swift_endAccess();
        static os_log_type_t.debug.getter();
        v45 = swift_allocObject();
        *(v45 + 16) = v87;
        v46 = v92;
        v47 = v93;
        sub_100003C4C(v91, v92);
        v48 = v76;
        (*(v47 + 64))(v46, v47);
        v49 = URL.absoluteString.getter();
        v51 = v50;
        (*v95)(v48, v77);
        v52 = v86;
        *(v45 + 56) = &type metadata for String;
        *(v45 + 64) = v52;
        *(v45 + 32) = v49;
        *(v45 + 40) = v51;
        v53 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();
      }

      v32 = v89;
      v42 &= v42 - 1;
      sub_100003C90(v91);
      v43 = v83;
    }

    while (1)
    {
      v54 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      if (v54 >= v43)
      {

        return;
      }

      v42 = *(v39 + 8 * v54);
      ++v44;
      if (v42)
      {
        v44 = v54;
        goto LABEL_26;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000A3568(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for URL();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v27 - v12;
  v14 = sub_100003CDC(&qword_100135188, &qword_1000F5070);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v27 - v17;
  v19 = v41;
  result = sub_1000A4A20(a1, a2);
  if (!v19)
  {
    v31 = v18;
    v40 = *(result + 16);
    v41 = v15;
    if (v40)
    {
      v34 = v9;
      v35 = v6;
      v21 = 0;
      v22 = v41;
      v38 = result + ((*(v22 + 80) + 32) & ~*(v22 + 80));
      v37 = *(v14 + 48);
      v33 = v32 + 8;
      v28 = v32 + 48;
      v30 = xmmword_1000F3C80;
      v27 = xmmword_1000F3160;
      v23 = v31;
      v36 = v13;
      v29 = v3;
      v39 = result;
      while (v21 < *(result + 16))
      {
        sub_100014894(v38 + *(v22 + 72) * v21, v23, &qword_100135188, &qword_1000F5070);
        sub_100020D24(v23, v13, &unk_1001389D0, &qword_1000F4F60);
        v24 = sub_100009F34((v23 + v37), &v43);
        v25 = *(v3 + 656);
        __chkstk_darwin(v24);
        *(&v27 - 4) = v3;
        *(&v27 - 3) = &v43;
        v26 = v13;

        os_unfair_lock_lock(v25 + 18);
        sub_1000A96A4(&v25[4], &v42);
        os_unfair_lock_unlock(v25 + 18);

        ++v21;
        sub_100003C90(&v43);
        sub_10000A184(v13, &unk_1001389D0, &qword_1000F4F60);
        v22 = v41;
        result = v39;
        if (v40 == v21)
        {
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000A3D84()
{
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OSSignpostID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v11 = __chkstk_darwin(v10);
  v13 = &v41 - v12;
  __chkstk_darwin(v11);
  v16 = &v41 - v15;
  if ((*(v0 + 650) & 0x10) != 0)
  {
    sub_10001449C();
    swift_allocError();
    *v30 = 0xD000000000000096;
    *(v30 + 8) = 0x8000000100109B60;
    v31 = v49;
    v32 = v48;
    v33 = v47;
    *(v30 + 16) = v46;
    *(v30 + 32) = v33;
    *(v30 + 48) = v32;
    *(v30 + 64) = v31;
    *(v30 + 72) = 50;
    return swift_willThrow();
  }

  else
  {
    v44 = v14;
    v45 = v1;
    v41 = v3;
    v42 = v2;
    v50 = v0;
    if (qword_100133B10 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for OSSignposter();
    v18 = sub_1000144F0(v17, qword_10014EA70);
    static OSSignpostID.exclusive.getter();
    v43 = v18;
    v19 = OSSignposter.logHandle.getter();
    v20 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, v20, v22, "ForcedFullBundleLoad", "", v21, 2u);
    }

    (*(v8 + 16))(v13, v16, v7);
    v23 = type metadata accessor for OSSignpostIntervalState();
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    OSSignpostIntervalState.init(id:isOpen:)();
    v26 = *(v8 + 8);
    v26(v16, v7);
    v27 = v50;
    v28 = v45;
    sub_1000A3568(0, 3uLL);
    if (v28)
    {
    }

    else
    {
      v45 = v26;
      v34 = OSSignposter.logHandle.getter();
      v35 = v44;
      OSSignpostIntervalState.signpostID.getter();
      LODWORD(v43) = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {

        checkForErrorAndConsumeState(state:)();

        v37 = v41;
        v36 = v42;
        if ((*(v41 + 88))(v6, v42) == enum case for OSSignpostError.doubleEnd(_:))
        {
          v38 = "[Error] Interval already ended";
        }

        else
        {
          (*(v37 + 8))(v6, v36);
          v38 = "";
        }

        v39 = swift_slowAlloc();
        *v39 = 0;
        v35 = v44;
        v40 = OSSignpostID.rawValue.getter();
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v34, v43, v40, "ForcedFullBundleLoad", v38, v39, 2u);

        v27 = v50;
      }

      result = (v45)(v35, v7);
      *(v27 + 752) = 1;
    }
  }

  return result;
}

uint64_t sub_1000A4218(void *a1, void *a2)
{
  v56 = a1;
  v3 = *a1;

  v4 = *sub_100003C4C(a2, a2[3]);
  sub_1000E0B2C(v64);
  v5 = v65;
  v6 = v66;
  sub_100003C4C(v64, v65);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = v7;
  v67 = &_swiftEmptyDictionarySingleton;
  v57 = *(v7 + 16);
  if (!v57)
  {

    v53 = &_swiftEmptyDictionarySingleton;
LABEL_32:
    result = sub_100003C90(v64);
    *v56 = v53;
    return result;
  }

  v9 = 0;
  v10 = v7 + 32;
  while (v9 < *(v8 + 16))
  {
    sub_10000A990(v10, v61);
    v11 = v62;
    v12 = v63;
    sub_100003C4C(v61, v62);
    v13 = (*(v12 + 24))(v11, v12);
    v15 = v13;
    v16 = v14;
    v17 = v67;
    if (v67[2])
    {
      sub_100061588(v13, v14);
      if (v18)
      {

        goto LABEL_21;
      }

      v17 = v67;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v59[0] = v17;
    v20 = sub_100061588(v15, v16);
    v22 = v17[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_34;
    }

    v26 = v21;
    if (v17[3] < v25)
    {
      sub_100035E34(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_100061588(v15, v16);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_38;
      }

LABEL_15:
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v32 = v20;
    sub_10003B848();
    v20 = v32;
    if ((v26 & 1) == 0)
    {
LABEL_18:
      v29 = *&v59[0];
      *(*&v59[0] + 8 * (v20 >> 6) + 64) |= 1 << v20;
      v33 = (v29[6] + 16 * v20);
      *v33 = v15;
      v33[1] = v16;
      *(v29[7] + 8 * v20) = _swiftEmptyArrayStorage;
      v34 = v29[2];
      v24 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v24)
      {
        goto LABEL_35;
      }

      v29[2] = v35;
      goto LABEL_20;
    }

LABEL_16:
    v28 = v20;

    v29 = *&v59[0];
    v30 = *(*&v59[0] + 56);
    v31 = *(v30 + 8 * v28);
    *(v30 + 8 * v28) = _swiftEmptyArrayStorage;

LABEL_20:
    v67 = v29;
LABEL_21:
    v36 = v62;
    v37 = v63;
    sub_100003C4C(v61, v62);
    v38 = (*(v37 + 24))(v36, v37);
    v40 = sub_1000254EC(v60, v38, v39);
    v42 = v40;
    if (*v41)
    {
      v43 = v41;
      __chkstk_darwin(v40);
      v55[2] = sub_1000C80E0;
      v55[3] = 0;
      v55[4] = v61;
      v44 = v58;
      v46 = sub_1000574BC(sub_1000A9664, v55, v45);
      v58 = v44;
      if (v47)
      {
        sub_10000A990(v61, v59);
        v48 = *v43;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v48;
        if ((v49 & 1) == 0)
        {
          v48 = sub_100031E70(0, v48[2] + 1, 1, v48);
          *v43 = v48;
        }

        v51 = v48[2];
        v50 = v48[3];
        if (v51 >= v50 >> 1)
        {
          v48 = sub_100031E70((v50 > 1), v51 + 1, 1, v48);
          *v43 = v48;
        }

        v48[2] = v51 + 1;
        sub_100009F34(v59, &v48[5 * v51 + 4]);
      }

      else
      {
        v52 = v46;
        if (*(*v43 + 16) < v46)
        {
          goto LABEL_36;
        }

        if (v46 < 0)
        {
          goto LABEL_37;
        }

        sub_10000A990(v61, v59);
        sub_100058D6C(v52, v52, v59);
      }
    }

    (v42)(v60, 0);
    ++v9;

    sub_100003C90(v61);
    v10 += 40;
    if (v57 == v9)
    {

      v53 = v67;
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1000A4690(uint64_t *a1, uint64_t a2, void *a3)
{
  if (qword_100133A40 != -1)
  {
    v21 = a2;
    swift_once();
    a2 = v21;
  }

  v6 = qword_10014E898;
  if ((*(a2 + 592) & 0x80) != 0)
  {
    v23[0] = qword_10014E898;

    sub_100030728(&off_1001268D8);
    v6 = v23[0];
  }

  else
  {
  }

  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F7EC0;
  *(inited + 32) = 0x697463656C6C6F43;
  *(inited + 40) = 0xEF65707954206E6FLL;
  *(inited + 48) = 7958081;
  *(inited + 56) = 0xE300000000000000;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "Loaded State");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = 0x646564616F4CLL;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x8000000100104B00;
  *(inited + 168) = sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  *(inited + 144) = v6;
  v8 = sub_10003E208(inited);
  swift_setDeallocating();
  sub_100003CDC(&unk_1001372D0, &unk_1000F4500);
  swift_arrayDestroy();
  v9 = *sub_100003C4C(a3, a3[3]);
  sub_1000DF65C(v23);
  v10 = *sub_100003C4C(v23, v23[3]);
  v11 = sub_1000206CC(v8);

  v22[3] = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
  v22[0] = v11;
  v12 = sub_10009C698(v22);
  v14 = v13;
  sub_100003C90(v22);
  if (v14 >> 60 == 15)
  {
    sub_10001449C();
    swift_allocError();
    *v15 = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0;
    *(v15 + 72) = 75;
    swift_willThrow();
LABEL_9:
    sub_100003C90(v23);
    return;
  }

  v16 = sub_10009CBD4(v12, v14);
  sub_100014988();
  if (v3)
  {
    goto LABEL_9;
  }

  sub_100003C90(v23);
  v17 = *a1;

  *a1 = v16;
  static os_log_type_t.debug.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000F3160;
  v19 = v16[2];
  *(v18 + 56) = &type metadata for Int;
  *(v18 + 64) = &protocol witness table for Int;
  *(v18 + 32) = v19;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v20 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_1000A4A20(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v186 = a2;
  v185 = a1;
  v184 = sub_100003CDC(&qword_100137860, &unk_1000F9BB0);
  v6 = *(*(v184 - 8) + 64);
  __chkstk_darwin(v184);
  v183 = &v179 - v7;
  v195 = sub_100003CDC(&qword_100135198, &unk_1000F5080);
  v196 = *(v195 - 8);
  v8 = *(v196 + 64);
  v9 = __chkstk_darwin(v195);
  v180 = &v179 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v205 = &v179 - v11;
  v12 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v182 = *(v12 - 8);
  v13 = *(v182 + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v188 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v201 = (&v179 - v16);
  v17 = type metadata accessor for URL();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v203 = &v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v192 = &v179 - v23;
  v24 = __chkstk_darwin(v22);
  v204 = &v179 - v25;
  v26 = __chkstk_darwin(v24);
  v202 = &v179 - v27;
  v28 = __chkstk_darwin(v26);
  v200 = &v179 - v29;
  v30 = __chkstk_darwin(v28);
  v197 = &v179 - v31;
  __chkstk_darwin(v30);
  v33 = &v179 - v32;
  v34 = *(v2 + 128);
  v35 = *(v34 + 16);
  v207 = v18;
  if (v35)
  {
    v206 = v3;
    v210 = _swiftEmptyArrayStorage;
    sub_1000635C4(0, v35, 0);
    v36 = v210;
    v37 = (v34 + 40);
    do
    {
      v38 = v36;
      v40 = *(v37 - 1);
      v39 = *v37;

      URL.init(fileURLWithPath:)();
      v36 = v38;

      v210 = v38;
      v41 = v38[2];
      v42 = *(v36 + 24);
      if (v41 >= v42 >> 1)
      {
        sub_1000635C4(v42 > 1, v41 + 1, 1);
        v36 = v210;
      }

      *(v36 + 16) = v41 + 1;
      (*(v207 + 32))(v36 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v41, v33, v17);
      v37 += 2;
      --v35;
    }

    while (v35);
    v199 = v36;
    v4 = v206;
  }

  else
  {
    v199 = _swiftEmptyArrayStorage;
  }

  v43 = sub_10009F77C(*(v5 + 136));
  v44 = sub_1000EB530(v43);

  v213 = v44;
  v45 = *(v5 + 650);
  k = "ch_source";
  v198 = v5;
  v206 = v17;
  if (v45)
  {
    goto LABEL_15;
  }

  v47 = *sub_100003C4C((v5 + 16), *(v5 + 40));
  sub_1000DF65C(&v210);
  v48 = sub_100003C4C(&v210, v212);
  if (qword_100133A40 != -1)
  {
    goto LABEL_95;
  }

  while (1)
  {
    v49 = qword_10014E898;

    v50 = sub_10006C3A0(2u, 2, v49);
    v51 = *v48;
    v52 = sub_1000206CC(v50);
    v209[3] = sub_100003CDC(&unk_1001389A0, &qword_1000F96A0);
    v209[0] = v52;
    v53 = sub_10009C698(v209);
    v55 = v54;
    sub_100003C90(v209);
    if (v55 >> 60 == 15)
    {
      sub_10001449C();
      v56 = swift_allocError();
      *v57 = 0u;
      *(v57 + 16) = 0u;
      *(v57 + 32) = 0u;
      *(v57 + 48) = 0u;
      *(v57 + 64) = 0;
      *(v57 + 72) = 75;
      swift_willThrow();
    }

    else
    {
      v58 = sub_10009CBD4(v53, v55);
      if (!v4)
      {
        v194 = 0;
        v142 = v58;
        sub_100014988();

        sub_100003C90(&v210);
        v143 = v142 + 8;
        v144 = 1 << *(v142 + 32);
        v145 = -1;
        if (v144 < 64)
        {
          v145 = ~(-1 << v144);
        }

        v17 = v145 & v142[8];
        v4 = (v144 + 63) >> 6;
        v190 = (v207 + 56);
        *&v189 = v207 + 48;
        v179 = (v207 + 32);
        v193 = v142;

        v146 = 0;
        v181 = _swiftEmptyArrayStorage;
        v48 = v199;
        k = v201;
        v147 = v202;
        for (i = (v142 + 8); v17; v143 = i)
        {
          v148 = v146;
LABEL_65:
          v149 = __clz(__rbit64(v17)) | (v148 << 6);
          v150 = *(*(v193 + 48) + 16 * v149 + 8);
          v151 = *(*(v193 + 56) + 8 * v149);

          v153 = sub_1000DD70C(v152);
          if (v153)
          {
            v154 = *(v153 + 16);
            if (*(v154 + 16) && (*&v187 = v153, v155 = sub_100061588(0x656C646E7542534FLL, 0xEC00000068746150), (v156 & 1) != 0) && (sub_10000B430(*(v154 + 56) + 32 * v155, &v210), (swift_dynamicCast() & 1) != 0))
            {
              URL.init(fileURLWithPath:)();

              v157 = 0;
            }

            else
            {

              v157 = 1;
            }

            v48 = v199;
          }

          else
          {
            v157 = 1;
          }

          v17 &= v17 - 1;
          v158 = v206;
          (*v190)(k, v157, 1, v206);

          if ((*v189)(k, 1, v158) == 1)
          {
            sub_10000A184(k, &unk_1001389D0, &qword_1000F4F60);
            v146 = v148;
            v147 = v202;
          }

          else
          {
            v159 = *v179;
            v160 = v197;
            v161 = v206;
            (*v179)(v197, k, v206);
            v159(v200, v160, v161);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v147 = v202;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v181 = sub_100031468(0, v181[2] + 1, 1, v181);
            }

            v163 = v207;
            v165 = v181[2];
            v164 = v181[3];
            if (v165 >= v164 >> 1)
            {
              v167 = sub_100031468(v164 > 1, v165 + 1, 1, v181);
              v163 = v207;
              v181 = v167;
            }

            v166 = v181;
            v181[2] = v165 + 1;
            v159(v166 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v165, v200, v206);
            v146 = v148;
            v5 = v198;
            v48 = v199;
            k = v201;
          }
        }

        while (1)
        {
          v148 = v146 + 1;
          if (__OFADD__(v146, 1))
          {
            goto LABEL_94;
          }

          if (v148 >= v4)
          {

            v168 = v181[2];
            if (v168)
            {
              v169 = *(v207 + 16);
              v170 = v181 + ((*(v207 + 80) + 32) & ~*(v207 + 80));
              v197 = *(v207 + 72);
              v201 = (v207 + 8);
              v193 = (v207 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
              v17 = v206;
              v200 = v169;
              for (j = v169(v147, v170, v206); ; j = (v200)(v147, v170, v17))
              {
                __chkstk_darwin(j);
                *(&v179 - 2) = v147;

                v176 = v194;
                v177 = sub_10007B1E4(sub_1000A96E0, (&v179 - 4), v48);
                v194 = v176;
                v178 = *(v177 + 16);

                if (v178)
                {
                  (*v201)(v147, v17);
                }

                else
                {
                  v172 = v192;
                  v169(v192, v147, v17);
                  v173 = v204;
                  sub_1000E4238(v204, v172);
                  v48 = v199;
                  v174 = *v201;
                  v175 = v173;
                  v147 = v202;
                  (*v201)(v175, v17);
                  v174(v147, v17);
                }

                v170 += v197;
                --v168;
                v169 = v200;
                if (!v168)
                {
                  break;
                }
              }
            }

            else
            {

              v17 = v206;
            }

            v4 = v194;
            k = ("OS_dispatch_source" + 9);
            goto LABEL_16;
          }

          v17 = v143[v148];
          ++v146;
          if (v17)
          {
            goto LABEL_65;
          }
        }
      }

      sub_100014988();
      v56 = v4;
    }

    v4 = 0;
    sub_100003C90(&v210);
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v59 = swift_allocObject();
    *(v59 + 16) = *(k + 22);
    v210 = v56;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    v60 = String.init<A>(describing:)();
    v61 = k;
    v63 = v62;
    *(v59 + 56) = &type metadata for String;
    *(v59 + 64) = sub_100003D24();
    *(v59 + 32) = v60;
    *(v59 + 40) = v63;
    k = v61;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v64 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

LABEL_15:
    v48 = v199;
LABEL_16:
    v192 = sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v65 = swift_allocObject();
    v187 = *(k + 22);
    v193 = v65;
    *(v65 + 16) = v187;
    v66 = v48[2];
    v67 = _swiftEmptyArrayStorage;
    v197 = v66;
    v194 = v4;
    if (v66)
    {
      v209[0] = _swiftEmptyArrayStorage;
      sub_1000635A4(0, v66, 0);
      v67 = v209[0];
      v68 = *(v207 + 16);
      v69 = v48 + ((*(v207 + 80) + 32) & ~*(v207 + 80));
      v200 = *(v207 + 72);
      v201 = v68;
      v202 = (v207 + 16);
      v70 = (v207 + 8);
      v71 = v66;
      do
      {
        v72 = v204;
        (v201)(v204, v69, v17);
        v210 = 2314;
        v211 = 0xE200000000000000;
        v73._countAndFlagsBits = URL.path.getter();
        String.append(_:)(v73);

        v74 = v17;
        v75 = v210;
        v76 = v211;
        (*v70)(v72, v74);
        v209[0] = v67;
        v78 = v67[2];
        v77 = v67[3];
        if (v78 >= v77 >> 1)
        {
          sub_1000635A4((v77 > 1), v78 + 1, 1);
          v67 = v209[0];
        }

        v67[2] = v78 + 1;
        v79 = &v67[2 * v78];
        v79[4] = v75;
        v79[5] = v76;
        v69 += v200;
        --v71;
        v17 = v206;
      }

      while (v71);
      v5 = v198;
    }

    v210 = v67;
    v204 = sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
    sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0);
    v80 = BidirectionalCollection<>.joined(separator:)();
    v82 = v81;

    v83 = v193;
    *(v193 + 56) = &type metadata for String;
    v4 = sub_100003D24();
    v83[8] = v4;
    v83[4] = v80;
    v83[5] = v82;
    k = sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v84 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    v85 = swift_allocObject();
    *(v85 + 16) = v187;
    v181 = v213;
    v86 = v194;
    v210 = sub_10009F0FC(v213);
    v87 = BidirectionalCollection<>.joined(separator:)();
    v89 = v88;

    *(v85 + 56) = &type metadata for String;
    *(v85 + 64) = v4;
    i = v4;
    *(v85 + 32) = v87;
    *(v85 + 40) = v89;
    v190 = k;
    v90 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (v197)
    {
      v208 = _swiftEmptyArrayStorage;
      sub_1000636CC(0, v197, 0);
      v91 = 0;
      v92 = v207;
      v93 = v208;
      v48 = v199;
      v193 = v199 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
      v94 = *(v5 + 416);
      v201 = *(v5 + 424);
      v202 = v94;
      v204 = v207 + 16;
      v200 = v207 + 56;
      v194 = (v207 + 8);
      v189 = xmmword_1000F3C80;
      while (v91 < v48[2])
      {
        v95 = v17;
        v96 = *(v92 + 16);
        v4 = v203;
        v96(v203, v193 + *(v92 + 72) * v91, v95);
        if (URL.path.getter() == v202 && v97 == v201)
        {

          v98 = 0;
        }

        else
        {
          v99 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v98 = v99 ^ 1;
        }

        v100 = sub_1000C78E4((v5 + 16), v4, 1, v98 & 1);
        if (v86)
        {
          v210 = URL.path.getter();
          v211 = v101;
          v209[0] = 0x6E49656C7070412FLL;
          v209[1] = 0xEF2F6C616E726574;
          sub_100012814();
          v102 = StringProtocol.contains<A>(_:)();

          if ((v102 & 1) == 0)
          {
            swift_willThrow();
            (*v194)(v4, v206);
          }

          static os_log_type_t.error.getter();
          v103 = swift_allocObject();
          *(v103 + 16) = v189;
          v104 = URL.path.getter();
          v105 = i;
          *(v103 + 56) = &type metadata for String;
          *(v103 + 64) = v105;
          *(v103 + 32) = v104;
          *(v103 + 40) = v106;
          v210 = v86;
          swift_errorRetain();
          sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
          v107 = String.init<A>(describing:)();
          *(v103 + 96) = &type metadata for String;
          *(v103 + 104) = v105;
          *(v103 + 72) = v107;
          *(v103 + 80) = v108;
          v109 = static OS_os_log.default.getter();
          os_log(_:dso:log:_:_:)();

          v110 = *(v195 + 48);
          v112 = v205;
          v111 = v206;
          v96(v205, v4, v206);
          v17 = v111;
          k = *v200;
          (*v200)(v112, 0, 1, v17);

          v86 = 0;
          *(v112 + v110) = _swiftEmptyArrayStorage;
          v113 = v4;
        }

        else
        {
          v114 = v100;
          v115 = *(v195 + 48);
          v117 = v205;
          v116 = v206;
          v96(v205, v203, v206);
          v17 = v116;
          k = *v200;
          (*v200)(v117, 0, 1, v17);
          *(v117 + v115) = v114;
          v113 = v203;
        }

        (*v194)(v113, v17);
        v208 = v93;
        v119 = v93[2];
        v118 = v93[3];
        v48 = v199;
        if (v119 >= v118 >> 1)
        {
          sub_1000636CC(v118 > 1, v119 + 1, 1);
          v48 = v199;
          v93 = v208;
        }

        ++v91;
        v93[2] = v119 + 1;
        sub_100020D24(v205, v93 + ((*(v196 + 80) + 32) & ~*(v196 + 80)) + *(v196 + 72) * v119, &qword_100135198, &unk_1000F5080);
        v5 = v198;
        v92 = v207;
        if (v197 == v91)
        {

          goto LABEL_38;
        }
      }

      __break(1u);
      goto LABEL_93;
    }

    k = *(v207 + 56);
    v93 = _swiftEmptyArrayStorage;
LABEL_38:
    (k)(v188, 1, 1, v17);
    v120 = v181;
    v121 = v181[2];
    if (v121)
    {
      v122 = sub_10003256C(v181[2], 0);
      v123 = sub_100059410(&v210, &v122[(*(v207 + 80) + 32) & ~*(v207 + 80)], v121, v120);
      v124 = sub_1000145A4();
      if (v123 == v121)
      {
        goto LABEL_42;
      }

      __break(1u);
    }

    v122 = _swiftEmptyArrayStorage;
LABEL_42:
    __chkstk_darwin(v124);
    *(&v179 - 2) = v125;
    *(&v179 - 1) = 1;
    v126 = sub_1000A7E98(sub_1000A96C4, (&v179 - 4), v122);
    if (v86)
    {
      break;
    }

    v128 = v126;

    v129 = *(v195 + 48);
    v130 = v180;
    sub_100020D24(v188, v180, &unk_1001389D0, &qword_1000F4F60);
    *(v130 + v129) = v128;
    sub_100003CDC(&qword_1001351A0, &unk_1000F7C20);
    v131 = *(v196 + 72);
    v132 = (*(v196 + 80) + 32) & ~*(v196 + 80);
    v133 = swift_allocObject();
    *(v133 + 16) = v187;
    v5 = &unk_1000F5080;
    sub_100014894(v130, v133 + v132, &qword_100135198, &unk_1000F5080);
    v210 = v93;
    sub_100030944(v133);
    sub_10000A184(v130, &qword_100135198, &unk_1000F5080);
    v134 = v210;
    if (*(v210 + 16))
    {
      sub_100003CDC(&qword_100135190, &qword_1000F5078);
      v135 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v135 = &_swiftEmptyDictionarySingleton;
    }

    v210 = v135;
    sub_1000A8078(v134, 1, &v210);
    v48 = v210;
    v210 = _swiftEmptyArrayStorage;
    v17 = (v48 + 8);
    v136 = 1 << *(v48 + 32);
    v137 = -1;
    if (v136 < 64)
    {
      v137 = ~(-1 << v136);
    }

    v138 = v137 & v48[8];
    v139 = (v136 + 63) >> 6;

    v140 = 0;
    for (k = &qword_1000F4F60; v138; v140 = v4)
    {
      v4 = v140;
LABEL_55:
      v5 = __clz(__rbit64(v138)) | (v4 << 6);
      v141 = v183;
      sub_100014894(v48[6] + *(v182 + 72) * v5, v183, &unk_1001389D0, &qword_1000F4F60);
      *(v141 + *(v184 + 48)) = *(v48[7] + 8 * v5);

      sub_1000A6210(&v210, v141, v185, v186, v198);
      v138 &= v138 - 1;
      sub_10000A184(v141, &qword_100137860, &unk_1000F9BB0);
    }

    while (1)
    {
      v4 = v140 + 1;
      if (__OFADD__(v140, 1))
      {
        break;
      }

      if (v4 >= v139)
      {

        return v210;
      }

      v138 = *(v17 + 8 * v4);
      ++v140;
      if (v138)
      {
        goto LABEL_55;
      }
    }

LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    swift_once();
  }

  sub_10000A184(v188, &unk_1001389D0, &qword_1000F4F60);
}

uint64_t sub_1000A6198()
{
  URL.path.getter();
  URL.path.getter();
  v0 = sub_100069024();

  return v0 & 1;
}

uint64_t sub_1000A6210(void **a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v77 = a5;
  v96 = a1;
  v82 = sub_100003CDC(&qword_100135188, &qword_1000F5070);
  v81 = *(v82 - 8);
  v8 = *(v81 + 64);
  __chkstk_darwin(v82);
  v85 = &v69 - v9;
  v76 = type metadata accessor for URL();
  v10 = *(v76 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v76);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v74 = &v69 - v15;
  v16 = sub_100003CDC(&qword_100137860, &unk_1000F9BB0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16);
  v79 = &v69 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v69 - v20;
  sub_100014894(a2, &v69 - v20, &qword_100137860, &unk_1000F9BB0);
  v80 = v16;
  v22 = *&v21[*(v16 + 48)];
  result = sub_10000A184(v21, &unk_1001389D0, &qword_1000F4F60);
  v84 = *(v22 + 16);
  if (!v84)
  {
  }

  v70 = v14;
  v69 = a3;
  v24 = 0;
  v25 = v22 + 32;
  v75 = (v10 + 8);
  v26 = v22;
  v72 = a4;
  v71 = a2;
  v73 = v22;
  while (v24 < *(v26 + 16))
  {
    sub_10000A990(v25, &v93);
    if (a4 != 3)
    {
      v53 = v94;
      v54 = v95;
      sub_100003C4C(&v93, v94);
      v55 = (*(v54 + 16))(v53, v54);
      if (v56)
      {
        if (v56 == 1)
        {
          if (a4 != 1)
          {
            goto LABEL_4;
          }
        }

        else if (v56 == 2)
        {
          if (a4 != 2)
          {
            goto LABEL_4;
          }
        }

        else
        {
          if (a4 < 3)
          {
            sub_100041A00(v55, v56);
            goto LABEL_4;
          }

          if (v55 == v69 && v56 == a4)
          {
            sub_100041A00(v69, a4);
          }

          else
          {
            v58 = v55;
            v59 = v56;
            v60 = _stringCompareWithSmolCheck(_:_:expecting:)();
            sub_100041A00(v58, v59);
            if ((v60 & 1) == 0)
            {
              goto LABEL_4;
            }
          }
        }
      }

      else if (a4)
      {
        goto LABEL_4;
      }
    }

    v27 = v94;
    v28 = v95;
    sub_100003C4C(&v93, v94);
    v29 = (*(v28 + 16))(v27, v28);
    if (v30 == 1)
    {
      v31 = *sub_100003C4C((v77 + 16), *(v77 + 40));
      sub_1000DF9D4(&v90);
      v32 = v91;
      v33 = v92;
      v78 = sub_100003C4C(&v90, v91);
      v35 = v94;
      v34 = v95;
      sub_100003C4C(&v93, v94);
      v36 = v74;
      (*(v34 + 64))(v35, v34);
      v37 = URL.path.getter();
      v39 = v38;
      v40 = *v75;
      (*v75)(v36, v76);
      v41 = v83;
      (*(v33 + 152))(v37, v39, v32, v33);
      v83 = v41;
      if (v41)
      {

        sub_100003C90(&v90);
        return sub_100003C90(&v93);
      }

      v43 = v42;

      if (v43)
      {
        sub_100003C90(&v90);
        v44 = *sub_100003C4C((v77 + 16), *(v77 + 40));
        sub_1000DFF08(v89);
        v45 = v70;
        URL.init(fileURLWithPath:)();

        v46 = type metadata accessor for UncachedBundle();
        v47 = swift_allocObject();
        URL._bridgeToObjectiveC()(v48);
        v50 = v49;
        Unique = _CFBundleCreateUnique();

        a2 = v71;
        if (Unique)
        {
          v52 = Unique;
          v40(v45, v76);

          *(v47 + 16) = v52;
          v87 = v46;
          v88 = sub_1000A958C();
          *&v86 = v47;
          sub_100003C90(v89);
          sub_100009F34(&v86, &v90);
          sub_100003C90(&v93);
          sub_100009F34(&v90, &v93);
        }

        else
        {
          v40(v45, v76);
          swift_deallocPartialClassInstance();
          sub_100003C90(v89);
        }

        a4 = v72;
      }

      else
      {
        sub_100003C90(&v90);
        a4 = v72;
        a2 = v71;
      }

      v26 = v73;
    }

    else
    {
      sub_100041A00(v29, v30);
    }

    v61 = v79;
    sub_100014894(a2, v79, &qword_100137860, &unk_1000F9BB0);
    v62 = *(v61 + *(v80 + 48));

    v63 = *(v82 + 48);
    v64 = v61;
    v65 = v85;
    sub_100020D24(v64, v85, &unk_1001389D0, &qword_1000F4F60);
    sub_10000A990(&v93, v65 + v63);
    v66 = *v96;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v66 = sub_100031FDC(0, v66[2] + 1, 1, v66);
    }

    v68 = v66[2];
    v67 = v66[3];
    if (v68 >= v67 >> 1)
    {
      v66 = sub_100031FDC(v67 > 1, v68 + 1, 1, v66);
    }

    v66[2] = v68 + 1;
    sub_100020D24(v85, v66 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v68, &qword_100135188, &qword_1000F5070);
    *v96 = v66;
LABEL_4:
    ++v24;
    result = sub_100003C90(&v93);
    v25 += 40;
    if (v84 == v24)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000A69BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v94 = a1;
  v95 = a4;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v88 - v13;
  v15 = *sub_100003C4C((a3 + 16), *(a3 + 40));
  sub_1000DF9D4(&v105);
  v16 = v108;
  v17 = v109;
  sub_100003C4C(&v105, v108);
  v18 = (*(v17 + 24))(a2, 0, 4, v16, v17);
  result = sub_100003C90(&v105);
  if (v4)
  {
    return result;
  }

  v110 = v14;
  v90 = v12;
  v96 = v8;
  v20 = *(v18 + 16);
  if (!v20)
  {
  }

  v93 = 0;
  v21 = 0;
  v22 = v96;
  v23 = v18 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
  v104 = (v96 + 8);
  v97 = xmmword_1000F3160;
  v89 = xmmword_1000F3C80;
  v100 = v23;
  v101 = v20;
  v24 = v7;
  v103 = v7;
  v91 = v18;
  v102 = v96 + 16;
  while (1)
  {
    if (v21 >= *(v18 + 16))
    {
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v25 = v18;
    v26 = v110;
    (*(v22 + 16))(v110, v23 + *(v22 + 72) * v21, v24);
    if ((URL.isFileURL.getter() & 1) == 0)
    {
      result = (*v104)(v26, v24);
      goto LABEL_14;
    }

    v27 = objc_allocWithZone(NSBundle);
    URL._bridgeToObjectiveC()(v28);
    v30 = v29;
    v31 = [v27 initWithURL:v29];

    if (!v31)
    {
      goto LABEL_12;
    }

    v32 = [v31 bundleIdentifier];
    if (!v32)
    {

LABEL_12:
      static os_log_type_t.debug.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v40 = swift_allocObject();
      *(v40 + 16) = v97;
      v41 = v22;
      v42 = v110;
      v43 = URL.path(percentEncoded:)(1);
      *(v40 + 56) = &type metadata for String;
      *(v40 + 64) = sub_100003D24();
      *(v40 + 32) = v43;
      v23 = v100;
      sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
      v44 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();
      v20 = v101;

      v38 = *v104;
      v39 = v42;
      v22 = v41;
      goto LABEL_13;
    }

    v33 = v32;
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v35;

    v36 = [v31 executablePath];
    if (!v36)
    {
      break;
    }

    v37 = v36;

    v38 = *v104;
    v39 = v110;
LABEL_13:
    v24 = v103;
    result = v38(v39, v103);
LABEL_14:
    v18 = v25;
LABEL_15:
    if (++v21 == v20)
    {
    }
  }

  v98 = v34;
  v92 = v31;
  v45 = *v94;
  v46 = *v94 + 64;
  v47 = 1 << *(*v94 + 32);
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  else
  {
    v48 = -1;
  }

  v49 = v48 & *(*v94 + 64);
  v50 = (v47 + 63) >> 6;

  v51 = 0;
  v52 = v99;
  while (1)
  {
    if (!v49)
    {
      v53 = v103;
      while (1)
      {
        v54 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          __break(1u);
          goto LABEL_44;
        }

        if (v54 >= v50)
        {
          break;
        }

        v49 = *(v46 + 8 * v54);
        ++v51;
        if (v49)
        {
          v51 = v54;
          goto LABEL_27;
        }
      }

      v62 = v98;
      v105 = v98;
      v106 = v52;
      __chkstk_darwin(v61);
      *&v88[-4] = &v105;
      v63 = v93;
      v64 = sub_1000C7758(sub_100041C40, &v88[-8], v95);
      v93 = v63;
      if (v64)
      {
        v108 = sub_100009FEC(0, &qword_100137468, NSBundle_ptr);
        v109 = sub_1000A9724();
        v105 = v92;
        sub_100048614(&v105, v62, v52);
        v24 = v53;
        result = (*v104)(v110, v53);
      }

      else
      {

        LODWORD(v99) = static os_log_type_t.debug.getter();
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v65 = swift_allocObject();
        *(v65 + 16) = v97;
        v66 = v92;
        v67 = [v92 bundleURL];
        v68 = v90;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = URL.path(percentEncoded:)(1);
        v70 = *v104;
        (*v104)(v68, v53);
        *(v65 + 56) = &type metadata for String;
        *(v65 + 64) = sub_100003D24();
        *(v65 + 32) = v69;
        v22 = v96;
        sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
        v71 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();

        v24 = v53;
        result = v70(v110, v53);
      }

      v18 = v91;
      v23 = v100;
      v20 = v101;
      goto LABEL_15;
    }

LABEL_27:
    v55 = __clz(__rbit64(v49)) | (v51 << 6);
    v56 = (v45[6] + 16 * v55);
    v58 = *v56;
    v57 = v56[1];
    sub_10000A990(v45[7] + 40 * v55, &v107);
    v105 = v58;
    v106 = v57;
    if (v58 == v98 && v57 == v52)
    {
      break;
    }

    v49 &= v49 - 1;
    v60 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = sub_10000A184(&v105, &qword_100137868, &qword_1000F9BC8);
    v22 = v96;
    if (v60)
    {
      goto LABEL_38;
    }
  }

  sub_10000A184(&v105, &qword_100137868, &qword_1000F9BC8);
LABEL_38:

  v72 = static os_log_type_t.debug.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  result = swift_allocObject();
  *(result + 16) = v89;
  if (!v45[2])
  {
    goto LABEL_45;
  }

  v73 = result;
  v88[3] = v72;
  result = sub_100061588(v98, v52);
  v74 = v103;
  v75 = v90;
  if (v76)
  {
    sub_10000A990(v45[7] + 40 * result, &v105);

    v77 = v108;
    v78 = v109;
    sub_100003C4C(&v105, v108);
    (*(v78 + 64))(v77, v78);
    v79 = URL.path.getter();
    v81 = v80;
    v82 = v75;
    v83 = *v104;
    (*v104)(v82, v74);
    *(v73 + 56) = &type metadata for String;
    v84 = sub_100003D24();
    *(v73 + 64) = v84;
    *(v73 + 32) = v79;
    *(v73 + 40) = v81;
    v85 = v110;
    v86 = URL.path(percentEncoded:)(1);
    *(v73 + 96) = &type metadata for String;
    *(v73 + 104) = v84;
    *(v73 + 72) = v86;
    sub_100003C90(&v105);
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v87 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    result = v83(v85, v74);
    v22 = v96;
    v18 = v91;
    v23 = v100;
    v20 = v101;
    v24 = v74;
    goto LABEL_15;
  }

LABEL_46:
  __break(1u);
  return result;
}

uint64_t sub_1000A72D4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, int a3@<W3>, char a4@<W4>, unint64_t *a5@<X8>)
{
  v11 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = type metadata accessor for URL();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = sub_10007AD60(a2, v14, a3);
  if (!v5)
  {
    v17 = a4 & 1;
    v18 = v16;
    sub_100099D48(v16, a1, v17);
    result = sub_10000A184(v14, &unk_1001389D0, &qword_1000F4F60);
    *a5 = v18;
    return result;
  }

  v29 = v5;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if (swift_dynamicCast())
  {
    v31[0] = v28[0];
    *(v31 + 9) = *(v28 + 9);
    v30[1] = v26;
    v30[2] = v27;
    v30[0] = v25;
    v19 = sub_1000DDB58(a2);
    if (!v19)
    {
      swift_willThrow();
      sub_10001465C(v30);
      return sub_10000A184(v14, &unk_1001389D0, &qword_1000F4F60);
    }

    v20 = v19;
    v21 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v25 = *(a1 + 8);
    sub_100039104(v30, v20, isUniquelyReferenced_nonNull_native);

    *(a1 + 8) = v25;
  }

  swift_willThrow();
  return sub_10000A184(v14, &unk_1001389D0, &qword_1000F4F60);
}

uint64_t sub_1000A74FC@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, unint64_t *a4@<X8>)
{
  v8 = sub_10007AD60(a2, a3, 0);
  if (!v4)
  {
    v9 = v8;
    result = sub_100099D48(v8, a1, 0);
    *a4 = v9;
    return result;
  }

  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if (!swift_dynamicCast())
  {
    return swift_willThrow();
  }

  v21[0] = *v19;
  *(v21 + 9) = *&v19[9];
  v20[1] = v17;
  v20[2] = v18;
  v20[0] = v15;
  v11 = sub_1000DDB58(a2);
  if (v11)
  {
    v12 = v11;
    v13 = *(a1 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(a1 + 8);
    sub_100039104(v20, v12, isUniquelyReferenced_nonNull_native);

    *(a1 + 8) = v16;
    return swift_willThrow();
  }

  swift_willThrow();
  return sub_10001465C(v20);
}

uint64_t *sub_1000A7650()
{
  sub_100003C90(v0 + 2);
  memcpy(__dst, v0 + 7, 0x255uLL);
  sub_100041AE0(__dst);
  v1 = v0[82];

  v2 = v0[83];

  v3 = v0[84];

  v4 = v0[85];
  v5 = v0[86];
  v6 = v0[87];

  sub_100057C80(v5);
  v7 = v0[89];
  v8 = v0[90];
  v9 = v0[91];

  sub_100057C80(v8);
  v10 = v0[93];

  return v0;
}

uint64_t sub_1000A76F8()
{
  sub_1000A7650();

  return swift_deallocClassInstance();
}

void sub_1000A7758(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1000A7B4C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000A77E8(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v15 = (v13 - 1) << (8 * v8);
    if (v8 <= 3)
    {
      v16 = *a1;
    }

    else
    {
      v15 = 0;
      v16 = *a1;
    }

    return v7 + (v16 | v15) + 1;
  }

  if (v12)
  {
    v13 = a1[v8];
    if (a1[v8])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v5 >= 0x7FFFFFFE)
  {
    return (*(v4 + 48))();
  }

  v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

void sub_1000A7944(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFE)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v18 = 0;
          v18[1] = 0;
          *v18 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v18 = a2;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

void sub_1000A7B4C()
{
  if (!qword_100137830)
  {
    sub_100009FA4(&qword_100137838, qword_1000F9900);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100137830);
    }
  }
}

uint64_t sub_1000A7BB0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000A7BC8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 5;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A7BEC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000A7C0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 597))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A7C54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 584) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 596) = 0;
    *(result + 592) = 0;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 597) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 597) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A7D48()
{
  sub_100003CDC(&qword_100137878, &qword_1000F9BD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F7EC0;
  *(inited + 32) = 0;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = 1;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 2;
  *(inited + 72) = swift_getKeyPath();
  v1 = sub_10003F9B4(inited);
  swift_setDeallocating();
  sub_100003CDC(&qword_100137880, &qword_1000F9C38);
  result = swift_arrayDestroy();
  qword_10014E948 = v1;
  return result;
}

Swift::Int sub_1000A7E2C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000C6358(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1000A85BC(v5);
  *a1 = v2;
  return result;
}

void *sub_1000A7E98(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = *(type metadata accessor for URL() - 8);
  v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v8 = _swiftEmptyArrayStorage;
  v18 = *(v6 + 72);
  while (1)
  {
    result = a1(&v20, v7);
    if (v3)
    {

      return v8;
    }

    v10 = v20;
    v11 = *(v20 + 16);
    v12 = v8[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v13 <= v8[3] >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v14 = v12 + v11;
      }

      else
      {
        v14 = v12;
      }

      result = sub_100031798(result, v14, 1, v8);
      v8 = result;
      if (*(v10 + 16))
      {
LABEL_15:
        if ((v8[3] >> 1) - v8[2] < v11)
        {
          goto LABEL_24;
        }

        sub_100003CDC(&qword_1001351A8, &qword_1000F9BC0);
        swift_arrayInitWithCopy();

        if (v11)
        {
          v15 = v8[2];
          v16 = __OFADD__(v15, v11);
          v17 = v15 + v11;
          if (v16)
          {
            goto LABEL_25;
          }

          v8[2] = v17;
        }

        goto LABEL_4;
      }
    }

    if (v11)
    {
      goto LABEL_23;
    }

LABEL_4:
    v7 += v18;
    if (!--v4)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1000A8078(uint64_t a1, char a2, void *a3)
{
  v7 = sub_100003CDC(&unk_1001389D0, &qword_1000F4F60);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v58 - v10;
  v12 = sub_100003CDC(&qword_100135198, &unk_1000F5080);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v17 = v58 - v16;
  v62 = *(a1 + 16);
  if (!v62)
  {
  }

  v58[1] = v7;
  v58[2] = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v61 = *(v15 + 72);
  v63 = a1;
  sub_100014894(a1 + v19, v58 - v16, &qword_100135198, &unk_1000F5080);
  sub_100020D24(v17, v11, &unk_1001389D0, &qword_1000F4F60);
  v60 = v18;
  v20 = *&v17[v18];
  v21 = *a3;
  v22 = sub_100061BF8(v11);
  v24 = v21[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v23;
  if (v21[3] < v27)
  {
    sub_100033A50(v27, a2 & 1);
    v29 = *a3;
    v22 = sub_100061BF8(v11);
    if ((v28 & 1) != (v30 & 1))
    {
LABEL_5:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

LABEL_8:
    if (v28)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v33 = v22;
  sub_10003A58C();
  v22 = v33;
  if (v28)
  {
LABEL_9:
    v31 = swift_allocError();
    swift_willThrow();

    v66 = v31;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000A184(v11, &unk_1001389D0, &qword_1000F4F60);
    }

    goto LABEL_26;
  }

LABEL_12:
  v34 = *a3;
  *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
  v35 = v34[6];
  v59 = *(v8 + 72);
  v36 = v22;
  sub_100020D24(v11, v35 + v59 * v22, &unk_1001389D0, &qword_1000F4F60);
  *(v34[7] + 8 * v36) = v20;
  v37 = v34[2];
  v26 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (!v26)
  {
    v34[2] = v38;
    v39 = v63;
    if (v62 == 1)
    {
    }

    v40 = v63 + v61 + v19;
    v41 = 1;
    while (v41 < *(v39 + 16))
    {
      sub_100014894(v40, v17, &qword_100135198, &unk_1000F5080);
      sub_100020D24(v17, v11, &unk_1001389D0, &qword_1000F4F60);
      v42 = *&v17[v60];
      v43 = *a3;
      v44 = sub_100061BF8(v11);
      v46 = v43[2];
      v47 = (v45 & 1) == 0;
      v26 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v26)
      {
        goto LABEL_23;
      }

      v49 = v45;
      if (v43[3] < v48)
      {
        sub_100033A50(v48, 1);
        v50 = *a3;
        v44 = sub_100061BF8(v11);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v49)
      {
        goto LABEL_9;
      }

      v52 = *a3;
      *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v53 = v44;
      sub_100020D24(v11, v52[6] + v59 * v44, &unk_1001389D0, &qword_1000F4F60);
      *(v52[7] + 8 * v53) = v42;
      v54 = v52[2];
      v26 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v26)
      {
        goto LABEL_24;
      }

      ++v41;
      v52[2] = v55;
      v40 += v61;
      v39 = v63;
      if (v62 == v41)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v64 = 0;
  v65 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v56._object = 0x8000000100104B40;
  v56._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v56);
  _print_unlocked<A, B>(_:_:)();
  v57._countAndFlagsBits = 39;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000A85BC(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1000A87E8(v7, v8, a1, v4);
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
    return sub_1000A86B4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000A86B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + a3);
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      result = *(v9 - 1);
      if (v7)
      {
        if (v7 == 1)
        {
          v10 = 1;
          if (!*(v9 - 1))
          {
            goto LABEL_4;
          }
        }

        else if (v7 == 2)
        {
          v10 = 2;
          if (!*(v9 - 1))
          {
            goto LABEL_4;
          }
        }

        else if (v7 != 3 || (v10 = 3, !*(v9 - 1)))
        {
LABEL_4:
          ++a3;
          ++v5;
          --v6;
          if (a3 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0;
        if (!*(v9 - 1))
        {
          goto LABEL_4;
        }
      }

      if (result == 1)
      {
        if (v10)
        {
          goto LABEL_4;
        }
      }

      else if (result == 2)
      {
        if (v10 >= 2)
        {
          goto LABEL_4;
        }
      }

      else if (result == 3 && v10 >= 3)
      {
        goto LABEL_4;
      }

      if (!v4)
      {
        break;
      }

      *v9 = result;
      *--v9 = v7;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000A87E8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v85 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_130:
    v5 = *v85;
    if (!*v85)
    {
      goto LABEL_168;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_132:
      v80 = *(v9 + 2);
      if (v80 >= 2)
      {
        while (*a3)
        {
          v81 = *&v9[16 * v80];
          v82 = *&v9[16 * v80 + 24];
          sub_1000A8EF4((*a3 + v81), (*a3 + *&v9[16 * v80 + 16]), *a3 + v82, v5);
          if (v6)
          {
          }

          if (v82 < v81)
          {
            goto LABEL_155;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1000CACF4(v9);
          }

          if (v80 - 2 >= *(v9 + 2))
          {
            goto LABEL_156;
          }

          v83 = &v9[16 * v80];
          *v83 = v81;
          *(v83 + 1) = v82;
          result = sub_1000CAC68(v80 - 1);
          v80 = *(v9 + 2);
          if (v80 <= 1)
          {
          }
        }

        goto LABEL_166;
      }
    }

LABEL_162:
    result = sub_1000CACF4(v9);
    v9 = result;
    goto LABEL_132;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 >= v7)
    {
LABEL_31:
      v17 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
      v18 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
      v19 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
      goto LABEL_42;
    }

    v11 = *a3;
    result = sub_1000CAD90(*(*a3 + v8), *(*a3 + v10));
    v12 = v10 + 2;
    if (v10 + 2 < v7)
    {
      v13 = *(v11 + v8);
      while (1)
      {
        v14 = *(v11 + v12);
        if (*(v11 + v12))
        {
          switch(v14)
          {
            case 1:
              v15 = 1;
              if (!v13)
              {
                goto LABEL_15;
              }

              break;
            case 2:
              v15 = 2;
              if (!v13)
              {
                goto LABEL_15;
              }

              break;
            case 3:
              v15 = 3;
              if (!v13)
              {
LABEL_15:
                v16 = 0;
                goto LABEL_24;
              }

              break;
            default:
              if (result)
              {
                v17 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
                v18 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
                v19 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
                if (v12 < v10)
                {
                  goto LABEL_159;
                }

LABEL_34:
                if (v10 < v12)
                {
                  v20 = v12 - 1;
                  v21 = v10;
                  do
                  {
                    if (v21 != v20)
                    {
                      v23 = *a3;
                      if (!*a3)
                      {
                        goto LABEL_165;
                      }

                      v24 = *(v23 + v21);
                      *(v23 + v21) = *(v23 + v20);
                      *(v23 + v20) = v24;
                    }
                  }

                  while (++v21 < v20--);
                }

                v8 = v12;
                goto LABEL_42;
              }

              goto LABEL_25;
          }
        }

        else
        {
          v15 = 0;
          if (!v13)
          {
            goto LABEL_15;
          }
        }

        switch(v13)
        {
          case 1:
            v16 = 1;
            goto LABEL_24;
          case 2:
            v16 = 2;
            goto LABEL_24;
          case 3:
            v16 = 3;
LABEL_24:
            if (((result ^ (v15 >= v16)) & 1) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_25;
        }

        if ((result & 1) == 0)
        {
          v8 = v12;
          goto LABEL_31;
        }

LABEL_25:
        ++v12;
        v13 = v14;
        if (v7 == v12)
        {
          v12 = v7;
          break;
        }
      }
    }

LABEL_32:
    v17 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
    v18 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
    v19 = &_sSo8NSObjectC10ObjectiveCE2eeoiySbAB_ABtFZ_ptr;
    v8 = v12;
    if (result)
    {
      if (v12 < v10)
      {
        goto LABEL_159;
      }

      goto LABEL_34;
    }

LABEL_42:
    v25 = a3[1];
    if (v8 < v25)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_158;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_77:
    if (v8 < v10)
    {
      goto LABEL_157;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000317BC(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v5 = *(v9 + 2);
    v35 = *(v9 + 3);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_1000317BC((v35 > 1), v5 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v36;
    v37 = &v9[16 * v5];
    *(v37 + 4) = v10;
    *(v37 + 5) = v8;
    v38 = *v85;
    if (!*v85)
    {
      goto LABEL_167;
    }

    if (v5)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v9 + 4);
          v41 = *(v9 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_97:
          if (v43)
          {
            goto LABEL_146;
          }

          v56 = &v9[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_149;
          }

          v62 = &v9[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_152;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_153;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_118;
          }

          goto LABEL_111;
        }

        v66 = &v9[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_111:
        if (v61)
        {
          goto LABEL_148;
        }

        v69 = &v9[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_151;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_118:
        v5 = v39 - 1;
        if (v39 - 1 >= v36)
        {
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
LABEL_150:
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
          goto LABEL_161;
        }

        if (!*a3)
        {
          goto LABEL_164;
        }

        v77 = *&v9[16 * v5 + 32];
        v78 = *&v9[16 * v39 + 40];
        sub_1000A8EF4((*a3 + v77), (*a3 + *&v9[16 * v39 + 32]), *a3 + v78, v38);
        if (v6)
        {
        }

        if (v78 < v77)
        {
          goto LABEL_142;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000CACF4(v9);
        }

        if (v5 >= *(v9 + 2))
        {
          goto LABEL_143;
        }

        v79 = &v9[16 * v5];
        *(v79 + 4) = v77;
        *(v79 + 5) = v78;
        result = sub_1000CAC68(v39);
        v36 = *(v9 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v9[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_144;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_145;
      }

      v51 = &v9[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_147;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_150;
      }

      if (v55 >= v47)
      {
        v73 = &v9[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_154;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_118;
      }

      goto LABEL_97;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_130;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_160;
  }

  if (v10 + a4 < v25)
  {
    v25 = v10 + a4;
  }

  if (v25 < v10)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  if (v8 == v25)
  {
    goto LABEL_77;
  }

  v26 = *a3;
  v27 = (*a3 + v8);
  v28 = v10 - v8;
LABEL_52:
  v29 = *(v26 + v8);
  v30 = v28;
  v31 = v27;
  while (1)
  {
    v32 = *(v31 - 1);
    if (v29)
    {
      if (*(v17 + 3785) == v29)
      {
        v33 = 1;
        if (!*(v31 - 1))
        {
          goto LABEL_51;
        }
      }

      else
      {
        if (*(v18 + 3786) != v29)
        {
          if (*(v19 + 3787) == v29)
          {
            v33 = 3;
            if (*(v31 - 1))
            {
              goto LABEL_64;
            }
          }

LABEL_51:
          ++v8;
          ++v27;
          --v28;
          if (v8 == v25)
          {
            v8 = v25;
            goto LABEL_77;
          }

          goto LABEL_52;
        }

        v33 = 2;
        if (!*(v31 - 1))
        {
          goto LABEL_51;
        }
      }
    }

    else
    {
      v33 = 0;
      if (!*(v31 - 1))
      {
        goto LABEL_51;
      }
    }

LABEL_64:
    if (*(v17 + 3785) == v32)
    {
      if (v33)
      {
        goto LABEL_51;
      }
    }

    else if (*(v18 + 3786) == v32)
    {
      if (v33 >= 2)
      {
        goto LABEL_51;
      }
    }

    else if (*(v19 + 3787) == v32 && v33 >= 3)
    {
      goto LABEL_51;
    }

    if (!v26)
    {
      break;
    }

    *v31 = v32;
    *--v31 = v29;
    if (__CFADD__(v30++, 1))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
  return result;
}

uint64_t sub_1000A8EF4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v17 = *--v15;
          if (sub_1000CAD90(v17, *v14))
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = *v15;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = *v14;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        if (sub_1000CAD90(*v6, *v4))
        {
          v11 = v6 + 1;
          v12 = v6;
          if (v7 >= v6 && v7 < v11)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v13 = v4 + 1;
          v12 = v4;
          v11 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        *v7 = *v12;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v11;
          if (v11 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_1000A90F8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
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
      sub_1000D4ED8(v12, a3, a4, a5);
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
  sub_1000A9284(v8, v9, a3, a4, a5);
  return sub_1000128D8(a3, a4);
}

uint64_t sub_1000A9284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X8>)
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
    sub_1000D4ED8(v11, a3, a4, a5);
    return sub_1000128D8(a3, a4);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000A9344()
{
  sub_100003C90((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000A9398()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[11];

  v6 = v0[12];

  v7 = v0[13];

  v8 = v0[14];

  v9 = v0[16];

  v10 = v0[18];

  if (v0[19] >= 6uLL)
  {
  }

  v11 = v0[21];

  v12 = v0[22];

  v13 = v0[23];

  v14 = v0[25];

  v15 = v0[28];

  v16 = v0[29];

  v17 = v0[31];

  v18 = v0[33];

  v19 = v0[35];

  v20 = v0[37];

  v21 = v0[39];

  v22 = v0[40];

  v23 = v0[41];

  v24 = v0[42];

  v25 = v0[43];

  v26 = v0[44];

  v27 = v0[46];

  v28 = v0[48];

  v29 = v0[50];

  v30 = v0[52];

  v31 = v0[54];

  v32 = v0[55];

  if (v0[56])
  {

    v33 = v0[57];
  }

  v34 = v0[58];

  if (v0[60])
  {

    v35 = v0[62];

    v36 = v0[64];

    v37 = v0[65];

    v38 = v0[66];

    v39 = v0[67];

    v40 = v0[68];
  }

  v41 = v0[70];

  if (v0[71])
  {

    v42 = v0[72];

    v43 = v0[73];

    v44 = v0[74];

    v45 = v0[75];
  }

  sub_100003C90(v0 + 77);

  return _swift_deallocObject(v0, 656, 7);
}

unint64_t sub_1000A958C()
{
  result = qword_1001373C0;
  if (!qword_1001373C0)
  {
    type metadata accessor for UncachedBundle();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001373C0);
  }

  return result;
}

BOOL sub_1000A9608()
{
  if (Img4DecodeInitPayload)
  {
    v0 = Img4DecodeInit == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

unint64_t sub_1000A9724()
{
  result = qword_100137870;
  if (!qword_100137870)
  {
    sub_100009FEC(255, &qword_100137468, NSBundle_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100137870);
  }

  return result;
}

uint64_t sub_1000A979C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000A97E4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_1000A983C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1000A9858(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1000A98A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A9908()
{
  result = qword_100137888;
  if (!qword_100137888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100137888);
  }

  return result;
}

unint64_t sub_1000A9960()
{
  result = qword_100137890;
  if (!qword_100137890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100137890);
  }

  return result;
}

unint64_t sub_1000A99B8()
{
  result = qword_100137898;
  if (!qword_100137898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100137898);
  }

  return result;
}

unint64_t sub_1000A9A10()
{
  result = qword_1001378A0;
  if (!qword_1001378A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378A0);
  }

  return result;
}

uint64_t sub_1000A9A64(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1751347809 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6169726176 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C656E72656BLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010A030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xED00007368746150 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010A050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010A070 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1000A9CC0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100003CDC(&qword_1001378A8, &qword_1000F9F18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v39 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v47 = a1;
  sub_100003C4C(a1, v10);
  sub_1000AA290();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v48 = v2;
    v12 = 0;
    v13 = 0;
    v14 = 0x6534366D7261;
    v16 = 0xE600000000000000;
    v17 = 0xE000000000000000;
    v18 = 0xE000000000000000;
    v46 = _swiftEmptyArrayStorage;
LABEL_4:
    sub_100003C90(v47);
    v55 = v14;
    v56 = v16;
    v57 = v13;
    v58 = v18;
    v59 = v12;
    v60 = v17;
    v61 = _swiftEmptyArrayStorage;
    v62 = _swiftEmptyArrayStorage;
    v63 = v46;
    v64 = _swiftEmptyArrayStorage;
    return sub_1000AA2E4(&v55);
  }

  LOBYTE(v55) = 0;
  v20 = a2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v44 = v21;
  v45 = v15;
  LOBYTE(v55) = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v23;
  v43 = v22;
  LOBYTE(v55) = 2;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = 0;
  v41 = v25;
  v42 = v24;
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  LOBYTE(v49) = 3;
  v26 = sub_10001945C(&qword_1001345F8);
  v27 = v48;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v27)
  {
    v48 = v27;
    (*(v6 + 8))(v9, v5);
    v46 = _swiftEmptyArrayStorage;
    v14 = v45;
    v16 = v44;
    v13 = v43;
    v12 = v42;
    v17 = v41;
    goto LABEL_4;
  }

  v28 = v55;
  LOBYTE(v49) = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v29 = v26;
  v30 = v55;
  LOBYTE(v49) = 5;
  v48 = v29;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v46 = v55;
  v54 = 6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v48 = 0;
  (*(v6 + 8))(v9, v5);
  v39 = v65;
  v31 = v45;
  v32 = v44;
  *&v49 = v45;
  *(&v49 + 1) = v44;
  v33 = v43;
  *&v50 = v43;
  *(&v50 + 1) = v18;
  v40 = v18;
  v34 = v42;
  v35 = v41;
  *&v51 = v42;
  *(&v51 + 1) = v41;
  *&v52 = v28;
  *(&v52 + 1) = v30;
  v36 = v46;
  *&v53 = v46;
  *(&v53 + 1) = v65;
  sub_1000AA314(&v49, &v55);
  sub_100003C90(v47);
  v55 = v31;
  v56 = v32;
  v57 = v33;
  v58 = v40;
  v59 = v34;
  v60 = v35;
  v61 = v28;
  v62 = v30;
  v63 = v36;
  v64 = v39;
  result = sub_1000AA2E4(&v55);
  v37 = v52;
  v20[2] = v51;
  v20[3] = v37;
  v20[4] = v53;
  v38 = v50;
  *v20 = v49;
  v20[1] = v38;
  return result;
}

unint64_t sub_1000AA290()
{
  result = qword_1001378B0;
  if (!qword_1001378B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ExtensionManager.Settings.BuildManifest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ExtensionManager.Settings.BuildManifest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000AA4A0()
{
  result = qword_1001378C0;
  if (!qword_1001378C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378C0);
  }

  return result;
}

unint64_t sub_1000AA4F8()
{
  result = qword_1001378C8;
  if (!qword_1001378C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378C8);
  }

  return result;
}

unint64_t sub_1000AA550()
{
  result = qword_1001378D0;
  if (!qword_1001378D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378D0);
  }

  return result;
}

__n128 sub_1000AA5AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000AA5D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB5 && *(a1 + 73))
  {
    return (*a1 + 181);
  }

  v3 = *(a1 + 72);
  if (v3 <= 0x4B)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000AA618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB4)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 181;
    if (a3 >= 0xB5)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB5)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 72) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000AA670(uint64_t result, unsigned int a2)
{
  if (a2 >= 0x4B)
  {
    *result = a2 - 75;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    LOBYTE(a2) = 75;
  }

  *(result + 72) = a2;
  return result;
}

unint64_t sub_1000AA6B0()
{
  result = qword_1001378D8;
  if (!qword_1001378D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001378D8);
  }

  return result;
}

uint64_t sub_1000AC100()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AC134@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OSSignpostID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for POSIXError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  errno.getter();
  result = POSIXErrorCode.init(rawValue:)();
  if ((result & 0x100000000) != 0 && (result = POSIXErrorCode.init(rawValue:)(), (result & 0x100000000) != 0))
  {
    __break(1u);
  }

  else
  {
    v17[3] = result;
    sub_1000B50B0(_swiftEmptyArrayStorage);
    sub_100068A24();
    _BridgedStoredNSError.init(_:userInfo:)();
    static os_signpost_type_t.event.getter();
    if (qword_100133AA0 != -1)
    {
      swift_once();
    }

    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1000F3160;
    (*(v8 + 16))(v11, a1, v7);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_100003D24();
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    static OSSignpostID.exclusive.getter();
    os_signpost(_:dso:log:name:signpostID:_:_:)();

    return (*(v3 + 8))(v6, v2);
  }

  return result;
}

id sub_1000AC3E4()
{
  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  v2 = NSOSStatusErrorDomain;
  v3 = sub_1000AA704(v2);
  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  sub_10003E208(inited);
  swift_setDeallocating();
  sub_10009EEF4(inited + 32);
  v5 = objc_allocWithZone(NSError);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7 = [v5 initWithDomain:v2 code:5 userInfo:isa];

  return v7;
}

uint64_t sub_1000AC50C(char a1)
{
  result = 0x656C7069746C756DLL;
  switch(a1)
  {
    case 1:
      return 0x6C61697265736564;
    case 2:
    case 16:
    case 58:
    case 60:
    case 62:
      return 0xD000000000000013;
    case 3:
      return 0x65526C656E72656BLL;
    case 4:
      return 0x694B726576697264;
    case 5:
      return 0x6F69736E65747865;
    case 6:
      return 0x697463656C6C6F63;
    case 7:
    case 19:
    case 47:
    case 61:
      return 0xD000000000000011;
    case 8:
      return 0x656372756F736572;
    case 9:
      return 0x7A696C6169726573;
    case 10:
      return 0x4164696C61766E69;
    case 11:
      return 0x646E756F46746F6ELL;
    case 12:
    case 63:
    case 67:
      v4 = 5;
      goto LABEL_73;
    case 13:
      return 0x6E697A696C616572;
    case 14:
      return 0xD000000000000014;
    case 15:
    case 17:
    case 31:
      return 0xD000000000000018;
    case 18:
      v3 = 0x6164696C6176;
      goto LABEL_42;
    case 20:
      return 0x74737973656C6966;
    case 21:
      v5 = 1802725732;
      goto LABEL_49;
    case 22:
      v5 = 2003790950;
LABEL_49:
      result = v5 | 0x6563634100000000;
      break;
    case 23:
      result = 0x797265766F636572;
      break;
    case 24:
      result = 0x6363416D6172766ELL;
      break;
    case 25:
      result = 0x61507972616E6962;
      break;
    case 26:
      result = 0x6556657275747566;
      break;
    case 27:
      result = 0x6975426568636163;
      break;
    case 28:
      result = 0x676E6967617473;
      break;
    case 29:
      result = 0x6F506D6574737973;
      break;
    case 30:
      result = 0xD000000000000010;
      break;
    case 32:
      result = 0x69746E6568747561;
      break;
    case 33:
      result = 0x786F62646E6173;
      break;
    case 34:
      result = 0x72756769666E6F63;
      break;
    case 35:
      result = 0x45676E6967676F6CLL;
      break;
    case 36:
      result = 0xD000000000000010;
      break;
    case 37:
      result = 0xD000000000000017;
      break;
    case 38:
      result = 0x4B64696C61766E69;
      break;
    case 39:
      result = 0x64616F6C6E75;
      break;
    case 40:
      result = 0x6F7272457473696CLL;
      break;
    case 41:
      result = 0xD000000000000010;
      break;
    case 42:
      result = 0x74617473706D7564;
      break;
    case 43:
      result = 0x65736F6E67616964;
      break;
    case 44:
      result = 0x696C6F50746F6F62;
      break;
    case 45:
      result = 0x6F69747065637865;
      break;
    case 46:
      result = 0x6E67695365646F63;
      break;
    case 48:
      result = 0xD000000000000010;
      break;
    case 49:
      result = 0x6F42656661536E69;
      break;
    case 50:
      result = 0x6E69777261446E69;
      break;
    case 51:
      result = 0x6C616E7265746E69;
      break;
    case 52:
      result = 0x7365726975716572;
      break;
    case 53:
      result = 0x4F6E6567634B6E69;
      break;
    case 54:
      result = 0xD000000000000012;
      break;
    case 55:
      result = 0x64756C6378456E69;
      break;
    case 56:
      result = 0x6F6974617267696DLL;
      break;
    case 57:
      result = 0xD000000000000010;
      break;
    case 59:
      result = 0x45746573656C6966;
      break;
    case 64:
      result = 0x6F63655274786564;
      break;
    case 65:
      result = 0xD000000000000021;
      break;
    case 66:
      result = 0xD00000000000002ALL;
      break;
    case 68:
      v4 = 10;
LABEL_73:
      result = v4 | 0xD000000000000010;
      break;
    case 69:
      result = 0x5264696C61766E69;
      break;
    case 70:
      v3 = 0x63656E6E6F63;
LABEL_42:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      break;
    case 71:
      result = 0x74754F64656D6974;
      break;
    case 72:
      result = 2037609826;
      break;
    case 73:
      result = 0x74656D6874697261;
      break;
    case 74:
      result = 0x65646F636544736DLL;
      break;
    case 75:
      result = 0x736C6F6F54736DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000ACE64(void *a1)
{
  v2 = sub_100003CDC(&qword_100137DD8, &qword_1000FAC50);
  v456 = *(v2 - 8);
  v457 = v2;
  v3 = *(v456 + 64);
  __chkstk_darwin(v2);
  v455 = &v235 - v4;
  v5 = sub_100003CDC(&qword_100137DE0, &qword_1000FAC58);
  v453 = *(v5 - 8);
  v454 = v5;
  v6 = *(v453 + 64);
  __chkstk_darwin(v5);
  v452 = &v235 - v7;
  v8 = sub_100003CDC(&qword_100137DE8, &qword_1000FAC60);
  v450 = *(v8 - 8);
  v451 = v8;
  v9 = *(v450 + 64);
  __chkstk_darwin(v8);
  v449 = &v235 - v10;
  v448 = sub_100003CDC(&qword_100137DF0, &qword_1000FAC68);
  v447 = *(v448 - 8);
  v11 = *(v447 + 64);
  __chkstk_darwin(v448);
  v446 = &v235 - v12;
  v445 = sub_100003CDC(&qword_100137DF8, &qword_1000FAC70);
  v444 = *(v445 - 8);
  v13 = *(v444 + 64);
  __chkstk_darwin(v445);
  v443 = &v235 - v14;
  v442 = sub_100003CDC(&qword_100137E00, &qword_1000FAC78);
  v441 = *(v442 - 8);
  v15 = *(v441 + 64);
  __chkstk_darwin(v442);
  v440 = &v235 - v16;
  v439 = sub_100003CDC(&qword_100137E08, &qword_1000FAC80);
  v438 = *(v439 - 8);
  v17 = *(v438 + 64);
  __chkstk_darwin(v439);
  v437 = &v235 - v18;
  v436 = sub_100003CDC(&qword_100137E10, &qword_1000FAC88);
  v435 = *(v436 - 8);
  v19 = *(v435 + 64);
  __chkstk_darwin(v436);
  v434 = &v235 - v20;
  v433 = sub_100003CDC(&qword_100137E18, &qword_1000FAC90);
  v432 = *(v433 - 8);
  v21 = *(v432 + 64);
  __chkstk_darwin(v433);
  v431 = &v235 - v22;
  v430 = sub_100003CDC(&qword_100137E20, &qword_1000FAC98);
  v429 = *(v430 - 8);
  v23 = *(v429 + 64);
  __chkstk_darwin(v430);
  v428 = &v235 - v24;
  v427 = sub_100003CDC(&qword_100137E28, &qword_1000FACA0);
  v426 = *(v427 - 8);
  v25 = *(v426 + 64);
  __chkstk_darwin(v427);
  v425 = &v235 - v26;
  v424 = sub_100003CDC(&qword_100137E30, &qword_1000FACA8);
  v423 = *(v424 - 8);
  v27 = *(v423 + 64);
  __chkstk_darwin(v424);
  v422 = &v235 - v28;
  v421 = sub_100003CDC(&qword_100137E38, &qword_1000FACB0);
  v420 = *(v421 - 8);
  v29 = *(v420 + 64);
  __chkstk_darwin(v421);
  v419 = &v235 - v30;
  v418 = sub_100003CDC(&qword_100137E40, &qword_1000FACB8);
  v417 = *(v418 - 8);
  v31 = *(v417 + 64);
  __chkstk_darwin(v418);
  v416 = &v235 - v32;
  v415 = sub_100003CDC(&qword_100137E48, &qword_1000FACC0);
  v414 = *(v415 - 8);
  v33 = *(v414 + 64);
  __chkstk_darwin(v415);
  v413 = &v235 - v34;
  v412 = sub_100003CDC(&qword_100137E50, &qword_1000FACC8);
  v411 = *(v412 - 8);
  v35 = *(v411 + 64);
  __chkstk_darwin(v412);
  v410 = &v235 - v36;
  v409 = sub_100003CDC(&qword_100137E58, &qword_1000FACD0);
  v408 = *(v409 - 8);
  v37 = *(v408 + 64);
  __chkstk_darwin(v409);
  v407 = &v235 - v38;
  v406 = sub_100003CDC(&qword_100137E60, &qword_1000FACD8);
  v405 = *(v406 - 8);
  v39 = *(v405 + 64);
  __chkstk_darwin(v406);
  v404 = &v235 - v40;
  v403 = sub_100003CDC(&qword_100137E68, &qword_1000FACE0);
  v402 = *(v403 - 8);
  v41 = *(v402 + 64);
  __chkstk_darwin(v403);
  v401 = &v235 - v42;
  v400 = sub_100003CDC(&qword_100137E70, &qword_1000FACE8);
  v399 = *(v400 - 8);
  v43 = *(v399 + 64);
  __chkstk_darwin(v400);
  v398 = &v235 - v44;
  v397 = sub_100003CDC(&qword_100137E78, &qword_1000FACF0);
  v396 = *(v397 - 8);
  v45 = *(v396 + 64);
  __chkstk_darwin(v397);
  v395 = &v235 - v46;
  v394 = sub_100003CDC(&qword_100137E80, &qword_1000FACF8);
  v393 = *(v394 - 8);
  v47 = *(v393 + 64);
  __chkstk_darwin(v394);
  v392 = &v235 - v48;
  v391 = sub_100003CDC(&qword_100137E88, &qword_1000FAD00);
  v390 = *(v391 - 8);
  v49 = *(v390 + 64);
  __chkstk_darwin(v391);
  v387 = &v235 - v50;
  v389 = sub_100003CDC(&qword_100137E90, &qword_1000FAD08);
  v388 = *(v389 - 8);
  v51 = *(v388 + 64);
  __chkstk_darwin(v389);
  v386 = &v235 - v52;
  v385 = sub_100003CDC(&qword_100137E98, &qword_1000FAD10);
  v384 = *(v385 - 8);
  v53 = *(v384 + 64);
  __chkstk_darwin(v385);
  v383 = &v235 - v54;
  v382 = sub_100003CDC(&qword_100137EA0, &qword_1000FAD18);
  v381 = *(v382 - 8);
  v55 = *(v381 + 64);
  __chkstk_darwin(v382);
  v380 = &v235 - v56;
  v379 = sub_100003CDC(&qword_100137EA8, &qword_1000FAD20);
  v378 = *(v379 - 8);
  v57 = *(v378 + 64);
  __chkstk_darwin(v379);
  v377 = &v235 - v58;
  v376 = sub_100003CDC(&qword_100137EB0, &qword_1000FAD28);
  v375 = *(v376 - 8);
  v59 = *(v375 + 64);
  __chkstk_darwin(v376);
  v374 = &v235 - v60;
  v371 = sub_100003CDC(&qword_100137EB8, &qword_1000FAD30);
  v370 = *(v371 - 8);
  v61 = *(v370 + 64);
  __chkstk_darwin(v371);
  v368 = &v235 - v62;
  v373 = sub_100003CDC(&qword_100137EC0, &qword_1000FAD38);
  v372 = *(v373 - 8);
  v63 = *(v372 + 64);
  __chkstk_darwin(v373);
  v369 = &v235 - v64;
  v367 = sub_100003CDC(&qword_100137EC8, &qword_1000FAD40);
  v366 = *(v367 - 8);
  v65 = *(v366 + 64);
  __chkstk_darwin(v367);
  v365 = &v235 - v66;
  v362 = sub_100003CDC(&qword_100137ED0, &qword_1000FAD48);
  v361 = *(v362 - 8);
  v67 = *(v361 + 64);
  __chkstk_darwin(v362);
  v359 = &v235 - v68;
  v364 = sub_100003CDC(&qword_100137ED8, &qword_1000FAD50);
  v363 = *(v364 - 8);
  v69 = *(v363 + 64);
  __chkstk_darwin(v364);
  v360 = &v235 - v70;
  v358 = sub_100003CDC(&qword_100137EE0, &qword_1000FAD58);
  v357 = *(v358 - 8);
  v71 = *(v357 + 64);
  __chkstk_darwin(v358);
  v356 = &v235 - v72;
  v355 = sub_100003CDC(&qword_100137EE8, &qword_1000FAD60);
  v354 = *(v355 - 8);
  v73 = *(v354 + 64);
  __chkstk_darwin(v355);
  v353 = &v235 - v74;
  v352 = sub_100003CDC(&qword_100137EF0, &qword_1000FAD68);
  v351 = *(v352 - 8);
  v75 = *(v351 + 64);
  __chkstk_darwin(v352);
  v350 = &v235 - v76;
  v349 = sub_100003CDC(&qword_100137EF8, &qword_1000FAD70);
  v348 = *(v349 - 8);
  v77 = *(v348 + 64);
  __chkstk_darwin(v349);
  v347 = &v235 - v78;
  v346 = sub_100003CDC(&qword_100137F00, &qword_1000FAD78);
  v345 = *(v346 - 8);
  v79 = *(v345 + 64);
  __chkstk_darwin(v346);
  v344 = &v235 - v80;
  v343 = sub_100003CDC(&qword_100137F08, &qword_1000FAD80);
  v342 = *(v343 - 8);
  v81 = *(v342 + 64);
  __chkstk_darwin(v343);
  v341 = &v235 - v82;
  v340 = sub_100003CDC(&qword_100137F10, &qword_1000FAD88);
  v339 = *(v340 - 8);
  v83 = *(v339 + 64);
  __chkstk_darwin(v340);
  v338 = &v235 - v84;
  v337 = sub_100003CDC(&qword_100137F18, &qword_1000FAD90);
  v336 = *(v337 - 8);
  v85 = *(v336 + 64);
  __chkstk_darwin(v337);
  v335 = &v235 - v86;
  v334 = sub_100003CDC(&qword_100137F20, &qword_1000FAD98);
  v333 = *(v334 - 8);
  v87 = *(v333 + 64);
  __chkstk_darwin(v334);
  v332 = &v235 - v88;
  v331 = sub_100003CDC(&qword_100137F28, &qword_1000FADA0);
  v330 = *(v331 - 8);
  v89 = *(v330 + 64);
  __chkstk_darwin(v331);
  v329 = &v235 - v90;
  v328 = sub_100003CDC(&qword_100137F30, &qword_1000FADA8);
  v327 = *(v328 - 8);
  v91 = *(v327 + 64);
  __chkstk_darwin(v328);
  v324 = &v235 - v92;
  v326 = sub_100003CDC(&qword_100137F38, &qword_1000FADB0);
  v325 = *(v326 - 8);
  v93 = *(v325 + 64);
  __chkstk_darwin(v326);
  v323 = &v235 - v94;
  v322 = sub_100003CDC(&qword_100137F40, &qword_1000FADB8);
  v321 = *(v322 - 8);
  v95 = *(v321 + 64);
  __chkstk_darwin(v322);
  v320 = &v235 - v96;
  v317 = sub_100003CDC(&qword_100137F48, &qword_1000FADC0);
  v316 = *(v317 - 8);
  v97 = *(v316 + 64);
  __chkstk_darwin(v317);
  v314 = &v235 - v98;
  v313 = sub_100003CDC(&qword_100137F50, &qword_1000FADC8);
  v312 = *(v313 - 8);
  v99 = *(v312 + 64);
  __chkstk_darwin(v313);
  v311 = &v235 - v100;
  v319 = sub_100003CDC(&qword_100137F58, &qword_1000FADD0);
  v318 = *(v319 - 8);
  v101 = *(v318 + 64);
  __chkstk_darwin(v319);
  v315 = &v235 - v102;
  v310 = sub_100003CDC(&qword_100137F60, &qword_1000FADD8);
  v309 = *(v310 - 8);
  v103 = *(v309 + 64);
  __chkstk_darwin(v310);
  v308 = &v235 - v104;
  v307 = sub_100003CDC(&qword_100137F68, &qword_1000FADE0);
  v306 = *(v307 - 8);
  v105 = *(v306 + 64);
  __chkstk_darwin(v307);
  v305 = &v235 - v106;
  v304 = sub_100003CDC(&qword_100137F70, &qword_1000FADE8);
  v303 = *(v304 - 8);
  v107 = *(v303 + 64);
  __chkstk_darwin(v304);
  v302 = &v235 - v108;
  v301 = sub_100003CDC(&qword_100137F78, &qword_1000FADF0);
  v300 = *(v301 - 8);
  v109 = *(v300 + 64);
  __chkstk_darwin(v301);
  v299 = &v235 - v110;
  v298 = sub_100003CDC(&qword_100137F80, &qword_1000FADF8);
  v297 = *(v298 - 8);
  v111 = *(v297 + 64);
  __chkstk_darwin(v298);
  v296 = &v235 - v112;
  v295 = sub_100003CDC(&qword_100137F88, &qword_1000FAE00);
  v293 = *(v295 - 8);
  v113 = *(v293 + 64);
  __chkstk_darwin(v295);
  v291 = &v235 - v114;
  v289 = sub_100003CDC(&qword_100137F90, &qword_1000FAE08);
  v288 = *(v289 - 8);
  v115 = *(v288 + 64);
  __chkstk_darwin(v289);
  v287 = &v235 - v116;
  v294 = sub_100003CDC(&qword_100137F98, &qword_1000FAE10);
  v292 = *(v294 - 8);
  v117 = *(v292 + 64);
  __chkstk_darwin(v294);
  v290 = &v235 - v118;
  v284 = sub_100003CDC(&qword_100137FA0, &qword_1000FAE18);
  v283 = *(v284 - 8);
  v119 = *(v283 + 64);
  __chkstk_darwin(v284);
  v281 = &v235 - v120;
  v280 = sub_100003CDC(&qword_100137FA8, &qword_1000FAE20);
  v279 = *(v280 - 8);
  v121 = *(v279 + 64);
  __chkstk_darwin(v280);
  v278 = &v235 - v122;
  v286 = sub_100003CDC(&qword_100137FB0, &qword_1000FAE28);
  v285 = *(v286 - 8);
  v123 = *(v285 + 64);
  __chkstk_darwin(v286);
  v282 = &v235 - v124;
  v277 = sub_100003CDC(&qword_100137FB8, &qword_1000FAE30);
  v276 = *(v277 - 8);
  v125 = *(v276 + 64);
  __chkstk_darwin(v277);
  v273 = &v235 - v126;
  v275 = sub_100003CDC(&qword_100137FC0, &qword_1000FAE38);
  v274 = *(v275 - 8);
  v127 = *(v274 + 64);
  __chkstk_darwin(v275);
  v272 = &v235 - v128;
  v271 = sub_100003CDC(&qword_100137FC8, &qword_1000FAE40);
  v270 = *(v271 - 8);
  v129 = *(v270 + 64);
  __chkstk_darwin(v271);
  v269 = &v235 - v130;
  v268 = sub_100003CDC(&qword_100137FD0, &qword_1000FAE48);
  v267 = *(v268 - 8);
  v131 = *(v267 + 64);
  __chkstk_darwin(v268);
  v266 = &v235 - v132;
  v265 = sub_100003CDC(&qword_100137FD8, &qword_1000FAE50);
  v264 = *(v265 - 8);
  v133 = *(v264 + 64);
  __chkstk_darwin(v265);
  v263 = &v235 - v134;
  v262 = sub_100003CDC(&qword_100137FE0, &qword_1000FAE58);
  v261 = *(v262 - 8);
  v135 = *(v261 + 64);
  __chkstk_darwin(v262);
  v260 = &v235 - v136;
  v256 = sub_100003CDC(&qword_100137FE8, &qword_1000FAE60);
  v255 = *(v256 - 8);
  v137 = *(v255 + 64);
  __chkstk_darwin(v256);
  v254 = &v235 - v138;
  v259 = sub_100003CDC(&qword_100137FF0, &qword_1000FAE68);
  v258 = *(v259 - 8);
  v139 = *(v258 + 64);
  __chkstk_darwin(v259);
  v257 = &v235 - v140;
  v251 = sub_100003CDC(&qword_100137FF8, &qword_1000FAE70);
  v250 = *(v251 - 8);
  v141 = *(v250 + 64);
  __chkstk_darwin(v251);
  v248 = &v235 - v142;
  v253 = sub_100003CDC(&qword_100138000, &qword_1000FAE78);
  v252 = *(v253 - 8);
  v143 = *(v252 + 64);
  __chkstk_darwin(v253);
  v249 = &v235 - v144;
  v247 = sub_100003CDC(&qword_100138008, &qword_1000FAE80);
  v245 = *(v247 - 8);
  v145 = *(v245 + 64);
  __chkstk_darwin(v247);
  v243 = &v235 - v146;
  v241 = sub_100003CDC(&qword_100138010, &qword_1000FAE88);
  v240 = *(v241 - 8);
  v147 = *(v240 + 64);
  __chkstk_darwin(v241);
  v239 = &v235 - v148;
  v246 = sub_100003CDC(&qword_100138018, &qword_1000FAE90);
  v244 = *(v246 - 8);
  v149 = *(v244 + 64);
  __chkstk_darwin(v246);
  v242 = &v235 - v150;
  v238 = sub_100003CDC(&qword_100138020, &qword_1000FAE98);
  v237 = *(v238 - 8);
  v151 = *(v237 + 64);
  __chkstk_darwin(v238);
  v153 = &v235 - v152;
  v154 = sub_100003CDC(&qword_100138028, &qword_1000FAEA0);
  v236 = *(v154 - 8);
  v155 = *(v236 + 64);
  __chkstk_darwin(v154);
  v157 = &v235 - v156;
  v158 = sub_100003CDC(&qword_100138030, &qword_1000FAEA8);
  v235 = *(v158 - 8);
  v159 = *(v235 + 64);
  __chkstk_darwin(v158);
  v161 = &v235 - v160;
  v462 = sub_100003CDC(&qword_100138038, &unk_1000FAEB0);
  v458 = *(v462 - 8);
  v162 = *(v458 + 64);
  __chkstk_darwin(v462);
  v164 = &v235 - v163;
  v165 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_1000BE2B0();
  v461 = v164;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v166 = *v460;
  v167 = *(v460 + 8);
  v168 = *(v460 + 16);
  v169 = *(v460 + 20);
  v170 = *(v460 + 21) | (*(v460 + 23) << 16);
  v171 = *(v460 + 24);
  v172 = *(v460 + 32);
  v173 = *(v460 + 40);
  v174 = *(v460 + 56);
  v175 = *(v460 + 64);
  switch(*(v460 + 72))
  {
    case 1:
      LOBYTE(v463) = 1;
      sub_1000BFBA0();
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v236 + 8))(v157, v154);
      goto LABEL_102;
    case 2:
      LOBYTE(v463) = 2;
      sub_1000BFB4C();
      v190 = v461;
      v189 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v191 = v238;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v237 + 8))(v153, v191);
      return (*(v458 + 8))(v190, v189);
    case 3:
      v193 = *(v460 + 21) | (*(v460 + 23) << 16);
      v194 = *(v460 + 20);
      v195 = *(v460 + 16);
      v460 = *(v460 + 8);
      LOBYTE(v463) = 3;
      v196 = v166;
      sub_1000BFAF8();
      v197 = v242;
      v178 = v461;
      v177 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v463 = v196;
      v472 = 0;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_10001945C(&qword_100134610);
      v198 = v246;
      v199 = v459;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v199)
      {
        LOBYTE(v463) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v244 + 8))(v197, v198);
      goto LABEL_98;
    case 4:
      LOBYTE(v463) = 4;
      sub_1000BFAA4();
      v179 = v239;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v241;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v272;
      goto LABEL_100;
    case 5:
      LOBYTE(v463) = 5;
      sub_1000BFA50();
      v179 = v243;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v247;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v277;
      goto LABEL_100;
    case 6:
      v460 = *(v460 + 24);
      LOBYTE(v463) = 6;
      sub_1000BF9FC();
      v208 = v249;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v463) = 0;
      v209 = v253;
      v210 = v459;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v210)
      {
        LOBYTE(v463) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v252 + 8))(v208, v209);
      goto LABEL_102;
    case 7:
      LOBYTE(v463) = 7;
      sub_1000BF9A8();
      v179 = v248;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v251;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v282;
      goto LABEL_100;
    case 8:
      v217 = *(v460 + 21) | (*(v460 + 23) << 16);
      v218 = *(v460 + 20);
      v219 = *(v460 + 16);
      v460 = *(v460 + 8);
      LOBYTE(v463) = 8;
      sub_1000BF954();
      v220 = v257;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v463) = 0;
      v221 = v259;
      v222 = v459;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v222)
      {
        LOBYTE(v463) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v258 + 8))(v220, v221);
      goto LABEL_102;
    case 9:
      LOBYTE(v463) = 10;
      sub_1000BF8AC();
      v179 = v260;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v262;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v293;
      goto LABEL_100;
    case 0xA:
      LOBYTE(v463) = 11;
      sub_1000BF858();
      v179 = v263;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v265;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v296;
      goto LABEL_100;
    case 0xB:
      LOBYTE(v463) = 12;
      sub_1000BF804();
      v179 = v266;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v268;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v299;
      goto LABEL_100;
    case 0xC:
      LOBYTE(v463) = 13;
      sub_1000BF7B0();
      v179 = v269;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v271;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v302;
      goto LABEL_100;
    case 0xD:
      v200 = *(v460 + 8);
      v455 = *(v460 + 48);
      v456 = v173;
      v201 = v170;
      LOBYTE(v463) = 14;
      v202 = v166;
      v203 = v168;
      v204 = v169;
      v460 = v171;
      v457 = v172;
      sub_1000BF708();
      v205 = v272;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v463 = v202;
      v464 = v200;
      v465 = v203;
      v466 = v204;
      v468 = BYTE2(v201);
      v467 = v201;
      v469 = v460;
      v470[0] = v457;
      v470[1] = v456;
      v470[2] = v455;
      v472 = 0;
      sub_1000BFDB4();
      v206 = v275;
      v207 = v459;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v207)
      {
        LOBYTE(v463) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      (*(v274 + 8))(v205, v206);
      return (*(v458 + 8))(v461, v462);
    case 0xE:
      v460 = *(v460 + 24);
      LOBYTE(v463) = 15;
      sub_1000BF6B4();
      v179 = v273;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v463) = 0;
      v182 = v277;
      v188 = v459;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v188)
      {
        LOBYTE(v463) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      v183 = &v308;
      goto LABEL_100;
    case 0xF:
      v456 = *(v460 + 40);
      v457 = v172;
      v460 = v171;
      LOBYTE(v463) = 16;
      sub_1000BF660();
      v179 = v282;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v463) = 0;
      v182 = v286;
      v192 = v459;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v192)
      {
        LOBYTE(v463) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
        LOBYTE(v463) = 2;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      v183 = &v317;
      goto LABEL_100;
    case 0x10:
      LOBYTE(v463) = 17;
      sub_1000BF60C();
      v179 = v278;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v280;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v311;
      goto LABEL_100;
    case 0x11:
      LOBYTE(v463) = 18;
      sub_1000BF5B8();
      v179 = v281;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v284;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v315;
      goto LABEL_100;
    case 0x12:
      v460 = *(v460 + 21) | (*(v460 + 23) << 16);
      v211 = v169;
      v212 = v168;
      LOBYTE(v463) = 19;
      sub_1000BF564();
      v213 = v290;
      v178 = v461;
      v177 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v463) = 0;
      v214 = v294;
      v215 = v459;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v215)
      {
        v463 = v212 | (v211 << 32) | (v460 << 40);
        v472 = 1;
        sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
        sub_10001945C(&qword_100134610);
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      v216 = &v324;
      goto LABEL_97;
    case 0x13:
      LOBYTE(v463) = 20;
      sub_1000BF510();
      v179 = v287;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v289;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v320;
      goto LABEL_100;
    case 0x14:
      LOBYTE(v463) = 21;
      sub_1000BF4BC();
      v179 = v291;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v295;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v325;
      goto LABEL_100;
    case 0x15:
      LOBYTE(v463) = 22;
      sub_1000BF468();
      v179 = v296;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v298;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v329;
      goto LABEL_100;
    case 0x16:
      LOBYTE(v463) = 23;
      sub_1000BF414();
      v179 = v299;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v301;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v332;
      goto LABEL_100;
    case 0x17:
      LOBYTE(v463) = 24;
      sub_1000BF3C0();
      v179 = v302;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v304;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v335;
      goto LABEL_100;
    case 0x18:
      LOBYTE(v463) = 25;
      sub_1000BF36C();
      v179 = v305;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v307;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v338;
      goto LABEL_100;
    case 0x19:
      LOBYTE(v463) = 26;
      sub_1000BF318();
      v179 = v308;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v310;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v341;
      goto LABEL_100;
    case 0x1A:
      v228 = *(v460 + 8);
      LOBYTE(v463) = 27;
      v229 = v166;
      sub_1000BF2C4();
      v230 = v315;
      v178 = v461;
      v177 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v463 = v229;
      v472 = 0;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      sub_10001945C(&qword_100134610);
      v231 = v319;
      v232 = v459;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v232)
      {
        v463 = v228;
        v472 = 1;
        sub_100003CDC(&qword_100136960, &qword_1000FAC40);
        sub_1000BFD08();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
      }

      (*(v318 + 8))(v230, v231);
      goto LABEL_98;
    case 0x1B:
      LOBYTE(v463) = 28;
      sub_1000BF270();
      v179 = v311;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v313;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v344;
      goto LABEL_100;
    case 0x1C:
      LOBYTE(v463) = 29;
      sub_1000BF21C();
      v179 = v314;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v317;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v348;
      goto LABEL_100;
    case 0x1D:
      LOBYTE(v463) = 30;
      sub_1000BF1C8();
      v179 = v320;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v322;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v353;
      goto LABEL_100;
    case 0x1E:
      LOBYTE(v463) = 31;
      v223 = v166;
      sub_1000BF174();
      v213 = v323;
      v178 = v461;
      v177 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v463 = v223;
      sub_100003CDC(&qword_100137840, &unk_1000FAC30);
      sub_1000BFC9C(&qword_100138040);
      v214 = v326;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v216 = &v357;
      goto LABEL_97;
    case 0x1F:
      LOBYTE(v463) = 32;
      sub_1000BF120();
      v179 = v324;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v328;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v359;
      goto LABEL_100;
    case 0x20:
      LOBYTE(v463) = 33;
      sub_1000BF0CC();
      v179 = v329;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v331;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v362;
      goto LABEL_100;
    case 0x21:
      LOBYTE(v463) = 34;
      sub_1000BF078();
      v179 = v332;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v334;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v365;
      goto LABEL_100;
    case 0x22:
      LOBYTE(v463) = 35;
      sub_1000BF024();
      v179 = v335;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v337;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v368;
      goto LABEL_100;
    case 0x23:
      LOBYTE(v463) = 36;
      sub_1000BEFD0();
      v179 = v338;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v340;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v371;
      goto LABEL_100;
    case 0x24:
      LOBYTE(v463) = 37;
      sub_1000BEF7C();
      v179 = v341;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v343;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v374;
      goto LABEL_100;
    case 0x25:
      LOBYTE(v463) = 38;
      sub_1000BEF28();
      v179 = v344;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v346;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v377;
      goto LABEL_100;
    case 0x26:
      LOBYTE(v463) = 39;
      sub_1000BEED4();
      v179 = v347;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v349;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v380;
      goto LABEL_100;
    case 0x27:
      LOBYTE(v463) = 40;
      sub_1000BEE80();
      v179 = v350;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v352;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v383;
      goto LABEL_100;
    case 0x28:
      LOBYTE(v463) = 41;
      sub_1000BEE2C();
      v179 = v353;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v355;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v386;
      goto LABEL_100;
    case 0x29:
      LOBYTE(v463) = 42;
      sub_1000BEDD8();
      v179 = v356;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v358;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v389;
      goto LABEL_100;
    case 0x2A:
      v460 = *(v460 + 24);
      LOBYTE(v463) = 43;
      sub_1000BED84();
      v179 = v360;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v463) = 0;
      v182 = v364;
      v227 = v459;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v227)
      {
        LOBYTE(v463) = 1;
        KeyedEncodingContainer.encode(_:forKey:)();
      }

      v183 = &v395;
      goto LABEL_100;
    case 0x2B:
      LOBYTE(v463) = 44;
      sub_1000BED30();
      v179 = v359;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v362;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v393;
      goto LABEL_100;
    case 0x2C:
      LOBYTE(v463) = 45;
      sub_1000BECDC();
      v179 = v365;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v367;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v398;
      goto LABEL_100;
    case 0x2D:
      v224 = *(v460 + 20);
      v225 = *(v460 + 16);
      LOBYTE(v463) = 46;
      sub_1000BEC88();
      v179 = v369;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v463) = 0;
      v182 = v373;
      v226 = v459;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (!v226)
      {
        LOBYTE(v463) = 1;
        v472 = v224 & 1;
        KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      }

      v183 = &v404;
      goto LABEL_100;
    case 0x2E:
      LOBYTE(v463) = 47;
      sub_1000BEC34();
      v179 = v368;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v371;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v402;
      goto LABEL_100;
    case 0x2F:
      LOBYTE(v463) = 48;
      sub_1000BEBE0();
      v179 = v374;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v376;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v407;
      goto LABEL_100;
    case 0x30:
      LOBYTE(v463) = 49;
      sub_1000BEB8C();
      v179 = v377;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v379;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v410;
      goto LABEL_100;
    case 0x31:
      LOBYTE(v463) = 50;
      sub_1000BEB38();
      v179 = v380;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v382;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v413;
      goto LABEL_100;
    case 0x32:
      LOBYTE(v463) = 51;
      sub_1000BEAE4();
      v179 = v383;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v385;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v416;
      goto LABEL_100;
    case 0x33:
      LOBYTE(v463) = 52;
      v234 = v166;
      sub_1000BEA90();
      v213 = v386;
      v178 = v461;
      v177 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v463 = v234;
      sub_100003CDC(&qword_100137840, &unk_1000FAC30);
      sub_1000BFC9C(&qword_100138040);
      v214 = v389;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v216 = &v420;
LABEL_97:
      (*(*(v216 - 32) + 1))(v213, v214);
      goto LABEL_98;
    case 0x34:
      LOBYTE(v463) = 53;
      sub_1000BEA3C();
      v179 = v387;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v391;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v422;
      goto LABEL_100;
    case 0x35:
      LOBYTE(v463) = 54;
      sub_1000BE9E8();
      v179 = v392;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v394;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v425;
      goto LABEL_100;
    case 0x36:
      LOBYTE(v463) = 55;
      sub_1000BE994();
      v179 = v395;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v397;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v428;
      goto LABEL_100;
    case 0x37:
      LOBYTE(v463) = 56;
      sub_1000BE940();
      v179 = v398;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v400;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v431;
      goto LABEL_100;
    case 0x38:
      LOBYTE(v463) = 57;
      sub_1000BE8EC();
      v179 = v401;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v403;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v434;
      goto LABEL_100;
    case 0x39:
      LOBYTE(v463) = 58;
      sub_1000BE898();
      v179 = v404;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v406;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v437;
      goto LABEL_100;
    case 0x3A:
      LOBYTE(v463) = 59;
      sub_1000BE844();
      v179 = v407;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v409;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v440;
      goto LABEL_100;
    case 0x3B:
      LOBYTE(v463) = 60;
      sub_1000BE7F0();
      v179 = v410;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v412;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v443;
      goto LABEL_100;
    case 0x3C:
      LOBYTE(v463) = 61;
      sub_1000BE79C();
      v179 = v413;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v415;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v446;
      goto LABEL_100;
    case 0x3D:
      LOBYTE(v463) = 62;
      sub_1000BE748();
      v179 = v416;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v418;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v449;
      goto LABEL_100;
    case 0x3E:
      LOBYTE(v463) = 63;
      sub_1000BE6F4();
      v179 = v419;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v421;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v452;
      goto LABEL_100;
    case 0x3F:
      LOBYTE(v463) = 64;
      sub_1000BE6A0();
      v179 = v422;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v424;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v455;
      goto LABEL_100;
    case 0x40:
      LOBYTE(v463) = 65;
      sub_1000BE64C();
      v179 = v425;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v427;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v458;
      goto LABEL_100;
    case 0x41:
      LOBYTE(v463) = 66;
      sub_1000BE5F8();
      v179 = v428;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v430;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v461;
      goto LABEL_100;
    case 0x42:
      LOBYTE(v463) = 67;
      sub_1000BE5A4();
      v179 = v431;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v433;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v464;
      goto LABEL_100;
    case 0x43:
      LOBYTE(v463) = 68;
      sub_1000BE550();
      v179 = v434;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v436;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = v470;
      goto LABEL_100;
    case 0x44:
      LOBYTE(v463) = 69;
      sub_1000BE4FC();
      v179 = v437;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v439;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v471;
      goto LABEL_100;
    case 0x45:
      LOBYTE(v463) = 70;
      sub_1000BE4A8();
      v179 = v440;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v442;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v473;
      goto LABEL_100;
    case 0x46:
      LOBYTE(v463) = 71;
      sub_1000BE454();
      v179 = v443;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v445;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v474;
      goto LABEL_100;
    case 0x47:
      LOBYTE(v463) = 72;
      sub_1000BE400();
      v179 = v446;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v448;
      KeyedEncodingContainer.encode(_:forKey:)();
      v183 = &v475;
LABEL_100:
      v233 = *(v183 - 32);
      goto LABEL_101;
    case 0x48:
      LOBYTE(v463) = 73;
      sub_1000BE3AC();
      v179 = v449;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v451;
      KeyedEncodingContainer.encode(_:forKey:)();
      v233 = v450;
      goto LABEL_101;
    case 0x49:
      LOBYTE(v463) = 74;
      sub_1000BE358();
      v179 = v452;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v454;
      KeyedEncodingContainer.encode(_:forKey:)();
      v233 = v453;
      goto LABEL_101;
    case 0x4A:
      LOBYTE(v463) = 75;
      sub_1000BE304();
      v179 = v455;
      v181 = v461;
      v180 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v182 = v457;
      KeyedEncodingContainer.encode(_:forKey:)();
      v233 = v456;
LABEL_101:
      (*(v233 + 8))(v179, v182);
LABEL_102:
      result = (*(v458 + 8))(v181, v180);
      break;
    case 0x4B:
      LOBYTE(v463) = 9;
      sub_1000BF900();
      v184 = v254;
      v186 = v461;
      v185 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v255 + 8))(v184, v256);
      result = (*(v458 + 8))(v186, v185);
      break;
    default:
      LOBYTE(v463) = 0;
      v176 = v166;
      sub_1000BFBF4();
      v178 = v461;
      v177 = v462;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v463 = v176;
      sub_100003CDC(&qword_100137DC0, &qword_1000FAC48);
      sub_1000BFE08(&qword_100138058, sub_1000BFE80);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v235 + 8))(v161, v158);
LABEL_98:
      result = (*(v458 + 8))(v178, v177);
      break;
  }

  return result;
}

uint64_t sub_1000B2290(uint64_t a1)
{
  v2 = sub_1000BE3AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B22CC(uint64_t a1)
{
  v2 = sub_1000BE3AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2308(uint64_t a1)
{
  v2 = sub_1000BF120();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2344(uint64_t a1)
{
  v2 = sub_1000BF120();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2380(uint64_t a1)
{
  v2 = sub_1000BF36C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B23BC(uint64_t a1)
{
  v2 = sub_1000BF36C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B23F8(uint64_t a1)
{
  v2 = sub_1000BED30();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2434(uint64_t a1)
{
  v2 = sub_1000BED30();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2470(uint64_t a1)
{
  v2 = sub_1000BE550();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B24AC(uint64_t a1)
{
  v2 = sub_1000BE550();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B24E8(uint64_t a1)
{
  v2 = sub_1000BE400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2524(uint64_t a1)
{
  v2 = sub_1000BE400();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2560()
{
  if (*v0)
  {
    result = 0x746E656449726570;
  }

  else
  {
    result = 12383;
  }

  *v0;
  return result;
}

uint64_t sub_1000B259C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656449726570 && a2 == 0xED00007265696669)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000B2678(uint64_t a1)
{
  v2 = sub_1000BF2C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B26B4(uint64_t a1)
{
  v2 = sub_1000BF2C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B26F0()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1000B2710(uint64_t a1)
{
  v2 = sub_1000BEC88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B274C(uint64_t a1)
{
  v2 = sub_1000BEC88();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2790@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B51C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B27C4(uint64_t a1)
{
  v2 = sub_1000BE2B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2800(uint64_t a1)
{
  v2 = sub_1000BE2B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B283C(uint64_t a1)
{
  v2 = sub_1000BF9A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2878(uint64_t a1)
{
  v2 = sub_1000BF9A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B28B4(uint64_t a1)
{
  v2 = sub_1000BF9FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B28F0(uint64_t a1)
{
  v2 = sub_1000BF9FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B292C(uint64_t a1)
{
  v2 = sub_1000BF078();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2968(uint64_t a1)
{
  v2 = sub_1000BF078();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B29A4(uint64_t a1)
{
  v2 = sub_1000BE4A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B29E0(uint64_t a1)
{
  v2 = sub_1000BE4A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2A1C(uint64_t a1)
{
  v2 = sub_1000BEBE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2A58(uint64_t a1)
{
  v2 = sub_1000BEBE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000B2A94()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 1953066351;
  }

  *v0;
  return result;
}

uint64_t sub_1000B2ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1953066351 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AEB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000B2BB0(uint64_t a1)
{
  v2 = sub_1000BF708();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2BEC(uint64_t a1)
{
  v2 = sub_1000BF708();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2C28(uint64_t a1)
{
  v2 = sub_1000BFBA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2C64(uint64_t a1)
{
  v2 = sub_1000BFBA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2CA0(uint64_t a1)
{
  v2 = sub_1000BE898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2CDC(uint64_t a1)
{
  v2 = sub_1000BE898();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2D18(uint64_t a1)
{
  v2 = sub_1000BE6A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2D54(uint64_t a1)
{
  v2 = sub_1000BE6A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2D90(uint64_t a1)
{
  v2 = sub_1000BED84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2DCC(uint64_t a1)
{
  v2 = sub_1000BED84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2E08(uint64_t a1)
{
  v2 = sub_1000BF4BC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2E44(uint64_t a1)
{
  v2 = sub_1000BF4BC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2E80(uint64_t a1)
{
  v2 = sub_1000BFAA4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2EBC(uint64_t a1)
{
  v2 = sub_1000BFAA4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2EF8(uint64_t a1)
{
  v2 = sub_1000BEDD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2F34(uint64_t a1)
{
  v2 = sub_1000BEDD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2F70(uint64_t a1)
{
  v2 = sub_1000BE9E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2FAC(uint64_t a1)
{
  v2 = sub_1000BE9E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B2FE8(uint64_t a1)
{
  v2 = sub_1000BECDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3024(uint64_t a1)
{
  v2 = sub_1000BECDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3060(uint64_t a1)
{
  v2 = sub_1000BFA50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B309C(uint64_t a1)
{
  v2 = sub_1000BFA50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B30D8(uint64_t a1)
{
  v2 = sub_1000BE844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3114(uint64_t a1)
{
  v2 = sub_1000BE844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3150(uint64_t a1)
{
  v2 = sub_1000BF510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B318C(uint64_t a1)
{
  v2 = sub_1000BF510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B31C8(uint64_t a1)
{
  v2 = sub_1000BF468();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3204(uint64_t a1)
{
  v2 = sub_1000BF468();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3240(uint64_t a1)
{
  v2 = sub_1000BF318();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B327C(uint64_t a1)
{
  v2 = sub_1000BF318();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B32B8(uint64_t a1)
{
  v2 = sub_1000BEB38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B32F4(uint64_t a1)
{
  v2 = sub_1000BEB38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3330(uint64_t a1)
{
  v2 = sub_1000BE994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B336C(uint64_t a1)
{
  v2 = sub_1000BE994();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B33A8(uint64_t a1)
{
  v2 = sub_1000BEA3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B33E4(uint64_t a1)
{
  v2 = sub_1000BEA3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3420(uint64_t a1)
{
  v2 = sub_1000BEB8C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B345C(uint64_t a1)
{
  v2 = sub_1000BEB8C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3498(uint64_t a1)
{
  v2 = sub_1000BF60C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B34D4(uint64_t a1)
{
  v2 = sub_1000BF60C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3510()
{
  v1 = 0x5664657269736564;
  if (*v0 != 1)
  {
    v1 = 0x65566C6175746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1000B3588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B696C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B35B0(uint64_t a1)
{
  v2 = sub_1000BF660();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B35EC(uint64_t a1)
{
  v2 = sub_1000BF660();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3628(uint64_t a1)
{
  v2 = sub_1000BEF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3664(uint64_t a1)
{
  v2 = sub_1000BEF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B36A0(uint64_t a1)
{
  v2 = sub_1000BEAE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B36DC(uint64_t a1)
{
  v2 = sub_1000BEAE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3718(uint64_t a1)
{
  v2 = sub_1000BF8AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3754(uint64_t a1)
{
  v2 = sub_1000BF8AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3790(uint64_t a1)
{
  v2 = sub_1000BEF28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B37CC(uint64_t a1)
{
  v2 = sub_1000BEF28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3808(uint64_t a1)
{
  v2 = sub_1000BF564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3844(uint64_t a1)
{
  v2 = sub_1000BF564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3880(uint64_t a1)
{
  v2 = sub_1000BE4FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B38BC(uint64_t a1)
{
  v2 = sub_1000BE4FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B38F8(uint64_t a1)
{
  v2 = sub_1000BE79C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3934(uint64_t a1)
{
  v2 = sub_1000BE79C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3970(uint64_t a1)
{
  v2 = sub_1000BF804();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B39AC(uint64_t a1)
{
  v2 = sub_1000BF804();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B39E8(uint64_t a1)
{
  v2 = sub_1000BFB4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3A24(uint64_t a1)
{
  v2 = sub_1000BFB4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3A60(uint64_t a1)
{
  v2 = sub_1000BFAF8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3A9C(uint64_t a1)
{
  v2 = sub_1000BFAF8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3AD8(uint64_t a1)
{
  v2 = sub_1000BE748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3B14(uint64_t a1)
{
  v2 = sub_1000BE748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3B50(uint64_t a1)
{
  v2 = sub_1000BEE80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3B8C(uint64_t a1)
{
  v2 = sub_1000BEE80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3BC8(uint64_t a1)
{
  v2 = sub_1000BF024();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3C04(uint64_t a1)
{
  v2 = sub_1000BF024();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3C40(uint64_t a1)
{
  v2 = sub_1000BE940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3C7C(uint64_t a1)
{
  v2 = sub_1000BE940();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000B3CB8()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t sub_1000B3CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AEB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000B3DE8(uint64_t a1)
{
  v2 = sub_1000BF6B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3E24(uint64_t a1)
{
  v2 = sub_1000BF6B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3E60(uint64_t a1)
{
  v2 = sub_1000BE7F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3E9C(uint64_t a1)
{
  v2 = sub_1000BE7F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3ED8(uint64_t a1)
{
  v2 = sub_1000BE358();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3F14(uint64_t a1)
{
  v2 = sub_1000BE358();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3F50(uint64_t a1)
{
  v2 = sub_1000BE304();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B3F8C(uint64_t a1)
{
  v2 = sub_1000BE304();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B3FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73726F727265 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000B4060(uint64_t a1)
{
  v2 = sub_1000BFBF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B409C(uint64_t a1)
{
  v2 = sub_1000BFBF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B40D8(uint64_t a1)
{
  v2 = sub_1000BF858();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4114(uint64_t a1)
{
  v2 = sub_1000BF858();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4150(uint64_t a1)
{
  v2 = sub_1000BF3C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B418C(uint64_t a1)
{
  v2 = sub_1000BF3C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B41C8(uint64_t a1)
{
  v2 = sub_1000BE6F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4204(uint64_t a1)
{
  v2 = sub_1000BE6F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4240(uint64_t a1)
{
  v2 = sub_1000BF7B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B427C(uint64_t a1)
{
  v2 = sub_1000BF7B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B42B8(uint64_t a1)
{
  v2 = sub_1000BF414();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B42F4(uint64_t a1)
{
  v2 = sub_1000BF414();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4330(uint64_t a1)
{
  v2 = sub_1000BEA90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B436C(uint64_t a1)
{
  v2 = sub_1000BEA90();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B43A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000B4474(uint64_t a1)
{
  v2 = sub_1000BF954();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B44B0(uint64_t a1)
{
  v2 = sub_1000BF954();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B44EC(uint64_t a1)
{
  v2 = sub_1000BEE2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4528(uint64_t a1)
{
  v2 = sub_1000BEE2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4564(uint64_t a1)
{
  v2 = sub_1000BF0CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B45A0(uint64_t a1)
{
  v2 = sub_1000BF0CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B45DC(uint64_t a1)
{
  v2 = sub_1000BF900();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4618(uint64_t a1)
{
  v2 = sub_1000BF900();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4654(uint64_t a1)
{
  v2 = sub_1000BF270();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4690(uint64_t a1)
{
  v2 = sub_1000BF270();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B46CC(uint64_t a1)
{
  v2 = sub_1000BEFD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4708(uint64_t a1)
{
  v2 = sub_1000BEFD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4744(uint64_t a1)
{
  v2 = sub_1000BE64C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4780(uint64_t a1)
{
  v2 = sub_1000BE64C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B47BC(uint64_t a1)
{
  v2 = sub_1000BE5F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B47F8(uint64_t a1)
{
  v2 = sub_1000BE5F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4834(uint64_t a1)
{
  v2 = sub_1000BE5A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4870(uint64_t a1)
{
  v2 = sub_1000BE5A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B48AC(uint64_t a1)
{
  v2 = sub_1000BF21C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B48E8(uint64_t a1)
{
  v2 = sub_1000BF21C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4924(uint64_t a1)
{
  v2 = sub_1000BE454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4960(uint64_t a1)
{
  v2 = sub_1000BE454();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B499C(uint64_t a1)
{
  v2 = sub_1000BEC34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B49D8(uint64_t a1)
{
  v2 = sub_1000BEC34();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4A14(uint64_t a1)
{
  v2 = sub_1000BF1C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4A50(uint64_t a1)
{
  v2 = sub_1000BF1C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4A8C(uint64_t a1)
{
  v2 = sub_1000BF174();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4AC8(uint64_t a1)
{
  v2 = sub_1000BF174();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4B04(uint64_t a1)
{
  v2 = sub_1000BEED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4B40(uint64_t a1)
{
  v2 = sub_1000BEED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4B7C(uint64_t a1)
{
  v2 = sub_1000BE8EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4BB8(uint64_t a1)
{
  v2 = sub_1000BE8EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B4BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000B4C74(uint64_t a1)
{
  v2 = sub_1000BF5B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B4CB0(uint64_t a1)
{
  v2 = sub_1000BF5B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_1000B4CEC@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000B6A9C(a1, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 57) = *(v7 + 9);
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_1000B4D54(uint64_t a1)
{
  v1 = sub_1000AA704(a1);
  v3 = v2;
  if (v1 == sub_1000AA704(v1) && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1000B4DE0(uint64_t a1)
{
  v1 = sub_1000AA704(a1);
  v3 = v2;
  if (v1 == sub_1000AA704(v1) && v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1000B4E6C(uint64_t a1)
{
  v1 = sub_1000AA704(a1);
  v3 = v2;
  if (v1 == sub_1000AA704(v1) && v3 == v4)
  {

    v5 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1000B4F0C(uint64_t a1)
{
  v1 = sub_1000AA704(a1);
  v3 = v2;
  if (v1 == sub_1000AA704(v1) && v3 == v4)
  {

    v5 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_1000B4FAC(uint64_t a1)
{
  v1 = sub_1000AA704(a1);
  v3 = v2;
  if (v1 == sub_1000AA704(v1) && v3 == v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

unint64_t sub_1000B5038(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100062020(a1, a2, v6);
}

unint64_t sub_1000B50B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003CDC(&qword_100134FD8, &qword_1000FAEC0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000BFED4(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1000B5038(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000B48C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1000B51C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C7069746C756DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C61697265736564 && a2 == 0xEF6E6F6974617A69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010AB50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65526C656E72656BLL && a2 == 0xED00007473657571 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x694B726576697264 && a2 == 0xEF68636E75614C74 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F69736E65747865 && a2 == 0xED000064616F4C6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEE0064616F4C6E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010AB70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEC00000064616F4CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7A696C6169726573 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4164696C61766E69 && a2 == 0xEF746E656D756772 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x646E756F46746F6ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010010AB90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E697A696C616572 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000010010ABB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010010ABD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010ABF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010010AC10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x69746164696C6176 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010AC30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x74737973656C6966 && a2 == 0xEA00000000006D65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x656363416B736964 && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x65636341776F6C66 && a2 == 0xEA00000000007373 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x797265766F636572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6363416D6172766ELL && a2 == 0xEB00000000737365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x61507972616E6962 && a2 == 0xED0000676E697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6556657275747566 && a2 == 0xED00006E6F697372 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6975426568636163 && a2 == 0xED0000676E69646CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x676E6967617473 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6F506D6574737973 && a2 == 0xEC0000007963696CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AC50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010010AC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0x69746E6568747561 && a2 == 0xEE006E6F69746163 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0x786F62646E6173 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0x45676E6967676F6CLL && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AC90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD000000000000017 && 0x800000010010ACB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0x4B64696C61766E69 && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0x64616F6C6E75 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0x6F7272457473696CLL && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010ACD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0x74617473706D7564 && a2 == 0xEE00726F72724565 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0x65736F6E67616964 && a2 == 0xED0000726F727245 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0x696C6F50746F6F62 && a2 == 0xEA00000000007963 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x6F69747065637865 && a2 == 0xED00007473694C6ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0x6E67695365646F63 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010ACF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AD10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0x6F42656661536E69 && a2 == 0xEA0000000000746FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0x6E69777261446E69 && a2 == 0xEA0000000000534FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0x7365726975716572 && a2 == 0xEE00746F6F626552 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0x4F6E6567634B6E69 && a2 == 0xE900000000000053 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010010AD30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0x64756C6378456E69 && a2 == 0xED00007473694C65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0x6F6974617267696DLL && a2 == 0xEE00726F7272456ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010010AD50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010AD70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0x45746573656C6966 && a2 == 0xEC000000726F7272 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010AD90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010010ADB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD000000000000013 && 0x800000010010ADD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010010ADF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0x6F63655274786564 && a2 == 0xEF726F7272456472 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0xD000000000000021 && 0x800000010010AE10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0xD00000000000002ALL && 0x800000010010AE40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010010AE70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010010AE90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0x5264696C61766E69 && a2 == 0xEE00747365757165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0x697463656E6E6F63 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0x74754F64656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 71;
  }

  else if (a1 == 2037609826 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 72;
  }

  else if (a1 == 0x74656D6874697261 && a2 == 0xEA00000000006369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 73;
  }

  else if (a1 == 0x65646F636544736DLL && a2 == 0xE900000000000072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 74;
  }

  else if (a1 == 0x736C6F6F54736DLL && a2 == 0xE700000000000000)
  {

    return 75;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 75;
    }

    else
    {
      return 76;
    }
  }
}

uint64_t sub_1000B696C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5664657269736564 && a2 == 0xEE006E6F69737265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65566C6175746361 && a2 == 0xED00006E6F697372)
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

uint64_t sub_1000B6A9C@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v964 = a2;
  v890 = sub_100003CDC(&qword_1001378E0, &qword_1000FA9C0);
  v893 = *(v890 - 8);
  v3 = *(v893 + 64);
  __chkstk_darwin(v890);
  v962 = &v739 - v4;
  v892 = sub_100003CDC(&qword_1001378E8, &qword_1000FA9C8);
  v891 = *(v892 - 8);
  v5 = *(v891 + 64);
  __chkstk_darwin(v892);
  v969 = &v739 - v6;
  v889 = sub_100003CDC(&qword_1001378F0, &qword_1000FA9D0);
  v888 = *(v889 - 8);
  v7 = *(v888 + 64);
  __chkstk_darwin(v889);
  v963 = &v739 - v8;
  v887 = sub_100003CDC(&qword_1001378F8, &qword_1000FA9D8);
  v886 = *(v887 - 8);
  v9 = *(v886 + 64);
  __chkstk_darwin(v887);
  v968 = &v739 - v10;
  v885 = sub_100003CDC(&qword_100137900, &qword_1000FA9E0);
  v884 = *(v885 - 8);
  v11 = *(v884 + 64);
  __chkstk_darwin(v885);
  v961 = &v739 - v12;
  v883 = sub_100003CDC(&qword_100137908, &qword_1000FA9E8);
  v882 = *(v883 - 8);
  v13 = *(v882 + 64);
  __chkstk_darwin(v883);
  v960 = &v739 - v14;
  v881 = sub_100003CDC(&qword_100137910, &qword_1000FA9F0);
  v880 = *(v881 - 8);
  v15 = *(v880 + 64);
  __chkstk_darwin(v881);
  v959 = &v739 - v16;
  v879 = sub_100003CDC(&qword_100137918, &qword_1000FA9F8);
  v878 = *(v879 - 8);
  v17 = *(v878 + 64);
  __chkstk_darwin(v879);
  v958 = &v739 - v18;
  v877 = sub_100003CDC(&qword_100137920, &qword_1000FAA00);
  v876 = *(v877 - 8);
  v19 = *(v876 + 64);
  __chkstk_darwin(v877);
  v957 = &v739 - v20;
  v875 = sub_100003CDC(&qword_100137928, &qword_1000FAA08);
  v874 = *(v875 - 8);
  v21 = *(v874 + 64);
  __chkstk_darwin(v875);
  v956 = &v739 - v22;
  v873 = sub_100003CDC(&qword_100137930, &qword_1000FAA10);
  v872 = *(v873 - 8);
  v23 = *(v872 + 64);
  __chkstk_darwin(v873);
  v955 = &v739 - v24;
  v871 = sub_100003CDC(&qword_100137938, &qword_1000FAA18);
  v870 = *(v871 - 8);
  v25 = *(v870 + 64);
  __chkstk_darwin(v871);
  v954 = &v739 - v26;
  v869 = sub_100003CDC(&qword_100137940, &qword_1000FAA20);
  v868 = *(v869 - 8);
  v27 = *(v868 + 64);
  __chkstk_darwin(v869);
  v953 = &v739 - v28;
  v867 = sub_100003CDC(&qword_100137948, &qword_1000FAA28);
  v866 = *(v867 - 8);
  v29 = *(v866 + 64);
  __chkstk_darwin(v867);
  v952 = &v739 - v30;
  v865 = sub_100003CDC(&qword_100137950, &qword_1000FAA30);
  v864 = *(v865 - 8);
  v31 = *(v864 + 64);
  __chkstk_darwin(v865);
  v951 = &v739 - v32;
  v863 = sub_100003CDC(&qword_100137958, &qword_1000FAA38);
  v862 = *(v863 - 8);
  v33 = *(v862 + 64);
  __chkstk_darwin(v863);
  v950 = &v739 - v34;
  v861 = sub_100003CDC(&qword_100137960, &qword_1000FAA40);
  v860 = *(v861 - 8);
  v35 = *(v860 + 64);
  __chkstk_darwin(v861);
  v949 = &v739 - v36;
  v859 = sub_100003CDC(&qword_100137968, &qword_1000FAA48);
  v858 = *(v859 - 8);
  v37 = *(v858 + 64);
  __chkstk_darwin(v859);
  v948 = &v739 - v38;
  v857 = sub_100003CDC(&qword_100137970, &qword_1000FAA50);
  v856 = *(v857 - 8);
  v39 = *(v856 + 64);
  __chkstk_darwin(v857);
  v947 = &v739 - v40;
  v855 = sub_100003CDC(&qword_100137978, &qword_1000FAA58);
  v854 = *(v855 - 8);
  v41 = *(v854 + 64);
  __chkstk_darwin(v855);
  v946 = &v739 - v42;
  v853 = sub_100003CDC(&qword_100137980, &qword_1000FAA60);
  v852 = *(v853 - 8);
  v43 = *(v852 + 64);
  __chkstk_darwin(v853);
  v945 = &v739 - v44;
  v851 = sub_100003CDC(&qword_100137988, &qword_1000FAA68);
  v850 = *(v851 - 8);
  v45 = *(v850 + 64);
  __chkstk_darwin(v851);
  v944 = &v739 - v46;
  v849 = sub_100003CDC(&qword_100137990, &qword_1000FAA70);
  v848 = *(v849 - 8);
  v47 = *(v848 + 64);
  __chkstk_darwin(v849);
  v943 = &v739 - v48;
  v847 = sub_100003CDC(&qword_100137998, &qword_1000FAA78);
  v846 = *(v847 - 8);
  v49 = *(v846 + 64);
  __chkstk_darwin(v847);
  v942 = &v739 - v50;
  v845 = sub_100003CDC(&qword_1001379A0, &qword_1000FAA80);
  v844 = *(v845 - 8);
  v51 = *(v844 + 64);
  __chkstk_darwin(v845);
  v941 = &v739 - v52;
  v843 = sub_100003CDC(&qword_1001379A8, &qword_1000FAA88);
  v842 = *(v843 - 8);
  v53 = *(v842 + 64);
  __chkstk_darwin(v843);
  v940 = &v739 - v54;
  v841 = sub_100003CDC(&qword_1001379B0, &qword_1000FAA90);
  v840 = *(v841 - 8);
  v55 = *(v840 + 64);
  __chkstk_darwin(v841);
  v939 = &v739 - v56;
  v839 = sub_100003CDC(&qword_1001379B8, &qword_1000FAA98);
  v838 = *(v839 - 8);
  v57 = *(v838 + 64);
  __chkstk_darwin(v839);
  v938 = &v739 - v58;
  v835 = sub_100003CDC(&qword_1001379C0, &qword_1000FAAA0);
  v834 = *(v835 - 8);
  v59 = *(v834 + 64);
  __chkstk_darwin(v835);
  v936 = &v739 - v60;
  v837 = sub_100003CDC(&qword_1001379C8, &qword_1000FAAA8);
  v836 = *(v837 - 8);
  v61 = *(v836 + 64);
  __chkstk_darwin(v837);
  v937 = &v739 - v62;
  v833 = sub_100003CDC(&qword_1001379D0, &qword_1000FAAB0);
  v832 = *(v833 - 8);
  v63 = *(v832 + 64);
  __chkstk_darwin(v833);
  v935 = &v739 - v64;
  v830 = sub_100003CDC(&qword_1001379D8, &qword_1000FAAB8);
  v829 = *(v830 - 8);
  v65 = *(v829 + 64);
  __chkstk_darwin(v830);
  v933 = &v739 - v66;
  v831 = sub_100003CDC(&qword_1001379E0, &qword_1000FAAC0);
  v828 = *(v831 - 8);
  v67 = *(v828 + 64);
  __chkstk_darwin(v831);
  v934 = &v739 - v68;
  v827 = sub_100003CDC(&qword_1001379E8, &qword_1000FAAC8);
  v826 = *(v827 - 8);
  v69 = *(v826 + 64);
  __chkstk_darwin(v827);
  v932 = &v739 - v70;
  v825 = sub_100003CDC(&qword_1001379F0, &qword_1000FAAD0);
  v824 = *(v825 - 8);
  v71 = *(v824 + 64);
  __chkstk_darwin(v825);
  v931 = &v739 - v72;
  v823 = sub_100003CDC(&qword_1001379F8, &qword_1000FAAD8);
  v822 = *(v823 - 8);
  v73 = *(v822 + 64);
  __chkstk_darwin(v823);
  v930 = &v739 - v74;
  v821 = sub_100003CDC(&qword_100137A00, &qword_1000FAAE0);
  v820 = *(v821 - 8);
  v75 = *(v820 + 64);
  __chkstk_darwin(v821);
  v929 = &v739 - v76;
  v819 = sub_100003CDC(&qword_100137A08, &qword_1000FAAE8);
  v818 = *(v819 - 8);
  v77 = *(v818 + 64);
  __chkstk_darwin(v819);
  v928 = &v739 - v78;
  v817 = sub_100003CDC(&qword_100137A10, &qword_1000FAAF0);
  v816 = *(v817 - 8);
  v79 = *(v816 + 64);
  __chkstk_darwin(v817);
  v927 = &v739 - v80;
  v815 = sub_100003CDC(&qword_100137A18, &qword_1000FAAF8);
  v814 = *(v815 - 8);
  v81 = *(v814 + 64);
  __chkstk_darwin(v815);
  v926 = &v739 - v82;
  v813 = sub_100003CDC(&qword_100137A20, &qword_1000FAB00);
  v812 = *(v813 - 8);
  v83 = *(v812 + 64);
  __chkstk_darwin(v813);
  v925 = &v739 - v84;
  v811 = sub_100003CDC(&qword_100137A28, &qword_1000FAB08);
  v810 = *(v811 - 8);
  v85 = *(v810 + 64);
  __chkstk_darwin(v811);
  v924 = &v739 - v86;
  v809 = sub_100003CDC(&qword_100137A30, &qword_1000FAB10);
  v808 = *(v809 - 8);
  v87 = *(v808 + 64);
  __chkstk_darwin(v809);
  v923 = &v739 - v88;
  v807 = sub_100003CDC(&qword_100137A38, &qword_1000FAB18);
  v806 = *(v807 - 8);
  v89 = *(v806 + 64);
  __chkstk_darwin(v807);
  v922 = &v739 - v90;
  v805 = sub_100003CDC(&qword_100137A40, &qword_1000FAB20);
  v804 = *(v805 - 8);
  v91 = *(v804 + 64);
  __chkstk_darwin(v805);
  v921 = &v739 - v92;
  v803 = sub_100003CDC(&qword_100137A48, &qword_1000FAB28);
  v802 = *(v803 - 8);
  v93 = *(v802 + 64);
  __chkstk_darwin(v803);
  v920 = &v739 - v94;
  v799 = sub_100003CDC(&qword_100137A50, &qword_1000FAB30);
  v798 = *(v799 - 8);
  v95 = *(v798 + 64);
  __chkstk_darwin(v799);
  v918 = &v739 - v96;
  v797 = sub_100003CDC(&qword_100137A58, &qword_1000FAB38);
  v796 = *(v797 - 8);
  v97 = *(v796 + 64);
  __chkstk_darwin(v797);
  v917 = &v739 - v98;
  v801 = sub_100003CDC(&qword_100137A60, &qword_1000FAB40);
  v800 = *(v801 - 8);
  v99 = *(v800 + 64);
  __chkstk_darwin(v801);
  v919 = &v739 - v100;
  v795 = sub_100003CDC(&qword_100137A68, &qword_1000FAB48);
  v794 = *(v795 - 8);
  v101 = *(v794 + 64);
  __chkstk_darwin(v795);
  v916 = &v739 - v102;
  v793 = sub_100003CDC(&qword_100137A70, &qword_1000FAB50);
  v792 = *(v793 - 8);
  v103 = *(v792 + 64);
  __chkstk_darwin(v793);
  v915 = &v739 - v104;
  v791 = sub_100003CDC(&qword_100137A78, &qword_1000FAB58);
  v790 = *(v791 - 8);
  v105 = *(v790 + 64);
  __chkstk_darwin(v791);
  v914 = &v739 - v106;
  v789 = sub_100003CDC(&qword_100137A80, &qword_1000FAB60);
  v788 = *(v789 - 8);
  v107 = *(v788 + 64);
  __chkstk_darwin(v789);
  v913 = &v739 - v108;
  v787 = sub_100003CDC(&qword_100137A88, &qword_1000FAB68);
  v786 = *(v787 - 8);
  v109 = *(v786 + 64);
  __chkstk_darwin(v787);
  v912 = &v739 - v110;
  v783 = sub_100003CDC(&qword_100137A90, &qword_1000FAB70);
  v782 = *(v783 - 8);
  v111 = *(v782 + 64);
  __chkstk_darwin(v783);
  v910 = &v739 - v112;
  v781 = sub_100003CDC(&qword_100137A98, &qword_1000FAB78);
  v780 = *(v781 - 8);
  v113 = *(v780 + 64);
  __chkstk_darwin(v781);
  v909 = &v739 - v114;
  v785 = sub_100003CDC(&qword_100137AA0, &qword_1000FAB80);
  v784 = *(v785 - 8);
  v115 = *(v784 + 64);
  __chkstk_darwin(v785);
  v911 = &v739 - v116;
  v777 = sub_100003CDC(&qword_100137AA8, &qword_1000FAB88);
  v776 = *(v777 - 8);
  v117 = *(v776 + 64);
  __chkstk_darwin(v777);
  v908 = &v739 - v118;
  v775 = sub_100003CDC(&qword_100137AB0, &qword_1000FAB90);
  v774 = *(v775 - 8);
  v119 = *(v774 + 64);
  __chkstk_darwin(v775);
  v907 = &v739 - v120;
  v779 = sub_100003CDC(&qword_100137AB8, &qword_1000FAB98);
  v778 = *(v779 - 8);
  v121 = *(v778 + 64);
  __chkstk_darwin(v779);
  v903 = &v739 - v122;
  v771 = sub_100003CDC(&qword_100137AC0, &qword_1000FABA0);
  v770 = *(v771 - 8);
  v123 = *(v770 + 64);
  __chkstk_darwin(v771);
  v906 = &v739 - v124;
  v773 = sub_100003CDC(&qword_100137AC8, &qword_1000FABA8);
  v772 = *(v773 - 8);
  v125 = *(v772 + 64);
  __chkstk_darwin(v773);
  v967 = &v739 - v126;
  v769 = sub_100003CDC(&qword_100137AD0, &qword_1000FABB0);
  v768 = *(v769 - 8);
  v127 = *(v768 + 64);
  __chkstk_darwin(v769);
  v901 = &v739 - v128;
  v767 = sub_100003CDC(&qword_100137AD8, &qword_1000FABB8);
  v766 = *(v767 - 8);
  v129 = *(v766 + 64);
  __chkstk_darwin(v767);
  v905 = &v739 - v130;
  v765 = sub_100003CDC(&qword_100137AE0, &qword_1000FABC0);
  v764 = *(v765 - 8);
  v131 = *(v764 + 64);
  __chkstk_darwin(v765);
  v904 = &v739 - v132;
  v763 = sub_100003CDC(&qword_100137AE8, &qword_1000FABC8);
  v762 = *(v763 - 8);
  v133 = *(v762 + 64);
  __chkstk_darwin(v763);
  v966 = &v739 - v134;
  v965 = sub_100003CDC(&qword_100137AF0, &qword_1000FABD0);
  v759 = *(v965 - 8);
  v135 = *(v759 + 64);
  __chkstk_darwin(v965);
  v900 = &v739 - v136;
  v761 = sub_100003CDC(&qword_100137AF8, &qword_1000FABD8);
  v760 = *(v761 - 8);
  v137 = *(v760 + 64);
  __chkstk_darwin(v761);
  v902 = &v739 - v138;
  v757 = sub_100003CDC(&qword_100137B00, &qword_1000FABE0);
  v756 = *(v757 - 8);
  v139 = *(v756 + 64);
  __chkstk_darwin(v757);
  v898 = &v739 - v140;
  v758 = sub_100003CDC(&qword_100137B08, &qword_1000FABE8);
  v755 = *(v758 - 8);
  v141 = *(v755 + 64);
  __chkstk_darwin(v758);
  v899 = &v739 - v142;
  v753 = sub_100003CDC(&qword_100137B10, &qword_1000FABF0);
  v752 = *(v753 - 8);
  v143 = *(v752 + 64);
  __chkstk_darwin(v753);
  v896 = &v739 - v144;
  v750 = sub_100003CDC(&qword_100137B18, &qword_1000FABF8);
  v749 = *(v750 - 8);
  v145 = *(v749 + 64);
  __chkstk_darwin(v750);
  v895 = &v739 - v146;
  v754 = sub_100003CDC(&qword_100137B20, &qword_1000FAC00);
  v751 = *(v754 - 8);
  v147 = *(v751 + 64);
  __chkstk_darwin(v754);
  v897 = &v739 - v148;
  v748 = sub_100003CDC(&qword_100137B28, &qword_1000FAC08);
  v747 = *(v748 - 8);
  v149 = *(v747 + 64);
  __chkstk_darwin(v748);
  v894 = &v739 - v150;
  v746 = sub_100003CDC(&qword_100137B30, &qword_1000FAC10);
  v745 = *(v746 - 8);
  v151 = *(v745 + 64);
  __chkstk_darwin(v746);
  v153 = &v739 - v152;
  v154 = sub_100003CDC(&qword_100137B38, &qword_1000FAC18);
  v744 = *(v154 - 8);
  v155 = *(v744 + 64);
  __chkstk_darwin(v154);
  v157 = &v739 - v156;
  v158 = sub_100003CDC(&qword_100137B40, &unk_1000FAC20);
  v159 = *(v158 - 8);
  v160 = *(v159 + 64);
  __chkstk_darwin(v158);
  v162 = &v739 - v161;
  v164 = a1[3];
  v163 = a1[4];
  v970 = a1;
  sub_100003C4C(a1, v164);
  sub_1000BE2B0();
  v165 = v971;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v971 = v165;
  if (v165)
  {
    return sub_100003C90(v970);
  }

  v741 = v157;
  v742 = v153;
  v740 = v154;
  v167 = v965;
  v166 = v966;
  v169 = v967;
  v168 = v968;
  v170 = v969;
  v743 = v159;
  v171 = KeyedDecodingContainer.allKeys.getter();
  if (*(v171 + 16) != 1 || (v172 = *(v171 + 32), v172 == 76))
  {
    v179 = v162;
    v180 = type metadata accessor for DecodingError();
    v181 = swift_allocError();
    v183 = v182;
    v184 = *(sub_100003CDC(&qword_100135E50, &qword_1000F7C00) + 48);
    *v183 = &type metadata for KMError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v180 - 8) + 104))(v183, enum case for DecodingError.typeMismatch(_:), v180);
    v971 = v181;
    swift_willThrow();
    (*(v743 + 8))(v179, v158);
LABEL_167:
    swift_unknownObjectRelease();
    return sub_100003C90(v970);
  }

  v739 = v171;
  switch(v172)
  {
    case 1:
      LOBYTE(v972) = 1;
      sub_1000BFBA0();
      v361 = v742;
      v362 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v362;
      if (v362)
      {
        goto LABEL_163;
      }

      v363 = v162;
      v175 = v158;
      v364 = v746;
      v177 = v361;
      v365 = KeyedDecodingContainer.decode(_:forKey:)();
      v366 = v743;
      v971 = 0;
      v158 = v365;
      v965 = v641;
      (*(v745 + 8))(v361, v364);
      v642 = *(v366 + 8);
      v162 = (v366 + 8);
      v642(v363, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 1;
      goto LABEL_179;
    case 2:
      LOBYTE(v972) = 2;
      sub_1000BFB4C();
      v337 = v894;
      v338 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v338;
      if (v338)
      {
        goto LABEL_163;
      }

      v175 = v748;
      v339 = KeyedDecodingContainer.decode(_:forKey:)();
      v340 = v743;
      v971 = 0;
      v965 = v630;
      v631 = v339;
      (*(v747 + 8))(v337, v175);
      v632 = *(v340 + 8);
      v177 = v340 + 8;
      v632(v162, v158);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      LODWORD(v158) = v631;
      v559 = v631 & 0xFFFFFFFF00000000;
      v560 = 2;
      goto LABEL_179;
    case 3:
      LOBYTE(v972) = 3;
      sub_1000BFAF8();
      v170 = v897;
      v351 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v351;
      if (v351)
      {
        goto LABEL_163;
      }

      v352 = v162;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      LOBYTE(v980) = 0;
      sub_10001945C(&qword_1001345F8);
      v353 = v754;
      v354 = v971;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v355 = v743;
      v971 = v354;
      if (v354)
      {
        (*(v751 + 8))(v170, v353);
        v550 = *(v355 + 8);
        v551 = v352;
        goto LABEL_165;
      }

      v175 = v158;
      v158 = v972;
      LOBYTE(v980) = 1;
      v638 = KeyedDecodingContainer.decode(_:forKey:)();
      v177 = v751 + 8;
      v162 = (v355 + 8);
      v971 = 0;
      v726 = v725;
      v965 = v638;
      (*(v751 + 8))(v170, v353);
      (*v162)(v352, v175);
      swift_unknownObjectRelease();
      v727 = v726;
      v559 = v158 & 0xFFFFFFFF00000000;
      v167 = HIDWORD(v726);
      v969 = v727;
      v968 = v727 & 0xFFFFFF0000000000;
      v560 = 3;
      goto LABEL_179;
    case 4:
      LOBYTE(v972) = 4;
      sub_1000BFAA4();
      v167 = v895;
      v300 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v300;
      if (v300)
      {
        goto LABEL_163;
      }

      v301 = v162;
      v175 = v158;
      v302 = v750;
      v177 = v167;
      v303 = KeyedDecodingContainer.decode(_:forKey:)();
      v304 = v743;
      v971 = 0;
      v158 = v303;
      v965 = v616;
      (*(v749 + 8))(v167, v302);
      v617 = *(v304 + 8);
      v162 = (v304 + 8);
      v617(v301, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 4;
      goto LABEL_179;
    case 5:
      LOBYTE(v972) = 5;
      sub_1000BFA50();
      v167 = v896;
      v394 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v394;
      if (v394)
      {
        goto LABEL_163;
      }

      v395 = v162;
      v175 = v158;
      v396 = v753;
      v177 = v167;
      v397 = KeyedDecodingContainer.decode(_:forKey:)();
      v398 = v743;
      v971 = 0;
      v158 = v397;
      v965 = v651;
      (*(v752 + 8))(v167, v396);
      v652 = *(v398 + 8);
      v162 = (v398 + 8);
      v652(v395, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 5;
      goto LABEL_179;
    case 6:
      LOBYTE(v972) = 6;
      sub_1000BF9FC();
      v170 = v899;
      v419 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v419;
      if (v419)
      {
        goto LABEL_163;
      }

      v420 = v162;
      v175 = v158;
      LOBYTE(v972) = 0;
      v421 = v758;
      v422 = KeyedDecodingContainer.decode(_:forKey:)();
      v423 = v743;
      v971 = 0;
      v158 = v422;
      v662 = v661;
      LOBYTE(v972) = 1;
      v663 = KeyedDecodingContainer.decode(_:forKey:)();
      v177 = v755 + 8;
      v162 = (v423 + 8);
      v971 = 0;
      v965 = v662;
      v728 = *(v755 + 8);
      v729 = v663;
      v967 = v730;
      v728(v170, v421);
      (*v162)(v420, v175);
      swift_unknownObjectRelease();
      v731 = v729;
      v559 = v158 & 0xFFFFFFFF00000000;
      v167 = HIDWORD(v729);
      v969 = v731;
      v968 = v731 & 0xFFFFFF0000000000;
      v560 = 6;
      goto LABEL_179;
    case 7:
      LOBYTE(v972) = 7;
      sub_1000BF9A8();
      v167 = v898;
      v356 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v356;
      if (v356)
      {
        goto LABEL_163;
      }

      v357 = v162;
      v175 = v158;
      v358 = v757;
      v177 = v167;
      v359 = KeyedDecodingContainer.decode(_:forKey:)();
      v360 = v743;
      v971 = 0;
      v158 = v359;
      v965 = v639;
      (*(v756 + 8))(v167, v358);
      v640 = *(v360 + 8);
      v162 = (v360 + 8);
      v640(v357, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 7;
      goto LABEL_179;
    case 8:
      LOBYTE(v972) = 8;
      sub_1000BF954();
      v434 = v902;
      v435 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v435;
      if (v435)
      {
        goto LABEL_163;
      }

      v436 = v162;
      v175 = v158;
      LOBYTE(v972) = 0;
      v437 = v761;
      v438 = KeyedDecodingContainer.decode(_:forKey:)();
      v439 = v743;
      v971 = 0;
      LODWORD(v158) = v438;
      LOBYTE(v972) = 1;
      v668 = KeyedDecodingContainer.decode(_:forKey:)();
      v971 = 0;
      v177 = v669;
      v965 = v668;
      (*(v760 + 8))(v434, v437);
      v670 = *(v439 + 8);
      v162 = (v439 + 8);
      v670(v436, v175);
      swift_unknownObjectRelease();
      v559 = 0;
      v167 = HIDWORD(v177);
      v968 = v177 & 0xFFFFFF0000000000;
      v969 = v177;
      v560 = 8;
      goto LABEL_179;
    case 9:
      LOBYTE(v972) = 9;
      sub_1000BF900();
      v325 = v900;
      v326 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v326;
      if (v326)
      {
        goto LABEL_163;
      }

      (*(v759 + 8))(v325, v167);
      (*(v743 + 8))(v162, v158);
      swift_unknownObjectRelease();
      v965 = 0;
      v966 = 0;
      v967 = 0;
      v968 = 0;
      v170 = 0;
      v175 = 0;
      v177 = 0;
      v162 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      LODWORD(v158) = 0;
      v559 = 0;
      v560 = 75;
      goto LABEL_179;
    case 10:
      LOBYTE(v972) = 10;
      sub_1000BF8AC();
      v167 = v166;
      v429 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v429;
      if (v429)
      {
        goto LABEL_163;
      }

      v430 = v162;
      v175 = v158;
      v431 = v763;
      v177 = v167;
      v432 = KeyedDecodingContainer.decode(_:forKey:)();
      v433 = v743;
      v971 = 0;
      v158 = v432;
      v965 = v666;
      (*(v762 + 8))(v167, v431);
      v667 = *(v433 + 8);
      v162 = (v433 + 8);
      v667(v430, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 9;
      goto LABEL_179;
    case 11:
      LOBYTE(v972) = 11;
      sub_1000BF858();
      v167 = v904;
      v290 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v290;
      if (v290)
      {
        goto LABEL_163;
      }

      v291 = v162;
      v175 = v158;
      v292 = v765;
      v177 = v167;
      v293 = KeyedDecodingContainer.decode(_:forKey:)();
      v294 = v743;
      v971 = 0;
      v158 = v293;
      v965 = v612;
      (*(v764 + 8))(v167, v292);
      v613 = *(v294 + 8);
      v162 = (v294 + 8);
      v613(v291, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 10;
      goto LABEL_179;
    case 12:
      LOBYTE(v972) = 12;
      sub_1000BF804();
      v167 = v905;
      v320 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v320;
      if (v320)
      {
        goto LABEL_163;
      }

      v321 = v162;
      v175 = v158;
      v322 = v767;
      v177 = v167;
      v323 = KeyedDecodingContainer.decode(_:forKey:)();
      v324 = v743;
      v971 = 0;
      v158 = v323;
      v965 = v624;
      (*(v766 + 8))(v167, v322);
      v625 = *(v324 + 8);
      v162 = (v324 + 8);
      v625(v321, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 11;
      goto LABEL_179;
    case 13:
      LOBYTE(v972) = 13;
      sub_1000BF7B0();
      v167 = v901;
      v414 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v414;
      if (v414)
      {
        goto LABEL_163;
      }

      v415 = v162;
      v175 = v158;
      v416 = v769;
      v177 = v167;
      v417 = KeyedDecodingContainer.decode(_:forKey:)();
      v418 = v743;
      v971 = 0;
      v158 = v417;
      v965 = v659;
      (*(v768 + 8))(v167, v416);
      v660 = *(v418 + 8);
      v162 = (v418 + 8);
      v660(v415, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 12;
      goto LABEL_179;
    case 14:
      LOBYTE(v972) = 14;
      sub_1000BF708();
      v271 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v271;
      if (v271)
      {
        goto LABEL_163;
      }

      LOBYTE(v980) = 0;
      sub_1000BF75C();
      v272 = v773;
      v273 = v971;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v274 = v743;
      v971 = v273;
      if (v273)
      {
        (*(v772 + 8))(v169, v272);
        (*(v274 + 8))(v162, v158);
        goto LABEL_167;
      }

      v968 = v162;
      v969 = v158;
      v602 = v973;
      v158 = v272;
      v603 = v974;
      v604 = v975;
      v966 = v976;
      v962 = v972;
      v963 = v977;
      v175 = v978;
      LOBYTE(v980) = 1;
      v605 = KeyedDecodingContainer.decode(_:forKey:)();
      v971 = 0;
      v177 = v605;
      v162 = v720;
      v965 = v602;
      (*(v772 + 8))(v169, v158);
      (*(v274 + 8))(v968, v969);
      swift_unknownObjectRelease();
      LODWORD(v158) = v962;
      v559 = v962 & 0xFFFFFFFF00000000;
      v167 = HIDWORD(v603);
      v967 = v604;
      v968 = v603 & 0xFFFFFF0000000000;
      v969 = v603;
      v560 = 13;
LABEL_180:
      v170 = v963;
      goto LABEL_179;
    case 15:
      LOBYTE(v972) = 15;
      sub_1000BF6B4();
      v341 = v906;
      v342 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v342;
      if (v342)
      {
        goto LABEL_163;
      }

      v170 = v162;
      v175 = v158;
      LOBYTE(v972) = 0;
      v343 = v771;
      v344 = KeyedDecodingContainer.decode(_:forKey:)();
      v345 = v743;
      v971 = 0;
      v158 = v344;
      v634 = v633;
      LOBYTE(v972) = 1;
      v635 = KeyedDecodingContainer.decode(_:forKey:)();
      v177 = v770 + 8;
      v162 = (v345 + 8);
      v971 = 0;
      v721 = v635;
      v965 = v634;
      v722 = *(v770 + 8);
      v967 = v723;
      v722(v341, v343);
      (*v162)(v170, v175);
      swift_unknownObjectRelease();
      v724 = v721;
      v559 = v158 & 0xFFFFFFFF00000000;
      v167 = HIDWORD(v724);
      v969 = v724;
      v968 = v724 & 0xFFFFFF0000000000;
      v560 = 14;
      goto LABEL_179;
    case 16:
      LOBYTE(v972) = 16;
      sub_1000BF660();
      v255 = v903;
      v256 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v256;
      if (v256)
      {
        goto LABEL_163;
      }

      v257 = v162;
      v175 = v158;
      LOBYTE(v972) = 0;
      v258 = v779;
      v259 = KeyedDecodingContainer.decode(_:forKey:)();
      v260 = v743;
      v971 = 0;
      v158 = v259;
      v595 = v594;
      LOBYTE(v972) = 1;
      v596 = KeyedDecodingContainer.decode(_:forKey:)();
      v971 = 0;
      v597 = v778;
      v177 = v255;
      v718 = v717;
      v969 = v596;
      v965 = v595;
      LOBYTE(v972) = 2;
      v966 = KeyedDecodingContainer.decode(_:forKey:)();
      v963 = v719;
      v971 = 0;
      (*(v597 + 8))(v177, v258);
      v738 = *(v260 + 8);
      v162 = (v260 + 8);
      v738(v257, v175);
      swift_unknownObjectRelease();
      v559 = v158 & 0xFFFFFFFF00000000;
      v167 = HIDWORD(v969);
      v967 = v718;
      v968 = v969 & 0xFFFFFF0000000000;
      v560 = 15;
      goto LABEL_180;
    case 17:
      LOBYTE(v972) = 17;
      sub_1000BF60C();
      v167 = v907;
      v374 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v374;
      if (v374)
      {
        goto LABEL_163;
      }

      v375 = v162;
      v175 = v158;
      v376 = v775;
      v177 = v167;
      v377 = KeyedDecodingContainer.decode(_:forKey:)();
      v378 = v743;
      v971 = 0;
      v158 = v377;
      v965 = v643;
      (*(v774 + 8))(v167, v376);
      v644 = *(v378 + 8);
      v162 = (v378 + 8);
      v644(v375, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 16;
      goto LABEL_179;
    case 18:
      LOBYTE(v972) = 18;
      sub_1000BF5B8();
      v167 = v908;
      v424 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v424;
      if (v424)
      {
        goto LABEL_163;
      }

      v425 = v162;
      v175 = v158;
      v426 = v777;
      v177 = v167;
      v427 = KeyedDecodingContainer.decode(_:forKey:)();
      v428 = v743;
      v971 = 0;
      v158 = v427;
      v965 = v664;
      (*(v776 + 8))(v167, v426);
      v665 = *(v428 + 8);
      v162 = (v428 + 8);
      v665(v425, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 17;
      goto LABEL_179;
    case 19:
      LOBYTE(v972) = 19;
      sub_1000BF564();
      v170 = v911;
      v465 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v465;
      if (v465)
      {
        goto LABEL_163;
      }

      v466 = v158;
      LOBYTE(v972) = 0;
      v247 = v785;
      v467 = KeyedDecodingContainer.decode(_:forKey:)();
      v249 = v743;
      v971 = 0;
      v158 = v467;
      v681 = v468;
      v167 = v162;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      LOBYTE(v980) = 1;
      sub_10001945C(&qword_1001345F8);
      v177 = v170;
      v682 = v971;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v971 = v682;
      v591 = v784;
      if (v682)
      {
        goto LABEL_175;
      }

      v965 = v681;
      v162 = (v784 + 8);
      (*(v784 + 8))(v170, v247);
      v732 = *(v249 + 8);
      v175 = (v249 + 8);
      v732(v167, v466);
      swift_unknownObjectRelease();
      v559 = v158 & 0xFFFFFFFF00000000;
      v167 = HIDWORD(v972);
      v969 = v972;
      v968 = v972 & 0xFFFFFF0000000000;
      v560 = 18;
      goto LABEL_179;
    case 20:
      LOBYTE(v972) = 20;
      sub_1000BF510();
      v167 = v909;
      v384 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v384;
      if (v384)
      {
        goto LABEL_163;
      }

      v385 = v162;
      v175 = v158;
      v386 = v781;
      v177 = v167;
      v387 = KeyedDecodingContainer.decode(_:forKey:)();
      v388 = v743;
      v971 = 0;
      v158 = v387;
      v965 = v647;
      (*(v780 + 8))(v167, v386);
      v648 = *(v388 + 8);
      v162 = (v388 + 8);
      v648(v385, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 19;
      goto LABEL_179;
    case 21:
      LOBYTE(v972) = 21;
      sub_1000BF4BC();
      v167 = v910;
      v409 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v409;
      if (v409)
      {
        goto LABEL_163;
      }

      v410 = v162;
      v175 = v158;
      v411 = v783;
      v177 = v167;
      v412 = KeyedDecodingContainer.decode(_:forKey:)();
      v413 = v743;
      v971 = 0;
      v158 = v412;
      v965 = v657;
      (*(v782 + 8))(v167, v411);
      v658 = *(v413 + 8);
      v162 = (v413 + 8);
      v658(v410, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 20;
      goto LABEL_179;
    case 22:
      LOBYTE(v972) = 22;
      sub_1000BF468();
      v167 = v912;
      v455 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v455;
      if (v455)
      {
        goto LABEL_163;
      }

      v456 = v162;
      v175 = v158;
      v457 = v787;
      v177 = v167;
      v458 = KeyedDecodingContainer.decode(_:forKey:)();
      v459 = v743;
      v971 = 0;
      v158 = v458;
      v965 = v677;
      (*(v786 + 8))(v167, v457);
      v678 = *(v459 + 8);
      v162 = (v459 + 8);
      v678(v456, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 21;
      goto LABEL_179;
    case 23:
      LOBYTE(v972) = 23;
      sub_1000BF414();
      v167 = v913;
      v484 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v484;
      if (v484)
      {
        goto LABEL_163;
      }

      v485 = v162;
      v175 = v158;
      v486 = v789;
      v177 = v167;
      v487 = KeyedDecodingContainer.decode(_:forKey:)();
      v488 = v743;
      v971 = 0;
      v158 = v487;
      v965 = v689;
      (*(v788 + 8))(v167, v486);
      v690 = *(v488 + 8);
      v162 = (v488 + 8);
      v690(v485, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 22;
      goto LABEL_179;
    case 24:
      LOBYTE(v972) = 24;
      sub_1000BF3C0();
      v167 = v914;
      v332 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v332;
      if (v332)
      {
        goto LABEL_163;
      }

      v333 = v162;
      v175 = v158;
      v334 = v791;
      v177 = v167;
      v335 = KeyedDecodingContainer.decode(_:forKey:)();
      v336 = v743;
      v971 = 0;
      v158 = v335;
      v965 = v628;
      (*(v790 + 8))(v167, v334);
      v629 = *(v336 + 8);
      v162 = (v336 + 8);
      v629(v333, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 23;
      goto LABEL_179;
    case 25:
      LOBYTE(v972) = 25;
      sub_1000BF36C();
      v167 = v915;
      v327 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v327;
      if (v327)
      {
        goto LABEL_163;
      }

      v328 = v162;
      v175 = v158;
      v329 = v793;
      v177 = v167;
      v330 = KeyedDecodingContainer.decode(_:forKey:)();
      v331 = v743;
      v971 = 0;
      v158 = v330;
      v965 = v626;
      (*(v792 + 8))(v167, v329);
      v627 = *(v331 + 8);
      v162 = (v331 + 8);
      v627(v328, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 24;
      goto LABEL_179;
    case 26:
      LOBYTE(v972) = 26;
      sub_1000BF318();
      v167 = v916;
      v504 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v504;
      if (v504)
      {
        goto LABEL_163;
      }

      v505 = v162;
      v175 = v158;
      v506 = v795;
      v177 = v167;
      v507 = KeyedDecodingContainer.decode(_:forKey:)();
      v508 = v743;
      v971 = 0;
      v158 = v507;
      v965 = v697;
      (*(v794 + 8))(v167, v506);
      v698 = *(v508 + 8);
      v162 = (v508 + 8);
      v698(v505, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 25;
      goto LABEL_179;
    case 27:
      LOBYTE(v972) = 27;
      sub_1000BF2C4();
      v170 = v919;
      v246 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v246;
      if (v246)
      {
        goto LABEL_163;
      }

      v167 = v162;
      sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
      LOBYTE(v980) = 0;
      sub_10001945C(&qword_1001345F8);
      v247 = v801;
      v248 = v971;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v249 = v743;
      v971 = v248;
      if (v248)
      {
        (*(v800 + 8))(v170, v247);
        (*(v249 + 8))(v162, v158);
        goto LABEL_167;
      }

      v466 = v158;
      v158 = v972;
      sub_100003CDC(&qword_100136960, &qword_1000FAC40);
      v979 = 1;
      sub_1000730EC();
      v177 = v170;
      v590 = v971;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v971 = v590;
      v591 = v800;
      if (v590)
      {
LABEL_175:

        (*(v591 + 8))(v170, v247);
        (*(v249 + 8))(v167, v466);
        goto LABEL_167;
      }

      v162 = (v800 + 8);
      (*(v800 + 8))(v170, v247);
      v716 = *(v249 + 8);
      v175 = (v249 + 8);
      v716(v167, v466);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v965 = v980;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 26;
      goto LABEL_179;
    case 28:
      LOBYTE(v972) = 28;
      sub_1000BF270();
      v167 = v917;
      v489 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v489;
      if (v489)
      {
        goto LABEL_163;
      }

      v490 = v162;
      v175 = v158;
      v491 = v797;
      v177 = v167;
      v492 = KeyedDecodingContainer.decode(_:forKey:)();
      v493 = v743;
      v971 = 0;
      v158 = v492;
      v965 = v691;
      (*(v796 + 8))(v167, v491);
      v692 = *(v493 + 8);
      v162 = (v493 + 8);
      v692(v490, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 27;
      goto LABEL_179;
    case 29:
      LOBYTE(v972) = 29;
      sub_1000BF21C();
      v167 = v918;
      v494 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v494;
      if (v494)
      {
        goto LABEL_163;
      }

      v495 = v162;
      v175 = v158;
      v496 = v799;
      v177 = v167;
      v497 = KeyedDecodingContainer.decode(_:forKey:)();
      v498 = v743;
      v971 = 0;
      v158 = v497;
      v965 = v693;
      (*(v798 + 8))(v167, v496);
      v694 = *(v498 + 8);
      v162 = (v498 + 8);
      v694(v495, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 28;
      goto LABEL_179;
    case 30:
      LOBYTE(v972) = 30;
      sub_1000BF1C8();
      v167 = v920;
      v440 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v440;
      if (v440)
      {
        goto LABEL_163;
      }

      v441 = v162;
      v175 = v158;
      v442 = v803;
      v177 = v167;
      v443 = KeyedDecodingContainer.decode(_:forKey:)();
      v444 = v743;
      v971 = 0;
      v158 = v443;
      v965 = v671;
      (*(v802 + 8))(v167, v442);
      v672 = *(v444 + 8);
      v162 = (v444 + 8);
      v672(v441, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 29;
      goto LABEL_179;
    case 31:
      LOBYTE(v972) = 31;
      sub_1000BF174();
      v367 = v921;
      v368 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v368;
      if (v368)
      {
        goto LABEL_163;
      }

      v175 = v162;
      sub_100003CDC(&qword_100137840, &unk_1000FAC30);
      sub_1000BFC9C(&qword_100137C10);
      v369 = v805;
      v177 = v367;
      v370 = v971;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v371 = v743;
      v971 = v370;
      v372 = &v836;
      if (v370)
      {
        goto LABEL_153;
      }

      (*(v804 + 8))(v367, v369);
      v373 = *(v371 + 8);
      v162 = (v371 + 8);
      v373(v175, v158);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      LODWORD(v158) = v972;
      v559 = v972 & 0xFFFFFFFF00000000;
      v560 = 30;
      goto LABEL_179;
    case 32:
      LOBYTE(v972) = 32;
      sub_1000BF120();
      v167 = v922;
      v445 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v445;
      if (v445)
      {
        goto LABEL_163;
      }

      v446 = v162;
      v175 = v158;
      v447 = v807;
      v177 = v167;
      v448 = KeyedDecodingContainer.decode(_:forKey:)();
      v449 = v743;
      v971 = 0;
      v158 = v448;
      v965 = v673;
      (*(v806 + 8))(v167, v447);
      v674 = *(v449 + 8);
      v162 = (v449 + 8);
      v674(v446, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 31;
      goto LABEL_179;
    case 33:
      LOBYTE(v972) = 33;
      sub_1000BF0CC();
      v167 = v923;
      v275 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v275;
      if (v275)
      {
        goto LABEL_163;
      }

      v276 = v162;
      v175 = v158;
      v277 = v809;
      v177 = v167;
      v278 = KeyedDecodingContainer.decode(_:forKey:)();
      v279 = v743;
      v971 = 0;
      v158 = v278;
      v965 = v606;
      (*(v808 + 8))(v167, v277);
      v607 = *(v279 + 8);
      v162 = (v279 + 8);
      v607(v276, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 32;
      goto LABEL_179;
    case 34:
      LOBYTE(v972) = 34;
      sub_1000BF078();
      v167 = v924;
      v250 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v250;
      if (v250)
      {
        goto LABEL_163;
      }

      v251 = v162;
      v175 = v158;
      v252 = v811;
      v177 = v167;
      v253 = KeyedDecodingContainer.decode(_:forKey:)();
      v254 = v743;
      v971 = 0;
      v158 = v253;
      v965 = v592;
      (*(v810 + 8))(v167, v252);
      v593 = *(v254 + 8);
      v162 = (v254 + 8);
      v593(v251, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 33;
      goto LABEL_179;
    case 35:
      LOBYTE(v972) = 35;
      sub_1000BF024();
      v167 = v925;
      v231 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v231;
      if (v231)
      {
        goto LABEL_163;
      }

      v232 = v162;
      v175 = v158;
      v233 = v813;
      v177 = v167;
      v234 = KeyedDecodingContainer.decode(_:forKey:)();
      v235 = v743;
      v971 = 0;
      v158 = v234;
      v965 = v585;
      (*(v812 + 8))(v167, v233);
      v586 = *(v235 + 8);
      v162 = (v235 + 8);
      v586(v232, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 34;
      goto LABEL_179;
    case 36:
      LOBYTE(v972) = 36;
      sub_1000BEFD0();
      v167 = v926;
      v236 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v236;
      if (v236)
      {
        goto LABEL_163;
      }

      v237 = v162;
      v175 = v158;
      v238 = v815;
      v177 = v167;
      v239 = KeyedDecodingContainer.decode(_:forKey:)();
      v240 = v743;
      v971 = 0;
      LODWORD(v158) = v239;
      (*(v814 + 8))(v167, v238);
      v587 = *(v240 + 8);
      v162 = (v240 + 8);
      v587(v237, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = 0;
      v560 = 35;
      goto LABEL_179;
    case 37:
      LOBYTE(v972) = 37;
      sub_1000BEF7C();
      v167 = v927;
      v210 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v210;
      if (v210)
      {
        goto LABEL_163;
      }

      v211 = v162;
      v175 = v158;
      v212 = v817;
      v177 = v167;
      v213 = KeyedDecodingContainer.decode(_:forKey:)();
      v214 = v743;
      v971 = 0;
      v158 = v213;
      v965 = v574;
      (*(v816 + 8))(v167, v212);
      v575 = *(v214 + 8);
      v162 = (v214 + 8);
      v575(v211, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 36;
      goto LABEL_179;
    case 38:
      LOBYTE(v972) = 38;
      sub_1000BEF28();
      v167 = v928;
      v499 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v499;
      if (v499)
      {
        goto LABEL_163;
      }

      v500 = v162;
      v175 = v158;
      v501 = v819;
      v177 = v167;
      v502 = KeyedDecodingContainer.decode(_:forKey:)();
      v503 = v743;
      v971 = 0;
      v158 = v502;
      v965 = v695;
      (*(v818 + 8))(v167, v501);
      v696 = *(v503 + 8);
      v162 = (v503 + 8);
      v696(v500, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 37;
      goto LABEL_179;
    case 39:
      LOBYTE(v972) = 39;
      sub_1000BEED4();
      v167 = v929;
      v460 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v460;
      if (v460)
      {
        goto LABEL_163;
      }

      v461 = v162;
      v175 = v158;
      v462 = v821;
      v177 = v167;
      v463 = KeyedDecodingContainer.decode(_:forKey:)();
      v464 = v743;
      v971 = 0;
      v158 = v463;
      v965 = v679;
      (*(v820 + 8))(v167, v462);
      v680 = *(v464 + 8);
      v162 = (v464 + 8);
      v680(v461, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 38;
      goto LABEL_179;
    case 40:
      LOBYTE(v972) = 40;
      sub_1000BEE80();
      v167 = v930;
      v305 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v305;
      if (v305)
      {
        goto LABEL_163;
      }

      v306 = v162;
      v175 = v158;
      v307 = v823;
      v177 = v167;
      v308 = KeyedDecodingContainer.decode(_:forKey:)();
      v309 = v743;
      v971 = 0;
      v158 = v308;
      v965 = v618;
      (*(v822 + 8))(v167, v307);
      v619 = *(v309 + 8);
      v162 = (v309 + 8);
      v619(v306, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 39;
      goto LABEL_179;
    case 41:
      LOBYTE(v972) = 41;
      sub_1000BEE2C();
      v167 = v931;
      v379 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v379;
      if (v379)
      {
        goto LABEL_163;
      }

      v380 = v162;
      v175 = v158;
      v381 = v825;
      v177 = v167;
      v382 = KeyedDecodingContainer.decode(_:forKey:)();
      v383 = v743;
      v971 = 0;
      v158 = v382;
      v965 = v645;
      (*(v824 + 8))(v167, v381);
      v646 = *(v383 + 8);
      v162 = (v383 + 8);
      v646(v380, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 40;
      goto LABEL_179;
    case 42:
      LOBYTE(v972) = 42;
      sub_1000BEDD8();
      v167 = v932;
      v474 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v474;
      if (v474)
      {
        goto LABEL_163;
      }

      v475 = v162;
      v175 = v158;
      v476 = v827;
      v177 = v167;
      v477 = KeyedDecodingContainer.decode(_:forKey:)();
      v478 = v743;
      v971 = 0;
      v158 = v477;
      v965 = v685;
      (*(v826 + 8))(v167, v476);
      v686 = *(v478 + 8);
      v162 = (v478 + 8);
      v686(v475, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 41;
      goto LABEL_179;
    case 43:
      LOBYTE(v972) = 43;
      sub_1000BED84();
      v170 = v934;
      v195 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v195;
      if (v195)
      {
        goto LABEL_163;
      }

      v196 = v162;
      v175 = v158;
      LOBYTE(v972) = 0;
      v197 = v831;
      v198 = KeyedDecodingContainer.decode(_:forKey:)();
      v199 = v743;
      v971 = 0;
      v158 = v198;
      v564 = v563;
      LOBYTE(v972) = 1;
      v565 = KeyedDecodingContainer.decode(_:forKey:)();
      v177 = v828 + 8;
      v162 = (v199 + 8);
      v971 = 0;
      v965 = v564;
      v566 = *(v828 + 8);
      v567 = v565;
      v967 = v568;
      v566(v170, v197);
      (*v162)(v196, v175);
      swift_unknownObjectRelease();
      v569 = v567;
      v559 = v158 & 0xFFFFFFFF00000000;
      v167 = HIDWORD(v567);
      v969 = v569;
      v968 = v569 & 0xFFFFFF0000000000;
      v560 = 42;
      goto LABEL_179;
    case 44:
      LOBYTE(v972) = 44;
      sub_1000BED30();
      v167 = v933;
      v266 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v266;
      if (v266)
      {
        goto LABEL_163;
      }

      v267 = v162;
      v175 = v158;
      v268 = v830;
      v177 = v167;
      v269 = KeyedDecodingContainer.decode(_:forKey:)();
      v270 = v743;
      v971 = 0;
      v158 = v269;
      v965 = v600;
      (*(v829 + 8))(v167, v268);
      v601 = *(v270 + 8);
      v162 = (v270 + 8);
      v601(v267, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 43;
      goto LABEL_179;
    case 45:
      LOBYTE(v972) = 45;
      sub_1000BECDC();
      v167 = v935;
      v450 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v450;
      if (v450)
      {
        goto LABEL_163;
      }

      v451 = v162;
      v175 = v158;
      v452 = v833;
      v177 = v167;
      v453 = KeyedDecodingContainer.decode(_:forKey:)();
      v454 = v743;
      v971 = 0;
      v158 = v453;
      v965 = v675;
      (*(v832 + 8))(v167, v452);
      v676 = *(v454 + 8);
      v162 = (v454 + 8);
      v676(v451, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 44;
      goto LABEL_179;
    case 46:
      LOBYTE(v972) = 46;
      sub_1000BEC88();
      v526 = v937;
      v527 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v527;
      if (v527)
      {
        goto LABEL_163;
      }

      v528 = v162;
      v175 = v158;
      LOBYTE(v972) = 0;
      v529 = v837;
      v530 = KeyedDecodingContainer.decode(_:forKey:)();
      v531 = v743;
      v971 = 0;
      v158 = v530;
      v167 = v706;
      LOBYTE(v972) = 1;
      v707 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v971 = 0;
      v965 = v167;
      v733 = *(v836 + 8);
      v170 = (v836 + 8);
      v177 = v707;
      v969 = v707;
      v733(v526, v529);
      v734 = *(v531 + 8);
      v162 = (v531 + 8);
      v734(v528, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      LOBYTE(v980) = BYTE4(v177) & 1;
      v559 = v158 & 0xFFFFFFFF00000000;
      LOBYTE(v167) = BYTE4(v177) & 1;
      v560 = 45;
      goto LABEL_179;
    case 47:
      LOBYTE(v972) = 47;
      sub_1000BEC34();
      v167 = v936;
      v220 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v220;
      if (v220)
      {
        goto LABEL_163;
      }

      v221 = v162;
      v175 = v158;
      v222 = v835;
      v177 = v167;
      v223 = KeyedDecodingContainer.decode(_:forKey:)();
      v224 = v743;
      v971 = 0;
      v158 = v223;
      v965 = v578;
      (*(v834 + 8))(v167, v222);
      v579 = *(v224 + 8);
      v162 = (v224 + 8);
      v579(v221, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 46;
      goto LABEL_179;
    case 48:
      LOBYTE(v972) = 48;
      sub_1000BEBE0();
      v167 = v938;
      v280 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v280;
      if (v280)
      {
        goto LABEL_163;
      }

      v281 = v162;
      v175 = v158;
      v282 = v839;
      v177 = v167;
      v283 = KeyedDecodingContainer.decode(_:forKey:)();
      v284 = v743;
      v971 = 0;
      v158 = v283;
      v965 = v608;
      (*(v838 + 8))(v167, v282);
      v609 = *(v284 + 8);
      v162 = (v284 + 8);
      v609(v281, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 47;
      goto LABEL_179;
    case 49:
      LOBYTE(v972) = 49;
      sub_1000BEB8C();
      v167 = v939;
      v295 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v295;
      if (v295)
      {
        goto LABEL_163;
      }

      v296 = v162;
      v175 = v158;
      v297 = v841;
      v177 = v167;
      v298 = KeyedDecodingContainer.decode(_:forKey:)();
      v299 = v743;
      v971 = 0;
      v158 = v298;
      v965 = v614;
      (*(v840 + 8))(v167, v297);
      v615 = *(v299 + 8);
      v162 = (v299 + 8);
      v615(v296, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 48;
      goto LABEL_179;
    case 50:
      LOBYTE(v972) = 50;
      sub_1000BEB38();
      v167 = v940;
      v190 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v190;
      if (v190)
      {
        goto LABEL_163;
      }

      v191 = v162;
      v175 = v158;
      v192 = v843;
      v177 = v167;
      v193 = KeyedDecodingContainer.decode(_:forKey:)();
      v194 = v743;
      v971 = 0;
      v158 = v193;
      v965 = v561;
      (*(v842 + 8))(v167, v192);
      v562 = *(v194 + 8);
      v162 = (v194 + 8);
      v562(v191, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 49;
      goto LABEL_179;
    case 51:
      LOBYTE(v972) = 51;
      sub_1000BEAE4();
      v167 = v941;
      v541 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v541;
      if (v541)
      {
        goto LABEL_163;
      }

      v542 = v162;
      v175 = v158;
      v543 = v845;
      v177 = v167;
      v544 = KeyedDecodingContainer.decode(_:forKey:)();
      v545 = v743;
      v971 = 0;
      v158 = v544;
      v965 = v712;
      (*(v844 + 8))(v167, v543);
      v713 = *(v545 + 8);
      v162 = (v545 + 8);
      v713(v542, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 50;
      goto LABEL_179;
    case 52:
      LOBYTE(v972) = 52;
      sub_1000BEA90();
      v367 = v942;
      v524 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v524;
      if (v524)
      {
        goto LABEL_163;
      }

      v175 = v162;
      sub_100003CDC(&qword_100137840, &unk_1000FAC30);
      sub_1000BFC9C(&qword_100137C10);
      v369 = v847;
      v177 = v367;
      v525 = v971;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v371 = v743;
      v971 = v525;
      v372 = &v878;
      if (!v525)
      {
        (*(v846 + 8))(v367, v369);
        v705 = *(v371 + 8);
        v162 = (v371 + 8);
        v705(v175, v158);
        swift_unknownObjectRelease();
        v968 = 0;
        v969 = 0;
        LOBYTE(v167) = 0;
        LODWORD(v158) = v972;
        v559 = v972 & 0xFFFFFFFF00000000;
        v560 = 51;
        goto LABEL_179;
      }

LABEL_153:
      (*(*(v372 - 32) + 8))(v367, v369);
      v550 = *(v371 + 8);
      v551 = v175;
LABEL_165:
      v550(v551, v158);
      goto LABEL_167;
    case 53:
      LOBYTE(v972) = 53;
      sub_1000BEA3C();
      v167 = v943;
      v215 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v215;
      if (v215)
      {
        goto LABEL_163;
      }

      v216 = v162;
      v175 = v158;
      v217 = v849;
      v177 = v167;
      v218 = KeyedDecodingContainer.decode(_:forKey:)();
      v219 = v743;
      v971 = 0;
      v158 = v218;
      v965 = v576;
      (*(v848 + 8))(v167, v217);
      v577 = *(v219 + 8);
      v162 = (v219 + 8);
      v577(v216, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 52;
      goto LABEL_179;
    case 54:
      LOBYTE(v972) = 54;
      sub_1000BE9E8();
      v167 = v944;
      v509 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v509;
      if (v509)
      {
        goto LABEL_163;
      }

      v510 = v162;
      v175 = v158;
      v511 = v851;
      v177 = v167;
      v512 = KeyedDecodingContainer.decode(_:forKey:)();
      v513 = v743;
      v971 = 0;
      v158 = v512;
      v965 = v699;
      (*(v850 + 8))(v167, v511);
      v700 = *(v513 + 8);
      v162 = (v513 + 8);
      v700(v510, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 53;
      goto LABEL_179;
    case 55:
      LOBYTE(v972) = 55;
      sub_1000BE994();
      v167 = v945;
      v519 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v519;
      if (v519)
      {
        goto LABEL_163;
      }

      v520 = v162;
      v175 = v158;
      v521 = v853;
      v177 = v167;
      v522 = KeyedDecodingContainer.decode(_:forKey:)();
      v523 = v743;
      v971 = 0;
      v158 = v522;
      v965 = v703;
      (*(v852 + 8))(v167, v521);
      v704 = *(v523 + 8);
      v162 = (v523 + 8);
      v704(v520, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 54;
      goto LABEL_179;
    case 56:
      LOBYTE(v972) = 56;
      sub_1000BE940();
      v167 = v946;
      v225 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v225;
      if (v225)
      {
        goto LABEL_163;
      }

      v226 = v162;
      v175 = v158;
      v227 = v855;
      v177 = v167;
      v228 = KeyedDecodingContainer.decode(_:forKey:)();
      v229 = v743;
      v971 = 0;
      v158 = v228;
      v965 = v580;
      (*(v854 + 8))(v167, v227);
      v581 = *(v229 + 8);
      v162 = (v229 + 8);
      v581(v226, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 55;
      goto LABEL_179;
    case 57:
      LOBYTE(v972) = 57;
      sub_1000BE8EC();
      v167 = v947;
      v469 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v469;
      if (v469)
      {
        goto LABEL_163;
      }

      v470 = v162;
      v175 = v158;
      v471 = v857;
      v177 = v167;
      v472 = KeyedDecodingContainer.decode(_:forKey:)();
      v473 = v743;
      v971 = 0;
      v158 = v472;
      v965 = v683;
      (*(v856 + 8))(v167, v471);
      v684 = *(v473 + 8);
      v162 = (v473 + 8);
      v684(v470, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 56;
      goto LABEL_179;
    case 58:
      LOBYTE(v972) = 58;
      sub_1000BE898();
      v167 = v948;
      v285 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v285;
      if (v285)
      {
        goto LABEL_163;
      }

      v286 = v162;
      v175 = v158;
      v287 = v859;
      v177 = v167;
      v288 = KeyedDecodingContainer.decode(_:forKey:)();
      v289 = v743;
      v971 = 0;
      v158 = v288;
      v965 = v610;
      (*(v858 + 8))(v167, v287);
      v611 = *(v289 + 8);
      v162 = (v289 + 8);
      v611(v286, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 57;
      goto LABEL_179;
    case 59:
      LOBYTE(v972) = 59;
      sub_1000BE844();
      v167 = v949;
      v479 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v479;
      if (v479)
      {
        goto LABEL_163;
      }

      v480 = v162;
      v175 = v158;
      v481 = v861;
      v177 = v167;
      v482 = KeyedDecodingContainer.decode(_:forKey:)();
      v483 = v743;
      v971 = 0;
      v158 = v482;
      v965 = v687;
      (*(v860 + 8))(v167, v481);
      v688 = *(v483 + 8);
      v162 = (v483 + 8);
      v688(v480, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 58;
      goto LABEL_179;
    case 60:
      LOBYTE(v972) = 60;
      sub_1000BE7F0();
      v167 = v950;
      v310 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v310;
      if (v310)
      {
        goto LABEL_163;
      }

      v311 = v162;
      v175 = v158;
      v312 = v863;
      v177 = v167;
      v313 = KeyedDecodingContainer.decode(_:forKey:)();
      v314 = v743;
      v971 = 0;
      v158 = v313;
      v965 = v620;
      (*(v862 + 8))(v167, v312);
      v621 = *(v314 + 8);
      v162 = (v314 + 8);
      v621(v311, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 59;
      goto LABEL_179;
    case 61:
      LOBYTE(v972) = 61;
      sub_1000BE79C();
      v167 = v951;
      v389 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v389;
      if (v389)
      {
        goto LABEL_163;
      }

      v390 = v162;
      v175 = v158;
      v391 = v865;
      v177 = v167;
      v392 = KeyedDecodingContainer.decode(_:forKey:)();
      v393 = v743;
      v971 = 0;
      v158 = v392;
      v965 = v649;
      (*(v864 + 8))(v167, v391);
      v650 = *(v393 + 8);
      v162 = (v393 + 8);
      v650(v390, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 60;
      goto LABEL_179;
    case 62:
      LOBYTE(v972) = 62;
      sub_1000BE748();
      v167 = v952;
      v404 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v404;
      if (v404)
      {
        goto LABEL_163;
      }

      v405 = v162;
      v175 = v158;
      v406 = v867;
      v177 = v167;
      v407 = KeyedDecodingContainer.decode(_:forKey:)();
      v408 = v743;
      v971 = 0;
      v158 = v407;
      v965 = v655;
      (*(v866 + 8))(v167, v406);
      v656 = *(v408 + 8);
      v162 = (v408 + 8);
      v656(v405, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 61;
      goto LABEL_179;
    case 63:
      LOBYTE(v972) = 63;
      sub_1000BE6F4();
      v167 = v953;
      v346 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v346;
      if (v346)
      {
        goto LABEL_163;
      }

      v347 = v162;
      v175 = v158;
      v348 = v869;
      v177 = v167;
      v349 = KeyedDecodingContainer.decode(_:forKey:)();
      v350 = v743;
      v971 = 0;
      v158 = v349;
      v965 = v636;
      (*(v868 + 8))(v167, v348);
      v637 = *(v350 + 8);
      v162 = (v350 + 8);
      v637(v347, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 62;
      goto LABEL_179;
    case 64:
      LOBYTE(v972) = 64;
      sub_1000BE6A0();
      v167 = v954;
      v315 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v315;
      if (v315)
      {
        goto LABEL_163;
      }

      v316 = v162;
      v175 = v158;
      v317 = v871;
      v177 = v167;
      v318 = KeyedDecodingContainer.decode(_:forKey:)();
      v319 = v743;
      v971 = 0;
      v158 = v318;
      v965 = v622;
      (*(v870 + 8))(v167, v317);
      v623 = *(v319 + 8);
      v162 = (v319 + 8);
      v623(v316, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 63;
      goto LABEL_179;
    case 65:
      LOBYTE(v972) = 65;
      sub_1000BE64C();
      v167 = v955;
      v399 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v399;
      if (v399)
      {
        goto LABEL_163;
      }

      v400 = v162;
      v175 = v158;
      v401 = v873;
      v177 = v167;
      v402 = KeyedDecodingContainer.decode(_:forKey:)();
      v403 = v743;
      v971 = 0;
      v158 = v402;
      v965 = v653;
      (*(v872 + 8))(v167, v401);
      v654 = *(v403 + 8);
      v162 = (v403 + 8);
      v654(v400, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 64;
      goto LABEL_179;
    case 66:
      LOBYTE(v972) = 66;
      sub_1000BE5F8();
      v167 = v956;
      v200 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v200;
      if (v200)
      {
        goto LABEL_163;
      }

      v201 = v162;
      v175 = v158;
      v202 = v875;
      v177 = v167;
      v203 = KeyedDecodingContainer.decode(_:forKey:)();
      v204 = v743;
      v971 = 0;
      v158 = v203;
      v965 = v570;
      (*(v874 + 8))(v167, v202);
      v571 = *(v204 + 8);
      v162 = (v204 + 8);
      v571(v201, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 65;
      goto LABEL_179;
    case 67:
      LOBYTE(v972) = 67;
      sub_1000BE5A4();
      v167 = v957;
      v261 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v261;
      if (v261)
      {
        goto LABEL_163;
      }

      v262 = v162;
      v175 = v158;
      v263 = v877;
      v177 = v167;
      v264 = KeyedDecodingContainer.decode(_:forKey:)();
      v265 = v743;
      v971 = 0;
      v158 = v264;
      v965 = v598;
      (*(v876 + 8))(v167, v263);
      v599 = *(v265 + 8);
      v162 = (v265 + 8);
      v599(v262, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 66;
      goto LABEL_179;
    case 68:
      LOBYTE(v972) = 68;
      sub_1000BE550();
      v167 = v958;
      v546 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v546;
      if (v546)
      {
        goto LABEL_163;
      }

      v552 = v162;
      v175 = v158;
      v553 = v879;
      v177 = v167;
      v554 = KeyedDecodingContainer.decode(_:forKey:)();
      v555 = v743;
      v971 = 0;
      v158 = v554;
      v965 = v714;
      (*(v878 + 8))(v167, v553);
      v715 = *(v555 + 8);
      v162 = (v555 + 8);
      v715(v552, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 67;
      goto LABEL_179;
    case 69:
      LOBYTE(v972) = 69;
      sub_1000BE4FC();
      v167 = v959;
      v241 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v241;
      if (v241)
      {
        goto LABEL_163;
      }

      v242 = v162;
      v175 = v158;
      v243 = v881;
      v177 = v167;
      v244 = KeyedDecodingContainer.decode(_:forKey:)();
      v245 = v743;
      v971 = 0;
      v158 = v244;
      v965 = v588;
      (*(v880 + 8))(v167, v243);
      v589 = *(v245 + 8);
      v162 = (v245 + 8);
      v589(v242, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 68;
      goto LABEL_179;
    case 70:
      LOBYTE(v972) = 70;
      sub_1000BE4A8();
      v167 = v960;
      v185 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v185;
      if (v185)
      {
        goto LABEL_163;
      }

      v186 = v162;
      v175 = v158;
      v187 = v883;
      v177 = v167;
      v188 = KeyedDecodingContainer.decode(_:forKey:)();
      v189 = v743;
      v971 = 0;
      v158 = v188;
      v965 = v557;
      (*(v882 + 8))(v167, v187);
      v558 = *(v189 + 8);
      v162 = (v189 + 8);
      v558(v186, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 69;
      goto LABEL_179;
    case 71:
      LOBYTE(v972) = 71;
      sub_1000BE454();
      v167 = v961;
      v205 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v205;
      if (v205)
      {
        goto LABEL_163;
      }

      v206 = v162;
      v175 = v158;
      v207 = v885;
      v177 = v167;
      v208 = KeyedDecodingContainer.decode(_:forKey:)();
      v209 = v743;
      v971 = 0;
      v158 = v208;
      v965 = v572;
      (*(v884 + 8))(v167, v207);
      v573 = *(v209 + 8);
      v162 = (v209 + 8);
      v573(v206, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 70;
      goto LABEL_179;
    case 72:
      LOBYTE(v972) = 72;
      sub_1000BE400();
      v167 = v168;
      v514 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v514;
      if (v514)
      {
        goto LABEL_163;
      }

      v515 = v162;
      v175 = v158;
      v516 = v887;
      v177 = v167;
      v517 = KeyedDecodingContainer.decode(_:forKey:)();
      v518 = v743;
      v971 = 0;
      v158 = v517;
      v965 = v701;
      (*(v886 + 8))(v167, v516);
      v702 = *(v518 + 8);
      v162 = (v518 + 8);
      v702(v515, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 71;
      goto LABEL_179;
    case 73:
      LOBYTE(v972) = 73;
      sub_1000BE3AC();
      v167 = v963;
      v532 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v532;
      if (v532)
      {
        goto LABEL_163;
      }

      v533 = v162;
      v175 = v158;
      v534 = v889;
      v177 = v167;
      v535 = KeyedDecodingContainer.decode(_:forKey:)();
      v536 = v743;
      v971 = 0;
      v158 = v535;
      v965 = v708;
      (*(v888 + 8))(v167, v534);
      v709 = *(v536 + 8);
      v162 = (v536 + 8);
      v709(v533, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 72;
      goto LABEL_179;
    case 74:
      LOBYTE(v972) = 74;
      sub_1000BE358();
      v537 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v537;
      if (v537)
      {
        goto LABEL_163;
      }

      v538 = v162;
      v175 = v158;
      v167 = v892;
      v177 = v170;
      v539 = KeyedDecodingContainer.decode(_:forKey:)();
      v540 = v743;
      v971 = 0;
      v158 = v539;
      v965 = v710;
      (*(v891 + 8))(v170, v167);
      v711 = *(v540 + 8);
      v162 = (v540 + 8);
      v711(v538, v175);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v158 & 0xFFFFFFFF00000000;
      v560 = 73;
      goto LABEL_179;
    case 75:
      LOBYTE(v972) = 75;
      sub_1000BE304();
      v175 = v962;
      v230 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v230)
      {
        (*(v743 + 8))(v162, v158);
        swift_unknownObjectRelease();
        v971 = v230;
        return sub_100003C90(v970);
      }

      v547 = v162;
      v167 = v890;
      v177 = v175;
      v548 = KeyedDecodingContainer.decode(_:forKey:)();
      v549 = v743;
      v971 = 0;
      v582 = v548;
      v965 = v583;
      v170 = (v893 + 8);
      (*(v893 + 8))(v175, v167);
      v584 = *(v549 + 8);
      v162 = (v549 + 8);
      v584(v547, v158);
      swift_unknownObjectRelease();
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      v559 = v582 & 0xFFFFFFFF00000000;
      v560 = 74;
      LODWORD(v158) = v582;
      goto LABEL_179;
    default:
      LOBYTE(v972) = 0;
      sub_1000BFBF4();
      v173 = v741;
      v174 = v971;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v971 = v174;
      if (v174)
      {
LABEL_163:
        (*(v743 + 8))(v162, v158);
        goto LABEL_167;
      }

      v175 = v162;
      v162 = sub_100003CDC(&qword_100137DC0, &qword_1000FAC48);
      sub_1000BFE08(&qword_100137DC8, sub_1000BFC48);
      v176 = v740;
      v177 = v173;
      v178 = v971;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v971 = v178;
      if (v178)
      {
        (*(v744 + 8))(v173, v176);
        (*(v743 + 8))(v175, v158);
        goto LABEL_167;
      }

      (*(v744 + 8))(v173, v176);
      (*(v743 + 8))(v175, v158);
      swift_unknownObjectRelease();
      v560 = 0;
      v968 = 0;
      v969 = 0;
      LOBYTE(v167) = 0;
      LODWORD(v158) = v972;
      v559 = v972 & 0xFFFFFFFF00000000;
LABEL_179:
      result = sub_100003C90(v970);
      v735 = v964;
      *v964 = v559 | v158;
      v736 = v968 | (v167 << 32) | v969;
      v735[1] = v965;
      v735[2] = v736;
      v737 = v966;
      v735[3] = v967;
      v735[4] = v737;
      v735[5] = v170;
      v735[6] = v175;
      v735[7] = v177;
      v735[8] = v162;
      *(v735 + 72) = v560;
      break;
  }

  return result;
}