void sub_10002F8AC(unint64_t a1, void *a2)
{
  v2 = a1;
  if (a1 >> 62)
  {
LABEL_29:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      v5 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      v42 = v3;
      v43 = v2;
      v40 = v2 & 0xFFFFFFFFFFFFFF8;
      v41 = v2 & 0xC000000000000001;
      do
      {
        if (v5)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v4 >= *(v6 + 16))
          {
            goto LABEL_26;
          }

          v7 = *(v2 + 8 * v4 + 32);
        }

        v8 = v7;
        v9 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v10 = [v7 name];
        if (v10)
        {
          v11 = v6;
          v12 = v3;
          v13 = v2;
          v14 = v10;
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

          v18 = [v8 value];
          if (v18)
          {
            v44 = v8;
            v19 = v18;
            v20 = [v18 int64Value];

            v21 = *a2;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v23 = *a2;
            *a2 = 0x8000000000000000;
            v2 = v15;
            v24 = v15;
            v25 = v17;
            v27 = sub_10005BCB0(v24, v17);
            v28 = v23[2];
            v29 = (v26 & 1) == 0;
            v30 = v28 + v29;
            if (__OFADD__(v28, v29))
            {
              goto LABEL_27;
            }

            v31 = v26;
            v32 = v20;
            if (v23[3] >= v30)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_10005EDA8();
              }
            }

            else
            {
              sub_10005D6C0(v30, isUniquelyReferenced_nonNull_native);
              v33 = sub_10005BCB0(v2, v25);
              if ((v31 & 1) != (v34 & 1))
              {
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return;
              }

              v27 = v33;
            }

            v9 = v4 + 1;
            if (v31)
            {
              *(v23[7] + 8 * v27) = v32;
            }

            else
            {
              v23[(v27 >> 6) + 8] |= 1 << v27;
              v35 = (v23[6] + 16 * v27);
              *v35 = v2;
              v35[1] = v25;
              *(v23[7] + 8 * v27) = v32;
              v36 = v23[2];
              v37 = __OFADD__(v36, 1);
              v38 = v36 + 1;
              if (v37)
              {
                goto LABEL_28;
              }

              v23[2] = v38;
            }

            v39 = *a2;
            *a2 = v23;

            v3 = v42;
            v2 = v43;
            v6 = v40;
            v5 = v41;
          }

          else
          {

            v2 = v13;
            v3 = v12;
            v6 = v11;
            v9 = v4 + 1;
          }
        }

        else
        {
        }

        ++v4;
      }

      while (v9 != v3);
    }
  }
}

uint64_t sub_10002FB6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id *sub_10002FBDC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v29 = v1 + 72;
    v30 = v8;
    v31 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v32 = v7;
      v11 = v2;
      v12 = (*(v1 + 48) + 16 * v6);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(v1 + 56) + 8 * v6);

      isa = Int._bridgeToObjectiveC()().super.super.isa;
      v17 = [objc_allocWithZone(BMCustomAttributesBasicValue) initWithBoolValue:0 int64Value:isa doubleValue:0 stringValue:0];

      v18 = objc_allocWithZone(BMCustomAttributesNamedValue);
      v19 = v17;
      v20 = String._bridgeToObjectiveC()();
      [v18 initWithName:v20 value:v19];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v21 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v31;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v31 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v22 = *(v4 + 8 * v10);
      if ((v22 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v2 = v11;
      v8 = v30;
      if (v30 != *(v31 + 36))
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (v6 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v10 << 6;
        v25 = v10 + 1;
        v26 = (v29 + 8 * v10);
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            result = sub_100033578(v6, v30, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        result = sub_100033578(v6, v30, 0);
      }

LABEL_4:
      v7 = v32 + 1;
      v6 = v9;
      if (v32 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

char *sub_10002FF14(void *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(char *))
{
  v55 = a3;
  v56 = a4;
  v59 = a2;
  v5 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v48 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v48 - v14;
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  v18 = type metadata accessor for FBKSInteraction.Content();
  v58 = *(v18 - 8);
  v19 = *(v58 + 64);
  v20 = __chkstk_darwin(v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v48 - v23;
  sub_100008714(0, &qword_100083520, BMEvaluationCommonMetadata_ptr);
  v25 = a1;
  v26 = v60;
  v27 = sub_100032C20(v25);
  if (!v26)
  {
    v49 = v9;
    v50 = v24;
    v60 = 0;
    v52 = v12;
    v53 = v27;
    v48 = v22;
    v54 = v25;
    dispatch thunk of FBKSInteraction.originalContent.getter();
    v28 = v58;
    v51 = *(v58 + 48);
    v29 = v18;
    if (v51(v17, 1, v18) == 1)
    {
      sub_1000071C8(v17, &qword_100082CD8, &qword_100068EC8);
      v30 = 0;
      v31 = v59;
    }

    else
    {
      v12 = v50;
      (*(v28 + 32))(v50, v17, v18);
      sub_100008714(0, &qword_100083528, BMTextContent_ptr);
      (*(v28 + 16))(v15, v12, v18);
      (*(v28 + 56))(v15, 0, 1, v18);
      v32 = v60;
      v33 = sub_1000313B4(v15);
      v31 = v59;
      if (v32)
      {
        v34 = v54;

        (*(v28 + 8))(v12, v29);
        return v12;
      }

      v30 = v33;
      v60 = 0;
      (*(v28 + 8))(v12, v29);
    }

    v35 = v52;
    v36 = v54;
    dispatch thunk of FBKSInteraction.generatedContent.getter();

    v37 = v35;
    v38 = v51(v35, 1, v29);
    v39 = v56;
    v12 = v57;
    if (v38 == 1)
    {
      sub_1000071C8(v37, &qword_100082CD8, &qword_100068EC8);
      v40 = 0;
    }

    else
    {
      v41 = v48;
      (*(v28 + 32))(v48, v37, v29);
      sub_100008714(0, v31, v55);
      v42 = v49;
      (*(v28 + 16))(v49, v41, v29);
      (*(v28 + 56))(v42, 0, 1, v29);
      v43 = v60;
      v44 = v39(v42);
      v60 = v43;
      if (v43)
      {
        (*(v28 + 8))(v41, v29);

        return v12;
      }

      v40 = v44;
      (*(v28 + 8))(v41, v29);
    }

    v45 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v46 = v53;
    v12 = [v45 initWithCommonMetadata:v53 originalContent:v30 generatedContent:v40];

    return v12;
  }

  return v12;
}

char *sub_1000303F0(void *a1)
{
  v2 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v43 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v43 - v11;
  __chkstk_darwin(v10);
  v14 = &v43 - v13;
  v15 = type metadata accessor for FBKSInteraction.Content();
  v52 = *(v15 - 8);
  v16 = *(v52 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v43 - v20;
  sub_100008714(0, &qword_100083520, BMEvaluationCommonMetadata_ptr);
  v22 = a1;
  v23 = v53;
  v24 = sub_100032C20(v22);
  if (!v23)
  {
    v44 = v6;
    v45 = v21;
    v53 = 0;
    v47 = v9;
    v48 = v19;
    v50 = v24;
    v49 = v22;
    dispatch thunk of FBKSInteraction.originalContent.getter();
    v25 = v52;
    v46 = *(v52 + 48);
    v26 = v15;
    if (v46(v14, 1, v15) == 1)
    {
      sub_1000071C8(v14, &qword_100082CD8, &qword_100068EC8);
      v27 = 0;
      v29 = v48;
      v28 = v49;
    }

    else
    {
      v9 = v45;
      (*(v25 + 32))(v45, v14, v15);
      sub_100008714(0, &qword_100083548, BMTextImageContent_ptr);
      (*(v25 + 16))(v12, v9, v15);
      (*(v25 + 56))(v12, 0, 1, v15);
      v30 = v53;
      v31 = sub_100032094(v12);
      v29 = v48;
      if (v30)
      {
        v32 = v49;

        (*(v25 + 8))(v9, v26);
        return v9;
      }

      v27 = v31;
      v53 = 0;
      (*(v25 + 8))(v9, v26);
      v28 = v49;
    }

    v33 = v47;
    dispatch thunk of FBKSInteraction.generatedContent.getter();
    v34 = v33;

    v35 = v46(v33, 1, v26);
    v9 = v51;
    if (v35 == 1)
    {
      sub_1000071C8(v34, &qword_100082CD8, &qword_100068EC8);
      v36 = 0;
    }

    else
    {
      (*(v25 + 32))(v29, v34, v26);
      sub_100008714(0, &qword_100083540, BMImageContent_ptr);
      v37 = v44;
      (*(v25 + 16))(v44, v29, v26);
      (*(v25 + 56))(v37, 0, 1, v26);
      v38 = v53;
      v39 = sub_100031A90(v37);
      v53 = v38;
      if (v38)
      {
        (*(v25 + 8))(v29, v26);

        return v9;
      }

      v36 = v39;
      (*(v25 + 8))(v29, v26);
    }

    v40 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v41 = v50;
    v9 = [v40 initWithCommonMetadata:v50 originalContent:v27 generatedContent:v36];

    return v9;
  }

  return v9;
}

id sub_1000308C0(id a1)
{
  v2 = type metadata accessor for FBKSEvaluation.Action();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004F70(&qword_100082808, &qword_100068380);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (v29 - v8);
  v10 = type metadata accessor for FBKSEvaluation.Subject();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = (v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a1;
  FBKSEvaluation.subject.getter();
  v20 = (*(v11 + 88))(v14, v10);
  if (v20 == enum case for FBKSEvaluation.Subject.id(_:))
  {
    (*(v11 + 96))(v14, v10);
  }

  else
  {
    if (v20 != enum case for FBKSEvaluation.Subject.interaction(_:))
    {
      sub_10001BF40();
      swift_allocError();
      *v27 = 12;
      swift_willThrow();

      (*(v11 + 8))(v14, v10);
      return a1;
    }

    (*(v11 + 96))(v14, v10);
    a1 = *v14;
    dispatch thunk of FBKSInteraction.evaluationID.getter();
    if ((*(v16 + 48))(v9, 1, v15) == 1)
    {
      sub_1000071C8(v9, &qword_100082808, &qword_100068380);
      sub_10001BF40();
      swift_allocError();
      *v26 = 12;
      swift_willThrow();

      return a1;
    }

    v14 = v9;
  }

  v21 = v30;
  (*(v16 + 32))(v19, v14, v15);
  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23.super.isa = UUID._bridgeToObjectiveC()().super.isa;
  a1 = v21;
  FBKSEvaluation.action.getter();
  v24 = v29[1];
  v25 = sub_100033310(v5);
  if (v24)
  {
    (*(v16 + 8))(v19, v15);
  }

  else
  {
    a1 = [v22 initWithEvaluationUuid:v23.super.isa userResponse:v25];

    (*(v16 + 8))(v19, v15);
  }

  return a1;
}

char *sub_100030CC4(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v41 = *(v3 - 8);
  v4 = *(v41 + 64);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FBKSInteraction.Content();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v42 = *(v8 + 16);
  v42(&v36 - v13, a1, v7);
  v15 = sub_10003BE00(v14);
  if (v1)
  {
    (*(v8 + 8))(a1, v7);
  }

  else
  {
    v36 = v6;
    v38 = v3;
    v39 = 0;
    sub_10003BBA4(v15);
    v16 = a1;
    v17 = objc_allocWithZone(BMCustomAttributesBasicValue);
    v18 = String._bridgeToObjectiveC()();

    v19 = [v17 initWithBoolValue:0 int64Value:0 doubleValue:0 stringValue:v18];

    sub_100004F70(&qword_100083450, &qword_100069710);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1000695D0;
    v21 = objc_allocWithZone(BMCustomAttributesNamedValue);
    v22 = v19;
    v23 = String._bridgeToObjectiveC()();
    v24 = [v21 initWithName:v23 value:v22];

    v37 = v22;
    *(v20 + 32) = v24;
    v43 = v20;
    v40 = v16;
    v42(v12, v16, v7);
    if ((*(v8 + 88))(v12, v7) == enum case for FBKSInteraction.Content.file(_:))
    {
      (*(v8 + 96))(v12, v7);
      v25 = v41;
      v26 = v36;
      (*(v41 + 32))(v36, v12, v38);
      URL.lastPathComponent.getter();
      v27 = objc_allocWithZone(BMCustomAttributesBasicValue);
      v28 = String._bridgeToObjectiveC()();

      v29 = [v27 initWithBoolValue:0 int64Value:0 doubleValue:0 stringValue:v28];

      v30 = objc_allocWithZone(BMCustomAttributesNamedValue);
      v31 = v29;
      v32 = String._bridgeToObjectiveC()();
      [v30 initWithName:v32 value:v31];

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v25 + 8))(v26, v38);
    }

    else
    {
      (*(v8 + 8))(v12, v7);
    }

    v33 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_100008714(0, &qword_100083518, BMCustomAttributesNamedValue_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v6 = [v33 initWithAttributeDict:isa];

    (*(v8 + 8))(v40, v7);
  }

  return v6;
}

id sub_1000311D8(uint64_t a1, uint64_t a2)
{
  v5 = [v2 attributeDict];
  sub_100008714(0, &qword_100083518, BMCustomAttributesNamedValue_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 name];
      if (v12)
      {
        v13 = v12;
        v14 = a2;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

        if (v15 == a1 && v17 == v14)
        {

          goto LABEL_22;
        }

        a2 = v14;
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v19)
        {
          goto LABEL_22;
        }
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:
  v10 = 0;
LABEL_22:

  v20 = [v10 value];

  return v20;
}

uint64_t *sub_1000313B4(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v55 = type metadata accessor for FBKSInteraction.StructuredValue();
  v5 = *(v55 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v55);
  v57 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v51 - v10;
  v12 = type metadata accessor for FBKSInteraction.Content();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v58 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = (&v51 - v18);
  __chkstk_darwin(v17);
  v21 = &v51 - v20;
  sub_100018B48(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v22 = &qword_100082CD8;
    sub_1000071C8(v11, &qword_100082CD8, &qword_100068EC8);
    sub_10001BF40();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
    sub_1000071C8(a1, &qword_100082CD8, &qword_100068EC8);
    return v22;
  }

  v54 = a1;
  v56 = v1;
  (*(v13 + 32))(v21, v11, v12);
  v24 = *(v13 + 16);
  v53 = v21;
  v25 = v21;
  v26 = v24;
  v24(v19, v25, v12);
  v27 = (*(v13 + 88))(v19, v12);
  if (v27 != enum case for FBKSInteraction.Content.text(_:) && v27 != enum case for FBKSInteraction.Content.sourceCode(_:))
  {
    if (v27 == enum case for FBKSInteraction.Content.structured(_:))
    {
      v52 = v26;
      (*(v13 + 96))(v19, v12);
      v38 = v5;
      v39 = v55;
      (*(v5 + 32))(v57, v19, v55);
      v40 = type metadata accessor for JSONEncoder();
      v41 = *(v40 + 48);
      v42 = *(v40 + 52);
      swift_allocObject();
      v43 = JSONEncoder.init()();
      sub_100033520();
      v22 = v43;
      v44 = v56;
      v45 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v56 = v44;
      if (v44)
      {
      }

      else
      {
        v48 = v45;
        v22 = v46;

        static String.Encoding.utf8.getter();
        String.init(data:encoding:)();
        if (v49)
        {
          (*(v38 + 8))(v57, v39);
          sub_100013C98(v48, v22);
          v26 = v52;
          goto LABEL_6;
        }

        sub_10001BF40();
        swift_allocError();
        *v50 = 9;
        swift_willThrow();
        sub_100013C98(v48, v22);
      }

      sub_1000071C8(v54, &qword_100082CD8, &qword_100068EC8);
      (*(v38 + 8))(v57, v39);
      (*(v13 + 8))(v53, v12);
      return v22;
    }

    if (v27 != enum case for FBKSInteraction.Content.notification(_:) && v27 != enum case for FBKSInteraction.Content.mailMessage(_:) && v27 != enum case for FBKSInteraction.Content.html(_:))
    {
      sub_10001BF40();
      swift_allocError();
      *v47 = 1;
      swift_willThrow();
      sub_1000071C8(v54, &qword_100082CD8, &qword_100068EC8);
      v22 = *(v13 + 8);
      (v22)(v53, v12);
      (v22)(v19, v12);
      return v22;
    }
  }

  (*(v13 + 96))(v19, v12);
  v29 = *v19;
  v28 = v19[1];
LABEL_6:
  v30 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v31 = String._bridgeToObjectiveC()();

  v22 = sub_100008714(0, &qword_100083530, BMCustomAttributes_ptr);
  v32 = v58;
  v33 = v53;
  v26(v58, v53, v12);
  v34 = v56;
  v35 = sub_100030CC4(v32);
  if (v34)
  {
  }

  else
  {
    v37 = v35;
    v22 = [v30 initWithText:v31 metadata:v35];
  }

  sub_1000071C8(v54, &qword_100082CD8, &qword_100068EC8);
  (*(v13 + 8))(v33, v12);
  return v22;
}

uint64_t *sub_100031A90(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for FBKSInteraction.Content();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v47 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = (&v43 - v17);
  __chkstk_darwin(v16);
  v20 = &v43 - v19;
  sub_100018B48(a1, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    v21 = &qword_100082CD8;
    sub_1000071C8(v10, &qword_100082CD8, &qword_100068EC8);
    sub_10001BF40();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();
    sub_1000071C8(a1, &qword_100082CD8, &qword_100068EC8);
  }

  else
  {
    v46 = a1;
    (*(v12 + 32))(v20, v10, v11);
    v23 = *(v12 + 16);
    v23(v18, v20, v11);
    v24 = (*(v12 + 88))(v18, v11);
    v44 = v23;
    v45 = v20;
    if (v24 == enum case for FBKSInteraction.Content.file(_:))
    {
      (*(v12 + 96))(v18, v11);
      v25 = *(v3 + 32);
      v21 = (v3 + 32);
      v25(v6, v18, v2);
      v26 = v49;
      v27 = Data.init(contentsOf:options:)();
      v29 = (v21 - 3);
      v49 = v26;
      if (v26)
      {
        sub_1000071C8(v46, &qword_100082CD8, &qword_100068EC8);
        (*v29)(v6, v2);
        (*(v12 + 8))(v45, v11);
        return v21;
      }

      v32 = v27;
      v33 = v28;
      (*v29)(v6, v2);
      v30 = v32;
      v31 = v33;
    }

    else
    {
      if (v24 != enum case for FBKSInteraction.Content.image(_:) && v24 != enum case for FBKSInteraction.Content.audio(_:) && v24 != enum case for FBKSInteraction.Content.handwriting(_:) && v24 != enum case for FBKSInteraction.Content.sketch(_:) && v24 != enum case for FBKSInteraction.Content.video(_:) && v24 != enum case for FBKSInteraction.Content.emoji(_:))
      {
        sub_10001BF40();
        swift_allocError();
        *v42 = 1;
        swift_willThrow();
        sub_1000071C8(v46, &qword_100082CD8, &qword_100068EC8);
        v21 = *(v12 + 8);
        (v21)(v20, v11);
        (v21)(v18, v11);
        return v21;
      }

      (*(v12 + 96))(v18, v11);
      v30 = *v18;
      v31 = v18[1];
    }

    v48 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v34.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v35 = v30;
    v21 = sub_100008714(0, &qword_100083530, BMCustomAttributes_ptr);
    v36 = v47;
    v37 = v45;
    v44(v47, v45, v11);
    v38 = v49;
    v39 = sub_100030CC4(v36);
    if (v38)
    {

      sub_100013C98(v35, v31);
    }

    else
    {
      v41 = v39;
      v21 = [v48 initWithImageData:v34.super.isa metadata:v39];

      sub_100013C98(v35, v31);
    }

    sub_1000071C8(v46, &qword_100082CD8, &qword_100068EC8);
    (*(v12 + 8))(v37, v11);
  }

  return v21;
}

uint64_t *sub_100032094(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for String.Encoding();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v94 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FBKSInteraction.StructuredValue();
  v11 = *(v10 - 8);
  v96 = v10;
  v97 = v11;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v93 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v95 = &v87 - v15;
  v16 = sub_100004F70(&qword_100082CD8, &qword_100068EC8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v87 - v18;
  v20 = type metadata accessor for FBKSInteraction.Content();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v98 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = (&v87 - v26);
  __chkstk_darwin(v25);
  v29 = &v87 - v28;
  sub_100018B48(a1, v19);
  if ((*(v21 + 48))(v19, 1, v20) != 1)
  {
    v92 = a1;
    (*(v21 + 32))(v29, v19, v20);
    v31 = *(v21 + 16);
    v99 = v29;
    v90 = v31;
    v31(v27, v29, v20);
    v32 = (*(v21 + 88))(v27, v20);
    v33 = v21;
    v91 = v21 + 16;
    if (v32 == enum case for FBKSInteraction.Content.file(_:))
    {
      (*(v21 + 96))(v27, v20);
      (*(v3 + 32))(v6, v27, v2);
      v97 = URL.lastPathComponent.getter();
      v34 = v100;
      v35 = Data.init(contentsOf:options:)();
      v37 = v21;
      v38 = v34;
      v39 = (v3 + 8);
      if (v34)
      {

        sub_1000071C8(v92, &qword_100082CD8, &qword_100068EC8);
        (*v39)(v6, v2);
        (*(v33 + 8))(v99, v20);
        return v6;
      }

      v43 = v35;
      v44 = v36;
      (*v39)(v6, v2);
      v41 = v43;
      v89 = v37;
      v42 = v44;
      goto LABEL_11;
    }

    v89 = v21;
    if (v32 == enum case for FBKSInteraction.Content.image(_:) || (v40 = v99, v32 == enum case for FBKSInteraction.Content.sketch(_:)))
    {
      (*(v21 + 96))(v27, v20);
      v41 = *v27;
      v42 = v27[1];
    }

    else
    {
      if (v32 != enum case for FBKSInteraction.Content.imageText(_:) && v32 != enum case for FBKSInteraction.Content.sketchText(_:))
      {
        if (v32 != enum case for FBKSInteraction.Content.imageStructured(_:))
        {
          if (v32 != enum case for FBKSInteraction.Content.sketchStructured(_:))
          {
            sub_10001BF40();
            swift_allocError();
            *v80 = 1;
            swift_willThrow();
            sub_1000071C8(v92, &qword_100082CD8, &qword_100068EC8);
            v6 = *(v21 + 8);
            (v6)(v40, v20);
            (v6)(v27, v20);
            return v6;
          }

          (*(v21 + 96))(v27, v20);
          v67 = v27[1];
          v88 = *v27;
          v95 = v67;
          v68 = v27 + *(sub_100004F70(&qword_100083550, &qword_100069800) + 48);
          v69 = v93;
          v70 = v96;
          (*(v97 + 32))(v93, v68, v96);
          v71 = type metadata accessor for JSONEncoder();
          v72 = *(v71 + 48);
          v73 = *(v71 + 52);
          swift_allocObject();
          v74 = JSONEncoder.init()();
          sub_100033520();
          v6 = v74;
          v75 = v100;
          v76 = dispatch thunk of JSONEncoder.encode<A>(_:)();
          if (v75)
          {
            v78 = v33;

            v79 = v92;
          }

          else
          {
            v83 = v76;
            v6 = v77;

            static String.Encoding.utf8.getter();
            String.init(data:encoding:)();
            if (v84)
            {
              (*(v97 + 8))(v69, v96);
              sub_100013C98(v83, v6);
              v38 = 0;
              v41 = v88;
              v42 = v95;
              goto LABEL_11;
            }

            v78 = v89;
            sub_10001BF40();
            swift_allocError();
            *v86 = 9;
            swift_willThrow();
            sub_100013C98(v83, v6);
            v79 = v92;
            v70 = v96;
          }

          sub_100013C98(v88, v95);
          sub_1000071C8(v79, &qword_100082CD8, &qword_100068EC8);
          (*(v97 + 8))(v69, v70);
          (*(v78 + 8))(v99, v20);
          return v6;
        }

        (*(v21 + 96))(v27, v20);
        v42 = v27[1];
        v88 = *v27;
        v56 = sub_100004F70(&qword_100083558, &qword_100069808);
        v57 = v96;
        v58 = v27 + *(v56 + 48);
        v59 = v95;
        (*(v97 + 32))(v95, v58, v96);
        v60 = type metadata accessor for JSONEncoder();
        v61 = *(v60 + 48);
        v62 = *(v60 + 52);
        swift_allocObject();
        v63 = JSONEncoder.init()();
        sub_100033520();
        v6 = v63;
        v64 = v100;
        v65 = dispatch thunk of JSONEncoder.encode<A>(_:)();
        v38 = v64;
        if (v64)
        {
        }

        else
        {
          v81 = v65;
          v6 = v66;

          static String.Encoding.utf8.getter();
          String.init(data:encoding:)();
          if (v82)
          {
            (*(v97 + 8))(v95, v96);
            sub_100013C98(v81, v6);
            v41 = v88;
            goto LABEL_11;
          }

          sub_10001BF40();
          swift_allocError();
          *v85 = 9;
          swift_willThrow();
          sub_100013C98(v81, v6);
          v59 = v95;
          v57 = v96;
        }

        sub_100013C98(v88, v42);
        sub_1000071C8(v92, &qword_100082CD8, &qword_100068EC8);
        (*(v97 + 8))(v59, v57);
LABEL_13:
        (*(v89 + 8))(v99, v20);
        return v6;
      }

      (*(v21 + 96))(v27, v20);
      v41 = *v27;
      v42 = v27[1];
      v54 = v27[2];
      v55 = v27[3];
    }

    v38 = v100;
LABEL_11:
    v45 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v46 = String._bridgeToObjectiveC()();

    v47.super.isa = Data._bridgeToObjectiveC()().super.isa;
    v48 = v42;
    v49 = v41;
    v6 = sub_100008714(0, &qword_100083530, BMCustomAttributes_ptr);
    v50 = v98;
    v90(v98, v99, v20);
    v51 = sub_100030CC4(v50);
    if (!v38)
    {
      v53 = v51;
      v6 = [v45 initWithText:v46 imageData:v47.super.isa metadata:v51];

      sub_100013C98(v49, v48);
      sub_1000071C8(v92, &qword_100082CD8, &qword_100068EC8);
      (*(v89 + 8))(v99, v20);
      return v6;
    }

    sub_100013C98(v49, v48);
    sub_1000071C8(v92, &qword_100082CD8, &qword_100068EC8);
    goto LABEL_13;
  }

  v6 = &qword_100082CD8;
  sub_1000071C8(v19, &qword_100082CD8, &qword_100068EC8);
  sub_10001BF40();
  swift_allocError();
  *v30 = 3;
  swift_willThrow();
  sub_1000071C8(a1, &qword_100082CD8, &qword_100068EC8);
  return v6;
}

id sub_100032B70(uint64_t a1, uint64_t a2)
{
  result = [v2 metadata];
  if (result)
  {
    v6 = result;
    v7 = sub_1000311D8(a1, a2);
    if (v7 && (v8 = v7, v9 = [v7 stringValue], v8, v9))
    {
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v10;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_100032C20(void *a1)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v68 = *(v6 - 8);
  v7 = *(v68 + 64);
  __chkstk_darwin(v6);
  v67 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100004F70(&qword_100082D30, &qword_100069058);
  v9 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v11 = &v59 - v10;
  v12 = sub_100004F70(&qword_100082808, &qword_100068380);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v69 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v59 - v16;
  v18 = a1;
  dispatch thunk of FBKSInteraction.donationID.getter();
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v65 = *(v20 + 48);
  v66 = v20 + 48;
  if (v65(v17, 1, v19) == 1)
  {

    sub_1000071C8(v17, &qword_100082808, &qword_100068380);
    sub_10001BF40();
    swift_allocError();
    *v21 = 12;
    swift_willThrow();

    return v18;
  }

  v59 = v20;
  v60 = v19;
  sub_1000071C8(v17, &qword_100082808, &qword_100068380);
  v22 = dispatch thunk of FBKSInteraction.auxiliaryMetrics.getter();
  v63 = v4;
  v61 = v6;
  if (v22)
  {
    sub_10002FBDC(v22);
  }

  v23 = objc_allocWithZone(BMCustomAttributes);
  sub_100008714(0, &qword_100083518, BMCustomAttributesNamedValue_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v23 initWithAttributeDict:isa];

  v73 = _swiftEmptyArrayStorage;
  v26 = dispatch thunk of FBKSInteraction.prefillQuestions.getter();
  v64 = v18;
  v62 = v25;
  if (!v26)
  {
LABEL_18:
    v43 = v67;
    dispatch thunk of FBKSInteraction.featureDomain.getter();
    FBKSInteraction.FeatureDomain.description.getter();
    (*(v68 + 8))(v43, v61);
    v44 = String._bridgeToObjectiveC()();

    dispatch thunk of FBKSInteraction.bundleID.getter();
    v45 = v69;
    if (v46)
    {
      v72 = String._bridgeToObjectiveC()();
    }

    else
    {
      v72 = 0;
    }

    dispatch thunk of FBKSInteraction.donationID.getter();
    v47 = v60;
    if (v65(v45, 1, v60) == 1)
    {
      v48 = 0;
    }

    else
    {
      v48 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v59 + 8))(v45, v47);
    }

    dispatch thunk of FBKSInteraction.isHighPriority.getter();
    v49.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
    dispatch thunk of FBKSInteraction.diagnostics.getter();
    v50 = v18;
    v52 = v51;

    v70 = v3;
    v53 = v44;
    if (v52)
    {
      v54 = String._bridgeToObjectiveC()();
    }

    else
    {
      v54 = 0;
    }

    v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    sub_100008714(0, &qword_100083510, BMEvaluationCommonMetadataQuestionAnswer_ptr);
    v56 = Array._bridgeToObjectiveC()().super.isa;
    v57 = v62;
    v58 = v72;
    v18 = [v55 initWithFeatureDomain:v53 bundleId:v72 evaluationUuid:v48 isHighPriority:v49.super.super.isa diagnostics:v54 prefilledQuestions:v56 auxiliaryAttributes:v62 systemBuild:0 modelVersion:0];

    return v18;
  }

  v27 = v26;
  v70 = v2;
  v28 = v26 + 64;
  v29 = 1 << *(v26 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v26 + 64);
  v32 = (v29 + 63) >> 6;

  v34 = 0;
  v71 = result;
  if (v31)
  {
    goto LABEL_13;
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v32)
    {

      v3 = v70;
      v18 = v64;
      goto LABEL_18;
    }

    v31 = *(v28 + 8 * v35);
    ++v34;
    if (v31)
    {
      v34 = v35;
      do
      {
LABEL_13:
        v36 = __clz(__rbit64(v31)) | (v34 << 6);
        v37 = *(v27 + 48);
        v38 = type metadata accessor for FBKSForm.Question();
        (*(*(v38 - 8) + 16))(v11, v37 + *(*(v38 - 8) + 72) * v36, v38);
        *&v11[*(v72 + 48)] = *(*(v27 + 56) + 8 * v36);

        FBKSForm.Question.stringValue.getter();
        v39 = v11;
        v40 = objc_allocWithZone(BMEvaluationCommonMetadataQuestionAnswer);
        v41 = String._bridgeToObjectiveC()();

        v42 = Array._bridgeToObjectiveC()().super.isa;
        [v40 initWithQuestion:v41 answer:v42];

        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v31 &= v31 - 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = sub_1000071C8(v39, &qword_100082D30, &qword_100069058);
        v11 = v39;
        v27 = v71;
      }

      while (v31);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100033310(uint64_t a1)
{
  v2 = type metadata accessor for FBKSEvaluation.Action();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for FBKSEvaluation.Action.thumbsUp(_:))
  {
    v6 = 2;
  }

  else if (v7 == enum case for FBKSEvaluation.Action.thumbsDown(_:))
  {
    v6 = 3;
  }

  else if (v7 == enum case for FBKSEvaluation.Action.reportConcern(_:))
  {
    v6 = 4;
  }

  else if (v7 == enum case for FBKSEvaluation.Action.skip(_:))
  {
    v6 = 5;
  }

  else if (v7 == enum case for FBKSEvaluation.Action.invalidData(_:))
  {
    v6 = 6;
  }

  else
  {
    if (v7 != enum case for FBKSEvaluation.Action.contentDeleted(_:))
    {
      sub_10001BF40();
      swift_allocError();
      *v9 = 11;
      swift_willThrow();
      v10 = *(v3 + 8);
      v10(a1, v2);
      v10(v6, v2);
      return v6;
    }

    v6 = 7;
  }

  (*(v3 + 8))(a1, v2);
  return v6;
}

unint64_t sub_100033520()
{
  result = qword_100083538;
  if (!qword_100083538)
  {
    type metadata accessor for FBKSInteraction.StructuredValue();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083538);
  }

  return result;
}

uint64_t sub_100033578(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100033588()
{
  v0 = type metadata accessor for LongTermPersistence();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  v4 = OBJC_IVAR____TtC9feedbackd19LongTermPersistence____lazy_storage___feedbackdDirectory;
  v5 = sub_100004F70(&unk_1000835A8, qword_100069860);
  result = (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  qword_100085E18 = v3;
  return result;
}

uint64_t sub_10003361C()
{
  v0 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002D00(v9, SharedLog);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_1000049B8(0x6C416574656C6564, 0xEF2928617461446CLL, &v23);
    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s", v12, 0xCu);
    sub_100005ED8(v13);
  }

  sub_100038194(0, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_1000071C8(v3, &unk_1000835A8, qword_100069860);
  }

  (*(v5 + 32))(v8, v3, v4);
  v15 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v16);
  v18 = v17;
  v23 = 0;
  v19 = [v15 removeItemAtURL:v17 error:&v23];

  if (v19)
  {
    v20 = *(v5 + 8);
    v21 = v23;
    return v20(v8, v4);
  }

  else
  {
    v22 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v5 + 8))(v8, v4);
  }
}

void sub_100033994(void *a1, void *a2)
{
  v42 = a1;
  v3 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v39 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v40 = &v39 - v13;
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_100002D00(v14, SharedLog);

  v41 = v15;
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v39 = v7;
    v19 = v18;
    v44 = swift_slowAlloc();
    *v19 = 136446466;
    *(v19 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006BE30, &v44);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1000049B8(v42, a2, &v44);
    _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s [%{public}s]", v19, 0x16u);
    swift_arrayDestroy();

    v7 = v39;
  }

  v20 = static FBKSError.xpcSafeNSError(error:)();
  v21 = objc_opt_self();
  v44 = 0;
  v22 = [v21 archivedDataWithRootObject:v20 requiringSecureCoding:1 error:&v44];
  v23 = v44;
  if (v22)
  {
    v24 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    sub_1000387DC(v42, a2, 0x73726F727265, 0xE600000000000000, 1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_100013C98(v24, v26);
      sub_1000071C8(v6, &unk_1000835A8, qword_100069860);
    }

    else
    {
      v29 = v40;
      (*(v8 + 32))(v40, v6, v7);
      sub_100033F4C(v12);
      Data.write(to:options:)();
      sub_100013C98(v24, v26);

      v38 = *(v8 + 8);
      v38(v12, v7);
      v38(v29, v7);
    }
  }

  else
  {
    v27 = v23;
    v28 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136446210;
      v43 = v28;
      swift_errorRetain();
      sub_100004F70(&unk_1000833F0, &unk_100068F00);
      v35 = String.init<A>(describing:)();
      v37 = sub_1000049B8(v35, v36, &v44);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to save failure to collect: %{public}s", v33, 0xCu);
      sub_100005ED8(v34);
    }

    else
    {
    }
  }
}

uint64_t sub_100033F4C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for URL.DirectoryHint();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for URL();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v23);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  Date.init()();
  isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v7 + 8))(v10, v6);
  v17 = [v15 stringFromDate:isa];

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  v25 = v18;
  v26 = v20;
  (*(v2 + 104))(v5, enum case for URL.DirectoryHint.notDirectory(_:), v1);
  sub_1000070C4();
  URL.appending<A>(path:directoryHint:)();
  (*(v2 + 8))(v5, v1);

  URL.appendingPathExtension(_:)();
  return (*(v11 + 8))(v14, v23);
}

