id sub_100695654(void *a1, uint64_t a2)
{
  v17 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);
    v5 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v8 = *v4++;
      v7 = v8;
      v9 = String._bridgeToObjectiveC()();

      v10 = [a1 v5[508]];

      if (v10)
      {
        sub_1006936FC(v7);
        v11 = String._bridgeToObjectiveC()();
        v12 = v5;
        v13 = [v17 v5[508]];

        if (!v13 || (v14 = [v13 compare:v10], v13, v14 == -1))
        {
          v6 = String._bridgeToObjectiveC()();

          [v17 setToken:v10 forKey:v6];
        }

        else
        {
        }

        v5 = v12;
      }

      --v3;
    }

    while (v3);
  }

  return v17;
}

id sub_10069588C(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = String._bridgeToObjectiveC()();

      v11 = [a1 getTokenForKey:v10];

      if (v11)
      {
        sub_100692C78(v8, &qword_100935E88, &qword_100974D40, sub_1002F6E68);
        v12 = String._bridgeToObjectiveC()();
        v13 = [v4 getTokenForKey:v12];

        if (!v13 || (v14 = [v13 compare:v11], v13, v14 == -1))
        {
          v7 = String._bridgeToObjectiveC()();

          [v4 setToken:v11 forKey:v7];
        }

        else
        {
        }
      }

      --v5;
    }

    while (v5);
  }

  return v4;
}

id sub_100695D94(void *a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = (a2 + 32);
    v6 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v9 = *v5++;
      v8 = v9;
      v10 = String._bridgeToObjectiveC()();

      v11 = [a1 v6[508]];

      if (v11)
      {
        sub_100693EE4(v8);
        v12 = String._bridgeToObjectiveC()();
        v13 = v6;
        v14 = [v3 v6[508]];

        if (!v14 || (v15 = [v14 compare:v11], v14, v15 == -1))
        {
          v7 = String._bridgeToObjectiveC()();

          [v3 setToken:v11 forKey:v7];
        }

        else
        {
        }

        v6 = v13;
      }

      --v4;
    }

    while (v4);
  }

  return v3;
}

id sub_100695FE0(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v9 = *v6++;
      v8 = v9;
      sub_100672E54(v9);
      v10 = String._bridgeToObjectiveC()();

      v11 = [a1 getTokenForKey:v10];

      if (v11)
      {
        sub_1006942C0(v8);
        v12 = String._bridgeToObjectiveC()();
        v13 = [v4 getTokenForKey:v12];

        if (!v13 || (v14 = [v13 compare:v11], v13, v14 == -1))
        {
          v7 = String._bridgeToObjectiveC()();

          [v4 setToken:v11 forKey:v7];
        }

        else
        {
        }
      }

      --v5;
    }

    while (v5);
  }

  return v4;
}

id sub_100696194(void *a1, uint64_t a2, void *a3, void *a4)
{
  v5 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 32);
    v8 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v11 = *v7++;
      v10 = v11;
      v12 = String._bridgeToObjectiveC()();

      v13 = [a1 v8[508]];

      if (v13)
      {
        sub_1006944EC(v10, a3, a4);
        v14 = String._bridgeToObjectiveC()();
        v15 = v8;
        v16 = [v5 v8[508]];

        if (!v16 || (v17 = [v16 compare:v13], v16, v17 == -1))
        {
          v9 = String._bridgeToObjectiveC()();

          [v5 setToken:v13 forKey:v9];
        }

        else
        {
        }

        v8 = v15;
      }

      --v6;
    }

    while (v6);
  }

  return v5;
}

id sub_1006963A0(void *a1, uint64_t a2)
{
  v17 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = (a2 + 32);
    v5 = &selRef_accountStatusWithCompletionHandler_;
    do
    {
      v8 = *v4++;
      v7 = v8;
      v9 = String._bridgeToObjectiveC()();

      v10 = [a1 v5[508]];

      if (v10)
      {
        sub_100693AB0(v7);
        v11 = String._bridgeToObjectiveC()();
        v12 = v5;
        v13 = [v17 v5[508]];

        if (!v13 || (v14 = [v13 compare:v10], v13, v14 == -1))
        {
          v6 = String._bridgeToObjectiveC()();

          [v17 setToken:v10 forKey:v6];
        }

        else
        {
        }

        v5 = v12;
      }

      --v3;
    }

    while (v3);
  }

  return v17;
}

id sub_100696610(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 32);
    do
    {
      v8 = *v6;
      v9 = String._bridgeToObjectiveC()();

      v10 = [a1 getTokenForKey:v9];

      if (v10)
      {
        sub_100694810(v8);
        v11 = String._bridgeToObjectiveC()();
        v12 = [v4 getTokenForKey:v11];

        if (!v12 || (v13 = [v12 compare:v10], v12, v13 == -1))
        {
          v7 = String._bridgeToObjectiveC()();

          [v4 setToken:v10 forKey:v7];
        }

        else
        {
        }
      }

      ++v6;
      --v5;
    }

    while (v5);
  }

  return v4;
}

id sub_1006967F4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = [objc_allocWithZone(REMResolutionTokenMap) init];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = (a2 + 32);
    do
    {
      v10 = *v8;
      v11 = String._bridgeToObjectiveC()();

      v12 = [a1 getTokenForKey:v11];

      if (v12)
      {
        sub_1006934C8(v10, a3, a4);
        v13 = String._bridgeToObjectiveC()();
        v14 = [v6 getTokenForKey:v13];

        if (!v14 || (v15 = [v14 compare:v12], v14, v15 == -1))
        {
          v9 = String._bridgeToObjectiveC()();

          [v6 setToken:v12 forKey:v9];
        }

        else
        {
        }
      }

      ++v8;
      --v7;
    }

    while (v7);
  }

  return v6;
}

void sub_1006969AC(unint64_t a1, void (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_18:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

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

    v8 = v7;
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    a2();
    if (v2)
    {
      break;
    }

    if (v9 == v5)
    {
      return;
    }
  }

  swift_errorRetain();
  sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  if (swift_dynamicCast())
  {

    v10 = objc_opt_self();
    v11 = [v8 remObjectID];
    [v10 validationErrorMoveAcrossAccount:v11];

    swift_willThrow();
  }

  else
  {

    v12 = objc_opt_self();
    _StringGuts.grow(_:)(28);

    swift_getErrorValue();
    v13._countAndFlagsBits = Error.rem_errorDescription.getter();
    String.append(_:)(v13);

    v14 = String._bridgeToObjectiveC()();

    [v12 internalErrorWithDebugDescription:v14];

    swift_willThrow();
  }
}

void sub_100696C24(unint64_t a1, void (*a2)(id, void))
{
  if (a1 >> 62)
  {
LABEL_18:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return;
    }
  }

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

    v8 = v7;
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    a2(v7, *(v2 + 72));
    if (v3)
    {
      break;
    }

    if (v9 == v5)
    {
      return;
    }
  }

  swift_errorRetain();
  sub_1000F5104(&unk_1009399E0, &qword_100795D00);
  if (swift_dynamicCast())
  {

    v10 = objc_opt_self();
    v11 = [v8 remObjectID];
    [v10 validationErrorMoveAcrossAccount:v11];

    swift_willThrow();
  }

  else
  {

    v12 = objc_opt_self();
    _StringGuts.grow(_:)(28);

    swift_getErrorValue();
    v13._countAndFlagsBits = Error.rem_errorDescription.getter();
    String.append(_:)(v13);

    v14 = String._bridgeToObjectiveC()();

    [v12 internalErrorWithDebugDescription:v14];

    swift_willThrow();
  }
}

uint64_t sub_100696EA8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F3D8, &unk_1007B4F70);
  sub_10000CB48(&unk_10094F3E0, &qword_100940928, &unk_1007A0240);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100697048(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F4C8, &qword_1007B5020);
  sub_10000CB48(&qword_10094F4D0, &unk_10094F4D8, &qword_1007B5028);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_1006971E8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F500, &qword_1007B5048);
  sub_10000CB48(&qword_10094F508, &unk_10094F510, &qword_1007B5050);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100697388(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F538, &qword_1007B5070);
  sub_10000CB48(&qword_10094F540, &qword_10094F548, &qword_1007B5078);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100697528(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F5A0, &qword_1007B50C0);
  sub_10000CB48(&qword_10094F5A8, &qword_10094F5B0, &qword_1007B50C8);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_1006976C8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F1E8, &qword_1007B4DD0);
  sub_10000CB48(&qword_10094F1F0, &qword_10094F1F8, &qword_1007B4DD8);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100697868(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F230, &qword_1007B4E08);
  sub_10000CB48(&qword_10094F238, &qword_10094F240, &qword_1007B4E10);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100697A08(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F270, &qword_1007B4E40);
  sub_10000CB48(&qword_10094F278, &qword_10094F280, &qword_1007B4E48);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100697BA8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F318, &qword_1007B4ED0);
  sub_10000CB48(&qword_10094F320, &qword_10094F328, &qword_1007B4ED8);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100697D48(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F360, &qword_1007B4F10);
  sub_10000CB48(&qword_10094F368, &qword_10094F370, &qword_1007B4F18);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100697EE8(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 accountID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F5F0, &unk_1007B5108);
  sub_10000CB48(&unk_10094F5F8, &qword_10093F640, &qword_100796D50);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100698088(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  *&v6 = __chkstk_darwin(v3).n128_u64[0];
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a2 objectID];
  v10 = [v9 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = UUID.uuidString.getter();
  v13 = v12;
  (*(v4 + 8))(v8, v3);
  v15[2] = v13;
  v15[3] = a2;
  v15[1] = v11;
  sub_1000F5104(&qword_10094F650, &unk_1007B5140);
  sub_10000CB48(&qword_10094F658, &qword_10094F660, &unk_1007B1570);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

uint64_t sub_100698228(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_10037477C();
      }
    }

    else
    {
      v29 = v44;
      sub_10036CAA8(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093A980, &qword_1007B4F60);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100698498(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100374A1C();
      }
    }

    else
    {
      v29 = v44;
      sub_10036CE54(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943860, &unk_100797FC0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100698708(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100374FC4();
      }
    }

    else
    {
      v29 = v44;
      sub_10036D7D4(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093A958, &qword_100797F70);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100698978(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_10037517C();
      }
    }

    else
    {
      v29 = v44;
      sub_10036DAB4(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10094F7F0, &unk_100798000);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100698BE8(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100375190();
      }
    }

    else
    {
      v29 = v44;
      sub_10036DAC8(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093AA10, &unk_1007A43E0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100698E58(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_1003751A4();
      }
    }

    else
    {
      v29 = v44;
      sub_10036DADC(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093AA00, &unk_100797FF0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006990C8(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_1003751B8();
      }
    }

    else
    {
      v29 = v44;
      sub_10036DAF0(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10093A9F0, &unk_1007A4370);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100699338(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_1003754D0();
      }
    }

    else
    {
      v29 = v44;
      sub_10036E024(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943720, &unk_1007A4020);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006995A8(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_1003754E4();
      }
    }

    else
    {
      v29 = v44;
      sub_10036E038(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943760, &unk_100797FA0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100699818(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_1003754F8();
      }
    }

    else
    {
      v29 = v44;
      sub_10036E04C(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009437A0, &unk_1007A4090);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100699A88(unint64_t a1, void *a2)
{
  v5 = v3;
  v6 = v2;
  v9 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v274 = v253 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v276 = v253 - v13;
  v282 = type metadata accessor for URL();
  v277 = *(v282 - 8);
  v14 = *(v277 + 64);
  __chkstk_darwin(v282);
  v281 = v253 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = type metadata accessor for UUID();
  *&v273 = *(v285 - 8);
  v16 = *(v273 + 64);
  __chkstk_darwin(v285);
  v275 = v253 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v284 = v253 - v19;
  v20 = a2[2];
  v21 = a2[3];
  v279 = a2;
  v271 = a2[4];
  if (qword_100936008 != -1)
  {
    goto LABEL_190;
  }

LABEL_2:
  v270 = type metadata accessor for Logger();
  v22 = sub_100006654(v270, qword_100945730);

  v283 = v22;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  v25 = os_log_type_enabled(v23, v24);
  v26 = a1 >> 62;
  v286 = v6;
  v288 = a1;
  v280 = (a1 >> 62);
  if (v25)
  {
    v287 = v5;
    v4 = swift_slowAlloc();
    v289 = swift_slowAlloc();
    *v4 = 136446978;
    *(v4 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v289);
    *(v4 + 12) = 2048;
    if (!v26)
    {
      v27 = v20;
      v28 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_5;
    }

    goto LABEL_193;
  }

  while (1)
  {
    v21 = v26 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = _swiftEmptyArrayStorage;
    if (!v21)
    {
      break;
    }

    v289 = _swiftEmptyArrayStorage;
    v23 = &v289;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v21 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v6 = a1 & 0xC000000000000001;
      v287 = a1 & 0xFFFFFFFFFFFFFF8;
      a1 = off_1008D41F0;
      while (1)
      {
        v35 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        if (v6)
        {
          v36 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v34 >= *(v287 + 16))
          {
            goto LABEL_189;
          }

          v36 = v288[v34 + 4];
        }

        v37 = v36;
        sub_1005E3810([(__objc2_class *)v36 remObjectID], &qword_100944EC8, off_1008D41F0);
        v4 = v5;
        if (v5)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v20 = v289[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v34;
        v5 = 0;
        if (v35 == v21)
        {
          a1 = v288;
          v33 = v289;
          v6 = v286;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      swift_once();
      goto LABEL_2;
    }

    __break(1u);
LABEL_193:
    v27 = v20;
    v28 = _CocoaArrayWrapper.endIndex.getter();
LABEL_5:
    *(v4 + 14) = v28;

    *(v4 + 22) = 2082;
    sub_1000060C8(0, &qword_100944EC8, off_1008D41F0);
    v29 = [swift_getObjCClassFromMetadata() description];
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    v20 = sub_10000668C(v30, v32, &v289);
    a1 = v288;

    *(v4 + 24) = v20;
    *(v4 + 32) = 2082;
    *(v4 + 34) = sub_10000668C(v27, v21, &v289);
    _os_log_impl(&_mh_execute_header, v23, v24, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v4, 0x2Au);
    swift_arrayDestroy();

    v5 = v287;
    v6 = v286;
    v26 = v280;
  }

LABEL_20:
  v38 = *(v6 + 96);
  if (v38 > 1)
  {
    if ((v38 - 2) >= 3 && v38 != 4499 && v38 != 4599)
    {
      goto LABEL_198;
    }

LABEL_27:
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v289 = v42;
      *v41 = 136315138;
      v43 = [objc_opt_self() cdEntityName];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10000668C(v44, v46, &v289);
      a1 = v288;

      *(v41 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v39, v40, "Performing fetch during upsert {CDType: %s}", v41, 0xCu);
      sub_10000607C(v42);
    }

    v48 = sub_1006642C4(v33, v279);
    if (v5)
    {
      goto LABEL_183;
    }

    goto LABEL_35;
  }

  if (!v38)
  {
    goto LABEL_27;
  }

  if (v38 != 1)
  {
LABEL_198:
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2);
    __break(1u);
    return;
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v289 = v53;
    *v52 = 136315138;
    v54 = [objc_opt_self() cdEntityName];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = sub_10000668C(v55, v57, &v289);
    a1 = v288;

    *(v52 + 4) = v58;
    _os_log_impl(&_mh_execute_header, v50, v51, "Skipping fetch during upsert {CDType: %s}", v52, 0xCu);
    sub_10000607C(v53);
  }

  v48 = sub_10038FA70(_swiftEmptyArrayStorage);
LABEL_35:
  v59 = v48;
  if (v280)
  {
    v60 = _CocoaArrayWrapper.endIndex.getter();
    if (!v60)
    {
LABEL_182:

LABEL_183:

      return;
    }
  }

  else
  {
    v60 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      goto LABEL_182;
    }
  }

  v61 = 0;
  v62 = a1 & 0xC000000000000001;
  v264 = a1 & 0xFFFFFFFFFFFFFF8;
  v263 = (a1 + 32);
  v278 = (v273 + 8);
  v262 = (v273 + 56);
  v261 = (v273 + 48);
  v272 = (v277 + 8);
  *&v49 = 136446978;
  v258 = v49;
  *&v49 = 136446210;
  v273 = v49;
  *&v49 = 136447490;
  v255 = v49;
  *&v49 = 136447234;
  v254 = v49;
  *&v49 = 136446466;
  v257 = v49;
  v268 = v33;
  v269 = v59;
  v260 = v60;
  v259 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v62)
    {
      v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v64 = __OFADD__(v61++, 1);
      if (v64)
      {
        goto LABEL_194;
      }
    }

    else
    {
      if (v61 >= *(v264 + 16))
      {
        goto LABEL_195;
      }

      v63 = v263[v61];
      v64 = __OFADD__(v61++, 1);
      if (v64)
      {
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        swift_once();
        goto LABEL_179;
      }
    }

    v65 = v63;
    v66 = sub_1005E3810([(__objc2_class *)v65 remObjectID], &qword_100944EC8, off_1008D41F0);
    v287 = v5;
    if (v5)
    {

LABEL_186:
      return;
    }

    v267 = v66;
    v265 = v61;

    v280 = v65;
    v67 = [(__objc2_class *)v65 accountID];
    v68 = [v67 uuid];

    v69 = v284;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = UUID.uuidString.getter();
    v72 = v71;
    v73 = *v278;
    v74 = v285;
    (*v278)(v69, v285);
    v75 = [objc_opt_self() localInternalAccountID];
    v76 = [v75 uuid];

    v77 = v275;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v78 = UUID.uuidString.getter();
    v80 = v79;
    v277 = v73;
    v73(v77, v74);
    if (v70 != v78)
    {
      goto LABEL_47;
    }

    if (v72 == v80)
    {

      v81 = v267;
    }

    else
    {
LABEL_47:
      v82 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v81 = v267;
      if ((v82 & 1) == 0)
      {
        v85 = v269;
        v83 = v286;
        goto LABEL_55;
      }
    }

    v83 = v286;
    v84 = *(v286 + 68);
    v85 = v269;
    if (v84 >> 14 >= 2)
    {
      v65 = v280;
      if (v84 >> 14 == 2)
      {
        v86 = *(v286 + 64);
      }

      else
      {
        v86 = 0x7FFFFFFF;
      }
    }

    else
    {
      v86 = 2147483519;
      v65 = v280;
    }

    v87 = v287;
    sub_100009A40(2, v86);
    v287 = v87;
    if (v87)
    {

      goto LABEL_186;
    }

LABEL_55:
    v88._rawValue = &off_1008E0AD8;
    v89 = sub_1005F65A4(v88, &qword_100944EC8, off_1008D41F0);
    if (!*(v85 + 16))
    {
      break;
    }

    v90 = sub_100393C74(v81);
    if ((v91 & 1) == 0)
    {
      break;
    }

    v92 = v90;

    v93 = *(*(v85 + 56) + 8 * v92);
    v94 = v81;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v289 = v99;
      *v97 = v257;
      *(v97 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v289);
      *(v97 + 12) = 2114;
      *(v97 + 14) = v94;
      *v98 = v94;
      v100 = v94;
      _os_log_impl(&_mh_execute_header, v95, v96, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v97, 0x16u);
      sub_1000050A4(v98, &unk_100938E70, &unk_100797230);

      sub_10000607C(v99);
    }

    else
    {
    }

    v5 = v287;
LABEL_146:
    v61 = v265;
    v62 = v259;
    if (v265 == v260)
    {
      goto LABEL_182;
    }
  }

  if (v89 == 4)
  {
LABEL_187:

    [objc_opt_self() noSuchObjectErrorWithObjectID:v81];
    swift_willThrow();

    return;
  }

  v101 = 0x44497463656A626FLL;
  v102 = 0x617461646174656DLL;
  if (v89 == 2)
  {
    v102 = 7107189;
    v103 = 0xE300000000000000;
  }

  else
  {
    v103 = 0xE800000000000000;
  }

  if (v89)
  {
    v101 = 6911093;
    v104 = 0xE300000000000000;
  }

  else
  {
    v104 = 0xE800000000000000;
  }

  if (v89 <= 1u)
  {
    v105 = v101;
  }

  else
  {
    v105 = v102;
  }

  if (v89 <= 1u)
  {
    v106 = v104;
  }

  else
  {
    v106 = v103;
  }

  if (v105 == 0x44497463656A626FLL && v106 == 0xE800000000000000)
  {
    goto LABEL_74;
  }

  v107 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v107 & 1) == 0)
  {
    v174 = 0x617461646174656DLL;
    if (v89 > 1u)
    {
      if (v89 == 2)
      {
        v176 = 0xE300000000000000;
        v174 = 7107189;
      }

      else
      {
        v176 = 0xE800000000000000;
      }
    }

    else
    {
      if (v89)
      {
        v174 = 6911093;
      }

      else
      {
        v174 = 0x44497463656A626FLL;
      }

      if (v89)
      {
        v176 = 0xE300000000000000;
      }

      else
      {
        v176 = 0xE800000000000000;
      }
    }

    if (v174 == 6911093 && v176 == 0xE300000000000000)
    {
      goto LABEL_74;
    }

    v177 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v177)
    {
      goto LABEL_76;
    }

    v231 = 0x617461646174656DLL;
    if (v89 > 1u)
    {
      if (v89 == 2)
      {
        v232 = 0xE300000000000000;
        v231 = 7107189;
      }

      else
      {
        v232 = 0xE800000000000000;
      }
    }

    else
    {
      v231 = v89 ? 6911093 : 0x44497463656A626FLL;
      v232 = v89 ? 0xE300000000000000 : 0xE800000000000000;
    }

    if (v231 == 7107189 && v232 == 0xE300000000000000)
    {
      goto LABEL_74;
    }

    v233 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v233)
    {
      goto LABEL_76;
    }

    v234 = 0x617461646174656DLL;
    if (v89 > 1u)
    {
      if (v89 == 2)
      {
        v235 = 0xE300000000000000;
        v234 = 7107189;
      }

      else
      {
        v235 = 0xE800000000000000;
      }
    }

    else
    {
      v234 = v89 ? 6911093 : 0x44497463656A626FLL;
      v235 = v89 ? 0xE300000000000000 : 0xE800000000000000;
    }

    if (v234 == 0x617461646174656DLL && v235 == 0xE800000000000000)
    {
LABEL_74:

      goto LABEL_76;
    }

    v236 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v236)
    {
      goto LABEL_76;
    }

    goto LABEL_187;
  }

