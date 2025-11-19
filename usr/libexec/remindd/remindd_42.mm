uint64_t sub_1003F7458()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946218);
  v1 = sub_100006654(v0, qword_100946218);
  if (qword_100936460 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100975068);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t REMOwlEmbeddingClassifier.predict(_:thresholds:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[47] = a3;
  v4[48] = v3;
  v4[45] = a1;
  v4[46] = a2;
  return _swift_task_switch(sub_1003F7544, 0, 0);
}

uint64_t sub_1003F7544(void *a1)
{
  v2 = v1[47];
  v3 = v1[48];
  if (!v2)
  {
    v4 = *(v3 + 40);
    if (v4 < 0)
    {
      __break(1u);
      return _swift_continuation_await(a1);
    }

    if (v4)
    {
      v6 = *(v3 + 40);
      v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v2[2] = v4;
      memset_pattern16(v2 + 4, &unk_1007A7940, 4 * v4);
      v3 = v1[48];
    }

    else
    {
      v2 = _swiftEmptyArrayStorage;
    }

LABEL_11:
    v1[49] = v2;
    v1[50] = v4;
    v10 = *(v3 + 24);
    v1[51] = v10;
    isa = Locale._bridgeToObjectiveC()().super.isa;
    v1[52] = isa;
    v12 = *(v3 + OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_embeddingVersion);
    v13 = *(v3 + OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_embeddingVersion + 8);
    v14 = String._bridgeToObjectiveC()();
    v1[53] = v14;
    v1[2] = v1;
    v1[3] = sub_1003F7780;
    v15 = swift_continuation_init();
    v1[35] = sub_1000F5104(&qword_100946248, &unk_1007B6E90);
    v1[28] = _NSConcreteStackBlock;
    v1[29] = 1107296256;
    v1[30] = sub_1003F8964;
    v1[31] = &unk_1008F0670;
    v1[32] = v15;
    [v10 setupWithLocale:isa embeddingVersion:v14 completionHandler:v1 + 28];
    a1 = v1 + 2;

    return _swift_continuation_await(a1);
  }

  v4 = v2[2];
  if (v4 == *(v3 + 40))
  {
    v5 = v1[47];

    goto LABEL_11;
  }

  sub_1003F9A34();
  swift_allocError();
  *v7 = 0;
  swift_willThrow();
  v8 = v1[1];

  return v8();
}

uint64_t sub_1003F7780()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 432) = v3;
  if (v3)
  {
    v4 = *(v1 + 392);

    v5 = sub_1003F87FC;
  }

  else
  {
    v5 = sub_1003F7898;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003F7898()
{
  v1 = *(v0 + 416);
  v2 = *(v0 + 408);
  v4 = *(v0 + 360);
  v3 = *(v0 + 368);

  v5 = String._bridgeToObjectiveC()();
  *(v0 + 440) = v5;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 352;
  *(v0 + 88) = sub_1003F79EC;
  v6 = swift_continuation_init();
  *(v0 + 344) = sub_1000F5104(&qword_100946250, qword_1007A7960);
  *(v0 + 288) = _NSConcreteStackBlock;
  *(v0 + 296) = 1107296256;
  *(v0 + 304) = sub_1003F8A10;
  *(v0 + 312) = &unk_1008F0698;
  *(v0 + 320) = v6;
  [v2 processEmbeddingRequest:v5 completionHandler:v0 + 288];

  return _swift_continuation_await(v0 + 80);
}

uint64_t sub_1003F79EC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 448) = v3;
  if (v3)
  {
    v4 = *(v1 + 392);

    v5 = sub_1003F8874;
  }

  else
  {
    v5 = sub_1003F7B04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003F7B04()
{
  v1 = v0[55];
  v2 = v0[44];
  v0[57] = v2;

  v3 = [v2 subwordTokenEmbedding];
  v4 = v3;
  v0[58] = v3;
  if (!v3)
  {
    goto LABEL_11;
  }

  v5 = v3;
  v6 = [v5 embeddingTensor];
  if (!v6)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = v6;
  v9 = [v6 values];

  if (!v9)
  {

LABEL_11:
    v14 = v0[49];

    sub_1003F9A34();
    swift_allocError();
    *v15 = 2;
    swift_willThrow();
    goto LABEL_15;
  }

  if ([v5 embeddingDim] == 192)
  {
    v6 = [v5 embeddingTensor];
    if (!v6)
    {
LABEL_34:
      __break(1u);
      return MLModel.prediction(from:options:)(v6, v7);
    }

    v10 = v6;
    v11 = [v6 numToken];

    if (v11 < 0)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_8;
    }

    if (v11)
    {
LABEL_8:
      v12 = 192 * v11;
      if ((v11 * 192) >> 64 == (192 * v11) >> 63)
      {
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_100796900;
        sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
        *(v13 + 32) = NSNumber.init(integerLiteral:)(1);
        *(v13 + 40) = Int._bridgeToObjectiveC()();
        objc_allocWithZone(MLMultiArray);
        v6 = sub_1003F8F54(v13, 65600);
        v0[59] = v6;
        v46 = v5;
        if ((v12 & 0x8000000000000000) == 0)
        {
          v22 = v6;
          if (v12)
          {
            for (i = 0; i != v12; ++i)
            {
              v30 = i % 192;
              if (i > 191)
              {
                v24 = [v22 objectAtIndexedSubscript:{i % 192, v46}];
                [v24 doubleValue];
                v26 = v25;

                v27 = v26 + v9[i];
                v28.super.super.isa = Double._bridgeToObjectiveC()().super.super.isa;
              }

              else
              {
                v31 = v9[i];
                v28.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
              }

              isa = v28.super.super.isa;
              [v22 setObject:v28.super.super.isa atIndexedSubscript:{v30, v46}];
            }
          }

          for (j = 0; j != 192; ++j)
          {
            v33 = [v22 objectAtIndexedSubscript:{j, v46}];
            [v33 doubleValue];

            v34 = Double._bridgeToObjectiveC()().super.super.isa;
            [v22 setObject:v34 atIndexedSubscript:j];
          }

          sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
          inited = swift_initStackObject();
          *(inited + 32) = 0x7475706E69;
          *(inited + 16) = xmmword_100791300;
          *(inited + 40) = 0xE500000000000000;
          v36 = [objc_opt_self() featureValueWithMultiArray:v22];
          *(inited + 72) = sub_1000060C8(0, &qword_100946260, MLFeatureValue_ptr);
          *(inited + 48) = v36;
          sub_1001F67C8(inited);
          swift_setDeallocating();
          sub_1003F9A88(inited + 32);
          v37 = objc_allocWithZone(MLDictionaryFeatureProvider);
          v38 = sub_1003F9050();
          v0[60] = v38;
          v39 = v38;
          v40 = *(v0[48] + 32);
          v41 = objc_allocWithZone(MLPredictionOptions);
          v42 = v39;
          v43 = [v41 init];
          v0[61] = v43;
          v44 = async function pointer to MLModel.prediction(from:options:)[1];
          v45 = swift_task_alloc();
          v0[62] = v45;
          *v45 = v0;
          v45[1] = sub_1003F80A0;
          v6 = v42;
          v7 = v43;

          return MLModel.prediction(from:options:)(v6, v7);
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_33;
    }

    v19 = v0[49];

    sub_1003F9A34();
    swift_allocError();
    v18 = 3;
  }

  else
  {
    v16 = v0[49];

    sub_1003F9A34();
    swift_allocError();
    v18 = 1;
  }

  *v17 = v18;
  swift_willThrow();

  v4 = v5;
LABEL_15:

  v20 = v0[1];

  return v20();
}

uint64_t sub_1003F80A0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 496);
  v6 = *v2;
  *(v4 + 504) = a1;
  *(v4 + 512) = v1;

  v7 = *(v3 + 488);
  v8 = *(v3 + 480);
  if (v1)
  {
    v9 = *(v4 + 392);

    v10 = sub_1003F88E4;
  }

  else
  {

    v10 = sub_1003F8218;
  }

  return _swift_task_switch(v10, 0, 0);
}

void sub_1003F8218()
{
  v69 = v0;
  v1 = *(v0 + 504);
  v2 = String._bridgeToObjectiveC()();
  v3 = [v1 featureValueForName:v2];

  if (!v3 || (v4 = [v3 multiArrayValue], v3, !v4))
  {
    v13 = *(v0 + 504);
    v14 = *(v0 + 472);
    v15 = *(v0 + 480);
    v16 = *(v0 + 456);
    v17 = *(v0 + 392);

    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  if (*(v0 + 400))
  {
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    do
    {
      v7 = [v4 objectAtIndexedSubscript:v5];
      Float.init(truncating:)();
      v9 = v8;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_100366C18(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = sub_100366C18((v10 > 1), v11 + 1, 1, v6);
      }

      ++v5;
      v12 = *(v0 + 400);
      *(v6 + 2) = v11 + 1;
      *&v6[4 * v11 + 32] = v9;
    }

    while (v5 != v12);
  }

  v61 = v4;
  v20 = *(v0 + 384);
  v21 = Array<A>.softmax()();
  v22 = v21;
  v23 = *(v21 + 16);
  v24 = _swiftEmptyArrayStorage;
  v67 = v0;
  if (v23)
  {
    v25 = 0;
    v26 = *(v0 + 392);
    v27 = v21 + 32;
    v28 = v26 + 32;
    do
    {
      v65 = v24;
      v29 = v25;
      while (1)
      {
        if (v29 >= *(v22 + 16))
        {
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

        if (v29 >= *(*(v20 + 16) + 16))
        {
          if (qword_100936088 != -1)
          {
            swift_once();
          }

          v31 = type metadata accessor for Logger();
          sub_100006654(v31, qword_100946218);
          v32 = Logger.logObject.getter();
          v33 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&_mh_execute_header, v32, v33, "Label index out of range. Mismatched model and labels.", v34, 2u);
          }

          goto LABEL_20;
        }

        if (v29 >= *(v26 + 16))
        {
          goto LABEL_52;
        }

        v30 = *(v27 + 4 * v29);
        if (*(v28 + 4 * v29) < v30)
        {
          break;
        }

LABEL_20:
        if (v23 == ++v29)
        {
          v24 = v65;
          goto LABEL_37;
        }
      }

      v24 = v65;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v65;
      v62 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1002538C4(0, *(v65 + 2) + 1, 1);
        v24 = v68;
      }

      v37 = *(v24 + 2);
      v36 = *(v24 + 3);
      if (v37 >= v36 >> 1)
      {
        sub_1002538C4((v36 > 1), v37 + 1, 1);
        v24 = v68;
      }

      v25 = v29 + 1;
      *(v24 + 2) = v37 + 1;
      v38 = &v24[16 * v37];
      *(v38 + 4) = v29;
      *(v38 + 10) = v30;
      v28 = v62;
    }

    while (v23 - 1 != v29);
  }

