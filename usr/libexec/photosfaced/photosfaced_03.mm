uint64_t sub_10004D030(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 | a2)
  {
    if (a1)
    {
      v23 = a1;

      sub_10004D27C(&v23, a4, &v22, &v24);

      v18 = v24;
      a1 = v25;
      v20 = v26;
      v19 = v27;
    }

    else
    {
      v19 = 0;
      v20 = 0;
      v18 = 0;
    }

    v24 = v18;
    v25 = a1;
    v26 = v20;
    v27 = v19;
    v23 = a2;
    sub_10000560C(&qword_10012A5C8, &qword_100109428);
    CheckedContinuation.resume<>(success:error:)();
    return sub_10005E33C(v18, a1, v20, v19);
  }

  else
  {
    static Log.default.getter();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "MAD Returned nil analysis and error.", v14, 2u);
    }

    (*(v8 + 8))(v11, v7);
    sub_10005DD30();
    v15 = swift_allocError();
    *v16 = 6;
    v24 = v15;
    sub_10000560C(&qword_10012A5C8, &qword_100109428);
    return CheckedContinuation.resume(throwing:)();
  }
}

uint64_t sub_10004D27C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t **a4@<X8>)
{
  v136 = a3;
  v129 = a4;
  v144 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v137 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v133 = &v129 - v11;
  v12 = __chkstk_darwin(v10);
  v131 = &v129 - v13;
  v14 = __chkstk_darwin(v12);
  v132 = &v129 - v15;
  v16 = __chkstk_darwin(v14);
  v130 = &v129 - v17;
  __chkstk_darwin(v16);
  v19 = &v129 - v18;
  v20 = *a1;
  static Log.default.getter();

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v135 = v6;
    v24 = v5;
    v25 = v23;
    v26 = swift_slowAlloc();
    *&v140 = v26;
    *v25 = 136315138;
    v27 = Dictionary.description.getter();
    v29 = sub_100102F80(v27, v28, &v140);

    *(v25 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v21, v22, "MAD returned analysis: %s", v25, 0xCu);
    sub_10000C304(v26);

    v5 = v24;
    v6 = v135;
  }

  v30 = *(v6 + 8);
  v30(v19, v5);
  v31 = v144;
  v32 = [v144 localIdentifier];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v138 = v33;
  v139 = v35;
  AnyHashable.init<A>(_:)();
  if (!*(v20 + 16) || (v36 = sub_100057C8C(&v140), (v37 & 1) == 0))
  {
    sub_10005E37C(&v140);
LABEL_18:
    v62 = v137;
    static Log.default.getter();
    v63 = v31;
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v64, v65))
    {

      v30(v62, v5);
      goto LABEL_22;
    }

    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v140 = v67;
    *v66 = 136315138;
    v68 = [v63 localIdentifier];
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v134 = v30;
    v70 = v5;
    v71 = v69;
    v73 = v72;

    v74 = sub_100102F80(v71, v73, &v140);

    *(v66 + 4) = v74;
    _os_log_impl(&_mh_execute_header, v64, v65, "MAD no results for %s", v66, 0xCu);
    sub_10000C304(v67);

    v75 = v137;
    v76 = v70;
    goto LABEL_20;
  }

  sub_10005E3D0(*(v20 + 56) + 32 * v36, &v142);
  sub_10005E37C(&v140);
  sub_10000560C(&qword_10012A5D0, &qword_100109438);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = v144;
    goto LABEL_18;
  }

  v134 = v30;
  v135 = v6;
  v38 = v138;
  v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v38 + 16))
  {

LABEL_27:

    v79 = v133;
    static Log.default.getter();
    v80 = v144;
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *&v140 = v84;
      *v83 = 136315138;
      v85 = [v80 localIdentifier];
      v86 = v5;
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v90 = sub_100102F80(v87, v89, &v140);

      *(v83 + 4) = v90;
      _os_log_impl(&_mh_execute_header, v81, v82, "MAD no watch face results for %s", v83, 0xCu);
      sub_10000C304(v84);

      v75 = v79;
      v76 = v86;
    }

    else
    {

      v75 = v79;
      v76 = v5;
    }

    goto LABEL_20;
  }

  v41 = sub_100057C14(v39, v40);
  v43 = v42;

  if ((v43 & 1) == 0)
  {
    goto LABEL_27;
  }

  sub_10005E3D0(*(v38 + 56) + 32 * v41, &v140);
  sub_10000560C(&qword_10012A5D8, &qword_100109440);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v137 = v5;
  if (!v142[2])
  {

    v91 = v131;
    static Log.default.getter();
    v92 = v144;
    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      *&v140 = v96;
      *v95 = 136315138;
      v97 = [v92 localIdentifier];
      v98 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v100 = v99;

      v101 = sub_100102F80(v98, v100, &v140);

      *(v95 + 4) = v101;
      _os_log_impl(&_mh_execute_header, v93, v94, "MAD no watch face result for %s", v95, 0xCu);
      sub_10000C304(v96);
    }

    v75 = v91;
    v76 = v137;
    goto LABEL_20;
  }

  v44 = v142[4];

  v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v44 + 16))
  {
    v47 = sub_100057C14(v45, v46);
    v49 = v48;

    if (v49)
    {
      sub_10005E3D0(*(v44 + 56) + 32 * v47, &v140);
      if (swift_dynamicCast())
      {
        v50 = v142;
        v51 = v143;
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v44 + 16))
        {
          v54 = sub_100057C14(v52, v53);
          v56 = v55;

          v57 = v137;
          if (v56)
          {
            sub_10005E3D0(*(v44 + 56) + 32 * v54, &v140);

            if (swift_dynamicCast())
            {

              v59 = v142;
              v60 = v143;
              v61 = v129;
              *v129 = v50;
              v61[1] = v51;
              v61[2] = v59;
              v61[3] = v60;
              return result;
            }
          }

          else
          {
          }
        }

        else
        {

          v57 = v137;
        }

        v115 = v130;
        static Log.default.getter();

        v116 = Logger.logObject.getter();
        v117 = static os_log_type_t.error.getter();

        if (!os_log_type_enabled(v116, v117))
        {

          v134(v115, v57);
LABEL_52:
          sub_10005DD30();
          v77 = swift_allocError();
          *v128 = 4;
          swift_willThrow();
          result = sub_10000C868(v50, v51);
          goto LABEL_23;
        }

        v144 = v50;
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v142 = v119;
        *v118 = 136315138;
        v120 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        if (*(v38 + 16))
        {
          v122 = sub_100057C14(v120, v121);
          v124 = v123;

          if (v124)
          {
            sub_10005E3D0(*(v38 + 56) + 32 * v122, &v140);

LABEL_51:
            sub_10000560C(&qword_10012A5E0, &qword_100109448);
            v125 = String.init<A>(describing:)();
            v127 = sub_100102F80(v125, v126, &v142);

            *(v118 + 4) = v127;
            _os_log_impl(&_mh_execute_header, v116, v117, "MAD returned watchFacePath as %s", v118, 0xCu);
            sub_10000C304(v119);

            v134(v130, v137);
            v50 = v144;
            goto LABEL_52;
          }
        }

        else
        {
        }

        v140 = 0u;
        v141 = 0u;
        goto LABEL_51;
      }
    }
  }

  else
  {
  }

  v102 = v132;
  static Log.default.getter();

  v103 = Logger.logObject.getter();
  v104 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v103, v104))
  {
    v105 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    v142 = v106;
    *v105 = 136315138;
    v107 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (*(v44 + 16))
    {
      v109 = sub_100057C14(v107, v108);
      v111 = v110;

      if (v111)
      {
        sub_10005E3D0(*(v44 + 56) + 32 * v109, &v140);

LABEL_41:
        sub_10000560C(&qword_10012A5E0, &qword_100109448);
        v112 = String.init<A>(describing:)();
        v114 = sub_100102F80(v112, v113, &v142);

        *(v105 + 4) = v114;
        _os_log_impl(&_mh_execute_header, v103, v104, "MAD returned watchFaceData as %s", v105, 0xCu);
        sub_10000C304(v106);

        v75 = v132;
        v76 = v137;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v140 = 0u;
    v141 = 0u;
    goto LABEL_41;
  }

  v75 = v102;
  v76 = v137;
LABEL_20:
  v134(v75, v76);
LABEL_22:
  sub_10005DD30();
  v77 = swift_allocError();
  *v78 = 2;
  result = swift_willThrow();
LABEL_23:
  *v136 = v77;
  return result;
}

uint64_t sub_10004DF54(char a1)
{
  result = 0x69727453646E6573;
  switch(a1)
  {
    case 1:
      result = 0x65746172656E6567;
      break;
    case 2:
      result = 0x626C416B63617274;
      break;
    case 3:
      result = 0x416B636172746E75;
      break;
    case 4:
      result = 0x75626C41636E7973;
      break;
    case 5:
      result = 0x6C61476B63617274;
      break;
    case 6:
      result = 0x476B636172746E75;
      break;
    case 7:
      result = 0x6C6C6147636E7973;
      break;
    case 8:
      result = 0x7568536B63617274;
      break;
    case 9:
      result = 0x536B636172746E75;
      break;
    case 10:
      result = 0x66756853636E7973;
      break;
    case 11:
      result = 0x6961446B63617274;
      break;
    case 12:
      result = 0x446B636172746E75;
      break;
    case 13:
      result = 0x6C696144636E7973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10004E168(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

uint64_t sub_10004E214(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = *(*(sub_10000560C(&qword_10012A568, &unk_1001093E0) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = type metadata accessor for CommunicationActor();
  v2[15] = static CommunicationActor.shared.getter();
  v2[16] = sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v11;
  v2[18] = v10;

  return _swift_task_switch(sub_10004E3E0, v11, v10);
}

uint64_t sub_10004E3E0()
{
  v1 = v0[5];
  v2 = sub_100043EAC();
  v3 = [v2 imageNode];
  v0[19] = v3;

  if (!v3)
  {
    v9 = v0[15];
    v10 = v0[8];

    static Log.default.getter();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[7];
    v14 = v0[8];
    v16 = v0[6];
    if (v13)
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "generateImageCaption: visionEngine imageNode was nil", v17, 2u);
    }

    (*(v15 + 8))(v14, v16);
    goto LABEL_15;
  }

  v4 = v0[11];
  v5 = v0[12];
  v6 = v0[10];
  sub_10005F690(v0[4], v6, &qword_10012A568, &unk_1001093E0);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = v0[15];
    v8 = v0[10];

    sub_10000C460(v8, &qword_10012A568, &unk_1001093E0);
LABEL_12:
    v31 = v0[9];
    static Log.default.getter();
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "generateImageCaption: visionEngine unable to convert to CIImage", v34, 2u);
    }

    v35 = v0[9];
    v36 = v0[6];
    v37 = v0[7];

    (*(v37 + 8))(v35, v36);
LABEL_15:
    v38 = v0[13];
    v39 = v0[9];
    v40 = v0[10];
    v41 = v0[8];

    v42 = v0[1];

    return v42(0, 0xE000000000000000);
  }

  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  v18 = objc_allocWithZone(CIImage);
  URL._bridgeToObjectiveC()(v19);
  v21 = v20;
  v22 = [v18 initWithContentsOfURL:v20];
  v0[20] = v22;

  if (!v22)
  {
    v30 = v0[15];
    (*(v0[12] + 8))(v0[13], v0[11]);

    goto LABEL_12;
  }

  v23 = v0[16];
  v24 = v0[14];
  v25 = v0[5];
  [v3 setShouldProcessRemotely:1];
  v26 = static CommunicationActor.shared.getter();
  v0[21] = v26;
  v27 = swift_task_alloc();
  v0[22] = v27;
  v27[2] = v3;
  v27[3] = v22;
  v27[4] = v25;
  v28 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v29 = swift_task_alloc();
  v0[23] = v29;
  *v29 = v0;
  v29[1] = sub_10004E7DC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, v26, v23, 0xD00000000000001ALL, 0x80000001001071C0, sub_10005DE4C, v27, &type metadata for String);
}

uint64_t sub_10004E7DC()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 176);
  v4 = *(*v0 + 168);
  v8 = *v0;

  v5 = *(v1 + 144);
  v6 = *(v1 + 136);

  return _swift_task_switch(sub_10004E93C, v6, v5);
}

uint64_t sub_10004E93C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[15];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];

  (*(v5 + 8))(v4, v6);
  v8 = v0[2];
  v7 = v0[3];
  v9 = v0[13];
  v11 = v0[9];
  v10 = v0[10];
  v12 = v0[8];

  v13 = v0[1];

  return v13(v8, v7);
}

void sub_10004EA0C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10000560C(&qword_10012A5A8, &qword_100109410);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  type metadata accessor for CommunicationActor();
  static CommunicationActor.shared.getter();
  sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = sub_10005DE58();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  aBlock[4] = sub_10005E128;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10004F430;
  aBlock[3] = &unk_100126658;
  v14 = _Block_copy(aBlock);

  [a2 triggerWithImage:a3 options:v11 cacheKey:0 resultHandler:v14];
  _Block_release(v14);
}

