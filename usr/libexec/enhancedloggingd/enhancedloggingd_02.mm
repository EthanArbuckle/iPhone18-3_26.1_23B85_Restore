size_t sub_10002BD08()
{
  v15 = type metadata accessor for TargetDevice();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v15);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() sharedManager];
  v5 = [v4 snapshot];

  v6 = [v5 targetDevices];
  v7 = &_swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  sub_10001256C(0, &qword_100049E88, DEDDevice_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v8 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }

LABEL_14:

    return v7;
  }

  v9 = _CocoaArrayWrapper.endIndex.getter();
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_4:
  v16 = &_swiftEmptyArrayStorage;
  result = sub_1000284A8(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v7 = v16;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v8 + 8 * v11 + 32);
      }

      sub_100014768(v12, v3);
      v16 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        sub_1000284A8(v13 > 1, v14 + 1, 1);
        v7 = v16;
      }

      ++v11;
      v7[2] = v14 + 1;
      (*(v0 + 32))(v7 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v14, v3, v15);
    }

    while (v9 != v11);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

void *sub_10002BF64(unint64_t a1, void *a2)
{
  v131 = a2;
  v124 = type metadata accessor for UploadConsentItem();
  v117 = *(v124 - 8);
  v3 = *(v117 + 64);
  v4 = __chkstk_darwin(v124);
  v123 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v122 = &v105 - v6;
  v7 = sub_1000061F4(&qword_100049EC8, &unk_100038900);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v126 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v105 - v11;
  v134 = type metadata accessor for URL();
  v13 = *(v134 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v134);
  v17 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v125 = &v105 - v19;
  __chkstk_darwin(v18);
  v110 = &v105 - v21;
  if (a1 >> 62)
  {
    goto LABEL_67;
  }

  v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (v22)
  {
    v23 = 0;
    v106 = 0;
    v129 = a1 & 0xC000000000000001;
    v119 = a1 & 0xFFFFFFFFFFFFFF8;
    v118 = a1 + 32;
    v108 = (v13 + 8);
    v109 = NSFileModificationDate;
    v133 = v13 + 32;
    v114 = (v117 + 16);
    v113 = v117 + 8;
    v112 = v117 + 32;
    v24 = &selRef_clearPendingFollowUpItems_;
    *&v20 = 136315138;
    v107 = v20;
    *&v20 = 138412290;
    v105 = v20;
    v130 = _swiftEmptyArrayStorage;
    v111 = a1;
    v120 = v22;
    v121 = v12;
    while (1)
    {
      if (v129)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v119 + 16))
        {
          goto LABEL_65;
        }

        v25 = *(v118 + 8 * v23);
      }

      v26 = v25;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        v22 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v28 = [v25 dedExtensionIdentifier];
      v132 = v26;
      if (!v28)
      {
        if (qword_100049C18 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_100004274(v41, qword_10004C088);
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v42, v43, "Extension identifier is nil", v44, 2u);
        }

        goto LABEL_6;
      }

      v29 = a1;
      v30 = v28;
      v31 = [v30 v24[34]];
      v32 = v24;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      [v131 operatingSystemVersion];
      sub_100035688(v33, v35, v135[0], v135[1], v135[2]);
      v37 = v36;

      if (v37)
      {
        v38 = objc_opt_self();
        v39 = String._bridgeToObjectiveC()();

        v40 = [v38 findEntryForParameterName:{v39, v105, *(&v105 + 1)}];
      }

      else
      {
        v39 = [v30 v32[34]];
        if (!v39)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v39 = String._bridgeToObjectiveC()();
        }

        v40 = [objc_opt_self() findEntryForDEDIdentifier:{v39, v105, *(&v105 + 1)}];
      }

      v45 = v40;

      if (!v45)
      {

        v24 = &selRef_clearPendingFollowUpItems_;
        if (qword_100049C18 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for Logger();
        sub_100004274(v55, qword_10004C088);
        v56 = v30;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          v135[0] = v60;
          *v59 = v107;
          v61 = [v56 extensionIdentifier];
          v128 = v56;
          v62 = v61;
          v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v65 = v64;

          a1 = v111;
          v66 = sub_100031FE8(v63, v65, v135);
          v24 = &selRef_clearPendingFollowUpItems_;

          *(v59 + 4) = v66;
          _os_log_impl(&_mh_execute_header, v57, v58, "Failed to find entry for identifier: %s", v59, 0xCu);
          sub_10000D154(v60);

          v12 = v121;

          v22 = v120;
        }

        else
        {

          v22 = v120;
          a1 = v29;
        }

        goto LABEL_7;
      }

      v128 = v30;
      v46 = [v131 isCurrentDevice];
      v127 = v45;
      if (v46)
      {
        v47 = [objc_opt_self() defaultManager];
        v48 = [v132 rootURL];
        v49 = v110;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        URL.path(percentEncoded:)(1);
        (*v108)(v49, v134);
        v50 = String._bridgeToObjectiveC()();

        v135[0] = 0;
        v51 = [v47 attributesOfItemAtPath:v50 error:v135];

        v52 = v135[0];
        a1 = v29;
        if (!v51)
        {
          v88 = v135[0];
          v89 = v128;

          _convertNSErrorToError(_:)();
          swift_willThrow();
          if (qword_100049C18 != -1)
          {
            swift_once();
          }

          v106 = 0;
          v90 = type metadata accessor for Logger();
          sub_100004274(v90, qword_10004C088);
          swift_errorRetain();
          v91 = Logger.logObject.getter();
          v92 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v91, v92))
          {
            v93 = swift_slowAlloc();
            v94 = v89;
            v95 = swift_slowAlloc();
            *v93 = v105;
            swift_errorRetain();
            v96 = _swift_stdlib_bridgeErrorToNSError();
            *(v93 + 4) = v96;
            *v95 = v96;
            _os_log_impl(&_mh_execute_header, v91, v92, "Error assembling UploadConsentItem: %@", v93, 0xCu);
            sub_100010EB8(v95, &qword_100049E70, &qword_100038FA0);

            a1 = v29;
          }

          else
          {
          }

          v12 = v121;
          goto LABEL_61;
        }

        type metadata accessor for FileAttributeKey(0);
        sub_10002D77C(&qword_100049D98, type metadata accessor for FileAttributeKey);
        v53 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v54 = v52;

        v12 = v121;
        v45 = v127;
        if (!*(v53 + 16))
        {
          goto LABEL_35;
        }
      }

      else
      {
        v53 = sub_10002B190(_swiftEmptyArrayStorage, &qword_10004A340, &qword_100038BF0, &qword_10004A348, &qword_100038BF8);
        a1 = v29;
        if (!*(v53 + 16))
        {
          goto LABEL_35;
        }
      }

      v67 = sub_1000239D4(v109);
      if (v68)
      {
        sub_10000D268(*(v53 + 56) + 32 * v67, v135);

        v69 = type metadata accessor for Date();
        v70 = swift_dynamicCast();
        (*(*(v69 - 8) + 56))(v12, v70 ^ 1u, 1, v69);
        goto LABEL_36;
      }