LABEL_37:
  v0 = v67;
  v39 = *(v67 + 512);
  v40 = *(v67 + 392);

  v68 = v24;

  sub_1003F8E00(&v68);
  if (v39)
  {

    return;
  }

  v41 = v68;
  v42 = *(v68 + 2);
  if (!v42)
  {
    v57 = *(v67 + 504);
    v14 = *(v67 + 472);
    v58 = *(v67 + 480);
    v60 = *(v67 + 456);
    v59 = *(v67 + 464);

    swift_unknownObjectRelease();
LABEL_12:

    v18 = _swiftEmptyArrayStorage;
LABEL_13:
    v19 = *(v0 + 8);

    v19(v18);
    return;
  }

  v68 = _swiftEmptyArrayStorage;
  sub_1002538A4(0, v42, 0);
  v43 = 0;
  v18 = v68;
  v64 = v41;
  v66 = *(v20 + 16);
  v63 = v42;
  v44 = v41 + 40;
  while (v43 < *(v41 + 2))
  {
    v45 = *(v44 - 1);
    if ((v45 & 0x8000000000000000) != 0)
    {
      goto LABEL_54;
    }

    if (v45 >= *(v66 + 16))
    {
      goto LABEL_55;
    }

    v46 = *v44;
    v47 = (v66 + 32 + 16 * v45);
    v49 = *v47;
    v48 = v47[1];
    v68 = v18;
    v50 = *(v18 + 2);
    v51 = *(v18 + 3);

    if (v50 >= v51 >> 1)
    {
      sub_1002538A4((v51 > 1), v50 + 1, 1);
      v18 = v68;
    }

    ++v43;
    *(v18 + 2) = v50 + 1;
    v52 = &v18[32 * v50];
    *(v52 + 4) = v45;
    *(v52 + 5) = v49;
    *(v52 + 6) = v48;
    *(v52 + 14) = v46;
    v44 += 4;
    v41 = v64;
    v0 = v67;
    if (v63 == v43)
    {
      v53 = *(v67 + 504);
      v54 = *(v67 + 472);
      v55 = *(v67 + 480);
      v56 = *(v67 + 456);

      swift_unknownObjectRelease();

      goto LABEL_13;
    }
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_1003F87FC()
{
  v1 = v0[53];
  v2 = v0[54];
  v3 = v0[52];
  swift_willThrow();

  v4 = v0[54];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1003F8874()
{
  v1 = v0[55];
  v2 = v0[56];
  swift_willThrow();

  v3 = v0[56];
  v4 = v0[1];

  return v4();
}

uint64_t sub_1003F88E4()
{
  v1 = *(v0 + 472);
  v3 = *(v0 + 456);
  v2 = *(v0 + 464);

  v4 = *(v0 + 512);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1003F8964(uint64_t a1, void *a2)
{
  v3 = sub_10000F61C((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_1003F8A10(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000F61C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000F5104(&unk_1009399E0, &qword_100795D00);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t REMOwlEmbeddingClassifier.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_locale;
  v3 = type metadata accessor for Locale();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_embeddingVersion + 8);

  return v0;
}

uint64_t REMOwlEmbeddingClassifier.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_locale;
  v3 = type metadata accessor for Locale();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v0 + OBJC_IVAR____TtC7remindd25REMOwlEmbeddingClassifier_embeddingVersion + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1003F8C44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1003F8CF4;

  return REMOwlEmbeddingClassifier.predict(_:thresholds:)(a1, a2, a3);
}

uint64_t sub_1003F8CF4(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

Swift::Int sub_1003F8E00(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100436464(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v4;
        do
        {
          v13 = *(v12 + 6);
          if (*(v12 + 2) >= v13)
          {
            break;
          }

          v14 = *(v12 + 2);
          *(v12 + 1) = *v12;
          *v12 = v14;
          *(v12 + 2) = v13;
          v12 -= 16;
        }

        while (!__CFADD__(v11++, 1));
        v4 += 16;
        --v9;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1000F5104(&qword_100946348, &qword_1007A7AD8);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v16[0] = v8 + 4;
    v16[1] = v7;
    sub_1003F9138(v16, v17, v18, v6);
    v8[2] = 0;
  }

  *a1 = v2;
  return result;
}

id sub_1003F8F54(uint64_t a1, uint64_t a2)
{
  sub_1000060C8(0, &qword_100938DE0, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = 0;
  v5 = [v2 initWithShape:isa dataType:a2 error:&v9];

  if (v5)
  {
    v6 = v9;
  }

  else
  {
    v7 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

id sub_1003F9050()
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = 0;
  v2 = [v0 initWithDictionary:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_1003F9138(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v88;
    if (!*v88)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1004361F4(v8);
      v8 = result;
    }

    v80 = v8 + 2;
    v81 = v8[2];
    if (v81 >= 2)
    {
      while (*a3)
      {
        v82 = &v8[2 * v81];
        v83 = *v82;
        v84 = &v80[2 * v81];
        v85 = v84[1];
        sub_1003F96D8((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v5);
        if (v4)
        {
        }

        if (v85 < v83)
        {
          goto LABEL_117;
        }

        if (v81 - 2 >= *v80)
        {
          goto LABEL_118;
        }

        *v82 = v83;
        v82[1] = v85;
        v86 = *v80 - v81;
        if (*v80 < v81)
        {
          goto LABEL_119;
        }

        v81 = *v80 - 1;
        result = memmove(v84, v84 + 2, 16 * v86);
        *v80 = v81;
        if (v81 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v87 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      while (v6 != v14)
      {
        v16 = *(v15 - 4) >= *v15;
        ++v14;
        v15 += 4;
        if ((((v13 < v10) ^ v16) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v13 >= v10)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v17 = 16 * v7 - 16;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v22 = (v21 + v11);
            v23 = (v21 + v17);
            v24 = *(v21 + v11);
            v25 = *(v21 + v11 + 8);
            if (v11 != v17 || v22 >= v23 + 1)
            {
              *v22 = *v23;
            }

            v20 = v21 + v17;
            *v20 = v24;
            *(v20 + 8) = v25;
          }

          ++v19;
          v17 -= 16;
          v11 += 16;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003658B8(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v34 = v8[3];
    v35 = v5 + 1;
    if (v5 >= v34 >> 1)
    {
      result = sub_1003658B8((v34 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v35;
    v36 = v8 + 4;
    v37 = &v8[2 * v5 + 4];
    *v37 = v9;
    v37[1] = v7;
    v89 = *v88;
    if (!*v88)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v35 - 1;
        if (v35 >= 4)
        {
          break;
        }

        if (v35 == 3)
        {
          v38 = v8[4];
          v39 = v8[5];
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_60:
          if (v41)
          {
            goto LABEL_107;
          }

          v54 = &v8[2 * v35];
          v56 = *v54;
          v55 = v54[1];
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_109;
          }

          v60 = &v36[2 * v5];
          v62 = *v60;
          v61 = v60[1];
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_114;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v5 = v35 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v35 < 2)
        {
          goto LABEL_115;
        }

        v64 = &v8[2 * v35];
        v66 = *v64;
        v65 = v64[1];
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_75:
        if (v59)
        {
          goto LABEL_111;
        }

        v67 = &v36[2 * v5];
        v69 = *v67;
        v68 = v67[1];
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_113;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v35)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v75 = &v36[2 * v5 - 2];
        v76 = *v75;
        v77 = &v36[2 * v5];
        v78 = v77[1];
        sub_1003F96D8((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v89);
        if (v4)
        {
        }

        if (v78 < v76)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v75 = v76;
        v75[1] = v78;
        v79 = v8[2];
        if (v5 >= v79)
        {
          goto LABEL_104;
        }

        v35 = v79 - 1;
        result = memmove(&v36[2 * v5], v77 + 2, 16 * (v79 - 1 - v5));
        v8[2] = v79 - 1;
        if (v79 <= 2)
        {
          goto LABEL_3;
        }
      }

      v42 = &v36[2 * v35];
      v43 = *(v42 - 8);
      v44 = *(v42 - 7);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_105;
      }

      v47 = *(v42 - 6);
      v46 = *(v42 - 5);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_106;
      }

      v49 = &v8[2 * v35];
      v51 = *v49;
      v50 = v49[1];
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_108;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_110;
      }

      if (v53 >= v45)
      {
        v71 = &v36[2 * v5];
        v73 = *v71;
        v72 = v71[1];
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_116;
        }

        if (v40 < v74)
        {
          v5 = v35 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v87;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v26 = *a3;
  v27 = *a3 + 16 * v7;
  v28 = v9 - v7;
LABEL_33:
  v29 = v28;
  v30 = v27;
  while (1)
  {
    v31 = *(v30 + 8);
    if (*(v30 - 8) >= v31)
    {
LABEL_32:
      ++v7;
      v27 += 16;
      --v28;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v26)
    {
      break;
    }

    v32 = *v30;
    *v30 = *(v30 - 16);
    *(v30 - 8) = v31;
    *(v30 - 16) = v32;
    v30 -= 16;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1003F96D8(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 4);
    }

    v15 = &v4[v14];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v4[2] < v6[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 4 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v19 = v5 + 4;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v21 = v6 - 4;
        if (v19 != v6)
        {
          *v5 = *v21;
        }

        if (v15 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v20 = v15 - 4;
      if (v19 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v22 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v6 != v4 || v6 >= (v4 + v22))
  {
    memmove(v6, v4, v22);
  }

  return 1;
}

id sub_1003F98D4(uint64_t a1, uint64_t a2)
{
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

unint64_t sub_1003F9A34()
{
  result = qword_100946258;
  if (!qword_100946258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946258);
  }

  return result;
}

uint64_t sub_1003F9A88(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939260, &unk_100797220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for REMOwlEmbeddingClassifier()
{
  result = qword_100946290;
  if (!qword_100946290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1003F9B44()
{
  result = type metadata accessor for Locale();
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

unint64_t sub_1003F9C1C()
{
  result = qword_100946340;
  if (!qword_100946340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100946340);
  }

  return result;
}

void sub_1003F9C78(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v80 = a4;
  v69 = a3;
  v76 = a2;
  v72 = a5;
  v68 = type metadata accessor for REMRemindersListDataView.FlatModel();
  v78 = *(v68 - 8);
  v6 = *(v78 + 64);
  __chkstk_darwin(v68);
  v71 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v75 = &v60 - v9;
  v10 = sub_1000F5104(&qword_10094B8E0, &unk_1007AABD0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v65 = &v60 - v12;
  v77 = type metadata accessor for REMRemindersListDataView.RemindersPrefetch();
  v73 = *(v77 - 8);
  v13 = *(v73 + 64);
  __chkstk_darwin(v77);
  v67 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v15);
  v74 = &v60 - v16;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v66 = *(Configuration - 8);
  v18 = *(v66 + 64);
  __chkstk_darwin(Configuration);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for REMRemindersListDataView.Diff();
  v70 = *(v21 - 8);
  v22 = *(v70 + 64);
  __chkstk_darwin(v21);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v60 - v26;
  v28 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v31 = &v60 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v34 = &v60 - v33;
  v35 = a1;
  v36 = v81;
  v37 = sub_1003FA7F4(a1, v80);
  if (!v36)
  {
    v81 = v37;
    v62 = v31;
    v63 = v24;
    v64 = v27;
    v61 = v21;
    v39 = v77;
    v38 = v78;
    sub_1003FA464(a1, v34);
    v40 = [v79 fetchResultTokenToDiffAgainst];
    sub_100534D44(v40, v64);
    v79 = 0;
    v76 = v34;

    REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
    v41 = v74;
    REMRemindersListDataView.FetchConfiguration.remindersPrefetch.getter();
    (*(v66 + 8))(v20, Configuration);
    v42 = v73;
    v43 = v67;
    v44 = v41;
    v45 = v39;
    (*(v73 + 16))(v67, v44, v39);
    v46 = (*(v42 + 88))(v43, v39);
    if (v46 == enum case for REMRemindersListDataView.RemindersPrefetch.initial(_:))
    {
      (*(v42 + 96))(v43, v39);
      sub_10053DB98(*v43, v81, a1, v69, 0);
      v47 = v42;
      v48 = v68;
      v49 = v74;
      v50 = v75;
      v51 = v62;
LABEL_12:
      (*(v47 + 8))(v49, v45);
      sub_1003FAEE8(v76, v51);
      REMRemindersListDataView.FlatModel.init(reminders:remindersCount:hasIncompleteOrCompletedReminders:prefetchedReminders:prefetchedDueReminders:)();
      (*(v38 + 16))(v71, v50, v48);
      v57 = v70;
      v58 = v64;
      v59 = v61;
      (*(v70 + 16))(v63, v64, v61);
      sub_1003FAF58(&qword_10093AF78, &type metadata accessor for REMRemindersListDataView.FlatModel);
      sub_1003FAF58(&unk_10093AF80, &type metadata accessor for REMRemindersListDataView.FlatModel);
      REMRemindersListDataView.DefaultInvocationResult.init(model:diff:)();
      (*(v38 + 8))(v75, v48);
      (*(v57 + 8))(v58, v59);
      sub_1000050A4(v76, &qword_100938A70, &qword_1007ACC60);
      return;
    }

    v52 = v69;
    if (v46 == enum case for REMRemindersListDataView.RemindersPrefetch.updatedInserted(_:))
    {
      (*(v42 + 96))(v43, v39);
      sub_10053E698(*v43, v64, v35, v52, 0);
      v47 = v42;
      v48 = v68;
    }

    else
    {
      if (v46 == enum case for REMRemindersListDataView.RemindersPrefetch.initialAndDateRange(_:))
      {
        (*(v42 + 96))(v43, v39);
        v47 = v42;
        v53 = *v43;
        v54 = sub_1000F5104(&qword_100938A78, &qword_1007AABE0);
        v55 = v65;
        sub_100226AD8(v43 + *(v54 + 48), v65);
        v56 = v81;
        sub_10053DB98(v53, v81, v35, v52, 0);
        sub_10053EBE4(v55, v56, v35, v52, 0);
        sub_1000050A4(v55, &qword_10094B8E0, &unk_1007AABD0);
        v48 = v68;
        v49 = v74;
        v51 = v62;
LABEL_11:
        v38 = v78;
        v50 = v75;
        goto LABEL_12;
      }

      if (v46 != enum case for REMRemindersListDataView.RemindersPrefetch.none(_:))
      {
        _diagnoseUnexpectedEnumCase<A>(type:)();
        __break(1u);
        return;
      }

      v48 = v68;
      v45 = v39;
      v47 = v73;
    }

    v49 = v74;
    v51 = v62;
    goto LABEL_11;
  }
}

void sub_1003FA464(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s10PredicatesOMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v10 = *(Configuration - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(Configuration);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
  v14 = REMRemindersListDataView.FetchConfiguration.countCompleted.getter();
  (*(v10 + 8))(v13, Configuration);
  if (v14)
  {
    v15 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
    v16 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
    (*(*(v16 - 8) + 104))(v8, v15, v16);
    swift_storeEnumTagMultiPayload();
    v17 = sub_100043AA8();
    sub_1001A4F3C(v8, _s10PredicatesOMa);
    sub_10053464C(a1, v17);
    if (!v2)
    {
      v18 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
      (*(*(v18 - 8) + 56))(a2, 0, 1, v18);
    }
  }

  else
  {
    v19 = type metadata accessor for REMRemindersListDataView.CountByCompleted();
    (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t sub_1003FA6D0()
{
  v0 = _s9UtilitiesO12SortingStyleOMa();
  sub_1000EECAC(v0, qword_100946350);
  v1 = sub_100006654(v0, qword_100946350);
  v2 = enum case for REMRemindersListDataView.SortingDirection.ascending(_:);
  v3 = type metadata accessor for REMRemindersListDataView.SortingDirection();
  (*(*(v3 - 8) + 104))(v1, v2, v3);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1003FA79C(uint64_t a1)
{
  result = sub_1003FAF58(&qword_100946388, &type metadata accessor for REMRemindersListDataView.ScheduledFlatInvocation);
  *(a1 + 8) = result;
  return result;
}

NSString sub_1003FA7F4(uint64_t a1, uint64_t a2)
{
  v69 = a1;
  v3 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  __chkstk_darwin(v3);
  v71 = v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v63 = v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = _s9UtilitiesO12SortingStyleOMa();
  v9 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v65 = v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = v57 - v12;
  v58 = _s10PredicatesOMa(0);
  v13 = *(*(v58 - 1) + 64);
  __chkstk_darwin(v58);
  v59 = v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Subtasks = type metadata accessor for REMRemindersListDataView.FetchSubtasks();
  v16 = *(Subtasks - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(Subtasks);
  v66 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v57 - v20;
  __chkstk_darwin(v22);
  v24 = v57 - v23;
  Configuration = type metadata accessor for REMRemindersListDataView.FetchConfiguration();
  v26 = *(Configuration - 8);
  v27 = *(v26 + 64);
  __chkstk_darwin(Configuration);
  v62 = v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v61 = v57 - v30;
  __chkstk_darwin(v31);
  v33 = v57 - v32;
  v67 = a2;
  REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
  REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
  v74 = *(v26 + 8);
  v74(v33, Configuration);
  (*(v16 + 104))(v21, enum case for REMRemindersListDataView.FetchSubtasks.on(_:), Subtasks);
  sub_1003FAF58(&qword_100940630, &type metadata accessor for REMRemindersListDataView.FetchSubtasks);
  LOBYTE(a2) = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v16 + 8);
  v34 = v16 + 8;
  v35(v21, Subtasks);
  v60 = v35;
  v35(v24, Subtasks);
  if (a2)
  {
    v36 = objc_opt_self();
    v37 = String._bridgeToObjectiveC()();
    [v36 internalErrorWithDebugDescription:v37];

    swift_willThrow();
  }

  else
  {
    v57[1] = v34;
    REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
    v38 = v59;
    REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
    v39 = v74;
    v74(v33, Configuration);
    swift_storeEnumTagMultiPayload();
    v58 = sub_100043AA8();
    sub_1001A4F3C(v38, _s10PredicatesOMa);
    REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
    v40 = v63;
    REMRemindersListDataView.FetchConfiguration.sortingStyle.getter();
    v39(v33, Configuration);
    v41 = v40;
    v42 = Configuration;
    if (qword_100936090 != -1)
    {
      swift_once();
    }

    v43 = sub_100006654(v64, qword_100946350);
    v44 = v65;
    sub_1001A4ED8(v43, v65);
    v45 = v68;
    sub_1005368D8(v41, v44, v68);
    v46 = v61;
    REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
    v47 = v71;
    REMRemindersListDataView.FetchConfiguration.showCompleted.getter();
    v48 = v74;
    v74(v46, v42);
    v49 = v62;
    REMRemindersListDataView.ScheduledFlatInvocation.Parameters.configuration.getter();
    v50 = v66;
    v37 = v49;
    REMRemindersListDataView.FetchConfiguration.fetchSubtasks.getter();
    v51 = v49;
    v52 = v45;
    v48(v51, v42);
    v53 = v70;
    v54 = v58;
    v55 = sub_100536D54(v69, v58, v52, v47, v50, _swiftEmptyArrayStorage, 0);
    if (!v53)
    {
      v37 = v55;
    }

    v60(v50, Subtasks);
    (*(v72 + 8))(v47, v73);
    sub_1001A4F3C(v52, _s9UtilitiesO12SortingStyleOMa);
  }

  return v37;
}

uint64_t sub_1003FAEE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_100938A70, &qword_1007ACC60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003FAF58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003FB040(void *a1)
{
  v3 = v1;
  v5 = _s10PredicatesOMa_1();
  v6 = *(*(v5 - 8) + 64);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = (&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54[0] = 0;
  v10 = [v3 remObjectIDWithError:{v54, v7}];
  v11 = v54[0];
  if (!v10)
  {
    v38 = v54[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return v38;
  }

  *v9 = v10;
  swift_storeEnumTagMultiPayload();
  v12 = v11;
  v13 = sub_10001F6F4();
  sub_100025374(v9, _s10PredicatesOMa_1);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1007953F0;
  *(v14 + 32) = v3;
  v54[0] = v14;
  v15 = v3;
  sub_1000F5104(&qword_10093F5C0, &qword_1007A1FB0);
  sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
  sub_10000CB90(&qword_100946C40, &qword_10093F5C0, &qword_1007A1FB0);
  sub_1000254F4();
  v16 = Sequence.compactMapToSet<A>(_:)();
  v46 = v2;
  sub_10002595C(v16);

  v17 = sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v18 = [objc_allocWithZone(NSFetchRequest) init];
  v47 = v17;
  v19 = [swift_getObjCClassFromMetadata() entity];
  [v18 setEntity:v19];

  isa = Array._bridgeToObjectiveC()().super.isa;
  [v18 setAffectedStores:isa];

  v48 = v13;
  [v18 setPredicate:v13];

  if (qword_100936520 != -1)
  {
LABEL_27:
    swift_once();
  }

  sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
  v21 = Array._bridgeToObjectiveC()().super.isa;
  [v18 setSortDescriptors:v21];

  if (qword_100936528 != -1)
  {
    swift_once();
  }

  v22 = qword_100975238;
  v49 = a1;
  if (qword_100975238 >> 62)
  {
    v41 = qword_100975238;
    v42 = _CocoaArrayWrapper.endIndex.getter();
    v22 = v41;
    v23 = v42;
  }

  else
  {
    v23 = *((qword_100975238 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v23)
  {
LABEL_20:
    v36 = Array._bridgeToObjectiveC()().super.isa;

    [v18 setRelationshipKeyPathsForPrefetching:v36];

    v37 = v46;
    v38 = v49;
    v39 = NSManagedObjectContext.fetch<A>(_:)();
    if (!v37)
    {
      v54[0] = v39;
      sub_1000F5104(&qword_10093F6F0, qword_10079A300);
      sub_10000CB90(&qword_100945210, &qword_10093F6F0, qword_10079A300);
      v38 = Sequence.elements<A>(ofType:)();
    }

    return v38;
  }

  v24 = v22;
  v55 = _swiftEmptyArrayStorage;
  sub_100026EF4(0, v23 & ~(v23 >> 63), 0);
  if (v23 < 0)
  {
    __break(1u);
  }

  v45 = v18;
  v25 = 0;
  a1 = v55;
  v26 = v24;
  v51 = v24;
  v52 = v24 & 0xC000000000000001;
  v50 = v24 & 0xFFFFFFFFFFFFFF8;
  v18 = v23;
  while (1)
  {
    v27 = (v25 + 1);
    if (__OFADD__(v25, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v52)
    {
      v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v25 >= *(v50 + 16))
      {
        goto LABEL_26;
      }

      v28 = *(v26 + 8 * v25 + 32);
    }

    v29 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v30)
    {
      break;
    }

    v31 = v29;
    v32 = v30;

    v55 = a1;
    v34 = a1[2];
    v33 = a1[3];
    if (v34 >= v33 >> 1)
    {
      sub_100026EF4((v33 > 1), v34 + 1, 1);
      a1 = v55;
    }

    a1[2] = v34 + 1;
    v35 = &a1[2 * v34];
    v35[4] = v31;
    v35[5] = v32;
    ++v25;
    v26 = v51;
    if (v27 == v18)
    {
      v18 = v45;
      goto LABEL_20;
    }
  }

  v54[0] = 0;
  v54[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  v43._object = 0x80000001007EC120;
  v43._countAndFlagsBits = 0xD00000000000002CLL;
  String.append(_:)(v43);
  v53 = v28;
  sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003FB6B0()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_100946390);
  v1 = sub_100006654(v0, qword_100946390);
  if (qword_1009364D8 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_1009751D0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1003FB790(id *a1, void **a2)
{
  v2 = *a2;
  v3 = *a1;
  v4 = sub_1003FC504(v3);
  v5 = v2;
  v6 = sub_1003FC504(v5);
  if (v4 >= v6)
  {
    if (v6 < v4)
    {
      v7 = 0;
      return v7 & 1;
    }

    v8 = [v3 name];
    if (v8)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }

    v13 = [v5 name];
    if (v13)
    {
      v14 = v13;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v10 != v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v17 = 0xE000000000000000;
      if (v10)
      {
        goto LABEL_14;
      }
    }

    if (v12 == v17)
    {
      v7 = 0;
LABEL_15:

      return v7 & 1;
    }

LABEL_14:
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_15;
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t sub_1003FB8D4()
{
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007A7B10;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 40) = swift_getKeyPath();
  *(v0 + 48) = swift_getKeyPath();
  *(v0 + 56) = swift_getKeyPath();
  *(v0 + 64) = swift_getKeyPath();
  *(v0 + 72) = swift_getKeyPath();
  *(v0 + 80) = swift_getKeyPath();
  *(v0 + 88) = swift_getKeyPath();
  *(v0 + 96) = swift_getKeyPath();
  *(v0 + 104) = swift_getKeyPath();
  *(v0 + 112) = swift_getKeyPath();
  *(v0 + 120) = swift_getKeyPath();
  *(v0 + 128) = swift_getKeyPath();
  *(v0 + 136) = swift_getKeyPath();
  *(v0 + 144) = swift_getKeyPath();
  *(v0 + 152) = swift_getKeyPath();
  *(v0 + 160) = swift_getKeyPath();
  *(v0 + 168) = swift_getKeyPath();
  *(v0 + 176) = swift_getKeyPath();
  *(v0 + 184) = swift_getKeyPath();
  *(v0 + 192) = swift_getKeyPath();
  *(v0 + 200) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 208) = result;
  qword_100974E38 = v0;
  return result;
}

uint64_t sub_1003FBA98()
{
  if (qword_100936098 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006654(v0, qword_100946390);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Unexpected .localInternal in AccountsListDataView", v3, 2u);
  }

  return 3;
}

unint64_t sub_1003FBB74@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7remindd27RDSynchronizedKeyValueStoreC11ChangeEventV6ReasonO05ubkvsfhC0AGSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

id sub_1003FBBA0@<X0>(id *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 remObjectID];
  if (v6)
  {

    *a3 = v5;
    return v5;
  }

  else
  {
    v8 = 7104878;
    if (a2 && (v9 = [a2 remObjectID]) != 0)
    {
      v10 = v9;
      v11 = [v9 description];

      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
    }

    v14 = objc_opt_self();
    _StringGuts.grow(_:)(106);
    v15._object = 0x80000001007F8030;
    v15._countAndFlagsBits = 0xD00000000000005DLL;
    String.append(_:)(v15);
    v16._countAndFlagsBits = v8;
    v16._object = v13;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 0x203A44496F4D202CLL;
    v17._object = 0xE800000000000000;
    String.append(_:)(v17);
    v18 = [v5 objectID];
    v19 = [v18 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 125;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v25 = String._bridgeToObjectiveC()();

    [v14 internalErrorWithDebugDescription:v25];

    return swift_willThrow();
  }
}

void sub_1003FBDA8(char a1@<W0>, char a2@<W1>, void *a3@<X8>)
{
  v52 = a3;
  v5 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v49 - v7;
  v9 = type metadata accessor for UUID();
  v53 = *(v9 - 8);
  v10 = *(v53 + 64);
  v11 = __chkstk_darwin(v9);
  v51 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v56 = v49 - v13;
  sub_1000060C8(0, &qword_1009399F0, off_1008D4120);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [ObjCClassFromMetadata cdEntityName];
  if (!v14)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = String._bridgeToObjectiveC()();
  }

  v15 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v14];

  v16 = sub_10000F8A4(a2 & 1, 0, a1 + 3);
  [v15 setPredicate:v16];
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100791300;
  *(v17 + 56) = &type metadata for String;
  *(v17 + 32) = 0x696669746E656469;
  *(v17 + 40) = 0xEA00000000007265;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v15 setPropertiesToFetch:isa];

  [v15 setResultType:2];
  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v19 = v61;
  v20 = NSManagedObjectContext.fetch<A>(_:)();
  if (v19)
  {

    return;
  }

  v21 = v20;
  if (v20 >> 62)
  {
    goto LABEL_36;
  }

  v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:
  v49[1] = 0;
  v50 = v15;
  v61 = v16;
  if (v22)
  {
    v23 = 0;
    v58 = v21 & 0xFFFFFFFFFFFFFF8;
    v59 = (v21 & 0xC000000000000001);
    v24 = (v53 + 56);
    v54 = (v53 + 32);
    v55 = (v53 + 48);
    v60 = _swiftEmptyArrayStorage;
    v57 = v22;
    while (1)
    {
      if (v59)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v58 + 16))
        {
          goto LABEL_35;
        }

        v26 = *(v21 + 8 * v23 + 32);
      }

      v27 = v26;
      v16 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        v22 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_7;
      }

      v28 = v21;
      *&v62 = 0x696669746E656469;
      *(&v62 + 1) = 0xEA00000000007265;
      v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      v29 = [v27 __swift_objectForKeyedSubscript:v15];
      swift_unknownObjectRelease();
      if (v29)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {

        v62 = 0u;
        v63 = 0u;
      }

      v64[0] = v62;
      v64[1] = v63;
      v21 = v28;
      if (*(&v63 + 1))
      {
        v30 = swift_dynamicCast();
        (*v24)(v8, v30 ^ 1u, 1, v9);
        if ((*v55)(v8, 1, v9) != 1)
        {
          v15 = *v54;
          (*v54)(v56, v8, v9);
          v31 = v60;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_100366328(0, v31[2] + 1, 1, v31);
          }

          v32 = v31;
          v33 = v31[2];
          v60 = v32;
          v34 = v32[3];
          if (v33 >= v34 >> 1)
          {
            v60 = sub_100366328(v34 > 1, v33 + 1, 1, v60);
          }

          v35 = v60;
          v60[2] = v33 + 1;
          (v15)(v35 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v33, v56, v9);
          goto LABEL_11;
        }
      }

      else
      {
        sub_1000050A4(v64, &qword_100939ED0, &qword_100791B10);
        (*v24)(v8, 1, 1, v9);
      }

      sub_1000050A4(v8, &unk_100939D90, "8\n\r");
LABEL_11:
      ++v23;
      v25 = v16 == v57;
      v16 = v61;
      if (v25)
      {
        goto LABEL_28;
      }
    }
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_28:

  v36 = v60;
  v37 = v60[2];
  if (v37)
  {
    *&v64[0] = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v39 = v53 + 16;
    v38 = *(v53 + 16);
    v40 = v36 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
    v58 = *(v53 + 72);
    v59 = v38;
    v41 = v51;
    v42 = (v53 + 8);
    do
    {
      v59(v41, v40, v9);
      v43 = UUID._bridgeToObjectiveC()().super.isa;
      v44 = [ObjCClassFromMetadata objectIDWithUUID:v43];

      (*v42)(v41, v9);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v45 = v9;
      v46 = v39;
      v47 = *(*&v64[0] + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v39 = v46;
      v9 = v45;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v40 += v58;
      --v37;
    }

    while (v37);

    v48 = *&v64[0];
  }

  else
  {

    v48 = _swiftEmptyArrayStorage;
  }

  *v52 = v48;
}

uint64_t sub_1003FC4C0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u || a3 == 6)
  {
  }

  return result;
}

uint64_t sub_1003FC504(void *a1)
{
  v2 = [a1 accountTypeHost];
  REMAccountTypeHost.switchByAccountType<A>(primaryCloudKitBlock:nonPrimaryCloudKitBlock:calDavBlock:exchangeBlock:localBlock:localInternalBlock:anyCloudKitBlock:anyCloudAccountBlock:)();

  if (v4 == 4)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1003FC7C4()
{
  result = qword_1009463B0;
  if (!qword_1009463B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009463B0);
  }

  return result;
}

uint64_t sub_1003FC818(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    KeyPath = swift_getKeyPath();

    sub_1003EE9EC(KeyPath, a1, a2, 6);
  }

  else
  {
    v5 = swift_getKeyPath();
    sub_1003EE9C0(v5);
  }

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    v7 = _swiftEmptyArrayStorage[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  sub_10001035C(0);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (_swiftEmptyArrayStorage[2] >= _swiftEmptyArrayStorage[3] >> 1)
  {
    v8 = _swiftEmptyArrayStorage[2];
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return sub_10000C2B0(_swiftEmptyArrayStorage);
}

uint64_t sub_1003FC96C(void *a1)
{
  v2 = v1;
  v3 = sub_10029C950(a1, 0x40u);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100940370, off_1008D4150);
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  [v4 setResultType:2];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  v22 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 1, 0);
  v7 = _swiftEmptyArrayStorage;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_13;
    }

    v8 = *(inited + 32);
  }

  v9 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v10)
  {
LABEL_13:
    _StringGuts.grow(_:)(46);
    v19._object = 0x80000001007EC120;
    v19._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v19);
    sub_1000F5104(&qword_1009464E0, &unk_1007A3960);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v11 = v9;
  v12 = v10;
  v21 = &type metadata for String;

  *&v20 = v11;
  *(&v20 + 1) = v12;
  v14 = _swiftEmptyArrayStorage[2];
  v13 = _swiftEmptyArrayStorage[3];
  if (v14 >= v13 >> 1)
  {
    sub_100010D04((v13 > 1), v14 + 1, 1);
    v7 = v22;
  }

  v7[2] = v14 + 1;
  sub_100005EE0(&v20, &v7[4 * v14 + 4]);
  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v17 = NSManagedObjectContext.fetch<A>(_:)();
  if (v1)
  {
  }

  else
  {
    v2 = sub_1003FCCDC(v17);
  }

  return v2;
}

void *sub_1003FCCDC(unint64_t a1)
{
  v2 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - v5;
  v41 = _swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_30:
    v30 = v4;
    v7 = _CocoaArrayWrapper.endIndex.getter();
    v4 = v30;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_3:
      v32 = v4;
      v8 = 0;
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
      v37 = a1 & 0xC000000000000001;
      v35 = &unk_1007A8290;
      v9 = _swiftEmptyDictionarySingleton;
      v33 = xmmword_1007953F0;
      while (1)
      {
        if (v37)
        {
          v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v8 >= *(v36 + 16))
          {
            goto LABEL_27;
          }

          v4 = *(a1 + 8 * v8 + 32);
        }

        v11 = v4;
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v13 = String._bridgeToObjectiveC()();
        v14 = [v11 valueForKey:{v13, v32}];

        if (v14)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v38 = 0u;
          v39 = 0u;
        }

        v40[0] = v38;
        v40[1] = v39;
        if (*(&v39 + 1))
        {
          v15 = type metadata accessor for UUID();
          v16 = swift_dynamicCast();
          (*(*(v15 - 8) + 56))(v6, v16 ^ 1u, 1, v15);
        }

        else
        {
          sub_1000050A4(v40, &qword_100939ED0, &qword_100791B10);
          v17 = type metadata accessor for UUID();
          (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
        }

        v19 = sub_1003645D8(v6);
        v20 = v9[2];
        v21 = (v18 & 1) == 0;
        v4 = (v20 + v21);
        if (__OFADD__(v20, v21))
        {
          goto LABEL_28;
        }

        v22 = v18;
        if (v9[3] < v4)
        {
          sub_10036E0B0(v4, 1);
          v9 = v41;
          v23 = sub_1003645D8(v6);
          if ((v22 & 1) != (v24 & 1))
          {
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v19 = v23;
        }

        if (v22)
        {
          sub_1000050A4(v6, &unk_100939D90, "8\n\r");
          v10 = (v9[7] + 8 * v19);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v29 = *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v4 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          sub_1000F5104(&unk_100939D60, &unk_1007959E0);
          v25 = swift_allocObject();
          *(v25 + 16) = v33;
          *(v25 + 32) = v11;
          v9[(v19 >> 6) + 8] |= 1 << v19;
          v4 = sub_100100FB4(v6, v9[6] + *(v34 + 72) * v19);
          *(v9[7] + 8 * v19) = v25;
          v26 = v9[2];
          v27 = __OFADD__(v26, 1);
          v28 = v26 + 1;
          if (v27)
          {
            goto LABEL_29;
          }

          v9[2] = v28;
        }

        ++v8;
        if (v12 == v7)
        {
          return v9;
        }
      }
    }
  }

  return _swiftEmptyDictionarySingleton;
}

uint64_t sub_1003FD108(void *a1)
{
  v3 = sub_10029B198(a1, 0x20u);
  v4 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v5 = [swift_getObjCClassFromMetadata() entity];
  [v4 setEntity:v5];

  [v4 setAffectedStores:0];
  [v4 setPredicate:v3];
  [v4 setResultType:2];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100799D70;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  v46 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 3, 0);
  v7 = _swiftEmptyArrayStorage;
  v8 = inited & 0xC000000000000001;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v9 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_32;
    }

    v10 = *(inited + 32);
  }

  v11 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v12)
  {
    goto LABEL_35;
  }

  v13 = v11;
  v14 = v12;
  v45 = &type metadata for String;

  *&v44 = v13;
  *(&v44 + 1) = v14;
  v2 = _swiftEmptyArrayStorage[2];
  v9 = _swiftEmptyArrayStorage[3];
  v1 = v2 + 1;
  if (v2 >= v9 >> 1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v7[2] = v1;
    sub_100005EE0(&v44, &v7[4 * v2 + 4]);
    if (v8)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v9 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v9 < 2)
      {
        goto LABEL_32;
      }

      v15 = *(inited + 40);
    }

    v16 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v17)
    {
      goto LABEL_35;
    }

    v18 = v16;
    v19 = v17;
    v45 = &type metadata for String;

    *&v44 = v18;
    *(&v44 + 1) = v19;
    v46 = v7;
    v2 = v7[2];
    v20 = v7[3];
    v1 = v2 + 1;
    if (v2 >= v20 >> 1)
    {
      sub_100010D04((v20 > 1), v2 + 1, 1);
      v7 = v46;
    }

    v7[2] = v1;
    sub_100005EE0(&v44, &v7[4 * v2 + 4]);
    if (v8)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_18;
    }

    v9 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= 3)
    {
      break;
    }

LABEL_32:
    __break(1u);
LABEL_33:
    sub_100010D04((v9 > 1), v1, 1);
    v7 = v46;
  }

  v21 = *(inited + 48);

LABEL_18:
  v22 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v23)
  {
    goto LABEL_35;
  }

  v24 = v22;
  v25 = v23;
  v45 = &type metadata for String;

  *&v44 = v24;
  *(&v44 + 1) = v25;
  v46 = v7;
  v27 = v7[2];
  v26 = v7[3];
  if (v27 >= v26 >> 1)
  {
    sub_100010D04((v26 > 1), v27 + 1, 1);
    v7 = v46;
  }

  v7[2] = v27 + 1;
  sub_100005EE0(&v44, &v7[4 * v27 + 4]);
  swift_setDeallocating();
  v28 = *(inited + 16);
  swift_arrayDestroy();
  v29 = swift_initStackObject();
  *(v29 + 16) = xmmword_1007953F0;
  *(v29 + 32) = swift_getKeyPath();
  sub_100010D04(0, 1, 0);
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_25;
  }

  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_35:
    _StringGuts.grow(_:)(46);
    v41._object = 0x80000001007EC120;
    v41._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v41);
    sub_1000F5104(&unk_100942FF0, &unk_1007A3A70);
    _print_unlocked<A, B>(_:_:)();
LABEL_37:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v30 = *(v29 + 32);

LABEL_25:
  v31 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v32)
  {
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v42._object = 0x80000001007EC120;
    v42._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v42);
    v46 = v30;
    sub_1000F5104(&qword_1009464E0, &unk_1007A3960);
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_37;
  }

  v33 = v31;
  v34 = v32;
  v45 = &type metadata for String;

  *&v44 = v33;
  *(&v44 + 1) = v34;
  v36 = _swiftEmptyArrayStorage[2];
  v35 = _swiftEmptyArrayStorage[3];
  if (v36 >= v35 >> 1)
  {
    sub_100010D04((v35 > 1), v36 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v36 + 1;
  sub_100005EE0(&v44, &_swiftEmptyArrayStorage[4 * v36 + 4]);
  swift_setDeallocating();
  v37 = *(v29 + 16);
  swift_arrayDestroy();
  *&v44 = v7;
  sub_100271468(_swiftEmptyArrayStorage);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v4 setPropertiesToFetch:isa];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v39 = NSManagedObjectContext.fetch<A>(_:)();
  if (v43)
  {
  }

  else
  {
    v7 = sub_1003FCCDC(v39);
  }

  return v7;
}