void sub_100034220(void *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for URL.DirectoryHint();
  v68 = *(v6 - 8);
  v69 = v6;
  v7 = *(v68 + 64);
  __chkstk_darwin(v6);
  v66 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v71 = &v65 - v11;
  v12 = type metadata accessor for URL();
  v74 = *(v12 - 8);
  v75 = v12;
  v13 = *(v74 + 64);
  v14 = __chkstk_darwin(v12);
  v65 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v67 = &v65 - v17;
  __chkstk_darwin(v16);
  v73 = &v65 - v18;
  v19 = type metadata accessor for Date();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100002D00(v24, SharedLog);

  v70 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v78[0] = swift_slowAlloc();
    *v28 = 136446722;
    *(v28 + 4) = sub_1000049B8(0xD000000000000039, 0x800000010006BDF0, v78);
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_1000049B8(a1, a2, v78);
    *(v28 + 22) = 2050;
    *(v28 + 24) = a3;
    _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s [%{public}s] id: [%{public}ld] ", v28, 0x20u);
    swift_arrayDestroy();
  }

  v29 = type metadata accessor for FeedbackSubmission();
  v30 = objc_allocWithZone(v29);
  v31 = &v30[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_formIdentifier];
  *v31 = a1;
  *(v31 + 1) = a2;

  Date.init()();
  (*(v20 + 32))(&v30[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_date], v23, v19);
  *&v30[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_feedbackId] = a3;
  v32 = [objc_opt_self() swVers];
  v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  v36 = &v30[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_build];
  *v36 = v33;
  v36[1] = v35;
  v77.receiver = v30;
  v77.super_class = v29;
  v37 = objc_msgSendSuper2(&v77, "init");
  v38 = objc_opt_self();
  v78[0] = 0;
  v39 = [v38 archivedDataWithRootObject:v37 requiringSecureCoding:1 error:v78];
  v40 = v78[0];
  if (v39)
  {
    v41 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    v44 = v71;
    sub_1000387DC(a1, a2, 0x657474696D627573, 0xE900000000000064, 1, v71);
    if ((*(v74 + 48))(v44, 1, v75) == 1)
    {

      sub_100013C98(v41, v43);
      sub_1000071C8(v44, &unk_1000835A8, qword_100069860);
    }

    else
    {
      v72 = v37;
      v47 = v74;
      (*(v74 + 32))(v73, v44, v75);
      v78[0] = a3;
      v78[0] = dispatch thunk of CustomStringConvertible.description.getter();
      v78[1] = v48;
      v50 = v68;
      v49 = v69;
      v51 = v43;
      v52 = v66;
      (*(v68 + 104))(v66, enum case for URL.DirectoryHint.notDirectory(_:), v69);
      sub_1000070C4();
      v53 = v65;
      URL.appending<A>(path:directoryHint:)();
      (*(v50 + 8))(v52, v49);

      v54 = v67;
      URL.appendingPathExtension(_:)();
      v55 = *(v47 + 8);
      v55(v53, v75);
      Data.write(to:options:)();
      sub_100013C98(v41, v51);

      v64 = v75;
      v55(v54, v75);
      v55(v73, v64);
    }
  }

  else
  {
    v45 = v40;
    v46 = _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v78[0] = v60;
      *v59 = 136446210;
      v76 = v46;
      swift_errorRetain();
      sub_100004F70(&unk_1000833F0, &unk_100068F00);
      v61 = String.init<A>(describing:)();
      v63 = sub_1000049B8(v61, v62, v78);

      *(v59 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v56, v57, "Failed to save feedback: %{public}s", v59, 0xCu);
      sub_100005ED8(v60);
    }

    else
    {
    }
  }
}

uint64_t sub_100034A7C(void *a1, void *a2)
{
  v3 = v2;
  v6 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v27 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v27 - v16;
  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = sub_100002D00(v18, SharedLog);

  v29 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v28 = v15;
    v23 = v22;
    v24 = swift_slowAlloc();
    v27[1] = v3;
    v30[0] = v24;
    *v23 = 136446466;
    *(v23 + 4) = sub_1000049B8(0xD000000000000025, 0x800000010006BDC0, v30);
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_1000049B8(a1, a2, v30);
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s [%{public}s]", v23, 0x16u);
    swift_arrayDestroy();

    v15 = v28;
  }

  sub_1000387DC(a1, a2, 0x64656E696C636564, 0xE800000000000000, 1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000071C8(v9, &unk_1000835A8, qword_100069860);
  }

  (*(v11 + 32))(v17, v9, v10);
  sub_100033F4C(v15);
  Data.write(to:options:)();
  v26 = *(v11 + 8);
  v26(v15, v10);
  return (v26)(v17, v10);
}

id *sub_100034EE0(void *a1, void *a2)
{
  v24 = type metadata accessor for Date();
  v4 = *(v24 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v24);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v8 = sub_1000362DC(a1, a2, 0x657474696D627573, 0xE900000000000064);
  v9 = v8;
  if (!(v8 >> 62))
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_11:

    return _swiftEmptyArrayStorage;
  }

  v10 = _CocoaArrayWrapper.endIndex.getter();
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_3:
  v26 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (v10 < 0)
  {
    __break(1u);
  }

  else
  {
    v12 = 0;
    v22 = v9 & 0xC000000000000001;
    v23 = v9;
    v13 = (v4 + 16);
    do
    {
      if (v22)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      ++v12;
      (*v13)(v7, &v14[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_date], v24);
      v16 = *&v15[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_build];
      v17 = *&v15[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_build + 8];
      v18 = *&v15[OBJC_IVAR____TtC9feedbackd18FeedbackSubmission_feedbackId];
      v19 = objc_allocWithZone(type metadata accessor for FBKSFeedback());

      FBKSFeedback.init(formIdentifier:submissionDate:build:id:)();

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v20 = v26[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v9 = v23;
    }

    while (v10 != v12);

    return v26;
  }

  return result;
}

id *sub_100035140(void *a1, void *a2)
{
  v4 = sub_100004F70(&qword_1000836B0, &qword_1000698A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = &v14 - v7;
  v9 = sub_100037240(a1, a2, 0x73726F727265, 0xE600000000000000);
  v10 = v9[2];
  if (v10)
  {
    v16 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v11 = 0;
    v14 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    while (v11 < v9[2])
    {
      sub_10000C0A0(&v14[*(v5 + 72) * v11], v8, &qword_1000836B0, &qword_1000698A8);
      sub_100035328(v8, &v15);
      sub_1000071C8(v8, &qword_1000836B0, &qword_1000698A8);
      ++v11;
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = v16[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v10 == v11)
      {

        return v16;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return result;
}

void sub_100035328(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v34 = a2;
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v33 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004F70(&qword_1000836B0, &qword_1000698A8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v27 - v8);
  sub_10000C0A0(a1, &v27 - v8, &qword_1000836B0, &qword_1000698A8);
  v10 = *v9;
  v32 = v6;
  v11 = *(v6 + 48);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  v30 = v13 + 8;
  v31 = v14;
  v14(v9 + v11, v12);
  v15 = [v10 userInfo];
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v16 + 16))
  {

LABEL_8:
    v28 = 0x6E776F6E6B6E55;
    v29 = 0xE700000000000000;
    goto LABEL_9;
  }

  v19 = a1;
  v20 = sub_10005BCB0(v17, v18);
  v22 = v21;

  if ((v22 & 1) == 0)
  {

    goto LABEL_7;
  }

  sub_100007018(*(v16 + 56) + 32 * v20, v37);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    a1 = v19;
    goto LABEL_8;
  }

  v28 = v35;
  v29 = v36;
  a1 = v19;
LABEL_9:
  [v10 code];
  v23 = [v10 domain];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10000C0A0(a1, v9, &qword_1000836B0, &qword_1000698A8);
  v24 = *(v32 + 48);
  sub_100035648(v33);
  v31(v9 + v24, v12);
  v25 = objc_allocWithZone(type metadata accessor for FBKSCampaignError());
  v26 = FBKSCampaignError.init(code:domain:errorDescription:date:)();

  *v34 = v26;
}

void sub_100035648(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100004F70(&unk_100083410, &qword_100068D50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v45 - v11;
  v51[0] = URL.lastPathComponent.getter();
  v51[1] = v13;
  v49 = 0x7473696C702ELL;
  v50 = 0xE600000000000000;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_1000070C4();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v14 = [objc_allocWithZone(NSISO8601DateFormatter) init];
  v15 = String._bridgeToObjectiveC()();

  v16 = [v14 dateFromString:v15];

  if (v16)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v17 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v18 = String._bridgeToObjectiveC()();

    v51[0] = 0;
    v19 = [v17 attributesOfItemAtPath:v18 error:v51];

    v20 = v51[0];
    if (v19)
    {
      v46 = a1;
      type metadata accessor for FileAttributeKey(0);
      sub_100039420(&qword_1000829D8, type metadata accessor for FileAttributeKey);
      v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v20;

      if (*(v21 + 16) && (v23 = sub_10005BE74(NSFileCreationDate), (v24 & 1) != 0))
      {
        sub_100007018(*(v21 + 56) + 32 * v23, v51);

        v25 = type metadata accessor for Date();
        v26 = swift_dynamicCast();
        v27 = *(v25 - 8);
        (*(v27 + 56))(v12, v26 ^ 1u, 1, v25);
        if ((*(v27 + 48))(v12, 1, v25) != 1)
        {

          (*(v27 + 32))(v46, v12, v25);
          return;
        }
      }

      else
      {

        v28 = type metadata accessor for Date();
        (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
      }

      sub_1000071C8(v12, &unk_100083410, &qword_100068D50);
      if (qword_1000826B8 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100002D00(v29, SharedLog);
      (*(v5 + 16))(v8, v2, v4);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v51[0] = v33;
        *v32 = 136446210;
        sub_100039420(&qword_1000836B8, &type metadata accessor for URL);
        v34 = dispatch thunk of CustomStringConvertible.description.getter();
        v36 = v35;
        (*(v5 + 8))(v8, v4);
        v37 = sub_1000049B8(v34, v36, v51);

        *(v32 + 4) = v37;
        _os_log_impl(&_mh_execute_header, v30, v31, "Error getting date from url [%{public}s]", v32, 0xCu);
        sub_100005ED8(v33);
      }

      else
      {

        (*(v5 + 8))(v8, v4);
      }

      Date.init()();
    }

    else
    {
      v38 = v51[0];
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1000826B8 != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      sub_100002D00(v39, SharedLog);
      swift_errorRetain();
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        *v42 = 138543362;
        swift_errorRetain();
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v42 + 4) = v44;
        *v43 = v44;
        _os_log_impl(&_mh_execute_header, v40, v41, "Error getting date from url [%{public}@]", v42, 0xCu);
        sub_1000071C8(v43, &qword_100082708, &qword_100068320);
      }

      Date.init()();
    }
  }
}