LABEL_76:

  v108 = *(v83 + 88);
  sub_1000060C8(0, &qword_100944EC8, off_1008D41F0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v110 = [ObjCClassFromMetadata entity];
  v111 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v110 insertIntoManagedObjectContext:v108];
  v112 = v271;
  [v108 assignObject:v111 toPersistentStore:v112];

  v113 = v111;
  v114 = [v81 uuid];
  v115 = v276;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v116 = v285;
  (*v262)(v115, 0, 1, v285);
  v117 = v115;
  v118 = v274;
  sub_10018E470(v117, v274);
  LODWORD(v116) = (*v261)(v118, 1, v116);
  v119 = v113;
  isa = 0;
  if (v116 != 1)
  {
    v121 = v274;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (v277)(v121, v285);
  }

  [v119 setIdentifier:isa];

  sub_1000050A4(v276, &unk_100939D90, "8\n\r");
  v122 = v81;
  v123 = v286;

  v124 = v119;
  v125 = Logger.logObject.getter();
  v126 = static os_log_type_t.default.getter();

  v127 = os_log_type_enabled(v125, v126);
  v267 = v124;
  v266 = v122;
  if (v127)
  {
    v128 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v256 = swift_slowAlloc();
    v294 = v256;
    *v128 = v258;
    *(v128 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v294);
    *(v128 + 12) = 2082;
    v130 = *(v123 + 40);
    v292 = *(v123 + 24);
    *v293 = v130;
    *&v293[14] = *(v123 + 54);
    sub_100009DAC(&v292, &v289);
    v131 = sub_1000063E8();
    v133 = v132;
    sub_1005812D4(&v292);
    v134 = sub_10000668C(v131, v133, &v294);

    *(v128 + 14) = v134;
    *(v128 + 22) = 2114;
    *(v128 + 24) = v122;
    *v129 = v122;
    *(v128 + 32) = 2112;
    v135 = v122;
    v136 = [v124 objectID];
    *(v128 + 34) = v136;
    v129[1] = v136;
    _os_log_impl(&_mh_execute_header, v125, v126, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v128, 0x2Au);
    sub_1000F5104(&unk_100938E70, &unk_100797230);
    swift_arrayDestroy();

    swift_arrayDestroy();
  }

  v137 = v279;
  swift_beginAccess();
  v138 = v137[6];
  if ((v138 & 0xC000000000000001) != 0)
  {
    if (v138 < 0)
    {
      v139 = v137[6];
    }

    else
    {
      v139 = v138 & 0xFFFFFFFFFFFFFF8;
    }

    v140 = v266;
    v141 = v266;
    v61 = v267;
    v142 = v267;
    v143 = __CocoaDictionary.count.getter();
    if (__OFADD__(v143, 1))
    {
      goto LABEL_196;
    }

    v137[6] = sub_10021CDBC(v139, v143 + 1);
  }

  else
  {
    v144 = v137[6];
    v140 = v266;
    v145 = v266;
    v61 = v267;
    v146 = v267;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v294 = v137[6];
  sub_1002C8398(v61, v140, isUniquelyReferenced_nonNull_native);
  v137[6] = v294;

  swift_endAccess();
  v148 = 0;
  v149 = *(v123 + 64) | (*(v123 + 68) << 32);
  while (1)
  {
    if ((v149 & 0xC00000000001) == 0x800000000000)
    {
      v150 = *(&off_1008E3208 + v148 + 32);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        v154 = swift_slowAlloc();
        v289 = v154;
        *v153 = v273;
        LOBYTE(v294) = v150;
        v155 = String.init<A>(describing:)();
        v157 = sub_10000668C(v155, v156, &v289);

        *(v153 + 4) = v157;
        _os_log_impl(&_mh_execute_header, v151, v152, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v153, 0xCu);
        sub_10000607C(v154);
        v123 = v286;
      }
    }

    v61 = *(v123 + 64);
    if (*(v123 + 68) >> 14 == 2 && (*(v123 + 64) & 1) == 0)
    {
      break;
    }

    ++v148;
    v149 = v61 & 0xFFFF0000FFFFFFFFLL | (*(v123 + 68) << 32);
    if (v148 == 4)
    {
      swift_retain_n();
      v159 = v266;
      v160 = v267;
      v161 = Logger.logObject.getter();
      v162 = static os_log_type_t.default.getter();

      v163 = os_log_type_enabled(v161, v162);
      v266 = v159;
      if (v163)
      {
        LODWORD(v256) = v162;
        v267 = v161;
        v164 = swift_slowAlloc();
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v294 = v166;
        *v164 = v255;
        *(v164 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v294);
        *(v164 + 12) = 2082;
        v167 = *(v123 + 40);
        v290 = *(v123 + 24);
        *v291 = v167;
        *&v291[14] = *(v123 + 54);
        sub_100009DAC(&v290, &v289);
        v168 = sub_1000063E8();
        v170 = v169;
        sub_1005812D4(&v290);
        v171 = sub_10000668C(v168, v170, &v294);

        *(v164 + 14) = v171;
        *(v164 + 22) = 2114;
        *(v164 + 24) = v159;
        *v165 = v159;
        *(v164 + 32) = 2112;
        v172 = v159;
        v173 = [v160 objectID];
        *(v164 + 34) = v173;
        v253[0] = v165;
        v165[1] = v173;
        *(v164 + 42) = 2082;
        v289 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, 4, 0);
        v178 = v289;
        v180 = v289[2];
        v179 = v289[3];
        v181 = v180 + 1;
        if (v180 >= v179 >> 1)
        {
          sub_100026EF4((v179 > 1), v180 + 1, 1);
          v178 = v289;
        }

        v178[2] = v181;
        v182 = &v178[2 * v180];
        v182[4] = 0x44497463656A626FLL;
        v182[5] = 0xE800000000000000;
        v253[1] = v166;
        v289 = v178;
        v183 = v178[3];
        if (v181 >= v183 >> 1)
        {
          sub_100026EF4((v183 > 1), v180 + 2, 1);
          v178 = v289;
        }

        v178[2] = v180 + 2;
        v184 = &v178[2 * v181];
        v184[4] = 6911093;
        v184[5] = 0xE300000000000000;
        v289 = v178;
        v186 = v178[2];
        v185 = v178[3];
        v187 = v186 + 1;
        if (v186 >= v185 >> 1)
        {
          sub_100026EF4((v185 > 1), v186 + 1, 1);
          v178 = v289;
        }

        v178[2] = v187;
        v188 = &v178[2 * v186];
        v188[4] = 7107189;
        v188[5] = 0xE300000000000000;
        v289 = v178;
        v189 = v178[3];
        if (v187 >= v189 >> 1)
        {
          sub_100026EF4((v189 > 1), v186 + 2, 1);
          v178 = v289;
        }

        v178[2] = v186 + 2;
        v190 = &v178[2 * v187];
        v190[4] = 0x617461646174656DLL;
        v190[5] = 0xE800000000000000;
        v191 = Array.description.getter();
        v193 = v192;

        v194 = sub_10000668C(v191, v193, &v294);

        *(v164 + 44) = v194;
        *(v164 + 52) = 1024;
        v195 = *(v286 + 104);

        *(v164 + 54) = v195;

        v196 = v267;
        _os_log_impl(&_mh_execute_header, v267, v256, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v164, 0x3Au);
        sub_1000F5104(&unk_100938E70, &unk_100797230);
        swift_arrayDestroy();

        swift_arrayDestroy();

        v175 = v280;
      }

      else
      {

        v175 = v280;
      }

      for (i = 0; i != 4; ++i)
      {
        if (*(&off_1008E3208 + i + 32) > 1u)
        {
          if (*(&off_1008E3208 + i + 32) == 2)
          {
            v198 = [(__objc2_class *)v175 url];
            v199 = v281;
            static URL._unconditionallyBridgeFromObjectiveC(_:)();

            URL._bridgeToObjectiveC()(v200);
            v202 = v201;
            (*v272)(v199, v282);
            v203 = &selRef_setUrl_;
          }

          else
          {
            v207 = [(__objc2_class *)v175 metadata];
            if (v207)
            {
              v208 = v207;
              v209 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
              v211 = v210;

              v202 = Data._bridgeToObjectiveC()().super.isa;
              v212 = v211;
              v175 = v280;
              sub_10001BBA0(v209, v212);
            }

            else
            {
              v202 = 0;
            }

            v203 = &selRef_setMetadata_;
          }
        }

        else if (*(&off_1008E3208 + i + 32))
        {
          v213 = [(__objc2_class *)v175 uti];
          if (v213)
          {
            v202 = v213;
          }

          else
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v202 = String._bridgeToObjectiveC()();
          }

          v203 = &selRef_setUti_;
        }

        else
        {
          v204 = [(__objc2_class *)v175 objectID];
          v205 = [v204 uuid];

          v206 = v284;
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          v202 = UUID._bridgeToObjectiveC()().super.isa;
          (v277)(v206, v285);
          v203 = &selRef_setIdentifier_;
        }

        [v160 *v203];
      }

      v214 = [v160 changedValues];

      v215 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v216 = v279;
      swift_beginAccess();
      v217 = v266;

      v218 = v216[7];
      v219 = swift_isUniquelyReferenced_nonNull_native();
      v294 = v216[7];
      v216[7] = 0x8000000000000000;
      sub_1002C8688(v215, v217, v219);

      v216[7] = v294;
      swift_endAccess();
      if (*(v286 + 104) == 1)
      {

        [v160 updateChangeCount];

        v5 = v287;
      }

      else
      {

        v220 = v217;

        v221 = Logger.logObject.getter();
        v222 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v221, v222))
        {
          v223 = swift_slowAlloc();
          v224 = swift_slowAlloc();
          v277 = swift_slowAlloc();
          v289 = v277;
          *v223 = v254;
          *(v223 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v289);
          *(v223 + 12) = 1024;
          *(v223 + 14) = 0;

          *(v223 + 18) = 1024;
          *(v223 + 20) = 1;
          *(v223 + 24) = 2114;
          *(v223 + 26) = v220;
          *v224 = v220;
          v225 = v224;
          *(v223 + 34) = 2082;
          v267 = v220;
          v226 = v287;
          sub_1005E2810(v215);

          v227 = Array.description.getter();
          v229 = v228;

          v230 = sub_10000668C(v227, v229, &v289);

          *(v223 + 36) = v230;
          _os_log_impl(&_mh_execute_header, v221, v222, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v223, 0x2Cu);
          sub_1000050A4(v225, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          v5 = v226;
        }

        else
        {

          v5 = v287;
        }
      }

      goto LABEL_146;
    }
  }

  if (qword_1009367A0 != -1)
  {
    goto LABEL_197;
  }

LABEL_179:
  sub_100006654(v270, qword_100950D98);
  v237 = Logger.logObject.getter();
  v238 = static os_log_type_t.error.getter();
  v239 = os_log_type_enabled(v237, v238);
  v240 = v266;
  if (v239)
  {
    v241 = swift_slowAlloc();
    v289 = swift_slowAlloc();
    *v241 = v257;
    v242 = sub_100729CB0(1);
    v244 = sub_10000668C(v242, v243, &v289);

    *(v241 + 4) = v244;
    *(v241 + 12) = 2082;
    v245 = sub_100729CB0(v61);
    v247 = sub_10000668C(v245, v246, &v289);

    *(v241 + 14) = v247;
    _os_log_impl(&_mh_execute_header, v237, v238, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v241, 0x16u);
    swift_arrayDestroy();
  }

  v248 = objc_opt_self();
  v249 = String._bridgeToObjectiveC()();
  sub_100729CB0(1);
  v250 = String._bridgeToObjectiveC()();

  sub_100729CB0(v61);
  v251 = String._bridgeToObjectiveC()();

  [v248 unauthorizedErrorWithMissingEntitlement:v249 requestedAccessLevel:v250 currentAccesslevel:v251];

  swift_willThrow();

  v252 = v267;
}