void *sub_1003FD798()
{
  v1 = sub_10029B198(4, 0xA0u);
  v2 = [objc_allocWithZone(NSFetchRequest) init];
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v3 = [swift_getObjCClassFromMetadata() entity];
  [v2 setEntity:v3];

  [v2 setAffectedStores:0];
  [v2 setPredicate:v1];
  v55 = v2;
  [v2 setResultType:2];

  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007A81F0;
  *(inited + 32) = swift_getKeyPath();
  *&v54 = inited + 32;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = swift_getKeyPath();
  *(inited + 56) = swift_getKeyPath();
  sub_100010D04(0, 4, 0);
  v5 = 0;
  v6 = inited & 0xC000000000000001;
  do
  {
    if (v6)
    {
      v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v7 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5 >= v7)
      {
        __break(1u);
        goto LABEL_42;
      }

      v0 = *(inited + 8 * v5 + 32);
    }

    v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
    if (!v9)
    {
      goto LABEL_45;
    }

    v10 = v8;
    v11 = v9;
    v57 = &type metadata for String;

    *&v56 = v10;
    *(&v56 + 1) = v11;
    v0 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    v3 = (v0 + 1);
    if (v0 >= v12 >> 1)
    {
      sub_100010D04((v12 > 1), v0 + 1, 1);
    }

    ++v5;
    _swiftEmptyArrayStorage[2] = v3;
    sub_100005EE0(&v56, &_swiftEmptyArrayStorage[4 * v0 + 4]);
  }

  while (v5 != 4);
  swift_setDeallocating();
  v13 = *(inited + 16);
  swift_arrayDestroy();
  inited = swift_initStackObject();
  v54 = xmmword_100796900;
  *(inited + 16) = xmmword_100796900;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = swift_getKeyPath();
  v58 = _swiftEmptyArrayStorage;
  sub_100010D04(0, 2, 0);
  v14 = v58;
  v6 = inited & 0xC000000000000001;
  v52 = inited & 0xFFFFFFFFFFFFFF8;
  if ((inited & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_14;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v15 = *(inited + 32);

LABEL_14:
  v16 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v17)
  {
    goto LABEL_48;
  }

  v18 = v16;
  v19 = v17;
  v57 = &type metadata for String;

  *&v56 = v18;
  *(&v56 + 1) = v19;
  v0 = *(v14 + 16);
  v7 = *(v14 + 24);
  v3 = (v0 + 1);
  if (v0 >= v7 >> 1)
  {
LABEL_42:
    sub_100010D04((v7 > 1), v3, 1);
    v14 = v58;
  }

  *(v14 + 16) = v3;
  sub_100005EE0(&v56, (v14 + 32 * v0 + 32));
  if (v6)
  {
    v0 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_20;
  }

  if (*(v52 + 16) < 2uLL)
  {
    goto LABEL_43;
  }

  v0 = *(inited + 40);

LABEL_20:
  v20 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v21)
  {
    goto LABEL_48;
  }

  v22 = v20;
  v23 = v21;
  v57 = &type metadata for String;

  *&v56 = v22;
  *(&v56 + 1) = v23;
  v58 = v14;
  v25 = *(v14 + 16);
  v24 = *(v14 + 24);
  if (v25 >= v24 >> 1)
  {
    sub_100010D04((v24 > 1), v25 + 1, 1);
    v14 = v58;
  }

  *(v14 + 16) = v25 + 1;
  sub_100005EE0(&v56, (v14 + 32 * v25 + 32));
  swift_setDeallocating();
  v26 = *(inited + 16);
  swift_arrayDestroy();
  *&v56 = _swiftEmptyArrayStorage;
  sub_100271468(v14);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v55 setPropertiesToFetch:isa];

  v28 = swift_initStackObject();
  *(v28 + 16) = v54;
  *(v28 + 32) = swift_getKeyPath();
  *(v28 + 40) = swift_getKeyPath();
  sub_100026EF4(0, 2, 0);
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_27;
  }

  if (!*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_44;
  }

  v29 = *(v28 + 32);