LABEL_35:

      v71 = type metadata accessor for Date();
      (*(*(v71 - 8) + 56))(v12, 1, 1, v71);
LABEL_36:
      v72 = [v45 displayNameLocalizationKey];
      v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v75 = v74;

      sub_100010BD4(v12, v126, &qword_100049EC8, &unk_100038900);
      v76 = v132;
      v77 = [v132 rootURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v78 = [v76 attachmentItems];
      sub_10001256C(0, &qword_10004A338, DEDAttachmentItem_ptr);
      v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v80 = v128;
      if (v79 >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (v12)
        {
LABEL_38:
          v135[0] = _swiftEmptyArrayStorage;
          sub_10002858C(0, v12 & ~(v12 >> 63), 0);
          if (v12 < 0)
          {
            goto LABEL_66;
          }

          v115 = v75;
          v116 = v73;
          v81 = 0;
          v82 = v135[0];
          do
          {
            if ((v79 & 0xC000000000000001) != 0)
            {
              v83 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v83 = *(v79 + 8 * v81 + 32);
            }

            v84 = v83;
            v85 = [v83 attachedPath];
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            v135[0] = v82;
            v87 = v82[2];
            v86 = v82[3];
            if (v87 >= v86 >> 1)
            {
              sub_10002858C(v86 > 1, v87 + 1, 1);
              v82 = v135[0];
            }

            ++v81;
            v82[2] = v87 + 1;
            (*(v13 + 32))(v82 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v87, v17, v134);
          }

          while (v12 != v81);

          a1 = v111;
          v80 = v128;
          goto LABEL_56;
        }
      }

      else
      {
        v12 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12)
        {
          goto LABEL_38;
        }
      }

LABEL_56:
      v97 = v122;
      UploadConsentItem.init(titleKey:modificationDate:rootURL:files:)();
      (*v114)(v123, v97, v124);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = v121;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v130 = sub_1000235D4(0, v130[2] + 1, 1, v130, &qword_10004A328, &qword_100038BA0, &type metadata accessor for UploadConsentItem);
      }

      v100 = v130[2];
      v99 = v130[3];
      if (v100 >= v99 >> 1)
      {
        v130 = sub_1000235D4(v99 > 1, v100 + 1, 1, v130, &qword_10004A328, &qword_100038BA0, &type metadata accessor for UploadConsentItem);
      }

      v101 = v117;
      v102 = v124;
      (*(v117 + 8))(v122, v124);
      v103 = v130;
      v130[2] = v100 + 1;
      (*(v101 + 32))(v103 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v100, v123, v102);
      sub_100010EB8(v12, &qword_100049EC8, &unk_100038900);
LABEL_61:
      v22 = v120;
LABEL_6:
      v24 = &selRef_clearPendingFollowUpItems_;
LABEL_7:
      if (v23 == v22)
      {
        return v130;
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void sub_10002CE50()
{
  swift_beginAccess();
  v1 = 0;
  v2 = *(v0 + 136);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  while (v5)
  {
    v7 = v1;
LABEL_10:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    if (*(*(*(v2 + 56) + ((v7 << 9) | (8 * v8))) + OBJC_IVAR____TtC16enhancedloggingd10BugSession_uploadStatus) != 1)
    {
      v9 = 0;
      v10 = *(v0 + 136);
      v11 = 1 << *(v10 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(v10 + 64);
      v14 = (v11 + 63) >> 6;
      while (v13)
      {
        v15 = v9;
LABEL_20:
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        if (!*(*(*(v10 + 56) + ((v15 << 9) | (8 * v16))) + OBJC_IVAR____TtC16enhancedloggingd10BugSession_uploadStatus))
        {
          if (qword_100049C18 != -1)
          {
            swift_once();
          }

          v17 = type metadata accessor for Logger();
          sub_100004274(v17, qword_10004C088);
          v18 = Logger.logObject.getter();
          v19 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            *v20 = 0;
            _os_log_impl(&_mh_execute_header, v18, v19, "Waiting for additional devices to finish uploading...", v20, 2u);
          }

          goto LABEL_29;
        }
      }

      while (1)
      {
        v15 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v15 >= v14)
        {
          if (qword_100049C18 != -1)
          {
            swift_once();
          }

          v25 = type metadata accessor for Logger();
          sub_100004274(v25, qword_10004C088);
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            *v28 = 0;
            _os_log_impl(&_mh_execute_header, v26, v27, "One or more devices failed to upload", v28, 2u);
          }

          v18 = [objc_opt_self() sharedManager];
          [v18 finishWithFailure];
          goto LABEL_29;
        }

        v13 = *(v10 + 64 + 8 * v15);
        ++v9;
        if (v13)
        {
          v9 = v15;
          goto LABEL_20;
        }
      }

LABEL_36:
      __break(1u);
LABEL_37:
      swift_once();
      goto LABEL_26;
    }
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_36;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 64 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_10;
    }
  }

  if (qword_100049C18 != -1)
  {
    goto LABEL_37;
  }

LABEL_26:
  v21 = type metadata accessor for Logger();
  sub_100004274(v21, qword_10004C088);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "All devices completed uploading successfully!", v24, 2u);
  }

  v18 = [objc_opt_self() sharedManager];
  [v18 finish];