uint64_t sub_10069C030(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_10037550C();
      }
    }

    else
    {
      v29 = v44;
      sub_10036E060(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009437E0, &unk_100797FB0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10069C2A0(unint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v257 = v235 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v258 = v235 - v12;
  v261 = type metadata accessor for UUID();
  v13 = *(v261 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v261);
  v260 = v235 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v259 = v235 - v17;
  v18 = a2[2];
  v19 = a2[3];
  v262 = a2;
  v255 = a2[4];
  if (qword_100936008 != -1)
  {
LABEL_183:
    swift_once();
  }

  v254 = type metadata accessor for Logger();
  v20 = sub_100006654(v254, qword_100945730);

  v265 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = a1 >> 62;
  v266 = v5;
  v268 = a1;
  v263 = (a1 >> 62);
  v256 = v13;
  if (!v23)
  {

    goto LABEL_7;
  }

  v267 = v18;
  v18 = swift_slowAlloc();
  v269[0] = swift_slowAlloc();
  *v18 = 136446978;
  *(v18 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v269);
  *(v18 + 12) = 2048;
  v264 = v4;
  if (v24)
  {
    goto LABEL_186;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v18 + 14) = i;

    *(v18 + 22) = 2082;
    sub_1000060C8(0, &unk_100944ED0, off_1008D41A0);
    v26 = [swift_getObjCClassFromMetadata() description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_10000668C(v27, v29, v269);

    *(v18 + 24) = v30;
    v31 = v267;
    a1 = v268;
    *(v18 + 32) = 2082;
    *(v18 + 34) = sub_10000668C(v31, v19, v269);
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v18, 0x2Au);
    swift_arrayDestroy();

    v4 = v264;
    v5 = v266;
    v24 = v263;
LABEL_7:
    v13 = v24 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = _swiftEmptyArrayStorage;
    if (!v13)
    {
      break;
    }

    v269[0] = _swiftEmptyArrayStorage;
    v21 = v269;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v33 = 0;
      v5 = a1 & 0xC000000000000001;
      v267 = a1 & 0xFFFFFFFFFFFFFF8;
      v19 = off_1008D41A0;
      while (1)
      {
        v34 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_181:

          return;
        }

        if (v5)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v33 >= *(v267 + 16))
          {
            __break(1u);
            goto LABEL_183;
          }

          v35 = *(a1 + 8 * v33 + 32);
        }

        v36 = v35;
        sub_1005E3810([v35 remObjectID], &unk_100944ED0, off_1008D41A0);
        v18 = v4;
        if (v4)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v37 = *(v269[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v268;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v33;
        v4 = 0;
        if (v34 == v13)
        {
          v32 = v269[0];
          v5 = v266;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_186:
    ;
  }

LABEL_20:
  v38 = *(v5 + 96);
  if (v38 > 1)
  {
    if ((v38 - 2) >= 3 && v38 != 4499 && v38 != 4599)
    {
      goto LABEL_190;
    }

LABEL_27:
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v269[0] = v42;
      *v41 = 136315138;
      v43 = [objc_opt_self() cdEntityName];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10000668C(v44, v46, v269);

      *(v41 + 4) = v47;
      a1 = v268;
      _os_log_impl(&_mh_execute_header, v39, v40, "Performing fetch during upsert {CDType: %s}", v41, 0xCu);
      sub_10000607C(v42);
    }

    v48 = sub_100664BBC(v32, v262);
    if (v4)
    {
      goto LABEL_172;
    }

    goto LABEL_35;
  }

  if (!v38)
  {
    goto LABEL_27;
  }

  if (v38 != 1)
  {
LABEL_190:
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2);
    __break(1u);
    return;
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v269[0] = v53;
    *v52 = 136315138;
    v54 = [objc_opt_self() cdEntityName];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = sub_10000668C(v55, v57, v269);

    *(v52 + 4) = v58;
    a1 = v268;
    _os_log_impl(&_mh_execute_header, v50, v51, "Skipping fetch during upsert {CDType: %s}", v52, 0xCu);
    sub_10000607C(v53);
  }

  v48 = sub_10038FA84(_swiftEmptyArrayStorage);
LABEL_35:
  v59 = v48;
  if (v263)
  {
    v60 = _CocoaArrayWrapper.endIndex.getter();
    if (!v60)
    {
LABEL_171:

LABEL_172:

      return;
    }
  }

  else
  {
    v60 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      goto LABEL_171;
    }
  }

  v61 = 0;
  v62 = a1 & 0xC000000000000001;
  v63 = a1 & 0xFFFFFFFFFFFFFF8;
  v64 = a1 + 32;
  v250 = (v256 + 8);
  v267 = 0x80000001007EA7D0;
  v243 = v256 + 56;
  v242 = (v256 + 48);
  *&v49 = 136446978;
  v240 = v49;
  *&v49 = 136446210;
  v253 = v49;
  *&v49 = 136447490;
  v239 = v49;
  *&v49 = 136447234;
  v238 = v49;
  *&v49 = 136446466;
  v241 = v49;
  v251 = v32;
  v252 = v59;
  v247 = v60;
  v246 = a1 & 0xC000000000000001;
  v245 = a1 & 0xFFFFFFFFFFFFFF8;
  v244 = a1 + 32;
  while (1)
  {
    if (v62)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v66 = __OFADD__(v61, 1);
      v67 = v61 + 1;
      if (v66)
      {
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }
    }

    else
    {
      if (v61 >= *(v63 + 16))
      {
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        swift_once();
LABEL_175:
        sub_100006654(v254, qword_100950D98);
        v220 = Logger.logObject.getter();
        v221 = static os_log_type_t.error.getter();
        v222 = os_log_type_enabled(v220, v221);
        v223 = v263;
        if (v222)
        {
          v224 = swift_slowAlloc();
          v269[0] = swift_slowAlloc();
          *v224 = v241;
          v225 = sub_100729CB0(1);
          v227 = sub_10000668C(v225, v226, v269);

          *(v224 + 4) = v227;
          *(v224 + 12) = 2082;
          v228 = sub_100729CB0(v4);
          v230 = sub_10000668C(v228, v229, v269);

          *(v224 + 14) = v230;
          _os_log_impl(&_mh_execute_header, v220, v221, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v224, 0x16u);
          swift_arrayDestroy();
        }

        v231 = objc_opt_self();
        v232 = String._bridgeToObjectiveC()();
        sub_100729CB0(1);
        v233 = String._bridgeToObjectiveC()();

        sub_100729CB0(v4);
        v234 = String._bridgeToObjectiveC()();

        [v231 unauthorizedErrorWithMissingEntitlement:v232 requestedAccessLevel:v233 currentAccesslevel:v234];

        swift_willThrow();

        return;
      }

      v65 = *(v64 + 8 * v61);
      v66 = __OFADD__(v61, 1);
      v67 = v61 + 1;
      if (v66)
      {
        goto LABEL_170;
      }
    }

    v68 = v65;
    v263 = sub_1005E3810([v68 remObjectID], &unk_100944ED0, off_1008D41A0);
    if (v4)
    {

      return;
    }

    v249 = v67;
    v264 = 0;

    v256 = v68;
    v69 = [v68 accountID];
    v70 = [v69 uuid];

    v71 = v259;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = UUID.uuidString.getter();
    v74 = v73;
    v75 = *v250;
    v76 = v261;
    (*v250)(v71, v261);
    v77 = [objc_opt_self() localInternalAccountID];
    v78 = [v77 uuid];

    v79 = v260;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = UUID.uuidString.getter();
    v82 = v81;
    v248 = v75;
    (v75)(v79, v76);
    if (v72 != v80)
    {
      goto LABEL_47;
    }

    if (v74 == v82)
    {

      v83 = v267;
      v84 = v266;
    }

    else
    {
LABEL_47:
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v83 = v267;
      v84 = v266;
      if ((v85 & 1) == 0)
      {
        v87 = v252;
        goto LABEL_55;
      }
    }

    v86 = *(v84 + 68);
    v87 = v252;
    v88 = v256;
    if (v86 >> 14 >= 2)
    {
      if (v86 >> 14 == 2)
      {
        v89 = *(v84 + 64);
      }

      else
      {
        v89 = 0x7FFFFFFF;
      }
    }

    else
    {
      v89 = 2147483519;
    }

    v90 = v264;
    sub_100009A40(2, v89);
    v264 = v90;
    if (v90)
    {

      return;
    }

LABEL_55:
    v91._rawValue = &off_1008E0D68;
    v92 = sub_1005F7674(v91, &unk_100944ED0, off_1008D41A0);
    if (!*(v87 + 16))
    {
      break;
    }

    v93 = sub_100393C74(v263);
    if ((v94 & 1) == 0)
    {
      break;
    }

    v95 = v93;

    v96 = *(*(v87 + 56) + 8 * v95);
    v97 = v263;
    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v269[0] = v102;
      *v100 = v241;
      *(v100 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v269);
      *(v100 + 12) = 2114;
      *(v100 + 14) = v97;
      *v101 = v97;
      v103 = v97;
      _os_log_impl(&_mh_execute_header, v98, v99, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v100, 0x16u);
      sub_1000050A4(v101, &unk_100938E70, &unk_100797230);

      sub_10000607C(v102);
    }

    else
    {
    }

    v4 = v264;
LABEL_166:
    v61 = v249;
    v62 = v246;
    v63 = v245;
    v64 = v244;
    if (v249 == v247)
    {
      goto LABEL_171;
    }
  }

  if (v92 != 7)
  {
    v104 = 0;
    while (v104 != 7)
    {
      v106 = *(&off_1008E3230 + v104 + 32);
      if (v106 <= 2)
      {
        if (*(&off_1008E3230 + v104 + 32))
        {
          if (v106 == 1)
          {
            v107 = 6911093;
          }

          else
          {
            v107 = 0x657A6953656C6966;
          }

          if (v106 == 1)
          {
            v108 = 0xE300000000000000;
          }

          else
          {
            v108 = 0xE800000000000000;
          }
        }

        else
        {
          v108 = 0xE800000000000000;
          v107 = 0x44497463656A626FLL;
        }
      }

      else if (*(&off_1008E3230 + v104 + 32) > 4u)
      {
        if (v106 == 5)
        {
          v108 = 0xE500000000000000;
          v107 = 0x6874646977;
        }

        else
        {
          v108 = 0xE600000000000000;
          v107 = 0x746867696568;
        }
      }

      else
      {
        if (v106 == 3)
        {
          v107 = 0x4C5255656C6966;
        }

        else
        {
          v107 = 0xD000000000000012;
        }

        if (v106 == 3)
        {
          v108 = 0xE700000000000000;
        }

        else
        {
          v108 = v83;
        }
      }

      v109 = 0x746867696568;
      if (v92 == 5)
      {
        v109 = 0x6874646977;
      }

      v110 = 0xE600000000000000;
      if (v92 == 5)
      {
        v110 = 0xE500000000000000;
      }

      v111 = 0xD000000000000012;
      if (v92 == 3)
      {
        v111 = 0x4C5255656C6966;
      }

      v112 = 0xE700000000000000;
      if (v92 != 3)
      {
        v112 = v83;
      }

      if (v92 <= 4u)
      {
        v109 = v111;
        v110 = v112;
      }

      v113 = 0x657A6953656C6966;
      if (v92 == 1)
      {
        v113 = 6911093;
      }

      v114 = 0xE300000000000000;
      if (v92 != 1)
      {
        v114 = 0xE800000000000000;
      }

      if (!v92)
      {
        v113 = 0x44497463656A626FLL;
        v114 = 0xE800000000000000;
      }

      if (v92 <= 2u)
      {
        v115 = v113;
      }

      else
      {
        v115 = v109;
      }

      if (v92 <= 2u)
      {
        v116 = v114;
      }

      else
      {
        v116 = v110;
      }

      if (v107 == v115 && v108 == v116)
      {

LABEL_107:

        v117 = *(v266 + 88);
        sub_1000060C8(0, &unk_100944ED0, off_1008D41A0);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v119 = [ObjCClassFromMetadata entity];
        v120 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v119 insertIntoManagedObjectContext:v117];
        v121 = v255;
        [v117 assignObject:v120 toPersistentStore:v121];

        v122 = v120;
        v123 = [v263 uuid];
        v124 = v258;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v125 = v261;
        (*v243)(v124, 0, 1, v261);
        v126 = v124;
        v127 = v257;
        sub_10018E470(v126, v257);
        LODWORD(v125) = (*v242)(v127, 1, v125);
        v128 = v122;
        isa = 0;
        if (v125 != 1)
        {
          v130 = v257;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (v248)(v130, v261);
        }

        [v128 setIdentifier:isa];

        sub_1000050A4(v258, &unk_100939D90, "8\n\r");
        v131 = v263;
        v132 = v266;

        v133 = v128;
        v4 = Logger.logObject.getter();
        v134 = static os_log_type_t.default.getter();

        v135 = os_log_type_enabled(v4, v134);
        v263 = v133;
        v248 = v131;
        if (v135)
        {
          v136 = swift_slowAlloc();
          v137 = swift_slowAlloc();
          v138 = v131;
          v274 = swift_slowAlloc();
          *v136 = v240;
          *(v136 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v274);
          *(v136 + 12) = 2082;
          v139 = *(v132 + 40);
          v272 = *(v132 + 24);
          *v273 = v139;
          *&v273[14] = *(v132 + 54);
          sub_100009DAC(&v272, v269);
          v140 = sub_1000063E8();
          v142 = v141;
          sub_1005812D4(&v272);
          v143 = sub_10000668C(v140, v142, &v274);

          *(v136 + 14) = v143;
          *(v136 + 22) = 2114;
          *(v136 + 24) = v138;
          *v137 = v138;
          *(v136 + 32) = 2112;
          v144 = v138;
          v145 = [v263 objectID];
          *(v136 + 34) = v145;
          v137[1] = v145;
          _os_log_impl(&_mh_execute_header, v4, v134, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v136, 0x2Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();
        }

        v146 = v262;
        swift_beginAccess();
        v147 = v146[6];
        if ((v147 & 0xC000000000000001) != 0)
        {
          if (v147 < 0)
          {
            v148 = v146[6];
          }

          else
          {
            v148 = v147 & 0xFFFFFFFFFFFFFF8;
          }

          v149 = v248;
          v150 = v248;
          v151 = v263;
          v152 = v263;
          v153 = __CocoaDictionary.count.getter();
          if (__OFADD__(v153, 1))
          {
            goto LABEL_188;
          }

          v146[6] = sub_10021CDBC(v148, v153 + 1);
        }

        else
        {
          v154 = v146[6];
          v149 = v248;
          v155 = v248;
          v151 = v263;
          v156 = v263;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v274 = v146[6];
        sub_1002C8398(v151, v149, isUniquelyReferenced_nonNull_native);
        v146[6] = v274;

        swift_endAccess();
        v158 = 0;
        v159 = *(v132 + 64) | (*(v132 + 68) << 32);
        do
        {
          if ((v159 & 0xC00000000001) == 0x800000000000)
          {
            v160 = *(&off_1008E3230 + v158 + 32);
            v161 = Logger.logObject.getter();
            v162 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v161, v162))
            {
              v163 = swift_slowAlloc();
              v164 = swift_slowAlloc();
              v269[0] = v164;
              *v163 = v253;
              LOBYTE(v274) = v160;
              v165 = String.init<A>(describing:)();
              v167 = sub_10000668C(v165, v166, v269);

              *(v163 + 4) = v167;
              _os_log_impl(&_mh_execute_header, v161, v162, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v163, 0xCu);
              sub_10000607C(v164);
              v132 = v266;
            }
          }

          v4 = *(v132 + 64);
          if (*(v132 + 68) >> 14 == 2 && (*(v132 + 64) & 1) == 0)
          {
            if (qword_1009367A0 != -1)
            {
              goto LABEL_189;
            }

            goto LABEL_175;
          }

          ++v158;
          v159 = v4 & 0xFFFF0000FFFFFFFFLL | (*(v132 + 68) << 32);
        }

        while (v158 != 7);
        swift_retain_n();
        v13 = v248;
        v33 = v263;
        v169 = Logger.logObject.getter();
        v170 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v169, v170))
        {
          v237 = v170;
          v248 = v169;
          v171 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          v236 = swift_slowAlloc();
          v274 = v236;
          *v171 = v239;
          *(v171 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v274);
          *(v171 + 12) = 2082;
          v173 = *(v132 + 40);
          v270 = *(v132 + 24);
          *v271 = v173;
          *&v271[14] = *(v132 + 54);
          sub_100009DAC(&v270, v269);
          v174 = sub_1000063E8();
          v176 = v175;
          sub_1005812D4(&v270);
          v177 = sub_10000668C(v174, v176, &v274);

          *(v171 + 14) = v177;
          *(v171 + 22) = 2114;
          *(v171 + 24) = v13;
          *v172 = v13;
          *(v171 + 32) = 2112;
          v263 = v13;
          v178 = v13;
          v179 = [v33 objectID];
          *(v171 + 34) = v179;
          v235[1] = v172;
          v172[1] = v179;
          *(v171 + 42) = 2082;
          v269[0] = _swiftEmptyArrayStorage;
          sub_100026EF4(0, 7, 0);
          v180 = 0;
          v181 = v269[0];
          v182 = v262;
          do
          {
            v183 = *(&off_1008E3230 + v180 + 32);
            v184 = 0x746867696568;
            if (v183 == 5)
            {
              v184 = 0x6874646977;
            }

            v185 = 0xE600000000000000;
            if (v183 == 5)
            {
              v185 = 0xE500000000000000;
            }

            v186 = 0xD000000000000012;
            if (v183 == 3)
            {
              v186 = 0x4C5255656C6966;
            }

            v187 = v267;
            if (v183 == 3)
            {
              v187 = 0xE700000000000000;
            }

            if (*(&off_1008E3230 + v180 + 32) <= 4u)
            {
              v184 = v186;
              v185 = v187;
            }

            v188 = 0x657A6953656C6966;
            if (v183 == 1)
            {
              v188 = 6911093;
            }

            v189 = 0xE300000000000000;
            if (v183 != 1)
            {
              v189 = 0xE800000000000000;
            }

            if (!*(&off_1008E3230 + v180 + 32))
            {
              v188 = 0x44497463656A626FLL;
              v189 = 0xE800000000000000;
            }

            if (*(&off_1008E3230 + v180 + 32) <= 2u)
            {
              v190 = v188;
            }

            else
            {
              v190 = v184;
            }

            if (*(&off_1008E3230 + v180 + 32) <= 2u)
            {
              v191 = v189;
            }

            else
            {
              v191 = v185;
            }

            v269[0] = v181;
            v193 = *(v181 + 16);
            v192 = *(v181 + 24);
            if (v193 >= v192 >> 1)
            {
              sub_100026EF4((v192 > 1), v193 + 1, 1);
              v181 = v269[0];
            }

            ++v180;
            *(v181 + 16) = v193 + 1;
            v194 = v181 + 16 * v193;
            *(v194 + 32) = v190;
            *(v194 + 40) = v191;
          }

          while (v180 != 7);
          v195 = Array.description.getter();
          v197 = v196;

          v198 = sub_10000668C(v195, v197, &v274);

          *(v171 + 44) = v198;
          *(v171 + 52) = 1024;
          v132 = v266;
          v199 = *(v266 + 104);

          *(v171 + 54) = v199;

          v200 = v248;
          _os_log_impl(&_mh_execute_header, v248, v237, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v171, 0x3Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();

          v201 = v264;
          v13 = v263;
        }

        else
        {

          v201 = v264;
          v182 = v262;
        }

        sub_1004BB414(v256, v33, &off_1008E3230);
        if (v201)
        {
          goto LABEL_181;
        }

        v264 = 0;
        v202 = [v33 changedValues];

        v203 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        swift_beginAccess();
        v204 = v13;

        v205 = v182[7];
        v206 = swift_isUniquelyReferenced_nonNull_native();
        v274 = v182[7];
        v182[7] = 0x8000000000000000;
        sub_1002C8688(v203, v204, v206);

        v182[7] = v274;
        swift_endAccess();
        if (*(v132 + 104))
        {

          [v33 updateChangeCount];
        }

        else
        {

          v207 = v204;

          v208 = Logger.logObject.getter();
          v209 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v208, v209))
          {
            v210 = swift_slowAlloc();
            v211 = swift_slowAlloc();
            v248 = v211;
            v263 = swift_slowAlloc();
            v269[0] = v263;
            *v210 = v238;
            *(v210 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v269);
            *(v210 + 12) = 1024;
            *(v210 + 14) = 0;

            *(v210 + 18) = 1024;
            *(v210 + 20) = 1;
            *(v210 + 24) = 2114;
            *(v210 + 26) = v207;
            v211->isa = v207;
            *(v210 + 34) = 2082;
            v212 = v207;
            v213 = v264;
            sub_1005E2810(v203);

            v214 = Array.description.getter();
            v216 = v215;

            v217 = sub_10000668C(v214, v216, v269);
            v4 = v213;

            *(v210 + 36) = v217;
            _os_log_impl(&_mh_execute_header, v208, v209, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v210, 0x2Cu);
            sub_1000050A4(v248, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            goto LABEL_166;
          }
        }

        v4 = v264;
        goto LABEL_166;
      }

      v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v104;
      if (v105)
      {
        goto LABEL_107;
      }
    }
  }

  v218 = objc_opt_self();
  v219 = v263;
  [v218 noSuchObjectErrorWithObjectID:v263];
  swift_willThrow();
}