uint64_t sub_100035DAC(void *a1, void *a2)
{
  v4 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v39 - v14;
  sub_1000387DC(a1, a2, 0x64656E696C636564, 0xE800000000000000, 0, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000071C8(v7, &unk_1000835A8, qword_100069860);
    return 0;
  }

  (*(v9 + 32))(v15, v7, v8);
  v17 = objc_opt_self();

  v18 = [v17 defaultManager];
  sub_100004F70(&qword_1000836A8, &qword_1000698A0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100069110;
  *(v19 + 32) = NSURLIsDirectoryKey;
  v20 = NSURLIsDirectoryKey;
  v21 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v21)
  {
    if (qword_1000826B8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100002D00(v29, SharedLog);
    (*(v9 + 16))(v13, v15, v8);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136446210;
      v39 = URL.path.getter();
      v35 = v34;
      v36 = *(v9 + 8);
      v36(v13, v8);
      v37 = sub_1000049B8(v39, v35, &v40);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed to read directory [%{public}s]", v32, 0xCu);
      sub_100005ED8(v33);

      v36(v15, v8);
    }

    else
    {

      v38 = *(v9 + 8);
      v38(v13, v8);
      v38(v15, v8);
    }

    return 0;
  }

  v22 = [v21 allObjects];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = *(v23 + 16);

  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100002D00(v24, SharedLog);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 134349056;
    *(v27 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v25, v26, "Declined count [%{public}ld]", v27, 0xCu);
  }

  (*(v9 + 8))(v15, v8);
  return v16;
}

id *sub_1000362DC(void *a1, void *a2, void *a3, unint64_t a4)
{
  v8 = sub_100004F70(&qword_1000836C8, &qword_1000698B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v25 - v14;
  v16 = sub_1000364F4(a1, a2, a3, a4);
  v17 = v16[2];
  if (v17)
  {
    v27 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v18 = v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v19 = *(v9 + 72);
    v25[1] = v16;
    v26 = v19;
    do
    {
      sub_10000C0A0(v18, v15, &qword_1000836C8, &qword_1000698B0);
      sub_100039468(v15, v13, &qword_1000836C8, &qword_1000698B0);
      v20 = *v13;
      v21 = *(v8 + 48);
      v22 = type metadata accessor for URL();
      (*(*(v22 - 8) + 8))(&v13[v21], v22);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v23 = v27[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v18 += v26;
      --v17;
    }

    while (v17);

    return v27;
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }
}

id *sub_1000364F4(void *a1, void *a2, void *a3, unint64_t a4)
{
  v111 = sub_100004F70(&qword_1000836C8, &qword_1000698B0);
  v110 = *(v111 - 8);
  v8 = *(v110 + 64);
  v9 = __chkstk_darwin(v111);
  v113 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v109 = &v102 - v12;
  __chkstk_darwin(v11);
  v112 = (&v102 - v13);
  v14 = type metadata accessor for NSFastEnumerationIterator();
  v114 = *(v14 - 8);
  v115 = v14;
  v15 = *(v114 + 64);
  __chkstk_darwin(v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v102 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v116 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v124 = &v102 - v30;
  v31 = __chkstk_darwin(v29);
  v121 = (&v102 - v32);
  __chkstk_darwin(v31);
  v34 = &v102 - v33;
  v35 = a4;
  v37 = v36;
  sub_1000387DC(a1, a2, a3, v35, 0, v24);
  if ((*(v37 + 48))(v24, 1, v25) == 1)
  {
    sub_1000071C8(v24, &unk_1000835A8, qword_100069860);
    return _swiftEmptyArrayStorage;
  }

  v122 = *(v37 + 32);
  v123 = v37 + 32;
  v122(v34, v24, v25);
  v39 = objc_opt_self();

  v40 = [v39 defaultManager];
  sub_100004F70(&qword_1000836A8, &qword_1000698A0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100069110;
  *(v41 + 32) = NSURLIsDirectoryKey;
  v42 = NSURLIsDirectoryKey;
  v43 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v43)
  {
    if (qword_1000826B8 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_100002D00(v88, SharedLog);
    v89 = v121;
    (*(v37 + 16))(v121, v34, v25);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v127 = v93;
      *v92 = 136446210;
      v94 = URL.path.getter();
      v95 = v34;
      v96 = v37;
      v98 = v97;
      v99 = *(v96 + 8);
      v99(v89, v25);
      v100 = sub_1000049B8(v94, v98, &v127);

      *(v92 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v90, v91, "Failed to read directory [%{public}s]", v92, 0xCu);
      sub_100005ED8(v93);

      v99(v95, v25);
    }

    else
    {

      v101 = *(v37 + 8);
      v101(v89, v25);
      v101(v34, v25);
    }

    return _swiftEmptyArrayStorage;
  }

  v104 = v43;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  v105 = v37;
  if (v128)
  {
    v45 = 0;
    v46 = v37;
    v47 = (v37 + 56);
    v121 = (v46 + 8);
    v107 = _swiftEmptyArrayStorage;
    v106 = (v46 + 16);
    *&v44 = 136446210;
    v118 = v44;
    v119 = v34;
    v120 = v17;
    v48 = v124;
    v117 = v22;
    while (1)
    {
      while (1)
      {
        v49 = swift_dynamicCast();
        v50 = *v47;
        if (v49)
        {
          break;
        }

        v50(v22, 1, 1, v25);
        sub_1000071C8(v22, &unk_1000835A8, qword_100069860);
LABEL_8:
        NSFastEnumerationIterator.next()();
        if (!v128)
        {
          goto LABEL_36;
        }
      }

      v50(v22, 0, 1, v25);
      v122(v48, v22, v25);
      v51 = v45;
      v52 = Data.init(contentsOf:options:)();
      if (v45)
      {
        v45 = 0;
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_100002D00(v57, SharedLog);
        swift_errorRetain();
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v125 = v51;
          v126[0] = v61;
          *v60 = v118;
          swift_errorRetain();
          sub_100004F70(&unk_1000833F0, &unk_100068F00);
          v62 = String.init<A>(describing:)();
          v64 = sub_1000049B8(v62, v63, v126);

          *(v60 + 4) = v64;
          v34 = v119;
          _os_log_impl(&_mh_execute_header, v58, v59, "Failed to read item with error: [%{public}s]", v60, 0xCu);
          sub_100005ED8(v61);
          v45 = 0;
          v22 = v117;

          v17 = v120;
        }

        else
        {
        }

        v48 = v124;
        (*v121)(v124, v25);
        goto LABEL_8;
      }

      v54 = v52;
      v55 = v53;
      sub_100008714(0, &qword_1000836C0, NSKeyedUnarchiver_ptr);
      type metadata accessor for FeedbackSubmission();
      v56 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v108 = 0;
      if (!v56)
      {
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_100002D00(v65, SharedLog);
        v66 = v116;
        (*v106)(v116, v48, v25);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v126[0] = v103;
          *v69 = v118;
          sub_100039420(&qword_1000836B8, &type metadata accessor for URL);
          v102 = v67;
          v70 = dispatch thunk of CustomStringConvertible.description.getter();
          v71 = v66;
          v73 = v72;
          v74 = *v121;
          (*v121)(v71, v25);
          v75 = sub_1000049B8(v70, v73, v126);

          *(v69 + 4) = v75;
          v76 = v102;
          _os_log_impl(&_mh_execute_header, v102, v68, "Failed to decode NSError in [%{public}s]", v69, 0xCu);
          sub_100005ED8(v103);

          v48 = v124;

          sub_100013C98(v54, v55);

          v74(v48, v25);
          v34 = v119;
        }

        else
        {
          sub_100013C98(v54, v55);

          v77 = *v121;
          (*v121)(v66, v25);
          v77(v48, v25);
        }

        v17 = v120;
        v45 = v108;
        goto LABEL_8;
      }

      v78 = v111;
      v79 = *(v111 + 48);
      v80 = v112;
      *v112 = v56;
      (*v106)(v80 + v79, v48, v25);
      v81 = v80;
      v82 = v109;
      sub_10000C0A0(v81, v109, &qword_1000836C8, &qword_1000698B0);
      v83 = *(v78 + 48);
      v84 = v113;
      *v113 = *v82;
      v122(&v84[v83], &v82[v83], v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_100065DF0(0, v107[2] + 1, 1, v107);
      }

      v86 = v107[2];
      v85 = v107[3];
      if (v86 >= v85 >> 1)
      {
        v107 = sub_100065DF0(v85 > 1, v86 + 1, 1, v107);
      }

      sub_100013C98(v54, v55);
      sub_1000071C8(v112, &qword_1000836C8, &qword_1000698B0);
      (*v121)(v48, v25);
      v87 = v107;
      v107[2] = (v86 + 1);
      sub_100039468(v113, v87 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v86, &qword_1000836C8, &qword_1000698B0);
      NSFastEnumerationIterator.next()();
      v45 = v108;
      if (!v128)
      {
        goto LABEL_36;
      }
    }
  }

  v107 = _swiftEmptyArrayStorage;
LABEL_36:

  (*(v114 + 8))(v17, v115);
  (*(v105 + 8))(v34, v25);
  return v107;
}

id *sub_100037240(void *a1, void *a2, void *a3, unint64_t a4)
{
  v111 = sub_100004F70(&qword_1000836B0, &qword_1000698A8);
  v110 = *(v111 - 8);
  v8 = *(v110 + 64);
  v9 = __chkstk_darwin(v111);
  v113 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v109 = &v102 - v12;
  __chkstk_darwin(v11);
  v112 = (&v102 - v13);
  v14 = type metadata accessor for NSFastEnumerationIterator();
  v114 = *(v14 - 8);
  v115 = v14;
  v15 = *(v114 + 64);
  __chkstk_darwin(v14);
  v17 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v102 - v23;
  v25 = type metadata accessor for URL();
  v26 = *(*(v25 - 8) + 64);
  v27 = __chkstk_darwin(v25);
  v116 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v124 = &v102 - v30;
  v31 = __chkstk_darwin(v29);
  v121 = (&v102 - v32);
  __chkstk_darwin(v31);
  v34 = &v102 - v33;
  v35 = a4;
  v37 = v36;
  sub_1000387DC(a1, a2, a3, v35, 0, v24);
  if ((*(v37 + 48))(v24, 1, v25) == 1)
  {
    sub_1000071C8(v24, &unk_1000835A8, qword_100069860);
    return _swiftEmptyArrayStorage;
  }

  v122 = *(v37 + 32);
  v123 = v37 + 32;
  v122(v34, v24, v25);
  v39 = objc_opt_self();

  v40 = [v39 defaultManager];
  sub_100004F70(&qword_1000836A8, &qword_1000698A0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100069110;
  *(v41 + 32) = NSURLIsDirectoryKey;
  v42 = NSURLIsDirectoryKey;
  v43 = NSFileManager.enumerator(at:includingPropertiesForKeys:options:errorHandler:)();

  if (!v43)
  {
    if (qword_1000826B8 != -1)
    {
      swift_once();
    }

    v88 = type metadata accessor for Logger();
    sub_100002D00(v88, SharedLog);
    v89 = v121;
    (*(v37 + 16))(v121, v34, v25);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v127 = v93;
      *v92 = 136446210;
      v94 = URL.path.getter();
      v95 = v34;
      v96 = v37;
      v98 = v97;
      v99 = *(v96 + 8);
      v99(v89, v25);
      v100 = sub_1000049B8(v94, v98, &v127);

      *(v92 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v90, v91, "Failed to read directory [%{public}s]", v92, 0xCu);
      sub_100005ED8(v93);

      v99(v95, v25);
    }

    else
    {

      v101 = *(v37 + 8);
      v101(v89, v25);
      v101(v34, v25);
    }

    return _swiftEmptyArrayStorage;
  }

  v104 = v43;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  v105 = v37;
  if (v128)
  {
    v45 = 0;
    v46 = v37;
    v47 = (v37 + 56);
    v121 = (v46 + 8);
    v107 = _swiftEmptyArrayStorage;
    v106 = (v46 + 16);
    *&v44 = 136446210;
    v118 = v44;
    v119 = v34;
    v120 = v17;
    v48 = v124;
    v117 = v22;
    while (1)
    {
      while (1)
      {
        v49 = swift_dynamicCast();
        v50 = *v47;
        if (v49)
        {
          break;
        }

        v50(v22, 1, 1, v25);
        sub_1000071C8(v22, &unk_1000835A8, qword_100069860);
LABEL_8:
        NSFastEnumerationIterator.next()();
        if (!v128)
        {
          goto LABEL_36;
        }
      }

      v50(v22, 0, 1, v25);
      v122(v48, v22, v25);
      v51 = v45;
      v52 = Data.init(contentsOf:options:)();
      if (v45)
      {
        v45 = 0;
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v57 = type metadata accessor for Logger();
        sub_100002D00(v57, SharedLog);
        swift_errorRetain();
        v58 = Logger.logObject.getter();
        v59 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v125 = v51;
          v126[0] = v61;
          *v60 = v118;
          swift_errorRetain();
          sub_100004F70(&unk_1000833F0, &unk_100068F00);
          v62 = String.init<A>(describing:)();
          v64 = sub_1000049B8(v62, v63, v126);

          *(v60 + 4) = v64;
          v34 = v119;
          _os_log_impl(&_mh_execute_header, v58, v59, "Failed to read item with error: [%{public}s]", v60, 0xCu);
          sub_100005ED8(v61);
          v45 = 0;
          v22 = v117;

          v17 = v120;
        }

        else
        {
        }

        v48 = v124;
        (*v121)(v124, v25);
        goto LABEL_8;
      }

      v54 = v52;
      v55 = v53;
      sub_100008714(0, &qword_1000836C0, NSKeyedUnarchiver_ptr);
      sub_100008714(0, &qword_100082D08, NSError_ptr);
      v56 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v108 = 0;
      if (!v56)
      {
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v65 = type metadata accessor for Logger();
        sub_100002D00(v65, SharedLog);
        v66 = v116;
        (*v106)(v116, v48, v25);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v126[0] = v103;
          *v69 = v118;
          sub_100039420(&qword_1000836B8, &type metadata accessor for URL);
          v102 = v67;
          v70 = dispatch thunk of CustomStringConvertible.description.getter();
          v71 = v66;
          v73 = v72;
          v74 = *v121;
          (*v121)(v71, v25);
          v75 = sub_1000049B8(v70, v73, v126);

          *(v69 + 4) = v75;
          v76 = v102;
          _os_log_impl(&_mh_execute_header, v102, v68, "Failed to decode NSError in [%{public}s]", v69, 0xCu);
          sub_100005ED8(v103);

          v48 = v124;

          sub_100013C98(v54, v55);

          v74(v48, v25);
          v34 = v119;
        }

        else
        {
          sub_100013C98(v54, v55);

          v77 = *v121;
          (*v121)(v66, v25);
          v77(v48, v25);
        }

        v17 = v120;
        v45 = v108;
        goto LABEL_8;
      }

      v78 = v111;
      v79 = *(v111 + 48);
      v80 = v112;
      *v112 = v56;
      (*v106)(v80 + v79, v48, v25);
      v81 = v80;
      v82 = v109;
      sub_10000C0A0(v81, v109, &qword_1000836B0, &qword_1000698A8);
      v83 = *(v78 + 48);
      v84 = v113;
      *v113 = *v82;
      v122(&v84[v83], &v82[v83], v25);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_100065E14(0, v107[2] + 1, 1, v107);
      }

      v86 = v107[2];
      v85 = v107[3];
      if (v86 >= v85 >> 1)
      {
        v107 = sub_100065E14(v85 > 1, v86 + 1, 1, v107);
      }

      sub_100013C98(v54, v55);
      sub_1000071C8(v112, &qword_1000836B0, &qword_1000698A8);
      (*v121)(v48, v25);
      v87 = v107;
      v107[2] = (v86 + 1);
      sub_100039468(v113, v87 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v86, &qword_1000836B0, &qword_1000698A8);
      NSFastEnumerationIterator.next()();
      v45 = v108;
      if (!v128)
      {
        goto LABEL_36;
      }
    }
  }

  v107 = _swiftEmptyArrayStorage;
LABEL_36:

  (*(v114 + 8))(v17, v115);
  (*(v105 + 8))(v34, v25);
  return v107;
}

uint64_t sub_100037F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100004F70(&qword_1000836A0, &qword_100069898);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  v10 = OBJC_IVAR____TtC9feedbackd19LongTermPersistence____lazy_storage___feedbackdDirectory;
  swift_beginAccess();
  sub_10000C0A0(v1 + v10, v9, &qword_1000836A0, &qword_100069898);
  v11 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_100039468(v9, a1, &unk_1000835A8, qword_100069860);
  }

  sub_1000071C8(v9, &qword_1000836A0, &qword_100069898);
  sub_100038194(1, a1);
  sub_10000C0A0(a1, v7, &unk_1000835A8, qword_100069860);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1000393B0(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_100038194@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for URL.DirectoryHint();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for URL();
  v51 = *(v49 - 8);
  v8 = *(v51 + 64);
  v9 = __chkstk_darwin(v49);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v14 = objc_opt_self();
  v15 = [v14 defaultManager];
  static Strings.fbaGroupIdentifier.getter();
  v16 = String._bridgeToObjectiveC()();

  v17 = [v15 containerURLForSecurityApplicationGroupIdentifier:v16];

  if (v17)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v53[0] = static Strings.Daemon.directoryName.getter();
    v53[1] = v18;
    (*(v4 + 104))(v7, enum case for URL.DirectoryHint.isDirectory(_:), v3);
    sub_1000070C4();
    URL.appending<A>(path:directoryHint:)();
    (*(v4 + 8))(v7, v3);

    if (a1)
    {
      v19 = [v14 defaultManager];
      URL.path.getter();
      v20 = String._bridgeToObjectiveC()();

      v21 = [v19 fileExistsAtPath:v20 isDirectory:0];

      if (!v21)
      {
        v22 = [v14 defaultManager];
        URL._bridgeToObjectiveC()(v23);
        v25 = v24;
        v53[0] = 0;
        v26 = [v22 createDirectoryAtURL:v24 withIntermediateDirectories:1 attributes:0 error:v53];

        if (v26)
        {
          v27 = *(v51 + 8);
          v28 = v53[0];
          v29 = v49;
          v27(v13, v49);
LABEL_19:
          v48 = v50;
          (*(v51 + 32))(v50, v11, v29);
          return (*(v51 + 56))(v48, 0, 1, v29);
        }

        v38 = v53[0];
        v39 = _convertNSErrorToError(_:)();

        swift_willThrow();
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v40 = type metadata accessor for Logger();
        sub_100002D00(v40, SharedLog);
        swift_errorRetain();
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v53[0] = v44;
          *v43 = 136446210;
          v52 = v39;
          swift_errorRetain();
          sub_100004F70(&unk_1000833F0, &unk_100068F00);
          v45 = String.init<A>(describing:)();
          v47 = sub_1000049B8(v45, v46, v53);

          *(v43 + 4) = v47;
          _os_log_impl(&_mh_execute_header, v41, v42, "Failed to create feedbackd directory: %{public}s", v43, 0xCu);
          sub_100005ED8(v44);
        }
      }
    }

    v29 = v49;
    (*(v51 + 8))(v13, v49);
    goto LABEL_19;
  }

  if (qword_1000826B8 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  sub_100002D00(v30, SharedLog);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Failed to lookup container directory", v33, 2u);
  }

  v34 = *(v51 + 56);
  v36 = v49;
  v35 = v50;

  return v34(v35, 1, 1, v36);
}