void sub_10004EC70(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v42 - v10;
  if (a1)
  {
    v12 = a1;
    if (AXRuntimeCheck_MediaAnalysisSupport())
    {
      v13 = [v12 mediaAnalysisImageCaptionFeatures];
      sub_10000D828(0, &qword_10012A5B0, AXMVisionFeature_ptr);
      v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v14 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_5;
        }
      }

      else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v14 & 0xC000000000000001) != 0)
        {
          v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_8:
          v16 = v15;

          if ([v16 isLowConfidence])
          {
            goto LABEL_20;
          }

          goto LABEL_21;
        }

        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v15 = *(v14 + 32);
          goto LABEL_8;
        }

        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

LABEL_27:

LABEL_28:
      sub_10005D9D4(&_swiftEmptyArrayStorage);
      type metadata accessor for AXMFeatureDescriptionOption(0);
      sub_10005F648(&qword_100129DB0, type metadata accessor for AXMFeatureDescriptionOption);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v31 = [v12 detectedSceneClassificationFeatureDescriptionWithOptions:isa];

      if (v31)
      {
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v32;

        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v22 = [v12 captionFeatures];
    sub_10000D828(0, &qword_10012A5B0, AXMVisionFeature_ptr);
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v23 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_27;
      }
    }

    else if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_44;
      }

      v24 = *(v23 + 32);
    }

    v16 = v24;

    if ([v16 isLowConfidence])
    {
LABEL_20:

      goto LABEL_28;
    }

LABEL_21:
    sub_10005D9D4(&_swiftEmptyArrayStorage);
    type metadata accessor for AXMFeatureDescriptionOption(0);
    sub_10005F648(&qword_100129DB0, type metadata accessor for AXMFeatureDescriptionOption);
    v25 = Dictionary._bridgeToObjectiveC()().super.isa;

    v26 = [v12 detectedCaptionFeatureDescriptionWithOptions:v25];

    if (v26)
    {
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

LABEL_31:

      v33 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v33 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (!v33)
      {

        static Log.default.getter();
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "generateImageCaption: visionEngine did not generate caption", v41, 2u);
        }

        (*(v5 + 8))(v11, v4);
        v42 = 0;
        v43 = 0xE000000000000000;
        goto LABEL_39;
      }

      v34 = String._bridgeToObjectiveC()();
      v35 = [v34 axCapitalizeFirstLetter];

      if (v35)
      {

        v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v38 = v37;

        v42 = v36;
        v43 = v38;
LABEL_39:
        sub_10000560C(&qword_10012A5A8, &qword_100109410);
        CheckedContinuation.resume(returning:)();

        return;
      }

LABEL_45:
      __break(1u);
      return;
    }

LABEL_30:
    v27 = 0;
    v29 = 0xE000000000000000;
    goto LABEL_31;
  }

  if (a2)
  {
    swift_errorRetain();
    static Log.default.getter();
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "generateImageCaption: visionEngine had error %@", v19, 0xCu);
      sub_10000C460(v20, &qword_100129EF8, &qword_100108C70);
    }

    (*(v5 + 8))(v9, v4);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_10000560C(&qword_10012A5A8, &qword_100109410);
    CheckedContinuation.resume(returning:)();
  }
}

void sub_10004F430(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10004F4BC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  return _swift_deallocClassInstance(v0, 48, 7);
}

uint64_t sub_10004F530()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000045BC;

  return sub_100043F18();
}

uint64_t sub_10004F5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a3;
  v5[6] = a4;
  v5[3] = a1;
  v5[4] = a2;
  v5[7] = *v4;
  v5[8] = type metadata accessor for CommunicationActor();
  v5[9] = static CommunicationActor.shared.getter();
  v5[10] = sub_10005F648(&qword_100129EA0, &type metadata accessor for CommunicationActor);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10004F69C, v7, v6);
}

uint64_t sub_10004F69C()
{
  v1 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[5];
  v5 = v0[6];
  v8 = v0[3];
  v7 = v0[4];

  static CommunicationActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = v7;
  v9[4] = v6;
  v9[5] = v5;
  v8[3] = sub_10000560C(&qword_10012A3F8, &qword_100109178);
  v0[2] = type metadata accessor for StoredPhoto();
  v8[4] = swift_getOpaqueTypeConformance2();
  sub_10000C1AC(v8);

  sub_10004F91C(v6);
  swift_checkMetadataState();
  generateElements<A>(isolation:_:)();

  v10 = v0[1];

  return v10();
}