uint64_t sub_10069E26C(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100375520();
      }
    }

    else
    {
      v29 = v44;
      sub_10036E074(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943820, &unk_1007A4100);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10069E4DC(unint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v256 = v232 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v254 = v232 - v12;
  v259 = type metadata accessor for UUID();
  *&v255 = *(v259 - 8);
  v13 = *(v255 + 64);
  __chkstk_darwin(v259);
  v258 = v232 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v257 = v232 - v16;
  v17 = a2[2];
  v18 = a2[3];
  v260 = a2;
  v253 = a2[4];
  if (qword_100936008 != -1)
  {
LABEL_157:
    swift_once();
  }

  v252 = type metadata accessor for Logger();
  v19 = sub_100006654(v252, qword_100945730);

  v263 = v19;
  v20 = Logger.logObject.getter();
  LOBYTE(v21) = static os_log_type_t.info.getter();

  v22 = os_log_type_enabled(v20, v21);
  v23 = a1 >> 62;
  v262 = v5;
  v265 = a1;
  v261 = (a1 >> 62);
  if (!v22)
  {

    goto LABEL_7;
  }

  v264 = v4;
  v24 = swift_slowAlloc();
  v266[0] = swift_slowAlloc();
  *v24 = 136446978;
  *(v24 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v266);
  *(v24 + 6) = 2048;
  if (v23)
  {
    goto LABEL_160;
  }

  v25 = v17;
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v24 + 14) = i;

    *(v24 + 11) = 2082;
    sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
    v27 = [swift_getObjCClassFromMetadata() description];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v17 = sub_10000668C(v28, v30, v266);
    a1 = v265;

    v24[3] = v17;
    *(v24 + 16) = 2082;
    *(v24 + 34) = sub_10000668C(v25, v18, v266);
    _os_log_impl(&_mh_execute_header, v20, v21, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v24, 0x2Au);
    swift_arrayDestroy();

    v4 = v264;
    v5 = v262;
    v23 = v261;
LABEL_7:
    v21 = v23 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = _swiftEmptyArrayStorage;
    if (!v21)
    {
      break;
    }

    v266[0] = _swiftEmptyArrayStorage;
    v20 = v266;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v21 & 0x8000000000000000) == 0)
    {
      v18 = 0;
      v5 = a1 & 0xC000000000000001;
      v264 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v31 = (v18 + 1);
        if (__OFADD__(v18, 1))
        {
          __break(1u);
LABEL_155:

          return;
        }

        if (v5)
        {
          v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *(v264 + 16))
          {
            __break(1u);
            goto LABEL_157;
          }

          v32 = *(a1 + 8 * v18 + 32);
        }

        v33 = v32;
        sub_1005E3810([v32 remObjectID], &qword_100939DF0, off_1008D4188);
        if (v4)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v17 = *(v266[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v18;
        v4 = 0;
        a1 = v265;
        if (v31 == v21)
        {
          v24 = v266[0];
          v5 = v262;
          v23 = v261;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_160:
    v25 = v17;
  }

LABEL_20:
  v34 = *(v5 + 96);
  if (v34 <= 1)
  {
    if (v34)
    {
      if (v34 != 1)
      {
LABEL_165:
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_1001F67C8(_swiftEmptyArrayStorage);
        sub_10054573C("unknown mode", 12, 2);
        __break(1u);
        return;
      }

      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v266[0] = v50;
        *v49 = 136315138;
        v51 = [objc_opt_self() cdEntityName];
        v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v24;
        v55 = v54;

        v56 = sub_10000668C(v52, v55, v266);
        v24 = v53;
        v23 = v261;

        *(v49 + 4) = v56;
        _os_log_impl(&_mh_execute_header, v47, v48, "Skipping fetch during upsert {CDType: %s}", v49, 0xCu);
        sub_10000607C(v50);
        a1 = v265;
      }

      v45 = sub_10038FA98(_swiftEmptyArrayStorage);
      goto LABEL_35;
    }
  }

  else if ((v34 - 2) >= 3 && v34 != 4499 && v34 != 4599)
  {
    goto LABEL_165;
  }

  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v266[0] = v38;
    *v37 = 136315138;
    v39 = [objc_opt_self() cdEntityName];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v24;
    v43 = v42;

    v44 = sub_10000668C(v40, v43, v266);
    v24 = v41;
    v23 = v261;

    *(v37 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v35, v36, "Performing fetch during upsert {CDType: %s}", v37, 0xCu);
    sub_10000607C(v38);
    a1 = v265;
  }

  v45 = sub_1006654B4(v24, v260);
  if (v4)
  {

    return;
  }

LABEL_35:
  v251 = v45;
  if (v23)
  {
    v57 = _CocoaArrayWrapper.endIndex.getter();
    v264 = v4;
    if (!v57)
    {
LABEL_146:

      return;
    }
  }

  else
  {
    v57 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v264 = v4;
    if (!v57)
    {
      goto LABEL_146;
    }
  }

  v58 = 0;
  v59 = a1 & 0xC000000000000001;
  v60 = a1 & 0xFFFFFFFFFFFFFF8;
  v61 = (a1 + 32);
  v249 = (v255 + 8);
  v248 = 0x80000001007EA7D0;
  v240 = (v255 + 56);
  v239 = (v255 + 48);
  *&v46 = 136446978;
  v237 = v46;
  *&v46 = 136446210;
  v255 = v46;
  *&v46 = 136447490;
  v236 = v46;
  *&v46 = 136447234;
  v235 = v46;
  *&v46 = 136446466;
  v238 = v46;
  v247 = v24;
  v244 = v57;
  v243 = a1 & 0xC000000000000001;
  v242 = a1 & 0xFFFFFFFFFFFFFF8;
  v241 = (a1 + 32);
  while (1)
  {
    if (v59)
    {
      v62 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v58 >= *(v60 + 16))
      {
        goto LABEL_162;
      }

      v62 = *&v61[8 * v58];
    }

    v63 = __OFADD__(v58, 1);
    v64 = v58 + 1;
    v65 = v264;
    if (v63)
    {
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      swift_once();
LABEL_149:
      sub_100006654(v252, qword_100950D98);
      v218 = Logger.logObject.getter();
      v219 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v218, v219))
      {
        v220 = swift_slowAlloc();
        v266[0] = swift_slowAlloc();
        *v220 = v238;
        v221 = sub_100729CB0(1);
        v223 = sub_10000668C(v221, v222, v266);

        *(v220 + 4) = v223;
        *(v220 + 12) = 2082;
        v224 = sub_100729CB0(a1);
        v226 = sub_10000668C(v224, v225, v266);

        *(v220 + 14) = v226;
        _os_log_impl(&_mh_execute_header, v218, v219, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v220, 0x16u);
        swift_arrayDestroy();
      }

      v227 = objc_opt_self();
      v228 = String._bridgeToObjectiveC()();
      sub_100729CB0(1);
      v229 = String._bridgeToObjectiveC()();

      sub_100729CB0(a1);
      v230 = String._bridgeToObjectiveC()();

      [v227 unauthorizedErrorWithMissingEntitlement:v228 requestedAccessLevel:v229 currentAccesslevel:v230];

      swift_willThrow();

      v231 = v261;

      return;
    }

    v66 = v62;
    v261 = sub_1005E3810([v66 remObjectID], &qword_100939DF0, off_1008D4188);
    if (v65)
    {

      return;
    }

    v246 = v64;
    v264 = 0;

    v250 = v66;
    v67 = [v66 accountID];
    v68 = [v67 uuid];

    v69 = v257;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = UUID.uuidString.getter();
    v72 = v71;
    v73 = *v249;
    v74 = v259;
    (*v249)(v69, v259);
    v75 = [objc_opt_self() localInternalAccountID];
    v76 = [v75 uuid];

    v77 = v258;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v78 = UUID.uuidString.getter();
    v80 = v79;
    v245 = v73;
    (v73)(v77, v74);
    if (v70 != v78)
    {
      goto LABEL_48;
    }

    if (v72 == v80)
    {

      v81 = v248;
      v82 = v262;
    }

    else
    {
LABEL_48:
      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v81 = v248;
      v82 = v262;
      if ((v83 & 1) == 0)
      {
        goto LABEL_56;
      }
    }

    v84 = *(v82 + 68) >> 14;
    if (v84 >= 2)
    {
      if (v84 == 2)
      {
        v85 = *(v82 + 64);
      }

      else
      {
        v85 = 0x7FFFFFFF;
      }
    }

    else
    {
      v85 = 2147483519;
    }

    v86 = v264;
    sub_100009A40(2, v85);
    v264 = v86;
    if (v86)
    {

      return;
    }

LABEL_56:
    v87._rawValue = &off_1008E0B58;
    v88 = sub_1005F6904(v87, &qword_100939DF0, off_1008D4188);
    v89 = v251;
    if (!*(v251 + 16))
    {
      break;
    }

    v90 = sub_100393C74(v261);
    if ((v91 & 1) == 0)
    {
      break;
    }

    v92 = v90;

    v93 = *(*(v89 + 56) + 8 * v92);
    v94 = v261;
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v266[0] = v99;
      *v97 = v238;
      *(v97 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v266);
      *(v97 + 12) = 2114;
      *(v97 + 14) = v94;
      *v98 = v94;
      v100 = v94;
      _os_log_impl(&_mh_execute_header, v95, v96, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v97, 0x16u);
      sub_1000050A4(v98, &unk_100938E70, &unk_100797230);

      sub_10000607C(v99);
    }

    else
    {
    }