uint64_t sub_1000387DC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, unint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v83 = a5;
  v88 = a2;
  v89 = a4;
  v86 = a1;
  v87 = a3;
  v91 = a6;
  v84 = type metadata accessor for URL.DirectoryHint();
  v6 = *(v84 - 8);
  v7 = v6[8];
  __chkstk_darwin(v84);
  v9 = v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = __chkstk_darwin(v10);
  v85 = v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = v78 - v16;
  __chkstk_darwin(v15);
  v19 = v78 - v18;
  v20 = sub_100004F70(&unk_1000835A8, qword_100069860);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v27 = v78 - v26;
  __chkstk_darwin(v25);
  v29 = v78 - v28;
  sub_100037F9C(v27);
  v30 = v10;
  v90 = v11[6];
  if (v90(v27, 1, v10))
  {
    sub_1000071C8(v27, &unk_1000835A8, qword_100069860);
    v31 = 1;
    v32 = v91;
  }

  else
  {
    v33 = v11[2];
    v80 = v17;
    v33(v17, v27, v10);
    sub_1000071C8(v27, &unk_1000835A8, qword_100069860);
    v93 = v86;
    v94 = v88;
    v82 = enum case for URL.DirectoryHint.isDirectory(_:);
    v88 = v11;
    v81 = v6[13];
    v34 = v84;
    v81(v9);
    v78[1] = sub_1000070C4();
    v79 = v24;
    v35 = v29;
    v36 = v19;
    v86 = v10;
    v37 = v80;
    URL.appending<A>(path:directoryHint:)();
    v78[0] = v6[1];
    (v78[0])(v9, v34);
    v38 = v88[1];
    v38(v37, v86);
    v93 = v87;
    v94 = v89;
    (v81)(v9, v82, v34);
    v11 = v88;
    URL.appending<A>(path:directoryHint:)();
    v30 = v86;
    (v78[0])(v9, v34);
    v38(v36, v30);
    v32 = v91;
    v31 = 0;
    v29 = v35;
    v24 = v79;
  }

  v39 = v11[7];
  v39(v29, v31, 1, v30);
  sub_10000C0A0(v29, v24, &unk_1000835A8, qword_100069860);
  if (v90(v24, 1, v30) == 1)
  {
    v40 = v30;
    sub_1000071C8(v24, &unk_1000835A8, qword_100069860);
    if (qword_1000826B8 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100002D00(v41, SharedLog);
    v42 = v89;

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v93 = v46;
      *v45 = 136446210;
      *(v45 + 4) = sub_1000049B8(v87, v42, &v93);
      _os_log_impl(&_mh_execute_header, v43, v44, "Failed to get [%{public}s] directory", v45, 0xCu);
      sub_100005ED8(v46);
    }

    sub_1000071C8(v29, &unk_1000835A8, qword_100069860);
    v47 = 1;
    v48 = v40;
  }

  else
  {
    v84 = v39;
    v90 = v29;
    v88 = v11;
    v49 = v11[4];
    v50 = v85;
    v49();
    v51 = objc_opt_self();
    v52 = [v51 defaultManager];
    v53 = v30;
    URL.path.getter();
    v54 = String._bridgeToObjectiveC()();

    v55 = [v52 fileExistsAtPath:v54 isDirectory:0];

    if (v55)
    {
      sub_1000071C8(v90, &unk_1000835A8, qword_100069860);
      v32 = v91;
      (v49)(v91, v50, v53);
      v47 = 0;
      v48 = v53;
    }

    else
    {
      v86 = v53;
      if (v83)
      {
        if (qword_1000826B8 != -1)
        {
          swift_once();
        }

        v56 = type metadata accessor for Logger();
        sub_100002D00(v56, SharedLog);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *v59 = 0;
          _os_log_impl(&_mh_execute_header, v57, v58, "URL does not exist. Will create one", v59, 2u);
        }

        v60 = [v51 defaultManager];
        URL.path.getter();
        v61 = String._bridgeToObjectiveC()();

        v93 = 0;
        v62 = [v60 createDirectoryAtPath:v61 withIntermediateDirectories:1 attributes:0 error:&v93];

        if (v62)
        {
          v63 = v93;
          sub_1000071C8(v90, &unk_1000835A8, qword_100069860);
          v32 = v91;
          v64 = v86;
          (v49)(v91, v50, v86);
          v48 = v64;
          v47 = 0;
        }

        else
        {
          v66 = v93;
          v67 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v68 = v89;

          swift_errorRetain();
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.fault.getter();

          v71 = os_log_type_enabled(v69, v70);
          v32 = v91;
          if (v71)
          {
            v72 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            *v72 = 136446466;
            *(v72 + 4) = sub_1000049B8(v87, v68, &v93);
            *(v72 + 12) = 2082;
            v92 = v67;
            swift_errorRetain();
            sub_100004F70(&unk_1000833F0, &unk_100068F00);
            v73 = String.init<A>(describing:)();
            v75 = sub_1000049B8(v73, v74, &v93);

            *(v72 + 14) = v75;
            _os_log_impl(&_mh_execute_header, v69, v70, "Failed to create [%{public}s] directory: [%{public}s]", v72, 0x16u);
            swift_arrayDestroy();
          }

          v76 = v86;
          (v88[1])(v85, v86);
          sub_1000071C8(v90, &unk_1000835A8, qword_100069860);
          v48 = v76;
          v47 = 1;
        }
      }

      else
      {
        v65 = v86;
        (v88[1])(v50, v86);
        sub_1000071C8(v90, &unk_1000835A8, qword_100069860);
        v48 = v65;
        v47 = 1;
        v32 = v91;
      }
    }

    v39 = v84;
  }

  return (v39)(v32, v47, 1, v48);
}

uint64_t sub_10003920C()
{
  sub_1000071C8(v0 + OBJC_IVAR____TtC9feedbackd19LongTermPersistence____lazy_storage___feedbackdDirectory, &qword_1000836A0, &qword_100069898);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for LongTermPersistence()
{
  result = qword_100083590;
  if (!qword_100083590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000392B0()
{
  sub_10003934C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10003934C()
{
  if (!qword_1000835A0)
  {
    sub_100005F88(&unk_1000835A8, qword_100069860);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000835A0);
    }
  }
}

uint64_t sub_1000393B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_1000836A0, &qword_100069898);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100039468(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100004F70(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000394D0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000394F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100039548(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_1000395A4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1000395D4(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_100039B70(v2, v3);
}

uint64_t sub_100039614()
{
  if (sub_1000399B0())
  {
    if (qword_1000826B8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100002D00(v1, SharedLog);
    v2 = v0;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = [v2 processIdentifier];

      _os_log_impl(&_mh_execute_header, v3, v4, "Client with pid [%{public}d] has admin entitlement", v5, 8u);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v7 = sub_100039A88();
    if (v7)
    {
      v6 = v7;
      if (qword_1000826B8 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100002D00(v8, SharedLog);
      v9 = v0;

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v23 = v13;
        *v12 = 67240450;
        *(v12 + 4) = [v9 processIdentifier];

        *(v12 + 8) = 2082;
        v14 = Array.description.getter();
        v16 = sub_1000049B8(v14, v15, &v23);

        *(v12 + 10) = v16;
        _os_log_impl(&_mh_execute_header, v10, v11, "Client with pid [%{public}d] is entitled to use forms [%{public}s]", v12, 0x12u);
        sub_100005ED8(v13);
      }

      else
      {
      }
    }

    else
    {
      if (qword_1000826B8 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100002D00(v17, SharedLog);
      v18 = v0;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 67240192;
        *(v21 + 4) = [v18 processIdentifier];

        _os_log_impl(&_mh_execute_header, v19, v20, "Client with pid [%{public}d] is not entitled", v21, 8u);
      }

      else
      {
      }

      return 2;
    }
  }

  return v6;
}

uint64_t sub_1000399B0()
{
  static Strings.XPC.adminEntitlement.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v4;
    }
  }

  else
  {
    sub_100039C00(v7);
    return 0;
  }

  return result;
}

uint64_t sub_100039A88()
{
  static Strings.XPC.clientEntitlement.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 valueForEntitlement:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100004F70(&qword_100082710, &qword_100068330);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_100039C00(v7);
  }

  return 0;
}

uint64_t sub_100039B70(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_100039C00(uint64_t a1)
{
  v2 = sub_100004F70(&qword_100082860, &unk_1000683C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100039C68()
{
  v1 = v0;
  v2 = type metadata accessor for FBKSInteraction.Content();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = *(v3 + 16);
  v10(&v29 - v8, v1, v2);
  v11 = (*(v3 + 88))(v9, v2);
  if (v11 == enum case for FBKSInteraction.Content.file(_:))
  {
    (*(v3 + 96))(v9, v2);
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(v9, v12);
    return 1;
  }

  if (v11 != enum case for FBKSInteraction.Content._file(_:))
  {
    if (v11 == enum case for FBKSInteraction.Content.text(_:))
    {
      goto LABEL_10;
    }

    if (v11 != enum case for FBKSInteraction.Content.image(_:) && v11 != enum case for FBKSInteraction.Content.audio(_:) && v11 != enum case for FBKSInteraction.Content.handwriting(_:) && v11 != enum case for FBKSInteraction.Content.sketch(_:))
    {
      if (v11 == enum case for FBKSInteraction.Content.imageText(_:) || v11 == enum case for FBKSInteraction.Content.sketchText(_:))
      {
        (*(v3 + 8))(v9, v2);
        return 2;
      }

      if (v11 != enum case for FBKSInteraction.Content.video(_:))
      {
        if (v11 == enum case for FBKSInteraction.Content.sourceCode(_:) || v11 == enum case for FBKSInteraction.Content.structured(_:))
        {
          goto LABEL_10;
        }

        if (v11 == enum case for FBKSInteraction.Content.imageStructured(_:))
        {
          (*(v3 + 96))(v9, v2);
          sub_100013C98(*v9, *(v9 + 1));
          v24 = &qword_100083558;
          v25 = &qword_100069808;
LABEL_28:
          v26 = *(sub_100004F70(v24, v25) + 48);
          v27 = type metadata accessor for FBKSInteraction.StructuredValue();
          (*(*(v27 - 8) + 8))(&v9[v26], v27);
          return 2;
        }

        if (v11 == enum case for FBKSInteraction.Content.sketchStructured(_:))
        {
          (*(v3 + 96))(v9, v2);
          sub_100013C98(*v9, *(v9 + 1));
          v24 = &qword_100083550;
          v25 = &qword_100069800;
          goto LABEL_28;
        }

        if (v11 == enum case for FBKSInteraction.Content.notification(_:) || v11 == enum case for FBKSInteraction.Content.mailMessage(_:))
        {
          goto LABEL_10;
        }

        if (v11 != enum case for FBKSInteraction.Content.emoji(_:))
        {
          if (v11 != enum case for FBKSInteraction.Content.html(_:))
          {
            sub_10001BF40();
            swift_allocError();
            *v28 = 0;
            swift_willThrow();
            return (*(v3 + 8))(v9, v2);
          }

LABEL_10:
          (*(v3 + 8))(v9, v2);
          return 0;
        }
      }
    }

    (*(v3 + 8))(v9, v2);
    return 1;
  }

  v14 = *(v3 + 8);
  v14(v9, v2);
  if (qword_100082628 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100002D00(v15, qword_1000836D0);
  v10(v7, v1, v2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v18 = 136315394;
    sub_10003C790(&qword_1000836E8, &type metadata accessor for FBKSInteraction.Content);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v14(v7, v2);
    v22 = sub_1000049B8(v19, v21, &v31);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1000049B8(0x28656761726F7473, 0xE900000000000029, &v31);
    _os_log_impl(&_mh_execute_header, v16, v17, "%s not supported in %{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v14(v7, v2);
  }

  sub_10001BF40();
  swift_allocError();
  *v23 = 14;
  return swift_willThrow();
}

void sub_10003A2C0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FBKSInteraction.Content();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = (&v24 - v11);
  v13 = [a1 text];
  if (!v13)
  {

    (*(v6 + 56))(a2, 1, 1, v5);
    return;
  }

  v25 = a2;
  v14 = v13;
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  sub_100031A70();
  if (!v18)
  {
    v20 = 5;
    goto LABEL_11;
  }

  v19 = sub_10003BDAC();
  v20 = 1;
  if (v19 > 0xB)
  {
    switch(v19)
    {
      case 0xCu:

        *v12 = v15;
        v12[1] = v17;
        v22 = &enum case for FBKSInteraction.Content.notification(_:);
        break;
      case 0xDu:

        *v12 = v15;
        v12[1] = v17;
        v22 = &enum case for FBKSInteraction.Content.mailMessage(_:);
        break;
      case 0xFu:

        *v12 = v15;
        v12[1] = v17;
        v22 = &enum case for FBKSInteraction.Content.html(_:);
        break;
      default:
        goto LABEL_11;
    }
  }

  else if (v19)
  {
    if (v19 != 8)
    {
      if (v19 == 9)
      {
        sub_10003B9C4();

        if (v2)
        {
          return;
        }

        (*(v6 + 104))(v10, enum case for FBKSInteraction.Content.structured(_:), v5);
        (*(v6 + 32))(v12, v10, v5);
        goto LABEL_21;
      }

LABEL_11:

      sub_10001BF40();
      swift_allocError();
      *v21 = v20;
      swift_willThrow();

      return;
    }

    *v12 = v15;
    v12[1] = v17;
    v22 = &enum case for FBKSInteraction.Content.sourceCode(_:);
  }

  else
  {

    *v12 = v15;
    v12[1] = v17;
    v22 = &enum case for FBKSInteraction.Content.text(_:);
  }

  (*(v6 + 104))(v12, *v22, v5);
LABEL_21:
  v23 = v25;
  (*(v6 + 32))(v25, v12, v5);
  (*(v6 + 56))(v23, 0, 1, v5);
}

uint64_t sub_10003A5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000010006BE60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.imageGeneration(_:);
  }

  else if (a1 == 0x432079726F6D654DLL && a2 == 0xEF6E6F6974616572 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.memoryCreation(_:);
  }

  else if (a1 == 0x74697277646E6148 && a2 == 0xEB00000000676E69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.handwriting(_:);
  }

  else if (a1 == 0xD000000000000010 && 0x800000010006BE80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.systemAssistant(_:);
  }

  else if (a1 == 0x4520656369766544 && a2 == 0xED00007472657078 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.deviceExpert(_:);
  }

  else if (a1 == 0x20676E6974697257 && a2 == 0xED0000736C6F6F54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.writingTools(_:);
  }

  else if (a1 == 0x6552207472616D53 && a2 == 0xEB00000000796C70 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.smartReplies(_:);
  }

  else if (a1 == 0xD000000000000010 && 0x800000010006BEA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.emojiGeneration(_:);
  }

  else if (a1 == 0xD000000000000012 && 0x800000010006BEC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.mailSummarization(_:);
  }

  else if (a1 == 0x676948206C69614DLL && a2 == 0xEF73746867696C68 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.mailHighlights(_:);
  }

  else if (a1 == 0xD000000000000016 && 0x800000010006BEE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.messagesSummarization(_:);
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000010006BF00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.notificationsSummarization(_:);
  }

  else if (a1 == 0xD000000000000018 && 0x800000010006BF20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.notificationsHighlights(_:);
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000010006BF40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.notificationsBreakthrough(_:);
  }

  else if (a1 == 0x615020636967614DLL && a2 == 0xEB00000000726570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.magicPaper(_:);
  }

  else if (a1 == 0x7341207466697753 && a2 == 0xEC00000074736973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.swiftAssist(_:);
  }

  else if (a1 == 0x4320736F746F6850 && a2 == 0xEE0070756E61656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.photosCleanup(_:);
  }

  else if (a1 == 0xD000000000000013 && 0x800000010006BF60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.notesAudioSummary(_:);
  }

  else if (a1 == 1769105747 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.siriWithChatGPT(_:);
  }

  else if (a1 == 0xD000000000000018 && 0x800000010006BF80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.writingToolsCompose(_:);
  }

  else if (a1 == 0x6C616E6F73726550 && a2 == 0xEC00000041265120 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.siriPQA(_:);
  }

  else if (a1 == 0xD000000000000013 && 0x800000010006BFA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.visualIntelligence(_:);
  }

  else if (a1 == 0x5320736F746F6850 && a2 == 0xED00006863726165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.photosSearch(_:);
  }

  else if (a1 == 0xD000000000000019 && 0x800000010006BFC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.imageGenerationExtended(_:);
  }

  else if (a1 == 0xD000000000000012 && 0x800000010006BFE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.messagesWallpaper(_:);
  }

  else if (a1 == 0x4D4C4C206B7341 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.askLLM(_:);
  }

  else if (a1 == 0x6341207472616D53 && a2 == 0xEC0000006E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.smartActions(_:);
  }

  else if (a1 == 0x68432065646F6358 && a2 == 0xEA00000000007461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.xcodeChat(_:);
  }

  else if (a1 == 0x65746F6E79654BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.keynote(_:);
  }

  else if (a1 == 0x7365676150 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.pages(_:);
  }

  else if (a1 == 0x737265626D754ELL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.numbers(_:);
  }

  else if (a1 == 0x6D726F6665657246 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.freeform(_:);
  }

  else if (a1 == 0xD000000000000017 && 0x800000010006C000 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.voicemailTranscription(_:);
  }

  else if (a1 == 0xD000000000000017 && 0x800000010006C020 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.timeSensitiveMessages(_:);
  }

  else if (a1 == 0x756E452070696B53 && a2 == 0xE90000000000006DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.skipEnum(_:);
  }

  else if (a1 == 1953719636 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v6 = &enum case for FBKSInteraction.FeatureDomain.test(_:);
  }

  else
  {
    *a3 = a1;
    a3[1] = a2;
    v6 = &enum case for FBKSInteraction.FeatureDomain.temporary(_:);
  }

  v7 = *v6;
  v8 = type metadata accessor for FBKSInteraction.FeatureDomain();
  v9 = *(*(v8 - 8) + 104);

  return v9(a3, v7, v8);
}

uint64_t sub_10003B1C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FBKSInteraction.Content();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [a1 imageData];
  if (!v9)
  {

    return (*(v5 + 56))(a2, 1, 1, v4);
  }

  v10 = v9;
  v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  sub_100033584();
  if (!v14)
  {
    v16 = 5;
    goto LABEL_10;
  }

  v15 = sub_10003BDAC();
  v16 = 1;
  if (v15 <= 3)
  {
    switch(v15)
    {
      case 1:

        *v8 = v11;
        v17 = &enum case for FBKSInteraction.Content.image(_:);
        goto LABEL_23;
      case 2:

        *v8 = v11;
        v17 = &enum case for FBKSInteraction.Content.audio(_:);
        goto LABEL_23;
      case 3:

        *v8 = v11;
        v17 = &enum case for FBKSInteraction.Content.handwriting(_:);
        goto LABEL_23;
    }

LABEL_10:
    sub_10001BF40();
    swift_allocError();
    *v19 = v16;
    swift_willThrow();

    return sub_100013C98(v11, v13);
  }

  if (v15 <= 13)
  {
    if (v15 == 4)
    {

      *v8 = v11;
      v17 = &enum case for FBKSInteraction.Content.sketch(_:);
      goto LABEL_23;
    }

    if (v15 == 7)
    {

      *v8 = v11;
      v17 = &enum case for FBKSInteraction.Content.video(_:);
LABEL_23:
      v23 = 1;
      goto LABEL_24;
    }

    goto LABEL_10;
  }

  if (v15 == 14)
  {

    *v8 = v11;
    v17 = &enum case for FBKSInteraction.Content.emoji(_:);
    goto LABEL_23;
  }

  if (v15 != 16)
  {
    goto LABEL_10;
  }

  v20 = sub_10003207C();
  if (!v21)
  {
    v16 = 15;
    goto LABEL_10;
  }

  v22 = v21;
  v25 = v20;

  *v8 = v25;
  v8[1] = v22;
  v8[2] = v11;
  v23 = 3;
  v17 = &enum case for FBKSInteraction.Content._file(_:);
LABEL_24:
  v8[v23] = v13;
  (*(v5 + 104))(v8, *v17, v4);
  (*(v5 + 32))(a2, v8, v4);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

void sub_10003B484(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for FBKSInteraction.Content();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = (&v42 - v12);
  __chkstk_darwin(v11);
  v15 = (&v42 - v14);
  v16 = [a1 text];
  if (!v16)
  {

    (*(v6 + 56))(a2, 1, 1, v5);
    return;
  }

  v17 = v16;
  v46 = a2;
  v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v20 = [a1 imageData];
  if (!v20)
  {

    sub_10001BF40();
    swift_allocError();
    *v33 = 8;
    swift_willThrow();

    return;
  }

  v45 = v19;
  v43 = v5;
  v21 = v20;
  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  sub_100033584();
  if (!v25)
  {

    sub_10001BF40();
    swift_allocError();
    *v34 = 5;
    swift_willThrow();

    v31 = v22;
    v32 = v24;
    goto LABEL_13;
  }

  v26 = sub_10003BDAC();
  v27 = v24;
  if (v26 <= 5)
  {
    v28 = v22;
    if (v26 == 1)
    {

      *v15 = v22;
      v15[1] = v27;
      v29 = v43;
      (*(v6 + 104))(v15, enum case for FBKSInteraction.Content.image(_:), v43);
      goto LABEL_28;
    }

    v29 = v43;
    if (v26 == 4)
    {

      *v15 = v28;
      v15[1] = v27;
      v36 = &enum case for FBKSInteraction.Content.sketch(_:);
    }

    else
    {
      if (v26 != 5)
      {
        goto LABEL_22;
      }

      *v15 = v28;
      v15[1] = v27;
      v35 = v45;
      v15[2] = v44;
      v15[3] = v35;
      v36 = &enum case for FBKSInteraction.Content.imageText(_:);
    }

    goto LABEL_27;
  }

  v28 = v22;
  if (v26 > 10)
  {
    v29 = v43;
    if (v26 == 11)
    {
      v40 = *(sub_100004F70(&qword_100083550, &qword_100069800) + 48);
      *v10 = v28;
      v10[1] = v27;
      sub_10003B9C4();

      if (v2)
      {
        v31 = *v10;
        v32 = v10[1];
        goto LABEL_13;
      }

      (*(v6 + 104))(v10, enum case for FBKSInteraction.Content.sketchStructured(_:), v29);
      (*(v6 + 32))(v15, v10, v29);
      goto LABEL_28;
    }

    if (v26 != 16)
    {
LABEL_22:

      sub_10001BF40();
      swift_allocError();
      *v38 = 1;
      swift_willThrow();

      v31 = v28;
      v32 = v27;
      goto LABEL_13;
    }

    v37 = v45;
    *v15 = v44;
    v15[1] = v37;
    v15[2] = v28;
    v15[3] = v27;
    v36 = &enum case for FBKSInteraction.Content._file(_:);
LABEL_27:
    (*(v6 + 104))(v15, *v36, v29);
    goto LABEL_28;
  }

  v29 = v43;
  if (v26 == 6)
  {

    *v15 = v28;
    v15[1] = v27;
    v39 = v45;
    v15[2] = v44;
    v15[3] = v39;
    v36 = &enum case for FBKSInteraction.Content.sketchText(_:);
    goto LABEL_27;
  }

  if (v26 != 10)
  {
    goto LABEL_22;
  }

  v30 = *(sub_100004F70(&qword_100083558, &qword_100069808) + 48);
  *v13 = v28;
  v13[1] = v27;
  sub_10003B9C4();

  if (v2)
  {
    v31 = *v13;
    v32 = v13[1];
LABEL_13:
    sub_100013C98(v31, v32);
    return;
  }

  (*(v6 + 104))(v13, enum case for FBKSInteraction.Content.imageStructured(_:), v29);
  (*(v6 + 32))(v15, v13, v29);
LABEL_28:
  v41 = v46;
  (*(v6 + 32))(v46, v15, v29);
  (*(v6 + 56))(v41, 0, 1, v29);
}

uint64_t sub_10003B95C()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_1000836D0);
  sub_100002D00(v0, qword_1000836D0);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003B9C4()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  static String.Encoding.utf8.getter();
  v5 = String.data(using:allowLossyConversion:)();
  v7 = v6;

  (*(v1 + 8))(v4, v0);
  if (v7 >> 60 == 15)
  {
    sub_10001BF40();
    swift_allocError();
    *v8 = 9;
    return swift_willThrow();
  }

  else
  {
    v10 = type metadata accessor for JSONDecoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    type metadata accessor for FBKSInteraction.StructuredValue();
    sub_10003C790(&unk_1000836F0, &type metadata accessor for FBKSInteraction.StructuredValue);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    sub_100013E3C(v5, v7);
  }
}

unint64_t sub_10003BBA4(char a1)
{
  result = 1954047316;
  switch(a1)
  {
    case 1:
      result = 0x6567616D49;
      break;
    case 2:
      result = 0x6F69647541;
      break;
    case 3:
      result = 0x74697277646E6148;
      break;
    case 4:
      result = 0x686374656B53;
      break;
    case 5:
      result = 0x65542B6567616D49;
      break;
    case 6:
      result = 0x542B686374656B53;
      break;
    case 7:
      result = 0x6F65646956;
      break;
    case 8:
      result = 0x6320656372756F53;
      break;
    case 9:
      result = 0x7275746375727453;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0x6163696669746F4ELL;
      break;
    case 13:
      result = 0x73656D206C69614DLL;
      break;
    case 14:
      result = 0x696A6F6D45;
      break;
    case 15:
      result = 1280136264;
      break;
    case 16:
      result = 1701603654;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10003BDAC()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_10003BE00(uint64_t a1)
{
  v2 = type metadata accessor for FBKSInteraction.Content();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v46 - v8;
  v10 = *(v3 + 16);
  v10(&v46 - v8, a1, v2);
  v11 = (*(v3 + 88))(v9, v2);
  if (v11 == enum case for FBKSInteraction.Content.file(_:))
  {
    (*(v3 + 8))(a1, v2);
    (*(v3 + 96))(v9, v2);
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(v9, v12);
    return 16;
  }

  else if (v11 == enum case for FBKSInteraction.Content._file(_:))
  {
    v47 = *(v3 + 8);
    v47(v9, v2);
    if (qword_100082628 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100002D00(v14, qword_1000836D0);
    v10(v7, a1, v2);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v17 = 136315394;
      sub_10003C790(&qword_1000836E8, &type metadata accessor for FBKSInteraction.Content);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = v7;
      v22 = v47;
      v47(v21, v2);
      v23 = sub_1000049B8(v18, v20, &v48);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_1000049B8(0x293A5F2874696E69, 0xE800000000000000, &v48);
      _os_log_impl(&_mh_execute_header, v15, v16, "%s not supported in %{public}s", v17, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v25 = v7;
      v22 = v47;
      v47(v25, v2);
    }

    sub_10001BF40();
    swift_allocError();
    *v26 = 14;
    swift_willThrow();
    return (v22)(a1, v2);
  }

  else if (v11 == enum case for FBKSInteraction.Content.text(_:))
  {
    v24 = *(v3 + 8);
    v24(a1, v2);
    v24(v9, v2);
    return 0;
  }

  else if (v11 == enum case for FBKSInteraction.Content.image(_:))
  {
    v27 = *(v3 + 8);
    v27(a1, v2);
    v27(v9, v2);
    return 1;
  }

  else if (v11 == enum case for FBKSInteraction.Content.audio(_:))
  {
    v28 = *(v3 + 8);
    v28(a1, v2);
    v28(v9, v2);
    return 2;
  }

  else if (v11 == enum case for FBKSInteraction.Content.handwriting(_:))
  {
    v29 = *(v3 + 8);
    v29(a1, v2);
    v29(v9, v2);
    return 3;
  }

  else if (v11 == enum case for FBKSInteraction.Content.sketch(_:))
  {
    v30 = *(v3 + 8);
    v30(a1, v2);
    v30(v9, v2);
    return 4;
  }

  else if (v11 == enum case for FBKSInteraction.Content.imageText(_:))
  {
    v31 = *(v3 + 8);
    v31(a1, v2);
    v31(v9, v2);
    return 5;
  }

  else if (v11 == enum case for FBKSInteraction.Content.sketchText(_:))
  {
    v32 = *(v3 + 8);
    v32(a1, v2);
    v32(v9, v2);
    return 6;
  }

  else if (v11 == enum case for FBKSInteraction.Content.video(_:))
  {
    v33 = *(v3 + 8);
    v33(a1, v2);
    v33(v9, v2);
    return 7;
  }

  else if (v11 == enum case for FBKSInteraction.Content.sourceCode(_:))
  {
    v34 = *(v3 + 8);
    v34(a1, v2);
    v34(v9, v2);
    return 8;
  }

  else if (v11 == enum case for FBKSInteraction.Content.structured(_:))
  {
    v35 = *(v3 + 8);
    v35(a1, v2);
    v35(v9, v2);
    return 9;
  }

  else if (v11 == enum case for FBKSInteraction.Content.imageStructured(_:))
  {
    (*(v3 + 8))(a1, v2);
    (*(v3 + 96))(v9, v2);
    sub_100013C98(*v9, *(v9 + 1));
    v36 = *(sub_100004F70(&qword_100083558, &qword_100069808) + 48);
    v37 = type metadata accessor for FBKSInteraction.StructuredValue();
    (*(*(v37 - 8) + 8))(&v9[v36], v37);
    return 10;
  }

  else if (v11 == enum case for FBKSInteraction.Content.sketchStructured(_:))
  {
    (*(v3 + 8))(a1, v2);
    (*(v3 + 96))(v9, v2);
    sub_100013C98(*v9, *(v9 + 1));
    v38 = *(sub_100004F70(&qword_100083550, &qword_100069800) + 48);
    v39 = type metadata accessor for FBKSInteraction.StructuredValue();
    (*(*(v39 - 8) + 8))(&v9[v38], v39);
    return 11;
  }

  else if (v11 == enum case for FBKSInteraction.Content.notification(_:))
  {
    v40 = *(v3 + 8);
    v40(a1, v2);
    v40(v9, v2);
    return 12;
  }

  else if (v11 == enum case for FBKSInteraction.Content.mailMessage(_:))
  {
    v41 = *(v3 + 8);
    v41(a1, v2);
    v41(v9, v2);
    return 13;
  }

  else if (v11 == enum case for FBKSInteraction.Content.emoji(_:))
  {
    v42 = *(v3 + 8);
    v42(a1, v2);
    v42(v9, v2);
    return 14;
  }

  else if (v11 == enum case for FBKSInteraction.Content.html(_:))
  {
    v43 = *(v3 + 8);
    v43(a1, v2);
    v43(v9, v2);
    return 15;
  }

  else
  {
    sub_10001BF40();
    swift_allocError();
    *v44 = 6;
    swift_willThrow();
    v45 = *(v3 + 8);
    v45(a1, v2);
    return (v45)(v9, v2);
  }
}

uint64_t sub_10003C790(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003C7D8()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083700);
  sub_100002D00(v0, qword_100083700);
  static Strings.Daemon.loggingSubsystem.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003C83C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_100013DAC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
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

uint64_t sub_10003C914(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;

  return _swift_task_switch(sub_10003C9A4, 0, 0);
}

uint64_t sub_10003C9A4()
{
  v29 = v0;
  if (qword_100082630 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100002D00(v1, qword_100083700);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1000049B8(0xD000000000000019, 0x800000010006C320, &v28);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s ", v4, 0xCu);
    sub_100005ED8(v5);
  }

  *(v0 + 104) = 0;
  v6 = SBSGetScreenLockStatus();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v6 != 0;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v28 = v11;
    *v10 = 67240450;
    *(v10 + 4) = v9;
    *(v10 + 8) = 2082;
    swift_beginAccess();
    v12 = *(v0 + 104);
    v13 = DarwinBoolean.description.getter();
    v15 = sub_1000049B8(v13, v14, &v28);

    *(v10 + 10) = v15;
    _os_log_impl(&_mh_execute_header, v7, v8, "Is device locked? [%{BOOL,public}d] passcodeRequired [%{public}s]", v10, 0x12u);
    sub_100005ED8(v11);
  }

  swift_beginAccess();
  if (*(v0 + 104))
  {
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "Detected race condition with remote alert launching while device is locked.", v18, 2u);
    }

    sub_10000BCE0();
    swift_allocError();
    *v19 = 8;
    swift_willThrow();
    v20 = *(v0 + 8);
    goto LABEL_11;
  }

  v22 = *(v0 + 72);
  v23 = [objc_allocWithZone(type metadata accessor for RemoteAlertManager()) init];
  *(v0 + 80) = v23;
  v24 = *(v22 + 16);
  *(v22 + 16) = v23;
  v25 = v23;

  if (!v25)
  {
    v20 = *(v0 + 8);
LABEL_11:

    return v20();
  }

  v26 = swift_task_alloc();
  *(v0 + 88) = v26;
  *v26 = v0;
  v26[1] = sub_10003CDF0;
  v27 = *(v0 + 64);

  return sub_10003D0B4(v27);
}

uint64_t sub_10003CDF0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_10003CFC8;
  }

  else
  {

    v4 = sub_10003CF40;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003CF40()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10003CFC8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003D058()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10003D0B4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10003D0D4, 0, 0);
}