LABEL_27:
  v30 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v31)
  {
LABEL_49:
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v51._object = 0x80000001007EC120;
    v51._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v51);
    v58 = v29;
    v48 = &qword_1009464E0;
    v49 = &unk_1007A3960;
    goto LABEL_46;
  }

  v0 = v30;
  v32 = v31;

  v34 = _swiftEmptyArrayStorage[2];
  v33 = _swiftEmptyArrayStorage[3];
  if (v34 >= v33 >> 1)
  {
    sub_100026EF4((v33 > 1), v34 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v34 + 1;
  v35 = &_swiftEmptyArrayStorage[2 * v34];
  v35[4] = v0;
  v35[5] = v32;
  if ((v28 & 0xC000000000000001) != 0)
  {
    v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_34;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v47._object = 0x80000001007EC120;
    v47._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v47);
    v58 = v0;
    v48 = &unk_100942FF0;
    v49 = &unk_1007A3A70;
LABEL_46:
    sub_1000F5104(v48, v49);
    _print_unlocked<A, B>(_:_:)();
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_48:
      _StringGuts.grow(_:)(46);
      v50._object = 0x80000001007EC120;
      v50._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v50);
      sub_1000F5104(&qword_1009464E0, &unk_1007A3960);
      _print_unlocked<A, B>(_:_:)();
    }
  }

  v29 = *(v28 + 40);

LABEL_34:
  v36 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (!v37)
  {
    goto LABEL_49;
  }

  v38 = v36;
  v39 = v37;

  v41 = _swiftEmptyArrayStorage[2];
  v40 = _swiftEmptyArrayStorage[3];
  if (v41 >= v40 >> 1)
  {
    sub_100026EF4((v40 > 1), v41 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v41 + 1;
  v42 = &_swiftEmptyArrayStorage[2 * v41];
  v42[4] = v38;
  v42[5] = v39;
  swift_setDeallocating();
  v43 = *(v28 + 16);
  swift_arrayDestroy();
  v44 = Array._bridgeToObjectiveC()().super.isa;

  [v55 setRelationshipKeyPathsForPrefetching:v44];

  sub_1000060C8(0, &qword_100939F50, NSDictionary_ptr);
  v45 = NSManagedObjectContext.fetch<A>(_:)();
  if (v53)
  {
  }

  else
  {
    v38 = sub_1003FCCDC(v45);
  }

  return v38;
}

void *sub_1003FE084(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v42 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v6)
  {
    v49 = _swiftEmptyArrayStorage;
    sub_100010D04(0, v6 & ~(v6 >> 63), 0);
    v43 = _swiftEmptyArrayStorage;
    if (v42)
    {
      v8 = __CocoaSet.startIndex.getter();
    }

    else
    {
      v10 = -1 << *(v5 + 32);
      v8 = _HashTable.startBucket.getter();
      v9 = *(v5 + 36);
    }

    v46 = v8;
    v47 = v9;
    v48 = v42 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v37 = v5 + 56;
      v36 = v5 + 64;
      while (v11 < v6)
      {
        if (__OFADD__(v11++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = v5;
        sub_100018710(v46, v47, v48, v5, a2, a3);
        v18 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v19)
        {
          goto LABEL_44;
        }

        v20 = v18;
        v21 = v19;
        v45 = &type metadata for String;

        *&v44 = v20;
        *(&v44 + 1) = v21;
        v22 = v43;
        v49 = v43;
        v24 = v43[2];
        v23 = v43[3];
        if (v24 >= v23 >> 1)
        {
          sub_100010D04((v23 > 1), v24 + 1, 1);
          v22 = v49;
        }

        v22[2] = v24 + 1;
        v43 = v22;
        sub_100005EE0(&v44, &v22[4 * v24 + 4]);
        if (v42)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          v5 = v17;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          sub_1000F5104(a4, a5);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          v12(&v44, 0);
          if (v11 == v6)
          {
LABEL_34:
            sub_100010E34(v46, v47, v48);
            return v43;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v5 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                sub_100010E34(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_32;
              }
            }

            sub_100010E34(v14, v15, 0);
LABEL_32:
            v5 = v17;
          }

          v34 = *(v5 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          if (v11 == v6)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    *&v44 = 0;
    *(&v44 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v35._object = 0x80000001007EC120;
    v35._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v35);
    sub_1000F5104(a2, a3);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003FE534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0AA0;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FEA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 1;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412CA4;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F1130;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      sub_100412CB4(v47);

      return v35;
    }

    v35 = v47;
    if (v47 != 1)
    {

      sub_100412CB4(v47);

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FEFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v44 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v44;
    if (v19)
    {
      v43 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v42 = a3;
        v24 = 0;
        v46 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v46)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v42;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v44;
      [v44 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v43;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v48;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v51;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412C30;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F10B8;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v51)
    {
      swift_willThrow();
      swift_errorRetain();

      sub_100412C60(v48, v49, v50);

      return isEscapingClosureAtFileLocation;
    }

    if (v49)
    {
      v40 = v50;
      isEscapingClosureAtFileLocation = v48;

      v40;

      sub_100412C60(v48, v49, v50);

      return isEscapingClosureAtFileLocation;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FF564(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F1040;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1003FFAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0FC8;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10040001C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0F50;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100400578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0938;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100400AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0CF8;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100401030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F1298;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10040158C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F1220;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100401AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F11A8;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

void sub_100402044(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v44 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v48 = 0;
  sub_1000063E8();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v6 newBackgroundContextWithAuthor:v14];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v16 = [objc_opt_self() localInternalAccountID];
    v43 = v15;
    v17 = v16;
    v18 = [v16 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v10 + 8))(v13, v9);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v6 storeForAccountIdentifier:v19];

    v15 = v43;
    if (v20)
    {
      v42 = a3;
      v21 = [v6 persistentStoreCoordinator];
      v22 = [v21 persistentStores];

      v23 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v24 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v41[1] = v5;
        v25 = 0;
        v46 = v24 & 0xC000000000000001;
        v26 = v24 & 0xFFFFFFFFFFFFFF8;
        v5 = i;
        while (1)
        {
          if (v46)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= *(v26 + 16))
            {
              goto LABEL_17;
            }

            v31 = *(v24 + 8 * v25 + 32);
          }

          v32 = v31;
          v33 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v27 = v24;
            v28 = v23;
            v29 = v20;
            v30 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v20 = v29;
            v23 = v28;
            v24 = v27;
            v5 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v25;
          if (v33 == v5)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v15 = v43;
      [v43 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a3 = v42;
    }
  }

  v35 = swift_allocObject();
  v35[2] = &v49;
  v35[3] = v44;
  v35[4] = a3;
  v35[5] = v15;
  v35[6] = &v48;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_100412D40;
  *(v36 + 24) = v35;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0E60;
  v37 = _Block_copy(aBlock);
  v38 = v15;

  [v38 performBlockAndWait:v37];
  _Block_release(v37);
  LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
    __break(1u);
  }

  else
  {
    if (v48)
    {
      swift_willThrow();
      swift_errorRetain();

      v39 = v49;

      return;
    }

    if (v49)
    {
      v49;

      v40 = v49;

      return;
    }
  }

  __break(1u);
}

uint64_t sub_10040259C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0B90;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100402AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0B18;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100403054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_100008D30;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F08C0;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1004035B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412D3C;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F09B0;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100403B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 2;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v42 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v14 = [objc_opt_self() localInternalAccountID];
    v15 = [v14 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v16 = String._bridgeToObjectiveC()();

    v17 = [v4 storeForAccountIdentifier:v16];

    if (v17)
    {
      v41 = a2;
      v18 = [v4 persistentStoreCoordinator];
      v19 = [v18 persistentStores];

      v20 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v21 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v22 = 0;
        v44 = v21 & 0xC000000000000001;
        v23 = v21 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v22 >= *(v23 + 16))
            {
              goto LABEL_17;
            }

            v28 = *(v21 + 8 * v22 + 32);
          }

          v29 = v28;
          v30 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v24 = v21;
            v25 = v20;
            v26 = v17;
            v27 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v17 = v26;
            v20 = v25;
            v21 = v24;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v22;
          if (v30 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v32 = swift_allocObject();
  v32[2] = &v47;
  v32[3] = a2;
  v33 = v42;
  v32[4] = a3;
  v32[5] = v33;
  v32[6] = &v46;
  v34 = swift_allocObject();
  *(v34 + 16) = sub_100412BB8;
  *(v34 + 24) = v32;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0C08;
  v35 = _Block_copy(aBlock);
  v36 = v33;

  [v36 performBlockAndWait:v35];
  _Block_release(v35);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return isEscapingClosureAtFileLocation & 1;
    }

    isEscapingClosureAtFileLocation = v47;
    if (v47 != 2)
    {

      return isEscapingClosureAtFileLocation & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100404048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = 0;
  v46 = 0;
  sub_1000063E8();
  v13 = String._bridgeToObjectiveC()();

  v14 = [v4 newBackgroundContextWithAuthor:v13];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v15 = [objc_opt_self() localInternalAccountID];
    v42 = v14;
    v16 = v15;
    v17 = [v15 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v9 + 8))(v12, v8);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v4 storeForAccountIdentifier:v18];

    v14 = v42;
    if (v19)
    {
      v41 = a2;
      v20 = [v4 persistentStoreCoordinator];
      v21 = [v20 persistentStores];

      v22 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v23 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v40 = a3;
        v24 = 0;
        v44 = v23 & 0xC000000000000001;
        v25 = v23 & 0xFFFFFFFFFFFFFF8;
        a3 = i;
        while (1)
        {
          if (v44)
          {
            v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v24 >= *(v25 + 16))
            {
              goto LABEL_17;
            }

            v30 = *(v23 + 8 * v24 + 32);
          }

          v31 = v30;
          v32 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v26 = v23;
            v27 = v22;
            v28 = v19;
            v29 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v19 = v28;
            v22 = v27;
            v23 = v26;
            a3 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v24;
          if (v32 == a3)
          {
            a3 = v40;
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = v42;
      [v42 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a2 = v41;
    }
  }

  v34 = swift_allocObject();
  v34[2] = &v47;
  v34[3] = a2;
  v34[4] = a3;
  v34[5] = v14;
  v34[6] = &v46;
  v35 = swift_allocObject();
  *(v35 + 16) = sub_100412BE8;
  *(v35 + 24) = v34;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v35;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0D70;
  v36 = _Block_copy(aBlock);
  v37 = v14;

  [v37 performBlockAndWait:v36];
  _Block_release(v36);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    if (v46)
    {
      swift_willThrow();
      swift_errorRetain();

      return v35;
    }

    v35 = v47;
    if (v47)
    {

      return v35;
    }
  }

  __break(1u);
  return result;
}