LABEL_143:
    v58 = v246;
    v59 = v243;
    v60 = v242;
    v61 = v241;
    LOWORD(a1) = v265;
    if (v246 == v244)
    {
      goto LABEL_146;
    }
  }

  if (v88 != 5)
  {
    v101 = 0;
    while (v101 != 5)
    {
      v103 = *(&off_1008E3258 + v101 + 32);
      if (v103 <= 1)
      {
        if (*(&off_1008E3258 + v101 + 32))
        {
          v106 = 6911093;
        }

        else
        {
          v106 = 0x44497463656A626FLL;
        }

        if (*(&off_1008E3258 + v101 + 32))
        {
          v107 = 0xE300000000000000;
        }

        else
        {
          v107 = 0xE800000000000000;
        }

        v104 = 0x4C5255656C6966;
        v105 = 0xE700000000000000;
      }

      else
      {
        v104 = 0x4C5255656C6966;
        v105 = 0xE700000000000000;
        if (v103 == 2)
        {
          v107 = 0xE800000000000000;
          v106 = 0x657A6953656C6966;
        }

        else
        {
          if (v103 == 3)
          {
            v106 = 0x4C5255656C6966;
          }

          else
          {
            v106 = 0xD000000000000012;
          }

          if (v103 == 3)
          {
            v107 = 0xE700000000000000;
          }

          else
          {
            v107 = v81;
          }
        }
      }

      if (v88 != 3)
      {
        v104 = 0xD000000000000012;
        v105 = v81;
      }

      if (v88 == 2)
      {
        v104 = 0x657A6953656C6966;
        v105 = 0xE800000000000000;
      }

      if (v88)
      {
        v108 = 6911093;
      }

      else
      {
        v108 = 0x44497463656A626FLL;
      }

      if (v88)
      {
        v109 = 0xE300000000000000;
      }

      else
      {
        v109 = 0xE800000000000000;
      }

      if (v88 <= 1u)
      {
        v110 = v108;
      }

      else
      {
        v110 = v104;
      }

      if (v88 <= 1u)
      {
        v111 = v109;
      }

      else
      {
        v111 = v105;
      }

      if (v106 == v110 && v107 == v111)
      {

LABEL_99:

        v112 = *(v82 + 88);
        sub_1000060C8(0, &qword_100939DF0, off_1008D4188);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v114 = [ObjCClassFromMetadata entity];
        v115 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v114 insertIntoManagedObjectContext:v112];
        v116 = v253;
        [v112 assignObject:v115 toPersistentStore:v116];

        v117 = v115;
        v118 = [v261 uuid];
        v119 = v254;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v120 = v259;
        (*v240)(v119, 0, 1, v259);
        v121 = v256;
        sub_10018E470(v119, v256);
        LODWORD(v120) = (*v239)(v121, 1, v120);
        v122 = v117;
        isa = 0;
        if (v120 != 1)
        {
          v124 = v256;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (v245)(v124, v259);
        }

        [v122 setIdentifier:isa];

        sub_1000050A4(v119, &unk_100939D90, "8\n\r");
        v125 = v261;
        v126 = v262;

        v127 = v122;
        v128 = Logger.logObject.getter();
        v129 = static os_log_type_t.default.getter();

        v130 = os_log_type_enabled(v128, v129);
        v261 = v127;
        v245 = v125;
        if (v130)
        {
          v131 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          v234 = swift_slowAlloc();
          v271 = v234;
          *v131 = v237;
          *(v131 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v271);
          *(v131 + 12) = 2082;
          v133 = *(v126 + 40);
          v269 = *(v126 + 24);
          *v270 = v133;
          *&v270[14] = *(v126 + 54);
          sub_100009DAC(&v269, v266);
          v134 = sub_1000063E8();
          v136 = v135;
          sub_1005812D4(&v269);
          v137 = sub_10000668C(v134, v136, &v271);

          *(v131 + 14) = v137;
          *(v131 + 22) = 2114;
          *(v131 + 24) = v125;
          *v132 = v125;
          *(v131 + 32) = 2112;
          v138 = v125;
          v139 = [v127 objectID];
          *(v131 + 34) = v139;
          v132[1] = v139;
          _os_log_impl(&_mh_execute_header, v128, v129, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v131, 0x2Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();
        }

        v140 = v260;
        swift_beginAccess();
        v141 = v140[6];
        if ((v141 & 0xC000000000000001) != 0)
        {
          if (v141 < 0)
          {
            v142 = v140[6];
          }

          else
          {
            v142 = v141 & 0xFFFFFFFFFFFFFF8;
          }

          a1 = v245;
          v143 = v245;
          v144 = v261;
          v145 = v261;
          v146 = __CocoaDictionary.count.getter();
          if (__OFADD__(v146, 1))
          {
            goto LABEL_163;
          }

          v140[6] = sub_10021CDBC(v142, v146 + 1);
        }

        else
        {
          v147 = v140[6];
          a1 = v245;
          v148 = v245;
          v144 = v261;
          v149 = v261;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v271 = v140[6];
        sub_1002C8398(v144, a1, isUniquelyReferenced_nonNull_native);
        v140[6] = v271;

        swift_endAccess();
        v151 = 0;
        v152 = *(v126 + 64) | (*(v126 + 68) << 32);
        do
        {
          if ((v152 & 0xC00000000001) == 0x800000000000)
          {
            v153 = *(&off_1008E3258 + v151 + 32);
            v154 = Logger.logObject.getter();
            v155 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v154, v155))
            {
              v156 = swift_slowAlloc();
              v157 = swift_slowAlloc();
              v266[0] = v157;
              *v156 = v255;
              LOBYTE(v271) = v153;
              v158 = String.init<A>(describing:)();
              v160 = sub_10000668C(v158, v159, v266);

              *(v156 + 4) = v160;
              _os_log_impl(&_mh_execute_header, v154, v155, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v156, 0xCu);
              sub_10000607C(v157);
              v126 = v262;
            }
          }

          a1 = *(v126 + 64);
          if (*(v126 + 68) >> 14 == 2 && (*(v126 + 64) & 1) == 0)
          {
            if (qword_1009367A0 != -1)
            {
              goto LABEL_164;
            }

            goto LABEL_149;
          }

          ++v151;
          v152 = a1 & 0xFFFF0000FFFFFFFFLL | (*(v126 + 68) << 32);
        }

        while (v151 != 5);
        swift_retain_n();
        v21 = v245;
        v18 = v261;
        v162 = Logger.logObject.getter();
        v163 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v162, v163))
        {
          v245 = v162;
          v164 = swift_slowAlloc();
          v165 = swift_slowAlloc();
          v233 = swift_slowAlloc();
          v271 = v233;
          *v164 = v236;
          *(v164 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v271);
          *(v164 + 12) = 2082;
          v166 = *(v126 + 40);
          v267 = *(v126 + 24);
          *v268 = v166;
          *&v268[14] = *(v126 + 54);
          sub_100009DAC(&v267, v266);
          v167 = sub_1000063E8();
          v169 = v168;
          sub_1005812D4(&v267);
          v170 = sub_10000668C(v167, v169, &v271);

          *(v164 + 14) = v170;
          *(v164 + 22) = 2114;
          *(v164 + 24) = v21;
          *v165 = v21;
          *(v164 + 32) = 2112;
          v171 = v21;
          v172 = [v18 objectID];
          *(v164 + 34) = v172;
          v232[1] = v165;
          v165[1] = v172;
          *(v164 + 42) = 2082;
          v266[0] = _swiftEmptyArrayStorage;
          sub_100026EF4(0, 5, 0);
          v234 = v21;
          v174 = v245;
          v175 = v266[0];
          v177 = *(v266[0] + 16);
          v176 = *(v266[0] + 24);
          v178 = v177 + 1;
          if (v177 >= v176 >> 1)
          {
            sub_100026EF4((v176 > 1), v177 + 1, 1);
            v175 = v266[0];
          }

          *(v175 + 16) = v178;
          v179 = v175 + 16 * v177;
          *(v179 + 32) = 0x44497463656A626FLL;
          *(v179 + 40) = 0xE800000000000000;
          LODWORD(v261) = v163;
          v266[0] = v175;
          v180 = *(v175 + 24);
          if (v178 >= v180 >> 1)
          {
            sub_100026EF4((v180 > 1), v177 + 2, 1);
            v175 = v266[0];
          }

          *(v175 + 16) = v177 + 2;
          v181 = v175 + 16 * v178;
          *(v181 + 32) = 6911093;
          *(v181 + 40) = 0xE300000000000000;
          v266[0] = v175;
          v183 = *(v175 + 16);
          v182 = *(v175 + 24);
          v184 = v183 + 1;
          if (v183 >= v182 >> 1)
          {
            sub_100026EF4((v182 > 1), v183 + 1, 1);
            v175 = v266[0];
          }

          *(v175 + 16) = v184;
          v185 = v175 + 16 * v183;
          *(v185 + 32) = 0x657A6953656C6966;
          *(v185 + 40) = 0xE800000000000000;
          v266[0] = v175;
          v186 = *(v175 + 24);
          if (v184 >= v186 >> 1)
          {
            sub_100026EF4((v186 > 1), v183 + 2, 1);
            v175 = v266[0];
          }

          *(v175 + 16) = v183 + 2;
          v187 = v175 + 16 * v184;
          *(v187 + 32) = 0x4C5255656C6966;
          *(v187 + 40) = 0xE700000000000000;
          v188 = v261;
          v189 = v248;
          v266[0] = v175;
          v191 = *(v175 + 16);
          v190 = *(v175 + 24);
          if (v191 >= v190 >> 1)
          {
            sub_100026EF4((v190 > 1), v191 + 1, 1);
            v175 = v266[0];
          }

          *(v175 + 16) = v191 + 1;
          v192 = v175 + 16 * v191;
          *(v192 + 32) = 0xD000000000000012;
          *(v192 + 40) = v189;
          v193 = Array.description.getter();
          v195 = v194;

          v196 = sub_10000668C(v193, v195, &v271);

          *(v164 + 44) = v196;
          *(v164 + 52) = 1024;
          v126 = v262;
          v197 = *(v262 + 104);

          *(v164 + 54) = v197;

          _os_log_impl(&_mh_execute_header, v174, v188, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v164, 0x3Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();

          v173 = v264;
          v21 = v234;
        }

        else
        {

          v173 = v264;
        }

        v31 = v250;
        sub_1004BBAB8(v250, v18, &off_1008E3258);
        if (v173)
        {
          goto LABEL_155;
        }

        v264 = 0;
        v198 = [v18 changedValues];

        v199 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        v200 = v260;
        swift_beginAccess();
        v201 = v21;

        v202 = v200[7];
        v203 = swift_isUniquelyReferenced_nonNull_native();
        v271 = v200[7];
        v200[7] = 0x8000000000000000;
        sub_1002C8688(v199, v201, v203);

        v200[7] = v271;
        swift_endAccess();
        if (*(v126 + 104))
        {

          [v18 updateChangeCount];

LABEL_141:
          goto LABEL_143;
        }

        v204 = v201;

        v205 = Logger.logObject.getter();
        v206 = v18;
        v207 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v205, v207))
        {
          v208 = swift_slowAlloc();
          v209 = swift_slowAlloc();
          v245 = swift_slowAlloc();
          v266[0] = v245;
          *v208 = v235;
          *(v208 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v266);
          v261 = v206;
          *(v208 + 12) = 1024;
          *(v208 + 14) = 0;

          *(v208 + 18) = 1024;
          *(v208 + 20) = 1;
          *(v208 + 24) = 2114;
          *(v208 + 26) = v204;
          *v209 = v204;
          *(v208 + 34) = 2082;
          v210 = v204;
          v211 = v264;
          sub_1005E2810(v199);
          v264 = v211;

          v212 = Array.description.getter();
          v214 = v213;

          v215 = sub_10000668C(v212, v214, v266);

          *(v208 + 36) = v215;
          _os_log_impl(&_mh_execute_header, v205, v207, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v208, 0x2Cu);
          sub_1000050A4(v209, &unk_100938E70, &unk_100797230);

          swift_arrayDestroy();

          goto LABEL_141;
        }

        goto LABEL_143;
      }

      v102 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v101;
      if (v102)
      {
        goto LABEL_99;
      }
    }
  }

  v216 = objc_opt_self();
  v217 = v261;
  [v216 noSuchObjectErrorWithObjectID:v261];
  swift_willThrow();
}

uint64_t sub_1006A0738(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100375534();
      }
    }

    else
    {
      v29 = v44;
      sub_10036E088(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009438A0, &unk_1007A4170);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_1006A09A8(unint64_t a1, void *a2)
{
  v4 = v3;
  v5 = v2;
  v8 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v262 = v240 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v263 = v240 - v12;
  v266 = type metadata accessor for UUID();
  v13 = *(v266 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v266);
  v265 = v240 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v264 = v240 - v17;
  v18 = a2[2];
  v19 = a2[3];
  v267 = a2;
  v260 = a2[4];
  if (qword_100936008 != -1)
  {
LABEL_218:
    swift_once();
  }

  v259 = type metadata accessor for Logger();
  v20 = sub_100006654(v259, qword_100945730);

  v270 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();

  v23 = os_log_type_enabled(v21, v22);
  v24 = a1 >> 62;
  v271 = v5;
  v273 = a1;
  v268 = (a1 >> 62);
  v261 = v13;
  if (!v23)
  {

    goto LABEL_7;
  }

  v272 = v18;
  v18 = swift_slowAlloc();
  v274[0] = swift_slowAlloc();
  *v18 = 136446978;
  *(v18 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v274);
  *(v18 + 12) = 2048;
  v269 = v4;
  if (v24)
  {
    goto LABEL_221;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    *(v18 + 14) = i;

    *(v18 + 22) = 2082;
    sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
    v26 = [swift_getObjCClassFromMetadata() description];
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v30 = sub_10000668C(v27, v29, v274);

    *(v18 + 24) = v30;
    v31 = v272;
    a1 = v273;
    *(v18 + 32) = 2082;
    *(v18 + 34) = sub_10000668C(v31, v19, v274);
    _os_log_impl(&_mh_execute_header, v21, v22, "[%{public}s] Processing changed ingestables {count: %ld, CDType: %{public}s, accountIdentifier: %{public}s}", v18, 0x2Au);
    swift_arrayDestroy();

    v4 = v269;
    v5 = v271;
    v24 = v268;
LABEL_7:
    v13 = v24 ? _CocoaArrayWrapper.endIndex.getter() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = _swiftEmptyArrayStorage;
    if (!v13)
    {
      break;
    }

    v274[0] = _swiftEmptyArrayStorage;
    v21 = v274;
    specialized ContiguousArray.reserveCapacity(_:)();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v33 = 0;
      v5 = a1 & 0xC000000000000001;
      v272 = a1 & 0xFFFFFFFFFFFFFF8;
      v19 = off_1008D41C8;
      while (1)
      {
        v34 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_216:

          return;
        }

        if (v5)
        {
          v35 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v33 >= *(v272 + 16))
          {
            __break(1u);
            goto LABEL_218;
          }

          v35 = *(a1 + 8 * v33 + 32);
        }

        v36 = v35;
        sub_1005E3810([v35 remObjectID], &qword_100940C50, off_1008D41C8);
        v18 = v4;
        if (v4)
        {

          return;
        }

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v37 = *(v274[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a1 = v273;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v33;
        v4 = 0;
        if (v34 == v13)
        {
          v32 = v274[0];
          v5 = v271;
          goto LABEL_20;
        }
      }
    }

    __break(1u);
LABEL_221:
    ;
  }

LABEL_20:
  v38 = *(v5 + 96);
  if (v38 > 1)
  {
    if ((v38 - 2) >= 3 && v38 != 4499 && v38 != 4599)
    {
      goto LABEL_225;
    }

LABEL_27:
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v274[0] = v42;
      *v41 = 136315138;
      v43 = [objc_opt_self() cdEntityName];
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v47 = sub_10000668C(v44, v46, v274);

      *(v41 + 4) = v47;
      a1 = v273;
      _os_log_impl(&_mh_execute_header, v39, v40, "Performing fetch during upsert {CDType: %s}", v41, 0xCu);
      sub_10000607C(v42);
    }

    v48 = sub_100665DAC(v32, v267);
    if (v4)
    {
      goto LABEL_207;
    }

    goto LABEL_35;
  }

  if (!v38)
  {
    goto LABEL_27;
  }

  if (v38 != 1)
  {
LABEL_225:
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_1001F67C8(_swiftEmptyArrayStorage);
    sub_10054573C("unknown mode", 12, 2);
    __break(1u);
    return;
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v274[0] = v53;
    *v52 = 136315138;
    v54 = [objc_opt_self() cdEntityName];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = sub_10000668C(v55, v57, v274);

    *(v52 + 4) = v58;
    a1 = v273;
    _os_log_impl(&_mh_execute_header, v50, v51, "Skipping fetch during upsert {CDType: %s}", v52, 0xCu);
    sub_10000607C(v53);
  }

  v48 = sub_10038FAAC(_swiftEmptyArrayStorage);