uint64_t sub_10003D0D4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  swift_unknownObjectWeakInit();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_10003D1F0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10003D1F0()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_10003D32C;
  }

  else
  {
    v5 = *(v2 + 32);
    v6 = *(v2 + 40);

    v4 = sub_10003D314;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10003D32C()
{
  v1 = v0[4];
  v2 = v0[5];

  v3 = v0[1];
  v4 = v0[7];

  return v3();
}

void sub_10003D398(uint64_t a1)
{
  v2 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(SBSRemoteAlertDefinition);
    v9 = String._bridgeToObjectiveC()();
    v10 = String._bridgeToObjectiveC()();
    v29 = [v8 initWithServiceName:v9 viewControllerClassName:v10];

    v11 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
    v12 = [objc_opt_self() anonymousListener];
    [v12 setDelegate:v7];
    v13 = [v12 endpoint];
    [v11 setXpcEndpoint:{objc_msgSend(v13, "_endpoint")}];
    swift_unknownObjectRelease();
    type metadata accessor for FBKSRemoteAlertRequest();
    sub_10003FC8C(&unk_100083910, &type metadata accessor for FBKSRemoteAlertRequest);
    v14 = JSONCodable.encode()();
    v16 = v15;
    sub_100004F70(&qword_100083040, &qword_1000693C8);
    inited = swift_initStackObject();
    v28 = a1;
    v18 = inited;
    *(inited + 16) = xmmword_100069110;
    v30 = 0x74736575716572;
    v31 = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v18[12] = &type metadata for Data;
    v18[9] = v14;
    v18[10] = v16;
    sub_100013D40(v14, v16);
    sub_1000159A0(v18);
    swift_setDeallocating();
    sub_1000071C8((v18 + 4), &unk_100083920, qword_1000693D0);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v11 setUserInfo:isa];

    v20 = [objc_opt_self() newHandleWithDefinition:v29 configurationContext:v11];
    [v20 registerObserver:v7];
    v21 = sub_100004F70(&qword_100083898, &qword_1000699C0);
    v22 = *(v21 - 8);
    (*(v22 + 16))(v5, v28, v21);
    (*(v22 + 56))(v5, 0, 1, v21);
    v23 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
    swift_beginAccess();
    sub_10003FBDC(v5, &v7[v23]);
    swift_endAccess();
    v24 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
    [v20 activateWithContext:v24];

    v25 = *&v7[OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_remoteAlertHandle];
    *&v7[OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_remoteAlertHandle] = v20;
    v26 = v20;

    [v12 resume];
    sub_100013C98(v14, v16);
  }
}

uint64_t sub_10003D9B0(void *a1)
{
  v2 = v1;
  v4 = sub_100004F70(&qword_100083898, &qword_1000699C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v25 - v7;
  v9 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  if (qword_100082630 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100002D00(v16, qword_100083700);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v26 = v8;
    v20 = a1;
    v21 = v19;
    v22 = swift_slowAlloc();
    v27 = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_1000049B8(0xD000000000000022, 0x800000010006C250, &v27);
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s", v21, 0xCu);
    sub_100005ED8(v22);

    a1 = v20;
    v8 = v26;
  }

  [a1 unregisterObserver:v2];
  v23 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
  swift_beginAccess();
  sub_10003FB54(v2 + v23, v15);
  if ((*(v5 + 48))(v15, 1, v4))
  {
    sub_1000071C8(v15, &qword_100083908, &qword_1000699F8);
  }

  else
  {
    (*(v5 + 16))(v8, v15, v4);
    sub_1000071C8(v15, &qword_100083908, &qword_1000699F8);
    CheckedContinuation.resume(returning:)();
    (*(v5 + 8))(v8, v4);
  }

  (*(v5 + 56))(v13, 1, 1, v4);
  swift_beginAccess();
  sub_10003FBDC(v13, v2 + v23);
  return swift_endAccess();
}

uint64_t sub_10003DD94(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100004F70(&qword_100083898, &qword_1000699C0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - v9;
  v11 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v39 - v17;
  __chkstk_darwin(v16);
  v20 = &v39 - v19;
  [a1 unregisterObserver:v3];
  if (a2)
  {
    v40 = v10;
    swift_errorRetain();
    if (qword_100082630 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100002D00(v21, qword_100083700);
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v39 = v15;
      v27 = v26;
      v42[0] = v26;
      *v24 = 136446466;
      *(v24 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006C220, v42);
      *(v24 + 12) = 2112;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v28;
      *v25 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s Error: %@", v24, 0x16u);
      sub_1000071C8(v25, &qword_100082708, &qword_100068320);

      sub_100005ED8(v27);
      v15 = v39;
    }

    v29 = v40;
    v30 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
    swift_beginAccess();
    sub_10003FB54(v3 + v30, v20);
    if ((*(v7 + 48))(v20, 1, v6))
    {

      sub_1000071C8(v20, &qword_100083908, &qword_1000699F8);
    }

    else
    {
      (*(v7 + 16))(v29, v20, v6);
      sub_1000071C8(v20, &qword_100083908, &qword_1000699F8);
      v41 = a2;
      CheckedContinuation.resume(throwing:)();
      (*(v7 + 8))(v29, v6);
    }
  }

  else
  {
    if (qword_100082630 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_100002D00(v31, qword_100083700);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42[0] = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006C220, v42);
      _os_log_impl(&_mh_execute_header, v32, v33, "%{public}s", v34, 0xCu);
      sub_100005ED8(v35);
    }

    v36 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
    swift_beginAccess();
    sub_10003FB54(v3 + v36, v18);
    if ((*(v7 + 48))(v18, 1, v6))
    {
      sub_1000071C8(v18, &qword_100083908, &qword_1000699F8);
    }

    else
    {
      (*(v7 + 16))(v10, v18, v6);
      sub_1000071C8(v18, &qword_100083908, &qword_1000699F8);
      CheckedContinuation.resume(returning:)();
      (*(v7 + 8))(v10, v6);
    }
  }

  (*(v7 + 56))(v15, 1, 1, v6);
  v37 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
  swift_beginAccess();
  sub_10003FBDC(v15, v3 + v37);
  return swift_endAccess();
}

id sub_10003E4B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteAlertManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for RemoteAlertManager()
{
  result = qword_100083880;
  if (!qword_100083880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003E598()
{
  sub_10003E630();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10003E630()
{
  if (!qword_100083890)
  {
    sub_100005F88(&qword_100083898, &qword_1000699C0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100083890);
    }
  }
}

void sub_10003E6AC(const char *a1)
{
  if (qword_100082630 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083700);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v3, a1, v4, 2u);
  }
}

uint64_t sub_10003E868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[98] = a5;
  v5[97] = a4;
  v5[96] = a3;
  v5[95] = a2;
  v5[94] = a1;
  v6 = type metadata accessor for URL();
  v5[99] = v6;
  v7 = *(v6 - 8);
  v5[100] = v7;
  v8 = *(v7 + 64) + 15;
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();

  return _swift_task_switch(sub_10003E944, 0, 0);
}

uint64_t sub_10003E944()
{
  v69 = v0;
  if (qword_100082630 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 776);
  v2 = *(v0 + 760);
  v3 = type metadata accessor for Logger();
  *(v0 + 824) = sub_100002D00(v3, qword_100083700);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 760);
    v7 = *(v0 + 752);
    v8 = swift_slowAlloc();
    v68[0] = swift_slowAlloc();
    *v8 = 136446466;
    *(v8 + 4) = sub_1000049B8(0xD000000000000019, 0x800000010006C1C0, v68);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_1000049B8(v7, v6, v68);
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s form %s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *(v0 + 784);
  v10 = *(v0 + 776);
  v11 = *(v0 + 768);
  v12 = *(v0 + 760);
  v13 = *(v0 + 752);
  v14 = sub_1000159A0(&_swiftEmptyArrayStorage);
  v15 = sub_100014430(v13, v12, v11, v10);
  v16 = [v15 asFBAURLSchemeWithIsSurvey:FormItem.isSurvey.getter() & 1];

  if (v16)
  {
    v17 = *(v0 + 816);
    v18 = *(v0 + 808);
    v19 = *(v0 + 800);
    v20 = *(v0 + 792);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v67 = *(v19 + 16);
    v67(v18, v17, v20);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 808);
    v25 = *(v0 + 800);
    v26 = *(v0 + 792);
    if (v23)
    {
      v27 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v68[0] = v66;
      *v27 = 136446210;
      sub_10003FC8C(&qword_1000836B8, &type metadata accessor for URL);
      v28 = dispatch thunk of CustomStringConvertible.description.getter();
      v65 = v22;
      v29 = v14;
      v31 = v30;
      (*(v25 + 8))(v24, v26);
      v32 = sub_1000049B8(v28, v31, v68);
      v14 = v29;

      *(v27 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v21, v65, "Launching FBA with [%{public}s]", v27, 0xCu);
      sub_100005ED8(v66);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    v33 = *(v0 + 816);
    v34 = *(v0 + 792);
    *(v0 + 664) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 672) = v35;
    AnyHashable.init<A>(_:)();
    *(v0 + 368) = v34;
    v36 = sub_100019A2C((v0 + 344));
    v67(v36, v33, v34);
    sub_100007274((v0 + 344), (v0 + 376));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v14;
    sub_10005E0B0((v0 + 376), v0 + 144, isUniquelyReferenced_nonNull_native);
    sub_100006FC4(v0 + 144);
    v38 = v68[0];
    *(v0 + 680) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 688) = v39;
    AnyHashable.init<A>(_:)();
    *(v0 + 432) = &type metadata for Int;
    *(v0 + 408) = 3;
    sub_100007274((v0 + 408), (v0 + 440));
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v38;
    sub_10005E0B0((v0 + 440), v0 + 184, v40);
    sub_100006FC4(v0 + 184);
    v41 = v68[0];
    *(v0 + 696) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 704) = v42;
    AnyHashable.init<A>(_:)();
    *(v0 + 496) = &type metadata for Bool;
    *(v0 + 472) = 1;
    sub_100007274((v0 + 472), (v0 + 504));
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v41;
    sub_10005E0B0((v0 + 504), v0 + 224, v43);
    sub_100006FC4(v0 + 224);
    v44 = v68[0];
    *(v0 + 712) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 720) = v45;
    AnyHashable.init<A>(_:)();
    *(v0 + 560) = &type metadata for Bool;
    *(v0 + 536) = 1;
    sub_100007274((v0 + 536), (v0 + 568));
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v44;
    sub_10005E0B0((v0 + 568), v0 + 264, v46);
    sub_100006FC4(v0 + 264);
    v47 = v68[0];
    *(v0 + 728) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 736) = v48;
    AnyHashable.init<A>(_:)();
    v49 = static Strings.Daemon.bundleIdentifier.getter();
    *(v0 + 624) = &type metadata for String;
    *(v0 + 600) = v49;
    *(v0 + 608) = v50;
    sub_100007274((v0 + 600), (v0 + 632));
    v51 = swift_isUniquelyReferenced_nonNull_native();
    v68[0] = v47;
    sub_10005E0B0((v0 + 632), v0 + 304, v51);
    sub_100006FC4(v0 + 304);
    v52 = [objc_opt_self() serviceWithDefaultShellEndpoint];
    *(v0 + 832) = v52;
    if (v52)
    {
      v53 = v52;
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v55 = [objc_opt_self() optionsWithDictionary:isa];
      *(v0 + 840) = v55;

      static Strings.fbaBundleIdentifier.getter();
      v56 = String._bridgeToObjectiveC()();
      *(v0 + 848) = v56;

      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 744;
      *(v0 + 24) = sub_10003F1F0;
      v57 = swift_continuation_init();
      *(v0 + 136) = sub_100004F70(&qword_100083900, &unk_1000699E8);
      *(v0 + 80) = _NSConcreteStackBlock;
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_10003C83C;
      *(v0 + 104) = &unk_10007E618;
      *(v0 + 112) = v57;
      [v53 openApplication:v56 withOptions:v55 completion:v0 + 80];

      return _swift_continuation_await(v0 + 16);
    }

    v58 = *(v0 + 816);
    v59 = *(v0 + 800);
    v60 = *(v0 + 792);

    sub_100015E58(0xD00000000000001BLL, 0x800000010006C170);
    swift_willThrow();
    (*(v59 + 8))(v58, v60);
  }

  else
  {

    sub_100015E58(0xD00000000000001ALL, 0x800000010006C150);
    swift_willThrow();
  }

  v61 = *(v0 + 816);
  v62 = *(v0 + 808);

  v63 = *(v0 + 8);

  return v63();
}