void sub_1004045A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v44 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v48 = 0;
  sub_1000063E8();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v6 newBackgroundContextWithAuthor:v14];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v16 = [objc_opt_self() localInternalAccountID];
    v43 = v15;
    v17 = v16;
    v18 = [v16 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v10 + 8))(v13, v9);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v6 storeForAccountIdentifier:v19];

    v15 = v43;
    if (v20)
    {
      v42 = a3;
      v21 = [v6 persistentStoreCoordinator];
      v22 = [v21 persistentStores];

      v23 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v24 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v41[1] = v5;
        v25 = 0;
        v46 = v24 & 0xC000000000000001;
        v26 = v24 & 0xFFFFFFFFFFFFFF8;
        v5 = i;
        while (1)
        {
          if (v46)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= *(v26 + 16))
            {
              goto LABEL_17;
            }

            v31 = *(v24 + 8 * v25 + 32);
          }

          v32 = v31;
          v33 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v27 = v24;
            v28 = v23;
            v29 = v20;
            v30 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v20 = v29;
            v23 = v28;
            v24 = v27;
            v5 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v25;
          if (v33 == v5)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v15 = v43;
      [v43 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a3 = v42;
    }
  }

  v35 = swift_allocObject();
  v35[2] = &v49;
  v35[3] = v44;
  v35[4] = a3;
  v35[5] = v15;
  v35[6] = &v48;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_100412C18;
  *(v36 + 24) = v35;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0ED8;
  v37 = _Block_copy(aBlock);
  v38 = v15;

  [v38 performBlockAndWait:v37];
  _Block_release(v37);
  LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
    __break(1u);
  }

  else
  {
    if (v48)
    {
      swift_willThrow();
      swift_errorRetain();

      v39 = v49;

      return;
    }

    if (v49)
    {
      v49;

      v40 = v49;

      return;
    }
  }

  __break(1u);
}

void sub_100404AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v44 = a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v48 = 0;
  sub_1000063E8();
  v14 = String._bridgeToObjectiveC()();

  v15 = [v6 newBackgroundContextWithAuthor:v14];

  if (((*(a1 + 40) | (*(a1 + 44) << 32)) & 0xC00000000002) == 0x800000000000)
  {
    v16 = [objc_opt_self() localInternalAccountID];
    v43 = v15;
    v17 = v16;
    v18 = [v16 uuid];

    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    UUID.uuidString.getter();
    (*(v10 + 8))(v13, v9);
    v19 = String._bridgeToObjectiveC()();

    v20 = [v6 storeForAccountIdentifier:v19];

    v15 = v43;
    if (v20)
    {
      v42 = a3;
      v21 = [v6 persistentStoreCoordinator];
      v22 = [v21 persistentStores];

      v23 = sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
      v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      aBlock[0] = _swiftEmptyArrayStorage;
      if (v24 >> 62)
      {
        goto LABEL_18;
      }

      for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v41[1] = v5;
        v25 = 0;
        v46 = v24 & 0xC000000000000001;
        v26 = v24 & 0xFFFFFFFFFFFFFF8;
        v5 = i;
        while (1)
        {
          if (v46)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v25 >= *(v26 + 16))
            {
              goto LABEL_17;
            }

            v31 = *(v24 + 8 * v25 + 32);
          }

          v32 = v31;
          v33 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (static NSObject.== infix(_:_:)())
          {
          }

          else
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            v27 = v24;
            v28 = v23;
            v29 = v20;
            v30 = *(aBlock[0] + 16);
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            v20 = v29;
            v23 = v28;
            v24 = v27;
            v5 = i;
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          ++v25;
          if (v33 == v5)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        ;
      }

LABEL_19:

      isa = Array._bridgeToObjectiveC()().super.isa;

      v15 = v43;
      [v43 set__unsafe_doesNotWorkUniversally_affectedStores:isa];

      a3 = v42;
    }
  }

  v35 = swift_allocObject();
  v35[2] = &v49;
  v35[3] = v44;
  v35[4] = a3;
  v35[5] = v15;
  v35[6] = &v48;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_100412D40;
  *(v36 + 24) = v35;
  aBlock[4] = sub_10000F188;
  aBlock[5] = v36;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000F160;
  aBlock[3] = &unk_1008F0C80;
  v37 = _Block_copy(aBlock);
  v38 = v15;

  [v38 performBlockAndWait:v37];
  _Block_release(v37);
  LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

  if (v37)
  {
    __break(1u);
  }

  else
  {
    if (v48)
    {
      swift_willThrow();
      swift_errorRetain();

      v39 = v49;

      return;
    }

    if (v49)
    {
      v49;

      v40 = v49;

      return;
    }
  }

  __break(1u);
}

uint64_t sub_100405054(id a1, unint64_t a2, Class isa, uint64_t a4)
{
  type metadata accessor for REMCDDueDateDeltaAlert();
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v8 setAffectedStores:isa];

  [v8 setPredicate:a4];
  if (a2)
  {

    sub_100391890(v10);

    v29 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v22 = Array._bridgeToObjectiveC()().super.isa;

        [v8 setRelationshipKeyPathsForPrefetching:v22];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v27 = a1;
      v28 = v8;
      v12 = 0;
      v30 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v30)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v29 + 16))
          {
            goto LABEL_25;
          }

          v13 = *(a2 + 8 * v12 + 32);
        }

        v14 = a2;
        v15 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v16)
        {
          goto LABEL_28;
        }

        v17 = v15;
        v18 = v16;

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        if (v20 >= v19 >> 1)
        {
          sub_100026EF4((v19 > 1), v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20 + 1;
        v21 = &_swiftEmptyArrayStorage[2 * v20];
        v21[4] = v17;
        v21[5] = v18;
        ++v12;
        a2 = v14;
        if (a1 == v8)
        {
          a1 = v27;
          v8 = v28;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v26._object = 0x80000001007EC120;
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v26);
    sub_1000F5104(&qword_10093F560, &qword_10079C0F0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100391890(v23);

      sub_1003FE084(_swiftEmptySetSingleton, &qword_10093F560, &qword_10079C0F0, &unk_100946500, &qword_1007A8758);

      v24 = Array._bridgeToObjectiveC()().super.isa;

      [v8 setPropertiesToFetch:v24];
    }

    else
    {
    }

    return v8;
  }

  return result;
}

uint64_t sub_100405438(id a1, unint64_t a2, Class isa, uint64_t a4)
{
  sub_1000060C8(0, &unk_100938880, off_1008D41A8);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v8 setAffectedStores:isa];

  [v8 setPredicate:a4];
  if (a2)
  {

    sub_100391CC4(v10);

    v29 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v22 = Array._bridgeToObjectiveC()().super.isa;

        [v8 setRelationshipKeyPathsForPrefetching:v22];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v27 = a1;
      v28 = v8;
      v12 = 0;
      v30 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v30)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v29 + 16))
          {
            goto LABEL_25;
          }

          v13 = *(a2 + 8 * v12 + 32);
        }

        v14 = a2;
        v15 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v16)
        {
          goto LABEL_28;
        }

        v17 = v15;
        v18 = v16;

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        if (v20 >= v19 >> 1)
        {
          sub_100026EF4((v19 > 1), v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20 + 1;
        v21 = &_swiftEmptyArrayStorage[2 * v20];
        v21[4] = v17;
        v21[5] = v18;
        ++v12;
        a2 = v14;
        if (a1 == v8)
        {
          a1 = v27;
          v8 = v28;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v26._object = 0x80000001007EC120;
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v26);
    sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100391CC4(v23);

      sub_1003FE084(&_swiftEmptySetSingleton, &qword_10093F478, &unk_1007A76E0, &unk_1009464B0, &unk_1007A86A0);

      v24 = Array._bridgeToObjectiveC()().super.isa;

      [v8 setPropertiesToFetch:v24];
    }

    else
    {
    }

    return v8;
  }

  return result;
}

uint64_t sub_10040582C(id a1, unint64_t a2, Class isa, uint64_t a4)
{
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v8 setAffectedStores:isa];

  [v8 setPredicate:a4];
  if (a2)
  {

    sub_100391940(v10);

    v29 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v22 = Array._bridgeToObjectiveC()().super.isa;

        [v8 setRelationshipKeyPathsForPrefetching:v22];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v27 = a1;
      v28 = v8;
      v12 = 0;
      v30 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v30)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v29 + 16))
          {
            goto LABEL_25;
          }

          v13 = *(a2 + 8 * v12 + 32);
        }

        v14 = a2;
        v15 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v16)
        {
          goto LABEL_28;
        }

        v17 = v15;
        v18 = v16;

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        if (v20 >= v19 >> 1)
        {
          sub_100026EF4((v19 > 1), v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20 + 1;
        v21 = &_swiftEmptyArrayStorage[2 * v20];
        v21[4] = v17;
        v21[5] = v18;
        ++v12;
        a2 = v14;
        if (a1 == v8)
        {
          a1 = v27;
          v8 = v28;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v26._object = 0x80000001007EC120;
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v26);
    sub_1000F5104(&unk_100942FF0, &unk_1007A3A70);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100391940(v23);

      sub_1003FE084(_swiftEmptySetSingleton, &unk_100942FF0, &unk_1007A3A70, &qword_1009464F0, &unk_1007A86F0);

      v24 = Array._bridgeToObjectiveC()().super.isa;

      [v8 setPropertiesToFetch:v24];
    }

    else
    {
    }

    return v8;
  }

  return result;
}

uint64_t sub_100405C20(id a1, unint64_t a2, Class isa, uint64_t a4)
{
  sub_1000060C8(0, &qword_10093CFE0, off_1008D4190);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v8 setAffectedStores:isa];

  [v8 setPredicate:a4];
  if (a2)
  {

    sub_100390E88(v10);

    v29 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v22 = Array._bridgeToObjectiveC()().super.isa;

        [v8 setRelationshipKeyPathsForPrefetching:v22];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v27 = a1;
      v28 = v8;
      v12 = 0;
      v30 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v30)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v29 + 16))
          {
            goto LABEL_25;
          }

          v13 = *(a2 + 8 * v12 + 32);
        }

        v14 = a2;
        v15 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v16)
        {
          goto LABEL_28;
        }

        v17 = v15;
        v18 = v16;

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        if (v20 >= v19 >> 1)
        {
          sub_100026EF4((v19 > 1), v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20 + 1;
        v21 = &_swiftEmptyArrayStorage[2 * v20];
        v21[4] = v17;
        v21[5] = v18;
        ++v12;
        a2 = v14;
        if (a1 == v8)
        {
          a1 = v27;
          v8 = v28;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v26._object = 0x80000001007EC120;
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v26);
    sub_1000F5104(&unk_10093D020, qword_1007A3230);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100390E88(v23);

      sub_1003FE084(&_swiftEmptySetSingleton, &unk_10093D020, qword_1007A3230, &qword_1009464F8, qword_1007A8700);

      v24 = Array._bridgeToObjectiveC()().super.isa;

      [v8 setPropertiesToFetch:v24];
    }

    else
    {
    }

    return v8;
  }

  return result;
}