LABEL_35:
  v59 = v48;
  if (v268)
  {
    v60 = _CocoaArrayWrapper.endIndex.getter();
    if (!v60)
    {
LABEL_206:

LABEL_207:

      return;
    }
  }

  else
  {
    v60 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      goto LABEL_206;
    }
  }

  v61 = 0;
  v62 = a1 & 0xC000000000000001;
  v63 = a1 & 0xFFFFFFFFFFFFFF8;
  v64 = a1 + 32;
  v255 = (v261 + 8);
  v272 = 0x80000001007EA820;
  v248 = v261 + 56;
  v247 = (v261 + 48);
  *&v49 = 136446978;
  v245 = v49;
  *&v49 = 136446210;
  v258 = v49;
  *&v49 = 136447490;
  v244 = v49;
  *&v49 = 136447234;
  v243 = v49;
  *&v49 = 136446466;
  v246 = v49;
  v256 = v32;
  v257 = v59;
  v252 = v60;
  v251 = a1 & 0xC000000000000001;
  v250 = a1 & 0xFFFFFFFFFFFFFF8;
  v249 = a1 + 32;
  while (1)
  {
    if (v62)
    {
      v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v66 = __OFADD__(v61, 1);
      v67 = v61 + 1;
      if (v66)
      {
LABEL_205:
        __break(1u);
        goto LABEL_206;
      }
    }

    else
    {
      if (v61 >= *(v63 + 16))
      {
        __break(1u);
LABEL_223:
        __break(1u);
LABEL_224:
        swift_once();
LABEL_210:
        sub_100006654(v259, qword_100950D98);
        v225 = Logger.logObject.getter();
        v226 = static os_log_type_t.error.getter();
        v227 = os_log_type_enabled(v225, v226);
        v228 = v268;
        if (v227)
        {
          v229 = swift_slowAlloc();
          v274[0] = swift_slowAlloc();
          *v229 = v246;
          v230 = sub_100729CB0(1);
          v232 = sub_10000668C(v230, v231, v274);

          *(v229 + 4) = v232;
          *(v229 + 12) = 2082;
          v233 = sub_100729CB0(v4);
          v235 = sub_10000668C(v233, v234, v274);

          *(v229 + 14) = v235;
          _os_log_impl(&_mh_execute_header, v225, v226, "Operation denied {requestedAccessLevel: %{public}s, currentAccesslevel: %{public}s}", v229, 0x16u);
          swift_arrayDestroy();
        }

        v236 = objc_opt_self();
        v237 = String._bridgeToObjectiveC()();
        sub_100729CB0(1);
        v238 = String._bridgeToObjectiveC()();

        sub_100729CB0(v4);
        v239 = String._bridgeToObjectiveC()();

        [v236 unauthorizedErrorWithMissingEntitlement:v237 requestedAccessLevel:v238 currentAccesslevel:v239];

        swift_willThrow();

        return;
      }

      v65 = *(v64 + 8 * v61);
      v66 = __OFADD__(v61, 1);
      v67 = v61 + 1;
      if (v66)
      {
        goto LABEL_205;
      }
    }

    v68 = v65;
    v268 = sub_1005E3810([v68 remObjectID], &qword_100940C50, off_1008D41C8);
    if (v4)
    {

      return;
    }

    v254 = v67;
    v269 = 0;

    v261 = v68;
    v69 = [v68 accountID];
    v70 = [v69 uuid];

    v71 = v264;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v72 = UUID.uuidString.getter();
    v74 = v73;
    v75 = *v255;
    v76 = v266;
    (*v255)(v71, v266);
    v77 = [objc_opt_self() localInternalAccountID];
    v78 = [v77 uuid];

    v79 = v265;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v80 = UUID.uuidString.getter();
    v82 = v81;
    v253 = v75;
    (v75)(v79, v76);
    if (v72 != v80)
    {
      goto LABEL_47;
    }

    if (v74 == v82)
    {

      v83 = v272;
      v84 = v271;
    }

    else
    {
LABEL_47:
      v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v83 = v272;
      v84 = v271;
      if ((v85 & 1) == 0)
      {
        v87 = v257;
        goto LABEL_55;
      }
    }

    v86 = *(v84 + 68);
    v87 = v257;
    v88 = v261;
    if (v86 >> 14 >= 2)
    {
      if (v86 >> 14 == 2)
      {
        v89 = *(v84 + 64);
      }

      else
      {
        v89 = 0x7FFFFFFF;
      }
    }

    else
    {
      v89 = 2147483519;
    }

    v90 = v269;
    sub_100009A40(2, v89);
    v269 = v90;
    if (v90)
    {

      return;
    }

LABEL_55:
    v91 = sub_1005F6AB0(sub_1003BF13C, &qword_100940C50, off_1008D41C8);
    if (!*(v87 + 16))
    {
      break;
    }

    v92 = sub_100393C74(v268);
    if ((v93 & 1) == 0)
    {
      break;
    }

    v94 = v92;

    v95 = *(*(v87 + 56) + 8 * v94);
    v96 = v268;
    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v274[0] = v101;
      *v99 = v246;
      *(v99 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v274);
      *(v99 + 12) = 2114;
      *(v99 + 14) = v96;
      *v100 = v96;
      v102 = v96;
      _os_log_impl(&_mh_execute_header, v97, v98, "[%{public}s] Skipping merge() and updateChangeCount() since this ingestable is immutable and is not a new insertion {objectID: %{public}@}", v99, 0x16u);
      sub_1000050A4(v100, &unk_100938E70, &unk_100797230);

      sub_10000607C(v101);
    }

    else
    {
    }

    v4 = v269;
LABEL_201:
    v61 = v254;
    v62 = v251;
    v63 = v250;
    v64 = v249;
    if (v254 == v252)
    {
      goto LABEL_206;
    }
  }

  v103 = 0xED0000646E456563;
  if (v91 != 11)
  {
    v104 = 0;
    while (v104 != 11)
    {
      v106 = *(&off_1008E1F50 + v104 + 32);
      if (v106 <= 4)
      {
        if (v106 == 3)
        {
          v109 = 0x6C61767265746E69;
        }

        else
        {
          v109 = 0xD000000000000011;
        }

        if (v106 == 3)
        {
          v110 = 0xE800000000000000;
        }

        else
        {
          v110 = v83;
        }

        if (v106 == 2)
        {
          v109 = 0x636E657571657266;
          v110 = 0xE900000000000079;
        }

        if (*(&off_1008E1F50 + v104 + 32))
        {
          v111 = 0x6E65727275636572;
        }

        else
        {
          v111 = 0x44497463656A626FLL;
        }

        if (*(&off_1008E1F50 + v104 + 32))
        {
          v112 = 0xED0000646E456563;
        }

        else
        {
          v112 = 0xE800000000000000;
        }

        if (*(&off_1008E1F50 + v104 + 32) <= 1u)
        {
          v107 = v111;
        }

        else
        {
          v107 = v109;
        }

        if (*(&off_1008E1F50 + v104 + 32) <= 1u)
        {
          v108 = v112;
        }

        else
        {
          v108 = v110;
        }
      }

      else if (*(&off_1008E1F50 + v104 + 32) > 7u)
      {
        if (v106 == 8)
        {
          v107 = 0x54664F736B656577;
          v108 = 0xEE00726165596568;
        }

        else if (v106 == 9)
        {
          v107 = 0x664F7368746E6F6DLL;
          v108 = 0xEF72616559656854;
        }

        else
        {
          v107 = 0x7469736F50746573;
          v108 = 0xEC000000736E6F69;
        }
      }

      else
      {
        v107 = 0x6854664F73796164;
        if (v106 == 5)
        {
          v108 = 0xED00006B65655765;
        }

        else if (v106 == 6)
        {
          v108 = 0xEE0068746E6F4D65;
        }

        else
        {
          v108 = 0xED00007261655965;
        }
      }

      v113 = 0x7469736F50746573;
      if (v91 == 9)
      {
        v113 = 0x664F7368746E6F6DLL;
      }

      v114 = 0xEF72616559656854;
      if (v91 != 9)
      {
        v114 = 0xEC000000736E6F69;
      }

      if (v91 == 8)
      {
        v113 = 0x54664F736B656577;
        v114 = 0xEE00726165596568;
      }

      v115 = 0xEE0068746E6F4D65;
      if (v91 != 6)
      {
        v115 = 0xED00007261655965;
      }

      if (v91 == 5)
      {
        v115 = 0xED00006B65655765;
      }

      if (v91 <= 7u)
      {
        v113 = 0x6854664F73796164;
        v114 = v115;
      }

      if (v91 == 3)
      {
        v116 = 0x6C61767265746E69;
      }

      else
      {
        v116 = 0xD000000000000011;
      }

      if (v91 == 3)
      {
        v117 = 0xE800000000000000;
      }

      else
      {
        v117 = v83;
      }

      if (v91 == 2)
      {
        v116 = 0x636E657571657266;
        v117 = 0xE900000000000079;
      }

      if (v91)
      {
        v118 = 0x6E65727275636572;
      }

      else
      {
        v118 = 0x44497463656A626FLL;
      }

      if (!v91)
      {
        v103 = 0xE800000000000000;
      }

      if (v91 <= 1u)
      {
        v116 = v118;
        v117 = v103;
      }

      if (v91 <= 4u)
      {
        v119 = v116;
      }

      else
      {
        v119 = v113;
      }

      if (v91 <= 4u)
      {
        v120 = v117;
      }

      else
      {
        v120 = v114;
      }

      if (v107 == v119 && v108 == v120)
      {

LABEL_131:

        v121 = *(v271 + 88);
        sub_1000060C8(0, &qword_100940C50, off_1008D41C8);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v123 = [ObjCClassFromMetadata entity];
        v124 = [objc_allocWithZone(ObjCClassFromMetadata) initWithEntity:v123 insertIntoManagedObjectContext:v121];
        v125 = v260;
        [v121 assignObject:v124 toPersistentStore:v125];

        v126 = v124;
        v127 = [v268 uuid];
        v128 = v263;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v129 = v266;
        (*v248)(v128, 0, 1, v266);
        v130 = v128;
        v131 = v262;
        sub_10018E470(v130, v262);
        LODWORD(v129) = (*v247)(v131, 1, v129);
        v132 = v126;
        isa = 0;
        if (v129 != 1)
        {
          v134 = v262;
          isa = UUID._bridgeToObjectiveC()().super.isa;
          (v253)(v134, v266);
        }

        [v132 setIdentifier:isa];

        sub_1000050A4(v263, &unk_100939D90, "8\n\r");
        v135 = v268;
        v136 = v271;

        v137 = v132;
        v4 = Logger.logObject.getter();
        v138 = static os_log_type_t.default.getter();

        v139 = os_log_type_enabled(v4, v138);
        v268 = v137;
        v253 = v135;
        if (v139)
        {
          v140 = swift_slowAlloc();
          v141 = swift_slowAlloc();
          v142 = v135;
          v279 = swift_slowAlloc();
          *v140 = v245;
          *(v140 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v279);
          *(v140 + 12) = 2082;
          v143 = *(v136 + 40);
          v277 = *(v136 + 24);
          *v278 = v143;
          *&v278[14] = *(v136 + 54);
          sub_100009DAC(&v277, v274);
          v144 = sub_1000063E8();
          v146 = v145;
          sub_1005812D4(&v277);
          v147 = sub_10000668C(v144, v146, &v279);

          *(v140 + 14) = v147;
          *(v140 + 22) = 2114;
          *(v140 + 24) = v142;
          *v141 = v142;
          *(v140 + 32) = 2112;
          v148 = v142;
          v149 = [v268 objectID];
          *(v140 + 34) = v149;
          v141[1] = v149;
          _os_log_impl(&_mh_execute_header, v4, v138, "[%{public}s] INSERT {author: %{public}s, objectID: %{public}@, managedObjectID: %@}", v140, 0x2Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();
        }

        v150 = v267;
        swift_beginAccess();
        v151 = v150[6];
        if ((v151 & 0xC000000000000001) != 0)
        {
          if (v151 < 0)
          {
            v152 = v150[6];
          }

          else
          {
            v152 = v151 & 0xFFFFFFFFFFFFFF8;
          }

          v153 = v253;
          v154 = v253;
          v155 = v268;
          v156 = v268;
          v157 = __CocoaDictionary.count.getter();
          if (__OFADD__(v157, 1))
          {
            goto LABEL_223;
          }

          v150[6] = sub_10021CDBC(v152, v157 + 1);
        }

        else
        {
          v158 = v150[6];
          v153 = v253;
          v159 = v253;
          v155 = v268;
          v160 = v268;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v279 = v150[6];
        sub_1002C8398(v155, v153, isUniquelyReferenced_nonNull_native);
        v150[6] = v279;

        swift_endAccess();
        v162 = 0;
        v163 = *(v136 + 64) | (*(v136 + 68) << 32);
        do
        {
          if ((v163 & 0xC00000000001) == 0x800000000000)
          {
            v164 = *(&off_1008E1F50 + v162 + 32);
            v165 = Logger.logObject.getter();
            v166 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v165, v166))
            {
              v167 = swift_slowAlloc();
              v168 = swift_slowAlloc();
              v274[0] = v168;
              *v167 = v258;
              LOBYTE(v279) = v164;
              v169 = String.init<A>(describing:)();
              v171 = sub_10000668C(v169, v170, v274);

              *(v167 + 4) = v171;
              _os_log_impl(&_mh_execute_header, v165, v166, "Client doesn't have permission to write key {changedValueKey: %{public}s}", v167, 0xCu);
              sub_10000607C(v168);
              v136 = v271;
            }
          }

          v4 = *(v136 + 64);
          if (*(v136 + 68) >> 14 == 2 && (*(v136 + 64) & 1) == 0)
          {
            if (qword_1009367A0 != -1)
            {
              goto LABEL_224;
            }

            goto LABEL_210;
          }

          ++v162;
          v163 = v4 & 0xFFFF0000FFFFFFFFLL | (*(v136 + 68) << 32);
        }

        while (v162 != 11);
        swift_retain_n();
        v13 = v253;
        v33 = v268;
        v173 = Logger.logObject.getter();
        v174 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v173, v174))
        {
          v242 = v174;
          v253 = v173;
          v175 = swift_slowAlloc();
          v176 = swift_slowAlloc();
          v241 = swift_slowAlloc();
          v279 = v241;
          *v175 = v244;
          *(v175 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, &v279);
          *(v175 + 12) = 2082;
          v177 = *(v136 + 40);
          v275 = *(v136 + 24);
          *v276 = v177;
          *&v276[14] = *(v136 + 54);
          sub_100009DAC(&v275, v274);
          v178 = sub_1000063E8();
          v180 = v179;
          sub_1005812D4(&v275);
          v181 = sub_10000668C(v178, v180, &v279);

          *(v175 + 14) = v181;
          *(v175 + 22) = 2114;
          *(v175 + 24) = v13;
          *v176 = v13;
          *(v175 + 32) = 2112;
          v268 = v13;
          v182 = v13;
          v183 = [v33 objectID];
          *(v175 + 34) = v183;
          v240[1] = v176;
          v176[1] = v183;
          *(v175 + 42) = 2082;
          v274[0] = _swiftEmptyArrayStorage;
          sub_100026EF4(0, 11, 0);
          v184 = 0;
          v185 = v274[0];
          v186 = v267;
          do
          {
            v187 = *(&off_1008E1F50 + v184 + 32);
            v188 = 0x7469736F50746573;
            if (v187 == 9)
            {
              v188 = 0x664F7368746E6F6DLL;
            }

            v189 = 0xEF72616559656854;
            if (v187 != 9)
            {
              v189 = 0xEC000000736E6F69;
            }

            if (v187 == 8)
            {
              v188 = 0x54664F736B656577;
              v189 = 0xEE00726165596568;
            }

            v190 = 0xEE0068746E6F4D65;
            if (v187 != 6)
            {
              v190 = 0xED00007261655965;
            }

            if (v187 == 5)
            {
              v190 = 0xED00006B65655765;
            }

            if (*(&off_1008E1F50 + v184 + 32) <= 7u)
            {
              v188 = 0x6854664F73796164;
              v189 = v190;
            }

            if (v187 == 3)
            {
              v191 = 0x6C61767265746E69;
            }

            else
            {
              v191 = 0xD000000000000011;
            }

            v192 = v272;
            if (v187 == 3)
            {
              v192 = 0xE800000000000000;
            }

            if (v187 == 2)
            {
              v191 = 0x636E657571657266;
              v192 = 0xE900000000000079;
            }

            if (*(&off_1008E1F50 + v184 + 32))
            {
              v193 = 0x6E65727275636572;
            }

            else
            {
              v193 = 0x44497463656A626FLL;
            }

            if (*(&off_1008E1F50 + v184 + 32))
            {
              v194 = 0xED0000646E456563;
            }

            else
            {
              v194 = 0xE800000000000000;
            }

            if (*(&off_1008E1F50 + v184 + 32) <= 1u)
            {
              v191 = v193;
              v192 = v194;
            }

            if (*(&off_1008E1F50 + v184 + 32) <= 4u)
            {
              v195 = v191;
            }

            else
            {
              v195 = v188;
            }

            if (*(&off_1008E1F50 + v184 + 32) <= 4u)
            {
              v196 = v192;
            }

            else
            {
              v196 = v189;
            }

            v274[0] = v185;
            v198 = *(v185 + 16);
            v197 = *(v185 + 24);
            if (v198 >= v197 >> 1)
            {
              sub_100026EF4((v197 > 1), v198 + 1, 1);
              v185 = v274[0];
            }

            ++v184;
            *(v185 + 16) = v198 + 1;
            v199 = v185 + 16 * v198;
            *(v199 + 32) = v195;
            *(v199 + 40) = v196;
          }

          while (v184 != 11);
          v200 = Array.description.getter();
          v202 = v201;

          v203 = sub_10000668C(v200, v202, &v279);

          *(v175 + 44) = v203;
          *(v175 + 52) = 1024;
          v136 = v271;
          v204 = *(v271 + 104);

          *(v175 + 54) = v204;

          v205 = v253;
          _os_log_impl(&_mh_execute_header, v253, v242, "[%{public}s] UPDATE VALUES {author: %{public}s, objectID: %{public}@, managedObjectID: %@, changedKeys: %{public}s}, syncToCloudKit: %{BOOL}d}", v175, 0x3Au);
          sub_1000F5104(&unk_100938E70, &unk_100797230);
          swift_arrayDestroy();

          swift_arrayDestroy();

          v206 = v269;
          v13 = v268;
        }

        else
        {

          v206 = v269;
          v186 = v267;
        }

        sub_1003BF188(v261, v33, &off_1008E1F50);
        if (v206)
        {
          goto LABEL_216;
        }

        v269 = 0;
        v207 = [v33 changedValues];

        v208 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
        swift_beginAccess();
        v209 = v13;

        v210 = v186[7];
        v211 = swift_isUniquelyReferenced_nonNull_native();
        v279 = v186[7];
        v186[7] = 0x8000000000000000;
        sub_1002C8688(v208, v209, v211);

        v186[7] = v279;
        swift_endAccess();
        if (*(v136 + 104))
        {

          [v33 updateChangeCount];
        }

        else
        {

          v212 = v209;

          v213 = Logger.logObject.getter();
          v214 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v213, v214))
          {
            v215 = swift_slowAlloc();
            v216 = swift_slowAlloc();
            v253 = v216;
            v268 = swift_slowAlloc();
            v274[0] = v268;
            *v215 = v243;
            *(v215 + 4) = sub_10000668C(0x747265737075, 0xE600000000000000, v274);
            *(v215 + 12) = 1024;
            *(v215 + 14) = 0;

            *(v215 + 18) = 1024;
            *(v215 + 20) = 1;
            *(v215 + 24) = 2114;
            *(v215 + 26) = v212;
            v216->isa = v212;
            *(v215 + 34) = 2082;
            v217 = v212;
            v218 = v269;
            sub_1005E2810(v208);

            v219 = Array.description.getter();
            v221 = v220;

            v222 = sub_10000668C(v219, v221, v274);
            v4 = v218;

            *(v215 + 36) = v222;
            _os_log_impl(&_mh_execute_header, v213, v214, "[%{public}s] updateChangeCount() skipped {syncToCloudKit: %{BOOL}d, immutableType: %{BOOL}d, objectID: %{public}@, changedValues.keys: %{public}s}", v215, 0x2Cu);
            sub_1000050A4(v253, &unk_100938E70, &unk_100797230);

            swift_arrayDestroy();

            goto LABEL_201;
          }
        }

        v4 = v269;
        goto LABEL_201;
      }

      v105 = _stringCompareWithSmolCheck(_:_:expecting:)();

      ++v104;
      v103 = 0xED0000646E456563;
      if (v105)
      {
        goto LABEL_131;
      }
    }
  }

  v223 = objc_opt_self();
  v224 = v268;
  [v223 noSuchObjectErrorWithObjectID:v268];
  swift_willThrow();
}