uint64_t sub_10003F1F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 856) = v2;
  if (v2)
  {
    v3 = sub_10003F434;
  }

  else
  {
    v3 = sub_10003F300;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003F300()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 824);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Launched FBA", v5, 2u);
  }

  v6 = *(v0 + 832);
  v7 = *(v0 + 816);
  v8 = *(v0 + 808);
  v9 = *(v0 + 800);
  v10 = *(v0 + 792);

  (*(v9 + 8))(v7, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_10003F434()
{
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  v5 = v0[102];
  v6 = v0[100];
  v7 = v0[99];
  swift_willThrow();

  (*(v6 + 8))(v5, v7);
  v8 = v0[107];
  v9 = v0[102];
  v10 = v0[101];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10003F660(void *a1)
{
  v11 = sub_10003E694;
  v12 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100059744;
  v10 = &unk_10007E640;
  v3 = _Block_copy(&v7);
  [a1 setInvalidationHandler:v3];
  _Block_release(v3);
  v11 = sub_10003E6A0;
  v12 = 0;
  v7 = _NSConcreteStackBlock;
  v8 = 1107296256;
  v9 = sub_100059744;
  v10 = &unk_10007E668;
  v4 = _Block_copy(&v7);
  [a1 setInterruptionHandler:v4];
  _Block_release(v4);
  [a1 resume];
  v5 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP15FeedbackService33RemoteViewControllerReplyProtocol_];
  [a1 setExportedInterface:v5];

  [a1 setExportedObject:v1];
  return 1;
}

uint64_t sub_10003F800(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100083898, &qword_1000699C0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - v7;
  v9 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v24 - v11;
  if (qword_100082630 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002D00(v13, qword_100083700);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1000049B8(0xD000000000000035, 0x800000010006C1E0, &v25);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v16, 0xCu);
    sub_100005ED8(v17);
  }

  v18 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_remoteAlertHandle;
  v19 = *(a1 + OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_remoteAlertHandle);
  if (v19)
  {
    [v19 unregisterObserver:a1];
    v19 = *(a1 + v18);
  }

  [v19 invalidate];
  v20 = OBJC_IVAR____TtC9feedbackdP33_109D9EA95C5E46A2F39C291451DCB14618RemoteAlertManager_checkedThrowingContinuation;
  swift_beginAccess();
  sub_10003FB54(a1 + v20, v12);
  if ((*(v5 + 48))(v12, 1, v4))
  {
    sub_1000071C8(v12, &qword_100083908, &qword_1000699F8);
  }

  else
  {
    (*(v5 + 16))(v8, v12, v4);
    sub_1000071C8(v12, &qword_100083908, &qword_1000699F8);
    sub_10000BCE0();
    v21 = swift_allocError();
    *v22 = 8;
    v24 = v21;
    CheckedContinuation.resume(throwing:)();
    (*(v5 + 8))(v8, v4);
  }

  return (*(a2 + 16))(a2);
}

uint64_t sub_10003FB54(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FBC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10003FBDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_100083908, &qword_1000699F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003FC4C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_10003FC84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_10003D398(a1);
}

uint64_t sub_10003FC8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10003FCDC()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083930);
  sub_100002D00(v0, qword_100083930);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

void sub_10003FD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  v7 = v6;
  v119 = a3;
  v120 = a4;
  v11 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v113 = &v102 - v13;
  v14 = type metadata accessor for FormLaunchConfiguration();
  v15 = *(v14 - 8);
  v114 = v14;
  v115 = v15;
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v116 = v18;
  v117 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v118 = &v102 - v19;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100002D00(v20, qword_100083930);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v112 = a1;
    v24 = a5;
    v25 = a6;
    v26 = v23;
    v27 = swift_slowAlloc();
    *&v128 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v128);
    _os_log_impl(&_mh_execute_header, v21, v22, "%{public}s", v26, 0xCu);
    sub_100005ED8(v27);

    a6 = v25;
    a5 = v24;
  }

  type metadata accessor for FBKSForm();
  v28 = static FBKSForm.fromJSON(data:)();
  if (v28)
  {
    v29 = v28;
    v30 = *(v7 + 16);
    if (!v30)
    {
      goto LABEL_9;
    }

    if (v30 == 1)
    {
      goto LABEL_17;
    }

    v31 = *(v7 + 16);

    *&v128 = dispatch thunk of FBKSForm.identifier.getter();
    *(&v128 + 1) = v32;
    __chkstk_darwin(v128);
    *(&v102 - 2) = &v128;
    v33 = sub_100062FB4(sub_100045BD4, (&v102 - 4), v30);
    sub_100045BF4(v30);

    if ((v33 & 1) == 0)
    {
LABEL_17:
      v91 = v29;
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v92, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        *&v128 = v95;
        *v94 = 136446210;
        v96 = dispatch thunk of FBKSForm.identifier.getter();
        v98 = sub_1000049B8(v96, v97, &v128);

        *(v94 + 4) = v98;
        _os_log_impl(&_mh_execute_header, v92, v93, "Client is not entitled to access form [%{public}s]", v94, 0xCu);
        sub_100005ED8(v95);
      }

      if (a5)
      {
        sub_10000BCE0();
        swift_allocError();
        *v99 = 7;
        v100 = _convertErrorToNSError(_:)();
        a5();
      }

      else
      {
      }
    }

    else
    {
LABEL_9:
      type metadata accessor for FBKSLaunchConfiguration();
      v34 = static FBKSLaunchConfiguration.fromJSON(data:)();
      if (v34)
      {
        v35 = v34;
        v36 = v29;
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.debug.getter();

        v39 = os_log_type_enabled(v37, v38);
        v109 = a6;
        v110 = a5;
        if (v39)
        {
          v40 = swift_slowAlloc();
          *&v128 = swift_slowAlloc();
          *v40 = 136446722;
          *(v40 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v128);
          *(v40 + 12) = 2082;
          v41 = dispatch thunk of FBKSForm.identifier.getter();
          v43 = sub_1000049B8(v41, v42, &v128);

          *(v40 + 14) = v43;
          *(v40 + 22) = 2082;
          dispatch thunk of FBKSForm.authenticationMethod.getter();
          v44 = FBKSForm.AuthenticationMethod.description.getter();
          v46 = sub_1000049B8(v44, v45, &v128);

          *(v40 + 24) = v46;
          _os_log_impl(&_mh_execute_header, v37, v38, "%{public}s form: [%{public}s] authentication method: [%{public}s]", v40, 0x20u);
          swift_arrayDestroy();
        }

        v107 = v36;
        v120 = dispatch thunk of FBKSForm.identifier.getter();
        v112 = v47;
        v119 = dispatch thunk of FBKSForm.authenticationMethod.getter();
        v111 = dispatch thunk of FBKSForm.answers.getter();
        v48 = v35;
        v49 = dispatch thunk of FBKSLaunchConfiguration.localizedPromptTitle.getter();
        v105 = v50;
        v106 = v49;
        v51 = dispatch thunk of FBKSLaunchConfiguration.localizedPromptMessage.getter();
        v103 = v52;
        v104 = v51;
        v53 = dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewProceedButtonTitle.getter();
        v55 = v54;
        v56 = dispatch thunk of FBKSLaunchConfiguration.localizedAlertViewDeclineButtonTitle.getter();
        v58 = v57;
        v59 = dispatch thunk of FBKSLaunchConfiguration.skipsPrompt.getter();
        v60 = dispatch thunk of FBKSLaunchConfiguration.alwaysLaunchInRemoteAlert.getter();
        v108 = v48;
        v61 = dispatch thunk of FBKSLaunchConfiguration.promptStyle.getter();
        v62 = dispatch thunk of FBKSLaunchConfiguration.notifyImmediately.getter();
        *&v122 = v106;
        *(&v122 + 1) = v105;
        *&v123 = v104;
        *(&v123 + 1) = v103;
        *&v124 = v53;
        *(&v124 + 1) = v55;
        *&v125 = v56;
        *(&v125 + 1) = v58;
        LOBYTE(v126) = v59;
        BYTE1(v126) = v60;
        *(&v126 + 1) = v61;
        v127 = v62;
        v133 = v62;
        v130 = v124;
        v131 = v125;
        v132 = v126;
        v128 = v122;
        v129 = v123;
        v63 = v114;
        v64 = v114[8];
        v65 = type metadata accessor for Date();
        v66 = *(*(v65 - 8) + 56);
        v67 = v118;
        v66(&v118[v64], 1, 1, v65);
        v66((v67 + v63[9]), 1, 1, v65);
        v68 = v63[6];
        v69 = v112;

        v70 = v111;

        sub_10000FA5C(&v122, &v121);
        Date.init()();
        v71 = v119;
        *v67 = v120;
        *(v67 + 8) = v69;
        *(v67 + 16) = v71;
        *(v67 + 24) = v70;
        v72 = v131;
        *(v67 + 64) = v130;
        *(v67 + 80) = v72;
        *(v67 + 96) = v132;
        *(v67 + 112) = v133;
        v73 = v129;
        *(v67 + 32) = v128;
        *(v67 + 48) = v73;
        *(v67 + v63[7]) = 0;
        *(v67 + v63[10]) = 0;
        v74 = v113;
        static TaskPriority.utility.getter();
        v75 = type metadata accessor for TaskPriority();
        (*(*(v75 - 8) + 56))(v74, 0, 1, v75);
        v76 = v117;
        sub_10000F92C(v67, v117);
        v77 = (*(v115 + 80) + 64) & ~*(v115 + 80);
        v78 = (v116 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
        v79 = swift_allocObject();
        v79[2] = 0;
        v79[3] = 0;
        v80 = v112;
        v79[4] = v120;
        v79[5] = v80;
        v81 = v111;
        v79[6] = v119;
        v79[7] = v81;
        sub_10000F8C8(v76, v79 + v77);
        v82 = v107;
        *(v79 + v78) = v107;
        v83 = v79 + ((v78 + 15) & 0xFFFFFFFFFFFFFFF8);
        v84 = v129;
        *v83 = v128;
        *(v83 + 1) = v84;
        v83[80] = v133;
        v85 = v132;
        *(v83 + 3) = v131;
        *(v83 + 4) = v85;
        *(v83 + 2) = v130;
        v86 = (v79 + ((v78 + 103) & 0xFFFFFFFFFFFFFFF8));
        v88 = v109;
        v87 = v110;
        *v86 = v110;
        v86[1] = v88;
        v89 = v82;
        sub_100045FB4(v87);
        sub_100059484(0, 0, v74, &unk_100069A58, v79);

        sub_1000071C8(v74, &qword_1000833B0, &qword_100068D60);
        sub_10000F990(v67);
      }

      else
      {
        if (a5)
        {
          v101 = sub_100015E58(0xD00000000000002ALL, 0x800000010006C450);
          a5();
        }
      }
    }
  }

  else if (a5)
  {
    v120 = sub_100015E58(0xD00000000000001FLL, 0x800000010006C430);
    a5();
    v90 = v120;
  }
}

uint64_t sub_1000406BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 256) = v16;
  *(v8 + 264) = v17;
  *(v8 + 240) = v15;
  *(v8 + 224) = a7;
  *(v8 + 232) = a8;
  *(v8 + 208) = a5;
  *(v8 + 216) = a6;
  *(v8 + 200) = a4;
  v9 = *(*(sub_100004F70(&qword_100082CA8, &unk_100069A60) - 8) + 64) + 15;
  *(v8 + 272) = swift_task_alloc();
  v10 = type metadata accessor for FormItem();
  *(v8 + 280) = v10;
  v11 = *(v10 - 8);
  *(v8 + 288) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();

  return _swift_task_switch(sub_100040800, 0, 0);
}

uint64_t sub_100040800()
{
  v2 = v0[25];
  v1 = v0[26];
  static Strings.Daemon.bundleIdentifier.getter();
  v3._countAndFlagsBits = 0x7463656C6C6F632ELL;
  v3._object = 0xE90000000000002ELL;
  String.append(_:)(v3);
  v4._countAndFlagsBits = v2;
  v4._object = v1;
  String.append(_:)(v4);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  type metadata accessor for SeedPortal();
  v0[42] = static SeedPortal.shared.getter();
  v5 = swift_task_alloc();
  v0[43] = v5;
  *v5 = v0;
  v5[1] = sub_100040930;
  v6 = v0[34];
  v7 = v0[27];
  v8 = v0[28];
  v9 = v0[25];
  v10 = v0[26];

  return sub_10001A628(v6, v9, v10, v7, v8, 0);
}

uint64_t sub_100040930()
{
  v2 = *(*v1 + 344);
  v3 = *(*v1 + 336);
  v6 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = sub_10004166C;
  }

  else
  {
    v4 = sub_100040A60;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100040A60()
{
  v118 = v0;
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1000071C8(v3, &qword_100082CA8, &unk_100069A60);
    if (qword_100082638 != -1)
    {
      swift_once();
    }

    v4 = v0[28];
    v5 = v0[26];
    v6 = type metadata accessor for Logger();
    sub_100002D00(v6, qword_100083930);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v10 = v0[25];
      v9 = v0[26];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v116 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1000049B8(v10, v9, &v116);
      _os_log_impl(&_mh_execute_header, v7, v8, "Form [%s] is not available. Will not proceed.", v11, 0xCu);
      sub_100005ED8(v12);
    }

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v13 = v0[29];
    v14 = qword_100085E18;
    v0[56] = qword_100085E18;
    v0[57] = *v13;
    v0[58] = v13[1];
    sub_10000BCE0();
    v0[59] = swift_allocError();
    *v15 = 1;
    v0[60] = _convertErrorToNSError(_:)();

    return _swift_task_switch(sub_100042FC4, v14, 0);
  }

  (*(v2 + 32))(v0[41], v3, v1);
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v17 = v0[40];
  v16 = v0[41];
  v18 = v0[35];
  v19 = v0[36];
  v20 = type metadata accessor for Logger();
  v0[45] = sub_100002D00(v20, qword_100083930);
  v113 = *(v19 + 16);
  v113(v17, v16, v18);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  v23 = os_log_type_enabled(v21, v22);
  v24 = v0[40];
  v26 = v0[35];
  v25 = v0[36];
  if (v23)
  {
    v27 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v116 = v111;
    *v27 = 136315138;
    sub_100046018();
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v31 = *(v25 + 8);
    v31(v24, v26);
    v32 = sub_1000049B8(v28, v30, &v116);

    *(v27 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v21, v22, "Fetched form [%s]", v27, 0xCu);
    sub_100005ED8(v111);
  }

  else
  {

    v31 = *(v25 + 8);
    v31(v24, v26);
  }

  v0[46] = v31;
  v33 = v0[27];
  v34 = FBKSForm.AuthenticationMethod.rawValue.getter();
  if (v34 != FBKSForm.AuthenticationMethod.rawValue.getter())
  {
    v35 = v0[41];
    if (FormItem.isSurvey.getter())
    {
      v113(v0[39], v0[41], v0[35]);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      v38 = os_log_type_enabled(v36, v37);
      v39 = v0[39];
      v41 = v0[35];
      v40 = v0[36];
      if (v38)
      {
        v42 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v116 = v112;
        *v42 = 136315138;
        sub_100046018();
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        v31(v39, v41);
        v46 = sub_1000049B8(v43, v45, &v116);

        *(v42 + 4) = v46;
        _os_log_impl(&_mh_execute_header, v36, v37, "Making survey [%s] available in FBA inbox", v42, 0xCu);
        sub_100005ED8(v112);
      }

      else
      {

        v31(v39, v41);
      }

      v47 = v0[30];
      type metadata accessor for FBKSSharedPersistence();
      dispatch thunk of FBKSForm.identifier.getter();
      static FBKSSharedPersistence.saveSurveyTatInFBAInbox(formIdentifier:)();
    }
  }

  v48 = *(v0[31] + 64);
  if (v48 != 2 && (v48 & 1) != 0)
  {
    v49 = v0[41];
    v50 = FormItem.isSurvey.getter();
    v51 = v0[41];
    v52 = v0[35];
    if (v50)
    {
      v113(v0[38], v51, v52);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();
      v55 = os_log_type_enabled(v53, v54);
      v56 = v0[38];
      v57 = v0[35];
      v58 = v0[36];
      if (v55)
      {
        v59 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v116 = v114;
        *v59 = 136315138;
        sub_100046018();
        v60 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v31;
        v63 = v62;
        v61(v56, v57);
        v64 = sub_1000049B8(v60, v63, &v116);
        v31 = v61;

        *(v59 + 4) = v64;
        _os_log_impl(&_mh_execute_header, v53, v54, "Skipping prompt for form [%s].", v59, 0xCu);
        sub_100005ED8(v114);
      }

      else
      {

        v31(v56, v57);
      }

      v76 = v0[32];
      if (v76)
      {
        v77 = v0[33];
        v76(0);
      }

LABEL_47:
      v102 = v0[36] + 8;
      v31(v0[41], v0[35]);
      v104 = v0[40];
      v103 = v0[41];
      v106 = v0[38];
      v105 = v0[39];
      v107 = v0[37];
      v108 = v0[34];

      v109 = v0[1];

      return v109();
    }

    v113(v0[37], v51, v52);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.error.getter();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[36];
    v69 = v0[37];
    v70 = v0[35];
    if (v67)
    {
      v71 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v116 = v115;
      *v71 = 136315138;
      sub_100046018();
      v72 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v73;
      v31(v69, v70);
      v75 = sub_1000049B8(v72, v74, &v116);

      *(v71 + 4) = v75;
      _os_log_impl(&_mh_execute_header, v65, v66, "Skipping prompt is not compatible with feedback form [%s].", v71, 0xCu);
      sub_100005ED8(v115);
    }

    else
    {

      v31(v69, v70);
    }
  }

  v78 = v0[31];
  v79 = *(v78 + 72);
  if (v79 == 1)
  {
    v87 = v0[41];
    v88 = FormItem.isSurvey.getter();
    v89 = swift_task_alloc();
    v0[49] = v89;
    *v89 = v0;
    v89[1] = sub_100041D38;
    v90 = v0[31];

    return sub_10002E580(v90, v88 & 1);
  }

  else
  {
    if (v79 != 2)
    {
      sub_10000FA5C(v0[31], (v0 + 2));
      v91 = Logger.logObject.getter();
      v92 = static os_log_type_t.error.getter();
      sub_100045FC4(v78);
      if (os_log_type_enabled(v91, v92))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v116 = v94;
        *v93 = 136315138;
        v0[24] = v79;
        v95 = String.init<A>(describing:)();
        v97 = sub_1000049B8(v95, v96, &v116);

        *(v93 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v91, v92, "Prompt style not handled %s", v93, 0xCu);
        sub_100005ED8(v94);
      }

      v98 = v0[32];
      if (v98)
      {
        v99 = v0[33];
        v116 = 0;
        v117 = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        v116 = 0xD000000000000019;
        v117 = 0x800000010006C4C0;
        v0[23] = v79;
        v100._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v100);

        v101 = sub_100015E58(v116, v117);

        v98(v101);
      }

      goto LABEL_47;
    }

    if (qword_1000825D0 != -1)
    {
      swift_once();
    }

    v80 = swift_task_alloc();
    v0[47] = v80;
    *v80 = v0;
    v80[1] = sub_100041C24;
    v81 = v0[41];
    v82 = v0[31];
    v83 = v0[27];
    v84 = v0[28];
    v86 = v0[25];
    v85 = v0[26];

    return sub_10000C35C(v86, v85, v83, v84, v81, v82);
  }
}

uint64_t sub_10004166C()
{
  v30 = v0;
  v1 = *(v0 + 352);
  *(v0 + 160) = v1;
  *(v0 + 488) = v1;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v2 = *(v0 + 97);
    if (v2 == 5)
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100002D00(v3, qword_100083930);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v29);
      *(v6 + 12) = 2080;
      v7 = 5;
    }

    else
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100002D00(v22, qword_100083930);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v4, v5))
      {
        goto LABEL_19;
      }

      v6 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v6 = 136446466;
      *(v6 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v29);
      *(v6 + 12) = 2080;
      v7 = v2;
    }

    v23 = sub_100015668(v7);
    v25 = sub_1000049B8(v23, v24, &v29);

    *(v6 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with: %s", v6, 0x16u);
    swift_arrayDestroy();

LABEL_19:

    sub_10000BCE0();
    swift_allocError();
    *v26 = v2;
    *(v0 + 496) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 232);
    v20 = qword_100085E18;
    *(v0 + 504) = qword_100085E18;
    *(v0 + 512) = *v27;
    *(v0 + 520) = v27[1];
    v21 = sub_100043088;
    goto LABEL_22;
  }

  v8 = *(v0 + 160);

  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100002D00(v9, qword_100083930);
  swift_errorRetain();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v12 = 136446466;
    *(v12 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v29);
    *(v12 + 12) = 2080;
    *(v0 + 176) = v1;
    swift_errorRetain();
    v13 = String.init<A>(describing:)();
    v15 = sub_1000049B8(v13, v14, &v29);

    *(v12 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s failed with: %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v17 = *(v0 + 136);
  v16 = *(v0 + 144);
  *(v0 + 128) = v16;
  v18 = sub_100019A2C((v0 + 104));
  (*(*(v16 - 8) + 16))(v18, v17, v16);
  *(v0 + 528) = static FBKSError.nsError(anyError:)();
  sub_100005ED8((v0 + 104));
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v19 = *(v0 + 232);
  v20 = qword_100085E18;
  *(v0 + 536) = qword_100085E18;
  *(v0 + 544) = *v19;
  *(v0 + 552) = v19[1];
  v21 = sub_1000431D4;
LABEL_22:

  return _swift_task_switch(v21, v20, 0);
}

uint64_t sub_100041C24()
{
  v2 = *(*v1 + 376);
  v5 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_100043334;
  }

  else
  {
    v3 = sub_100047528;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100041D38(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 392);
  v6 = *v2;
  *(*v2 + 400) = v1;

  if (v1)
  {
    v7 = sub_1000420F4;
  }

  else
  {
    *(v4 + 98) = a1;
    v7 = sub_100041E60;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100041E60()
{
  v23 = v0;
  v1 = *(v0 + 98);
  v2 = *(v0 + 360);
  v3 = *(v0 + 224);
  v4 = *(v0 + 208);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  if (v1)
  {
    if (v7)
    {
      v9 = *(v0 + 200);
      v8 = *(v0 + 208);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1000049B8(v9, v8, &v22);
      _os_log_impl(&_mh_execute_header, v5, v6, "User declined [%s].", v10, 0xCu);
      sub_100005ED8(v11);
    }

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 240);
    v13 = qword_100085E18;
    *(v0 + 424) = qword_100085E18;
    *(v0 + 432) = dispatch thunk of FBKSForm.identifier.getter();
    *(v0 + 440) = v14;
    v15 = sub_100042F4C;
    v16 = v13;
  }

  else
  {
    if (v7)
    {
      v18 = *(v0 + 200);
      v17 = *(v0 + 208);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1000049B8(v18, v17, &v22);
      _os_log_impl(&_mh_execute_header, v5, v6, "User agreed to [%s]. Will launch feedback", v19, 0xCu);
      sub_100005ED8(v20);
    }

    if (qword_1000825F8 != -1)
    {
      swift_once();
    }

    v16 = qword_100085DF0;
    v15 = sub_1000426C8;
  }

  return _swift_task_switch(v15, v16, 0);
}

uint64_t sub_1000420F4()
{
  v31 = v0;
  v1 = *(v0 + 288) + 8;
  (*(v0 + 368))(*(v0 + 328), *(v0 + 280));
  v2 = *(v0 + 400);
  *(v0 + 160) = v2;
  *(v0 + 488) = v2;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 97);
    if (v3 == 5)
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100002D00(v4, qword_100083930);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_19;
      }

      v7 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v30);
      *(v7 + 12) = 2080;
      v8 = 5;
    }

    else
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100002D00(v23, qword_100083930);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_19;
      }

      v7 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v30);
      *(v7 + 12) = 2080;
      v8 = v3;
    }

    v24 = sub_100015668(v8);
    v26 = sub_1000049B8(v24, v25, &v30);

    *(v7 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s failed with: %s", v7, 0x16u);
    swift_arrayDestroy();

LABEL_19:

    sub_10000BCE0();
    swift_allocError();
    *v27 = v3;
    *(v0 + 496) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 232);
    v21 = qword_100085E18;
    *(v0 + 504) = qword_100085E18;
    *(v0 + 512) = *v28;
    *(v0 + 520) = v28[1];
    v22 = sub_100043088;
    goto LABEL_22;
  }

  v9 = *(v0 + 160);

  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100002D00(v10, qword_100083930);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v30);
    *(v13 + 12) = 2080;
    *(v0 + 176) = v2;
    swift_errorRetain();
    v14 = String.init<A>(describing:)();
    v16 = sub_1000049B8(v14, v15, &v30);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s failed with: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  *(v0 + 128) = v17;
  v19 = sub_100019A2C((v0 + 104));
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  *(v0 + 528) = static FBKSError.nsError(anyError:)();
  sub_100005ED8((v0 + 104));
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 232);
  v21 = qword_100085E18;
  *(v0 + 536) = qword_100085E18;
  *(v0 + 544) = *v20;
  *(v0 + 552) = v20[1];
  v22 = sub_1000431D4;