uint64_t sub_10004F808()
{
  v1 = v0[2];

  v2 = v0[3];

  if (v0[4])
  {
    v3 = v0[5];
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10004F858(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1000045BC;

  return sub_1000494C0(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_10004F91C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

Swift::Int sub_10004F92C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10004F9A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10004FA14(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v35 = a1;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Log.network.getter();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v11;
    v18 = v17;
    v19 = swift_slowAlloc();
    v33 = a2;
    v20 = v19;
    v37[0] = v19;
    *v18 = 136315138;
    v21 = sub_10004DF54(v35);
    v34 = a3;
    v23 = sub_100102F80(v21, v22, v37);
    v31 = v10;
    v24 = a5;
    v25 = v23;
    a3 = v34;

    *(v18 + 4) = v25;
    a5 = v24;
    _os_log_impl(&_mh_execute_header, v15, v16, "Registry: Registering request for %s.", v18, 0xCu);
    sub_10000C304(v20);
    a2 = v33;

    (*(v32 + 8))(v14, v31);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v26 = swift_allocObject();
  *(v26 + 16) = a2;
  *(v26 + 24) = a3;
  swift_beginAccess();

  v27 = *(v7 + 32);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *(v7 + 32);
  *(v7 + 32) = 0x8000000000000000;
  sub_10005BF40(a5, v26, v35, isUniquelyReferenced_nonNull_native);
  *(v7 + 32) = v36;
  return swift_endAccess();
}

uint64_t sub_10004FD30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v17 = a3;
  v8 = type metadata accessor for MessageBody();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000560C(&qword_100129E80, &unk_1001091F0);
  sub_10000A914();
  result = MessageBody.deserialized<A>()();
  if (!v4)
  {
    v12 = v19;
    v13 = *(v9 + 16);
    v16[1] = 0;
    v13(v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
    v14 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = a2;
    *(v15 + 3) = v17;
    *(v15 + 4) = v12;
    (*(v9 + 32))(&v15[v14], v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    a4[3] = sub_10000560C(&qword_10012A628, &qword_1001094F0);
    v18 = v8;
    a4[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(a4);

    generateElements<A>(isolation:_:)();
  }

  return result;
}

uint64_t sub_10004FF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v36 = a3;
  v37 = a6;
  v31 = a2;
  v32 = a5;
  v35 = a7;
  v38 = type metadata accessor for MessageBody();
  v33 = *(v38 - 8);
  v10 = *(v33 + 64);
  __chkstk_darwin(v38);
  v11 = a4(0);
  v34 = *(v11 - 8);
  v12 = *(v34 + 64);
  v13 = __chkstk_darwin(v11);
  v14 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v30 - v15;
  result = MessageBody.deserialized<A>()();
  if (!v7)
  {
    v18 = v34;
    v19 = *(v34 + 16);
    v30[1] = 0;
    v19(v14, v16, v11);
    v20 = v33;
    (*(v33 + 16))(v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v38);
    v21 = *(v18 + 80);
    v30[0] = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = (v21 + 32) & ~v21;
    v23 = (v12 + *(v20 + 80) + v22) & ~*(v20 + 80);
    v24 = swift_allocObject();
    v25 = v36;
    *(v24 + 16) = v31;
    *(v24 + 24) = v25;
    (*(v18 + 32))(v24 + v22, v14, v11);
    v26 = v24 + v23;
    v27 = v38;
    (*(v20 + 32))(v26, v30[0], v38);
    v28 = sub_10000560C(&qword_10012A628, &qword_1001094F0);
    v29 = v35;
    v35[3] = v28;
    v39 = v27;
    v29[4] = swift_getOpaqueTypeConformance2();
    sub_10000C1AC(v29);

    generateElements<A>(isolation:_:)();
    return (*(v18 + 8))(v16, v11);
  }

  return result;
}

uint64_t sub_100050228(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a2;
  v9 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v10 = type metadata accessor for MessageBody();
  v6[9] = v10;
  v11 = *(v10 - 8);
  v6[10] = v11;
  v12 = *(v11 + 64) + 15;
  v6[11] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v6[12] = v13;
  v14 = *(v13 - 8);
  v6[13] = v14;
  v15 = *(v14 + 64) + 15;
  v6[14] = swift_task_alloc();
  v16 = type metadata accessor for StoredPhoto();
  v6[15] = v16;
  v17 = *(v16 - 8);
  v6[16] = v17;
  v18 = *(v17 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v19 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v20 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v6[22] = v20;
  v21 = *(*(v20 - 8) + 64) + 15;
  v22 = swift_task_alloc();
  v6[23] = v22;
  v23 = sub_10000560C(&qword_10012A630, &qword_100109508);
  v6[24] = v23;
  v24 = *(v23 - 8);
  v6[25] = v24;
  v25 = *(v24 + 64) + 15;
  v6[26] = swift_task_alloc();
  v6[2] = a5;
  v29 = (a3 + *a3);
  v26 = a3[1];
  v27 = swift_task_alloc();
  v6[27] = v27;
  *v27 = v6;
  v27[1] = sub_100050588;

  return (v29)(v22, v6 + 2);
}

uint64_t sub_100050588()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_1000507D0;
  }

  else
  {
    v3 = sub_10005069C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005069C()
{
  v1 = v0[26];
  v3 = v0[22];
  v2 = v0[23];
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v4 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508);
  v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[29] = v6;
  *v6 = v0;
  v6[1] = sub_1000508C0;
  v7 = v0[26];
  v8 = v0[24];
  v9 = v0[21];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 3, v8, v4);
}

uint64_t sub_1000507D0()
{
  v13 = v0[28];
  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000508C0()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_100050F98;
  }

  else
  {
    v3 = sub_1000509D4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000509D4()
{
  v70 = v0;
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[16];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[23];
    v6 = v0[19];
    v5 = v0[20];
    v8 = v0[17];
    v7 = v0[18];
    v9 = v0[14];
    v10 = v0[11];
    v65 = v0[8];
    (*(v0[25] + 8))(v0[26], v0[24]);

    v11 = v0[1];
LABEL_8:

    return v11();
  }

  v13 = v0[19];
  v12 = v0[20];
  v14 = v0[14];
  v15 = v0[6];
  (*(v3 + 32))(v12, v1, v2);
  static Log.network.getter();
  v66 = *(v3 + 16);
  v66(v13, v12, v2);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = v0[19];
  if (v18)
  {
    v61 = v17;
    v20 = v0[18];
    log = v16;
    v22 = v0[15];
    v21 = v0[16];
    v62 = v0[13];
    v63 = v0[12];
    v64 = v0[14];
    v23 = v0[6];
    v24 = swift_slowAlloc();
    v69[0] = swift_slowAlloc();
    *v24 = 136315394;
    type metadata accessor for UUID();
    v25 = Array.description.getter();
    v27 = v26;

    v28 = sub_100102F80(v25, v27, v69);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2080;
    v66(v20, v19, v22);
    v29 = *(v21 + 8);
    v29(v19, v22);
    sub_10005F648(&qword_10012A640, &type metadata accessor for StoredPhoto);
    v30 = dispatch thunk of CustomStringConvertible.description.getter();
    v32 = v31;
    v29(v20, v22);
    v33 = sub_100102F80(v30, v32, v69);

    *(v24 + 14) = v33;
    _os_log_impl(&_mh_execute_header, log, v61, "[NMC] Stream request %s: responding with %s", v24, 0x16u);
    swift_arrayDestroy();

    (*(v62 + 8))(v64, v63);
  }

  else
  {
    v34 = v0[13];
    v35 = v0[14];
    v36 = v0[12];
    v37 = v0[6];
    v29 = *(v0[16] + 8);
    v29(v0[19], v0[15]);

    (*(v34 + 8))(v35, v36);
  }

  v0[31] = v29;
  v38 = v0[30];
  v39 = v0[11];
  v40 = v0[7];
  v41 = v0[8];
  v66(v0[17], v0[20], v0[15]);
  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v38)
  {
    v43 = v0[25];
    v42 = v0[26];
    v44 = v0[24];
    v45 = v0[16] + 8;
    v29(v0[20], v0[15]);
    (*(v43 + 8))(v42, v44);
    v46 = v0[26];
    v47 = v0[23];
    v49 = v0[20];
    v48 = v0[21];
    v51 = v0[18];
    v50 = v0[19];
    v52 = v0[17];
    v53 = v0[14];
    v54 = v0[11];
    v67 = v0[8];

    v11 = v0[1];
    goto LABEL_8;
  }

  v68 = (v0[4] + *v0[4]);
  v56 = *(v0[4] + 4);
  v57 = swift_task_alloc();
  v0[32] = v57;
  *v57 = v0;
  v57[1] = sub_1000510A0;
  v58 = v0[11];
  v59 = v0[5];

  return v68(v58);
}

uint64_t sub_100050F98()
{
  (*(v0[25] + 8))(v0[26], v0[24]);
  v13 = v0[3];
  v1 = v0[26];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000510A0()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v4 = *v1;
  *(*v1 + 264) = v0;

  (*(v2[10] + 8))(v2[11], v2[9]);
  if (v0)
  {
    v5 = sub_100051308;
  }

  else
  {
    v5 = sub_100051208;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100051208()
{
  v1 = *(v0 + 128) + 8;
  (*(v0 + 248))(*(v0 + 160), *(v0 + 120));
  v2 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  *(v0 + 232) = v4;
  *v4 = v0;
  v4[1] = sub_1000508C0;
  v5 = *(v0 + 208);
  v6 = *(v0 + 192);
  v7 = *(v0 + 168);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 24, v6, v2);
}

uint64_t sub_100051308()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 128) + 8;
  (*(v0 + 248))(*(v0 + 160), *(v0 + 120));
  (*(v2 + 8))(v1, v3);
  v17 = *(v0 + 264);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  v8 = *(v0 + 160);
  v7 = *(v0 + 168);
  v10 = *(v0 + 144);
  v9 = *(v0 + 152);
  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v13 = *(v0 + 88);
  v14 = *(v0 + 64);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100051434(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  v9 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for MessageBody();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = type metadata accessor for SyncFacesRequest();
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v6[15] = v16;
  v17 = *(v16 - 8);
  v6[16] = v17;
  v18 = *(v17 + 64) + 15;
  v6[17] = swift_task_alloc();
  v19 = sub_10000560C(&qword_100129F30, &qword_100108D20);
  v6[18] = v19;
  v20 = *(v19 - 8);
  v6[19] = v20;
  v21 = *(v20 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v22 = *(*(sub_10000560C(&qword_10012A6B8, &qword_1001095C0) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v23 = sub_10000560C(&qword_10012A6C0, &qword_1001095C8);
  v6[25] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v25 = swift_task_alloc();
  v6[26] = v25;
  v26 = sub_10000560C(&qword_10012A6C8, &qword_1001095D0);
  v6[27] = v26;
  v27 = *(v26 - 8);
  v6[28] = v27;
  v28 = *(v27 + 64) + 15;
  v6[29] = swift_task_alloc();
  v32 = (a3 + *a3);
  v29 = a3[1];
  v30 = swift_task_alloc();
  v6[30] = v30;
  *v30 = v6;
  v30[1] = sub_1000517FC;

  return v32(v25, a5);
}

uint64_t sub_1000517FC()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_10005F8A0;
  }

  else
  {
    v3 = sub_100051910;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100051910()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  sub_10000CC24(&qword_10012A6D0, &qword_10012A6C0, &qword_1001095C8);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v4 = sub_10000CC24(&qword_10012A6D8, &qword_10012A6C8, &qword_1001095D0);
  v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_100051A44;
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 2, v8, v4);
}

uint64_t sub_100051A44()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_10005F8C8;
  }

  else
  {
    v3 = sub_100051B58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100051B58()
{
  v83 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    v6 = v0[22];
    v5 = v0[23];
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[17];
    v10 = v0[13];
    v75 = v0[10];
    v78 = v0[7];
    (*(v0[28] + 8))(v0[29], v0[27]);

    v11 = v0[1];
LABEL_8:

    return v11();
  }

  v12 = v0[23];
  v79 = v0[22];
  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[5];
  (*(v3 + 32))(v12, v1, v2);
  static Log.network.getter();
  v72 = *(v16 + 16);
  v72(v14, v17, v15);
  v76 = *(v3 + 16);
  v76(v79, v12, v2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  log = v18;
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[22];
  if (v20)
  {
    v22 = v0[18];
    v66 = v0[21];
    v67 = v0[19];
    v69 = v0[16];
    v23 = v0[14];
    v70 = v0[15];
    v71 = v0[17];
    v68 = v19;
    v24 = v0[12];
    v25 = v0[13];
    v26 = v0[11];
    v27 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v27 = 136315394;
    v72(v25, v23, v26);
    v28 = *(v24 + 8);
    v28(v23, v26);
    sub_10005F648(&qword_10012A6E0, &type metadata accessor for SyncFacesRequest);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v28(v25, v26);
    v32 = sub_100102F80(v29, v31, v82);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v76(v66, v21, v22);
    v33 = *(v67 + 8);
    v33(v21, v22);
    sub_10000CC24(&qword_10012A6E8, &qword_100129F30, &qword_100108D20);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v33(v66, v22);
    v37 = sub_100102F80(v34, v36, v82);

    *(v27 + 14) = v37;
    _os_log_impl(&_mh_execute_header, log, v68, "[NMC] Stream request %s: responding with %s", v27, 0x16u);
    swift_arrayDestroy();

    (*(v69 + 8))(v71, v70);
  }

  else
  {
    v38 = v0[16];
    v39 = v0[17];
    v41 = v0[14];
    v40 = v0[15];
    v42 = v0[11];
    v43 = v0[12];
    v33 = *(v0[19] + 8);
    v33(v0[22], v0[18]);
    (*(v43 + 8))(v41, v42);

    (*(v38 + 8))(v39, v40);
  }

  v0[34] = v33;
  v44 = v0[33];
  v45 = v0[10];
  v46 = v0[6];
  v47 = v0[7];
  v76(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  sub_10000CC24(&qword_100129F38, &qword_100129F30, &qword_100108D20);
  MessageBody.init<A>(serializable:version:)();
  if (v44)
  {
    v49 = v0[28];
    v48 = v0[29];
    v50 = v0[27];
    v51 = v0[19] + 8;
    v33(v0[23], v0[18]);
    (*(v49 + 8))(v48, v50);
    v52 = v0[29];
    v53 = v0[26];
    v55 = v0[23];
    v54 = v0[24];
    v57 = v0[21];
    v56 = v0[22];
    v58 = v0[20];
    v59 = v0[17];
    v60 = v0[14];
    loga = v0[13];
    v77 = v0[10];
    v80 = v0[7];

    v11 = v0[1];
    goto LABEL_8;
  }

  v81 = (v0[3] + *v0[3]);
  v62 = *(v0[3] + 4);
  v63 = swift_task_alloc();
  v0[35] = v63;
  *v63 = v0;
  v63[1] = sub_100052238;
  v64 = v0[10];
  v65 = v0[4];

  return v81(v64);
}

uint64_t sub_100052238()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = sub_10005F8D4;
  }

  else
  {
    v5 = sub_1000523A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000523A0()
{
  v1 = *(v0 + 152) + 8;
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v2 = sub_10000CC24(&qword_10012A6D8, &qword_10012A6C8, &qword_1001095D0);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_100051A44;
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 16, v6, v2);
}

uint64_t sub_1000524A0(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  v9 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for MessageBody();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = type metadata accessor for ShuffleID();
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v6[15] = v16;
  v17 = *(v16 - 8);
  v6[16] = v17;
  v18 = *(v17 + 64) + 15;
  v6[17] = swift_task_alloc();
  v19 = type metadata accessor for StoredPhoto();
  v6[18] = v19;
  v20 = *(v19 - 8);
  v6[19] = v20;
  v21 = *(v20 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v22 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v23 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v6[25] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v25 = swift_task_alloc();
  v6[26] = v25;
  v26 = sub_10000560C(&qword_10012A630, &qword_100109508);
  v6[27] = v26;
  v27 = *(v26 - 8);
  v6[28] = v27;
  v28 = *(v27 + 64) + 15;
  v6[29] = swift_task_alloc();
  v32 = (a3 + *a3);
  v29 = a3[1];
  v30 = swift_task_alloc();
  v6[30] = v30;
  *v30 = v6;
  v30[1] = sub_10005285C;

  return v32(v25, a5);
}

uint64_t sub_10005285C()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_10005F8A0;
  }

  else
  {
    v3 = sub_100052970;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100052970()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v4 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508);
  v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_100052AA4;
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 2, v8, v4);
}

uint64_t sub_100052AA4()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_10005F8C8;
  }

  else
  {
    v3 = sub_100052BB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100052BB8()
{
  v83 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    v6 = v0[22];
    v5 = v0[23];
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[17];
    v10 = v0[13];
    v75 = v0[10];
    v78 = v0[7];
    (*(v0[28] + 8))(v0[29], v0[27]);

    v11 = v0[1];
LABEL_8:

    return v11();
  }

  v12 = v0[23];
  v79 = v0[22];
  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[5];
  (*(v3 + 32))(v12, v1, v2);
  static Log.network.getter();
  v72 = *(v16 + 16);
  v72(v14, v17, v15);
  v76 = *(v3 + 16);
  v76(v79, v12, v2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  log = v18;
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[22];
  if (v20)
  {
    v22 = v0[18];
    v66 = v0[21];
    v67 = v0[19];
    v69 = v0[16];
    v23 = v0[14];
    v70 = v0[15];
    v71 = v0[17];
    v68 = v19;
    v24 = v0[12];
    v25 = v0[13];
    v26 = v0[11];
    v27 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v27 = 136315394;
    v72(v25, v23, v26);
    v28 = *(v24 + 8);
    v28(v23, v26);
    sub_10005F648(&qword_10012A2F0, &type metadata accessor for ShuffleID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v28(v25, v26);
    v32 = sub_100102F80(v29, v31, v82);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v76(v66, v21, v22);
    v33 = *(v67 + 8);
    v33(v21, v22);
    sub_10005F648(&qword_10012A640, &type metadata accessor for StoredPhoto);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v33(v66, v22);
    v37 = sub_100102F80(v34, v36, v82);

    *(v27 + 14) = v37;
    _os_log_impl(&_mh_execute_header, log, v68, "[NMC] Stream request %s: responding with %s", v27, 0x16u);
    swift_arrayDestroy();

    (*(v69 + 8))(v71, v70);
  }

  else
  {
    v38 = v0[16];
    v39 = v0[17];
    v41 = v0[14];
    v40 = v0[15];
    v42 = v0[11];
    v43 = v0[12];
    v33 = *(v0[19] + 8);
    v33(v0[22], v0[18]);
    (*(v43 + 8))(v41, v42);

    (*(v38 + 8))(v39, v40);
  }

  v0[34] = v33;
  v44 = v0[33];
  v45 = v0[10];
  v46 = v0[6];
  v47 = v0[7];
  v76(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v44)
  {
    v49 = v0[28];
    v48 = v0[29];
    v50 = v0[27];
    v51 = v0[19] + 8;
    v33(v0[23], v0[18]);
    (*(v49 + 8))(v48, v50);
    v52 = v0[29];
    v53 = v0[26];
    v55 = v0[23];
    v54 = v0[24];
    v57 = v0[21];
    v56 = v0[22];
    v58 = v0[20];
    v59 = v0[17];
    v60 = v0[14];
    loga = v0[13];
    v77 = v0[10];
    v80 = v0[7];

    v11 = v0[1];
    goto LABEL_8;
  }

  v81 = (v0[3] + *v0[3]);
  v62 = *(v0[3] + 4);
  v63 = swift_task_alloc();
  v0[35] = v63;
  *v63 = v0;
  v63[1] = sub_100053270;
  v64 = v0[10];
  v65 = v0[4];

  return v81(v64);
}

uint64_t sub_100053270()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = sub_10005F8D4;
  }

  else
  {
    v5 = sub_1000533D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000533D8()
{
  v1 = *(v0 + 152) + 8;
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v2 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_100052AA4;
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 16, v6, v2);
}

uint64_t sub_1000534D8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  v9 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for MessageBody();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = type metadata accessor for SyncFacesRequest();
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v6[15] = v16;
  v17 = *(v16 - 8);
  v6[16] = v17;
  v18 = *(v17 + 64) + 15;
  v6[17] = swift_task_alloc();
  v19 = sub_10000560C(&qword_100129F60, &qword_100108D78);
  v6[18] = v19;
  v20 = *(v19 - 8);
  v6[19] = v20;
  v21 = *(v20 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v22 = *(*(sub_10000560C(&qword_10012A710, &qword_100109610) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v23 = sub_10000560C(&qword_10012A718, &qword_100109618);
  v6[25] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v25 = swift_task_alloc();
  v6[26] = v25;
  v26 = sub_10000560C(&qword_10012A720, &qword_100109620);
  v6[27] = v26;
  v27 = *(v26 - 8);
  v6[28] = v27;
  v28 = *(v27 + 64) + 15;
  v6[29] = swift_task_alloc();
  v32 = (a3 + *a3);
  v29 = a3[1];
  v30 = swift_task_alloc();
  v6[30] = v30;
  *v30 = v6;
  v30[1] = sub_1000538A0;

  return v32(v25, a5);
}

uint64_t sub_1000538A0()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_10005F8A0;
  }

  else
  {
    v3 = sub_1000539B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000539B4()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  sub_10000CC24(&qword_10012A728, &qword_10012A718, &qword_100109618);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v4 = sub_10000CC24(&qword_10012A730, &qword_10012A720, &qword_100109620);
  v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_100053AE8;
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 2, v8, v4);
}

uint64_t sub_100053AE8()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_10005F8C8;
  }

  else
  {
    v3 = sub_100053BFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100053BFC()
{
  v83 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    v6 = v0[22];
    v5 = v0[23];
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[17];
    v10 = v0[13];
    v75 = v0[10];
    v78 = v0[7];
    (*(v0[28] + 8))(v0[29], v0[27]);

    v11 = v0[1];
LABEL_8:

    return v11();
  }

  v12 = v0[23];
  v79 = v0[22];
  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[5];
  (*(v3 + 32))(v12, v1, v2);
  static Log.network.getter();
  v72 = *(v16 + 16);
  v72(v14, v17, v15);
  v76 = *(v3 + 16);
  v76(v79, v12, v2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  log = v18;
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[22];
  if (v20)
  {
    v22 = v0[18];
    v66 = v0[21];
    v67 = v0[19];
    v69 = v0[16];
    v23 = v0[14];
    v70 = v0[15];
    v71 = v0[17];
    v68 = v19;
    v24 = v0[12];
    v25 = v0[13];
    v26 = v0[11];
    v27 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v27 = 136315394;
    v72(v25, v23, v26);
    v28 = *(v24 + 8);
    v28(v23, v26);
    sub_10005F648(&qword_10012A6E0, &type metadata accessor for SyncFacesRequest);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v28(v25, v26);
    v32 = sub_100102F80(v29, v31, v82);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v76(v66, v21, v22);
    v33 = *(v67 + 8);
    v33(v21, v22);
    sub_10000CC24(&qword_10012A738, &qword_100129F60, &qword_100108D78);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v33(v66, v22);
    v37 = sub_100102F80(v34, v36, v82);

    *(v27 + 14) = v37;
    _os_log_impl(&_mh_execute_header, log, v68, "[NMC] Stream request %s: responding with %s", v27, 0x16u);
    swift_arrayDestroy();

    (*(v69 + 8))(v71, v70);
  }

  else
  {
    v38 = v0[16];
    v39 = v0[17];
    v41 = v0[14];
    v40 = v0[15];
    v42 = v0[11];
    v43 = v0[12];
    v33 = *(v0[19] + 8);
    v33(v0[22], v0[18]);
    (*(v43 + 8))(v41, v42);

    (*(v38 + 8))(v39, v40);
  }

  v0[34] = v33;
  v44 = v0[33];
  v45 = v0[10];
  v46 = v0[6];
  v47 = v0[7];
  v76(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  sub_10000CC24(&qword_100129F68, &qword_100129F60, &qword_100108D78);
  MessageBody.init<A>(serializable:version:)();
  if (v44)
  {
    v49 = v0[28];
    v48 = v0[29];
    v50 = v0[27];
    v51 = v0[19] + 8;
    v33(v0[23], v0[18]);
    (*(v49 + 8))(v48, v50);
    v52 = v0[29];
    v53 = v0[26];
    v55 = v0[23];
    v54 = v0[24];
    v57 = v0[21];
    v56 = v0[22];
    v58 = v0[20];
    v59 = v0[17];
    v60 = v0[14];
    loga = v0[13];
    v77 = v0[10];
    v80 = v0[7];

    v11 = v0[1];
    goto LABEL_8;
  }

  v81 = (v0[3] + *v0[3]);
  v62 = *(v0[3] + 4);
  v63 = swift_task_alloc();
  v0[35] = v63;
  *v63 = v0;
  v63[1] = sub_1000542DC;
  v64 = v0[10];
  v65 = v0[4];

  return v81(v64);
}

uint64_t sub_1000542DC()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = sub_10005F8D4;
  }

  else
  {
    v5 = sub_100054444;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100054444()
{
  v1 = *(v0 + 152) + 8;
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v2 = sub_10000CC24(&qword_10012A730, &qword_10012A720, &qword_100109620);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_100053AE8;
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 16, v6, v2);
}

uint64_t sub_100054544(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  v9 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for MessageBody();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = type metadata accessor for DailyID();
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v6[15] = v16;
  v17 = *(v16 - 8);
  v6[16] = v17;
  v18 = *(v17 + 64) + 15;
  v6[17] = swift_task_alloc();
  v19 = type metadata accessor for StoredPhoto();
  v6[18] = v19;
  v20 = *(v19 - 8);
  v6[19] = v20;
  v21 = *(v20 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v22 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v23 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v6[25] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v25 = swift_task_alloc();
  v6[26] = v25;
  v26 = sub_10000560C(&qword_10012A630, &qword_100109508);
  v6[27] = v26;
  v27 = *(v26 - 8);
  v6[28] = v27;
  v28 = *(v27 + 64) + 15;
  v6[29] = swift_task_alloc();
  v32 = (a3 + *a3);
  v29 = a3[1];
  v30 = swift_task_alloc();
  v6[30] = v30;
  *v30 = v6;
  v30[1] = sub_100054900;

  return v32(v25, a5);
}

uint64_t sub_100054900()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_10005F8A0;
  }

  else
  {
    v3 = sub_100054A14;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100054A14()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v4 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508);
  v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_100054B48;
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 2, v8, v4);
}