LABEL_29:
}

uint64_t sub_10002D25C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CFEC;

  return sub_1000223F4(a1, v4, v5, v6);
}

uint64_t sub_10002D314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000061F4(&unk_10004A630, &qword_100038A30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002D384(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100010F58;

  return sub_100023078(a1, v5);
}

uint64_t sub_10002D43C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10002D484(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  result = [a1 setStatus:v3];
  if ((v5 & 1) == 0)
  {

    return [a1 setConsent:v4];
  }

  return result;
}

uint64_t sub_10002D4F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_10002D524(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

_OWORD *sub_10002D568(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10002D628(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_10002D6A0()
{
  result = qword_10004A610;
  if (!qword_10004A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A610);
  }

  return result;
}

uint64_t sub_10002D6F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10002D628(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10002D73C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002D77C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002D7C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100010F58;

  return sub_10001DF98(a1, v4, v5, v6);
}

uint64_t sub_10002D894()
{
  v1 = sub_1000061F4(&qword_10004A478, &qword_100038D78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002D96C(uint64_t a1)
{
  v4 = *(sub_1000061F4(&qword_10004A478, &qword_100038D78) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10000CFEC;

  return sub_100020B6C(v8, a1, v6, v7, v9, v1 + v5);
}

uint64_t sub_10002DA80()
{
  v1 = sub_1000061F4(&qword_10004A478, &qword_100038D78);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10002DB58()
{
  v1 = *(*(sub_1000061F4(&qword_10004A478, &qword_100038D78) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_100020FC8(v2);
}

uint64_t sub_10002DBEC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10002DC3C(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 32);

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_10002DC84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100010F58;

  return sub_10001FCB4();
}

unint64_t sub_10002DD84(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_10002E14C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10002DE1C(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 16) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
    }

    v17 = *(a1 + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_10002DF64(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *result = a2 & 0x7FFFFFFF;
        result[1] = 0;
      }

      else
      {
        result[1] = a2 - 1;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

unint64_t sub_10002E14C()
{
  result = qword_10004A508;
  if (!qword_10004A508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004A508);
  }

  return result;
}

uint64_t sub_10002E1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10002E2C0()
{
  sub_1000061F4(&qword_10004A358, &unk_100038FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100038E40;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v1;
  *(inited + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 56) = v2;
  *(inited + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 72) = v3;
  *(inited + 80) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 88) = v4;
  *(inited + 96) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 104) = v5;
  *(inited + 112) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 120) = v6;
  v7 = sub_100034954(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_10004C0E0 = v7;
  return result;
}

uint64_t sub_10002E3C8()
{
  v1[3] = v0;
  v2 = *(*(sub_1000061F4(&unk_10004A630, &qword_100038A30) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10002E4C0, 0, 0);
}

uint64_t sub_10002E4C0()
{
  v16 = v0;
  if (qword_100049BF8 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  sub_100004274(v2, qword_10004C028);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100031FE8(*(v6 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id), *(v6 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8), &v15);
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] Starting new bug session", v7, 0xCu);
    sub_10000D154(v8);
  }

  v9 = v0[3];
  v10 = swift_task_alloc();
  v0[8] = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = 0;
  v11 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v12 = swift_task_alloc();
  v0[9] = v12;
  v13 = sub_10001256C(0, &qword_10004A618, DEDBugSession_ptr);
  *v12 = v0;
  v12[1] = sub_10002E6F0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000021, 0x800000010003A300, sub_10003545C, v10, v13);
}

uint64_t sub_10002E6F0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_10002EA1C;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_10002E80C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002E80C()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  [v5 setUploadDelegate:v4];
  v6 = *(v4 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession);
  *(v4 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession) = v5;
  v7 = v5;

  sub_1000352C4(v4 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_consentFormURL, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[4];

    sub_100010EB8(v8, &unk_10004A630, &qword_100038A30);
  }

  else
  {
    v9 = v0[10];
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);
    v10 = Data.init(contentsOf:options:)();
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    if (v9)
    {
      (*(v13 + 8))(v0[7], v0[5]);

      v15 = v0[7];
      v16 = v0[4];

      v17 = v0[1];
      goto LABEL_7;
    }

    v18 = v10;
    v19 = v11;
    isa = Data._bridgeToObjectiveC()().super.isa;
    URL.lastPathComponent.getter();
    v21 = String._bridgeToObjectiveC()();

    [v7 addData:isa withFilename:v21];
    sub_100010B10(v18, v19);

    (*(v13 + 8))(v12, v14);
  }

  v22 = v0[7];
  v23 = v0[4];

  v17 = v0[1];
LABEL_7:

  return v17();
}

uint64_t sub_10002EA1C()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_10002EAB4()
{
  v18 = v0;
  v1 = v0[9];
  v2 = OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession;
  v0[10] = OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession;
  if (*&v1[v2])
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
      v1 = v0[9];
    }

    v5 = type metadata accessor for Logger();
    sub_100004274(v5, qword_10004C028);
    v6 = v1;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[9];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_100031FE8(*(v9 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id), *(v9 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8), &v17);
      _os_log_impl(&_mh_execute_header, v7, v8, "[%{public}s] Reconnecting to bug session", v10, 0xCu);
      sub_10000D154(v11);
    }

    v12 = v0[9];
    v13 = swift_task_alloc();
    v0[11] = v13;
    *(v13 + 16) = v12;
    *(v13 + 24) = 1;
    v14 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v15 = swift_task_alloc();
    v0[12] = v15;
    v16 = sub_10001256C(0, &qword_10004A618, DEDBugSession_ptr);
    *v15 = v0;
    v15[1] = sub_10002ED3C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 8, 0, 0, 0xD000000000000021, 0x800000010003A300, sub_10003512C, v13, v16);
  }
}

uint64_t sub_10002ED3C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_10002EFA8;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_10002EE58;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002EE58()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  [v3 setUploadDelegate:v1];
  v4 = *&v1[v2];
  *&v1[v2] = v3;
  v5 = v3;

  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  v0[6] = sub_100035138;
  v0[7] = v6;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10002F384;
  v0[5] = &unk_100046020;
  v7 = _Block_copy(v0 + 2);
  v8 = v0[7];
  v9 = v1;
  v10 = v5;

  [v10 synchronizeSessionStatusWithCompletion:v7];
  _Block_release(v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10002EFA8()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

void sub_10002F00C(unint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5)
{
  if (qword_100049BF8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100004274(v8, qword_10004C028);
  v9 = a4;

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_100031FE8(*&v9[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v9[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], aBlock);
    *(v12 + 12) = 2080;
    sub_10001256C(0, &qword_10004A608, DEDExtension_ptr);
    v13 = Array.description.getter();
    v15 = sub_100031FE8(v13, v14, aBlock);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "[%{public}s] Ongoing DEs: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  if (a2 >> 62)
  {
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
LABEL_7:
      if (v16 < 1)
      {
        __break(1u);
      }

      else
      {
        v17 = 0;
        do
        {
          if ((a2 & 0xC000000000000001) != 0)
          {
            v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v18 = *(a2 + 8 * v17 + 32);
          }

          v19 = v18;
          ++v17;
          v20 = swift_allocObject();
          *(v20 + 16) = v9;
          *(v20 + 24) = v19;
          aBlock[4] = sub_100035140;
          aBlock[5] = v20;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100035458;
          aBlock[3] = &unk_100046070;
          v21 = _Block_copy(aBlock);
          v22 = v9;
          v23 = v19;

          [a5 attachCompletionHandlerForOngoingOperation:v23 handler:v21];
          _Block_release(v21);
        }

        while (v16 != v17);
      }

      return;
    }
  }

  else
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_7;
    }
  }

  v9[OBJC_IVAR____TtC16enhancedloggingd10BugSession_didCompleteCollection] = 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100021998(v9, a1);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10002F384(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10001256C(0, &qword_10004A600, DEDAttachmentGroup_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001256C(0, &qword_10004A608, DEDExtension_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001256C(0, &qword_10004A620, DEDExtensionIdentifier_ptr);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3, v4, v5);
}

void sub_10002F480(uint64_t a1, char *a2, char a3)
{
  v6 = sub_1000061F4(&qword_10004A628, &unk_100038FC0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = sub_100030D40(a3);
  v12 = [objc_opt_self() sharedInstance];
  v13 = *&a2[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id];
  v14 = *&a2[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8];
  v15 = String._bridgeToObjectiveC()();
  v21 = *&a2[OBJC_IVAR____TtC16enhancedloggingd10BugSession_device];
  (*(v7 + 16))(v10, a1, v6);
  v16 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v7 + 32))(v17 + v16, v10, v6);
  aBlock[4] = sub_100035234;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10002F990;
  aBlock[3] = &unk_1000460C0;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  [v12 startBugSessionWithIdentifier:v15 configuration:v11 target:v21 completion:v18];
  _Block_release(v18);
}

uint64_t sub_10002F6B8(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    v19 = a1;
    v3 = a1;
    sub_1000061F4(&qword_10004A628, &unk_100038FC0);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100004274(v7, qword_10004C028);
    v8 = a3;
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v11 = 136446466;
      *(v11 + 4) = sub_100031FE8(*&v8[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v8[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v19);
      *(v11 + 12) = 2112;
      if (a2)
      {
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        v15 = v14;
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      *(v11 + 14) = v14;
      *v12 = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "[%{public}s] Error starting bug session: %@", v11, 0x16u);
      sub_100010EB8(v12, &qword_100049E70, &qword_100038FA0);

      sub_10000D154(v13);
    }

    v16 = a2;
    if (!a2)
    {
      v17 = type metadata accessor for SessionError();
      sub_1000353E8(&qword_100049E80, &type metadata accessor for SessionError);
      v16 = swift_allocError();
      (*(*(v17 - 8) + 104))(v18, enum case for SessionError.noBugSession(_:), v17);
    }

    v19 = v16;
    swift_errorRetain();
    sub_1000061F4(&qword_10004A628, &unk_100038FC0);
    return CheckedContinuation.resume(throwing:)();
  }
}

void sub_10002F990(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10002FA1C(void *a1)
{
  v57 = type metadata accessor for CharacterSet();
  v2 = *(v57 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v57);
  v5 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 platform];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v58 = v7;
  v59 = v9;
  v60 = 44;
  v61 = 0xE100000000000000;
  v56[2] = sub_10002D6A0();
  v10 = StringProtocol.components<A>(separatedBy:)();

  v11 = *(v10 + 16);
  if (v11)
  {
    v60 = &_swiftEmptyArrayStorage;
    sub_100028404(0, v11, 0);
    v12 = v60;
    v13 = (v2 + 8);
    v56[0] = v10;
    v14 = (v10 + 40);
    do
    {
      v15 = *v14;
      v58 = *(v14 - 1);
      v59 = v15;

      static CharacterSet.whitespaces.getter();
      v16 = StringProtocol.trimmingCharacters(in:)();
      v18 = v17;
      (*v13)(v5, v57);

      v60 = v12;
      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        sub_100028404((v19 > 1), v20 + 1, 1);
        v12 = v60;
      }

      v12[2] = v20 + 1;
      v21 = &v12[2 * v20];
      *(v21 + 4) = v16;
      *(v21 + 5) = v18;
      v14 += 2;
      --v11;
    }

    while (v11);

    v23 = v12[2];
    if (v23)
    {
LABEL_7:
      v24 = 0;
      v57 = (v12 + 4);
      v25 = &_swiftEmptyArrayStorage;
      while (v24 < v12[2])
      {
        v26 = (v57 + 16 * v24);
        v28 = *v26;
        v27 = v26[1];
        ++v24;
        v29 = HIBYTE(v27) & 0xF;
        if ((v27 & 0x2000000000000000) == 0)
        {
          v29 = v28 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {
          v30 = objc_opt_self();

          v31 = [v30 allPlatforms];
          v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

          if (*(v32 + 16) && (v33 = *(v32 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v34 = Hasher._finalize()(), v35 = -1 << *(v32 + 32), v36 = v34 & ~v35, ((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
          {
            v37 = ~v35;
            while (1)
            {
              v38 = (*(v32 + 48) + 16 * v36);
              v39 = *v38 == v28 && v38[1] == v27;
              if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {
                break;
              }

              v36 = (v36 + 1) & v37;
              if (((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            v60 = v25;
            if ((result & 1) == 0)
            {
              result = sub_100028404(0, v25[2] + 1, 1);
              v25 = v60;
            }

            v41 = v25[2];
            v40 = v25[3];
            if (v41 >= v40 >> 1)
            {
              result = sub_100028404((v40 > 1), v41 + 1, 1);
              v25 = v60;
            }

            v25[2] = v41 + 1;
            v42 = &v25[2 * v41];
            *(v42 + 4) = v28;
            *(v42 + 5) = v27;
          }

          else
          {
LABEL_8:
          }
        }

        if (v24 == v23)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v12 = &_swiftEmptyArrayStorage;
    v23 = *(&_swiftEmptyArrayStorage + 2);
    if (v23)
    {
      goto LABEL_7;
    }
  }

  v25 = &_swiftEmptyArrayStorage;
LABEL_31:

  v43 = sub_100034954(v25);

  if (*(v43 + 16))
  {
    v44 = &selRef_clearPendingFollowUpItems_;
  }

  else
  {
    v45 = [objc_opt_self() currentDevice];
    v44 = &selRef_clearPendingFollowUpItems_;
    if (v45)
    {
      v46 = v45;

      sub_1000061F4(&qword_10004A358, &unk_100038FB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1000387E0;
      v48 = [v46 platform];
      v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v51 = v50;

      *(inited + 32) = v49;
      *(inited + 40) = v51;
      v43 = sub_100034954(inited);
      swift_setDeallocating();
      sub_100010C3C(inited + 32);
    }
  }

  v52 = [*(v56[1] + OBJC_IVAR____TtC16enhancedloggingd10BugSession_device) v44[52]];
  v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  LOBYTE(v52) = sub_10002E1C8(v53, v55, v43);

  return v52 & 1;
}

_DWORD *sub_10002FF68(_DWORD *a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v76 - v11;
  v13 = *&v1[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
  if (v13)
  {
    v79 = v2;
    v83 = v13;
    v14 = [a1 typeName];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    [*&v3[OBJC_IVAR____TtC16enhancedloggingd10BugSession_device] operatingSystemVersion];
    v18 = sub_1000355D4(v15, v17, aBlock, v87, v88);
    v20 = v19;

    v84 = v12;
    v80 = v6;
    v81 = v5;
    v78 = v10;
    if (v20)
    {
      v82 = v20;
      v21 = v18;
    }

    else
    {
      v29 = [a1 type];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v82 = v30;
    }

    *&v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(&v92 + 1) = v31;
    AnyHashable.init<A>(_:)();
    v93 = &type metadata for String;
    *&v92 = 0xD00000000000001ALL;
    *(&v92 + 1) = 0x8000000100039500;
    v32 = [a1 parameters];
    v33 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    sub_10002D568(&v92, v85);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v94 = v33;
    sub_1000256F8(v85, &aBlock, isUniquelyReferenced_nonNull_native);
    sub_10002D5D4(&aBlock);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [a1 setParameters:isa];

    [a1 executeAfterDuration];
    Date.init(timeIntervalSinceNow:)();
    v77 = v21;
    v36 = String._bridgeToObjectiveC()();
    v37 = [a1 parameters];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v38 = Dictionary._bridgeToObjectiveC()().super.isa;

    v39 = Date._bridgeToObjectiveC()().super.isa;
    v40 = swift_allocObject();
    *(v40 + 16) = v3;
    *(v40 + 24) = a1;
    v90 = sub_100035108;
    v91 = v40;
    aBlock = _NSConcreteStackBlock;
    v87 = 1107296256;
    v88 = sub_100035458;
    v89 = &unk_100045FD0;
    v41 = _Block_copy(&aBlock);
    v42 = v3;
    v43 = a1;

    a1 = [v83 startDiagnosticExtensionWithIdentifier:v36 parameters:v38 deferRunUntil:v39 completion:v41];
    _Block_release(v41);

    if (a1)
    {
      v44 = v81;
      v45 = v82;
      v46 = v80;
      if (qword_100049BF8 != -1)
      {
        swift_once();
      }

      v47 = type metadata accessor for Logger();
      sub_100004274(v47, qword_10004C028);
      v48 = v78;
      v49 = v84;
      (*(v46 + 16))(v78, v84, v44);
      v50 = v42;

      v51 = v45;
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        aBlock = v76;
        *v54 = 136446722;
        *(v54 + 4) = sub_100031FE8(*&v50[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v50[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &aBlock);
        *(v54 + 12) = 2080;
        v55 = sub_100031FE8(v77, v51, &aBlock);

        *(v54 + 14) = v55;
        *(v54 + 22) = 2080;
        sub_1000353E8(&qword_100049E98, &type metadata accessor for Date);
        v56 = dispatch thunk of CustomStringConvertible.description.getter();
        v58 = v57;
        v59 = *(v46 + 8);
        v59(v48, v44);
        v60 = sub_100031FE8(v56, v58, &aBlock);

        *(v54 + 24) = v60;
        _os_log_impl(&_mh_execute_header, v52, v53, "[%{public}s] DE %s scheduled to run at %s", v54, 0x20u);
        swift_arrayDestroy();

        v59(v84, v44);
      }

      else
      {

        v74 = *(v46 + 8);
        v74(v48, v44);
        v74(v49, v44);
      }
    }

    else
    {

      v61 = v80;
      if (qword_100049BF8 != -1)
      {
        swift_once();
      }

      v62 = type metadata accessor for Logger();
      sub_100004274(v62, qword_10004C028);
      v63 = v42;
      v64 = v43;
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v65, v66))
      {
        a1 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        *a1 = 136446466;
        *(a1 + 1) = sub_100031FE8(*&v63[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v63[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &aBlock);
        *(a1 + 6) = 2080;
        v67 = [v64 type];
        v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v69;

        v71 = sub_100031FE8(v68, v70, &aBlock);

        *(a1 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v65, v66, "[%{public}s] Failed to schedule DE %s", a1, 0x16u);
        swift_arrayDestroy();
      }

      v72 = type metadata accessor for SessionError();
      sub_1000353E8(&qword_100049E80, &type metadata accessor for SessionError);
      swift_allocError();
      (*(*(v72 - 8) + 104))(v73, enum case for SessionError.failedToScheduleDiagnosticExtension(_:), v72);
      swift_willThrow();

      (*(v61 + 8))(v84, v81);
    }
  }

  else
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100004274(v22, qword_10004C028);
    v23 = v1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      a1 = swift_slowAlloc();
      aBlock = a1;
      *v26 = 136446466;
      *(v26 + 4) = sub_100031FE8(*&v23[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v23[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &aBlock);
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_100031FE8(0xD00000000000002BLL, 0x800000010003A290, &aBlock);
      _os_log_impl(&_mh_execute_header, v24, v25, "[%{public}s] %s called when bugSession is nil", v26, 0x16u);
      swift_arrayDestroy();
    }

    v27 = type metadata accessor for SessionError();
    sub_1000353E8(&qword_100049E80, &type metadata accessor for SessionError);
    swift_allocError();
    (*(*(v27 - 8) + 104))(v28, enum case for SessionError.noBugSession(_:), v27);
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_100030A78(void *a1, int a2, id a3, SEL *a4)
{
  v5 = [a3 *a4];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  sub_1000310E0(v6, v8, a1);
}

id sub_100030AFC()
{
  v1 = *&v0[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
  if (v1)
  {
    return [v1 scheduleNotification];
  }

  if (qword_100049BF8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100004274(v3, qword_10004C028);
  v4 = v0;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_100031FE8(*&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v10);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_100031FE8(0xD000000000000016, 0x800000010003A0C0, &v10);
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] %s called when bugSession is nil", v7, 0x16u);
    swift_arrayDestroy();
  }

  v8 = type metadata accessor for SessionError();
  sub_1000353E8(&qword_100049E80, &type metadata accessor for SessionError);
  swift_allocError();
  (*(*(v8 - 8) + 104))(v9, enum case for SessionError.noBugSession(_:), v8);
  return swift_willThrow();
}

id sub_100030D40(char a1)
{
  if (qword_100049BF8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100004274(v3, qword_10004C028);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v7 = 136446466;
    *(v7 + 4) = sub_100031FE8(*&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v22);
    *(v7 + 12) = 2080;
    v8 = *&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_cloudKitData];
    v9 = Dictionary.description.getter();
    v11 = sub_100031FE8(v9, v10, &v22);

    *(v7 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] Creating bug session config with metadata: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  v12 = [objc_allocWithZone(DEDBugSessionConfiguration) init];
  if (qword_100049C40 != -1)
  {
    swift_once();
  }

  isa = Set._bridgeToObjectiveC()().super.isa;
  [v12 requestCapabilitiesSet:isa];

  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 cloudKitContainerIdentifier];

  if (a1)
  {
    v16 = 0;
  }

  else
  {
    v16 = 3;
  }

  [v12 setFinishingMove:v16];
  v17 = [v15 containerIdentifier];
  if (!v17)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = String._bridgeToObjectiveC()();
  }

  [v12 setCloudkitContainer:v17];

  v18 = *&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_cloudKitData];
  v19 = Dictionary._bridgeToObjectiveC()().super.isa;
  [v12 setCloudkitData:v19];

  [v12 setCloudkitUseDevelopmentEnvironment:{objc_msgSend(v15, "environment") == 2}];
  [v12 setNotifyingMove:3];
  v20 = [objc_opt_self() enhancedLoggingConfiguration];
  [v12 setNotifierConfiguration:v20];

  return v12;
}

void sub_1000310E0(uint64_t a1, unint64_t a2, void *a3)
{
  v7 = type metadata accessor for URL();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *&v3[OBJC_IVAR____TtC16enhancedloggingd10BugSession_bugSession];
  if (v12)
  {
    v38 = a1;
    v39 = v9;
    v13 = qword_100049BF8;
    v14 = v12;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100004274(v15, qword_10004C028);
    v16 = v3;

    v17 = a3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v37 = v14;
      v21 = v20;
      aBlock[0] = swift_slowAlloc();
      *v21 = 136446722;
      *(v21 + 4) = sub_100031FE8(*&v16[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v16[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], aBlock);
      *(v21 + 12) = 2082;
      *(v21 + 14) = sub_100031FE8(v38, a2, aBlock);
      *(v21 + 22) = 2080;
      v22 = [v17 rootURL];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1000353E8(&qword_10004A5F8, &type metadata accessor for URL);
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      (v39[1].isa)(v11, v7);
      v26 = sub_100031FE8(v23, v25, aBlock);

      *(v21 + 24) = v26;
      _os_log_impl(&_mh_execute_header, v18, v19, "[%{public}s] DE %{public}s finished with attachments at %s", v21, 0x20u);
      swift_arrayDestroy();

      v14 = v37;
    }

    v27 = swift_allocObject();
    *(v27 + 16) = v16;
    aBlock[4] = sub_1000350A8;
    aBlock[5] = v27;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100031970;
    aBlock[3] = &unk_100045F80;
    v28 = _Block_copy(aBlock);
    v29 = v16;

    [v14 getSessionStatusWithCompletion:v28];
    _Block_release(v28);
  }

  else
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100004274(v30, qword_10004C028);
    v31 = v3;
    v39 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_100031FE8(*&v31[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v31[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v39, v32, "[%{public}s] bugSession is nil", v33, 0xCu);
      sub_10000D154(v34);
    }

    else
    {
      v35 = v39;
    }
  }
}

void sub_1000315DC(unint64_t a1, unint64_t a2, void *a3)
{
  if (a2 >> 62)
  {
    v19 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v19;
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100004274(v5, qword_10004C028);
    v6 = a3;

    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v8 = 136446466;
      *(v8 + 4) = sub_100031FE8(*&v6[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v6[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v21);
      *(v8 + 12) = 2082;
      sub_10001256C(0, &qword_10004A608, DEDExtension_ptr);
      v9 = Array.description.getter();
      v11 = sub_100031FE8(v9, v10, &v21);

      *(v8 + 14) = v11;
      _os_log_impl(&_mh_execute_header, oslog, v7, "[%{public}s] Ongoing extensions: %{public}s", v8, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }

  else
  {
    v12 = a1;
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100004274(v13, qword_10004C028);
    v14 = a3;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v21 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_100031FE8(*&v14[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v14[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v21);
      _os_log_impl(&_mh_execute_header, v15, v16, "[%{public}s] All DEs finished", v17, 0xCu);
      sub_10000D154(v18);
    }

    v14[OBJC_IVAR____TtC16enhancedloggingd10BugSession_didCompleteCollection] = 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_100021998(v14, v12);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100031970(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  sub_10001256C(0, &qword_10004A600, DEDAttachmentGroup_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_10001256C(0, &qword_10004A608, DEDExtension_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3, v4);
}

id sub_100031A68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BugSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for BugSession()
{
  result = qword_10004A558;
  if (!qword_10004A558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100031B94()
{
  sub_10001DF40();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

id sub_100031CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *&v3[OBJC_IVAR____TtC16enhancedloggingd10BugSession_device];
  sub_1000061F4(&qword_10004A358, &unk_100038FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000387E0;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v9;
  sub_100034954(inited);
  swift_setDeallocating();
  sub_100010C3C(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v11 = [v7 hasCapabilities:isa];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1 == 1;
  }

  if (v12 && a2 == 1)
  {
    return [v3 bugSession:a3 didFinishUploadingWithError:0];
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if (a1 < 0)
    {
      __break(1u);
    }

    else
    {
      v15 = result;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = [v7 identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000C814(v15, a1, a2);

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

unint64_t sub_100031F94()
{
  result = qword_10004A5D0;
  if (!qword_10004A5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A5D0);
  }

  return result;
}

uint64_t sub_100031FE8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000320B4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000D268(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000D154(v11);
  return v7;
}

unint64_t sub_1000320B4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1000321C0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1000321C0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10003220C(a1, a2);
  sub_10003233C(&off_100045230);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10003220C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100032428(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100032428(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10003233C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10003249C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100032428(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000061F4(&unk_10004A5E0, &qword_100038FA8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003249C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000061F4(&unk_10004A5E0, &qword_100038FA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_100032590(int a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_100023838(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100025AF4();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_100024D70(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_100032624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_1000238C4(a1, a2);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100025EE4();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_100025204(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_1000326BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000061F4(&qword_10004A5F0, &qword_100038C40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10003291C(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for TargetDevice.DeviceType();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000061F4(&qword_10004A470, &unk_100038FD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_1000353E8(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100032C78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000061F4(&qword_10004A668, &unk_100038FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v34 = result;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v35 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v18 + 16));
      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = (v18 + 32);
        do
        {
          v22 = *v21++;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
          String.hash(into:)();

          --v20;
        }

        while (v20);
      }

      result = Hasher._finalize()();
      v6 = v34;
      v24 = -1 << *(v34 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v34 + 48) + 8 * v14) = v18;
      ++*(v34 + 16);
      v3 = v33;
      v11 = v35;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v35 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100032F30(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_100034298(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100033080(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for TargetDevice.DeviceType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_1000353E8(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_1000353E8(&qword_10004A3D8, &type metadata accessor for TargetDevice.DeviceType);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100034418(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_100033360(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v7 = *(a2 + 16);
  Hasher._combine(_:)(v7);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = (a2 + 32);
    do
    {
      v10 = *v9++;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
      String.hash(into:)();

      --v8;
    }

    while (v8);
  }

  v12 = Hasher._finalize()();
  v13 = v5 + 56;
  v14 = -1 << *(v5 + 32);
  v15 = v12 & ~v14;
  if ((*(v5 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v34 = v3;
    v33 = ~v14;
    while (1)
    {
      v17 = *(*(v5 + 48) + 8 * v15);
      if (*(v17 + 16) == v7)
      {
        break;
      }

LABEL_6:
      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (!v7 || v17 == a2)
    {
LABEL_22:

      *a1 = *(*(v5 + 48) + 8 * v15);

      return 0;
    }

    else
    {
      v18 = *(*(v5 + 48) + 8 * v15);

      v20 = 4;
      v21 = v7;
      while ((v20 - 4) < *(v17 + 16))
      {
        if ((v20 - 4) >= *(a2 + 16))
        {
          goto LABEL_25;
        }

        v22 = *(v17 + 8 * v20);
        v23 = *(a2 + 8 * v20);
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;
        if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
        {
        }

        else
        {
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v29 & 1) == 0)
          {

            v13 = v5 + 56;
            v3 = v34;
            v16 = v33;
            goto LABEL_6;
          }
        }

        ++v20;
        if (!--v21)
        {

          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }
  }

  else
  {
LABEL_23:
    v30 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *v3;

    sub_1000346BC(v32, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v36;
    *a1 = a2;
    return 1;
  }

  return result;
}

void *sub_1000335C4()
{
  v1 = v0;
  sub_1000061F4(&qword_10004A5F0, &qword_100038C40);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100033720()
{
  v1 = v0;
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000061F4(&qword_10004A470, &unk_100038FD0);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_100033958()
{
  v1 = v0;
  sub_1000061F4(&qword_10004A668, &unk_100038FE0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_100033AA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000061F4(&qword_10004A5F0, &qword_100038C40);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100033CE0(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for TargetDevice.DeviceType();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000061F4(&qword_10004A470, &unk_100038FD0);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1000353E8(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100033FFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000061F4(&qword_10004A668, &unk_100038FE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v33 = result;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v34 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v18 + 16));
      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = (v18 + 32);

        do
        {
          v22 = *v21++;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;
          String.hash(into:)();

          --v20;
        }

        while (v20);
      }

      else
      {
      }

      result = Hasher._finalize()();
      v6 = v33;
      v24 = -1 << *(v33 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_35;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v33 + 48) + 8 * v14) = v18;
      ++*(v33 + 16);
      v3 = v32;
      v11 = v34;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_33;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {

LABEL_33:
    *v2 = v6;
  }

  return result;
}

Swift::Int sub_100034298(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1000326BC(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1000335C4();
      goto LABEL_16;
    }

    sub_100033AA8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100034418(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for TargetDevice.DeviceType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10003291C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100033720();
      goto LABEL_12;
    }

    sub_100033CE0(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1000353E8(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1000353E8(&qword_10004A3D8, &type metadata accessor for TargetDevice.DeviceType);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_1000346BC(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_100032C78(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100033958();
      goto LABEL_28;
    }

    sub_100033FFC(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v10 = *(v5 + 16);
  Hasher._combine(_:)(v10);
  v11 = *(v5 + 16);
  if (v11)
  {
    v12 = (v5 + 32);
    do
    {
      v13 = *v12++;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;
      String.hash(into:)();

      --v11;
    }

    while (v11);
  }

  result = Hasher._finalize()();
  v15 = v8 + 56;
  v16 = -1 << *(v8 + 32);
  a2 = result & ~v16;
  if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
LABEL_28:
    v29 = *v33;
    *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    *(*(v29 + 48) + 8 * a2) = v5;
    v30 = *(v29 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (!v31)
    {
      *(v29 + 16) = v32;
      return result;
    }

    goto LABEL_32;
  }

  v17 = ~v16;
  v34 = ~v16;
  while (1)
  {
    v18 = *(*(v8 + 48) + 8 * a2);
    if (*(v18 + 16) == v10)
    {
      break;
    }

LABEL_13:
    a2 = (a2 + 1) & v17;
    if (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (!v10 || v18 == v5)
  {
    goto LABEL_34;
  }

  v19 = *(*(v8 + 48) + 8 * a2);

  v20 = 0;
  while (v20 < *(v18 + 16))
  {
    if (v20 >= *(v5 + 16))
    {
      goto LABEL_31;
    }

    v21 = *(v18 + 8 * v20 + 32);
    v22 = *(v5 + 32 + 8 * v20);
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
    if (v23 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v25 == v26)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {

        v17 = v34;
        v15 = v8 + 56;
        goto LABEL_13;
      }
    }

    if (v10 == ++v20)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:

LABEL_34:
  sub_1000061F4(&qword_10004A650, &qword_100038C90);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100034954(uint64_t a1)
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

      sub_100032F30(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1000349EC(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000061F4(&qword_10004A650, &qword_100038C90);
  sub_100035334();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;

      sub_100033360(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_100034A88(uint64_t a1)
{
  v2 = type metadata accessor for TargetDevice.DeviceType();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_1000353E8(&unk_10004A640, &type metadata accessor for TargetDevice.DeviceType);
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
      sub_100033080(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_100034C24(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    if ((a2 | a1) < 0)
    {
      __break(1u);
    }

    else
    {
      v6 = result;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = [*(v2 + OBJC_IVAR____TtC16enhancedloggingd10BugSession_device) identifier];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_10000C578(v6, a1, a2);

        swift_unknownObjectRelease();
      }

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_100034D20(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    swift_errorRetain();
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100004274(v3, qword_10004C028);
    swift_errorRetain();
    v4 = v1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v7 = 136446466;
      *(v7 + 4) = sub_100031FE8(*&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v4[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v19);
      *(v7 + 12) = 2112;
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v10;
      *v8 = v10;
      _os_log_impl(&_mh_execute_header, v5, v6, "[%{public}s] Upload failed: %@", v7, 0x16u);
      sub_100010EB8(v8, &qword_100049E70, &qword_100038FA0);

      sub_10000D154(v9);
    }

    else
    {
    }

    v17 = 2;
  }

  else
  {
    if (qword_100049BF8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100004274(v11, qword_10004C028);
    v12 = v1;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_100031FE8(*&v12[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id], *&v12[OBJC_IVAR____TtC16enhancedloggingd10BugSession_id + 8], &v19);
      _os_log_impl(&_mh_execute_header, v13, v14, "[%{public}s] Upload succeeded", v15, 0xCu);
      sub_10000D154(v16);
    }

    v17 = 1;
  }

  v2[OBJC_IVAR____TtC16enhancedloggingd10BugSession_uploadStatus] = v17;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10002CE50();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100035070()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000350B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000350C8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100035164()
{
  v1 = sub_1000061F4(&qword_10004A628, &unk_100038FC0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100035234(void *a1, uint64_t a2)
{
  v5 = *(*(sub_1000061F4(&qword_10004A628, &unk_100038FC0) - 8) + 80);
  v6 = *(v2 + 16);

  return sub_10002F6B8(a1, a2, v6);
}

uint64_t sub_1000352C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000061F4(&unk_10004A630, &qword_100038A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100035334()
{
  result = qword_10004A658;
  if (!qword_10004A658)
  {
    sub_10002D628(&qword_10004A650, &qword_100038C90);
    sub_1000353E8(&qword_10004A660, type metadata accessor for ELSPlatform);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A658);
  }

  return result;
}

uint64_t sub_1000353E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo24NSOperatingSystemVersiona16enhancedloggingdE1loiySbAB_ABtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5 >= a2 && a3 < a6;
  v8 = a2 < a5 || v7;
  if (a4 < a1)
  {
    v8 = 0;
  }

  if (a1 >= a4)
  {
    return v8;
  }

  else
  {
    return 1;
  }
}

unint64_t sub_10003557C()
{
  result = qword_10004A670;
  if (!qword_10004A670)
  {
    type metadata accessor for OperatingSystemVersion(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004A670);
  }

  return result;
}

unint64_t sub_1000355D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0xD000000000000036;
  v9 = *"optical" == a1 && a2 == 0xE700000000000000;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 >= 26)
  {
    if (a3 > 26)
    {
      return 0;
    }

    if (a4 >= 0 && (a4 > 0 || a5 >= 0))
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_100035688(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *"optical";
  v9 = a1 == 0xD000000000000036 && "ELSSnapshot8B16B20" == a2;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a3 >= 26)
  {
    if (a3 > 26)
    {
      return 0;
    }

    if (a4 >= 0 && (a4 > 0 || a5 >= 0))
    {
      return 0;
    }
  }

  return v8;
}

void sub_1000357C0(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 description];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&_mh_execute_header, a4, OS_LOG_TYPE_ERROR, "Enhanced logging already queued for: %@", a1, 0xCu);
}