uint64_t sub_1006A2C24(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100376298();
      }
    }

    else
    {
      v29 = v44;
      sub_10036FA94(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943260, &qword_100797F38);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A2E94(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_1003762AC();
      }
    }

    else
    {
      v29 = v44;
      sub_10036FAA8(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009432F0, &qword_1007B4D80);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3104(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100377D18();
      }
    }

    else
    {
      v29 = v44;
      sub_100372774(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100944000, &unk_100798010);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3374(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_10037812C();
      }
    }

    else
    {
      v29 = v44;
      sub_100372BA0(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009433D0, &unk_100797F50);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A35E4(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100378140();
      }
    }

    else
    {
      v29 = v44;
      sub_100372BB4(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943420, &unk_1007A3DC0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3854(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100378154();
      }
    }

    else
    {
      v29 = v44;
      sub_100372BC8(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_100943470, &unk_100797F60);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3AC4(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100378168();
      }
    }

    else
    {
      v29 = v44;
      sub_100372BDC(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009434C0, &unk_1007A3E50);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3D34(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_10037817C();
      }
    }

    else
    {
      v29 = v44;
      sub_100372BF0(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&qword_10094F310, &qword_100797F78);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A3FA4(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_100378190();
      }
    }

    else
    {
      v29 = v44;
      sub_100372C04(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_10094F390, &unk_100797F80);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A4214(uint64_t a1, void (*a2)(void *__return_ptr, id *), uint64_t a3, char a4, uint64_t *a5)
{
  v44 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v41 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v43[0] = *(*(a1 + 48) + v16);
    v43[1] = v17;
    v18 = v43[0];
    v19 = v17;
    a2(v42, v43);

    v21 = v42[0];
    v20 = v42[1];
    v22 = *v44;
    v24 = sub_100393C74(v42[0]);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_25;
    }

    v28 = v23;
    if (*(v22 + 24) >= v27)
    {
      if ((v41 & 1) == 0)
      {
        sub_1003781A4();
      }
    }

    else
    {
      v29 = v44;
      sub_100372C18(v27, v41 & 1);
      v30 = *v29;
      v31 = sub_100393C74(v21);
      if ((v28 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v24 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v44;
    if (v28)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v24);
      *(v12 + 8 * v24) = v20;
    }

    else
    {
      v33[(v24 >> 6) + 8] |= 1 << v24;
      *(v33[6] + 8 * v24) = v21;
      *(v33[7] + 8 * v24) = v20;
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v33[2] = v36;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_10001B860();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v41 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  sub_1000F5104(&unk_1009436D0, &unk_100797F90);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1006A4484(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  if (a1)
  {
    v9 = qword_1009366B0;
    v10 = a1;
    if (a3 >> 60 == 15)
    {
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_100006654(v11, qword_10094EE30);
      v12 = a6;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        *(v15 + 4) = v12;
        *v16 = v12;
        v17 = v12;
        _os_log_impl(&_mh_execute_header, v13, v14, "mergeOrderedSet(): REMCDList.reminderIDsMergeableOrdering data is nil. Serializing from inutput orderedSet directly. {objectID: %@}", v15, 0xCu);
        sub_1000050A4(v16, &unk_100938E70, &unk_100797230);
      }

      v43 = 0;
      v18 = [objc_opt_self() reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:v10 error:&v43];
      v19 = v43;
      if (!v18)
      {
        v30 = v19;
        _convertNSErrorToError(_:)();

        swift_willThrow();
        return v14;
      }

      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      goto LABEL_17;
    }

    if (v9 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100006654(v20, qword_10094EE30);
    v10 = v10;
    v21 = a6;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2048;
      v26 = v21;
      v27 = [v10 count];

      *(v24 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v22, v23, "mergeOrderedSet(): Merge not supported for REMCDList.reminderIDsMergeableOrdering for now, directly serializing from input orderedSet. {objectID: %@, count: %ld}", v24, 0x16u);
      sub_1000050A4(v25, &unk_100938E70, &unk_100797230);
    }

    else
    {

      v22 = v10;
    }

    v43 = 0;
    v28 = [objc_opt_self() reminderIDUUIDStringsJSONDataFromReminderIDsMergeableOrdering:v10 error:&v43];
    v29 = v43;
    if (v28)
    {
      v14 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_17:
      return v14;
    }

    v31 = v29;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v32 = v21;

    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v35 = 138412802;
      *(v35 + 4) = v32;
      *v41 = v32;
      *(v35 + 12) = 2080;
      v36 = v32;
      *(v35 + 14) = sub_10000668C(a4, a5, &v43);
      *(v35 + 22) = 2080;
      swift_getErrorValue();
      v37 = Error.localizedDescription.getter();
      v39 = sub_10000668C(v37, v38, &v43);

      *(v35 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v33, v34, "mergeOrderedSet(): Failed to merge ordered set for list {list.objectID: %@, key: %s}: %s", v35, 0x20u);
      sub_1000050A4(v41, &unk_100938E70, &unk_100797230);

      swift_arrayDestroy();
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v14 = a2;
    sub_1001CB4B8(a2, a3);
  }

  return v14;
}

void sub_1006A4A44(void *a1, void *a2)
{
  v4 = [a1 sharees];
  v54 = a1;
  if (!v4)
  {
    v17 = _swiftEmptySetSingleton;
    goto LABEL_15;
  }

  v5 = v4;
  sub_1000060C8(0, &unk_10094F0F0, REMSharee_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [a1 accountID];
  v8 = [a1 objectID];
  type metadata accessor for REMShareeCDIngestor();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  sub_1005FF6D4(v6, v9);

  if (v6 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_4:
      v58 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v10 < 0)
      {
        __break(1u);
      }

      v11 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v12 = *(v6 + 8 * v11 + 32);
        }

        v13 = v12;
        ++v11;
        v14 = [v12 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v15 = v58[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v10 != v11);

      v16 = v58;
      goto LABEL_14;
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_14:
  v17 = sub_1001A577C(v16);

LABEL_15:
  v18 = [a2 sharees];
  if (v18)
  {
    v19 = v18;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    sub_10000CE28(&qword_100939840, &qword_100942E50, off_1008D41E0);
    v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = v20;
    sub_1000F5104(&qword_10094F0E0, &qword_1007B4CD8);
    sub_10000CB48(&qword_10094F0E8, &qword_10094F0E0, &qword_1007B4CD8);
    v21 = Sequence.elements<A>(ofType:)();

    v57 = v17;
    v53 = v21;
    if (v21 >> 62)
    {
      goto LABEL_45;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v54;
    while (v22)
    {
      v24 = 0;
      v56 = (v57 + 56);
      v55 = v22;
      while (1)
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v25 = *(v53 + 32 + 8 * v24);
        }

        v26 = v25;
        if (__OFADD__(v24++, 1))
        {
          break;
        }

        v58 = 0;
        v28 = [v25 remObjectIDWithError:&v58];
        v29 = v58;
        if (!v28)
        {
          v52 = v58;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }

        v30 = v28;
        if ((v57 & 0xC000000000000001) == 0)
        {
          if (*(v57 + 16))
          {
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v34 = *(v57 + 40);
            v35 = v29;
            v36 = NSObject._rawHashValue(seed:)(v34);
            v37 = -1 << *(v57 + 32);
            v38 = v36 & ~v37;
            if ((*(v56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
            {
              v39 = ~v37;
              do
              {
                v40 = *(*(v57 + 48) + 8 * v38);
                v41 = static NSObject.== infix(_:_:)();

                if (v41)
                {
                  goto LABEL_20;
                }

                v38 = (v38 + 1) & v39;
              }

              while (((*(v56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0);
            }
          }

          else
          {
            v42 = v58;
          }

LABEL_36:
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          sub_100006654(v43, qword_10094EE30);
          v44 = v30;
          v45 = v23;
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v48 = 138412546;
            v50 = [v45 objectID];
            *(v48 + 4) = v50;
            *(v48 + 12) = 2112;
            *(v48 + 14) = v44;
            *v49 = v50;
            v49[1] = v30;
            v51 = v44;
            _os_log_impl(&_mh_execute_header, v46, v47, "Removing sharee from list {list.objectID: %@, shareeobjectID: %@}", v48, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v23 = v54;
          }

          [v26 setList:0];
          goto LABEL_20;
        }

        v31 = v58;
        v32 = v30;
        v33 = __CocoaSet.contains(_:)();

        if ((v33 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_20:

        if (v24 == v55)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v22 = _CocoaArrayWrapper.endIndex.getter();
      v23 = v54;
    }

LABEL_46:
  }
}

void sub_1006A5110(void *a1, void *a2)
{
  v4 = [a1 calDAVNotifications];
  v54 = a1;
  if (!v4)
  {
    v17 = _swiftEmptySetSingleton;
    goto LABEL_15;
  }

  v5 = v4;
  sub_1000060C8(0, &qword_10094F170, REMCalDAVNotification_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [a1 accountID];
  v8 = [a1 objectID];
  type metadata accessor for REMCalDAVNotificationCDIngestor();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  sub_1005FFEE0(v6, v9);

  if (v6 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_4:
      v58 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v10 < 0)
      {
        __break(1u);
      }

      v11 = 0;
      do
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v12 = *(v6 + 8 * v11 + 32);
        }

        v13 = v12;
        ++v11;
        v14 = [v12 objectID];

        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v15 = v58[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      while (v10 != v11);

      v16 = v58;
      goto LABEL_14;
    }
  }

  v16 = _swiftEmptyArrayStorage;
LABEL_14:
  v17 = sub_1001A577C(v16);

LABEL_15:
  v18 = [a2 calDAVNotifications];
  if (v18)
  {
    v19 = v18;
    sub_1000060C8(0, &qword_10094F150, off_1008D4178);
    sub_10000CE28(&qword_10094F158, &qword_10094F150, off_1008D4178);
    v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v58 = v20;
    sub_1000F5104(&qword_10094F160, &qword_1007B4D60);
    sub_10000CB48(&qword_10094F168, &qword_10094F160, &qword_1007B4D60);
    v21 = Sequence.elements<A>(ofType:)();

    v57 = v17;
    v53 = v21;
    if (v21 >> 62)
    {
      goto LABEL_45;
    }

    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v54;
    while (v22)
    {
      v24 = 0;
      v56 = (v57 + 56);
      v55 = v22;
      while (1)
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v24 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_44;
          }

          v25 = *(v53 + 32 + 8 * v24);
        }

        v26 = v25;
        if (__OFADD__(v24++, 1))
        {
          break;
        }

        v58 = 0;
        v28 = [v25 remObjectIDWithError:&v58];
        v29 = v58;
        if (!v28)
        {
          v52 = v58;

          _convertNSErrorToError(_:)();

          swift_willThrow();
          return;
        }

        v30 = v28;
        if ((v57 & 0xC000000000000001) == 0)
        {
          if (*(v57 + 16))
          {
            sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr);
            v34 = *(v57 + 40);
            v35 = v29;
            v36 = NSObject._rawHashValue(seed:)(v34);
            v37 = -1 << *(v57 + 32);
            v38 = v36 & ~v37;
            if ((*(v56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
            {
              v39 = ~v37;
              do
              {
                v40 = *(*(v57 + 48) + 8 * v38);
                v41 = static NSObject.== infix(_:_:)();

                if (v41)
                {
                  goto LABEL_20;
                }

                v38 = (v38 + 1) & v39;
              }

              while (((*(v56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0);
            }
          }

          else
          {
            v42 = v58;
          }

LABEL_36:
          if (qword_1009366B0 != -1)
          {
            swift_once();
          }

          v43 = type metadata accessor for Logger();
          sub_100006654(v43, qword_10094EE30);
          v44 = v30;
          v45 = v23;
          v46 = Logger.logObject.getter();
          v47 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *v48 = 138412546;
            v50 = [v45 objectID];
            *(v48 + 4) = v50;
            *(v48 + 12) = 2112;
            *(v48 + 14) = v44;
            *v49 = v50;
            v49[1] = v30;
            v51 = v44;
            _os_log_impl(&_mh_execute_header, v46, v47, "Removing calDAVNotification from list {list.objectID: %@, calDAVNotificationobjectID: %@}", v48, 0x16u);
            sub_1000F5104(&unk_100938E70, &unk_100797230);
            swift_arrayDestroy();

            v23 = v54;
          }

          [v26 setOwner:0];
          goto LABEL_20;
        }

        v31 = v58;
        v32 = v30;
        v33 = __CocoaSet.contains(_:)();

        if ((v33 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_20:

        if (v24 == v55)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v22 = _CocoaArrayWrapper.endIndex.getter();
      v23 = v54;
    }

LABEL_46:
  }
}

void sub_1006A57DC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Date();
  v78 = *(v13 - 8);
  v79 = v13;
  v14 = *(v78 + 64);
  *&v15 = __chkstk_darwin(v13).n128_u64[0];
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 storeControllerManagedObjectContext];
  if (v18)
  {
    v19 = v18;
    v76 = v9;
    v77 = a1;
    v74 = a3;
    v75 = v12;
    v82 = a2;
    v20 = [a2 entityName];
    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;

    v24 = [objc_opt_self() cdEntityName];
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;

    if (v25 == v21 && v27 == v23)
    {
    }

    else
    {
      v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v35 & 1) == 0)
      {
        v39 = v77;
        if (v21 != 0xD000000000000013 || 0x80000001007EC4F0 != v23)
        {
          v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v48 & 1) == 0)
          {
            v50 = objc_opt_self();
            v80 = 0;
            v81 = 0xE000000000000000;
            _StringGuts.grow(_:)(100);
            v51._countAndFlagsBits = 0xD000000000000061;
            v51._object = 0x80000001007FE500;
            String.append(_:)(v51);
            v52 = [v82 description];
            v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v55 = v54;

            v56._countAndFlagsBits = v53;
            v56._object = v55;
            String.append(_:)(v56);

            v57._countAndFlagsBits = 125;
            v57._object = 0xE100000000000000;
            String.append(_:)(v57);
            v58 = String._bridgeToObjectiveC()();

            [v50 invalidParameterErrorWithDescription:v58];

            swift_willThrow();
            goto LABEL_9;
          }

          i = v8;
          v73 = v3;
          v47 = 2;
          v36 = v82;
          v49 = v79;
          goto LABEL_33;
        }

        i = v8;
        v47 = 2;
        v36 = v82;
LABEL_32:
        v49 = v79;
        v73 = v4;

LABEL_33:
        type metadata accessor for REMCDTemplateOperationQueueItem();
        v59 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:v19];
        [v59 setAccount:v39];
        [v59 setOperationTypeRawValue:v47];
        [v59 setPriorityRawValue:20];
        Date.init()();
        isa = Date._bridgeToObjectiveC()().super.isa;
        (*(v78 + 8))(v17, v49);
        [v59 setCreationDate:isa];

        v61 = v36;
        v62 = [v61 uuid];
        v63 = v75;
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v64 = UUID._bridgeToObjectiveC()().super.isa;
        v65 = *(v76 + 8);
        v66 = i;
        v65(v63, i);
        [v59 setTemplateIdentifier:v64];

        v67 = v74;
        v68 = [v67 uuid];
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v69 = UUID._bridgeToObjectiveC()().super.isa;
        v65(v63, v66);
        [v59 setListIdentifier:v69];

        return;
      }
    }

    v36 = v82;
    v37 = sub_100427754(&off_1008E3280, v82);
    if (v3)
    {
LABEL_9:

      return;
    }

    v38 = v37;
    v39 = v77;
    if (v37 >> 62)
    {
      goto LABEL_30;
    }

    v40 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v8; v40; i = v8)
    {
      v73 = v4;
      v71 = v19;
      v36 = 0;
      v39 = v38 & 0xC000000000000001;
      v19 = (v38 & 0xFFFFFFFFFFFFFF8);
      v4 = &selRef_setPublicLinkLastModifiedDate_;
      while (1)
      {
        if (v39)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v36 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v41 = *(v38 + 8 * v36 + 32);
        }

        v42 = v41;
        v8 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        [v41 setPriorityRawValue:30];

        ++v36;
        if (v8 == v40)
        {
          v47 = 1;
          v19 = v71;
          v4 = v73;
          v36 = v82;
          v39 = v77;
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v40 = _CocoaArrayWrapper.endIndex.getter();
    }

    v47 = 1;
    goto LABEL_32;
  }

  v80 = 0;
  v81 = 0xE000000000000000;
  _StringGuts.grow(_:)(137);
  v28._countAndFlagsBits = 0xD000000000000086;
  v28._object = 0x80000001007FE470;
  String.append(_:)(v28);
  v29 = [a1 remObjectID];
  if (v29)
  {
    v30 = v29;
    v31 = [v29 description];

    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v34 = 0xE300000000000000;
    v32 = 7104878;
  }

  v43 = objc_opt_self();
  v44._countAndFlagsBits = v32;
  v44._object = v34;
  String.append(_:)(v44);

  v45._countAndFlagsBits = 125;
  v45._object = 0xE100000000000000;
  String.append(_:)(v45);
  v46 = String._bridgeToObjectiveC()();

  [v43 invalidParameterErrorWithDescription:v46];

  swift_willThrow();
}

void sub_1006A5F00(void *a1)
{
  v2 = v1;
  v4 = _s10PredicatesOMa(0);
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 shouldCategorizeGroceryItems])
  {
    v9 = [a1 storeControllerManagedObjectContext];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 remObjectID];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = [a1 account];
      if (!v13)
      {

        return;
      }

      v74 = v13;
      v77 = v10;
      v14 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v15 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
      *v8 = v12;
      v16 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
      v17 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v17 - 8) + 104))(&v8[v15], v16, v17);
      swift_storeEnumTagMultiPayload();
      v18 = qword_100936080;
      v73 = v12;
      if (v18 != -1)
      {
        goto LABEL_32;
      }

      while (1)
      {
        v75 = qword_100974E30;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        *(inited + 32) = swift_getKeyPath();
        v20 = sub_100043AA8();
        v21 = [objc_allocWithZone(NSFetchRequest) init];
        v22 = [swift_getObjCClassFromMetadata() entity];
        [v21 setEntity:v22];

        [v21 setAffectedStores:0];
        [v21 setPredicate:v20];

        [v21 setFetchLimit:0];
        v79 = v21;
        [v21 setFetchOffset:0];
        v23 = v14;
        v84 = _swiftEmptyArrayStorage;
        sub_1000F5104(&qword_100949370, &unk_100797770);
        sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770);
        Predicate = Sequence<>.postFetchPredicateTypes.getter();
        v86 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, 1, 0);
        v25 = v86;
        v71 = a1;
        v78 = v23;
        v76 = inited;
        v81 = Predicate;
        if ((inited & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v26 = *(inited + 32);
        }

        v27 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v28)
        {
          goto LABEL_70;
        }

        v29 = v27;
        v30 = v28;

        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_100026EF4((v31 > 1), v32 + 1, 1);
          v25 = v86;
        }

        *(v25 + 16) = v32 + 1;
        v33 = v25 + 16 * v32;
        *(v33 + 32) = v29;
        *(v33 + 40) = v30;
        v87 = v25;
        sub_1000F5104(&unk_10093B300, &unk_100797780);
        Array<A>.removeDuplicates()();
        inited = v87;
        sub_10003450C(v87);
        isa = Array._bridgeToObjectiveC()().super.isa;

        a1 = v79;
        [v79 setPropertiesToFetch:isa];

        v84 = sub_1003EBAD0();
        v26 = _swiftEmptyArrayStorage;
        sub_100271EA8(_swiftEmptyArrayStorage);
        v86 = v84;
        v35 = sub_100235FA0(v81);

        v36 = sub_100277CC0(v35);

        if ((v36 & 0x8000000000000000) != 0 || (v36 & 0x4000000000000000) != 0)
        {
          v37 = _CocoaArrayWrapper.endIndex.getter();
          v14 = v78;
          if (!v37)
          {
LABEL_34:

LABEL_35:
            sub_100271EA8(v26);
            sub_1000F5104(&unk_10093B300, &unk_100797780);
            Array<A>.removeDuplicates()();
            v44 = Array._bridgeToObjectiveC()().super.isa;

            [a1 setRelationshipKeyPathsForPrefetching:v44];

            sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
            v45 = Array._bridgeToObjectiveC()().super.isa;
            [a1 setSortDescriptors:v45];

            v46 = v77;
            v47 = NSManagedObjectContext.fetch<A>(_:)();
            if (v2)
            {

              sub_1000513B4(v8);
              return;
            }

            inited = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v47);

            sub_1000513B4(v8);
            v84 = _swiftEmptyArrayStorage;
            v72 = 0;
            a1 = (inited & 0xFFFFFFFFFFFFFF8);
            if (!(inited >> 62))
            {
              v48 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_39;
            }

LABEL_63:
            v48 = _CocoaArrayWrapper.endIndex.getter();
LABEL_39:
            v49 = 0;
            v50 = _swiftEmptyArrayStorage;
            while (v48 != v49)
            {
              if ((inited & 0xC000000000000001) != 0)
              {
                v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v49 >= a1[2])
                {
                  goto LABEL_60;
                }

                v51 = *(inited + 8 * v49 + 32);
              }

              v52 = v51;
              v53 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

              v54 = [v51 remObjectID];

              ++v49;
              if (v54)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v55 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v50 = v84;
                v49 = v53;
              }
            }

            v56 = v71;
            v57 = [v71 shouldCategorizeGroceryItems];
            v58 = v72;
            if (v57)
            {
              v59 = [v56 storeControllerManagedObjectContext];
              if (v59)
              {
                v60 = v59;
                v61 = [v56 remObjectID];
                if (v61)
                {
                  v62 = v61;
                  if (v50 >> 62)
                  {
                    if (_CocoaArrayWrapper.endIndex.getter())
                    {
                      goto LABEL_55;
                    }
                  }

                  else if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
LABEL_55:
                    sub_1000F5104(&unk_100939E10, &qword_1007970D0);
                    v63 = v62;
                    v64 = v74;
                    v65 = sub_100015620(v62, v50, 1, v74, v60);
                    if (v58)
                    {
                    }

                    else
                    {
                      v66 = v65;
                    }

                    return;
                  }
                }

                else
                {
                }
              }
            }

            return;
          }
        }

        else
        {
          v37 = *(v36 + 16);
          v14 = v78;
          if (!v37)
          {
            goto LABEL_34;
          }
        }

        v69 = inited;
        v70 = v8;
        v72 = v2;
        v83 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v37 & ~(v37 >> 63), 0);
        if (v37 < 0)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v38 = 0;
        v26 = v83;
        v80 = v37;
        v81 = v36 & 0xC000000000000001;
        while (1)
        {
          v8 = (v38 + 1);
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v81)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v38 >= *(v36 + 16))
            {
              goto LABEL_31;
            }

            v39 = *(v36 + 8 * v38 + 32);
          }

          v40 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v41)
          {
            v84 = 0;
            v85 = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v67._object = 0x80000001007EC120;
            v67._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v67);
            v82 = v39;
            sub_1000F5104(&unk_100939F10, &qword_100797F30);
            while (1)
            {
              _print_unlocked<A, B>(_:_:)();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_70:
              v84 = 0;
              v85 = 0xE000000000000000;
              _StringGuts.grow(_:)(46);
              v68._object = 0x80000001007EC120;
              v68._countAndFlagsBits = 0xD00000000000002CLL;
              String.append(_:)(v68);
              v83 = v26;
              sub_1000F5104(&unk_100939F10, &qword_100797F30);
            }
          }

          v14 = v40;
          a1 = v41;

          v83 = v26;
          v2 = v26[2];
          v42 = v26[3];
          if (v2 >= v42 >> 1)
          {
            sub_100026EF4((v42 > 1), v2 + 1, 1);
            v26 = v83;
          }

          v26[2] = v2 + 1;
          v43 = &v26[2 * v2];
          v43[4] = v14;
          v43[5] = a1;
          ++v38;
          if (v8 == v80)
          {

            v2 = v72;
            v8 = v70;
            a1 = v79;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        swift_once();
      }
    }
  }
}