uint64_t sub_100406014(id a1, unint64_t a2, Class isa, uint64_t a4)
{
  sub_1000060C8(0, &qword_100944260, off_1008D41D8);
  v8 = [objc_allocWithZone(NSFetchRequest) init];
  v9 = [swift_getObjCClassFromMetadata() entity];
  [v8 setEntity:v9];

  if (isa)
  {
    sub_1000060C8(0, &qword_10093F430, NSPersistentStore_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [v8 setAffectedStores:isa];

  [v8 setPredicate:a4];
  if (a2)
  {

    sub_100390EA0(v10);

    v29 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      if (!i)
      {
LABEL_19:
        v22 = Array._bridgeToObjectiveC()().super.isa;

        [v8 setRelationshipKeyPathsForPrefetching:v22];

        goto LABEL_20;
      }

      sub_100026EF4(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        break;
      }

      v27 = a1;
      v28 = v8;
      v12 = 0;
      v30 = a2 & 0xC000000000000001;
      v8 = i;
      while (1)
      {
        a1 = (v12 + 1);
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v30)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v29 + 16))
          {
            goto LABEL_25;
          }

          v13 = *(a2 + 8 * v12 + 32);
        }

        v14 = a2;
        v15 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v16)
        {
          goto LABEL_28;
        }

        v17 = v15;
        v18 = v16;

        v20 = _swiftEmptyArrayStorage[2];
        v19 = _swiftEmptyArrayStorage[3];
        if (v20 >= v19 >> 1)
        {
          sub_100026EF4((v19 > 1), v20 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v20 + 1;
        v21 = &_swiftEmptyArrayStorage[2 * v20];
        v21[4] = v17;
        v21[5] = v18;
        ++v12;
        a2 = v14;
        if (a1 == v8)
        {
          a1 = v27;
          v8 = v28;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

    __break(1u);
LABEL_28:
    _StringGuts.grow(_:)(46);
    v26._object = 0x80000001007EC120;
    v26._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v26);
    sub_1000F5104(&unk_10093CFF0, &unk_10079AAB0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_20:
    if (a1)
    {

      sub_100390EA0(v23);

      sub_1003FE084(&_swiftEmptySetSingleton, &unk_10093CFF0, &unk_10079AAB0, &qword_100946538, qword_1007A87D8);

      v24 = Array._bridgeToObjectiveC()().super.isa;

      [v8 setPropertiesToFetch:v24];
    }

    else
    {
    }

    return v8;
  }

  return result;
}

id sub_100406408@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minimumSupportedAppVersion];
  *a2 = result;
  return result;
}

void *sub_100406450(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  result = a2(&v6, a4);
  *a1 = 0;
  return result;
}

uint64_t sub_1004066A0(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v7, a4);
  v5 = *a1;
  *a1 = v7;
  return sub_100412CB4(v5);
}

void sub_1004068FC(uint64_t *a1, void (*a2)(__int128 *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v9, a4);
  v5 = v10;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  *a1 = v9;
  a1[2] = v5;
  sub_100412C60(v6, v7, v8);
}

uint64_t sub_100406B64(uint64_t *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v7, a4);
  v5 = *a1;
  *a1 = v7;
}

uint64_t sub_100406DC0(uint64_t *a1, void (*a2)(__int128 *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v10, a4);
  v5 = v11;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  *a1 = v10;
  a1[2] = v5;
  return sub_10003B40C(v6, v7, v8);
}

void *sub_100407028(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  result = a2(&v6, a4);
  *a1 = v6;
  return result;
}

void sub_10040727C(void **a1, void (*a2)(void **__return_ptr, uint64_t), uint64_t a3, uint64_t a4)
{
  a2(&v6, a4);
  v5 = *a1;
  *a1 = v6;
}

uint64_t sub_1004074D8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009463C0);
  v1 = sub_100006654(v0, qword_1009463C0);
  if (qword_100936420 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004075A0()
{
  result = [objc_opt_self() alarmEngine];
  qword_1009463D8 = result;
  return result;
}

uint64_t sub_1004075DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = xmmword_1007A8590;
  *(v4 + 56) = 0xED00007265637564;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 86) = 0;
  *(v4 + 16) = a1;
  v8 = type metadata accessor for RDDaemonController();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  *v10 = a2;
  *(v10 + 1) = a3;
  v11 = &v9[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v11 = xmmword_1007A85A0;
  *(v11 + 38) = 0;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  *(v11 + 2) = 0;
  *&v9[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  sub_10000C71C(0x6F72506D72616C61, 0xED00007265637564, 0, 0, 0, 0);
  v13.receiver = v9;
  v13.super_class = v8;
  *(v4 + 24) = objc_msgSendSuper2(&v13, "init");
  *(v4 + 32) = a4;
  return v4;
}

void sub_1004076F4(uint64_t a1@<X1>, void *a2@<X8>)
{
  v49 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a1 + 24)];
  v3 = sub_10029B198(1, 0xA0u);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100940360, off_1008D4138);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v3];
  *&v55 = &_swiftEmptySetSingleton;

  sub_100391940(v7);

  sub_1003FE084(&_swiftEmptySetSingleton, &unk_100942FF0, &unk_1007A3A70, &qword_1009464F0, &unk_1007A86F0);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  v10 = [objc_opt_self() daemonUserDefaults];
  v11 = [v10 disableAlarmEngineDataSourcePrefetching];

  if ((v11 & 1) == 0)
  {
    v12 = Array._bridgeToObjectiveC()().super.isa;
    [v5 setRelationshipKeyPathsForPrefetching:v12];
  }

  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    v14 = v49;
LABEL_5:

    return;
  }

  v15 = v13;
  v46 = v5;
  *&v55 = _swiftEmptyArrayStorage;
  v47 = v3;
  if (v13 >> 62)
  {
LABEL_47:
    v53 = v15 & 0xFFFFFFFFFFFFFF8;
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v53 = v13 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = v15 & 0xC000000000000001;
  v5 = v49;
  if (!v16)
  {
    goto LABEL_25;
  }

  v18 = 0;
  do
  {
    v19 = v18;
    while (1)
    {
      if (v17)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v53 + 16))
        {
          goto LABEL_44;
        }

        v20 = *(v15 + 8 * v19 + 32);
      }

      v21 = v20;
      v18 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v22 = [v20 alarm];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 reminder];

        if (v24)
        {
          break;
        }
      }

LABEL_12:
      ++v19;
      if (v18 == v16)
      {
        goto LABEL_25;
      }
    }

    v25 = [v24 remObjectID];

    if (!v25)
    {
      goto LABEL_12;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v18 != v16);
LABEL_25:
  v27 = [objc_allocWithZone(REMRemindersDataView) initWithStore:v49];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v28 = Array._bridgeToObjectiveC()().super.isa;

  v29 = [objc_opt_self() defaultFetchOptions];
  *&v55 = 0;
  v45 = v27;
  v30 = [v27 fetchRemindersWithObjectIDs:v28 fetchOptions:v29 error:&v55];

  v31 = v55;
  if (!v30)
  {
    v44 = v55;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v3 = v45;
    v14 = v46;
    goto LABEL_5;
  }

  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  sub_10018BA8C();
  v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (v16)
  {
    v33 = 0;
    v34 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v17)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(v53 + 16))
        {
          goto LABEL_46;
        }

        v36 = *(v15 + 8 * v33 + 32);
      }

      v37 = v36;
      v38 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v54 = v36;
      sub_100407F3C(&v54, v50, a1, &v55);

      if (v55)
      {
        v52 = v55;
        v39 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_100367EC8(0, v34[2] + 1, 1, v34);
        }

        v41 = v34[2];
        v40 = v34[3];
        v42 = v52;
        if (v41 >= v40 >> 1)
        {
          v43 = sub_100367EC8((v40 > 1), v41 + 1, 1, v34);
          v42 = v52;
          v34 = v43;
        }

        v34[2] = v41 + 1;
        v35 = &v34[3 * v41];
        *(v35 + 2) = v42;
        v35[6] = v39;
        v5 = v49;
      }

      ++v33;
      if (v38 == v16)
      {
        goto LABEL_42;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_42:

  *a2 = v34;
}

void sub_100407E00(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100939D90, "8\n\r");
  v8 = *a2;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setIdentifier:isa];
}

void sub_100407F3C(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 alarm];
  if (!v8)
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_100006654(v30, qword_1009463C0);
    v31 = v7;
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412290;
      *(v34 + 4) = v31;
      *v35 = v31;
      v36 = v31;
      _os_log_impl(&_mh_execute_header, v32, v33, "LocationDataSourceAlarms: Failed to get cdAlarm from trigger. {cdTrigger: %@}", v34, 0xCu);
      sub_1000050A4(v35, &unk_100938E70, &unk_100797230);
    }

    goto LABEL_75;
  }

  v9 = v8;
  v10 = [v8 reminder];
  if (!v10 || (v11 = v10, v12 = [v10 remObjectID], v11, !v12))
  {
    if (qword_1009360A8 != -1)
    {
LABEL_62:
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100006654(v23, qword_1009463C0);
    v24 = v9;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v9;
      v29 = v24;
      _os_log_impl(&_mh_execute_header, v25, v26, "LocationDataSourceAlarms: Failed to get reminderID from cdAlarm.reminder. {cdAlarm: %@}", v27, 0xCu);
      sub_1000050A4(v28, &unk_100938E70, &unk_100797230);

      v24 = v25;
      v25 = v29;
    }

    goto LABEL_75;
  }

  v13 = sub_100353844(v12, a2);
  if (!v13)
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_100006654(v44, qword_1009463C0);
    v45 = v12;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138543362;
      *(v48 + 4) = v45;
      *v49 = v12;
      v50 = v45;
      _os_log_impl(&_mh_execute_header, v46, v47, "LocationDataSourceAlarms: Failed to get remReminder from dataView result {reminderID: %{public}@}", v48, 0xCu);
      sub_1000050A4(v49, &unk_100938E70, &unk_100797230);

      v45 = v46;
      v46 = v9;
      v9 = v50;
    }

    goto LABEL_75;
  }

  v14 = v13;
  v15 = [v13 assignmentContext];
  v16 = [v15 currentAssignment];

  if (v16)
  {

    v17 = *(a3 + 40);
    v18 = v17;
    LOBYTE(v17) = sub_1005815C8(v17);

    if ((v17 & 1) == 0)
    {
      if (qword_1009360A8 != -1)
      {
        swift_once();
      }

      v51 = type metadata accessor for Logger();
      sub_100006654(v51, qword_1009463C0);
      v52 = v14;
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138543362;
        v57 = [v52 objectID];
        *(v55 + 4) = v57;
        *v56 = v57;
        _os_log_impl(&_mh_execute_header, v53, v54, "LocationDataSourceAlarms: remReminder is not assigned to current user. Skipping {reminderID: %{public}@}", v55, 0xCu);
        sub_1000050A4(v56, &unk_100938E70, &unk_100797230);

        v58 = v53;
        v53 = v9;
      }

      else
      {
        v58 = v52;
        v52 = v9;
      }

      goto LABEL_74;
    }
  }

  v98 = v14;
  v19 = [v14 alarms];
  if (!v19)
  {
LABEL_65:
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    sub_100006654(v82, qword_1009463C0);
    v83 = v9;
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v103[0] = v100;
      *v86 = 136446210;
      v87 = [v83 remObjectID];
      if (v87)
      {
        v88 = v87;
        v89 = v12;
        v90 = a4;
        v91 = [v87 description];

        v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v94 = v93;

        a4 = v90;
        v12 = v89;
      }

      else
      {
        v94 = 0xE300000000000000;
        v92 = 7104878;
      }

      v95 = sub_10000668C(v92, v94, v103);

      *(v86 + 4) = v95;
      _os_log_impl(&_mh_execute_header, v84, v85, "LocationDataSourceAlarms: Failed to get remAlarm from remReminder.alarms {alarmID: %{public}s}", v86, 0xCu);
      sub_10000607C(v100);
    }

    else
    {
    }

LABEL_74:
LABEL_75:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return;
  }

  v20 = v19;
  v96 = v12;
  v97 = a4;
  sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v99 = v9;
  if (v21 >> 62)
  {
    a4 = _CocoaArrayWrapper.endIndex.getter();
    if (a4)
    {
      goto LABEL_10;
    }

    goto LABEL_64;
  }

  a4 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!a4)
  {
LABEL_64:

    a4 = v97;
    v12 = v96;
    v9 = v99;
    goto LABEL_65;
  }

LABEL_10:
  v22 = 0;
  v9 = (v21 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v37 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v37 = *(v21 + 8 * v22 + 32);
    }

    v38 = v37;
    v39 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v40 = [v37 remObjectID];
    v41 = [v99 remObjectID];
    v42 = v41;
    if (!v40)
    {
      if (!v41)
      {
        goto LABEL_44;
      }

      goto LABEL_21;
    }

    if (v41)
    {
      break;
    }

    v42 = v40;
LABEL_21:

LABEL_22:
    ++v22;
    if (v39 == a4)
    {
      goto LABEL_64;
    }
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v43 = static NSObject.== infix(_:_:)();

  if ((v43 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_44:

  v106 = [v38 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&qword_100946520, &qword_1007A87C0);
  if (swift_dynamicCast())
  {
    sub_100054B6C(v101, v103);
    v59 = v104;
    v60 = v105;
    sub_10000F61C(v103, v104);
    v61 = (*(v60 + 8))(v98, v59, v60);
    v62 = v97;
    if (v61)
    {
      v63 = v61;

      *v97 = v98;
      v97[1] = v38;
      v97[2] = v63;
    }

    else
    {
      if (qword_1009360A8 != -1)
      {
        swift_once();
      }

      v72 = type metadata accessor for Logger();
      sub_100006654(v72, qword_1009463C0);
      v73 = v38;
      v74 = v98;
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *v77 = 138412546;
        v79 = [v73 trigger];
        *(v77 + 4) = v79;
        *v78 = v79;
        *(v77 + 12) = 2114;
        v80 = [v74 objectID];
        *(v77 + 14) = v80;
        v78[1] = v80;
        _os_log_impl(&_mh_execute_header, v75, v76, "LocationDataSourceAlarms: Unable to get CLRegion from remAlarm.trigger {remAlarm.trigger: %@, reminderID: %{public}@}", v77, 0x16u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
        v62 = v97;

        v81 = v75;
        v75 = v99;
      }

      else
      {
        v81 = v74;
        v74 = v99;
      }

      *v62 = 0;
      v62[1] = 0;
      v62[2] = 0;
    }

    sub_10000607C(v103);
  }

  else
  {
    v102 = 0;
    memset(v101, 0, sizeof(v101));
    sub_1000050A4(v101, &qword_100946528, &unk_1007A87C8);
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_100006654(v64, qword_1009463C0);
    v65 = v38;
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      *v68 = 138412290;
      v70 = [v65 trigger];
      *(v68 + 4) = v70;
      *v69 = v70;
      _os_log_impl(&_mh_execute_header, v66, v67, "LocationDataSourceAlarms: remAlarm.trigger is not a RDCLRegionSource (REMAlarmLocationTrigger) {remAlarm.trigger: %@}", v68, 0xCu);
      sub_1000050A4(v69, &unk_100938E70, &unk_100797230);

      v71 = v66;
    }

    else
    {
      v71 = v65;
      v65 = v66;
    }

    *v97 = 0;
    v97[1] = 0;
    v97[2] = 0;
  }
}