LABEL_22:

  return _swift_task_switch(v22, v21, 0);
}

uint64_t sub_1000426C8()
{
  sub_10002150C(v0[29]);

  v1 = swift_task_alloc();
  v0[51] = v1;
  *v1 = v0;
  v1[1] = sub_10004278C;
  v2 = v0[41];
  v3 = v0[31];
  v4 = v0[27];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];

  return sub_1000600C0(v7, v6, v4, v5, v3, v2);
}

uint64_t sub_10004278C()
{
  v2 = *(*v1 + 408);
  v5 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v3 = sub_100042978;
  }

  else
  {
    v3 = sub_1000428A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000428A0()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 264);
    v1(0);
  }

  v3 = *(v0 + 288) + 8;
  (*(v0 + 368))(*(v0 + 328), *(v0 + 280));
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v8 = *(v0 + 296);
  v9 = *(v0 + 272);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100042978()
{
  v31 = v0;
  v1 = *(v0 + 288) + 8;
  (*(v0 + 368))(*(v0 + 328), *(v0 + 280));
  v2 = *(v0 + 416);
  *(v0 + 160) = v2;
  *(v0 + 488) = v2;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 97);
    if (v3 == 5)
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100002D00(v4, qword_100083930);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_19;
      }

      v7 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v30);
      *(v7 + 12) = 2080;
      v8 = 5;
    }

    else
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100002D00(v23, qword_100083930);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_19;
      }

      v7 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v30);
      *(v7 + 12) = 2080;
      v8 = v3;
    }

    v24 = sub_100015668(v8);
    v26 = sub_1000049B8(v24, v25, &v30);

    *(v7 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s failed with: %s", v7, 0x16u);
    swift_arrayDestroy();

LABEL_19:

    sub_10000BCE0();
    swift_allocError();
    *v27 = v3;
    *(v0 + 496) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 232);
    v21 = qword_100085E18;
    *(v0 + 504) = qword_100085E18;
    *(v0 + 512) = *v28;
    *(v0 + 520) = v28[1];
    v22 = sub_100043088;
    goto LABEL_22;
  }

  v9 = *(v0 + 160);

  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100002D00(v10, qword_100083930);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v30);
    *(v13 + 12) = 2080;
    *(v0 + 176) = v2;
    swift_errorRetain();
    v14 = String.init<A>(describing:)();
    v16 = sub_1000049B8(v14, v15, &v30);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s failed with: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  *(v0 + 128) = v17;
  v19 = sub_100019A2C((v0 + 104));
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  *(v0 + 528) = static FBKSError.nsError(anyError:)();
  sub_100005ED8((v0 + 104));
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 232);
  v21 = qword_100085E18;
  *(v0 + 536) = qword_100085E18;
  *(v0 + 544) = *v20;
  *(v0 + 552) = v20[1];
  v22 = sub_1000431D4;
LABEL_22:

  return _swift_task_switch(v22, v21, 0);
}

uint64_t sub_100042F4C()
{
  v1 = *(v0 + 424);
  sub_100034A7C(*(v0 + 432), *(v0 + 440));

  return _swift_task_switch(sub_100047528, 0, 0);
}

uint64_t sub_100042FC4()
{
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 448);
  sub_100033994(*(v0 + 456), *(v0 + 464));

  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  v8 = *(v0 + 296);
  v9 = *(v0 + 272);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100043088()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 496);
  sub_100033994(*(v0 + 512), *(v0 + 520));

  return _swift_task_switch(sub_1000430F8, 0, 0);
}

uint64_t sub_1000430F8()
{
  v1 = *(v0 + 256);
  if (v1)
  {
    v2 = *(v0 + 496);
    v3 = *(v0 + 264);
    v4 = v2;
    v1(v2);
  }

  v5 = *(v0 + 160);

  v7 = *(v0 + 320);
  v6 = *(v0 + 328);
  v9 = *(v0 + 304);
  v8 = *(v0 + 312);
  v10 = *(v0 + 296);
  v11 = *(v0 + 272);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000431D4()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  sub_100033994(*(v0 + 544), *(v0 + 552));

  return _swift_task_switch(sub_100043248, 0, 0);
}

uint64_t sub_100043248()
{
  v1 = v0[32];
  v2 = v0[66];
  v3 = v0[61];
  if (v1)
  {
    v4 = v0[33];
    v5 = v2;
    v1(v2);
  }

  else
  {
  }

  v7 = v0[40];
  v6 = v0[41];
  v9 = v0[38];
  v8 = v0[39];
  v10 = v0[37];
  v11 = v0[34];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100043334()
{
  v31 = v0;
  v1 = *(v0 + 288) + 8;
  (*(v0 + 368))(*(v0 + 328), *(v0 + 280));
  v2 = *(v0 + 384);
  *(v0 + 160) = v2;
  *(v0 + 488) = v2;
  swift_errorRetain();
  sub_100004F70(&unk_1000833F0, &unk_100068F00);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 97);
    if (v3 == 5)
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_100002D00(v4, qword_100083930);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_19;
      }

      v7 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v30);
      *(v7 + 12) = 2080;
      v8 = 5;
    }

    else
    {
      if (qword_100082638 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100002D00(v23, qword_100083930);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_19;
      }

      v7 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v7 = 136446466;
      *(v7 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v30);
      *(v7 + 12) = 2080;
      v8 = v3;
    }

    v24 = sub_100015668(v8);
    v26 = sub_1000049B8(v24, v25, &v30);

    *(v7 + 14) = v26;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s failed with: %s", v7, 0x16u);
    swift_arrayDestroy();

LABEL_19:

    sub_10000BCE0();
    swift_allocError();
    *v27 = v3;
    *(v0 + 496) = _convertErrorToNSError(_:)();

    if (qword_100082620 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 232);
    v21 = qword_100085E18;
    *(v0 + 504) = qword_100085E18;
    *(v0 + 512) = *v28;
    *(v0 + 520) = v28[1];
    v22 = sub_100043088;
    goto LABEL_22;
  }

  v9 = *(v0 + 160);

  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100002D00(v10, qword_100083930);
  swift_errorRetain();
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000049B8(0xD00000000000003DLL, 0x800000010006C480, &v30);
    *(v13 + 12) = 2080;
    *(v0 + 176) = v2;
    swift_errorRetain();
    v14 = String.init<A>(describing:)();
    v16 = sub_1000049B8(v14, v15, &v30);

    *(v13 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s failed with: %s", v13, 0x16u);
    swift_arrayDestroy();
  }

  swift_getErrorValue();
  v18 = *(v0 + 136);
  v17 = *(v0 + 144);
  *(v0 + 128) = v17;
  v19 = sub_100019A2C((v0 + 104));
  (*(*(v17 - 8) + 16))(v19, v18, v17);
  *(v0 + 528) = static FBKSError.nsError(anyError:)();
  sub_100005ED8((v0 + 104));
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 232);
  v21 = qword_100085E18;
  *(v0 + 536) = qword_100085E18;
  *(v0 + 544) = *v20;
  *(v0 + 552) = v20[1];
  v22 = sub_1000431D4;
LABEL_22:

  return _swift_task_switch(v22, v21, 0);
}

uint64_t sub_100043A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_100043A48, 0, 0);
}

uint64_t sub_100043A48()
{
  v2 = v0[2];
  v1 = v0[3];
  static Strings.Daemon.bundleIdentifier.getter();
  v3._countAndFlagsBits = 0x2E746E756F632ELL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);
  v4._countAndFlagsBits = v2;
  v4._object = v1;
  String.append(_:)(v4);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v5 = qword_100085E18;
  v0[6] = qword_100085E18;

  return _swift_task_switch(sub_100043B54, v5, 0);
}

uint64_t sub_100043B54()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = sub_100034EE0(*(v0 + 16), *(v0 + 24));

  return _swift_task_switch(sub_100043BC4, v1, 0);
}

uint64_t sub_100043BC4()
{
  v1 = *(v0 + 48);
  *(v0 + 64) = sub_100035140(*(v0 + 16), *(v0 + 24));

  return _swift_task_switch(sub_100043C34, 0, 0);
}

uint64_t sub_100043C34()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_100043D00;
  v3 = v0[2];
  v2 = v0[3];

  return sub_10001C108(v3, v2);
}

uint64_t sub_100043D00(uint64_t a1)
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_100043E18, v3, 0);
}

uint64_t sub_100043E18()
{
  v1 = *(v0 + 48);
  *(v0 + 88) = sub_100035DAC(*(v0 + 16), *(v0 + 24));

  return _swift_task_switch(sub_100043E88, 0, 0);
}

uint64_t sub_100043E88()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[7];
  v3 = v0[8];
  v6 = v0[4];
  v5 = v0[5];
  v7 = objc_allocWithZone(type metadata accessor for FBKSFeedbackCount());
  v8 = FBKSFeedbackCount.init(feedbackFiled:errors:currentCampaign:declineCount:)();
  v9 = FBKSFeedbackCount.asJSON.getter();
  v11 = v10;
  v6();
  sub_100013C98(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_100043FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_100044010, 0, 0);
}

uint64_t sub_100044010()
{
  _StringGuts.grow(_:)(21);
  static Strings.Daemon.bundleIdentifier.getter();

  v1._object = 0x800000010006C5E0;
  v1._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v1);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v2 = qword_100085E18;
  *(v0 + 32) = qword_100085E18;
  sub_10000BCE0();
  swift_allocError();
  *v3 = 2;
  v4 = _convertErrorToNSError(_:)();
  *(v0 + 40) = static FBKSError.xpcSafeNSError(error:)();

  return _swift_task_switch(sub_10004417C, v2, 0);
}

uint64_t sub_10004417C()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  sub_100033994(*(v0 + 16), *(v0 + 24));

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10004427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return _swift_task_switch(sub_1000442A0, 0, 0);
}

uint64_t sub_1000442A0()
{
  _StringGuts.grow(_:)(24);
  static Strings.Daemon.bundleIdentifier.getter();

  v1._object = 0x800000010006C580;
  v1._countAndFlagsBits = 0xD000000000000016;
  String.append(_:)(v1);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v2 = qword_100085DF0;
  *(v0 + 48) = qword_100085DF0;

  return _swift_task_switch(sub_1000443C4, v2, 0);
}

uint64_t sub_1000443C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 96) = sub_100020CD8();

  return _swift_task_switch(sub_100044434, 0, 0);
}

uint64_t sub_100044434()
{
  v23 = v0;
  if (*(v0 + 96))
  {
    if (qword_100082638 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 24);
    v2 = type metadata accessor for Logger();
    *(v0 + 56) = sub_100002D00(v2, qword_100083930);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v6 = *(v0 + 16);
      v5 = *(v0 + 24);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_1000049B8(v6, v5, &v22);
      _os_log_impl(&_mh_execute_header, v3, v4, "Marking form [%{public}s] as submitted", v7, 0xCu);
      sub_100005ED8(v8);
    }

    if (qword_100082610 != -1)
    {
      swift_once();
    }

    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = sub_10004477C;
    v11 = *(v0 + 16);
    v10 = *(v0 + 24);

    return sub_100026980(v11, v10);
  }

  else
  {
    if (qword_100082638 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 24);
    v14 = type metadata accessor for Logger();
    sub_100002D00(v14, qword_100083930);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = *(v0 + 16);
      v17 = *(v0 + 24);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v22 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1000049B8(v18, v17, &v22);
      _os_log_impl(&_mh_execute_header, v15, v16, "Form [%{public}s] is not known to feedbackd", v19, 0xCu);
      sub_100005ED8(v20);
    }

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10004477C()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 48);
  v4 = *v0;

  return _swift_task_switch(sub_10004488C, v2, 0);
}

uint64_t sub_10004488C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100020D7C();

  return _swift_task_switch(sub_1000448F4, 0, 0);
}

uint64_t sub_1000448F4()
{
  v20 = v0;
  v1 = v0[4];
  if (v1)
  {
    v2 = qword_100082620;
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v4 = qword_100085E18;
    v0[9] = qword_100085E18;
    v5 = sub_100044B44;
LABEL_5:

    return _swift_task_switch(v5, v4, 0);
  }

  v6 = v0[5];
  if (v6)
  {
    v7 = v6;
    if ([v7 integerValue])
    {
      if (qword_100082620 != -1)
      {
        swift_once();
      }

      v8 = qword_100085E18;
      v0[10] = qword_100085E18;
      v0[11] = [v7 integerValue];
      v5 = sub_100044C14;
      v4 = v8;
      goto LABEL_5;
    }
  }

  v9 = v0[7];
  v10 = v0[3];

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v14 = v0[2];
    v13 = v0[3];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_1000049B8(v14, v13, &v19);
    _os_log_impl(&_mh_execute_header, v11, v12, "Cannot record feedback submission for [%{public}s]. Feedback ID is invalid", v15, 0xCu);
    sub_100005ED8(v16);
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_100044B44()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 32);
  sub_100033994(*(v0 + 16), *(v0 + 24));

  return _swift_task_switch(sub_100044BB4, 0, 0);
}

uint64_t sub_100044BB4()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044C14()
{
  v1 = *(v0 + 80);
  sub_100034220(*(v0 + 16), *(v0 + 24), *(v0 + 88));

  return _swift_task_switch(sub_100044C80, 0, 0);
}

uint64_t sub_100044C80()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100044DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = a5;
  return _swift_task_switch(sub_100044DDC, 0, 0);
}

uint64_t sub_100044DDC()
{
  static Strings.Daemon.bundleIdentifier.getter();
  v1._countAndFlagsBits = 0x74657365722ELL;
  v1._object = 0xE600000000000000;
  String.append(_:)(v1);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_1000826D0 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_100044F00;

  return sub_100063734(0);
}

uint64_t sub_100044F00()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_100044FFC, 0, 0);
}

uint64_t sub_100044FFC()
{
  if (qword_1000825F8 != -1)
  {
    swift_once();
  }

  v0 = qword_100085DF0;

  return _swift_task_switch(sub_100045090, v0, 0);
}

uint64_t sub_100045090()
{
  sub_100020630();

  return _swift_task_switch(sub_1000450F4, 0, 0);
}

uint64_t sub_1000450F4()
{
  if (qword_100082610 != -1)
  {
    swift_once();
  }

  sub_1000225C0();
  type metadata accessor for FBKSSharedPersistence();
  static FBKSSharedPersistence.removeAllInboxTats()();
  if (qword_100082620 != -1)
  {
    swift_once();
  }

  v1 = qword_100085E18;
  *(v0 + 112) = qword_100085E18;

  return _swift_task_switch(sub_1000451D8, v1, 0);
}

uint64_t sub_1000451D8()
{
  v1 = *(v0 + 112);
  sub_10003361C();
  *(v0 + 120) = 0;

  return _swift_task_switch(sub_100045264, 0, 0);
}

uint64_t sub_100045264()
{
  v10 = v0;
  v1 = *(v0 + 96);
  (*(v0 + 88))(0);
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083930);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006C510, &v9);
    _os_log_impl(&_mh_execute_header, v3, v4, "Finished %{public}s", v5, 0xCu);
    sub_100005ED8(v6);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1000453E8()
{
  v25 = v0;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083930);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v6 = 136446466;
    *(v6 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006C510, &v24);
    *(v6 + 12) = 2080;
    v0[10] = v5;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v7 = String.init<A>(describing:)();
    v9 = sub_1000049B8(v7, v8, &v24);

    *(v6 + 14) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s failed with: %s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = v0[15];
  v12 = v0[11];
  v11 = v0[12];
  swift_getErrorValue();
  v13 = v0[6];
  v14 = v0[7];
  v0[5] = v14;
  v15 = sub_100019A2C(v0 + 2);
  (*(*(v14 - 8) + 16))(v15, v13, v14);
  v16 = static FBKSError.nsError(anyError:)();
  sub_100005ED8(v0 + 2);
  v17 = v16;
  v12(v16);

  if (qword_100082638 != -1)
  {
    swift_once();
  }

  sub_100002D00(v2, qword_100083930);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    *(v20 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006C510, &v24);
    _os_log_impl(&_mh_execute_header, v18, v19, "Finished %{public}s", v20, 0xCu);
    sub_100005ED8(v21);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1000457A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(sub_1000457C8, 0, 0);
}

uint64_t sub_1000457C8()
{
  static Strings.Daemon.bundleIdentifier.getter();
  v1._countAndFlagsBits = 0x752D74657365722ELL;
  v1._object = 0xEB00000000726573;
  String.append(_:)(v1);
  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_1000826D0 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1000458F8;

  return sub_100063734(0);
}

uint64_t sub_1000458F8()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return _swift_task_switch(sub_1000459F4, 0, 0);
}

uint64_t sub_1000459F4()
{
  v1 = *(v0 + 24);
  (*(v0 + 16))(0);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100045A90(int a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  a6(a5, v9);
}

uint64_t sub_100045B24()
{
  sub_100045BF4(*(v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_100045BF4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_100045C04()
{
  v1 = type metadata accessor for FormLaunchConfiguration();
  v2 = *(v1 - 1);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 + 15;
  v32 = v4;
  v33 = *(v2 + 80);
  v31 = v4 + 103;
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[5];

  v8 = v0[7];

  v9 = v0 + v3;
  v10 = *(v0 + v3 + 8);

  v11 = *(v0 + v3 + 24);

  v12 = *(v0 + v3 + 40);

  v13 = *(v0 + v3 + 56);

  v14 = *(v0 + v3 + 72);

  v15 = *(v0 + v3 + 88);

  v16 = v1[6];
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 8);
  v19(&v9[v16], v17);
  v20 = v1[8];
  v21 = *(v18 + 48);
  if (!v21(&v9[v20], 1, v17))
  {
    v19(&v9[v20], v17);
  }

  v22 = v5 & 0xFFFFFFFFFFFFFFF8;
  v23 = v31 & 0xFFFFFFFFFFFFFFF8;
  v24 = v1[9];
  if (!v21(&v9[v24], 1, v17))
  {
    v19(&v9[v24], v17);
  }

  v25 = *(v0 + v22 + 8);

  v26 = *(v0 + v22 + 24);

  v27 = *(v0 + v22 + 40);

  v28 = *(v0 + v22 + 56);

  if (*(v0 + v23))
  {
    v29 = *(v0 + v23 + 8);
  }

  return _swift_deallocObject(v0, v23 + 16, v33 | 7);
}

uint64_t sub_100045E3C(uint64_t a1)
{
  v3 = v2;
  v4 = *(type metadata accessor for FormLaunchConfiguration() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 103) & 0xFFFFFFFFFFFFFFF8;
  v18 = v1[2];
  v17 = v1[3];
  v8 = v1[5];
  v16 = v1[4];
  v9 = v1[6];
  v10 = v1[7];
  v11 = *(v1 + v6);
  v12 = *(v1 + v7);
  v13 = *(v1 + v7 + 8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_10002E084;

  return sub_1000406BC(a1, v18, v17, v16, v8, v9, v10, v1 + v5);
}

uint64_t sub_100045FB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_100046018()
{
  result = qword_100083A30;
  if (!qword_100083A30)
  {
    type metadata accessor for FormItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100083A30);
  }

  return result;
}

uint64_t sub_100046070()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000460B0(uint64_t a1, unint64_t a2, uint64_t a3, void (**a4)(void, void, void))
{
  v8 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v35 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  _Block_copy(a4);
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100002D00(v13, qword_100083930);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35[0] = a4;
    v17 = a3;
    v18 = a2;
    v19 = v12;
    v20 = a1;
    v21 = v16;
    v22 = swift_slowAlloc();
    v36[0] = v22;
    *v21 = 136446210;
    *(v21 + 4) = sub_1000049B8(0xD00000000000002ALL, 0x800000010006C600, v36);
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s", v21, 0xCu);
    sub_100005ED8(v22);

    a1 = v20;
    v12 = v19;
    a2 = v18;
    a3 = v17;
    a4 = v35[0];
  }

  v24 = *(a3 + 16);
  if (v24 == 1 || v24 && (v36[0] = a1, v36[1] = a2, __chkstk_darwin(v23), v35[-2] = v36, , v25 = sub_100062FB4(sub_10004752C, &v35[-4], v24), sub_100045BF4(v24), (v25 & 1) == 0))
  {

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36[0] = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_1000049B8(a1, a2, v36);
      _os_log_impl(&_mh_execute_header, v28, v29, "Client is not entitled to access form [%{public}s]", v30, 0xCu);
      sub_100005ED8(v31);
    }

    sub_10000BCE0();
    swift_allocError();
    *v32 = 7;
    v33 = _convertErrorToNSError(_:)();
    (a4)[2](a4, 0, v33);
  }

  else
  {
    static TaskPriority.utility.getter();
    v26 = type metadata accessor for TaskPriority();
    (*(*(v26 - 8) + 56))(v11, 0, 1, v26);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = a1;
    v27[5] = a2;
    v27[6] = sub_1000473E4;
    v27[7] = v12;

    sub_100059484(0, 0, v11, &unk_100069AC0, v27);

    sub_1000071C8(v11, &qword_1000833B0, &qword_100068D60);
  }
}

uint64_t sub_10004651C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100002D00(v10, qword_100083930);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v13 = 136446466;
    *(v13 + 4) = sub_1000049B8(0xD000000000000035, 0x800000010006C5A0, &v18);
    *(v13 + 12) = 2082;
    *(v13 + 14) = sub_1000049B8(a1, a2, &v18);
    _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s form: %{public}s", v13, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for FBKSSharedPersistence();
  static FBKSSharedPersistence.removeInboxTat(_:)();
  static TaskPriority.utility.getter();
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;

  sub_100059788(0, 0, v9, &unk_100069AB0, v15);

  return (*(a3 + 16))(a3, 0);
}