void sub_1006A69E0(void *a1)
{
  v2 = v1;
  v4 = _s10PredicatesOMa(0);
  v5 = *(*(v4 - 8) + 64);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 shouldAutoCategorizeItems])
  {
    v9 = [a1 storeControllerManagedObjectContext];
    if (v9)
    {
      v10 = v9;
      v11 = [a1 remObjectID];
      if (!v11)
      {

        return;
      }

      v12 = v11;
      v13 = [a1 account];
      if (!v13)
      {

        return;
      }

      v74 = v13;
      v77 = v10;
      v14 = sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      v15 = *(sub_1000F5104(&unk_100942AF0, qword_1007A7520) + 48);
      *v8 = v12;
      v16 = enum case for REMRemindersListDataView.ShowCompleted.on(_:);
      v17 = type metadata accessor for REMRemindersListDataView.ShowCompleted();
      (*(*(v17 - 8) + 104))(&v8[v15], v16, v17);
      swift_storeEnumTagMultiPayload();
      v18 = qword_100936080;
      v73 = v12;
      if (v18 != -1)
      {
        goto LABEL_32;
      }

      while (1)
      {
        v75 = qword_100974E30;
        sub_1000F5104(&unk_100939D60, &unk_1007959E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1007953F0;
        *(inited + 32) = swift_getKeyPath();
        v20 = sub_100043AA8();
        v21 = [objc_allocWithZone(NSFetchRequest) init];
        v22 = [swift_getObjCClassFromMetadata() entity];
        [v21 setEntity:v22];

        [v21 setAffectedStores:0];
        [v21 setPredicate:v20];

        [v21 setFetchLimit:0];
        v79 = v21;
        [v21 setFetchOffset:0];
        v23 = v14;
        v84 = _swiftEmptyArrayStorage;
        sub_1000F5104(&qword_100949370, &unk_100797770);
        sub_10000CB48(&qword_100939850, &qword_100949370, &unk_100797770);
        Predicate = Sequence<>.postFetchPredicateTypes.getter();
        v86 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, 1, 0);
        v25 = v86;
        v71 = a1;
        v78 = v23;
        v76 = inited;
        v81 = Predicate;
        if ((inited & 0xC000000000000001) != 0)
        {
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v26 = *(inited + 32);
        }

        v27 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
        if (!v28)
        {
          goto LABEL_70;
        }

        v29 = v27;
        v30 = v28;

        v32 = *(v25 + 16);
        v31 = *(v25 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_100026EF4((v31 > 1), v32 + 1, 1);
          v25 = v86;
        }

        *(v25 + 16) = v32 + 1;
        v33 = v25 + 16 * v32;
        *(v33 + 32) = v29;
        *(v33 + 40) = v30;
        v87 = v25;
        sub_1000F5104(&unk_10093B300, &unk_100797780);
        Array<A>.removeDuplicates()();
        inited = v87;
        sub_10003450C(v87);
        isa = Array._bridgeToObjectiveC()().super.isa;

        a1 = v79;
        [v79 setPropertiesToFetch:isa];

        v84 = sub_1003EBAD0();
        v26 = _swiftEmptyArrayStorage;
        sub_100271EA8(_swiftEmptyArrayStorage);
        v86 = v84;
        v35 = sub_100235FA0(v81);

        v36 = sub_100277CC0(v35);

        if ((v36 & 0x8000000000000000) != 0 || (v36 & 0x4000000000000000) != 0)
        {
          v37 = _CocoaArrayWrapper.endIndex.getter();
          v14 = v78;
          if (!v37)
          {
LABEL_34:

LABEL_35:
            sub_100271EA8(v26);
            sub_1000F5104(&unk_10093B300, &unk_100797780);
            Array<A>.removeDuplicates()();
            v44 = Array._bridgeToObjectiveC()().super.isa;

            [a1 setRelationshipKeyPathsForPrefetching:v44];

            sub_1000060C8(0, &qword_10093C980, NSSortDescriptor_ptr);
            v45 = Array._bridgeToObjectiveC()().super.isa;
            [a1 setSortDescriptors:v45];

            v46 = v77;
            v47 = NSManagedObjectContext.fetch<A>(_:)();
            if (v2)
            {

              sub_1000513B4(v8);
              return;
            }

            inited = sub_100155C54(_swiftEmptyArrayStorage, _swiftEmptySetSingleton, v47);

            sub_1000513B4(v8);
            v84 = _swiftEmptyArrayStorage;
            v72 = 0;
            a1 = (inited & 0xFFFFFFFFFFFFFF8);
            if (!(inited >> 62))
            {
              v48 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_39;
            }

LABEL_63:
            v48 = _CocoaArrayWrapper.endIndex.getter();
LABEL_39:
            v49 = 0;
            v50 = _swiftEmptyArrayStorage;
            while (v48 != v49)
            {
              if ((inited & 0xC000000000000001) != 0)
              {
                v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v49 >= a1[2])
                {
                  goto LABEL_60;
                }

                v51 = *(inited + 8 * v49 + 32);
              }

              v52 = v51;
              v53 = v49 + 1;
              if (__OFADD__(v49, 1))
              {
                __break(1u);
LABEL_60:
                __break(1u);
                goto LABEL_61;
              }

              v54 = [v51 remObjectID];

              ++v49;
              if (v54)
              {
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v55 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                v50 = v84;
                v49 = v53;
              }
            }

            v56 = v71;
            v57 = [v71 shouldAutoCategorizeItems];
            v58 = v72;
            if (v57)
            {
              v59 = [v56 storeControllerManagedObjectContext];
              if (v59)
              {
                v60 = v59;
                v61 = [v56 remObjectID];
                if (v61)
                {
                  v62 = v61;
                  if (v50 >> 62)
                  {
                    if (_CocoaArrayWrapper.endIndex.getter())
                    {
                      goto LABEL_55;
                    }
                  }

                  else if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
LABEL_55:
                    sub_1000F5104(&unk_100936F40, &unk_100791B30);
                    v63 = v62;
                    v64 = v74;
                    v65 = sub_10018F9D4(v63, v50, 1, v74, v60);
                    if (v58)
                    {
                    }

                    else
                    {
                      v66 = v65;
                    }

                    return;
                  }
                }

                else
                {
                }
              }
            }

            return;
          }
        }

        else
        {
          v37 = *(v36 + 16);
          v14 = v78;
          if (!v37)
          {
            goto LABEL_34;
          }
        }

        v69 = inited;
        v70 = v8;
        v72 = v2;
        v83 = _swiftEmptyArrayStorage;
        sub_100026EF4(0, v37 & ~(v37 >> 63), 0);
        if (v37 < 0)
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v38 = 0;
        v26 = v83;
        v80 = v37;
        v81 = v36 & 0xC000000000000001;
        while (1)
        {
          v8 = (v38 + 1);
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v81)
          {
            v39 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v38 >= *(v36 + 16))
            {
              goto LABEL_31;
            }

            v39 = *(v36 + 8 * v38 + 32);
          }

          v40 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
          if (!v41)
          {
            v84 = 0;
            v85 = 0xE000000000000000;
            _StringGuts.grow(_:)(46);
            v67._object = 0x80000001007EC120;
            v67._countAndFlagsBits = 0xD00000000000002CLL;
            String.append(_:)(v67);
            v82 = v39;
            sub_1000F5104(&unk_100939F10, &qword_100797F30);
            while (1)
            {
              _print_unlocked<A, B>(_:_:)();
              _assertionFailure(_:_:file:line:flags:)();
              __break(1u);
LABEL_70:
              v84 = 0;
              v85 = 0xE000000000000000;
              _StringGuts.grow(_:)(46);
              v68._object = 0x80000001007EC120;
              v68._countAndFlagsBits = 0xD00000000000002CLL;
              String.append(_:)(v68);
              v83 = v26;
              sub_1000F5104(&unk_100939F10, &qword_100797F30);
            }
          }

          v14 = v40;
          a1 = v41;

          v83 = v26;
          v2 = v26[2];
          v42 = v26[3];
          if (v2 >= v42 >> 1)
          {
            sub_100026EF4((v42 > 1), v2 + 1, 1);
            v26 = v83;
          }

          v26[2] = v2 + 1;
          v43 = &v26[2 * v2];
          v43[4] = v14;
          v43[5] = a1;
          ++v38;
          if (v8 == v80)
          {

            v2 = v72;
            v8 = v70;
            a1 = v79;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        swift_once();
      }
    }
  }
}