void sub_100408C3C(uint64_t a1@<X1>, void *a2@<X8>)
{
  v49 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a1 + 24)];
  v3 = sub_10029C950(2, 0xA0u);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100940370, off_1008D4150);
  v5 = [objc_allocWithZone(NSFetchRequest) init];
  v6 = [swift_getObjCClassFromMetadata() entity];
  [v5 setEntity:v6];

  [v5 setAffectedStores:0];
  [v5 setPredicate:v3];
  *&v55 = _swiftEmptySetSingleton;

  sub_1003928E4(v7);

  sub_1003FE084(_swiftEmptySetSingleton, &qword_100946510, &qword_1007A3B48, &qword_100946518, &qword_1007A8790);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v9 = *(inited + 16);
  swift_arrayDestroy();
  v10 = [objc_opt_self() daemonUserDefaults];
  v11 = [v10 disableAlarmEngineDataSourcePrefetching];

  if ((v11 & 1) == 0)
  {
    v12 = Array._bridgeToObjectiveC()().super.isa;
    [v5 setRelationshipKeyPathsForPrefetching:v12];
  }

  v13 = NSManagedObjectContext.fetch<A>(_:)();
  if (v2)
  {
    v14 = v49;
LABEL_5:

    return;
  }

  v15 = v13;
  v46 = v5;
  *&v55 = _swiftEmptyArrayStorage;
  v47 = v3;
  if (v13 >> 62)
  {
LABEL_47:
    v53 = v15 & 0xFFFFFFFFFFFFFF8;
    v16 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v53 = v13 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = v15 & 0xC000000000000001;
  v5 = v49;
  if (!v16)
  {
    goto LABEL_25;
  }

  v18 = 0;
  do
  {
    v19 = v18;
    while (1)
    {
      if (v17)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *(v53 + 16))
        {
          goto LABEL_44;
        }

        v20 = *(v15 + 8 * v19 + 32);
      }

      v21 = v20;
      v18 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v22 = [v20 alarm];
      if (v22)
      {
        v23 = v22;
        v24 = [v22 reminder];

        if (v24)
        {
          break;
        }
      }

LABEL_12:
      ++v19;
      if (v18 == v16)
      {
        goto LABEL_25;
      }
    }

    v25 = [v24 remObjectID];

    if (!v25)
    {
      goto LABEL_12;
    }

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v55 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v26 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  while (v18 != v16);
LABEL_25:
  v27 = [objc_allocWithZone(REMRemindersDataView) initWithStore:v49];
  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v28 = Array._bridgeToObjectiveC()().super.isa;

  v29 = [objc_opt_self() defaultFetchOptions];
  *&v55 = 0;
  v45 = v27;
  v30 = [v27 fetchRemindersWithObjectIDs:v28 fetchOptions:v29 error:&v55];

  v31 = v55;
  if (!v30)
  {
    v44 = v55;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    v3 = v45;
    v14 = v46;
    goto LABEL_5;
  }

  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  sub_10018BA8C();
  v50 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = v31;

  if (v16)
  {
    v33 = 0;
    v34 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v17)
      {
        v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v33 >= *(v53 + 16))
        {
          goto LABEL_46;
        }

        v36 = *(v15 + 8 * v33 + 32);
      }

      v37 = v36;
      v38 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      v54 = v36;
      sub_100409348(&v54, v50, a1, &v55);

      if (v55)
      {
        v52 = v55;
        v39 = v56;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_100367EEC(0, v34[2] + 1, 1, v34);
        }

        v41 = v34[2];
        v40 = v34[3];
        v42 = v52;
        if (v41 >= v40 >> 1)
        {
          v43 = sub_100367EEC((v40 > 1), v41 + 1, 1, v34);
          v42 = v52;
          v34 = v43;
        }

        v34[2] = v41 + 1;
        v35 = &v34[3 * v41];
        *(v35 + 2) = v42;
        v35[6] = v39;
        v5 = v49;
      }

      ++v33;
      if (v38 == v16)
      {
        goto LABEL_42;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v34 = _swiftEmptyArrayStorage;
LABEL_42:

  *a2 = v34;
}

void sub_100409348(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = [*a1 alarm];
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = v8;
  v10 = [v8 reminder];
  if (!v10)
  {
    goto LABEL_24;
  }

  v58 = a3;
  v11 = v10;
  v12 = [v10 remObjectID];

  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = sub_100353844(v12, a2);
  if (!v13)
  {

    goto LABEL_25;
  }

  v14 = v13;
  v15 = [v13 alarms];
  v16 = v14;
  if (!v15)
  {

LABEL_24:
    goto LABEL_25;
  }

  v17 = v15;
  v57 = v16;
  v56 = a4;
  sub_1000060C8(0, &qword_10093B7B0, REMAlarm_ptr);
  a4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v54 = v7;
  v55 = v12;
  if (a4 >> 62)
  {
    v7 = _CocoaArrayWrapper.endIndex.getter();
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_8:
      v18 = 0;
      while (1)
      {
        if ((a4 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v19 = *(a4 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
          goto LABEL_42;
        }

        v22 = [v19 remObjectID];
        v23 = v9;
        v24 = [v9 remObjectID];
        v25 = v24;
        if (!v22)
        {
          break;
        }

        if (!v24)
        {
          v25 = v22;
LABEL_10:

          goto LABEL_11;
        }

        sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
        v26 = static NSObject.== infix(_:_:)();

        if (v26)
        {
LABEL_29:

          v34 = [v20 trigger];
          objc_opt_self();
          v35 = swift_dynamicCastObjCClass();
          v7 = v54;
          if (!v35)
          {

            a4 = v56;
            goto LABEL_25;
          }

          v36 = v34;
          v37 = v35;
          v38 = [v57 assignmentContext];
          v39 = [v38 currentAssignment];

          v40 = v23;
          if (v39 && (v39, v41 = *(v58 + 40), v42 = v41, LOBYTE(v41) = sub_1005815C8(v41), v42, (v41 & 1) == 0))
          {
            if (qword_1009360A8 != -1)
            {
              swift_once();
            }

            v46 = type metadata accessor for Logger();
            sub_100006654(v46, qword_1009463C0);
            v47 = v57;
            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              *v50 = 138543362;
              v52 = [v47 objectID];
              *(v50 + 4) = v52;
              *v51 = v52;
              _os_log_impl(&_mh_execute_header, v48, v49, "Fetched reminder is not assigned to current user. Skipping {reminderID: %{public}@}", v50, 0xCu);
              sub_1000050A4(v51, &unk_100938E70, &unk_100797230);

              v53 = v48;
              v48 = v36;
              v36 = v20;
            }

            else
            {
              v53 = v47;
              v47 = v20;
            }

            *v56 = 0;
            v56[1] = 0;
            v56[2] = 0;
          }

          else
          {
            v43 = v57;
            v44 = v20;
            v45 = [v37 event];

            *v56 = v57;
            v56[1] = v44;
            v56[2] = v45;
          }

          return;
        }

LABEL_11:

        ++v18;
        v9 = v23;
        if (v21 == v7)
        {
          goto LABEL_44;
        }
      }

      if (!v24)
      {
        goto LABEL_29;
      }

      goto LABEL_10;
    }
  }

LABEL_44:

  a4 = v56;
  v7 = v54;
LABEL_25:
  if (qword_1009360A8 != -1)
  {
LABEL_42:
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100006654(v27, qword_1009463C0);
  v28 = v7;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    *(v31 + 4) = v28;
    *v32 = v28;
    v33 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "VehicleDataSourceAlarms: Failed to get REMReminder, REMAlarm or triggerEvent from cdTrigger -- skipping {cdTrigger: %@}", v31, 0xCu);
    sub_1000050A4(v32, &unk_100938E70, &unk_100797230);
  }

  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
}

void sub_100409980(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a3;
  v44 = a1;
  v5 = _s10PredicatesOMa(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a2;
  v45 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a2 + 24)];
  swift_storeEnumTagMultiPayload();
  v9 = sub_100043AA8();
  sub_1000513B4(v8);
  sub_1000F5104(&unk_100939D60, &unk_1007959E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007953F0;
  *(inited + 32) = swift_getKeyPath();
  sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
  v11 = [objc_allocWithZone(NSFetchRequest) init];
  v12 = [swift_getObjCClassFromMetadata() entity];
  [v11 setEntity:v12];

  [v11 setAffectedStores:0];
  [v11 setPredicate:v9];
  v46 = &_swiftEmptySetSingleton;

  sub_100050AD0(v13);

  sub_1003FE084(v46, &unk_100939F10, &qword_100797F30, &unk_1009464A0, &qword_1007A8698);

  isa = Array._bridgeToObjectiveC()().super.isa;

  [v11 setPropertiesToFetch:isa];

  swift_setDeallocating();
  v15 = *(inited + 16);
  swift_arrayDestroy();
  v16 = NSManagedObjectContext.fetch<A>(_:)();
  if (v3)
  {
    v17 = v45;
    v18 = v9;
LABEL_3:

    return;
  }

  v19 = v16;
  v41 = v11;
  v44 = v9;
  v20 = objc_allocWithZone(REMRemindersDataView);
  v40 = [v20 initWithStore:v45];
  v46 = _swiftEmptyArrayStorage;
  v39 = 0;
  if (v19 >> 62)
  {
LABEL_22:
    v21 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = 0;
  while (v21 != v22)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v22 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v23 = *(v19 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v26 = [v23 remObjectID];

    ++v22;
    if (v26)
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v22 = v25;
    }
  }

  sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
  v28 = Array._bridgeToObjectiveC()().super.isa;

  v29 = [objc_opt_self() defaultFetchOptions];
  v46 = 0;
  v18 = v40;
  v30 = [v40 fetchRemindersWithObjectIDs:v28 fetchOptions:v29 error:&v46];

  v31 = v46;
  v33 = v42;
  v32 = v43;
  if (!v30)
  {
    v38 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17 = v41;
    v11 = v45;
    goto LABEL_3;
  }

  sub_1000060C8(0, &unk_100942FB0, REMReminder_ptr);
  sub_10018BA8C();
  v34 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v31;

  sub_100411EA4(v34, v33);
  v37 = v36;

  *v32 = v37;
}

void sub_100409EF8(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = [*a1 contactHandles];
  if (v6)
  {
    v7 = v6;
    v8 = [v5 assignmentContext];
    v9 = [v8 currentAssignment];

    if (!v9 || (v9, v10 = *(a2 + 40), v11 = v10, LOBYTE(v10) = sub_1005815C8(v10), v11, (v10 & 1) != 0))
    {
      v12 = [objc_allocWithZone(REMAlarmContactTrigger) initWithContactRepresentation:v7];
      v13 = [objc_allocWithZone(REMAlarm) initWithTrigger:v12];

      *a3 = v5;
      a3[1] = v13;
      a3[2] = v7;
      v14 = v5;
      return;
    }

    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100006654(v22, qword_1009463C0);
    v23 = v5;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      v28 = [v23 objectID];
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Fetched reminder is not assigned to current user. Skipping {reminderID: %{public}@}", v26, 0xCu);
      sub_1000050A4(v27, &unk_100938E70, &unk_100797230);
    }
  }

  else
  {
    if (qword_1009360A8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100006654(v15, qword_1009463C0);
    v16 = v5;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138543362;
      v21 = [v16 objectID];
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "Fetched reminder is missing contact handle. Skipping {reminderID: %{public}@}", v19, 0xCu);
      sub_1000050A4(v20, &unk_100938E70, &unk_100797230);
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

uint64_t sub_10040A26C()
{
  sub_10000CC4C(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88) | (*(v0 + 92) << 32));

  return swift_deallocClassInstance();
}

uint64_t sub_10040A2FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v132 = a2;
  v131 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v128 = &v120 - v10;
  __chkstk_darwin(v11);
  v121 = &v120 - v12;
  __chkstk_darwin(v13);
  v122 = &v120 - v14;
  v15 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v126 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v123 = (&v120 - v19);
  __chkstk_darwin(v20);
  v133 = &v120 - v21;
  v22 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v130 = *(v22 - 8);
  v23 = *(v130 + 64);
  __chkstk_darwin(v22);
  v124 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v120 = &v120 - v26;
  __chkstk_darwin(v27);
  v29 = (&v120 - v28);
  v125 = a1;
  sub_100010364(a1, &v120 - v28, &unk_1009464C0, &qword_10079D360);
  v31 = *v29;
  v30 = v29[1];
  v138 = v22;
  v32 = *(v22 + 48);
  v136 = v5;
  v33 = *(v5 + 8);
  v140 = v4;
  v127 = v5 + 8;
  v134 = v33;
  v33(v29 + v32, v4);
  v34 = qword_1009360A8;
  v35 = v30;
  v36 = v31;
  if (v34 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_100006654(v37, qword_1009463C0);
  v39 = v35;
  v40 = v36;
  v137 = v38;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v43 = os_log_type_enabled(v41, v42);
  v139 = v39;
  v129 = v8;
  v135 = v40;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v143[0] = swift_slowAlloc();
    *v44 = 138543874;
    v46 = [v139 objectID];
    *(v44 + 4) = v46;
    *v45 = v46;
    *(v44 + 12) = 2082;
    if ([v139 isSnooze])
    {
      v47 = 89;
    }

    else
    {
      v47 = 78;
    }

    v48 = sub_10000668C(v47, 0xE100000000000000, v143);

    *(v44 + 14) = v48;
    *(v44 + 22) = 2082;
    if ([v40 isRecurrent])
    {
      v49 = 89;
    }

    else
    {
      v49 = 78;
    }

    v50 = sub_10000668C(v49, 0xE100000000000000, v143);

    *(v44 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v41, v42, "RDTimeAlarmProducerDataSource: nextProducerAlarmFiringAfter alarm {alarmID: %{public}@ isSnooze: %{public}s isRecurring: %{public}s}", v44, 0x20u);
    sub_1000050A4(v45, &unk_100938E70, &unk_100797230);

    swift_arrayDestroy();
    v39 = v139;
  }

  v51 = v136;
  v52 = *(v136 + 56);
  v53 = v133;
  v52(v133, 1, 1, v140);
  if (([v39 isSnooze] & 1) != 0 || !objc_msgSend(v135, "isOverdue"))
  {
    v60 = &unk_100938850;
    v61 = qword_100795AE0;
    v62 = v53;
LABEL_17:
    sub_1000050A4(v62, v60, v61);
    goto LABEL_18;
  }

  v146 = [v39 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000050A4(v53, &unk_100938850, qword_100795AE0);
    memset(v141, 0, sizeof(v141));
    v142 = 0;
    v60 = &qword_10093A718;
    v61 = &qword_100797B90;
    v62 = v141;
    goto LABEL_17;
  }

  sub_100054B6C(v141, v143);
  v54 = v144;
  v55 = v145;
  sub_10000F61C(v143, v144);
  v56 = *(v55 + 16);
  v57 = v54;
  v58 = v123;
  v59 = v55;
  v51 = v136;
  v56(v135, v132, v57, v59);
  sub_1000050A4(v53, &unk_100938850, qword_100795AE0);
  if ((*(v51 + 48))(v58, 1, v140) == 1)
  {
    sub_1000050A4(v58, &unk_100938850, qword_100795AE0);
    sub_10000607C(v143);
LABEL_18:
    v63 = v125;
    sub_100010364(v125, v29, &unk_1009464C0, &qword_10079D360);

    v64 = v29 + *(v138 + 48);
    v65 = v140;
    v123 = *(v51 + 32);
    v123(v53, v64, v140);
    v52(v53, 0, 1, v65);
    v66 = v63;
    v67 = v124;
    sub_100010364(v66, v124, &unk_1009464C0, &qword_10079D360);
    v68 = v139;
    v69 = Logger.logObject.getter();
    v70 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *v71 = 138543618;
      v73 = [v68 objectID];
      *(v71 + 4) = v73;
      *v72 = v73;
      *(v71 + 12) = 2114;
      sub_100010364(v67, v29, &unk_1009464C0, &qword_10079D360);

      v74 = *(v138 + 48);
      isa = Date._bridgeToObjectiveC()().super.isa;
      v76 = v140;
      sub_1000050A4(v67, &unk_1009464C0, &qword_10079D360);
      v134(v29 + v74, v76);
      *(v71 + 14) = isa;
      v72[1] = isa;
      _os_log_impl(&_mh_execute_header, v69, v70, "RDTimeAlarmProducerDataSource: nextProducerAlarmFiringAfter is using default fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@}", v71, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v53 = v133;

      v51 = v136;
    }

    else
    {

      sub_1000050A4(v67, &unk_1009464C0, &qword_10079D360);
    }

    v77 = v129;
    v78 = v128;
    v79 = v126;
    goto LABEL_22;
  }

  v100 = v122;
  v101 = v140;
  v123 = *(v51 + 32);
  v123(v122, v58, v140);
  v102 = *(v51 + 16);
  v102(v53, v100, v101);
  v52(v53, 0, 1, v101);
  v103 = v120;
  sub_100010364(v125, v120, &unk_1009464C0, &qword_10079D360);
  v104 = v121;
  v102(v121, v100, v101);
  v105 = v139;
  v106 = Logger.logObject.getter();
  v107 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v109 = v103;
    v110 = swift_slowAlloc();
    *v108 = 138543874;
    v111 = [v105 objectID];
    *(v108 + 4) = v111;
    *v110 = v111;
    *(v108 + 12) = 2114;
    sub_100010364(v109, v29, &unk_1009464C0, &qword_10079D360);

    v112 = *(v138 + 48);
    v113 = v107;
    v114 = Date._bridgeToObjectiveC()().super.isa;
    sub_1000050A4(v109, &unk_1009464C0, &qword_10079D360);
    v115 = v29 + v112;
    v116 = v134;
    v117 = v140;
    v134(v115, v140);
    *(v108 + 14) = v114;
    v110[1] = v114;
    *(v108 + 22) = 2114;
    v118 = v121;
    v119 = Date._bridgeToObjectiveC()().super.isa;
    v116(v118, v117);
    *(v108 + 24) = v119;
    v110[2] = v119;
    _os_log_impl(&_mh_execute_header, v106, v113, "RDTimeAlarmProducerDataSource: nextProducerAlarmFiringAfter is calculating fireDate for overdue recurring alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@ nextFireDate: %{public}@}", v108, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v51 = v136;
  }

  else
  {

    v134(v104, v140);
    sub_1000050A4(v103, &unk_1009464C0, &qword_10079D360);
  }

  v77 = v129;
  v78 = v128;
  v79 = v126;
  v134(v122, v140);
  sub_10000607C(v143);
  v53 = v133;