uint64_t sub_1000467C0(uint64_t a1, unint64_t a2, void *a3, int a4, void *a5, uint64_t a6)
{
  v40 = a1;
  v11 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v34 - v13;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100002D00(v15, qword_100083930);
  v16 = a3;
  v17 = a5;

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  v20 = os_log_type_enabled(v18, v19);
  v38 = a3;
  v39 = a5;
  v37 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v35 = a4;
    v22 = v16;
    v23 = v21;
    v24 = swift_slowAlloc();
    v36 = a6;
    v25 = v24;
    v34 = swift_slowAlloc();
    v41 = v34;
    *v23 = 136446978;
    *(v23 + 4) = sub_1000049B8(0xD000000000000049, 0x800000010006C530, &v41);
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_1000049B8(v40, a2, &v41);
    *(v23 + 22) = 2114;
    *(v23 + 24) = v22;
    *v25 = a3;
    *(v23 + 32) = 1024;
    v26 = v22;
    LOBYTE(v22) = v35;

    *(v23 + 34) = a5 != 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s form: %{public}s feedback: [%{public}@] has error? %{BOOL}d", v23, 0x26u);
    sub_1000071C8(v25, &qword_100082708, &qword_100068320);
    a6 = v36;

    swift_arrayDestroy();

    if ((v22 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (a4)
  {
LABEL_7:
    type metadata accessor for FBKSSharedPersistence();
    static FBKSSharedPersistence.removeInboxTat(_:)();
  }

LABEL_8:
  static TaskPriority.utility.getter();
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v14, 0, 1, v27);
  v28 = swift_allocObject();
  v28[2] = 0;
  v28[3] = 0;
  v29 = v39;
  v28[4] = v40;
  v28[5] = a2;
  v30 = v38;
  v28[6] = v29;
  v28[7] = v30;
  v31 = v17;

  v32 = v37;
  sub_100059484(0, 0, v14, &unk_100069A98, v28);

  sub_1000071C8(v14, &qword_1000833B0, &qword_100068D60);
  return (*(a6 + 16))(a6, 0);
}

uint64_t sub_100046B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002D00(v8, qword_100083930);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1000049B8(0xD000000000000018, 0x800000010006C510, &v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s", v11, 0xCu);
    sub_100005ED8(v12);
  }

  static TaskPriority.utility.getter();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;

  sub_100059484(0, 0, v7, &unk_100069A88, v14);

  return sub_1000071C8(v7, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_100046DB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - v6;
  if (qword_100082638 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100002D00(v8, qword_100083930);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_1000049B8(0xD000000000000023, 0x800000010006C4E0, &v17);
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s", v11, 0xCu);
    sub_100005ED8(v12);
  }

  static TaskPriority.utility.getter();
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;

  sub_100059484(0, 0, v7, &unk_100069A78, v14);

  return sub_1000071C8(v7, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_100047018(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E084;

  return sub_1000457A8(a1, v4, v5, v7, v6);
}

uint64_t sub_1000470D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000BEA0;

  return sub_100044DBC(a1, v4, v5, v7, v6);
}

uint64_t sub_100047198()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000471E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002E084;

  return sub_10004427C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1000472D4(void (*a1)(void))
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  a1(*(v1 + 40));

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_100047324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10002E084;

  return sub_100043FF0(a1, v4, v5, v7, v6);
}

uint64_t sub_1000473EC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100047434(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002E084;

  return sub_100043A24(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_100047508(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_10004754C()
{
  static Strings.Daemon.configurationUserDefaultsDomain.getter();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithSuiteName:v1];

  if (v2)
  {
    qword_100085E20 = v2;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000475D0()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010006C800;
  *(inited + 48) = 48;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083A38 = 0xD000000000000014;
  unk_100083A40 = 0x800000010006C800;
  qword_100083A48 = v2;
}

void sub_100047718()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010006C820;
  *(inited + 48) = 1;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083A50 = 0xD000000000000018;
  *algn_100083A58 = 0x800000010006C820;
  qword_100083A60 = v2;
}

void sub_100047860()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010006C840;
  *(inited + 48) = 5;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083A68 = 0xD000000000000011;
  unk_100083A70 = 0x800000010006C840;
  qword_100083A78 = v2;
}

void sub_1000479A8()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010006C7C0;
  *(inited + 48) = 11;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083A80 = 0xD000000000000010;
  *algn_100083A88 = 0x800000010006C7C0;
  qword_100083A90 = v2;
}

void sub_100047AF0()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD000000000000012;
  *(inited + 16) = xmmword_100069110;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0x800000010006C7E0;
  *(inited + 48) = 0;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083A98 = 0xD000000000000012;
  unk_100083AA0 = 0x800000010006C7E0;
  qword_100083AA8 = v2;
}

void sub_100047C34()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0x6F43657A6F6F6E73;
  *(inited + 72) = &type metadata for Int;
  *(inited + 40) = 0xEB00000000746E75;
  *(inited + 48) = 3;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083AB0 = 0x6F43657A6F6F6E73;
  *algn_100083AB8 = 0xEB00000000746E75;
  qword_100083AC0 = v2;
}

void sub_100047D80()
{
  if (qword_100082640 != -1)
  {
    swift_once();
  }

  v0 = qword_100085E20;
  sub_100004F70(&qword_100082E80, &qword_1000692C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100069110;
  *(inited + 32) = 0x6567676972546F6ELL;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 0;
  v2 = v0;
  sub_100015ADC(inited);
  swift_setDeallocating();
  sub_100047EC8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v2 registerDefaults:isa];

  qword_100083AC8 = 0x6567676972546F6ELL;
  unk_100083AD0 = 0xE900000000000072;
  qword_100083AD8 = v2;
}

uint64_t sub_100047EC8(uint64_t a1)
{
  v2 = sub_100004F70(&qword_100082E58, &qword_100069150);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100047F48(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v6 = isa;
  (*(a4 + 16))(a4);
}

uint64_t sub_100047FBC()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, qword_100083AE0);
  sub_100002D00(v0, qword_100083AE0);
  static Strings.Daemon.bundleIdentifier.getter();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100048028()
{
  v0 = type metadata accessor for Logger();
  sub_100007284(v0, CFBLog);
  v1 = sub_100002D00(v0, CFBLog);
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v2 = sub_100002D00(v0, qword_100083AE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t CFBLog.unsafeMutableAddressor()
{
  if (qword_100082688 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100002D00(v0, CFBLog);
}

uint64_t sub_100048154()
{
  [v0 auditToken];
  if (xpc_copy_code_signing_identity_for_token() && (v1 = String.init(utf8String:)(), v2))
  {
    v6[0] = v1;
    v6[1] = v2;
    __chkstk_darwin(v1);
    v5[2] = v6;
    v3 = sub_100062FB4(sub_100045BD4, v5, &off_10007DC58);
  }

  else
  {
    v3 = 1;
  }

  return v3 & 1;
}

uint64_t sub_10004824C(void (*a1)(void))
{
  a1();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 valueForEntitlement:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v5;
    }
  }

  else
  {
    sub_1000071C8(v8, &qword_100082860, &unk_1000683C0);
    return 0;
  }

  return result;
}

id sub_100048338()
{
  result = [objc_allocWithZone(type metadata accessor for CentralizedFeedbackDaemon()) init];
  qword_100085E40 = result;
  return result;
}

uint64_t sub_100048368()
{
  static Strings.Daemon.bundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_diagnostics = os_variant_has_internal_diagnostics();

  byte_100083AF8 = has_internal_diagnostics;
  return result;
}

uint64_t sub_1000483B8()
{
  if (qword_100082698 != -1)
  {
    result = swift_once();
  }

  if (byte_100083AF8)
  {
    v0 = 5;
  }

  else
  {
    v0 = 10;
  }

  dword_100083AFC = v0;
  return result;
}

uint64_t sub_100048420()
{
  if (qword_100082698 != -1)
  {
    result = swift_once();
  }

  v0 = 86400.0;
  if (byte_100083AF8)
  {
    v0 = 10800.0;
  }

  qword_100083B00 = *&v0;
  return result;
}

void sub_10004853C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v25 - v5;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100002D00(v7, qword_100083AE0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25[0] = v11;
    v25[1] = ObjectType;
    *v10 = 136446210;
    swift_getMetatypeMetadata();
    v12 = String.init<A>(describing:)();
    v14 = sub_1000049B8(v12, v13, v25);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "Started %{public}s", v10, 0xCu);
    sub_100005ED8(v11);
  }

  static TaskPriority.utility.getter();
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v6, 0, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v1;
  v17 = v1;
  sub_100059484(0, 0, v6, &unk_100069BC8, v16);

  sub_1000071C8(v6, &qword_1000833B0, &qword_100068D60);
  static Strings.XPC.CentralizedFeedback.machService.getter();
  v18 = objc_allocWithZone(NSXPCListener);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 initWithMachServiceName:v19];

  v21 = OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_listener;
  v22 = *&v17[OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_listener];
  *&v17[OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_listener] = v20;
  v23 = v20;

  if (v23)
  {
    [v23 setDelegate:v17];

    v24 = *&v17[v21];
    if (v24)
    {
      [v24 resume];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100048844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  v5 = *(*(sub_100004F70(&unk_100083410, &qword_100068D50) - 8) + 64) + 15;
  *(v4 + 48) = swift_task_alloc();

  return _swift_task_switch(sub_1000488E0, 0, 0);
}

uint64_t sub_1000488E0()
{
  static Strings.Daemon.bundleIdentifier.getter();

  v1._countAndFlagsBits = 0x6D6561446266632ELL;
  v1._object = 0xEF74726174536E6FLL;
  String.append(_:)(v1);

  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  if (qword_1000825C0 != -1)
  {
    swift_once();
  }

  v2 = qword_100085DD8;
  *(v0 + 56) = qword_100085DD8;

  return _swift_task_switch(sub_1000489F8, v2, 0);
}

uint64_t sub_1000489F8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = [objc_opt_self() standardUserDefaults];
  v4 = String._bridgeToObjectiveC()();
  [v3 doubleForKey:v4];

  Date.init(timeIntervalSince1970:)();
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = OBJC_IVAR____TtC9feedbackd25CFBNotificationController_lastNotificationDate;
  swift_beginAccess();
  sub_10000BFE8(v1, v2 + v6);
  swift_endAccess();

  return _swift_task_switch(sub_100048B50, 0, 0);
}

uint64_t sub_100048B50()
{
  v2 = v0[5];
  v1 = v0[6];
  sub_100053208();
  sub_100056204();

  v3 = v0[1];

  return v3();
}

void sub_100048BBC(void *a1, const char *a2)
{
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100002D00(v4, qword_100083AE0);
  v5 = a1;
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67240192;
    *(v7 + 4) = [v5 processIdentifier];

    _os_log_impl(&_mh_execute_header, oslog, v6, a2, v7, 8u);

    v8 = oslog;
  }

  else
  {

    v8 = v5;
  }
}

uint64_t sub_100048D4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002D00(v14, qword_100083AE0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CBC0, &v24);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
    sub_100005ED8(v18);
  }

  static TaskPriority.utility.getter();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = v5;
  sub_100013D40(a1, a2);

  v21 = v5;
  sub_100059484(0, 0, v13, &unk_100069BB8, v20);

  return sub_1000071C8(v13, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_100048FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  v9 = *(*(sub_100004F70(&qword_100082808, &qword_100068380) - 8) + 64) + 15;
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  v8[11] = v10;
  v11 = *(v10 - 8);
  v8[12] = v11;
  v12 = *(v11 + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_1000490D4, 0, 0);
}

uint64_t sub_1000490D4()
{
  v50 = v0;
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v49[0] = static Strings.Daemon.bundleIdentifier.getter();
  v49[1] = v3;

  v4._countAndFlagsBits = 0x64696C61766E692ELL;
  v4._object = 0xED00006E6F697461;
  String.append(_:)(v4);

  String.utf8CString.getter();

  os_transaction_create();

  swift_unknownObjectRelease();
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for FBKSDonation();
  sub_100058B7C(&unk_100083BD0, &type metadata accessor for FBKSDonation);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v8 = *(v0 + 16);
  *(v0 + 120) = v8;
  v9 = qword_100082680;
  v10 = v8;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100002D00(v11, qword_100083AE0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v49[0] = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CBC0, v49);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s: Decoded donation", v14, 0xCu);
    sub_100005ED8(v15);
  }

  v16 = *(v0 + 88);
  v17 = *(v0 + 96);
  v18 = *(v0 + 80);
  dispatch thunk of FBKSInteraction.evaluationID.getter();

  if ((*(v17 + 48))(v18, 1, v16) == 1)
  {
    sub_1000071C8(*(v0 + 80), &qword_100082808, &qword_100068380);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v49[0] = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CBC0, v49);
      _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s donation evaluationID is undefined", v21, 0xCu);
      sub_100005ED8(v22);
    }

    v23 = *(v0 + 64);
    (*(v0 + 56))(0);

    v25 = *(v0 + 104);
    v24 = *(v0 + 112);
    v26 = *(v0 + 80);

    v27 = *(v0 + 8);

    return v27();
  }

  else
  {
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    v31 = *(v0 + 88);
    v32 = *(v0 + 96);
    (*(v32 + 32))(v30, *(v0 + 80), v31);
    (*(v32 + 16))(v29, v30, v31);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.debug.getter();
    v35 = os_log_type_enabled(v33, v34);
    v37 = *(v0 + 96);
    v36 = *(v0 + 104);
    v38 = *(v0 + 88);
    if (v35)
    {
      v39 = swift_slowAlloc();
      v49[0] = swift_slowAlloc();
      *v39 = 136315394;
      *(v39 + 4) = sub_1000049B8(0xD00000000000002CLL, 0x800000010006CBC0, v49);
      *(v39 + 12) = 2080;
      sub_100058B7C(&unk_100083BC0, &type metadata accessor for UUID);
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v41;
      v45 = *(v37 + 8);
      v44 = v37 + 8;
      v43 = v45;
      v45(v36, v38);
      v46 = sub_1000049B8(v40, v42, v49);

      *(v39 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s: Donation has valid evaluationID: %s", v39, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v47 = *(v37 + 8);
      v44 = v37 + 8;
      v43 = v47;
      v47(v36, v38);
    }

    *(v0 + 128) = v44;
    *(v0 + 136) = v43;
    v48 = *(*(v0 + 72) + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeDonator);
    *(v0 + 144) = v48;

    return _swift_task_switch(sub_10004990C, v48, 0);
  }
}

uint64_t sub_10004990C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 112);
  v3 = objc_allocWithZone(BMFeedbackEvaluationResponse);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v5 = [v3 initWithEvaluationUuid:isa userResponse:6];

  [*(v1 + 112) sendEvent:v5];

  return _swift_task_switch(sub_1000499CC, 0, 0);
}

uint64_t sub_1000499CC()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v5 = *(v0 + 88);
  v6 = *(v0 + 64);
  (*(v0 + 56))(0);

  v1(v3, v5);
  v8 = *(v0 + 104);
  v7 = *(v0 + 112);
  v9 = *(v0 + 80);

  v10 = *(v0 + 8);

  return v10();
}

void sub_100049B74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004F70(&qword_100082808, &qword_100068380);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v13 - v8;
  sub_100058868(a1, &v13 - v8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v9, v10);
  }

  (*(a3 + 16))(a3, isa, a2);
}

uint64_t sub_100049CA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v23 - v12;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002D00(v14, qword_100083AE0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000049B8(0xD000000000000021, 0x800000010006CB90, &v24);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v17, 0xCu);
    sub_100005ED8(v18);
  }

  static TaskPriority.utility.getter();
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v13, 0, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = a3;
  v20[7] = a4;
  v20[8] = v5;
  sub_100013D40(a1, a2);

  v21 = v5;
  sub_100059484(0, 0, v13, &unk_100069BA8, v20);

  return sub_1000071C8(v13, &qword_1000833B0, &qword_100068D60);
}

uint64_t sub_100049F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = *(*(sub_100004F70(&qword_100082808, &qword_100068380) - 8) + 64) + 15;
  v8[11] = swift_task_alloc();
  v10 = type metadata accessor for CFBDonationCheck.Result.Invalid(0);
  v8[12] = v10;
  v11 = *(v10 - 8);
  v8[13] = v11;
  v12 = *(v11 + 64) + 15;
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v13 = *(*(type metadata accessor for CFBDonationCheck.Result(0) - 8) + 64) + 15;
  v8[16] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v8[17] = v14;
  v15 = *(v14 - 8);
  v8[18] = v15;
  v16 = *(v15 + 64) + 15;
  v8[19] = swift_task_alloc();

  return _swift_task_switch(sub_10004A0B4, 0, 0);
}

uint64_t sub_10004A0B4()
{
  v2 = v0[6];
  v1 = v0[7];
  static Strings.Daemon.bundleIdentifier.getter();

  v3._countAndFlagsBits = 0x6F6974616E6F642ELL;
  v3._object = 0xE90000000000006ELL;
  String.append(_:)(v3);

  String.utf8CString.getter();
  os_transaction_create();

  swift_unknownObjectRelease();
  v4 = type metadata accessor for JSONDecoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  type metadata accessor for FBKSDonation();
  sub_100058B7C(&unk_100083BD0, &type metadata accessor for FBKSDonation);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v0[20] = 0;
  v7 = v0[19];

  v8 = v0[2];
  v0[21] = v8;
  v9 = v8;
  UUID.init()();
  dispatch thunk of FBKSInteraction.setEvaluationID(_:)();
  v10 = swift_task_alloc();
  v0[22] = v10;
  *v10 = v0;
  v10[1] = sub_10004A588;
  v11 = v0[16];

  return sub_100016D08(v11, v9);
}

uint64_t sub_10004A588()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v4 = *v0;

  return _swift_task_switch(sub_10004A69C, 0, 0);
}

uint64_t sub_10004A69C()
{
  v32 = v0;
  v1 = v0[16];
  if ((*(v0[13] + 48))(v1, 1, v0[12]) == 1)
  {
    v2 = *(v0[10] + OBJC_IVAR____TtC9feedbackd25CentralizedFeedbackDaemon_biomeDonator);
    v0[23] = v2;

    return _swift_task_switch(sub_10004A9BC, v2, 0);
  }

  else
  {
    sub_100019310(v1, v0[15]);
    if (qword_100082680 != -1)
    {
      swift_once();
    }

    v3 = v0[14];
    v4 = v0[15];
    v5 = type metadata accessor for Logger();
    sub_100002D00(v5, qword_100083AE0);
    sub_100055F80(v4, v3);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[14];
    v10 = v0[15];
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v31 = v12;
      *v11 = 136446210;
      v13 = sub_100016618();
      v15 = v14;
      sub_100019374(v9);
      v16 = sub_1000049B8(v13, v15, &v31);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v6, v7, "Donation dropped due to: %{public}s", v11, 0xCu);
      sub_100005ED8(v12);
    }

    else
    {

      sub_100019374(v9);
    }

    sub_100019374(v10);
    v17 = v0[21];
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[17];
    v21 = v0[11];
    v23 = v0[8];
    v22 = v0[9];
    (*(v19 + 16))(v21, v18, v20);
    (*(v19 + 56))(v21, 0, 1, v20);
    v23(v21, 0);

    sub_1000071C8(v21, &qword_100082808, &qword_100068380);
    (*(v19 + 8))(v18, v20);
    v24 = v0[19];
    v25 = v0[15];
    v26 = v0[16];
    v27 = v0[14];
    v28 = v0[11];

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_10004A9BC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  CFBBiomeDonator.write(donation:)(*(v0 + 168));
  *(v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_10004AB88;
  }

  else
  {
    v3 = sub_10004AA48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10004AA48()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  (*(v3 + 16))(v5, v2, v4);
  (*(v3 + 56))(v5, 0, 1, v4);
  v7(v5, 0);

  sub_1000071C8(v5, &qword_100082808, &qword_100068380);
  (*(v3 + 8))(v2, v4);
  v8 = v0[19];
  v9 = v0[15];
  v10 = v0[16];
  v11 = v0[14];
  v12 = v0[11];

  v13 = v0[1];

  return v13();
}

uint64_t sub_10004AB88()
{
  v28 = v0;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = type metadata accessor for Logger();
  sub_100002D00(v2, qword_100083AE0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27 = v7;
    *v6 = 136315138;
    v0[5] = v5;
    swift_errorRetain();
    sub_100004F70(&unk_1000833F0, &unk_100068F00);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000049B8(v8, v9, &v27);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Donation error: %s", v6, 0xCu);
    sub_100005ED8(v7);
  }

  v11 = v0[24];
  v12 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];
  v16 = v0[11];
  v18 = v0[8];
  v17 = v0[9];
  (*(v14 + 56))(v16, 1, 1, v15);
  v19 = _convertErrorToNSError(_:)();
  v18(v16, v19);

  sub_1000071C8(v16, &qword_100082808, &qword_100068380);
  (*(v14 + 8))(v13, v15);
  v20 = v0[19];
  v21 = v0[15];
  v22 = v0[16];
  v23 = v0[14];
  v24 = v0[11];

  v25 = v0[1];

  return v25();
}

uint64_t sub_10004AE14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = a2;
  v36 = a3;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100004F70(&qword_1000833B0, &qword_100068D60);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v34 - v12;
  if (qword_100082680 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100002D00(v14, qword_100083AE0);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v34 = v8;
    v19 = v6;
    v20 = v4;
    v21 = a1;
    v22 = v18;
    v37 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_1000049B8(0xD00000000000002BLL, 0x800000010006CB40, &v37);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s", v17, 0xCu);
    sub_100005ED8(v22);
    a1 = v21;
    v4 = v20;
    v6 = v19;
    v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = v34;
  }

  v23 = [objc_opt_self() currentConnection];
  if (v23)
  {
    v24 = v23;
    v25 = sub_100048154();

    v26 = v25 ^ 1;
  }

  else
  {
    v26 = 1;
  }

  static TaskPriority.userInitiated.getter();
  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(v13, 0, 1, v27);
  (*(v7 + 16))(v9, a1, v6);
  v28 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v29 = swift_allocObject();
  *(v29 + 2) = 0;
  *(v29 + 3) = 0;
  *(v29 + 4) = v4;
  (*(v7 + 32))(&v29[v28], v9, v6);
  v30 = &v29[(v8 + v28 + 7) & 0xFFFFFFFFFFFFFFF8];
  v31 = v36;
  *v30 = v35;
  *(v30 + 1) = v31;
  v30[16] = v26 & 1;
  v32 = v4;

  sub_100059484(0, 0, v13, &unk_100069B98, v29);

  return sub_1000071C8(v13, &qword_1000833B0, &qword_100068D60);
}