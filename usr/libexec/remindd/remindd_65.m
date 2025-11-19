uint64_t sub_1005FC6A4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068D1FC);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AD7C4, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &unk_100938870, off_1008D4128);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AD7E0;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AD820;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AD854;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AD874;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005FCEAC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068D520);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AEE54, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F790, off_1008D4158);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AEE70;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AEEB0;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AEEE4;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AEF04;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005FD6B4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068E5A8);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF144, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AF160;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AF1A0;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AF1C0;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AF1E0;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005FDEBC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068E204);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF050, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &unk_100944ED0, off_1008D41A0);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AF06C;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AF0AC;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AF0CC;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AF0EC;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005FE6C4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068DC48);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AEF5C, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_100944EC8, off_1008D41F0);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AEF78;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AEFB8;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AEFD8;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AEFF8;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005FEECC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_1006969AC(a1, sub_10068E8C8);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF340, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AF35C;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AF39C;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AF3D0;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AF3F0;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005FF6D4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_10068EDEC);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006ABEC8, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006ABEE4;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006ABF24;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006ABF58;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006ABF78;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1005FFEE0(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_10068F32C);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC010, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AC02C;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AC09C;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AC0D0;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AC0F0;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1006006EC(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_10068F914);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AFC6C, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    type metadata accessor for REMCDDueDateDeltaAlert();
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AFCE0;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AFD0C;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AFD40;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AFDA8;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_100600EE8(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006929CC);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF674, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AF690;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AF6BC;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AF6F0;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AF724;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_1006016F4(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_100692448);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AF448, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &unk_100938880, off_1008D41A8);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AF464;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AF490;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AF4C4;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AF4F8;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_100601F00(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006920C0);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006B0374, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AD690;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AD6BC;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AD6F0;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AD724;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_10060270C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006918EC);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC8D0, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    type metadata accessor for REMCDSavedReminder();
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AC8EC;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AC918;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AC94C;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AC96C;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_100602F08(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006911E4);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC760, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    sub_1000060C8(0, &unk_10093F770, off_1008D41E8);
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AC77C;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AC7A8;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AC7DC;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AC810;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_100603714(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_100690B6C);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC4B4, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    type metadata accessor for REMCDTemplate();
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AC4D0;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AC4FC;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AC530;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AC564;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_100603F10(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006906DC);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC378, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    type metadata accessor for REMCDListSection();
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AC394;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AC3E8;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AC408;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AC428;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_10060470C(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_1006902A0);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC26C, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    type metadata accessor for REMCDSmartListSection();
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AC288;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AC2B4;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AC2D4;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AC2F4;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_100604F08(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v71 = a2;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v8 = 0;
  sub_100696C24(a1, sub_10068FD94);
  v9 = 0;
  __chkstk_darwin(v10);
  v61[2] = &v71;
  v11 = sub_100337810(_swiftEmptyDictionarySingleton, sub_1006AC134, v61, a1);

  v13 = sub_1001A6DC0(v12);
  sub_1003DA95C(v13);

  if (qword_100936008 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_100945730);
  swift_bridgeObjectRetain_n();

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  v17 = os_log_type_enabled(v15, v16);
  v68 = 0;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v70[0] = v64;
    *v18 = 134218498;
    v66 = v15;
    v67 = 0;
    v65 = v16;
    if (v6)
    {
      v19 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v18 + 4) = v19;

    *(v18 + 12) = 2082;
    type metadata accessor for REMCDTemplateSection();
    v20 = [swift_getObjCClassFromMetadata() description];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = sub_10000668C(v21, v23, v70);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2082;
    v25 = v11[2];
    if (v25)
    {
      v62 = v4;
      v26 = sub_1003689CC(v25, 0);
      v63 = sub_10027DC5C(&v69, v26 + 4, v25, v11);

      result = sub_10001B860();
      if (v63 != v25)
      {
        __break(1u);
        return result;
      }

      v9 = v67;
      v4 = v62;
    }

    else
    {

      v9 = v67;
    }

    v27 = v65;
    v28 = Array.description.getter();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, v70);

    *(v18 + 24) = v31;
    v32 = v66;
    _os_log_impl(&_mh_execute_header, v66, v27, "Ingest() {ingestable.count: %ld, ingestor: %{public}s, accountIdentifiers: %{public}s}", v18, 0x20u);
    swift_arrayDestroy();

    v8 = v68;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = v9;
  v34[4] = v8;
  v34[5] = v11;
  v34[6] = v4;
  swift_beginAccess();
  v35 = v3[14];
  swift_retain_n();

  swift_errorRetain();
  swift_errorRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[14] = v35;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v35 = sub_100366664(0, v35[2] + 1, 1, v35);
    v3[14] = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    v35 = sub_100366664((v37 > 1), v38 + 1, 1, v35);
  }

  v35[2] = v38 + 1;
  v39 = &v35[2 * v38];
  v39[4] = sub_1006AC150;
  v39[5] = v34;
  v3[14] = v35;
  swift_endAccess();

  v40 = swift_allocObject();
  swift_weakInit();
  v41 = swift_allocObject();
  v41[2] = v40;
  v41[3] = v11;
  v41[4] = v4;
  swift_beginAccess();
  v42 = v3[15];

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v3[15] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_100366664(0, v42[2] + 1, 1, v42);
    v3[15] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_100366664((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v46 = &v42[2 * v45];
  v46[4] = sub_1006AC1A8;
  v46[5] = v41;
  v3[15] = v42;
  swift_endAccess();

  v47 = swift_allocObject();
  swift_weakInit();
  v48 = swift_allocObject();
  v48[2] = v47;
  v48[3] = v11;
  v48[4] = v4;
  swift_beginAccess();
  v49 = v3[16];

  v50 = swift_isUniquelyReferenced_nonNull_native();
  v3[16] = v49;
  if ((v50 & 1) == 0)
  {
    v49 = sub_100366664(0, v49[2] + 1, 1, v49);
    v3[16] = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    v49 = sub_100366664((v51 > 1), v52 + 1, 1, v49);
  }

  v49[2] = v52 + 1;
  v53 = &v49[2 * v52];
  v53[4] = sub_1006AC1C8;
  v53[5] = v48;
  v3[16] = v49;
  swift_endAccess();

  v54 = swift_allocObject();
  swift_weakInit();
  v55 = swift_allocObject();
  v55[2] = v54;
  v55[3] = v11;
  v55[4] = v4;
  swift_beginAccess();
  v56 = v3[17];

  v57 = swift_isUniquelyReferenced_nonNull_native();
  v3[17] = v56;
  if ((v57 & 1) == 0)
  {
    v56 = sub_100366664(0, v56[2] + 1, 1, v56);
    v3[17] = v56;
  }

  v59 = v56[2];
  v58 = v56[3];
  if (v59 >= v58 >> 1)
  {
    v56 = sub_100366664((v58 > 1), v59 + 1, 1, v56);
  }

  v56[2] = v59 + 1;
  v60 = &v56[2 * v59];
  v60[4] = sub_1006AC1E8;
  v60[5] = v55;
  v3[17] = v56;
  swift_endAccess();
}

uint64_t sub_100605704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    if (a2 || a3)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v35 = a6;
      v14 = a4 + 64;
      v15 = 1 << *(a4 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(a4 + 64);

      v38 = v13;
      result = swift_beginAccess();
      v18 = 0;
      v19 = (v15 + 63) >> 6;
      v36 = a4;
      if (v17)
      {
        while (1)
        {
          v20 = v18;
LABEL_12:
          v21 = __clz(__rbit64(v17)) | (v20 << 6);
          v22 = (*(a4 + 48) + 16 * v21);
          v23 = v22[1];
          v37 = *v22;
          v24 = *(*(a4 + 56) + 8 * v21);
          v25 = *(v38 + 144);
          v26 = *(v25 + 16);

          if (!v26)
          {
            goto LABEL_19;
          }

          v27 = sub_100005F4C(v37, v23);
          if ((v28 & 1) == 0)
          {

LABEL_19:
            v31 = objc_opt_self();
            _StringGuts.grow(_:)(79);
            v32._object = 0x80000001007FE1C0;
            v32._countAndFlagsBits = 0xD00000000000004DLL;
            String.append(_:)(v32);
            v33._countAndFlagsBits = v37;
            v33._object = v23;
            String.append(_:)(v33);

            v34 = String._bridgeToObjectiveC()();

            [v31 internalErrorWithDebugDescription:v34];

            swift_willThrow();
          }

          v29 = v27;

          v30 = *(*(v25 + 56) + 8 * v29);

          v35(v24, v30);
          if (v8)
          {
            break;
          }

          v17 &= v17 - 1;

          v18 = v20;
          a4 = v36;
          if (!v17)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        while (1)
        {
          v20 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v20 >= v19)
          {
          }

          v17 = *(v14 + 8 * v20);
          ++v18;
          if (v17)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100605A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v8 = v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 || a3)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v39 = a5;
      v40 = a6;
      v14 = a4 + 64;
      v42 = result;
      v15 = 1 << *(a4 + 32);
      v16 = -1;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      v17 = v16 & *(a4 + 64);

      result = swift_beginAccess();
      v18 = 0;
      v19 = v42;
      v20 = (v15 + 63) >> 6;
      v41 = a4;
      v38 = a4 + 64;
      if (v17)
      {
        while (1)
        {
          v21 = v18;
LABEL_12:
          v22 = __clz(__rbit64(v17)) | (v21 << 6);
          v23 = (*(a4 + 48) + 16 * v22);
          v24 = *v23;
          v25 = v23[1];
          v26 = *(*(a4 + 56) + 8 * v22);
          v27 = *(v19 + 144);
          v28 = *(v27 + 16);

          if (!v28)
          {
            goto LABEL_19;
          }

          v29 = sub_100005F4C(v24, v25);
          if ((v30 & 1) == 0)
          {

LABEL_19:
            v33 = v24;
            v34 = objc_opt_self();
            _StringGuts.grow(_:)(79);
            v35._object = 0x80000001007FE1C0;
            v35._countAndFlagsBits = 0xD00000000000004DLL;
            String.append(_:)(v35);
            v36._countAndFlagsBits = v33;
            v36._object = v25;
            String.append(_:)(v36);

            v37 = String._bridgeToObjectiveC()();

            [v34 internalErrorWithDebugDescription:v37];

            swift_willThrow();
          }

          v31 = v29;

          v32 = *(*(v27 + 56) + 8 * v31);

          v19 = v42;
          v40(v26, v39, v32);
          if (v8)
          {
            break;
          }

          v17 &= v17 - 1;

          v18 = v21;
          a4 = v41;
          v14 = v38;
          if (!v17)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        while (1)
        {
          v21 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
          }

          v17 = *(v14 + 8 * v21);
          ++v18;
          if (v17)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100605D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    if (a2 || a3)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v13 = a4 + 64;
      v14 = 1 << *(a4 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(a4 + 64);

      result = swift_beginAccess();
      v17 = 0;
      v18 = (v14 + 63) >> 6;
      v36 = a4 + 64;
      v38 = v12;
      v39 = a4;
      v37 = a5;
      if (v16)
      {
        while (1)
        {
          v19 = v17;
LABEL_12:
          v20 = __clz(__rbit64(v16)) | (v19 << 6);
          v21 = *(a4 + 56);
          v22 = (*(a4 + 48) + 16 * v20);
          v24 = *v22;
          v23 = v22[1];
          v25 = *(v21 + 8 * v20);
          v26 = *(v12 + 144);
          v27 = *(v26 + 16);

          if (!v27)
          {
            goto LABEL_19;
          }

          v28 = sub_100005F4C(v24, v23);
          if ((v29 & 1) == 0)
          {

LABEL_19:
            v32 = objc_opt_self();
            _StringGuts.grow(_:)(79);
            v33._object = 0x80000001007FE1C0;
            v33._countAndFlagsBits = 0xD00000000000004DLL;
            String.append(_:)(v33);
            v34._countAndFlagsBits = v24;
            v34._object = v23;
            String.append(_:)(v34);

            v35 = String._bridgeToObjectiveC()();

            [v32 internalErrorWithDebugDescription:v35];

            swift_willThrow();
            goto LABEL_20;
          }

          v30 = v28;

          v31 = *(*(v26 + 56) + 8 * v30);

          v12 = v38;
          sub_1006295AC(v25, v37, v31, sub_1006B0254, sub_100759CB4, type metadata accessor for REMCDTemplateSection, sub_1005E6E68, sub_100390CE4, sub_10068FBF4, &off_1008E1148, type metadata accessor for REMCDTemplateSection, sub_100393C74, sub_1004A705C, &type metadata for REMTemplateSectionStorageCDIngestor.ValueKey, sub_100668B38);
          if (v6)
          {
            break;
          }

          v16 &= v16 - 1;

          v17 = v19;
          a4 = v39;
          v13 = v36;
          if (!v16)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v19 >= v18)
          {
LABEL_20:
          }

          v16 = *(v13 + 8 * v19);
          ++v17;
          if (v16)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100606124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v6 = v5;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    if (a2 || a3)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v13 = a4 + 64;
      v14 = 1 << *(a4 + 32);
      v15 = -1;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      v16 = v15 & *(a4 + 64);

      result = swift_beginAccess();
      v17 = 0;
      v18 = (v14 + 63) >> 6;
      v36 = a4 + 64;
      v38 = v12;
      v39 = a4;
      v37 = a5;
      if (v16)
      {
        while (1)
        {
          v19 = v17;
LABEL_12:
          v20 = __clz(__rbit64(v16)) | (v19 << 6);
          v21 = *(a4 + 56);
          v22 = (*(a4 + 48) + 16 * v20);
          v24 = *v22;
          v23 = v22[1];
          v25 = *(v21 + 8 * v20);
          v26 = *(v12 + 144);
          v27 = *(v26 + 16);

          if (!v27)
          {
            goto LABEL_19;
          }

          v28 = sub_100005F4C(v24, v23);
          if ((v29 & 1) == 0)
          {

LABEL_19:
            v32 = objc_opt_self();
            _StringGuts.grow(_:)(79);
            v33._object = 0x80000001007FE1C0;
            v33._countAndFlagsBits = 0xD00000000000004DLL;
            String.append(_:)(v33);
            v34._countAndFlagsBits = v24;
            v34._object = v23;
            String.append(_:)(v34);

            v35 = String._bridgeToObjectiveC()();

            [v32 internalErrorWithDebugDescription:v35];

            swift_willThrow();
            goto LABEL_20;
          }

          v30 = v28;

          v31 = *(*(v26 + 56) + 8 * v30);

          v12 = v38;
          sub_1006295AC(v25, v37, v31, sub_1006B0270, sub_100759CB4, type metadata accessor for REMCDSmartListSection, sub_1005E7BE0, sub_100390CF8, sub_100690100, &off_1008E11C8, type metadata accessor for REMCDSmartListSection, sub_100393C74, sub_100500870, &type metadata for REMSmartListSectionStorageCDIngestor.ValueKey, sub_100669408);
          if (v6)
          {
            break;
          }

          v16 &= v16 - 1;

          v17 = v19;
          a4 = v39;
          v13 = v36;
          if (!v16)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        while (1)
        {
          v19 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v19 >= v18)
          {
LABEL_20:
          }

          v16 = *(v13 + 8 * v19);
          ++v17;
          if (v16)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100606508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v8 = v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    if (a2 || a3)
    {
      swift_willThrow();
      swift_errorRetain();
    }

    else
    {
      v36 = a5;
      v37 = a6;
      v15 = a4 + 64;
      v16 = 1 << *(a4 + 32);
      v17 = -1;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      v18 = v17 & *(a4 + 64);

      result = swift_beginAccess();
      v19 = 0;
      v20 = (v16 + 63) >> 6;
      v38 = a4;
      v39 = v14;
      if (v18)
      {
        while (1)
        {
          v21 = v19;
LABEL_12:
          v22 = __clz(__rbit64(v18)) | (v21 << 6);
          v23 = (*(a4 + 48) + 16 * v22);
          v24 = v23[1];
          v40 = *v23;
          v25 = *(*(a4 + 56) + 8 * v22);
          v26 = *(v14 + 144);
          v27 = *(v26 + 16);

          if (!v27)
          {
            goto LABEL_19;
          }

          v28 = sub_100005F4C(v40, v24);
          if ((v29 & 1) == 0)
          {

LABEL_19:
            v32 = objc_opt_self();
            _StringGuts.grow(_:)(79);
            v33._object = 0x80000001007FE1C0;
            v33._countAndFlagsBits = 0xD00000000000004DLL;
            String.append(_:)(v33);
            v34._countAndFlagsBits = v40;
            v34._object = v24;
            String.append(_:)(v34);

            v35 = String._bridgeToObjectiveC()();

            [v32 internalErrorWithDebugDescription:v35];

            swift_willThrow();
          }

          v30 = v28;

          v31 = *(*(v26 + 56) + 8 * v30);

          v14 = v39;
          v37(v25, v36, v31);
          if (v8)
          {
            break;
          }

          v18 &= v18 - 1;

          v19 = v21;
          a4 = v38;
          if (!v18)
          {
            goto LABEL_9;
          }
        }
      }

      else
      {
LABEL_9:
        while (1)
        {
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v21 >= v20)
          {
          }

          v18 = *(v15 + 8 * v21);
          ++v19;
          if (v18)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_10060681C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = a2 + 64;
    v10 = 1 << *(a2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a2 + 64);

    result = swift_beginAccess();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v35 = v8;
    v31 = a2;
    if (v12)
    {
      while (1)
      {
        v34 = v5;
        v15 = v13;
LABEL_10:
        v16 = __clz(__rbit64(v12)) | (v15 << 6);
        v17 = (*(a2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a2 + 56) + 8 * v16);
        v21 = *(v35 + 144);
        v22 = *(v21 + 16);

        if (!v22)
        {
          goto LABEL_17;
        }

        v23 = sub_100005F4C(v19, v18);
        if ((v24 & 1) == 0)
        {

LABEL_17:
          v27 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v28._object = 0x80000001007FE1C0;
          v28._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v28);
          v29._countAndFlagsBits = v19;
          v29._object = v18;
          String.append(_:)(v29);

          v30 = String._bridgeToObjectiveC()();

          [v27 internalErrorWithDebugDescription:v30];

          swift_willThrow();
        }

        v25 = v23;

        v26 = *(*(v21 + 56) + 8 * v25);

        a4(v20, a3, v26);
        v5 = v34;
        if (v34)
        {
          break;
        }

        v12 &= v12 - 1;

        v13 = v15;
        a2 = v31;
        if (!v12)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v14)
        {
        }

        v12 = *(v9 + 8 * v15);
        ++v13;
        if (v12)
        {
          v34 = v5;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100606ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10063DA3C(v19, a3, v25, sub_1006AFC34, sub_1003DF910, &qword_100940370, off_1008D4150, sub_100660CF4, sub_100393C74, sub_100683884);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100606E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10063DA3C(v19, a3, v25, sub_1006AFB40, sub_1003DF93C, &qword_100940360, off_1008D4138, sub_1006615EC, sub_100393C74, sub_100683884);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100607144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10063DA3C(v19, a3, v25, sub_1006AFA4C, sub_1003DF968, &qword_100940350, off_1008D4130, sub_100661EE4, sub_100393C74, sub_100683460);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100607478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10063DA3C(v19, a3, v25, sub_1006AF958, sub_1003DF994, &qword_10094F688, off_1008D4140, sub_1006627DC, sub_100393C74, sub_100683460);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1006077AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_100642088(v19, a3, v25, sub_1006AF018, sub_1003DFA18, &qword_100944EC8, off_1008D41F0, sub_1006642C4, sub_100393C74, &type metadata for REMURLAttachmentCDIngestor.RelationshipKey);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100607AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_100642088(v19, a3, v25, sub_1006AF10C, sub_1003DFA44, &unk_100944ED0, off_1008D41A0, sub_100664BBC, sub_100393C74, &type metadata for REMImageAttachmentCDIngestor.RelationshipKey);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100607DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_100642088(v19, a3, v25, sub_1006AF200, sub_1003DFA70, &qword_100939DF0, off_1008D4188, sub_1006654B4, sub_100393C74, &type metadata for REMFileAttachmentCDIngestor.RelationshipKey);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100608124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_100648E30(v19, a3, v25, sub_1006AC23C, sub_1003E0CA8, type metadata accessor for REMCDTemplateSection, sub_1005E6E68, sub_100668B38, sub_100393C74, sub_1003B6CA0, sub_1004A7870);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100608484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_100648E30(v19, a3, v25, sub_1006AC348, sub_1003E0CD4, type metadata accessor for REMCDSmartListSection, sub_1005E7BE0, sub_100669408, sub_100393C74, sub_1003B6CA0, sub_100501084);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1006087E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_100648E30(v19, a3, v25, sub_1006AC484, sub_1003E0D00, type metadata accessor for REMCDListSection, sub_1005E8958, sub_100669CD8, sub_100393C74, sub_1003B6CA0, sub_1003B769C);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100608B44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v5 = v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;
    v9 = a2 + 64;
    v10 = 1 << *(a2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a2 + 64);

    result = swift_beginAccess();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v35 = v8;
    v31 = a2;
    if (v12)
    {
      while (1)
      {
        v34 = v5;
        v15 = v13;
LABEL_10:
        v16 = __clz(__rbit64(v12)) | (v15 << 6);
        v17 = (*(a2 + 48) + 16 * v16);
        v19 = *v17;
        v18 = v17[1];
        v20 = *(*(a2 + 56) + 8 * v16);
        v21 = *(v35 + 144);
        v22 = *(v21 + 16);

        if (!v22)
        {
          goto LABEL_17;
        }

        v23 = sub_100005F4C(v19, v18);
        if ((v24 & 1) == 0)
        {

LABEL_17:
          v27 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v28._object = 0x80000001007FE1C0;
          v28._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v28);
          v29._countAndFlagsBits = v19;
          v29._object = v18;
          String.append(_:)(v29);

          v30 = String._bridgeToObjectiveC()();

          [v27 internalErrorWithDebugDescription:v30];

          swift_willThrow();
        }

        v25 = v23;

        v26 = *(*(v21 + 56) + 8 * v25);

        a4(v20, a3, v26);
        v5 = v34;
        if (v34)
        {
          break;
        }

        v12 &= v12 - 1;

        v13 = v15;
        a2 = v31;
        if (!v12)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= v14)
        {
        }

        v12 = *(v9 + 8 * v15);
        ++v13;
        if (v12)
        {
          v34 = v5;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100608E08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_1006531A4(v19, a3, v25, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_10093CFE0, off_1008D4190, sub_10065FB04, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100609128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_1006531A4(v19, a3, v25, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100940370, off_1008D4150, sub_100660CF4, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100609448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_1006531A4(v19, a3, v25, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100940360, off_1008D4138, sub_1006615EC, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100609768(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_1006531A4(v19, a3, v25, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100940350, off_1008D4130, sub_100661EE4, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100609A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_1006531A4(v19, a3, v25, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_10094F688, off_1008D4140, sub_1006627DC, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100609DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_1006531A4(v19, a3, v25, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &unk_100938870, off_1008D4128, sub_1006630D4, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060A0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_1006531A4(v19, a3, v25, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &unk_10093F790, off_1008D4158, sub_1006639CC, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060A3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_1006531A4(v19, a3, v25, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100944EC8, off_1008D41F0, sub_1006642C4, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060A708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_1006531A4(v19, a3, v25, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &unk_100944ED0, off_1008D41A0, sub_100664BBC, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060AA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_1006531A4(v19, a3, v25, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100939DF0, off_1008D4188, sub_1006654B4, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060AD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_1006531A4(v19, a3, v25, static REMCDRecurrenceRule.shouldAttemptLocalObjectMerge(), sub_100759CB4, &qword_100940C50, off_1008D41C8, sub_100665DAC, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060B068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_100653BCC(v19, a3, v25, sub_1006B0238, sub_100759CB4, &qword_100942E50, off_1008D41E0, sub_1006670C8, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060B388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v17, v18);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v17;
          v28._object = v18;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_100653BCC(v19, a3, v25, sub_1006B0238, sub_100759CB4, &qword_10094F150, off_1008D4178, sub_100667998, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060B6A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065449C(v19, a3, v25, sub_1006B0238, sub_100759CB4, type metadata accessor for REMCDDueDateDeltaAlert, sub_100668268, sub_1005E60F0, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060B9E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065449C(v19, a3, v25, sub_1006B0238, sub_100759CB4, type metadata accessor for REMCDTemplateSection, sub_100668B38, sub_1005E6E68, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060BD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065449C(v19, a3, v25, sub_1006B0238, sub_100759CB4, type metadata accessor for REMCDSmartListSection, sub_100669408, sub_1005E7BE0, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060C050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065449C(v19, a3, v25, sub_1006B0238, sub_100759CB4, type metadata accessor for REMCDListSection, sub_100669CD8, sub_1005E8958, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060C388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = a2 + 64;
    v9 = 1 << *(a2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a2 + 64);

    result = swift_beginAccess();
    v12 = 0;
    v13 = (v9 + 63) >> 6;
    v33 = v7;
    v30 = a2;
    if (v11)
    {
      while (1)
      {
        v32 = v4;
        v14 = v12;
LABEL_10:
        v15 = __clz(__rbit64(v11)) | (v14 << 6);
        v16 = (*(a2 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a2 + 56) + 8 * v15);
        v20 = *(v33 + 144);
        v21 = *(v20 + 16);

        if (!v21)
        {
          goto LABEL_17;
        }

        v22 = sub_100005F4C(v18, v17);
        if ((v23 & 1) == 0)
        {

LABEL_17:
          v26 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v27._object = 0x80000001007FE1C0;
          v27._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v27);
          v28._countAndFlagsBits = v18;
          v28._object = v17;
          String.append(_:)(v28);

          v29 = String._bridgeToObjectiveC()();

          [v26 internalErrorWithDebugDescription:v29];

          swift_willThrow();
        }

        v24 = v22;

        v25 = *(*(v20 + 56) + 8 * v24);

        sub_10065449C(v19, a3, v25, sub_1006AC9C8, sub_100759CB4, type metadata accessor for REMCDSavedReminder, sub_10066B748, sub_1005EA438, sub_100393C74);
        v4 = v32;
        if (v32)
        {
          break;
        }

        v11 &= v11 - 1;

        v12 = v14;
        a2 = v30;
        if (!v11)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
        }

        v11 = *(v8 + 8 * v14);
        ++v12;
        if (v11)
        {
          v32 = v4;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060C6C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006ACBCC(v18, v24);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060C97C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006AD894(v18, v24, &qword_10093CFE0, off_1008D4190, sub_10065FB04, sub_100393C74);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060CC68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006AE350(v18, v24, &qword_100940370, off_1008D4150, sub_100660CF4, sub_100393C74);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060CF54(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006AE350(v18, v24, &qword_100940360, off_1008D4138, sub_1006615EC, sub_100393C74);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060D240(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006AE350(v18, v24, &qword_100940350, off_1008D4130, sub_100661EE4, sub_100393C74);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060D52C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006AE350(v18, v24, &qword_10094F688, off_1008D4140, sub_1006627DC, sub_100393C74);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060D818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006AE350(v18, v24, &unk_100938870, off_1008D4128, sub_1006630D4, sub_100393C74);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060DB04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006AD894(v18, v24, &unk_10093F790, off_1008D4158, sub_1006639CC, sub_100393C74);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10060DDF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = a2 + 64;
    v8 = 1 << *(a2 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(a2 + 64);

    result = swift_beginAccess();
    v11 = 0;
    v12 = (v8 + 63) >> 6;
    v31 = v6;
    v29 = a2;
    if (v10)
    {
      while (1)
      {
        v30 = v3;
        v13 = v11;
LABEL_10:
        v14 = __clz(__rbit64(v10)) | (v13 << 6);
        v15 = (*(a2 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a2 + 56) + 8 * v14);
        v19 = *(v31 + 144);
        v20 = *(v19 + 16);

        if (!v20)
        {
          goto LABEL_17;
        }

        v21 = sub_100005F4C(v17, v16);
        if ((v22 & 1) == 0)
        {

LABEL_17:
          v25 = objc_opt_self();
          _StringGuts.grow(_:)(79);
          v26._object = 0x80000001007FE1C0;
          v26._countAndFlagsBits = 0xD00000000000004DLL;
          String.append(_:)(v26);
          v27._countAndFlagsBits = v17;
          v27._object = v16;
          String.append(_:)(v27);

          v28 = String._bridgeToObjectiveC()();

          [v25 internalErrorWithDebugDescription:v28];

          swift_willThrow();
        }

        v23 = v21;

        v24 = *(*(v19 + 56) + 8 * v23);

        sub_1006AD894(v18, v24, &qword_100944EC8, off_1008D41F0, sub_1006642C4, sub_100393C74);
        v3 = v30;
        if (v30)
        {
          break;
        }

        v10 &= v10 - 1;

        v11 = v13;
        a2 = v29;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v12)
        {
        }

        v10 = *(v7 + 8 * v13);
        ++v11;
        if (v10)
        {
          v30 = v3;
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}