uint64_t sub_100054B48()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_10005F8C8;
  }

  else
  {
    v3 = sub_100054C5C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100054C5C()
{
  v83 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    v6 = v0[22];
    v5 = v0[23];
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[17];
    v10 = v0[13];
    v75 = v0[10];
    v78 = v0[7];
    (*(v0[28] + 8))(v0[29], v0[27]);

    v11 = v0[1];
LABEL_8:

    return v11();
  }

  v12 = v0[23];
  v79 = v0[22];
  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[5];
  (*(v3 + 32))(v12, v1, v2);
  static Log.network.getter();
  v72 = *(v16 + 16);
  v72(v14, v17, v15);
  v76 = *(v3 + 16);
  v76(v79, v12, v2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  log = v18;
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[22];
  if (v20)
  {
    v22 = v0[18];
    v66 = v0[21];
    v67 = v0[19];
    v69 = v0[16];
    v23 = v0[14];
    v70 = v0[15];
    v71 = v0[17];
    v68 = v19;
    v24 = v0[12];
    v25 = v0[13];
    v26 = v0[11];
    v27 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v27 = 136315394;
    v72(v25, v23, v26);
    v28 = *(v24 + 8);
    v28(v23, v26);
    sub_10005F648(&qword_10012A1E0, &type metadata accessor for DailyID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v28(v25, v26);
    v32 = sub_100102F80(v29, v31, v82);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v76(v66, v21, v22);
    v33 = *(v67 + 8);
    v33(v21, v22);
    sub_10005F648(&qword_10012A640, &type metadata accessor for StoredPhoto);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v33(v66, v22);
    v37 = sub_100102F80(v34, v36, v82);

    *(v27 + 14) = v37;
    _os_log_impl(&_mh_execute_header, log, v68, "[NMC] Stream request %s: responding with %s", v27, 0x16u);
    swift_arrayDestroy();

    (*(v69 + 8))(v71, v70);
  }

  else
  {
    v38 = v0[16];
    v39 = v0[17];
    v41 = v0[14];
    v40 = v0[15];
    v42 = v0[11];
    v43 = v0[12];
    v33 = *(v0[19] + 8);
    v33(v0[22], v0[18]);
    (*(v43 + 8))(v41, v42);

    (*(v38 + 8))(v39, v40);
  }

  v0[34] = v33;
  v44 = v0[33];
  v45 = v0[10];
  v46 = v0[6];
  v47 = v0[7];
  v76(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v44)
  {
    v49 = v0[28];
    v48 = v0[29];
    v50 = v0[27];
    v51 = v0[19] + 8;
    v33(v0[23], v0[18]);
    (*(v49 + 8))(v48, v50);
    v52 = v0[29];
    v53 = v0[26];
    v55 = v0[23];
    v54 = v0[24];
    v57 = v0[21];
    v56 = v0[22];
    v58 = v0[20];
    v59 = v0[17];
    v60 = v0[14];
    loga = v0[13];
    v77 = v0[10];
    v80 = v0[7];

    v11 = v0[1];
    goto LABEL_8;
  }

  v81 = (v0[3] + *v0[3]);
  v62 = *(v0[3] + 4);
  v63 = swift_task_alloc();
  v0[35] = v63;
  *v63 = v0;
  v63[1] = sub_100055314;
  v64 = v0[10];
  v65 = v0[4];

  return v81(v64);
}

uint64_t sub_100055314()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = sub_10005F8D4;
  }

  else
  {
    v5 = sub_10005547C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005547C()
{
  v1 = *(v0 + 152) + 8;
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v2 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_100054B48;
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 16, v6, v2);
}

uint64_t sub_10005557C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  v9 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for MessageBody();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = type metadata accessor for SyncFacesRequest();
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v6[15] = v16;
  v17 = *(v16 - 8);
  v6[16] = v17;
  v18 = *(v17 + 64) + 15;
  v6[17] = swift_task_alloc();
  v19 = sub_10000560C(&qword_100129F70, &qword_100108D90);
  v6[18] = v19;
  v20 = *(v19 - 8);
  v6[19] = v20;
  v21 = *(v20 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v22 = *(*(sub_10000560C(&qword_10012A770, &qword_100109670) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v23 = sub_10000560C(&qword_10012A778, &qword_100109678);
  v6[25] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v25 = swift_task_alloc();
  v6[26] = v25;
  v26 = sub_10000560C(&qword_10012A780, &qword_100109680);
  v6[27] = v26;
  v27 = *(v26 - 8);
  v6[28] = v27;
  v28 = *(v27 + 64) + 15;
  v6[29] = swift_task_alloc();
  v32 = (a3 + *a3);
  v29 = a3[1];
  v30 = swift_task_alloc();
  v6[30] = v30;
  *v30 = v6;
  v30[1] = sub_100055944;

  return v32(v25, a5);
}

uint64_t sub_100055944()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_100055B8C;
  }

  else
  {
    v3 = sub_100055A58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100055A58()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  sub_10000CC24(&qword_10012A788, &qword_10012A778, &qword_100109678);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v4 = sub_10000CC24(&qword_10012A790, &qword_10012A780, &qword_100109680);
  v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_100055C94;
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 2, v8, v4);
}

uint64_t sub_100055B8C()
{
  v1 = v0[29];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[13];
  v10 = v0[14];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[31];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100055C94()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_100056488;
  }

  else
  {
    v3 = sub_100055DA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100055DA8()
{
  v83 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    v6 = v0[22];
    v5 = v0[23];
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[17];
    v10 = v0[13];
    v75 = v0[10];
    v78 = v0[7];
    (*(v0[28] + 8))(v0[29], v0[27]);

    v11 = v0[1];
LABEL_8:

    return v11();
  }

  v12 = v0[23];
  v79 = v0[22];
  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[5];
  (*(v3 + 32))(v12, v1, v2);
  static Log.network.getter();
  v72 = *(v16 + 16);
  v72(v14, v17, v15);
  v76 = *(v3 + 16);
  v76(v79, v12, v2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  log = v18;
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[22];
  if (v20)
  {
    v22 = v0[18];
    v66 = v0[21];
    v67 = v0[19];
    v69 = v0[16];
    v23 = v0[14];
    v70 = v0[15];
    v71 = v0[17];
    v68 = v19;
    v24 = v0[12];
    v25 = v0[13];
    v26 = v0[11];
    v27 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v27 = 136315394;
    v72(v25, v23, v26);
    v28 = *(v24 + 8);
    v28(v23, v26);
    sub_10005F648(&qword_10012A6E0, &type metadata accessor for SyncFacesRequest);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v28(v25, v26);
    v32 = sub_100102F80(v29, v31, v82);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v76(v66, v21, v22);
    v33 = *(v67 + 8);
    v33(v21, v22);
    sub_10000CC24(&qword_10012A798, &qword_100129F70, &qword_100108D90);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v33(v66, v22);
    v37 = sub_100102F80(v34, v36, v82);

    *(v27 + 14) = v37;
    _os_log_impl(&_mh_execute_header, log, v68, "[NMC] Stream request %s: responding with %s", v27, 0x16u);
    swift_arrayDestroy();

    (*(v69 + 8))(v71, v70);
  }

  else
  {
    v38 = v0[16];
    v39 = v0[17];
    v41 = v0[14];
    v40 = v0[15];
    v42 = v0[11];
    v43 = v0[12];
    v33 = *(v0[19] + 8);
    v33(v0[22], v0[18]);
    (*(v43 + 8))(v41, v42);

    (*(v38 + 8))(v39, v40);
  }

  v0[34] = v33;
  v44 = v0[33];
  v45 = v0[10];
  v46 = v0[6];
  v47 = v0[7];
  v76(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  sub_10000CC24(&qword_100129F78, &qword_100129F70, &qword_100108D90);
  MessageBody.init<A>(serializable:version:)();
  if (v44)
  {
    v49 = v0[28];
    v48 = v0[29];
    v50 = v0[27];
    v51 = v0[19] + 8;
    v33(v0[23], v0[18]);
    (*(v49 + 8))(v48, v50);
    v52 = v0[29];
    v53 = v0[26];
    v55 = v0[23];
    v54 = v0[24];
    v57 = v0[21];
    v56 = v0[22];
    v58 = v0[20];
    v59 = v0[17];
    v60 = v0[14];
    loga = v0[13];
    v77 = v0[10];
    v80 = v0[7];

    v11 = v0[1];
    goto LABEL_8;
  }

  v81 = (v0[3] + *v0[3]);
  v62 = *(v0[3] + 4);
  v63 = swift_task_alloc();
  v0[35] = v63;
  *v63 = v0;
  v63[1] = sub_1000565A8;
  v64 = v0[10];
  v65 = v0[4];

  return v81(v64);
}

uint64_t sub_100056488()
{
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[29];
  v2 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[21];
  v5 = v0[22];
  v7 = v0[20];
  v8 = v0[17];
  v9 = v0[13];
  v10 = v0[14];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[2];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000565A8()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = sub_100056810;
  }

  else
  {
    v5 = sub_100056710;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100056710()
{
  v1 = *(v0 + 152) + 8;
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v2 = sub_10000CC24(&qword_10012A790, &qword_10012A780, &qword_100109680);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_100055C94;
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 16, v6, v2);
}

uint64_t sub_100056810()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v3 = *(v0 + 216);
  v4 = *(v0 + 152) + 8;
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 232);
  v6 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 160);
  v12 = *(v0 + 136);
  v13 = *(v0 + 104);
  v14 = *(v0 + 112);
  v17 = *(v0 + 80);
  v18 = *(v0 + 56);
  v19 = *(v0 + 288);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100056954(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a1;
  v6[4] = a2;
  v9 = *(*(type metadata accessor for ProtocolVersion() - 8) + 64) + 15;
  v6[7] = swift_task_alloc();
  v10 = type metadata accessor for MessageBody();
  v6[8] = v10;
  v11 = *(v10 - 8);
  v6[9] = v11;
  v12 = *(v11 + 64) + 15;
  v6[10] = swift_task_alloc();
  v13 = type metadata accessor for AlbumID();
  v6[11] = v13;
  v14 = *(v13 - 8);
  v6[12] = v14;
  v15 = *(v14 + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v16 = type metadata accessor for Logger();
  v6[15] = v16;
  v17 = *(v16 - 8);
  v6[16] = v17;
  v18 = *(v17 + 64) + 15;
  v6[17] = swift_task_alloc();
  v19 = type metadata accessor for StoredPhoto();
  v6[18] = v19;
  v20 = *(v19 - 8);
  v6[19] = v20;
  v21 = *(v20 + 64) + 15;
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v22 = *(*(sub_10000560C(&qword_10012A400, &qword_100109190) - 8) + 64) + 15;
  v6[24] = swift_task_alloc();
  v23 = sub_10000560C(&qword_10012A3C8, &qword_1001090B0);
  v6[25] = v23;
  v24 = *(*(v23 - 8) + 64) + 15;
  v25 = swift_task_alloc();
  v6[26] = v25;
  v26 = sub_10000560C(&qword_10012A630, &qword_100109508);
  v6[27] = v26;
  v27 = *(v26 - 8);
  v6[28] = v27;
  v28 = *(v27 + 64) + 15;
  v6[29] = swift_task_alloc();
  v32 = (a3 + *a3);
  v29 = a3[1];
  v30 = swift_task_alloc();
  v6[30] = v30;
  *v30 = v6;
  v30[1] = sub_100056D10;

  return v32(v25, a5);
}

uint64_t sub_100056D10()
{
  v2 = *(*v1 + 240);
  v5 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_10005F8A0;
  }

  else
  {
    v3 = sub_100056E24;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100056E24()
{
  v1 = v0[29];
  v3 = v0[25];
  v2 = v0[26];
  sub_10000CC24(&qword_10012A3D8, &qword_10012A3C8, &qword_1001090B0);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v4 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508);
  v5 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v6 = swift_task_alloc();
  v0[32] = v6;
  *v6 = v0;
  v6[1] = sub_100056F58;
  v7 = v0[29];
  v8 = v0[27];
  v9 = v0[24];

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v9, 0, 0, v0 + 2, v8, v4);
}

uint64_t sub_100056F58()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_10005F8C8;
  }

  else
  {
    v3 = sub_10005706C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10005706C()
{
  v83 = v0;
  v1 = v0[24];
  v2 = v0[18];
  v3 = v0[19];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[26];
    v6 = v0[22];
    v5 = v0[23];
    v8 = v0[20];
    v7 = v0[21];
    v9 = v0[17];
    v10 = v0[13];
    v75 = v0[10];
    v78 = v0[7];
    (*(v0[28] + 8))(v0[29], v0[27]);

    v11 = v0[1];
LABEL_8:

    return v11();
  }

  v12 = v0[23];
  v79 = v0[22];
  v13 = v0[17];
  v14 = v0[14];
  v15 = v0[11];
  v16 = v0[12];
  v17 = v0[5];
  (*(v3 + 32))(v12, v1, v2);
  static Log.network.getter();
  v72 = *(v16 + 16);
  v72(v14, v17, v15);
  v76 = *(v3 + 16);
  v76(v79, v12, v2);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  log = v18;
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[22];
  if (v20)
  {
    v22 = v0[18];
    v66 = v0[21];
    v67 = v0[19];
    v69 = v0[16];
    v23 = v0[14];
    v70 = v0[15];
    v71 = v0[17];
    v68 = v19;
    v24 = v0[12];
    v25 = v0[13];
    v26 = v0[11];
    v27 = swift_slowAlloc();
    v82[0] = swift_slowAlloc();
    *v27 = 136315394;
    v72(v25, v23, v26);
    v28 = *(v24 + 8);
    v28(v23, v26);
    sub_10005F648(&qword_10012A0A0, &type metadata accessor for AlbumID);
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    v31 = v30;
    v28(v25, v26);
    v32 = sub_100102F80(v29, v31, v82);

    *(v27 + 4) = v32;
    *(v27 + 12) = 2080;
    v76(v66, v21, v22);
    v33 = *(v67 + 8);
    v33(v21, v22);
    sub_10005F648(&qword_10012A640, &type metadata accessor for StoredPhoto);
    v34 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v35;
    v33(v66, v22);
    v37 = sub_100102F80(v34, v36, v82);

    *(v27 + 14) = v37;
    _os_log_impl(&_mh_execute_header, log, v68, "[NMC] Stream request %s: responding with %s", v27, 0x16u);
    swift_arrayDestroy();

    (*(v69 + 8))(v71, v70);
  }

  else
  {
    v38 = v0[16];
    v39 = v0[17];
    v41 = v0[14];
    v40 = v0[15];
    v42 = v0[11];
    v43 = v0[12];
    v33 = *(v0[19] + 8);
    v33(v0[22], v0[18]);
    (*(v43 + 8))(v41, v42);

    (*(v38 + 8))(v39, v40);
  }

  v0[34] = v33;
  v44 = v0[33];
  v45 = v0[10];
  v46 = v0[6];
  v47 = v0[7];
  v76(v0[20], v0[23], v0[18]);
  MessageBody.version.getter();
  MessageBody.init<A>(serializable:version:)();
  if (v44)
  {
    v49 = v0[28];
    v48 = v0[29];
    v50 = v0[27];
    v51 = v0[19] + 8;
    v33(v0[23], v0[18]);
    (*(v49 + 8))(v48, v50);
    v52 = v0[29];
    v53 = v0[26];
    v55 = v0[23];
    v54 = v0[24];
    v57 = v0[21];
    v56 = v0[22];
    v58 = v0[20];
    v59 = v0[17];
    v60 = v0[14];
    loga = v0[13];
    v77 = v0[10];
    v80 = v0[7];

    v11 = v0[1];
    goto LABEL_8;
  }

  v81 = (v0[3] + *v0[3]);
  v62 = *(v0[3] + 4);
  v63 = swift_task_alloc();
  v0[35] = v63;
  *v63 = v0;
  v63[1] = sub_100057724;
  v64 = v0[10];
  v65 = v0[4];

  return v81(v64);
}