LABEL_22:
  v80 = v139;
  sub_100010364(v53, v79, &unk_100938850, qword_100795AE0);
  if ((*(v51 + 48))(v79, 1, v140) == 1)
  {
    sub_1000050A4(v79, &unk_100938850, qword_100795AE0);
  }

  else
  {
    v81 = v79;
    v82 = v123;
    v123(v78, v81, v140);
    if (static Date.> infix(_:_:)())
    {
      sub_1000050A4(v53, &unk_100938850, qword_100795AE0);
      v83 = v135;

      v84 = v139;
      v85 = v138;
      v86 = *(v138 + 48);
      v87 = v82;
      v88 = v131;
      *v131 = v83;
      *(v88 + 1) = v84;
      v87(&v88[v86], v78, v140);
      return (*(v130 + 56))(v88, 0, 1, v85);
    }

    v134(v78, v140);
    v80 = v139;
  }

  (*(v51 + 16))(v77, v132, v140);
  v90 = v80;
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v91, v92))
  {
    v93 = v77;
    v94 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    *v94 = 138543618;
    v96 = [v90 objectID];
    *(v94 + 4) = v96;
    *v95 = v96;
    *(v94 + 12) = 2114;
    v97 = Date._bridgeToObjectiveC()().super.isa;
    v134(v93, v140);
    *(v94 + 14) = v97;
    v95[1] = v97;
    _os_log_impl(&_mh_execute_header, v91, v92, "RDTimeAlarmProducerDataSource: nextProducerAlarmFiringAfter fireDate is earlier than now for alarm. Skipping {alarmID: %{public}@ nowDate: %{public}@}", v94, 0x16u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v98 = v135;
  }

  else
  {

    v99 = v135;
    v134(v77, v140);
  }

  sub_1000050A4(v53, &unk_100938850, qword_100795AE0);
  return (*(v130 + 56))(v131, 1, 1, v138);
}

uint64_t sub_10040B260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v149 = a2;
  v144 = a3;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v138 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v142 = &v132 - v9;
  __chkstk_darwin(v10);
  v132 = &v132 - v11;
  __chkstk_darwin(v12);
  v135 = &v132 - v13;
  __chkstk_darwin(v14);
  v16 = &v132 - v15;
  __chkstk_darwin(v17);
  v134 = &v132 - v18;
  __chkstk_darwin(v19);
  v136 = &v132 - v20;
  v21 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v141 = &v132 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v137 = (&v132 - v25);
  __chkstk_darwin(v26);
  v28 = (&v132 - v27);
  v29 = sub_1000F5104(&unk_1009464C0, &qword_10079D360);
  v143 = *(v29 - 8);
  v30 = *(v143 + 64);
  __chkstk_darwin(v29);
  v139 = &v132 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v133 = &v132 - v33;
  __chkstk_darwin(v34);
  v36 = (&v132 - v35);
  v140 = a1;
  sub_100010364(a1, &v132 - v35, &unk_1009464C0, &qword_10079D360);
  v38 = *v36;
  v37 = v36[1];
  v152 = v29;
  v39 = *(v29 + 48);
  v154 = v5;
  v40 = *(v5 + 8);
  v146 = v5 + 8;
  v150 = v40;
  v40(v36 + v39, v4);
  v41 = qword_1009360A8;
  v42 = v37;
  if (v41 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  v44 = sub_100006654(v43, qword_1009463C0);
  v45 = v42;
  v46 = v38;
  v151 = v44;
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  v49 = os_log_type_enabled(v47, v48);
  v50 = &selRef_setPublicLinkLastModifiedDate_;
  v147 = v46;
  v148 = v28;
  v145 = v16;
  v153 = v45;
  if (v49)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v157[0] = swift_slowAlloc();
    *v51 = 138543874;
    v53 = [v153 objectID];
    *(v51 + 4) = v53;
    *v52 = v53;
    *(v51 + 12) = 2082;
    if ([v153 isSnooze])
    {
      v54 = 89;
    }

    else
    {
      v54 = 78;
    }

    v55 = sub_10000668C(v54, 0xE100000000000000, v157);

    *(v51 + 14) = v55;
    *(v51 + 22) = 2082;
    if ([v46 isRecurrent])
    {
      v56 = 89;
    }

    else
    {
      v56 = 78;
    }

    v57 = sub_10000668C(v56, 0xE100000000000000, v157);

    *(v51 + 24) = v57;
    _os_log_impl(&_mh_execute_header, v47, v48, "RDTimeAlarmProducerDataSource: expiredProducerAlarmsBefore alarm {alarmID: %{public}@ isSnooze: %{public}s isRecurring: %{public}s}", v51, 0x20u);
    sub_1000050A4(v52, &unk_100938E70, &unk_100797230);
    v45 = v153;

    swift_arrayDestroy();
    v50 = &selRef_setPublicLinkLastModifiedDate_;

    v28 = v148;
  }

  v58 = *(v154 + 56);
  v58(v28, 1, 1, v4);
  if ([v45 v50[133]])
  {
    v59 = &unk_100938850;
    v60 = qword_100795AE0;
    v61 = v28;
LABEL_17:
    sub_1000050A4(v61, v59, v60);
    goto LABEL_18;
  }

  v160 = [v45 trigger];
  sub_1000060C8(0, &qword_10093A710, REMAlarmTrigger_ptr);
  sub_1000F5104(&unk_1009404E0, &unk_10079FF80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000050A4(v28, &unk_100938850, qword_100795AE0);
    memset(v155, 0, sizeof(v155));
    v156 = 0;
    v59 = &qword_10093A718;
    v60 = &qword_100797B90;
    v61 = v155;
    goto LABEL_17;
  }

  sub_100054B6C(v155, v157);
  v62 = v158;
  v63 = v159;
  sub_10000F61C(v157, v158);
  v64 = v137;
  (*(v63 + 24))(v147, v149, v62, v63);
  sub_1000050A4(v28, &unk_100938850, qword_100795AE0);
  if ((*(v154 + 48))(v64, 1, v4) == 1)
  {
    sub_1000050A4(v64, &unk_100938850, qword_100795AE0);
    sub_10000607C(v157);
    v45 = v153;
LABEL_18:
    v65 = v140;
    sub_100010364(v140, v36, &unk_1009464C0, &qword_10079D360);

    v66 = v36 + *(v152 + 48);
    v137 = *(v154 + 32);
    v137(v28, v66, v4);
    v58(v28, 0, 1, v4);
    v67 = v65;
    v68 = v139;
    sub_100010364(v67, v139, &unk_1009464C0, &qword_10079D360);
    v69 = v45;
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v72 = 138543618;
      v74 = [v69 objectID];
      *(v72 + 4) = v74;
      *v73 = v74;
      *(v72 + 12) = 2114;
      sub_100010364(v68, v36, &unk_1009464C0, &qword_10079D360);

      v75 = v68;
      v76 = *(v152 + 48);
      isa = Date._bridgeToObjectiveC()().super.isa;
      sub_1000050A4(v75, &unk_1009464C0, &qword_10079D360);
      v150(v36 + v76, v4);
      *(v72 + 14) = isa;
      v73[1] = isa;
      _os_log_impl(&_mh_execute_header, v70, v71, "RDTimeAlarmProducerDataSource: expiredProducerAlarmsBefore is using default fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@}", v72, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v28 = v148;

      v45 = v153;
    }

    else
    {

      sub_1000050A4(v68, &unk_1009464C0, &qword_10079D360);
    }

    v78 = v145;
    v79 = v142;
    goto LABEL_22;
  }

  v109 = v154;
  v110 = v136;
  v137 = *(v154 + 32);
  v137(v136, v64, v4);
  v111 = *(v109 + 16);
  v111(v28, v110, v4);
  v58(v28, 0, 1, v4);
  v112 = v133;
  sub_100010364(v140, v133, &unk_1009464C0, &qword_10079D360);
  v113 = v134;
  v111(v134, v110, v4);
  v45 = v153;
  v114 = v153;
  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = v112;
    v119 = swift_slowAlloc();
    *v117 = 138543874;
    v120 = [v114 objectID];
    *(v117 + 4) = v120;
    *v119 = v120;
    *(v117 + 12) = 2114;
    sub_100010364(v118, v36, &unk_1009464C0, &qword_10079D360);

    v121 = v4;
    v122 = *(v152 + 48);
    v123 = Date._bridgeToObjectiveC()().super.isa;
    sub_1000050A4(v118, &unk_1009464C0, &qword_10079D360);
    v124 = v36 + v122;
    v4 = v121;
    v125 = v121;
    v126 = v150;
    v150(v124, v125);
    *(v117 + 14) = v123;
    v119[1] = v123;
    *(v117 + 22) = 2114;
    v127 = v134;
    v128 = Date._bridgeToObjectiveC()().super.isa;
    v126(v127, v4);
    *(v117 + 24) = v128;
    v119[2] = v128;
    _os_log_impl(&_mh_execute_header, v115, v116, "RDTimeAlarmProducerDataSource: expiredProducerAlarmsBefore is calculating fireDate for alarm {alarmID: %{public}@ dataSourceAlarm.fireDate: %{public}@ previousFireDate: %{public}@}", v117, 0x20u);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    v45 = v153;
  }

  else
  {

    v126 = v150;
    v150(v113, v4);
    sub_1000050A4(v112, &unk_1009464C0, &qword_10079D360);
  }

  v78 = v145;
  v79 = v142;
  v126(v136, v4);
  sub_10000607C(v157);
  v28 = v148;
LABEL_22:
  v80 = v141;
  sub_100010364(v28, v141, &unk_100938850, qword_100795AE0);
  if ((*(v154 + 48))(v80, 1, v4) == 1)
  {
    sub_1000050A4(v80, &unk_100938850, qword_100795AE0);
    goto LABEL_26;
  }

  v137(v78, v80, v4);
  sub_10041219C(&qword_1009464D0, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.< infix(_:_:)())
  {
    v150(v78, v4);
    v45 = v153;
LABEL_26:
    v81 = v138;
    (*(v154 + 16))(v138, v149, v4);
    v82 = v45;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      *v85 = 138543618;
      v87 = [v82 objectID];
      *(v85 + 4) = v87;
      *v86 = v87;
      *(v85 + 12) = 2114;
      v88 = Date._bridgeToObjectiveC()().super.isa;
      v150(v81, v4);
      *(v85 + 14) = v88;
      v86[1] = v88;
      _os_log_impl(&_mh_execute_header, v83, v84, "RDTimeAlarmProducerDataSource: expiredProducerAlarmsBefore fireDate is later than now for alarm. Skipping {alarmID: %{public}@ nowDate: %{public}@}", v85, 0x16u);
      sub_1000F5104(&unk_100938E70, &unk_100797230);
      swift_arrayDestroy();
      v28 = v148;
    }

    else
    {

      v150(v81, v4);
    }

LABEL_29:
    sub_1000050A4(v28, &unk_100938850, qword_100795AE0);
    return (*(v143 + 56))(v144, 1, 1, v152);
  }

  v90 = v153;
  v91 = [v153 acknowledgedDate];
  if (v91)
  {
    v92 = v135;
    v93 = v91;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    if (static Date.< infix(_:_:)())
    {
      v94 = *(v154 + 16);
      v95 = v132;
      v94(v132, v78, v4);
      v94(v79, v92, v4);
      v96 = v153;
      v97 = Logger.logObject.getter();
      v98 = v79;
      v99 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v97, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        *v100 = 138543874;
        v102 = [v96 objectID];
        *(v100 + 4) = v102;
        *v101 = v102;
        *(v100 + 12) = 2114;
        LODWORD(v154) = v99;
        v103 = v98;
        v104 = Date._bridgeToObjectiveC()().super.isa;
        v105 = v95;
        v106 = v97;
        v107 = v150;
        v150(v105, v4);
        *(v100 + 14) = v104;
        v101[1] = v104;
        *(v100 + 22) = 2114;
        v108 = Date._bridgeToObjectiveC()().super.isa;
        v107(v103, v4);
        *(v100 + 24) = v108;
        v101[2] = v108;
        _os_log_impl(&_mh_execute_header, v106, v154, "RDTimeAlarmProducerDataSource: expiredProducerAlarmsBefore fireDate is earlier than ackDate for alarm. Skipping {alarmID: %{public}@ finalFireDate: %{public}@ ackDate: %{public}@}", v100, 0x20u);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();
        v28 = v148;

        v78 = v145;
      }

      else
      {

        v107 = v150;
        v150(v98, v4);
        v107(v95, v4);
      }

      v107(v135, v4);
      v107(v78, v4);
      goto LABEL_29;
    }

    v90 = v153;

    v150(v92, v4);
  }

  else
  {
  }

  sub_1000050A4(v28, &unk_100938850, qword_100795AE0);
  v129 = v152;
  v130 = *(v152 + 48);
  v131 = v144;
  *v144 = v147;
  v131[1] = v90;
  v137((v131 + v130), v78, v4);
  return (*(v143 + 56))(v131, 0, 1, v129);
}