uint64_t sub_100057724()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = *v1;
  *(*v1 + 288) = v0;

  (*(v2[9] + 8))(v2[10], v2[8]);
  if (v0)
  {
    v5 = sub_10005F8D4;
  }

  else
  {
    v5 = sub_10005788C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10005788C()
{
  v1 = *(v0 + 152) + 8;
  (*(v0 + 272))(*(v0 + 184), *(v0 + 144));
  v2 = sub_10000CC24(&qword_10012A638, &qword_10012A630, &qword_100109508);
  v3 = _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTjTu[1];
  v4 = swift_task_alloc();
  *(v0 + 256) = v4;
  *v4 = v0;
  v4[1] = sub_100056F58;
  v5 = *(v0 + 232);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);

  return __sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v7, 0, 0, v0 + 16, v6, v2);
}

unint64_t sub_100057990(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  return sub_10005B85C(a1, v4);
}

unint64_t sub_1000579F8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_10005B8CC(a1, v4);
}

unint64_t sub_100057AFC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for UUID();
  sub_10005F648(&qword_10012A1F8, &type metadata accessor for UUID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10005BDA0(a1, v5, &type metadata accessor for UUID, &qword_10012A660, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_100057BD0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_10005BAB0(a1, v4);
}

unint64_t sub_100057C14(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10005BB1C(a1, a2, v6);
}

unint64_t sub_100057C8C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10005BBD4(a1, v4);
}

unint64_t sub_100057CD0(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10005BC9C(a1, v4);
}

unint64_t sub_100057D64(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for ShuffleID();
  sub_10005F648(&qword_10012A690, &type metadata accessor for ShuffleID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10005BDA0(a1, v5, &type metadata accessor for ShuffleID, &qword_10012A698, &type metadata accessor for ShuffleID, &protocol conformance descriptor for ShuffleID);
}

unint64_t sub_100057E38(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for DailyID();
  sub_10005F648(&qword_10012A6F8, &type metadata accessor for DailyID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10005BDA0(a1, v5, &type metadata accessor for DailyID, &qword_10012A700, &type metadata accessor for DailyID, &protocol conformance descriptor for DailyID);
}

unint64_t sub_100057F0C(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for AlbumID();
  sub_10005F648(&qword_10012A758, &type metadata accessor for AlbumID);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10005BDA0(a1, v5, &type metadata accessor for AlbumID, &qword_10012A760, &type metadata accessor for AlbumID, &protocol conformance descriptor for AlbumID);
}

void *sub_100057FE0()
{
  v1 = v0;
  sub_10000560C(&qword_10012A620, &unk_1001094D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100058158()
{
  v1 = v0;
  sub_10000560C(&qword_10012A300, &qword_100108FF8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_1000582B4()
{
  v1 = v0;
  v43 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UUID();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000560C(&qword_10012A748, &qword_100109640);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
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

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_10005861C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000560C(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + v19) = *(*(v4 + 48) + v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

char *sub_100058768()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  __chkstk_darwin(v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000560C(&qword_10012A658, &qword_100109530);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1000589E8()
{
  v1 = v0;
  sub_10000560C(&qword_10012A5A0, &qword_100109408);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100058B50()
{
  v1 = v0;
  sub_10000560C(&qword_10012A0C8, &qword_100109580);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_100058C9C()
{
  v1 = v0;
  sub_10000560C(&qword_10012A7B8, &unk_1001096B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_100058E0C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A620, &unk_1001094D0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v32 = *(*(v5 + 56) + 16 * v20);
      if ((a2 & 1) == 0)
      {
      }

      v22 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v23 = -1 << *(v8 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 16 * v16) = v32;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_35;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10005909C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A680, &qword_100109578);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10005932C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A300, &qword_100108FF8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10005959C(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_10000560C(&qword_10012A748, &qword_100109640);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_10005F648(&qword_10012A1F8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_100059A44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A650, &qword_100109528);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100059D64(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000560C(&qword_10012A658, &qword_100109530);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10005F648(&qword_10012A1F8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10005A140(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000560C(&qword_10012A670, &unk_100109540);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10005F648(&qword_10012A1F8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10005A51C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A5A0, &qword_100109408);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10005A7BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A0C8, &qword_100109580);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = static Hasher._hash(seed:_:)();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10005AA20(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000560C(&qword_10012A7B8, &unk_1001096B0);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10005ACC8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ShuffleID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000560C(&qword_10012A688, &qword_100109588);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10005F648(&qword_10012A690, &type metadata accessor for ShuffleID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10005B0A4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DailyID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000560C(&qword_10012A6F0, &qword_1001095E8);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10005F648(&qword_10012A6F8, &type metadata accessor for DailyID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10005B480(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for AlbumID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_10000560C(&qword_10012A750, &qword_100109648);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10005F648(&qword_10012A758, &type metadata accessor for AlbumID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

unint64_t sub_10005B85C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10005B8CC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    v6 = 0xE600000000000000;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 0x68736572666572;
        }

        else
        {
          v8 = 1668184435;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0x69737365636F7270;
        v9 = 0xEA0000000000676ELL;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x70756D726177;
        }

        else
        {
          v8 = 0x70756E61656C63;
        }

        if (v7 == 3)
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      if (v5 == 3)
      {
        v10 = 0x70756D726177;
      }

      else
      {
        v10 = 0x70756E61656C63;
      }

      if (v5 != 3)
      {
        v6 = 0xE700000000000000;
      }

      if (v5 == 2)
      {
        v10 = 0x69737365636F7270;
        v6 = 0xEA0000000000676ELL;
      }

      v11 = v5 ? 0x68736572666572 : 1668184435;
      v12 = v5 ? 0xE700000000000000 : 0xE400000000000000;
      v13 = v5 <= 1 ? v11 : v10;
      v14 = v5 <= 1 ? v12 : v6;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v6 = 0xE600000000000000;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10005BAB0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10005BB1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10005BBD4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10005E42C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_10005E37C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10005BC9C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10005BDA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_10005F648(v24, v25);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_10005BF40(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100057990(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100058E0C(v16, a4 & 1);
      v20 = *v5;
      result = sub_100057990(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_100057FE0();
      result = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(result >> 6) + 8] |= 1 << result;
    *(v22[6] + result) = a3;
    v25 = (v22[7] + 16 * result);
    *v25 = a1;
    v25[1] = a2;
    v26 = v22[2];
    v15 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (!v15)
    {
      v22[2] = v27;
      return result;
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * result);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

uint64_t sub_10005C0A0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_100057AFC(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100058768();
      goto LABEL_7;
    }

    sub_100059D64(v18, a3 & 1);
    v25 = *v4;
    v26 = sub_100057AFC(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_10005C430(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

uint64_t sub_10005C26C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100057C14(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_10005AA20(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_100057C14(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100058C9C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_10005C3EC(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_10005C430(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_10005C4E8(void *a1, int64_t a2, char a3)
{
  result = sub_10005C7DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10005C508(size_t a1, int64_t a2, char a3)
{
  result = sub_10005CD08(a1, a2, a3, *v3, &qword_10012A430, &qword_1001093D0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

char *sub_10005C54C(char *a1, int64_t a2, char a3)
{
  result = sub_10005C910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10005C56C(size_t a1, int64_t a2, char a3)
{
  result = sub_10005CD08(a1, a2, a3, *v3, &qword_10012A678, &qword_100109570, &type metadata accessor for ShuffleID);
  *v3 = result;
  return result;
}

char *sub_10005C5B0(char *a1, int64_t a2, char a3)
{
  result = sub_10005CA1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10005C5D0(size_t a1, int64_t a2, char a3)
{
  result = sub_10005CD08(a1, a2, a3, *v3, &qword_10012A600, &qword_100109468, &type metadata accessor for StoredPhoto);
  *v3 = result;
  return result;
}

size_t sub_10005C614(size_t a1, int64_t a2, char a3)
{
  result = sub_10005CB20(a1, a2, a3, *v3, &qword_10012A6A8, &qword_1001095A0, &qword_10012A6B0, &qword_1001095A8);
  *v3 = result;
  return result;
}

size_t sub_10005C654(size_t a1, int64_t a2, char a3)
{
  result = sub_10005CB20(a1, a2, a3, *v3, &qword_10012A458, &qword_10010AAA0, &qword_10012A448, &unk_100109550);
  *v3 = result;
  return result;
}

size_t sub_10005C694(size_t a1, int64_t a2, char a3)
{
  result = sub_10005CB20(a1, a2, a3, *v3, &qword_10012A6A0, &unk_100109590, &qword_100129F30, &qword_100108D20);
  *v3 = result;
  return result;
}

size_t sub_10005C6D4(size_t a1, int64_t a2, char a3)
{
  result = sub_10005CB20(a1, a2, a3, *v3, &qword_10012A708, &unk_1001095F0, &qword_100129F60, &qword_100108D78);
  *v3 = result;
  return result;
}

size_t sub_10005C714(size_t a1, int64_t a2, char a3)
{
  result = sub_10005CD08(a1, a2, a3, *v3, &qword_10012A740, &qword_100109628, &type metadata accessor for DailyID);
  *v3 = result;
  return result;
}

size_t sub_10005C758(size_t a1, int64_t a2, char a3)
{
  result = sub_10005CB20(a1, a2, a3, *v3, &qword_10012A768, &unk_100109650, &qword_100129F70, &qword_100108D90);
  *v3 = result;
  return result;
}

size_t sub_10005C798(size_t a1, int64_t a2, char a3)
{
  result = sub_10005CD08(a1, a2, a3, *v3, &qword_10012A7A0, &qword_100109688, &type metadata accessor for AlbumID);
  *v3 = result;
  return result;
}

void *sub_10005C7DC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10000560C(&qword_10012A1C8, &unk_100109560);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000560C(&qword_10012A1D8, &unk_100108F40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10005C910(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000560C(&qword_10012A090, &qword_100108E48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10005CA1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000560C(&qword_10012A668, &qword_100109538);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

size_t sub_10005CB20(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000560C(a5, a6);
  v16 = *(sub_10000560C(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_10000560C(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

size_t sub_10005CD08(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10000560C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_10005CEE4(uint64_t a1, uint64_t *a2, int *a3)
{
  v5 = *a2;
  v9 = (a3 + *a3);
  v6 = a3[1];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_10000CC84;

  return v9(a1, v5);
}

uint64_t sub_10005CFE8(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v12 = *a5;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1000045BC;

  return sub_100050228(a1, a2, a3, a4, v12, a6);
}

unint64_t sub_10005D0B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000560C(&qword_10012A620, &unk_1001094D0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_100057990(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 8);
    v13 = *v7;

    result = sub_100057990(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_10005D1C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000560C(&qword_10012A680, &qword_100109578);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100057990(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_100057990(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10005D2D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000560C(&qword_10012A650, &qword_100109528);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;

      result = sub_1000579F8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_10005D3C8(uint64_t a1)
{
  v2 = sub_10000560C(&qword_10012A7B0, &qword_1001096A8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000560C(&qword_10012A658, &qword_100109530);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10005F690(v10, v6, &qword_10012A7B0, &qword_1001096A8);
      result = sub_100057AFC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_10005D5B0(uint64_t a1)
{
  v2 = sub_10000560C(&qword_10012A7A8, &qword_1001096A0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10000560C(&qword_10012A748, &qword_100109640);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10005F690(v10, v6, &qword_10012A7A8, &qword_1001096A0);
      result = sub_100057AFC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for DailyPhotosFaceCuration.DailyPhotosFace();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void *sub_10005D7D0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10000560C(&qword_10012A300, &qword_100108FF8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_100057BD0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_100057BD0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10005D8D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000560C(&qword_10012A5A0, &qword_100109408);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100057C14(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_10005D9D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000560C(&qword_10012A5B8, &qword_100109418);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10005F690(v4, &v11, &qword_10012A5C0, &qword_100109420);
      v5 = v11;
      result = sub_100057CD0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10005E1CC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_10005DAFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000560C(&qword_10012A5F0, &qword_100109458);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10005F690(v4, &v13, &qword_10012A5F8, &qword_100109460);
      v5 = v13;
      v6 = v14;
      result = sub_100057C14(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10005E1CC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10005DC2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000560C(&qword_10012A648, &qword_100109520);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100057C14(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_10005DD30()
{
  result = qword_10012A570;
  if (!qword_10012A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012A570);
  }

  return result;
}

uint64_t sub_10005DD90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000560C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10005DDF8()
{
  result = qword_10012A598;
  if (!qword_10012A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012A598);
  }

  return result;
}

id sub_10005DE58()
{
  v0 = type metadata accessor for Locale();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(AXMVisionAnalysisOptions) init];
  v6 = AXRuntimeCheck_MediaAnalysisSupport();
  [v5 setDetectMADCaptions:v6];
  [v5 setDetectMADScenes:v6];
  [v5 setDetectMADFace:v6];
  [v5 setDetectScenes:v6 ^ 1];
  [v5 setDetectObjects:v6 ^ 1];
  [v5 setDetectProminentObjects:v6 ^ 1];
  [v5 setDetectCaptions:v6 ^ 1];
  [v5 setDetectFaceNames:v6 ^ 1];
  [v5 setDetectFaceExpressions:v6 ^ 1];
  [v5 setDetectText:1];
  v7 = [objc_opt_self() defaultOptions];
  [v5 setTextDetectionOptions:v7];

  [v5 setDetectTraits:1];
  [v5 setDetectModelClassifications:1];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v1 + 8))(v4, v0);
  [v5 setPreferredOutputLocale:isa];

  return v5;
}

uint64_t sub_10005E094()
{
  v1 = sub_10000560C(&qword_10012A5A8, &qword_100109410);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_10005E128(void *a1, uint64_t a2)
{
  v4 = *(*(sub_10000560C(&qword_10012A5A8, &qword_100109410) - 8) + 80);

  sub_10004EC70(a1, a2);
}

uint64_t sub_10005E1B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

_OWORD *sub_10005E1CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10005E1DC()
{
  v1 = sub_10000560C(&qword_10012A5C8, &qword_100109428);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10005E284(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_10000560C(&qword_10012A5C8, &qword_100109428) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10004D030(a1, a2, v2 + v6, v7);
}

uint64_t sub_10005E33C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000C868(result, a2);
  }

  return result;
}

uint64_t sub_10005E3D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10005E488(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000CC84;

  return sub_100044190(a1, a2);
}

uint64_t sub_10005E534(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_10000CC84;

  return sub_100044B28(a1, a2, v2);
}

uint64_t sub_10005E5E0(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000CC84;

  return sub_10005CEE4(a1, a2, v7);
}

uint64_t sub_10005E6A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10005E750;

  return sub_10004509C(a1);
}

uint64_t sub_10005E750(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_10005E878()
{
  v1 = type metadata accessor for MessageBody();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005E944(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for MessageBody() - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = v2[2];
  v9 = v2[3];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_10000CC84;

  return sub_10005CFE8(a1, a2, v8, v9, v2 + 4, v2 + v7);
}

uint64_t sub_10005EAA4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for SyncFacesRequest() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageBody() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000CC84;

  return sub_100051434(a1, a2, v11, v12, v2 + v7, v2 + v10);
}

uint64_t sub_10005EC68(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for ShuffleID() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageBody() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000CC84;

  return sub_1000524A0(a1, a2, v11, v12, v2 + v7, v2 + v10);
}

uint64_t sub_10005EE14(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for SyncFacesRequest() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageBody() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000CC84;

  return sub_1000534D8(a1, a2, v11, v12, v2 + v7, v2 + v10);
}

uint64_t sub_10005EFD8(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for DailyID() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageBody() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000CC84;

  return sub_100054544(a1, a2, v11, v12, v2 + v7, v2 + v10);
}

uint64_t sub_10005F130()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005F1D4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for SyncFacesRequest() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageBody() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000CC84;

  return sub_10005557C(a1, a2, v11, v12, v2 + v7, v2 + v10);
}

uint64_t sub_10005F398(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v3 + 64);
  v7 = type metadata accessor for MessageBody();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v10 = (v5 + v6 + v9) & ~v9;
  v11 = *(v8 + 64);
  v12 = v4 | v9;
  v13 = *(v1 + 24);

  (*(v3 + 8))(v1 + v5, v2);
  (*(v8 + 8))(v1 + v10, v7);

  return _swift_deallocObject(v1, v10 + v11, v12 | 7);
}

uint64_t sub_10005F4F0(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AlbumID() - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for MessageBody() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v2 + 16);
  v12 = *(v2 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10000CC84;

  return sub_100056954(a1, a2, v11, v12, v2 + v7, v2 + v10);
}

uint64_t sub_10005F648(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10005F690(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000560C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for PhonePhotoProcessorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PhonePhotoProcessorError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10005F84C()
{
  result = qword_10012A7C0;
  if (!qword_10012A7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10012A7C0);
  }

  return result;
}

char *sub_10005F8E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_10006465C(*(a1 + 16), 0);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = sub_10006BA60(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_100010E54();
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return &_swiftEmptyArrayStorage;
  }

  return v3;
}

id sub_10005F9A8@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static SystemDirectory.folderURL(for:)();
  v7 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v8);
  v10 = v9;
  v15 = 0;
  v11 = [v7 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v15];

  v12 = v15;
  if (v11)
  {
    (*(v3 + 32))(a1, v6, v2);
    return v12;
  }

  else
  {
    v14 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v3 + 8))(v6, v2);
  }
}

uint64_t sub_10005FB64(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = type metadata accessor for UUID();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v6 = *(v5 + 64) + 15;
  v3[8] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v3[9] = v7;
  v8 = *(v7 - 8);
  v3[10] = v8;
  v9 = *(v8 + 64) + 15;
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_10005FCB0, 0, 0);
}

uint64_t sub_10005FCB0()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = type metadata accessor for StoredPhoto();
  v0[12] = v7;
  v8 = *(v7 - 8);
  v0[13] = v8;
  v9 = v6;
  v10 = *(v8 + 16);
  v10(v9, v5, v7);
  StoredPhoto.localIdentifier.getter();
  static SystemDirectory.folderURL(for:)();
  (*(v3 + 8))(v2, v4);
  v11 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v12);
  v14 = v13;
  v0[2] = 0;
  LODWORD(v4) = [v11 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

  v15 = v0[2];
  if (v4)
  {
    v16 = v0[3];
    v17 = v15;
    StoredPhoto.writeToCache()();
    v0[14] = v18;
    if (!v18)
    {
      v19 = v0[3];
      v0[15] = *(v0[5] + OBJC_IVAR____TtC11photosfaced10PhotoCache_database);
      sub_10000560C(&qword_10012A600, &qword_100109468);
      v20 = *(v8 + 72);
      v21 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v22 = swift_allocObject();
      v0[16] = v22;
      *(v22 + 16) = xmmword_1001089C0;
      v10(v22 + v21, v19, v7);
      type metadata accessor for PhotosFaceDatabase();
      sub_10006D104(&qword_10012A898, &type metadata accessor for PhotosFaceDatabase);
      v24 = dispatch thunk of Actor.unownedExecutor.getter();

      return _swift_task_switch(sub_100060008, v24, v23);
    }
  }

  else
  {
    v25 = v15;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v26 = v0[12];
  v27 = v0[13];
  v28 = v0[8];
  v29 = v0[3];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v27 + 8))(v29, v26);

  v30 = v0[1];

  return v30();
}

uint64_t sub_100060008()
{
  rawValue = v0[15]._rawValue;
  v2 = v0[14]._rawValue;
  PhotosFaceDatabase.insert(storedPhotos:)(v0[16]);
  v0[17]._rawValue = v3;
  v4 = v0[16]._rawValue;

  if (v3)
  {
    v5 = sub_100060184;
  }

  else
  {
    v5 = sub_1000600C8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000600C8()
{
  v1 = v0[8];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_100060184()
{
  v1 = v0[17];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[8];
  v5 = v0[3];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 8))(v5, v2);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100060270(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for StoredPhoto();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100060400, 0, 0);
}

uint64_t sub_100060400()
{
  *(v0 + 120) = *(*(v0 + 24) + OBJC_IVAR____TtC11photosfaced10PhotoCache_database);
  type metadata accessor for PhotosFaceDatabase();
  sub_10006D104(&qword_10012A898, &type metadata accessor for PhotosFaceDatabase);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000604C8, v2, v1);
}

uint64_t sub_1000604C8()
{
  v1 = v0[15];
  v2 = v0[2];
  v0[16] = PhotosFaceDatabase.queryPhotos(identifiers:)();
  v0[17] = 0;

  return _swift_task_switch(sub_1000605C0, 0, 0);
}

void sub_1000605C0()
{
  v76 = v0;
  v1 = v0[16];
  v73 = *(v1 + 16);
  if (!v73)
  {
    v5 = &_swiftEmptyArrayStorage;
LABEL_14:
    v68 = v5;
    if (sub_100064448(v1, v5))
    {
    }

    else
    {
      v19 = v5;
      v20 = v0[9];
      v21 = sub_10006C1D4(v0[16]);

      v22 = sub_100069170(v19, v21);
      static Log.photos.getter();

      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = v0[10];
        v74 = v0[9];
        v27 = v0[7];
        v26 = v0[8];
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v75 = v29;
        *v28 = 134218242;
        *(v28 + 4) = v22[2];

        *(v28 + 12) = 2080;
        sub_10006D104(&qword_10012A8A0, &type metadata accessor for StoredPhoto);
        v30 = Set.description.getter();
        v32 = v31;

        v33 = sub_100102F80(v30, v32, &v75);

        *(v28 + 14) = v33;
        _os_log_impl(&_mh_execute_header, v23, v24, "Found %ld photos are marked as cached, but not actually on disk: %s", v28, 0x16u);
        sub_10000C304(v29);

        (*(v26 + 8))(v74, v27);
      }

      else
      {
        v34 = v0[8];
        v35 = v0[9];
        v36 = v0[7];

        (*(v34 + 8))(v35, v36);
      }
    }

    v37 = v0[2];

    v39 = sub_10006C038(v38);

    v40 = v68[2];
    v41 = &_swiftEmptyArrayStorage;
    if (v40)
    {
      v67 = v39;
      v42 = v0[11];
      v43 = v0[5];
      v75 = &_swiftEmptyArrayStorage;
      sub_10005C508(0, v40, 0);
      v41 = v75;
      v44 = *(v42 + 16);
      v42 += 16;
      v45 = v68 + ((*(v42 + 64) + 32) & ~*(v42 + 64));
      v70 = *(v42 + 56);
      v72 = v44;
      v46 = (v42 - 8);
      do
      {
        v47 = v0[12];
        v48 = v0[10];
        v49 = v0[6];
        v72(v47, v45, v48);
        StoredPhoto.localIdentifier.getter();
        (*v46)(v47, v48);
        v75 = v41;
        v51 = v41[2];
        v50 = v41[3];
        if (v51 >= v50 >> 1)
        {
          sub_10005C508(v50 > 1, v51 + 1, 1);
          v41 = v75;
        }

        v52 = v0[6];
        v53 = v0[4];
        v41[2] = v51 + 1;
        (*(v43 + 32))(v41 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v51, v52, v53);
        v45 += v70;
        --v40;
      }

      while (v40);
      v39 = v67;
    }

    v54 = sub_100068AB0(v41, v39);

    v55 = v54[2];
    if (v55)
    {
      v56 = v0[5];
      v57 = sub_10006465C(v54[2], 0);
      v58 = sub_10006BA60(&v75, &v57[(*(v56 + 80) + 32) & ~*(v56 + 80)], v55, v54);
      sub_100010E54();
      if (v58 == v55)
      {
LABEL_29:
        v60 = v0[13];
        v59 = v0[14];
        v61 = v0[12];
        v62 = v0[9];
        v63 = v0[6];

        v64 = v0[1];

        v64(v68, v57);
        return;
      }

      __break(1u);
    }

    v57 = &_swiftEmptyArrayStorage;
    goto LABEL_29;
  }

  v2 = 0;
  v3 = v0[11];
  v69 = v3;
  v65 = (v3 + 8);
  v66 = (v3 + 32);
  v4 = v0[17];
  v5 = &_swiftEmptyArrayStorage;
  v71 = v0[16];
  while (v2 < *(v1 + 16))
  {
    v6 = v5;
    v7 = v0[14];
    v8 = v0[3];
    v9 = (*(v69 + 80) + 32) & ~*(v69 + 80);
    v10 = *(v69 + 72);
    (*(v69 + 16))(v7, v0[16] + v9 + v10 * v2, v0[10]);
    v11 = StoredPhoto.layouts.getter();
    v12 = swift_task_alloc();
    *(v12 + 16) = v8;
    *(v12 + 24) = v7;
    LOBYTE(v7) = sub_100063E38(sub_10006C804, v12, v11);

    v13 = v0[14];
    if (v7)
    {
      v14 = *v66;
      (*v66)(v0[13], v0[14], v0[10]);
      v5 = v6;
      v75 = v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_10005C5D0(0, v6[2] + 1, 1);
        v5 = v75;
      }

      v1 = v71;
      v16 = v5[2];
      v15 = v5[3];
      if (v16 >= v15 >> 1)
      {
        sub_10005C5D0(v15 > 1, v16 + 1, 1);
        v5 = v75;
      }

      v17 = v0[13];
      v18 = v0[10];
      v5[2] = v16 + 1;
      v14(v5 + v9 + v16 * v10, v17, v18);
    }

    else
    {
      (*v65)(v0[14], v0[10]);
      v5 = v6;
      v1 = v71;
    }

    if (v73 == ++v2)
    {
      v1 = v0[16];
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_100060BF4()
{
  v1[3] = v0;
  v2 = type metadata accessor for Logger();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return _swift_task_switch(sub_100060CE0, 0, 0);
}

uint64_t sub_100060CE0()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtC11photosfaced10PhotoCache_background);
  v0[7] = v2;
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = &unk_100109800;
  *(v3 + 24) = v1;

  return _swift_task_switch(sub_100060DC0, v2, 0);
}

uint64_t sub_100060DC0()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_100109810;
  *(v3 + 24) = v1;

  sub_1000FCA38(4, &unk_100109070, v3);

  return _swift_task_switch(sub_100060EBC, 0, 0);
}

uint64_t sub_100060EBC()
{
  v29 = v0;
  v1 = v0[3];
  v2 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(_TtC11photosfaced13AlbumProvider.info);
  v4 = v3;
  v0[2] = 0;
  v5 = [v2 createDirectoryAtURL:v3 withIntermediateDirectories:1 attributes:0 error:v0 + 2];

  v6 = v0[2];
  if (v5)
  {
    v7 = v6;
  }

  else
  {
    v8 = v0[6];
    v9 = v0[3];
    v10 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    static Log.cache.getter();

    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v15 = v0[5];
    v14 = v0[6];
    v16 = v0[4];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v17 = 136315394;
      type metadata accessor for URL();
      v27 = v16;
      sub_10006D104(&qword_10012A590, &type metadata accessor for URL);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = sub_100102F80(v18, v19, &v28);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v25 = v21;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to create %s with error %@", v17, 0x16u);
      sub_10000C460(v25, &qword_100129EF8, &qword_100108C70);

      sub_10000C304(v26);

      (*(v15 + 8))(v14, v27);
    }

    else
    {

      (*(v15 + 8))(v14, v16);
    }
  }

  v22 = v0[6];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000611F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000045BC;

  return sub_100061280();
}

uint64_t sub_100061280()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_100061358, 0, 0);
}

uint64_t sub_100061358()
{
  v1 = v0[7];
  static Log.session.getter();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Photo Cache Cleanup", v4, 2u);
  }

  v5 = v0[7];
  v6 = v0[3];
  v7 = v0[4];

  v8 = *(v7 + 8);
  v0[8] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_10006148C;
  v10 = v0[2];

  return sub_10006254C();
}

uint64_t sub_10006148C()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_100061DE4;
  }

  else
  {
    v3 = sub_1000615A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000615A0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11photosfaced10PhotoCache_database);
  v2 = async function pointer to PhotosFaceDatabase.storedPhotos()[1];
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_100061640;

  return PhotosFaceDatabase.storedPhotos()();
}

uint64_t sub_100061640(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[12] = a1;
  v4[13] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_100061F80, 0, 0);
  }

  else
  {
    v7 = swift_task_alloc();
    v4[14] = v7;
    *v7 = v6;
    v7[1] = sub_1000617C4;
    v8 = v4[2];

    return sub_100062C74(a1);
  }
}

uint64_t sub_1000617C4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_10006211C;
  }

  else
  {
    v5 = sub_1000618D8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000618D8()
{
  v31 = v0;
  v1 = v0[15];
  v2 = sub_10006C038(v0[12]);

  v3 = *(v1 + 16);
  v4 = v0[15];
  if (v3 <= v2[2].isa >> 3)
  {
    goto LABEL_7;
  }

  v5 = sub_100069830(v0[15], v2);

  if (!v5[2])
  {
LABEL_8:

    v22 = v0[6];
    v21 = v0[7];
    v23 = v0[5];

    v24 = v0[1];

    return v24();
  }

  while (1)
  {
    v6 = v0[6];
    static Log.session.getter();

    v2 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v2, v7);
    v9 = v0[8];
    v10 = v0[6];
    v12 = v0[3];
    v11 = v0[4];
    if (!v8)
    {
      break;
    }

    v29 = v0[8];
    v13 = swift_slowAlloc();
    v28 = v10;
    v14 = swift_slowAlloc();
    p_isa = v14;
    *v13 = 134218242;
    *(v13 + 4) = v5[2];

    *(v13 + 12) = 2080;
    type metadata accessor for UUID();
    sub_10006D104(&qword_10012A1F8, &type metadata accessor for UUID);
    v15 = Set.description.getter();
    v17 = sub_100102F80(v15, v16, &p_isa);

    *(v13 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v2, v7, "Found %ld photos that are missing on disk files. Removing %s", v13, 0x16u);
    sub_10000C304(v14);

    v29(v28, v12);
    v4 = v5[2];
    if (!v4)
    {
      goto LABEL_12;
    }

LABEL_5:
    v18 = sub_10006465C(v4, 0);
    v19 = *(type metadata accessor for UUID() - 8);
    v20 = sub_10006BA60(&p_isa, &v18[(*(v19 + 80) + 32) & ~*(v19 + 80)], v4, v5);
    sub_100010E54();
    if (v20 == v4)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_7:
    p_isa = &v2->isa;
    sub_10006B5A0(v4);

    v5 = p_isa;
    if (!p_isa[2])
    {
      goto LABEL_8;
    }
  }

  v9(v10, v12);
  v4 = v5[2];
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_12:

  v18 = &_swiftEmptyArrayStorage;
LABEL_13:
  v0[17] = v18;
  v26 = swift_task_alloc();
  v0[18] = v26;
  *v26 = v0;
  v26[1] = sub_100061C8C;
  v27 = v0[2];

  return sub_1000633F8(v18);
}

uint64_t sub_100061C8C()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000622C0, 0, 0);
  }

  else
  {
    v4 = v3[17];

    v6 = v3[6];
    v5 = v3[7];
    v7 = v3[5];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_100061DE4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 40);
  static Log.cache.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed during cleanup: %@", v5, 0xCu);
    sub_10000C460(v6, &qword_100129EF8, &qword_100108C70);
  }

  else
  {
  }

  v8 = *(v0 + 32) + 8;
  (*(v0 + 64))(*(v0 + 40), *(v0 + 24));
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 40);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_100061F80()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  static Log.cache.getter();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Failed during cleanup: %@", v5, 0xCu);
    sub_10000C460(v6, &qword_100129EF8, &qword_100108C70);
  }

  else
  {
  }

  v8 = *(v0 + 32) + 8;
  (*(v0 + 64))(*(v0 + 40), *(v0 + 24));
  v10 = *(v0 + 48);
  v9 = *(v0 + 56);
  v11 = *(v0 + 40);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_10006211C()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 128);
  v3 = *(v0 + 40);
  static Log.cache.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed during cleanup: %@", v6, 0xCu);
    sub_10000C460(v7, &qword_100129EF8, &qword_100108C70);
  }

  else
  {
  }

  v9 = *(v0 + 32) + 8;
  (*(v0 + 64))(*(v0 + 40), *(v0 + 24));
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 40);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1000622C0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 152);
  v3 = *(v0 + 40);
  static Log.cache.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed during cleanup: %@", v6, 0xCu);
    sub_10000C460(v7, &qword_100129EF8, &qword_100108C70);
  }

  else
  {
  }

  v9 = *(v0 + 32) + 8;
  (*(v0 + 64))(*(v0 + 40), *(v0 + 24));
  v11 = *(v0 + 48);
  v10 = *(v0 + 56);
  v12 = *(v0 + 40);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100062464(int *a1)
{
  v5 = (a1 + *a1);
  v2 = a1[1];
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000AAD0;

  return v5();
}

uint64_t sub_10006254C()
{
  v1[2] = v0;
  v2 = type metadata accessor for StoredPhoto();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v1[6] = v5;
  v6 = *(v5 - 8);
  v1[7] = v6;
  v7 = *(v6 + 64) + 15;
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  v1[10] = v8;
  v9 = *(v8 - 8);
  v1[11] = v9;
  v10 = *(v9 + 64) + 15;
  v1[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000626D0, 0, 0);
}

uint64_t sub_1000626D0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC11photosfaced10PhotoCache_database);
  v2 = async function pointer to PhotosFaceDatabase.unassociatedPhotos()[1];
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  *v3 = v0;
  v3[1] = sub_100062770;

  return PhotosFaceDatabase.unassociatedPhotos()();
}

uint64_t sub_100062770(uint64_t a1)
{
  v3 = *(*v2 + 104);
  v4 = *v2;
  v4[14] = a1;

  if (v1)
  {
    v5 = v4[12];
    v7 = v4[8];
    v6 = v4[9];
    v8 = v4[5];

    v9 = v4[1];

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_1000628D8, 0, 0);
  }
}

uint64_t sub_1000628D8()
{
  v50 = v0;
  v1 = v0[14];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[7];
    v4 = v0[4];
    v49 = &_swiftEmptyArrayStorage;
    sub_10005C508(0, v2, 0);
    v5 = &_swiftEmptyArrayStorage;
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v46 = *(v4 + 56);
    v47 = v6;
    v8 = (v4 - 8);
    do
    {
      v9 = v0[9];
      v10 = v0[5];
      v11 = v0[3];
      v47(v10, v7, v11);
      StoredPhoto.localIdentifier.getter();
      (*v8)(v10, v11);
      v49 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        sub_10005C508(v12 > 1, v13 + 1, 1);
        v5 = v49;
      }

      v14 = v0[9];
      v15 = v0[6];
      v5[2] = v13 + 1;
      (*(v3 + 32))(v5 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v14, v15);
      v7 += v46;
      --v2;
    }

    while (v2);
    v16 = v0[14];
  }

  else
  {
    v17 = v0[14];

    v5 = &_swiftEmptyArrayStorage;
  }

  v18 = v0[12];
  static Log.cache.getter();

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  v21 = os_log_type_enabled(v19, v20);
  v22 = v0[11];
  v23 = v0[12];
  v24 = v0[10];
  if (v21)
  {
    v25 = v0[6];
    v48 = v0[12];
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v49 = v27;
    *v26 = 134218242;
    *(v26 + 4) = v5[2];

    *(v26 + 12) = 2080;
    v28 = Array.description.getter();
    v30 = sub_100102F80(v28, v29, &v49);

    *(v26 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "Found %ld unassociated photos. Marking as purgable: %s", v26, 0x16u);
    sub_10000C304(v27);

    (*(v22 + 8))(v48, v24);
  }

  else
  {

    (*(v22 + 8))(v23, v24);
  }

  v31 = v5[2];
  if (v31)
  {
    v32 = v0[7];
    v35 = *(v32 + 16);
    v33 = v32 + 16;
    v34 = v35;
    v36 = v5 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v37 = *(v33 + 56);
    do
    {
      v38 = v0[8];
      v39 = v0[6];
      v34(v38, v36, v39);
      sub_10006C370(v38, 1);
      (*(v33 - 8))(v38, v39);
      v36 += v37;
      --v31;
    }

    while (v31);
  }

  v40 = v0[12];
  v41 = v0[8];
  v42 = v0[9];
  v43 = v0[5];

  v44 = v0[1];

  return v44();
}

uint64_t sub_100062C74(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for UUID();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_10000560C(&qword_10012A6B0, &qword_1001095A8);
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_100062DCC, 0, 0);
}

uint64_t sub_100062DCC()
{
  v1 = *(v0[3] + OBJC_IVAR____TtC11photosfaced10PhotoCache_database);
  v2 = async function pointer to PhotosFaceDatabase.timePositions(for:)[1];
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_100062E74;
  v4 = v0[2];

  return PhotosFaceDatabase.timePositions(for:)(v4);
}

uint64_t sub_100062E74(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *v2;
  v4[15] = a1;

  if (v1)
  {
    v6 = v4[12];
    v5 = v4[13];
    v8 = v4[10];
    v7 = v4[11];
    v9 = v4[9];
    v10 = v4[6];

    v11 = v4[1];

    return v11();
  }

  else
  {

    return _swift_task_switch(sub_100062FFC, 0, 0);
  }
}

void sub_100062FFC()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  v3 = &_swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = 0;
    v5 = v0[7];
    v6 = v0[8];
    v7 = &_swiftEmptyArrayStorage;
    v57 = v0[15];
    while (v4 < *(v1 + 16))
    {
      v8 = v0[13];
      v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v10 = *(v6 + 72);
      sub_10006CEB0(v0[15] + v9 + v10 * v4, v8);
      v11 = sub_10006C824(v8, *(v8 + *(v5 + 48)), *(v8 + *(v5 + 64)));
      v12 = v0[13];
      if (v11)
      {
        sub_10000C460(v12, &qword_10012A6B0, &qword_1001095A8);
      }

      else
      {
        sub_10006CF20(v12, v0[12]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10005C614(0, v7[2] + 1, 1);
        }

        v14 = v7[2];
        v13 = v7[3];
        v15 = v7;
        if (v14 >= v13 >> 1)
        {
          sub_10005C614(v13 > 1, v14 + 1, 1);
          v15 = v7;
        }

        v16 = v0[12];
        v15[2] = v14 + 1;
        sub_10006CF20(v16, v15 + v9 + v14 * v10);
        v7 = v15;
        v1 = v57;
      }

      if (v2 == ++v4)
      {
        v17 = v0[15];
        v3 = &_swiftEmptyArrayStorage;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = &_swiftEmptyArrayStorage;
LABEL_14:

    v18 = v7[2];
    if (v18)
    {
      v19 = v0[8];
      v54 = v0[7];
      v20 = v0[5];
      sub_10005C508(0, v18, 0);
      v3 = &_swiftEmptyArrayStorage;
      v50 = v0;
      v21 = v7 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v52 = *(v19 + 72);
      v53 = v20;
      v22 = (v20 + 32);
      v51 = (v20 + 16);
      do
      {
        v56 = v21;
        v58 = v18;
        v23 = v22;
        v25 = v0[10];
        v24 = v0[11];
        v26 = v0[9];
        v55 = v0[6];
        v27 = v0[4];
        sub_10006CEB0(v21, v24);
        sub_10006CEB0(v24, v25);
        v28 = v3;
        v29 = *(v54 + 48);
        v30 = *(v25 + v29);
        v31 = *(v54 + 64);
        v32 = *(v25 + v31);
        v33 = v25;
        v22 = v23;
        v34 = *v23;
        v34(v26, v33, v27);
        *(v26 + v29) = v30;
        v3 = v28;
        *(v26 + v31) = v32;
        (*v51)(v55, v26, v27);
        sub_10000C460(v26, &qword_10012A6B0, &qword_1001095A8);
        sub_10000C460(v24, &qword_10012A6B0, &qword_1001095A8);
        v59 = v28;
        v35 = v28[2];
        v36 = v3[3];
        if (v35 >= v36 >> 1)
        {
          sub_10005C508(v36 > 1, v35 + 1, 1);
          v3 = v59;
        }

        v0 = v50;
        v37 = v50[6];
        v38 = v50[4];
        v3[2] = v35 + 1;
        v34(v3 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v35, v37, v38);
        v21 = v56 + v52;
        v18 = v58 - 1;
      }

      while (v58 != 1);
    }

    v40 = v0[12];
    v39 = v0[13];
    v42 = v0[10];
    v41 = v0[11];
    v43 = v0[9];
    v44 = v0[6];
    v45 = v0[2];

    v47 = sub_10006C038(v46);

    v48 = sub_100068AB0(v3, v47);

    v49 = v0[1];

    v49(v48);
  }
}

uint64_t sub_1000633F8(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = type metadata accessor for Logger();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[8] = v6;
  v7 = *(v6 - 8);
  v2[9] = v7;
  v8 = *(v7 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return _swift_task_switch(sub_10006354C, 0, 0);
}

uint64_t sub_10006354C()
{
  *(v0 + 96) = *(*(v0 + 32) + OBJC_IVAR____TtC11photosfaced10PhotoCache_database);
  type metadata accessor for PhotosFaceDatabase();
  sub_10006D104(&qword_10012A898, &type metadata accessor for PhotosFaceDatabase);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100063648, v2, v1);
}

uint64_t sub_100063648()
{
  rawValue = v0[12]._rawValue;
  PhotosFaceDatabase.delete(identifiers:)(v0[3]);
  if (v2)
  {
    v4 = v0[10]._rawValue;
    v3 = v0[11]._rawValue;
    v5 = v0[7]._rawValue;

    v6 = v0[1]._rawValue;

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_10006375C, 0, 0);
  }
}

uint64_t sub_10006375C()
{
  v62 = v0;
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[6];
    v5 = objc_opt_self();
    v6 = *(type metadata accessor for UUID() - 8);
    v7 = *(v6 + 72);
    v8 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v60 = (v3 + 8);
    v54 = (v4 + 8);
    v55 = (v3 + 16);
    p_name = &stru_100128FF8.name;
    v56 = v7;
    v57 = v5;
    do
    {
      v12 = v0[11];
      static SystemDirectory.folderURL(for:)();
      v13 = [v5 p_name[260]];
      URL._bridgeToObjectiveC()(v14);
      v16 = v15;
      v0[2] = 0;
      v17 = [v13 removeItemAtURL:v15 error:v0 + 2];

      v18 = v0[2];
      v19 = v0[11];
      if (v17)
      {
        v10 = v0[8];
        v11 = v18;

        (*v60)(v19, v10);
      }

      else
      {
        v20 = v18;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        URL.path(percentEncoded:)(1);
        v21 = String._bridgeToObjectiveC()();

        LOBYTE(v20) = [v13 fileExistsAtPath:v21];

        v22 = v0[11];
        if (v20)
        {
          v23 = v0[10];
          v25 = v0[7];
          v24 = v0[8];
          swift_willThrow();

          static Log.cache.getter();
          (*v55)(v23, v22, v24);
          swift_errorRetain();
          v26 = Logger.logObject.getter();
          v27 = static os_log_type_t.error.getter();

          v28 = os_log_type_enabled(v26, v27);
          v29 = v0[10];
          v30 = v0[11];
          v31 = v0[8];
          v32 = v0[5];
          v58 = v32;
          v59 = v0[7];
          if (v28)
          {
            v49 = v26;
            v33 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v61 = v50;
            *v33 = 136315394;
            sub_10006D104(&qword_10012A590, &type metadata accessor for URL);
            v34 = dispatch thunk of CustomStringConvertible.description.getter();
            v35 = v31;
            v52 = v31;
            v53 = v30;
            v36 = v34;
            v38 = v37;
            v51 = *v60;
            (*v60)(v29, v35);
            v39 = sub_100102F80(v36, v38, &v61);

            *(v33 + 4) = v39;
            *(v33 + 12) = 2112;
            swift_errorRetain();
            v40 = _swift_stdlib_bridgeErrorToNSError();
            *(v33 + 14) = v40;
            *v48 = v40;
            _os_log_impl(&_mh_execute_header, v49, v27, "Failed to delete %s with error: %@", v33, 0x16u);
            sub_10000C460(v48, &qword_100129EF8, &qword_100108C70);

            sub_10000C304(v50);

            (*v54)(v59, v58);
            v51(v53, v52);
          }

          else
          {

            v42 = *v60;
            (*v60)(v29, v31);
            (*v54)(v59, v58);
            v42(v30, v31);
          }

          v7 = v56;
          v5 = v57;
        }

        else
        {
          v41 = v0[8];

          (*v60)(v22, v41);
        }

        p_name = (&stru_100128FF8 + 8);
      }

      v8 += v7;
      --v2;
    }

    while (v2);
  }

  v44 = v0[10];
  v43 = v0[11];
  v45 = v0[7];

  v46 = v0[1];

  return v46();
}