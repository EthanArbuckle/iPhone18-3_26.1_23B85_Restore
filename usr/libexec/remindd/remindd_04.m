uint64_t sub_10005BA1C()
{
  sub_10000607C(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10005BA6C()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[5];

  v3 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10005BABC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005BAF4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005BCFC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005BD34()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005BDA4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = type metadata accessor for DateComponents();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_10005BF04(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Date();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      result = type metadata accessor for DateComponents();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8]) = a2;
        return result;
      }

      v10 = result;
      v14 = *(result - 8);
      v15 = a4[7];
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_10005C054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005C110(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005C1E4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C21C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005C260()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005C298()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005C2D0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005C310()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + v4;

  v6 = *(v0 + 48);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 1, v3 | 7);
}

id sub_10005C3F8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

uint64_t sub_10005C48C@<X0>(_BYTE *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.enabledOniOS.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005C4BC@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.randomSeed.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005C4E8@<X0>(_BYTE *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.shouldSaveModel.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005C518@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.maxSampleCount.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005C544@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.minimumSampleCount.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005C594@<X0>(uint64_t a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.IntentionalWord.k.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10005C5EC@<X0>(_BYTE *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.CoreBehavior.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005C61C@<X0>(void *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.CoreBehavior.validationRelativeSupport.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10005C648@<X0>(void *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.CoreBehavior.confidence.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10005C674@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.CoreBehavior.feedbackResetVersion.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005C6A0@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.CoreBehavior.support.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005C6CC@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.CoreBehavior.adjustment.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005C71C@<X0>(_BYTE *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.Embedding.isEnabled.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005C74C@<X0>(void *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.validationSetProportion.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10005C778@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.Embedding.neighborsToConsider.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005C7C8@<X0>(_BYTE *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.AnchoredBubble.enabledOniOS.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005C7F8@<X0>(_BYTE *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.AnchoredBubble.overrideLocalWordDistanceScale.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005C828@<X0>(void *a1@<X8>)
{
  result = REMSuggestedAttributesTrainer.Parameters.AnchoredBubble.defaultWordDistanceScale.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_10005C854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005C91C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000F5104(&qword_100941328, &qword_1007A0F08);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005CB30()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005CB8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005CBC4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005CBFC()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005CC40()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

id sub_10005CC98@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

id sub_10005CCE8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 assignee];
  *a2 = result;
  return result;
}

uint64_t sub_10005CD50()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005CD90()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005CDC8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005CE08()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005CE48()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10005CE90()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005CED0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005CF08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005CF50()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10005CF88@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 state];
  *a2 = result;
  return result;
}

id sub_10005CFD0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isTerminated];
  *a2 = result;
  return result;
}

uint64_t sub_10005D018()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005D0A0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D0E0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005D120()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D158()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D190()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D1D8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_10005D240()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[10];

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t _s7remindd43RDGroceryOperationCategorizeRemindersInListC13ConfigurationVwCP_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t sub_10005D2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10005D3B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10005D484()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D4BC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D4F4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D52C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005D5BC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005D604()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005D65C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005D69C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D800@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + a3 - 8);
  v5 = *a1;
  return sub_1004470B4(a4);
}

uint64_t sub_10005D848@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v6 = *a1;
  result = sub_100446558();
  *a4 = result;
  a4[1] = v8;
  return result;
}

uint64_t sub_10005D890()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005D8E0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005D918()
{
  v1 = *(v0 + 16);

  sub_10000607C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10005D958()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_10005D994@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_10005D9DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

id sub_10005DA34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

id sub_10005DA9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hashtagLabel];
  *a2 = result;
  return result;
}

id sub_10005DAFC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentAccount];
  *a2 = result;
  return result;
}

id sub_10005DBDC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 priorityRawValue];
  *a2 = result;
  return result;
}

uint64_t sub_10005DC80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10005DDD0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

id sub_10005E084@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

id sub_10005E124@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allDay];
  *a2 = result;
  return result;
}

uint64_t sub_10005E1C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005E1FC()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005E23C()
{
  v1 = *(type metadata accessor for RDXPCEventStream.Token(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v4);

  return _swift_deallocObject(v0, v4 + 8, v2 | 7);
}

uint64_t _s7remindd24RDSavedDueDateDeltaAlertVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  return a1;
}

uint64_t sub_10005E35C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E394()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005E3D4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E40C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005E444()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E4AC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E4E4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005E53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_10005E604(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t sub_10005E6CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005E704()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E73C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10005E774()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10005E848()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v8 = *(v0 + v7);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

id sub_10005EA3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 remObjectID];
  *a2 = result;
  return result;
}

id sub_10005EDF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 effectiveMinimumSupportedAppVersion];
  *a2 = result;
  return result;
}

id sub_10005EE78@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minimumSupportedAppVersion];
  *a2 = result;
  return result;
}

id sub_10005EF00@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daAllowsCalendarAddDeleteModify];
  *a2 = result;
  return result;
}

id sub_10005EF88@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daSupportsSharedCalendars];
  *a2 = result;
  return result;
}

id sub_10005EFD0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daWasMigrated];
  *a2 = result;
  return result;
}

id sub_10005F018@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 debugSyncDisabled];
  *a2 = result;
  return result;
}

id sub_10005F060@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 didChooseToMigrate];
  *a2 = result;
  return result;
}

id sub_10005F0A8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 didChooseToMigrateLocally];
  *a2 = result;
  return result;
}

id sub_10005F0F0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 didFinishMigration];
  *a2 = result;
  return result;
}

id sub_10005F178@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 persistenceCloudSchemaVersion];
  *a2 = result;
  return result;
}

id sub_10005F218@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 proximity];
  *a2 = result;
  return result;
}

id sub_10005F268@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

id sub_10005F2C0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 latitude];
  *a2 = v4;
  return result;
}

id sub_10005F308@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 longitude];
  *a2 = v4;
  return result;
}

id sub_10005F350@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 radius];
  *a2 = v4;
  return result;
}

id sub_10005F43C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minimumSupportedAppVersion];
  *a2 = result;
  return result;
}

uint64_t sub_10005F534()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10005F598()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005F5D8@<X0>(_BYTE *a1@<X8>)
{
  result = REMSuggestedAttributesHarvester.Request.enabledOniOS.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005F608@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesHarvester.Request.reminder.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005F634@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesHarvester.Request.languageIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10005F660@<X0>(uint64_t *a1@<X8>)
{
  result = REMSuggestedAttributesHarvester.Request.modelPipelineSwitcher.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10005F6B0@<X0>(uint64_t a1@<X8>)
{
  result = REMSuggestedAttributesHarvester.Request.Embedding.neighborsToConsider.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10005F6E4@<X0>(_BYTE *a1@<X8>)
{
  result = REMSuggestedAttributesHarvester.Request.hasPasteboardURL.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10005F714@<X0>(_BYTE *a1@<X8>)
{
  result = REMSuggestedAttributesHarvester.Request.reminderHasURL.getter();
  *a1 = result & 1;
  return result;
}

id sub_10005F7C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 template];
  *a2 = result;
  return result;
}

id sub_10005F814@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 markedForDeletion];
  *a2 = result;
  return result;
}

id sub_10005F85C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

id sub_10005F908@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 priorityRawValue];
  *a2 = result;
  return result;
}

id sub_10005F99C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isCompleted];
  *a2 = result;
  return result;
}

id sub_10005F9E4@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 operationTypeRawValue];
  *a2 = result;
  return result;
}

uint64_t sub_10005FA78()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v13 = v3 | v8;
  v10 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);
  v11 = *(v0 + v10 + 8);

  return _swift_deallocObject(v0, ((v10 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v13 | 7);
}

uint64_t sub_10005FC08()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v36 = *(v3 + 80);
  v4 = (v36 + 16) & ~v36;
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for RDPublicTemplate();
  v35 = *(*(v6 - 1) + 80);
  v33 = *(*(v6 - 1) + 64);
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 80);
  v32 = *(v8 + 64);
  v10 = *(v3 + 8);
  v10(v1 + v4, v2);
  v11 = *(v1 + v5);
  v12 = (v5 + v35 + 8) & ~v35;

  v34 = v1;
  v13 = v1 + v12;
  v14 = *(v1 + v12 + 8);

  v15 = *(v1 + v12 + 32);

  v16 = *(v1 + v12 + 48);

  v10(v1 + v12 + v6[8], v2);
  v17 = v6[9];
  if (!(*(v8 + 48))(v13 + v17, 1, v7))
  {
    (*(v8 + 8))(v13 + v17, v7);
  }

  v18 = (v33 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + v9 + 8) & ~v9;
  v20 = (v32 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v13 + v6[10]);
  v22 = *v21;

  v23 = v21[1];

  v24 = v21[2];

  v25 = v21[3];

  v26 = v21[4];

  v27 = v21[5];

  v28 = v21[6];

  v29 = v21[7];

  (*(v8 + 8))(v34 + v19, v7);
  v30 = *(v34 + v20 + 8);

  return _swift_deallocObject(v34, ((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v36 | v35 | v9 | 7);
}

void *_s7remindd35RDStoreControllerNotificationCenterC23ChangedAccountFireValueVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[2];
  a1[2] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

void *_s7remindd35RDStoreControllerNotificationCenterC22ChangedEntityFireValueVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  return a1;
}

uint64_t sub_10005FFF4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1000600AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100060118(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_100060188(uint64_t a1)
{
  result = sub_10043FE88();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000601B0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000601E8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060220()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100060270()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000602B0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000602F8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void *_s7remindd35RDStoreControllerNotificationCenterC48CollectAndCoalescedChangedEntitiesWithInputCountVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void *_s7remindd35RDStoreControllerNotificationCenterC18ChangedAccountInfoVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

void *_s7remindd35RDStoreControllerNotificationCenterC18EntityFilterOptionOwCP_0(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_1000603F8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060440()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v3 + v7 + 8) & ~v3;

  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v10 = *(v0 + v6);

  v9(v0 + v8, v1);

  return _swift_deallocObject(v0, v8 + v5, v3 | 7);
}

uint64_t sub_100060558()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060594()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000605CC()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060604()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100060654()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006068C()
{
  v1 = type metadata accessor for Notification();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100060750()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060790()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000607D0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100060808()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100060848()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000608A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8) >> 60;
    v11 = ((4 * v10) & 0xC) == 0;
    v12 = ((4 * v10) & 0xC | (v10 >> 2)) ^ 0xF;
    if (v11)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }
}

uint64_t sub_100060968(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    v11 = (a1 + *(a4 + 20));
    *v11 = 0;
    v11[1] = ((~a2 >> 2) & 3 | (4 * ~a2)) << 60;
  }

  return result;
}

uint64_t _s7remindd17RDSavedAttachmentOwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = v3;
  return a1;
}

id sub_100060B58@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 firstDayOfTheWeek];
  *a2 = result;
  return result;
}

id sub_100060BA0@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 frequency];
  *a2 = result;
  return result;
}

id sub_100060BE8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 interval];
  *a2 = result;
  return result;
}

id sub_100060C70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 occurrenceCount];
  *a2 = result;
  return result;
}

id sub_100060D38@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

uint64_t sub_100060D90()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100060DD0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100060E78()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100060ED8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void *_s19PolymorphicListItemC5ModelOwCP_0(void *a1, void *a2)
{
  v3 = (*a2 & 0x7FFFFFFFFFFFFFFFLL);
  *a1 = *a2;
  v4 = v3;
  return a1;
}

uint64_t sub_100060F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for REMAccountsListDataView.ReminderCounts();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10006103C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v7 + 8, v3 | 7);
}

uint64_t sub_1000611DC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006121C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061254()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006128C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000612CC()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v7);

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000613DC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061414()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v6);

  v10 = *(v0 + v8);

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1000614FC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061978()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000619B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000619E8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061A20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100061A88()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061AC0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061B38()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100061B78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100061D28()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100061D60()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100061DA0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100061DE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_100061E9C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1000F5104(&qword_1009410B8, &qword_1007A0A38);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_100061F4C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100061F88()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100061FE0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062028()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100062078()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000620B0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 81, 7);
}

uint64_t sub_100062110()
{
  v1 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 89, 7);
}

uint64_t sub_100062178()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v3 = *(v0 + 48);
  }

  v4 = *(v0 + 64);

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_1000621EC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100062234()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100062294()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000622DC()
{
  v1 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  v3 = *(v0 + 64);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10006233C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  if (*(v0 + 48))
  {
    v3 = *(v0 + 56);
  }

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_1000623A4()
{
  v1 = *(v0 + 32);

  if (*(v0 + 40))
  {
    v2 = *(v0 + 48);
  }

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000623F4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  if (*(v0 + 48))
  {
    v3 = *(v0 + 56);
  }

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100062470()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000624B8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100062500()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100062540@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

uint64_t sub_1000625A8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000625E0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100062620()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100062680()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000626F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100062730()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for Date();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_100062860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for Date();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_10006295C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

id sub_10006299C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 parentAccount];
  *a2 = result;
  return result;
}

uint64_t sub_100062A7C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100062AC4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100062AFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100062B44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id sub_100062BEC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hasLocationTriggersOrVehicleEventTriggers];
  *a2 = result;
  return result;
}

id sub_100062C34@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hasHashtags];
  *a2 = result;
  return result;
}

uint64_t sub_100062CE0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100062D20()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100062D60()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100062D98()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100062DE0()
{
  _Block_release(*(v0 + 32));

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100062E20()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100062E78()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100062ED0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  return _swift_deallocObject(v0, 97, 7);
}

uint64_t sub_100062F38()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return _swift_deallocObject(v0, 64, 7);
}

id sub_100063010@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 ckCloudState];
  *a2 = result;
  return result;
}

uint64_t sub_100063060()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006309C()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000630E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006314C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100063194()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000631CC()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 64);

  v6 = *(v0 + 72);

  v7 = *(v0 + 80);

  v8 = *(v0 + 88);

  v9 = *(v0 + 96);

  v10 = *(v0 + 104);

  v11 = *(v0 + 120);

  v12 = *(v0 + 144);

  return _swift_deallocObject(v0, 152, 7);
}

uint64_t sub_100063264()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063370()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000633A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = REMObjectID.codable.getter();
  *a2 = result;
  return result;
}

void *_s5CacheVwCP_0(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  v4 = v3;
  return a1;
}

uint64_t sub_100063430()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063468()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000634A0()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = (v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v5 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = *(v0 + v6);

  return _swift_deallocObject(v0, v8 + 8, v3 | 7);
}

uint64_t sub_100063598()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000635D0()
{
  v1 = *(v0 + 16);

  sub_10000607C((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100063610()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000636E8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063720()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063760()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063798()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000637D0()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063820()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v6);

  v10 = *(v0 + v7 + 8);

  v11 = *(v0 + v8);

  return _swift_deallocObject(v0, ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_100063910()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7);

  return _swift_deallocObject(v0, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

id sub_100063A34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 list];
  *a2 = result;
  return result;
}

id sub_100063A8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

uint64_t sub_100063B8C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063BC4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100063C0C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063C44()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_100063C8C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063CC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063D10()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063D48()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 104);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_100063D9C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100063DE4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100063E1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100063E5C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100063EE0()
{
  v1 = type metadata accessor for RDPublicTemplate();
  v46 = *(*(v1 - 1) + 80);
  v2 = (v46 + 24) & ~v46;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v6 + v2 + 1) & ~v6;
  v8 = *(v5 + 64) + 7;
  v43 = v7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v42 = v9;
  v45 = *(v11 + 80);
  v34 = (*(v11 + 64) + v6 + ((v9 + v45 + 8) & ~v45)) & ~v6;
  v35 = (v9 + v45 + 8) & ~v45;
  v37 = (v8 + v34) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8);
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = *(v12 + 80);
  v41 = *(v12 + 64);

  v13 = v0 + v2;
  v14 = *(v0 + v2 + 8);

  v15 = *(v0 + v2 + 32);

  v16 = *(v0 + v2 + 48);

  v17 = *(v11 + 8);
  v17(v0 + v2 + v1[8], v10);
  v18 = v1[9];
  v33 = *(v5 + 48);
  if (!v33(v13 + v18, 1, v4))
  {
    (*(v5 + 8))(v13 + v18, v4);
  }

  v19 = (v13 + v1[10]);
  v20 = *v19;

  v21 = v19[1];

  v22 = v19[2];

  v23 = v19[3];

  v24 = v19[4];

  v25 = v19[5];

  v26 = v19[6];

  v27 = v19[7];

  v28 = *(v5 + 8);
  v28(v0 + v43, v4);

  v17(v0 + v35, v10);
  v28(v0 + v34, v4);

  v29 = *(v0 + v38);

  v30 = *(v0 + v39);

  v31 = *(v0 + v40 + 8);

  v36 = (v44 + v40 + 16) & ~v44;
  if (!v33(v0 + v36, 1, v4))
  {
    v28(v0 + v36, v4);
  }

  return _swift_deallocObject(v0, ((v36 + v41) & 0xFFFFFFFFFFFFFFF8) + 16, v46 | v6 | v45 | v44 | 7);
}

uint64_t sub_1000642EC()
{
  v1 = type metadata accessor for RDPublicTemplate();
  v46 = *(*(v1 - 1) + 80);
  v2 = (v46 + 40) & ~v46;
  v3 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v6 + v2 + 1) & ~v6;
  v8 = *(v5 + 64) + 7;
  v43 = v7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v42 = v9;
  v45 = *(v11 + 80);
  v34 = (*(v11 + 64) + v6 + ((v9 + v45 + 8) & ~v45)) & ~v6;
  v35 = (v9 + v45 + 8) & ~v45;
  v37 = (v8 + v34) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_1000F5104(&unk_100938850, qword_100795AE0) - 8);
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = *(v12 + 80);
  v41 = *(v12 + 64);
  sub_100138D4C(*(v0 + 16), *(v0 + 24));

  v13 = v0 + v2;
  v14 = *(v0 + v2 + 8);

  v15 = *(v0 + v2 + 32);

  v16 = *(v0 + v2 + 48);

  v17 = *(v11 + 8);
  v17(v0 + v2 + v1[8], v10);
  v18 = v1[9];
  v33 = *(v5 + 48);
  if (!v33(v13 + v18, 1, v4))
  {
    (*(v5 + 8))(v13 + v18, v4);
  }

  v19 = (v13 + v1[10]);
  v20 = *v19;

  v21 = v19[1];

  v22 = v19[2];

  v23 = v19[3];

  v24 = v19[4];

  v25 = v19[5];

  v26 = v19[6];

  v27 = v19[7];

  v28 = *(v5 + 8);
  v28(v0 + v43, v4);

  v17(v0 + v35, v10);
  v28(v0 + v34, v4);

  v29 = *(v0 + v38);

  v30 = *(v0 + v39);

  v31 = *(v0 + v40 + 8);

  v36 = (v44 + v40 + 16) & ~v44;
  if (!v33(v0 + v36, 1, v4))
  {
    v28(v0 + v36, v4);
  }

  return _swift_deallocObject(v0, ((v41 + v36 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v46 | v6 | v45 | v44 | 7);
}

uint64_t sub_100064730()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064798()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000647D0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064808()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064848()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064880()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000648C4()
{

  return _swift_deallocObject(v0, 40, 7);
}

id sub_10006491C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 displayDateUpdatedForSecondsFromGMT];
  *a2 = result;
  return result;
}

uint64_t sub_100064964()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006499C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000649D4()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 64, 7);
}

id sub_100064A84@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

id sub_100064ADC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reminder];
  *a2 = result;
  return result;
}

id sub_100064B2C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 template];
  *a2 = result;
  return result;
}

uint64_t sub_100064BF4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064C34()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 82, 7);
}

uint64_t sub_100064C8C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 56);

  v5 = *(v0 + 88);

  v6 = *(v0 + 112);

  return _swift_deallocObject(v0, 121, 7);
}

uint64_t sub_100064D18()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064D78()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064DB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

id sub_100064E2C()
{
  v1 = [v0 account];

  return v1;
}

id sub_100064E64()
{
  v1 = [v0 objectID];

  return v1;
}

id sub_1000652AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v5 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v5;
  v3 = v2;

  return v5;
}

uint64_t sub_100065504(uint64_t a1, void *a2)
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
  sub_1000F5104(&qword_10094F3F0, &unk_1007B4F80);
  sub_10000CB48(&qword_10094F3F8, &qword_10094F400, &qword_1007A77C0);
  Dictionary<>.append(_:toCollectionUnderKey:)();
}

id sub_1000656BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 icsDisplayOrder];
  *a2 = result;
  return result;
}

uint64_t sub_100065704()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000658D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006590C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100065944()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000659E4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065A1C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100065A6C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100065AA4()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100065AFC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100065BB0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 34, 7);
}

uint64_t sub_100065BF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 72);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100065C50()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065C94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);

  v4 = *(v0 + 40);

  v5 = *(v0 + 80);

  return _swift_deallocObject(v0, 88, 7);
}

uint64_t sub_100065CF8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100065E2C@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 status];
  *a2 = result;
  return result;
}

id sub_100065E74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

uint64_t sub_100065EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100065F64(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1000F5104(&qword_10094FE68, &qword_1007B5CC0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_100066028()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000660B4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 112, 7);
}

uint64_t sub_1000660EC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066124()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100066164()
{
  v1 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000661C4()
{
  v1 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);
  v13 = *(v0 + v11 + 8);

  return _swift_deallocObject(v0, v11 + 16, v10 | 7);
}

uint64_t sub_100066344()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066384()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000663C4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000663FC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006643C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006647C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000664C4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006650C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100066554()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000665C0()
{
  v1 = type metadata accessor for RDUserNotificationCategory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 16) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5 + 8);

  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v9 + v10, v11 | 7);
}

uint64_t sub_100066720()
{
  v1 = type metadata accessor for RDUserNotificationCategory();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  v8 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v8 + 8);

  return _swift_deallocObject(v0, v8 + 16, v3 | 7);
}

uint64_t sub_100066818()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066850()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100066914()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066954()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1000669E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 account];
  *a2 = result;
  return result;
}

uint64_t sub_100066A38()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066A70()
{
  if (*(v0 + 48))
  {
    sub_10000607C((v0 + 24));
  }

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100066AC0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066B40()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100066B80()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066BFC()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066C34()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066C6C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100066CBC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

id sub_100066D94@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 dueDateDeltaUnit];
  *a2 = result;
  return result;
}

id sub_100066DDC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 dueDateDeltaCount];
  *a2 = result;
  return result;
}

id sub_100066F20(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_100066F2C()
{
  *v0;
  String.hash(into:)();
}

void sub_100066FA4(uint64_t *a1@<X8>)
{
  v2 = 0x49746E756F636361;
  if (*v1)
  {
    v2 = 0x7265646E696D6572;
  }

  v3 = 0xE900000000000044;
  if (*v1)
  {
    v3 = 0xEA00000000004449;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100066FEC()
{
  if (*v0)
  {
    result = 0x7265646E696D6572;
  }

  else
  {
    result = 0x49746E756F636361;
  }

  *v0;
  return result;
}

void sub_100067078(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

char *sub_100067084@<X0>(void **a1@<X0>, char **a2@<X8>)
{
  result = sub_1002B3180(*a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1000670BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 markedForDeletion];
  *a2 = result;
  return result;
}

void sub_10006750C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100067534(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006754C(void *a1)
{
  v2 = +[REMCDList fetchRequest];
  [v2 setPropertiesToFetch:&off_100905530];
  v18 = a1[4];
  v3 = [NSArray arrayWithObjects:&v18 count:1];
  [v2 setAffectedStores:v3];

  [v2 setFetchBatchSize:50];
  v4 = [NSPredicate predicateWithFormat:@"account == NULL"];
  [v2 setPredicate:v4];

  v5 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  v17 = a1[4];
  v6 = [NSArray arrayWithObjects:&v17 count:1];
  [v5 setAffectedStores:v6];

  [v5 setResultType:2];
  v7 = a1[5];
  v16 = 0;
  v8 = [v7 executeRequest:v5 error:&v16];
  v9 = v16;
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v8;

  v12 = a1[5];
  v15 = v9;
  LOBYTE(v8) = [v12 save:&v15];
  v13 = v15;

  if ((v8 & 1) == 0)
  {
    v14 = +[REMLogStore container];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      sub_10075FBBC(v13, v14);
    }
  }
}

void sub_100067898(void *a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  objc_opt_class();
  v6 = REMDynamicCast();
  v7 = v6;
  v8 = a1[4];
  v9 = a1[5];
  if (v6)
  {
    v10 = [v6 ic_prettyDescriptionWithTabLevel:a1[6] + 1];
    [v8 appendFormat:@"%@%@ = %@\n", v9, v11, v10];
  }

  else
  {
    [v8 appendFormat:@"%@%@ = %@\n", v9, v11, v5];
  }
}

void sub_1000679DC(id a1)
{
  v1 = +[NSFileManager defaultManager];
  v2 = [v1 URLsForDirectory:5 inDomains:8];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) URLByAppendingPathComponent:{@"LocationBundles", v11}];
        v9 = [v8 URLByAppendingPathComponent:@"RemindersAlerts.bundle"];

        if ([v9 checkResourceIsReachableAndReturnError:0])
        {
          v10 = qword_1009528C8;
          qword_1009528C8 = v9;

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_100067BE4(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("RDPathsCreateApplicationDocumentsURL", v3);
  v2 = qword_1009528C0;
  qword_1009528C0 = v1;
}

void sub_100067C48(id a1)
{
  if (!qword_1009528E0)
  {
    v1 = [REMPaths URLForGroupContainerWithIdentifier:REMAppGroupBundleIdentifier];
    v2 = qword_1009528E0;
    qword_1009528E0 = v1;

    if (!qword_1009528E0)
    {
      qword_1009528E0 = +[REMPaths legacy_applicationDocumentsURL];

      _objc_release_x1();
    }
  }
}

void sub_100067EE4(id a1)
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("RDPathsCreateApplicationDocumentsURL", v3);
  v2 = qword_1009528C0;
  qword_1009528C0 = v1;
}

void sub_1000681EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  objc_sync_exit(v17);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100068218(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100068230(id a1)
{
  qword_1009528E8 = objc_alloc_init(NSMutableDictionary);

  _objc_release_x1();
}

void sub_10006826C(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _applicationDocumentsURLForPersonaIdentifier:a2 accountIdentifier:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(a1 + 48))
  {
    v6 = *(*(*(a1 + 56) + 8) + 40);
    v7 = qword_1009528E8;

    [v7 setObject:v6 forKeyedSubscript:?];
  }
}

void sub_100068704(uint64_t a1)
{
  v2 = [*(a1 + 32) waitToFireUntilRequestsStop];
  v3 = [*(a1 + 32) fireBlock];
  v4 = v3;
  if (v2)
  {

    if (v4)
    {
      [*(a1 + 32) _cancelFireRequests];
    }
  }

  else
  {

    if (v4)
    {
      return;
    }
  }

  objc_initWeak(&location, *(a1 + 32));
  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100068898;
  v14 = &unk_1008D9A00;
  objc_copyWeak(&v15, &location);
  v5 = dispatch_block_create(0, &v11);
  [*(a1 + 32) setFireBlock:{v5, v11, v12, v13, v14}];

  if ([*(a1 + 32) callOnMainThread])
  {
    v6 = &_dispatch_main_q;
    v7 = &_dispatch_main_q;
  }

  else
  {
    v6 = dispatch_get_global_queue(0, 0);
  }

  [*(a1 + 32) delay];
  v9 = dispatch_time(0, (v8 * 1000000000.0));
  v10 = [*(a1 + 32) fireBlock];
  dispatch_after(v9, v6, v10);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void sub_100068878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100068898(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained requestQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100068958;
    block[3] = &unk_1008D9990;
    v4 = v2;
    v6 = v4;
    dispatch_sync(v3, block);

    [v4 callTargetSelector];
  }
}

void sub_100068C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100068C30(uint64_t a1)
{
  v2 = [*(a1 + 32) fireBlock];
  *(*(*(a1 + 40) + 8) + 24) = v2 != 0;
}

void sub_100069838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100069860(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100069878(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v29 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v29];
  v5 = v29;
  if (v4)
  {
    if ([v4 count] == 1)
    {
      v6 = [v4 firstObject];
      v7 = [v6 identifier];
      v8 = *(a1[7] + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      if (!*(*(a1[7] + 8) + 40))
      {
        v10 = +[REMLogStore container];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          sub_10075FF88(v6, v10, v11, v12, v13, v14, v15, v16);
        }
      }
    }

    else
    {
      v6 = +[REMLogStore container];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        sub_10075FF18(a1, v6, v23, v24, v25, v26, v27, v28);
      }
    }
  }

  else
  {
    v6 = +[REMLogStore container];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      sub_10075FFF4(v5, v6, v17, v18, v19, v20, v21, v22);
    }
  }
}

void sub_1000699C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 0xCu);
}

id sub_100069BE8(uint64_t a1)
{
  v2 = [*(a1 + 32) policyResetTimer];
  [v2 invalidate];

  v3 = *(a1 + 32);

  return [v3 setPolicyResetTimer:0];
}

void sub_10006A390(uint64_t a1)
{
  v2 = [*(a1 + 32) policyResetTimer];
  v3 = [v2 isValid];

  if (v3)
  {
    v4 = [*(a1 + 32) policyResetTimer];
    [v4 invalidate];

    [*(a1 + 32) setPolicyResetTimer:0];
  }

  v5 = [*(a1 + 32) policyStartDate];
  [*(a1 + 32) resetInterval];
  v7 = [v5 dateByAddingTimeInterval:?];

  [v7 timeIntervalSinceNow];
  v6 = [NSTimer scheduledTimerWithTimeInterval:*(a1 + 32) target:"resetPolicy" selector:0 userInfo:0 repeats:?];
  [*(a1 + 32) setPolicyResetTimer:v6];
}

void sub_10006B440(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 160));
  _Unwind_Resume(a1);
}

void sub_10006B4B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[REMLog cloudkit];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ICCC: Done waiting DADSystemAvailabilityChecker upon daemon launch and now try to bootstrapSyncingOnLaunchIfSystemReady.", buf, 2u);
    }

    [WeakRetained setIsSystemAvailableForSyncing:1];
    [WeakRetained bootstrapSyncingOnLaunchIfSystemReady];
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.launch.pending.DADSystemAvailabilityChecker}", v7, 2u);
    }

    v5 = *(a1 + 32);
    v6 = objc_opt_self();
  }
}

void sub_10006B5B4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = +[REMLog cloudkit];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ICCC: Received RDAccountInitializer.DidCompleteInitializeAllAccountsNotification upon daemon launch and now try to bootstrapSyncingOnLaunchIfSystemReady.", buf, 2u);
    }

    [WeakRetained setPendingAccountInitializerCompleteOnLaunch:0];
    [WeakRetained bootstrapSyncingOnLaunchIfSystemReady];
    v4 = [WeakRetained accountInitializerDidCompleteOnLaunchObserver];
    [v4 unobserve];

    [WeakRetained setAccountInitializerDidCompleteOnLaunchObserver:0];
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.launch.pending.RDAccountInitializerDidCompleteInitializeAllAccountsObserver}", v8, 2u);
    }

    v6 = *(a1 + 32);
    v7 = objc_opt_self();
  }
}

void sub_10006B888(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ICCC: Actually running bootstrapSyncingOnLaunchIfSystemReady to bootstrap CloudKit syncing.", v3, 2u);
  }

  [WeakRetained loadSubscribedSubscriptionIDs];
  [WeakRetained setupAPSConnection];
  [WeakRetained adjustAPSNotificationDebouncerInterval];
  [WeakRetained observePrimaryCloudKitAccountPersonIDSaltChanges];
  [WeakRetained retryProcessingCloudObjects];
  [WeakRetained updateCloudContextStateWithReason:@"InitWithStoreController"];
}

void sub_10006BAF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 64));
  _Unwind_Resume(a1);
}

void sub_10006BB10(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ICCC received buddy finished notification.", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setHasPassedBuddy:1];
  [WeakRetained pq_unregisterForBuddy];
}

void sub_10006BBA4(uint64_t a1)
{
  v1 = [*(a1 + 32) buddyStateObserver];
  [v1 start];
}

void sub_10006C0E0(uint64_t a1)
{
  [REMCDAccount allCloudKitAccountsInContext:*(a1 + 32)];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v24 = 0u;
  v2 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = [v6 personID];
        v8 = [v6 personID];
        v9 = [v6 accountTypeHost];
        v10 = [v9 isPrimaryCloudKit];

        v11 = @"PRIMARY-CLOUDKIT";
        if ((v10 & 1) == 0)
        {
          v12 = [v6 accountTypeHost];
          v13 = [v12 isNonPrimaryCloudKit];

          if (!v13)
          {
            goto LABEL_10;
          }

          v11 = [*(a1 + 40) unsafeUntilSystemReady_hashedAccountPersonIDForAccount:v6 usingSalt:*(a1 + 48)];
        }

        v8 = v11;
LABEL_10:
        if (([v7 isEqual:v8] & 1) == 0)
        {
          [v6 setPersonID:v8];
          v14 = +[REMLog cloudkit];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v6 identifier];
            v16 = [v15 UUIDString];
            *buf = 138543874;
            v26 = v16;
            v27 = 2114;
            v28 = v7;
            v29 = 2114;
            v30 = v8;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Updating CK account personID due to primary CK account salt set {account.identifier: %{public}@, oldPersonID: %{public}@, newPersonID: %{public}@}", buf, 0x20u);
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v3);
  }

  if ([*(a1 + 32) hasChanges])
  {
    [*(a1 + 32) ic_saveWithLogDescription:{@"Saved personID changes on CK accounts upon primary CK account salt set (salt: %@)", *(a1 + 56)}];
  }

  else
  {
    v17 = +[REMLog cloudkit];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [obj count];
      v19 = *(a1 + 56);
      *buf = 134218242;
      v26 = v18;
      v27 = 2112;
      v28 = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "No personID update made upon primary CK account salt set {ckAccounts.count: %ld, salt: %@}", buf, 0x16u);
    }
  }
}

void sub_10006C49C(uint64_t a1)
{
  v1 = [REMCDAccount allCloudKitAccountsInContext:*(a1 + 32)];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v17 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v18;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        v7 = [v6 personID];
        v8 = [v6 personIDSalt];
        v9 = [v8 base64EncodedStringWithOptions:0];

        if (v7)
        {
          [v6 setPersonID:0];
          v10 = +[REMLog cloudkit];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v6 identifier];
            v12 = [v11 UUIDString];
            *buf = 138543874;
            v22 = v12;
            v23 = 2114;
            v24 = v7;
            v25 = 2112;
            v26 = v9;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Unsetting CK account personID due to primary CK account salt error {account.identifier: %{public}@, origPersonID: %{public}@, origPersonIDSalt: %@}", buf, 0x20u);
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v17 objects:v27 count:16];
    }

    while (v3);
  }

  if ([*(a1 + 32) hasChanges])
  {
    [*(a1 + 32) ic_saveWithLogDescription:{@"Saved personID changes on CK accounts upon salt update error (error: %@)", *(a1 + 40)}];
  }

  else
  {
    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v1 count];
      v15 = *(a1 + 40);
      *buf = 134218242;
      v22 = v14;
      v23 = 2114;
      v24 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No personID update made upon primary CK account salt update error {ckAccounts.count: %ld, error: %{public}@}", buf, 0x16u);
    }
  }
}

void sub_10006C964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10006C990(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[REMLog cloudkit];
  v6 = v5;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = [WeakRetained accountPersonIDSaltObserver];
      v8 = [v7 uuid];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "ICCC received a primary CK account personIDSalt change or initial value {observer: %{public}@}", &v9, 0xCu);
    }

    [WeakRetained primaryCloudKitAccountPersonIDSaltDidSetWithSalt:v3];
    v6 = [*(a1 + 32) unitTest_notificationCenter];
    [v6 postNotificationName:@"unitTest_ICCloudContextPrimaryCloudKitAccountPersonIDSaltDidSetNotification" object:WeakRetained];
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1007603A8();
  }
}

void sub_10006CADC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1007603E4();
    }

    goto LABEL_8;
  }

  v5 = +[RDAccountPersonIDSaltObserver InitiallyNilError];
  v6 = [v3 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [WeakRetained accountPersonIDSaltObserver];
      v9 = [v8 uuid];
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "ICCC received a primary CK account personIDSalt error {observer: %{public}@, saltError: %{public}@}", &v11, 0x16u);
    }

    [WeakRetained primaryCloudKitAccountPersonIDSaltDidFailToSetWithError:v3];
    v10 = [*(a1 + 32) unitTest_notificationCenter];
    [v10 postNotificationName:@"unitTest_ICCloudContextPrimaryCloudKitAccountPersonIDSaltDidFailToSetNotification" object:WeakRetained];
LABEL_8:
  }
}

void sub_10006CD0C(uint64_t a1)
{
  if (!*(*(a1 + 32) + 160))
  {
    v14 = v1;
    v15 = v2;
    v4 = objc_opt_new();
    v5 = [*(a1 + 32) context];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10006CE08;
    v11[3] = &unk_1008D9C10;
    v11[4] = *(a1 + 32);
    v12 = v5;
    v13 = v4;
    v6 = v4;
    v7 = v5;
    [v7 performBlockAndWait:v11];
    v8 = [v6 copy];
    v9 = *(a1 + 32);
    v10 = *(v9 + 160);
    *(v9 + 160) = v8;
  }
}

void sub_10006CE08(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) cloudKitAccountsInContext:{*(a1 + 40), 0}];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [*(*(&v10 + 1) + 8 * v6) identifier];
        v8 = [v7 UUIDString];

        if ([v8 length])
        {
          v9 = [REMCloudContainer newCloudContainerForAccountID:v8];
          [*(a1 + 48) setObject:v9 forKeyedSubscript:v8];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_10006D038(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 160);
  *(v1 + 160) = 0;
}

void sub_10006D318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006D330(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006D348(void *a1)
{
  if (!*(*(a1[6] + 8) + 40))
  {
    v3 = [REMCloudContainer newCloudContainerForAccountID:a1[4]];
    v4 = *(a1[6] + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = [*(a1[5] + 160) mutableCopy];
    [v6 setObject:*(*(a1[6] + 8) + 40) forKeyedSubscript:a1[4]];
    v7 = a1[5];
    v8 = *(v7 + 160);
    *(v7 + 160) = v6;
  }
}

void sub_10006DF74(id a1)
{
  v13 = +[REMCDAccountListData cdEntityName];
  v1 = +[REMCDAuxiliaryReminderChangeDeleteInfo cdEntityName];
  v2 = +[REMCDAuxiliaryReminderChangeMoveInfo cdEntityName];
  v3 = +[REMCDCalDAVNotification cdEntityName];
  v4 = +[REMCDHashtagLabel cdEntityName];
  v5 = +[REMCDChangeTrackingState cdEntityName];
  v6 = +[REMCDReplicaManager cdEntityName];
  v7 = +[REMCKServerChangeToken cdEntityName];
  v8 = +[REMCKSharedEntitySyncActivity cdEntityName];
  v9 = +[REMCKSharedObjectOwnerName cdEntityName];
  v10 = +[REMCDDueDateDeltaAlert cdEntityName];
  v11 = [NSSet setWithObjects:v13, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, 0];
  v12 = qword_1009528F8;
  qword_1009528F8 = v11;
}

void sub_10006E1E0(id a1)
{
  qword_100952908 = [NSSet setWithObjects:RDStoreControllerICCloudContextServerChangeTokenAuthor, @"com.apple.remindd.ICCloudContext.setPersonID", RDHashtagLabelUpdaterAuthor, RDStalePinnedListsEventHandlerAuthor, RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandlerAuthor, RDSyncActivityNotificationEngineAuthor, REMNSPersistentHistoryTrackingAuthor, RDStagedLightweightMigrationAuthor, RDStoreControllerIsPinnedByCurrentUserMigrationAuthor, RDStoreControllerMostRecentTargetTemplateIdentifierByCurrentUserMigrationAuthor, RDStoreControllerDeduplicationActivityAuthor, RDStoreControllerSuggestConversionToGroceryListActivityAuthor, RDStoreControllerBatchDeleteExpiredRemindersActivityAuthor, 0];

  _objc_release_x1();
}

void sub_10006E3AC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 debugSyncDisabled] & 1) == 0)
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_10006E800(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006E81C(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 intValue];
  if (result <= 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_10006E948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10006E960(uint64_t a1)
{
  result = [*(a1 + 32) _isCloudKitAccountAvailableWithManagedObjectContext:*(a1 + 40) requireActive:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10006EF38(id a1)
{
  qword_100952920 = +[REMSystemUtilities systemBuildVersion];

  _objc_release_x1();
}

void sub_10006EFBC(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_100952930;
  qword_100952930 = v1;

  v24[0] = objc_opt_class();
  v24[1] = objc_opt_class();
  v24[2] = objc_opt_class();
  v24[3] = objc_opt_class();
  v24[4] = objc_opt_class();
  v24[5] = objc_opt_class();
  v24[6] = objc_opt_class();
  v24[7] = objc_opt_class();
  v24[8] = objc_opt_class();
  v24[9] = objc_opt_class();
  v24[10] = objc_opt_class();
  v24[11] = objc_opt_class();
  v24[12] = objc_opt_class();
  v24[13] = objc_opt_class();
  v24[14] = objc_opt_class();
  v24[15] = objc_opt_class();
  v24[16] = objc_opt_class();
  [NSArray arrayWithObjects:v24 count:17];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v21 = 0u;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = [v7 performSelector:"recordTypes"];
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v15;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v15 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [qword_100952930 setObject:v7 forKeyedSubscript:*(*(&v14 + 1) + 8 * j)];
            }

            v10 = [v8 countByEnumeratingWithState:&v14 objects:v22 count:16];
          }

          while (v10);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v4);
  }
}

void sub_10006F310(id a1)
{
  v1 = +[NSMutableArray array];
  v2 = qword_100952940;
  qword_100952940 = v1;

  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v14[2] = objc_opt_class();
  [NSArray arrayWithObjects:v14 count:3];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * i) performSelector:{"recordTypes", v9}];
        [qword_100952940 addObjectsFromArray:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

void sub_10006F4DC(id a1)
{
  qword_100952948 = [[CKRecordZoneID alloc] initWithZoneName:@"Reminders" ownerName:CKCurrentUserDefaultName databaseScope:2];

  _objc_release_x1();
}

void sub_10006F578(id a1)
{
  qword_100952958 = [[CKRecordZoneID alloc] initWithZoneName:@"RemindersMigration" ownerName:CKCurrentUserDefaultName databaseScope:2];

  _objc_release_x1();
}

void sub_10006F614(id a1)
{
  qword_100952968 = [[CKRecordZoneID alloc] initWithZoneName:@"Metadata" ownerName:CKCurrentUserDefaultName databaseScope:2];

  _objc_release_x1();
}

void sub_10006F89C(id a1, BOOL a2, NSError *a3)
{
  v3 = a3;
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Reachability sync finished {error: %{public}@}", &v5, 0xCu);
  }
}

void sub_10006F9D8(uint64_t a1)
{
  v2 = [*(a1 + 32) accountChangedNotificationHandlingDebouncer];
  v3 = [NSSet setWithObject:&off_100904E30];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006FA98;
  v4[3] = &unk_1008D9E68;
  v4[4] = *(a1 + 32);
  [v2 fire:v3 completion:v4];
}

void sub_10006FA98(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = +[REMLog cloudkit];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "CloudKit account status may have changed", buf, 2u);
    }

    v4 = [*(a1 + 32) accountStatusNumberByAccountID];
    v5 = [v4 copy];

    v6 = *(a1 + 32);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10006FBA4;
    v8[3] = &unk_1008D9E40;
    v9 = v5;
    v10 = v6;
    v7 = v5;
    [v6 updateAccountStatusWithCompletionHandler:v8];
  }
}

uint64_t sub_10006FBA4(uint64_t a1, id a2)
{
  v7 = [*(a1 + 32) objectForKeyedSubscript:?];
  if (!v7 || (v4 = [*(a1 + 40) accountStatusFromAccountStatusNumber:v7], v5 = v7, v4 != a2))
  {
    v4 = [*(a1 + 40) updateCloudContextStateWithReason:@"CloudKitAccountChanged"];
    v5 = v7;
  }

  return _objc_release_x1(v4, v5);
}

_DWORD *sub_10006FF88(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 3)
  {
    return 0;
  }

  v3 = +[REMLog cloudkit];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 136446210;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Processing os_state handler: %{public}s", buf, 0xCu);
  }

  v5 = (*(*(a1 + 32) + 16))();
  v14 = 0;
  v6 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:&v14];
  v7 = v14;
  if (v7)
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      sub_100760910(a1);
    }
  }

  if ([v6 length] >> 32)
  {
    v12 = +[REMLog cloudkit];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_100760988(a1);
    }

    v10 = 0;
  }

  else
  {
    v9 = [v6 length];
    v10 = malloc_type_calloc(1uLL, v9 + 200, 0x1000040BEF03554uLL);
    *v10 = 1;
    v10[1] = v9;
    v11 = *(a1 + 40);
    __strlcpy_chk();
    memcpy(v10 + 50, [v6 bytes], v9);
  }

  return v10;
}

void sub_10007024C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_100070268(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = +[NSMutableDictionary dictionary];
  v2 = +[NSMutableDictionary dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [WeakRetained operationQueue];
  v4 = [v3 operations];

  obj = v4;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = objc_opt_class();
        v11 = NSStringFromClass(v10);
        v12 = [v9 ic_loggingIdentifier];
        v13 = [NSString stringWithFormat:@"%@ %@", v11, v12];

        v14 = [v9 ic_loggingValues];
        [v2 setObject:v14 forKeyedSubscript:v13];
      }

      v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  [v16 setObject:v2 forKeyedSubscript:@"operations"];

  return v16;
}

void sub_100071478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100071498(uint64_t a1)
{
  v2 = [*(a1 + 32) primaryCloudKitAccountInContext:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    *(*(*(a1 + 48) + 8) + 24) = [v2 generateAndSavePersonIDSaltIfNeededWithContext:*(a1 + 40)];
  }

  else
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100760B40();
    }
  }
}

void sub_100071984(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[6];
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = a1[4];
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: %{public}@}", &v9, 0xCu);
  }

  v7 = a1[5];
  v8 = objc_opt_self();
}

void sub_100071A70(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = [[ICCloudContextSyncMetrics alloc] initWithSyncReason:*(a1 + 40)];
  [*(a1 + 32) setLastSyncMetrics:v3];

  v4 = [*(a1 + 32) _existingCloudDirtyToken];
  v5 = [*(a1 + 32) isFetchingEnabled];
  v6 = v5;
  if (*(a1 + 80) == 1)
  {
    if (v4)
    {
      v7 = v5;
    }

    else
    {
      v7 = 0;
    }

    if ((v7 & 1) == 0)
    {
LABEL_6:
      v8 = +[REMLog cloudkit];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 80);
        *buf = 67109634;
        *v44 = v6;
        *&v44[4] = 1024;
        *&v44[6] = v9;
        *v45 = 2114;
        *&v45[2] = v4;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SYNC[FULL] CONTINUE - Trying to sync with fetching disabled, so only pushing. {isFetchingEnabled: %d, discretionary: %d, cloudDirtyToken: %{public}@}", buf, 0x18u);
      }

      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_100071ED4;
      v36[3] = &unk_1008D9F58;
      v36[4] = v10;
      v37 = *(a1 + 48);
      v12 = *(a1 + 56);
      v14 = *(a1 + 64);
      v13 = *(a1 + 72);
      v38 = v12;
      v40 = v13;
      v39 = v14;
      [v10 processAllDirtyCloudObjectsWithSyncReason:v11 completionHandler:v36];

      goto LABEL_18;
    }
  }

  else if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v15 = +[REMLog cloudkit];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = *(a1 + 40);
    v17 = *(a1 + 80);
    *buf = 138543874;
    *v44 = v16;
    *&v44[8] = 1024;
    *v45 = v17;
    *&v45[4] = 2114;
    *&v45[6] = v4;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "SYNC[FULL] CONTINUE - Performing full sync {syncReason: %{public}@, discretionary: %d, cloudDirtyToken: %{public}@}", buf, 0x1Cu);
  }

  v18 = +[DABabysitter sharedBabysitter];
  v19 = [v18 tokenByRegisteringAccount:*(a1 + 32) forOperationWithName:@"SYNC[FULL]"];

  if (v19)
  {
LABEL_17:
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100072148;
    v29[3] = &unk_1008D9F80;
    v29[4] = v21;
    v29[5] = v22;
    v30 = *(a1 + 48);
    v31 = v4;
    v23 = *(a1 + 56);
    v24 = *(a1 + 64);
    v35 = *(a1 + 72);
    v32 = v23;
    v33 = v19;
    v34 = v24;
    v25 = v19;
    [v21 _syncWithReason:v22 completionHandler:v29];

    goto LABEL_18;
  }

  if (isCloudContextSyncReasonUserInitiated(*v2))
  {
    v20 = +[REMLog cloudkit];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100760D50((a1 + 40), a1 + 32);
    }

    goto LABEL_17;
  }

  v26 = [REMError babySatErrorWithOperationName:@"SYNC[FULL]"];
  v41 = @"identifier";
  v42 = @"SYNC[FULL]";
  v27 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
  [_TtC19ReminderKitInternal9Analytics postEventWithName:@"com.apple.remindd.cloudkit.sync.crashDetected" payload:v27 error:v26 performAutoBugCaptureOnError:1];

  v28 = +[REMLog cloudkit];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    sub_100760CBC((a1 + 40), a1 + 32);
  }

  (*(*(a1 + 64) + 16))();
LABEL_18:
}

void sub_100071ED4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [objc_opt_class() errorFromErrors:v4];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100071FD8;
  block[3] = &unk_1008D9F30;
  v11 = v5;
  v12 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = *(a1 + 64);
  v13 = v6;
  v15 = v7;
  v14 = v8;
  v9 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_100071FD8(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = *(a1 + 32);
  v4 = +[REMLog cloudkit];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100760DE4(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = +[NSDate date];
    [v6 timeIntervalSinceDate:*(a1 + 40)];
    v13 = 134217984;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SYNC[FULL] {duration: %.4f}", &v13, 0xCu);
  }

  v8 = *(a1 + 48);
  v9 = v8;
  v10 = *(a1 + 64);
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, OS_SIGNPOST_INTERVAL_END, v10, "cloudkit.full", "", &v13, 2u);
  }

  v11 = *(a1 + 32);
  return (*(*(a1 + 56) + 16))();
}

void sub_100072148(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) lastSyncMetrics];
  v5 = v4;
  if (v3)
  {
    [v4 finishWithSuccess:0];

    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_100760E54(v3, a1);
    }
  }

  else
  {
    [v4 finishWithSuccess:1];

    v6 = +[REMLog cloudkit];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = +[NSDate date];
      [v7 timeIntervalSinceDate:*(a1 + 48)];
      v8 = *(a1 + 40);
      *buf = 134218242;
      v24 = v9;
      v25 = 2114;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SYNC[FULL] END {duration: %.4f, syncReason: %{public}@}", buf, 0x16u);
    }
  }

  v10 = [*(a1 + 32) processingQueue];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000723B0;
  v19[3] = &unk_1008D9B70;
  v11 = v3;
  v20 = v11;
  v21 = *(a1 + 32);
  v22 = *(a1 + 56);
  dispatch_async(v10, v19);

  v12 = *(a1 + 64);
  v13 = v12;
  v14 = *(a1 + 88);
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_END, v14, "cloudkit.full", "", buf, 2u);
  }

  v15 = *(a1 + 72);
  v16 = objc_opt_self();
  (*(*(a1 + 80) + 16))(*(a1 + 80), v11, v17, v18);
}

id sub_1000723B0(uint64_t a1)
{
  if (!*(a1 + 32) && [*(a1 + 40) _generateAndSavePersonIDSaltIfNeeded:*(a1 + 48)])
  {
    v2 = +[REMLog cloudkit];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "SYNC[FULL] - PersonIDSalt generated for primary CK account.", v4, 2u);
    }
  }

  return [*(a1 + 40) _clearCloudDirtyForToken:*(a1 + 56)];
}

void sub_100072654(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100760EC8();
    }

    [*(a1 + 32) addObject:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_syncWithReason: Fetched database changes for full sync", buf, 2u);
    }
  }

  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000727E0;
  v13[3] = &unk_1008D9FF8;
  v9 = *(a1 + 32);
  v17 = *(a1 + 72);
  *&v10 = v9;
  *(&v10 + 1) = *(a1 + 40);
  v12 = v10;
  *&v11 = *(a1 + 56);
  *(&v11 + 1) = *(a1 + 48);
  v14 = v12;
  v15 = v11;
  v16 = *(a1 + 64);
  [v6 fetchRecordZoneChangesWithReason:v7 cloudSchemaCatchUpSyncContextMap:v8 completionHandler:v13];
}

void sub_1000727E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100760F38();
    }

    [*(a1 + 32) addObject:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "_syncWithReason: Fetched record zone changes for full sync", buf, 2u);
    }
  }

  if (*(a1 + 72) == 1)
  {
    v6 = *(a1 + 40);
    v7 = [objc_opt_class() errorFromErrors:*(a1 + 32)];
    v8 = *(a1 + 40);
    v9 = *(a1 + 48);
    v10 = [NSString stringWithFormat:@"syncReason=%@", *(a1 + 56)];
    [v8 didCompleteCloudSchemaCatchUpSyncWithContextMap:v9 error:v7 syncTypeLabel:@"FULL" debugLogLabel:v10];
  }

  v11 = *(a1 + 56);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100072998;
  v14[3] = &unk_1008D9FD0;
  v12 = *(a1 + 40);
  v15 = *(a1 + 32);
  v13 = *(a1 + 64);
  v16 = *(a1 + 40);
  v17 = v13;
  [v12 processAllDirtyCloudObjectsWithSyncReason:v11 completionHandler:v14];
}

void sub_100072998(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100760FA8(v3);
    }

    [*(a1 + 32) addObjectsFromArray:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "_syncWithReason: Processed everything for full sync", buf, 2u);
    }
  }

  if (*(a1 + 48))
  {
    v6 = *(a1 + 40);
    v7 = [objc_opt_class() errorFromErrors:*(a1 + 32)];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100072AF0;
    v10[3] = &unk_1008D9C60;
    v8 = *(a1 + 48);
    v11 = v7;
    v12 = v8;
    v9 = v7;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

void sub_100072BBC(uint64_t a1)
{
  v2 = (a1 + 32);
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100072FA4;
  v33[3] = &unk_1008D9990;
  v33[4] = *v2;
  sub_100072FA4(v33);
  os_unfair_lock_unlock(*v2 + 8);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = [(os_unfair_lock_s *)*v2 operationQueue];
  v4 = [v3 operations];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = *v30;
    do
    {
      v8 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v29 + 1) + 8 * v8);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 ic_removeAllCKCompletionBlocksButNotTheNSOperationCompletionBlock];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  [*(a1 + 32) setDisabledInternal:1];
  [*(a1 + 32) clearPendingActivity];
  v10 = [*(a1 + 32) operationQueue];
  [v10 cancelAllOperations];

  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100073018;
  v27[3] = &unk_1008DA048;
  v27[4] = *(a1 + 32);
  v28 = *(a1 + 40);
  v11 = objc_retainBlock(v27);
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = sub_10006D330;
  v25[4] = sub_10006D340;
  v26 = &__kCFBooleanFalse;
  v12 = dispatch_time(0, 5000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073120;
  block[3] = &unk_1008DA070;
  v24 = v25;
  v13 = v11;
  v23 = v13;
  dispatch_after(v12, &_dispatch_main_q, block);
  v14 = [@"com.apple.reminders.cloud.waiting" UTF8String];
  v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v16 = dispatch_queue_create(v14, v15);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000731B0;
  v19[3] = &unk_1008DA098;
  v17 = *(a1 + 32);
  v20 = v13;
  v21 = v25;
  v19[4] = v17;
  v18 = v13;
  dispatch_async(v16, v19);

  _Block_object_dispose(v25, 8);
}

void sub_100072F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100072FA4(uint64_t a1)
{
  v2 = [*(a1 + 32) accountInitializerDidCompleteOnAccountsDidChangeObserver];

  if (v2)
  {
    v3 = [*(a1 + 32) accountInitializerDidCompleteOnAccountsDidChangeObserver];
    [v3 unobserve];

    v4 = *(a1 + 32);

    [v4 setAccountInitializerDidCompleteOnAccountsDidChangeObserver:0];
  }
}

void sub_100073018(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "cancelEverything: Performing cleanup in ICCC.", buf, 2u);
  }

  [*(a1 + 32) clearPendingActivity];
  [*(a1 + 32) setDisabledInternal:0];
  if (*(a1 + 40))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100073110;
    block[3] = &unk_1008DA020;
    v4 = *(a1 + 40);
    dispatch_async(&_dispatch_main_q, block);
  }
}

void sub_100073120(uint64_t a1)
{
  if (([*(*(*(a1 + 40) + 8) + 40) BOOLValue] & 1) == 0)
  {
    v2 = +[REMLog cloudkit];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100761034();
    }

    (*(*(a1 + 32) + 16))();
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = &__kCFBooleanTrue;
  }
}

void sub_1000731B0(uint64_t a1)
{
  v2 = [*(a1 + 32) operationQueue];
  [v2 waitUntilAllOperationsAreFinished];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073264;
  block[3] = &unk_1008DA070;
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100073264(uint64_t a1)
{
  if (([*(*(*(a1 + 40) + 8) + 40) BOOLValue] & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
    v2 = *(*(a1 + 40) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = &__kCFBooleanTrue;
  }
}

void sub_1000733D4(uint64_t a1)
{
  v2 = +[NSMutableSet set];
  [*(a1 + 32) setObjectIDsToProcess:v2];

  v3 = +[NSMutableSet set];
  [*(a1 + 32) setObjectIDsToRetry:v3];

  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) accountZoneIDsFetchingChanges];
    v6 = [*(a1 + 32) accountZoneIDsNeedingFetchChanges];
    *buf = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Zone IDs that need to resume fetching: fetching=%{public}@; needingFetch=%{public}@", buf, 0x16u);
  }

  v7 = [*(a1 + 32) accountZoneIDsFetchingChanges];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100073588;
  v9[3] = &unk_1008DA0C0;
  v9[4] = *(a1 + 32);
  [v7 enumerateKeysAndObjectsUsingBlock:v9];

  v8 = objc_opt_new();
  [*(a1 + 32) setAccountZoneIDsFetchingChanges:v8];
}

void sub_100073588(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 accountZoneIDsNeedingFetchChanges];
  v8 = [v7 objectForKeyedSubscript:v11];

  if (v8)
  {
    [v8 unionSet:v6];
  }

  else
  {
    v9 = [v6 mutableCopy];

    v10 = [*(a1 + 32) accountZoneIDsNeedingFetchChanges];
    [v10 setObject:v9 forKeyedSubscript:v11];

    v6 = v9;
  }
}

void sub_100073A04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = +[REMLog cloudkit];
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1007610A4(a1);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    *buf = 138543618;
    v34 = v12;
    v35 = 2114;
    v36 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Deleted record zones in account ID %{public}@: {deletedRecordZoneIDs: %{public}@}", buf, 0x16u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v8;
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      v17 = 0;
      do
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(a1 + 40) deleteServerChangeTokenForRecordZoneID:*(*(&v28 + 1) + 8 * v17) databaseScope:objc_msgSend(*(a1 + 48) accountID:{"databaseScope"), *(a1 + 32)}];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v15);
  }

  [*(a1 + 40) updateCloudContextStateWithReason:@"DeleteRecordZonesWithZoneIDs"];
  v18 = [*(a1 + 40) contextForAccountID:*(a1 + 32) withBatchFetchHelper:0];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100073C98;
  v23[3] = &unk_1008DA0E8;
  v19 = *(a1 + 32);
  v23[4] = *(a1 + 40);
  v24 = v18;
  v25 = v19;
  v20 = *(a1 + 56);
  v26 = v9;
  v27 = v20;
  v21 = v9;
  v22 = v18;
  [v22 performBlockAndWait:v23];
}

uint64_t sub_100073C98(uint64_t a1)
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v2 = *(a1 + 32);
  obj = [objc_opt_class() allCloudObjectIDsOfClassesPassingTest:0 inContext:*(a1 + 40)];
  v3 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v3)
  {
    goto LABEL_12;
  }

  v4 = v3;
  v5 = *v21;
  v17 = *v21;
  do
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v21 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = [*(a1 + 40) objectWithID:*(*(&v20 + 1) + 8 * i)];
      objc_opt_class();
      v8 = REMDynamicCast();
      v9 = [v8 account];
      v10 = [v9 identifier];
      v11 = [v10 UUIDString];
      if ([v11 isEqualToString:*(a1 + 48)])
      {
      }

      else
      {
        v12 = [v8 identifier];
        [v12 UUIDString];
        v14 = v13 = v4;
        v19 = [v14 isEqualToString:*(a1 + 48)];

        v4 = v13;
        v5 = v17;

        if (!v19)
        {
          goto LABEL_10;
        }
      }

      [v8 clearServerRecord];
LABEL_10:
    }

    v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v4);
LABEL_12:

  v15 = *(a1 + 32);
  [objc_opt_class() saveAndFaultIfFailWithContext:*(a1 + 40) shouldTakeServerAsTruth:1 logDescription:@"deleting record zones"];
  result = *(a1 + 64);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56));
  }

  return result;
}

void sub_10007456C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100074588(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 userInfo];
  v8 = [v4 objectForKeyedSubscript:CKErrorRetryAfterKey];

  v5 = v8;
  if (v8)
  {
    [v8 doubleValue];
    v5 = v8;
    v7 = *(*(a1 + 32) + 8);
    if (v6 > *(v7 + 24))
    {
      *(v7 + 24) = v6;
    }
  }
}

void sub_10007493C(id *a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [a1[4] ic_loggingDescription];
    *buf = 138543362;
    v48 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Finishing operations for record ID %{public}@", buf, 0xCu);
  }

  v44[0] = _NSConcreteStackBlock;
  v44[1] = 3221225472;
  v44[2] = sub_100074DB8;
  v44[3] = &unk_1008DA048;
  v45 = a1[4];
  v46 = a1[6];
  v4 = [ICNSBlockOperation blockOperationWithBlock:v44];
  [v4 setName:ICNSBlockOperationNameFinishOperations];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [a1[5] operationQueue];
  v6 = [v5 operations];

  v7 = v4;
  obj = v6;
  v8 = REMCRMergeableOrderedSet_ptr;
  v35 = [v6 countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v35)
  {
    v9 = *v41;
    v10 = REMCRMergeableOrderedSet_ptr;
    v32 = v7;
    v33 = *v41;
    do
    {
      v11 = 0;
      do
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * v11);
        v13 = v10[307];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_27;
          }

          v24 = v12;
          v25 = [v24 recordIDs];
          v26 = [v25 containsObject:a1[4]];

          if ((v26 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_24;
        }

        v14 = v12;
        v15 = [v14 recordIDsToDelete];
        v16 = [v15 containsObject:a1[4]];

        if (v16)
        {
LABEL_23:

          v9 = v33;
          v10 = REMCRMergeableOrderedSet_ptr;
LABEL_24:
          v27 = [v8[50] cloudkit];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            v28 = [v12 ic_loggingDescription];
            v29 = [a1[4] ic_loggingDescription];
            *buf = 138543618;
            v48 = v28;
            v49 = 2114;
            v50 = v29;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "Waiting on operation %{public}@ for record ID %{public}@", buf, 0x16u);
          }

          [v7 addDependency:v12];
          goto LABEL_27;
        }

        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v17 = [v14 recordsToSave];
        v18 = [v17 countByEnumeratingWithState:&v36 objects:v51 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v37;
          while (2)
          {
            for (i = 0; i != v19; i = i + 1)
            {
              if (*v37 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = [*(*(&v36 + 1) + 8 * i) recordID];
              v23 = [v22 isEqual:a1[4]];

              if (v23)
              {

                v8 = REMCRMergeableOrderedSet_ptr;
                v7 = v32;
                goto LABEL_23;
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v36 objects:v51 count:16];
            if (v19)
            {
              continue;
            }

            break;
          }

          v8 = REMCRMergeableOrderedSet_ptr;
          v7 = v32;
        }

        else
        {
        }

        v9 = v33;
        v10 = REMCRMergeableOrderedSet_ptr;
LABEL_27:
        v11 = v11 + 1;
      }

      while (v11 != v35);
      v30 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
      v35 = v30;
    }

    while (v30);
  }

  v31 = [a1[5] operationQueue];
  [v31 addOperation:v7];

  [a1[5] errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
}

uint64_t sub_100074DB8(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) ic_loggingDescription];
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "All operations finished for record ID %{public}@", &v5, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void sub_1000750D8(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updating CloudKit account status", buf, 2u);
  }

  [*(a1 + 32) removeStaleAccountStatus];
  v3 = [*(a1 + 32) containersByAccountID];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000751D0;
  v5[3] = &unk_1008DA1B0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_1000751D0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[REMLog cloudkit];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10076111C();
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000752CC;
  v10[3] = &unk_1008DA188;
  v8 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v5;
  v12 = v8;
  v9 = v5;
  [v6 accountStatusWithCompletionHandler:v10];
}

void sub_1000752CC(id *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [a1[4] processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000753B4;
  block[3] = &unk_1008D9F30;
  v11 = v5;
  v7 = a1[5];
  v8 = a1[4];
  v12 = v7;
  v13 = v8;
  v15 = a2;
  v14 = a1[6];
  v9 = v5;
  dispatch_async(v6, block);
}

uint64_t sub_1000753B4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = +[REMLog cloudkit];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100761184(a1);
    }
  }

  else
  {
    v3 = [*(a1 + 48) accountStatusNumberByAccountID];
    v2 = [v3 objectForKeyedSubscript:*(a1 + 40)];

    if (v2 && [*(a1 + 48) accountStatusFromAccountStatusNumber:v2] == *(a1 + 64))
    {
      v4 = +[REMLog cloudkit];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v5 = *(a1 + 64);
        v6 = CKStringFromAccountStatus();
        v7 = *(a1 + 40);
        v13 = 138543618;
        v14 = v6;
        v15 = 2114;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "No change in CloudKit status %{public}@ for account: %{public}@", &v13, 0x16u);
      }
    }

    else
    {
      v8 = +[REMLog cloudkit];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 64);
        v10 = CKStringFromAccountStatus();
        v11 = *(a1 + 40);
        v13 = 138543618;
        v14 = v10;
        v15 = 2114;
        v16 = v11;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CloudKit account status changed to %{public}@ for account: %{public}@", &v13, 0x16u);
      }

      [*(a1 + 48) setAccountStatus:*(a1 + 64) forAccountID:*(a1 + 40)];
      [*(a1 + 48) setNeedsToUpdateSubscriptions:1];
      [*(a1 + 48) clearSubscribedSubscriptionIDs];
      [*(a1 + 48) clearZoneFetchState];
    }
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 64), *(a1 + 40), *(a1 + 32));
  }

  return result;
}

void sub_10007565C(uint64_t a1)
{
  v2 = [*(a1 + 32) accountStatusNumberByAccountID];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) containersByAccountID];
    v5 = [v4 allKeys];
    v6 = [NSSet setWithArray:v5];

    v7 = [*(a1 + 32) accountStatusNumberByAccountID];
    v8 = [v7 allKeys];
    v9 = [NSMutableSet setWithArray:v8];

    [v9 minusSet:v6];
    if ([v9 count])
    {
      v10 = +[REMLog cloudkit];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Remove stale account status for accountIDs: %{public}@", buf, 0xCu);
      }

      v11 = [*(a1 + 32) accountStatusNumberByAccountID];
      v12 = [v11 mutableCopy];

      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100075878;
      v15[3] = &unk_1008DA1D8;
      v16 = v12;
      v13 = v12;
      [v9 enumerateObjectsUsingBlock:v15];
      v14 = [v13 copy];
      [*(a1 + 32) setAccountStatusNumberByAccountID:v14];
    }
  }
}

void sub_10007590C(uint64_t a1)
{
  v2 = [*(a1 + 32) databaseScopeStringsNeedingRetryFetchChangesByAccountID];
  v3 = [v2 count];

  if (v3)
  {
    v4 = [*(a1 + 32) containersByAccountID];
    v5 = [v4 allKeys];
    v6 = [NSSet setWithArray:v5];

    v7 = [*(a1 + 32) databaseScopeStringsNeedingRetryFetchChangesByAccountID];
    v8 = [v7 allKeys];
    v9 = [NSMutableSet setWithArray:v8];

    [v9 minusSet:v6];
    if ([v9 count])
    {
      v10 = +[REMLog cloudkit];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v13 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Remove stale database scope string needing retry fetch changes for accountIDs: %{public}@", buf, 0xCu);
      }

      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100075AE0;
      v11[3] = &unk_1008DA1D8;
      v11[4] = *(a1 + 32);
      [v9 enumerateObjectsUsingBlock:v11];
    }
  }
}

void sub_100075AE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) databaseScopeStringsNeedingRetryFetchChangesByAccountID];
  v5 = [v4 objectForKeyedSubscript:v3];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1 + 32) retryCountFetchDatabaseChangesOperationTypeForAccountID:v3 dataScopeString:{*(*(&v13 + 1) + 8 * v10), v13}];
        [*(a1 + 32) clearRetryCountForOperationType:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [*(a1 + 32) databaseScopeStringsNeedingRetryFetchChangesByAccountID];
  [v12 removeObjectForKey:v3];
}

void sub_100075D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100075D8C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v7 = &stru_1008FE8A0;
  }

  else
  {
    v7 = @",";
  }

  v8 = v7;
  v9 = a2;
  [a3 intValue];
  v10 = CKStringFromAccountStatus();
  [v6 appendFormat:@"%@ (%@, %@)", v8, v9, v10];

  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void sub_100076174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, char a23)
{
  objc_destroyWeak((v23 + 48));
  _Block_object_dispose(&a23, 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000761C4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(*(*(a1 + 32) + 8) + 40);
      v11 = 138477827;
      v12 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Fetched user record in cloud context {userRecord: %{private}@}", &v11, 0xCu);
    }
  }

  else
  {
    v9 = +[REMLog cloudkit];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100761204();
    }
  }
}

void sub_1000762F0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v9 = 138543362;
    v10 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Fetch user record operation completed: %{public}@", &v9, 0xCu);
  }

  if (v4)
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100761274();
    }
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))(v8, *(*(*(a1 + 40) + 8) + 40), v4);
  }
}

void sub_1000767E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3, v5);
  v6 = [CKModifyRecordsOperation alloc];
  v14 = v5;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = [v6 initWithRecordsToSave:v7 recordIDsToDelete:0];

  [*(a1 + 32) configureOperation:v8];
  v9 = [*(a1 + 32) containerForAccountID:*(a1 + 40)];
  v10 = [v9 privateCloudDatabase];
  [v8 setDatabase:v10];

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100076970;
  v12[3] = &unk_1008DA278;
  v13 = *(a1 + 56);
  [v8 setModifyRecordsCompletionBlock:v12];
  v11 = [v8 database];
  [v11 addOperation:v8];
}

void sub_100076AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100076AE8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 recordName];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (!v5 || v6)
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10076134C();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000773DC(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100077494;
  block[3] = &unk_1008DA318;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void sub_100077494(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [objc_opt_class() errorFromOperations:*(a1 + 40)];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100077550;
  v6[3] = &unk_1008D9C60;
  v4 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_100077940(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = [*(a1 + 32) databaseWithDatabaseScope:{objc_msgSend(a2, "integerValue")}];
  v6 = [*(a1 + 40) operationsToFetchRecordIDs:v5 database:v8];
  [*(a1 + 48) addObjectsFromArray:v6];
  v7 = [v5 count];

  *(*(*(a1 + 56) + 8) + 24) += 10240 * v7;
}

void sub_100078050(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v5 fetchOperation:WeakRetained progressChangedWithRecordID:v6 progress:a3];
}

void sub_1000780D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [*(a1 + 32) lastSyncMetrics];
  [v10 setFetchedRecordCount:{objc_msgSend(v10, "fetchedRecordCount") + 1}];

  if (v8)
  {
    v11 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [v11 fetchOperation:WeakRetained recordWasFetchedWithRecordID:v8 record:v7 error:v9];
  }

  else
  {
    WeakRetained = +[REMLog cloudkit];
    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_FAULT))
    {
      sub_100761598();
    }
  }
}

void sub_1000781B0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v5 fetchOperation:WeakRetained didCompleteWithRecordsByRecordID:v7 error:v6];
}

void sub_100078498(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) database];
  v4 = [v2 accountIDForDatabase:v3];

  if (![v4 length])
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_1007615CC();
    }
  }

  v6 = *(a1 + 32);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000785FC;
  v10[3] = &unk_1008DA3E0;
  v7 = *(a1 + 48);
  v8 = *(a1 + 32);
  v11 = v7;
  v12 = v8;
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = v4;
  v16 = *(a1 + 40);
  v9 = v4;
  [v6 performAndWaitContextWithBatchFetchHelperForAccountID:v9 block:v10];
}

void sub_1000785FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = [*(a1 + 56) recordType];
    v7 = [v4 existingCloudObjectForRecordID:v5 recordType:v6 accountID:*(a1 + 64) context:v3];

    if ([*(a1 + 32) code] == 26 || objc_msgSend(*(a1 + 32), "code") == 11)
    {
      v8 = +[REMLog cloudkit];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 64);
        v23 = [*(a1 + 48) ic_loggingDescription];
        v24 = [*(a1 + 72) ic_loggingDescription];
        *buf = 138543874;
        v30 = v22;
        v31 = 2114;
        v32 = v23;
        v33 = 2114;
        v34 = v24;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Tried to fetch record that doesn't exist in account ID %{public}@: %{public}@ %{public}@", buf, 0x20u);
      }

      [v7 objectWasFetchedButDoesNotExistInCloud];
      if ([*(a1 + 32) code] != 26)
      {
        goto LABEL_19;
      }

      v9 = *(a1 + 40);
      v10 = [*(a1 + 48) zoneID];
      [v9 receivedZoneNotFound:v10 operation:*(a1 + 72)];
    }

    else
    {
      v10 = +[REMLog cloudkit];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 64);
        v26 = [*(a1 + 48) ic_loggingDescription];
        v27 = [*(a1 + 72) ic_loggingDescription];
        v28 = *(a1 + 32);
        *buf = 138544130;
        v30 = v25;
        v31 = 2114;
        v32 = v26;
        v33 = 2114;
        v34 = v27;
        v35 = 2114;
        v36 = v28;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to fetch in account ID %{public}@: %{public}@ %{public}@: %{public}@", buf, 0x2Au);
      }
    }

LABEL_19:
    if (!v7)
    {
LABEL_23:

      goto LABEL_24;
    }

    v17 = [*(a1 + 40) objectIDsToRetry];
    v18 = [v7 objectID];
    [v17 addObject:v18];
    goto LABEL_21;
  }

  v11 = +[REMLog cloudkit];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_100761660();
  }

  v12 = *(a1 + 56);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14 = *(a1 + 40);
  if ((isKindOfClass & 1) == 0)
  {
    v15 = *(a1 + 48);
    v16 = [*(a1 + 56) recordType];
    v7 = [v14 existingCloudObjectForRecordID:v15 recordType:v16 accountID:*(a1 + 64) context:v3];

    if (!v7)
    {
      v17 = [*(a1 + 40) newCloudObjectForRecord:*(a1 + 56) accountID:*(a1 + 64) context:v3];
      goto LABEL_22;
    }

    if (*(a1 + 64))
    {
      [v7 objectWasFetchedFromCloudWithRecord:*(a1 + 56) accountID:?];
    }

    v17 = [*(a1 + 40) objectIDsToRetry];
    v18 = [v7 objectID];
    [v17 removeObject:v18];
LABEL_21:

LABEL_22:
    goto LABEL_23;
  }

  [*(a1 + 40) didFetchShare:*(a1 + 56) accountID:*(a1 + 64) context:v3];
LABEL_24:
  v19 = [*(a1 + 72) operationID];
  v20 = [NSString stringWithFormat:@"fetch records operation %@", v19];

  v21 = *(a1 + 40);
  [objc_opt_class() saveAndFaultIfFailWithContext:v3 shouldTakeServerAsTruth:1 logDescription:v20];
}

void sub_100078ABC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[REMLog cloudkit];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_100761724();
    }

    [*(a1 + 48) startRetryTimerIfNecessaryWithError:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 40) ic_loggingDescription];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Finished {operatin: %{public}@}", &v6, 0xCu);
    }
  }
}

void sub_1000792CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000792F0(uint64_t a1, void *a2, uint64_t a3)
{
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000793F0;
  v13[3] = &unk_1008DA430;
  v14 = a2;
  v5 = *(a1 + 32);
  v11 = *(a1 + 56);
  v6 = *(a1 + 40);
  *&v7 = v11;
  *(&v7 + 1) = *(a1 + 64);
  v12 = v7;
  v8 = *(a1 + 48);
  *&v9 = v6;
  *(&v9 + 1) = v8;
  v15 = v9;
  v16 = v12;
  v10 = v14;
  [v5 deleteSharesForObjects:a3 accountID:v10 completionHandler:v13];
}

void sub_1000793F0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1007619A0(a1);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v6 = *(a1 + 40);
  objc_sync_enter(v6);
  ++*(*(*(a1 + 64) + 8) + 24);
  objc_sync_exit(v6);

  v7 = *(*(*(a1 + 64) + 8) + 24);
  if (v7 >= [*(a1 + 40) count])
  {
    v8 = *(a1 + 48);
    if (v8)
    {
      (*(v8 + 16))(v8, *(*(*(a1 + 56) + 8) + 40));
    }
  }
}

void sub_1000797F8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = [v3 shortLoggingDescription];
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Will delete share in account ID %{public}@ for %@", &v7, 0x16u);
  }
}

void sub_100079C8C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SYNC[SyncAfterDeleteShare] START}", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) allObjects];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100079DD8;
  v9[3] = &unk_1008DA4E8;
  v9[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = v3;
  v12 = *(a1 + 64);
  v8 = v3;
  [v5 fetchRecordZoneChangesForZoneIDs:v6 accountID:v7 reason:@"SyncAfterDeleteShare" completionHandler:v9];
}

void sub_100079DD8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SYNC[SyncAfterDeleteShare] END", buf, 2u);
  }

  v5 = [*(a1 + 32) newBackgroundContext];
  *buf = 0;
  v17 = buf;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100079FB4;
  v12[3] = &unk_1008D9EE0;
  v13 = *(a1 + 40);
  v6 = v5;
  v14 = v6;
  v15 = buf;
  [v6 performBlockAndWait:v12];
  if (v17[24] == 1 && ([NSError errorWithDomain:@"com.apple.reminders" code:213 userInfo:0], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = v8;
  }

  else
  {
    if (v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = *(a1 + 48);
    }

    v9 = v10;
    v8 = 0;
  }

  v11 = *(a1 + 56);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }

  _Block_object_dispose(buf, 8);
}

void sub_100079F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100079FB4(void *a1)
{
  v2 = [REMCDObject ic_objectsFromObjectIDs:a1[4] context:a1[5]];
  *(*(a1[6] + 8) + 24) = [v2 ic_containsObjectPassingTest:&stru_1008DA4C0];
}

BOOL sub_10007A020(id a1, REMCDObject *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(REMCDObject *)a2 ckServerShare:a3];
  v5 = v4 != 0;

  return v5;
}

void sub_10007A058(uint64_t a1)
{
  v2 = [*(a1 + 32) processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10007A110;
  block[3] = &unk_1008DA318;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v5 = v3;
  v6 = *(a1 + 48);
  dispatch_async(v2, block);
}

void sub_10007A110(void *a1)
{
  v2 = a1[4];
  v3 = [objc_opt_class() errorFromOperations:a1[5]];
  (*(a1[6] + 16))();
}

void sub_10007ADB0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 40) addObject:v6];
}

void sub_10007AE1C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  objc_opt_class();
  v21 = v4;
  v5 = REMDynamicCast();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 recordsToSave];
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = *(a1 + 32);
        v13 = [v11 recordID];
        v14 = [v12 objectForKeyedSubscript:v13];

        [v14 objectWillBePushedToCloudWithOperation:v5];
        v15 = [v11 size];
        if (v15 > 0x100000)
        {
          v16 = +[REMLog cloudkit];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v18 = [v11 ic_loggingDescription];
            *buf = 134218242;
            v28 = v15;
            v29 = 2114;
            v30 = v18;
            _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Record size (%lu bytes) exceeds CloudKit limit for record: %{public}@", buf, 0x16u);
          }

          v17 = *(a1 + 40);
          [objc_opt_class() faultAndPromptToFileRadarWithICTap2RadarType:1 logMessage:@"Oversized CloudKit Record"];
        }

        *(*(*(a1 + 64) + 8) + 24) += v15;
      }

      v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v8);
  }

  if (*(a1 + 72) == 1)
  {
    [*(a1 + 40) addDependenciesForModifyRecordsOperation:v5];
  }

  if (*(a1 + 48))
  {
    [v5 addDependency:?];
  }

  if (a3)
  {
    v19 = 0;
    do
    {
      v20 = [*(a1 + 56) objectAtIndexedSubscript:{v19, v21}];
      [v5 addDependency:v20];

      ++v19;
    }

    while (a3 != v19);
  }
}

void sub_10007BB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [*(a1 + 32) operationToModifyRecordsToSave:a3 delete:a4 rootRecordIDsByShareID:*(a1 + 40) database:*(a1 + 48)];
  [*(a1 + 56) addObject:v5];
}

void sub_10007C1D8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 88));
  _Unwind_Resume(a1);
}

void sub_10007C218(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);
  v8 = a4;
  v9 = a3;
  v10 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v7 modifyRecordsOperation:WeakRetained recordWasSavedWithRecordID:v10 record:v9 context:0 onProcessingQueue:0 error:v8];
}

void sub_10007C2C0(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [v5 modifyRecordsOperation:WeakRetained recordWasDeletedWithRecordID:v7 rootRecordIDsByShareID:*(a1 + 40) onProcessingQueue:0 error:v6];
}

void sub_10007C34C(uint64_t a1, void *a2, double a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) lastSyncMetrics];
  [v6 setModifiedRecordCount:{objc_msgSend(v6, "modifiedRecordCount") + 1}];

  if (((a3 * 100.0) - 1) <= 0x61)
  {
    v7 = *(a1 + 40);
    v8 = [v5 recordID];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (!v9 || ([v9 timeIntervalSinceNow], v10 < -0.7))
    {
      v11 = +[REMLog cloudkit];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100761C80(v5);
      }

      v12 = +[NSDate date];
      v13 = *(a1 + 40);
      v14 = [v5 recordID];
      [v13 setObject:v12 forKeyedSubscript:v14];
    }
  }
}

void sub_10007C498(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 32);
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v5 modifyRecordsOperation:WeakRetained didCompleteWithError:v6];
}

void sub_10007C8C8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(*(a1 + 80) + 8) + 40);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_10007CB4C;
    v22[3] = &unk_1008DA6D0;
    v3 = &v23 + 1;
    v4 = &v24;
    v5 = &v24 + 1;
    v17 = *(a1 + 40);
    v6 = *(&v17 + 1);
    v7 = *(a1 + 56);
    v26 = *(a1 + 80);
    v8 = *(a1 + 64);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    v23 = v17;
    v24 = v9;
    v25 = *(a1 + 32);
    [v2 performBlockAndWait:v22];
  }

  else
  {
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 56);
      v12 = [*(a1 + 72) ic_loggingDescription];
      v13 = [*(a1 + 64) ic_loggingDescription];
      *buf = 138543874;
      v28 = v11;
      v29 = 2112;
      v30 = v12;
      v31 = 2114;
      v32 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Pushed account ID %{public}@: %@ %{public}@", buf, 0x20u);
    }

    v14 = *(*(*(a1 + 80) + 8) + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10007CC3C;
    v18[3] = &unk_1008DA6F8;
    v18[4] = *(a1 + 40);
    v3 = &v19;
    v19 = *(a1 + 72);
    v4 = &v20;
    v15 = *(a1 + 56);
    v16 = *(a1 + 80);
    v20 = v15;
    v21[1] = v16;
    v5 = v21;
    v21[0] = *(a1 + 64);
    [v14 performBlockAndWait:v18];
  }
}

void sub_10007CB4C(uint64_t a1)
{
  v7 = [*(a1 + 32) existingCloudObjectForRecordID:*(a1 + 40) recordType:0 accountID:*(a1 + 48) context:*(*(*(a1 + 72) + 8) + 40)];
  [v7 objectFailedToBePushedToCloudWithOperation:*(a1 + 56) recordID:*(a1 + 40) error:*(a1 + 64)];
  v2 = [v7 objectID];

  if (v2)
  {
    v3 = [*(a1 + 32) objectIDsToRetry];
    v4 = [v7 objectID];
    [v3 addObject:v4];
  }

  v5 = [*(a1 + 64) code];
  if (v5 <= 0x1F && ((1 << v5) & 0x80081000) != 0)
  {
    [v7 incrementFailureCounts];
  }
}

uint64_t sub_10007CC3C(uint64_t a1)
{
  v2 = [*(a1 + 32) existingCloudObjectForRecord:*(a1 + 40) accountID:*(a1 + 48) context:*(*(*(a1 + 64) + 8) + 40)];
  v3 = v2;
  if (v2)
  {
    v7 = v2;
    [v2 objectWasPushedToCloudWithOperation:*(a1 + 56) serverRecord:*(a1 + 40)];
    v4 = [*(a1 + 32) objectIDsToRetry];
    v5 = [v7 objectID];
    [v4 removeObject:v5];

    v2 = [v7 shouldBeIgnoredForSync];
    v3 = v7;
    if (v2)
    {
      v2 = [v7 decrementFailureCounts];
      v3 = v7;
    }
  }

  return _objc_release_x1(v2, v3);
}

void sub_10007CCFC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) recordName];
  v5 = [NSString stringWithFormat:@"pushing record for account ID %@: %@", v2, v3];

  v4 = *(a1 + 56);
  [objc_opt_class() saveAndFaultIfFailWithContext:*(*(*(a1 + 64) + 8) + 40) shouldTakeServerAsTruth:*(a1 + 48) != 0 logDescription:v5];
}

void sub_10007D11C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10007D238;
  v9[3] = &unk_1008DA770;
  v8 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  *&v7 = v8;
  *(&v7 + 1) = v3;
  v10 = v7;
  v11 = v6;
  v12 = *(a1 + 64);
  v13 = *(a1 + 72);
  v15 = *(a1 + 88);
  v14 = *(a1 + 80);
  [v2 performBlockAndWait:v9];
}

void sub_10007D238(uint64_t a1)
{
  v2 = (a1 + 48);
  v3 = [*(a1 + 32) existingCloudObjectForRecordID:*(a1 + 40) recordType:0 accountID:*(a1 + 48) context:*(a1 + 56)];
  if (!v3)
  {
    v4 = +[REMLog cloudkit];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 48);
      v6 = [*(a1 + 40) ic_loggingDescription];
      v7 = [*(a1 + 64) ic_loggingDescription];
      v47 = 138543874;
      v48 = v5;
      v49 = 2114;
      v50 = v6;
      v51 = 2114;
      v52 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Record was deleted but the cloud object no longer exists in our database for modifyRecordsOperation:recordWasDeletedWithRecordID:... {accountID: %{public}@, prefetchRecordID: %{public}@, opeartion: %{public}@}", &v47, 0x20u);
    }
  }

  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  if (v8)
  {
    v10 = [v8 code];
    v11 = +[REMLog cloudkit];
    v12 = v11;
    if (v9)
    {
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (v10 == 26)
      {
        if (v13)
        {
          v34 = *(a1 + 48);
          v35 = [*(a1 + 80) ic_loggingDescription];
          v36 = [v3 shortLoggingDescription];
          v37 = [*(a1 + 64) ic_loggingDescription];
          v47 = 138544130;
          v48 = v34;
          v49 = 2114;
          v50 = v35;
          v51 = 2112;
          v52 = v36;
          v53 = 2114;
          v54 = v37;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Zone not found deleting share in account ID %{public}@: %{public}@ for %@ %{public}@", &v47, 0x2Au);
        }

        [v3 setCkServerShare:0];
        v28 = *(a1 + 32);
        v29 = [*(a1 + 80) zoneID];
        [v28 receivedZoneNotFound:v29 operation:*(a1 + 64)];
      }

      else if (v10 == 11)
      {
        if (v13)
        {
          v30 = *(a1 + 48);
          v31 = [*(a1 + 80) ic_loggingDescription];
          v32 = [v3 shortLoggingDescription];
          v33 = [*(a1 + 64) ic_loggingDescription];
          v47 = 138544130;
          v48 = v30;
          v49 = 2114;
          v50 = v31;
          v51 = 2112;
          v52 = v32;
          v53 = 2114;
          v54 = v33;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unknown item deleting share in account ID %{public}@: %{public}@ for %@ %{public}@", &v47, 0x2Au);
        }

        [v3 setCkServerShare:0];
      }

      else
      {
        if (v13)
        {
          v38 = *(a1 + 48);
          v39 = [*(a1 + 80) ic_loggingDescription];
          v40 = [v3 shortLoggingDescription];
          v41 = [*(a1 + 64) ic_loggingDescription];
          v42 = *(a1 + 72);
          v47 = 138544386;
          v48 = v38;
          v49 = 2114;
          v50 = v39;
          v51 = 2112;
          v52 = v40;
          v53 = 2114;
          v54 = v41;
          v55 = 2114;
          v56 = v42;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error deleting share in account ID %{public}@: %{public}@ for %@ %{public}@: %{public}@", &v47, 0x34u);
        }
      }

      goto LABEL_52;
    }

    if (v10 == 31)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_100761F0C();
      }

      [v3 fixBrokenReferences];
      [v3 incrementFailureCounts];
      goto LABEL_49;
    }

    if (v10 == 22)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        sub_100761E58();
      }
    }

    else
    {
      if (v10 == 11)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100761FBC();
        }

        [v3 objectWasDeletedFromCloud];
        goto LABEL_49;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v43 = *(a1 + 48);
        v44 = [*(a1 + 80) ic_loggingDescription];
        v45 = [*(a1 + 64) ic_loggingDescription];
        v46 = *(a1 + 72);
        v47 = 138544130;
        v48 = v43;
        v49 = 2114;
        v50 = v44;
        v51 = 2114;
        v52 = v45;
        v53 = 2114;
        v54 = v46;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Error deleting record in account ID %{public}@: %{public}@ %{public}@: %{public}@", &v47, 0x2Au);
      }
    }

LABEL_49:
    if (!v3)
    {
      goto LABEL_52;
    }

    v26 = [*(a1 + 32) objectIDsToRetry];
    v27 = [v3 objectID];
    [v26 addObject:v27];
LABEL_51:

    goto LABEL_52;
  }

  v14 = +[REMLog cloudkit];
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v15)
    {
      v16 = *(a1 + 48);
      v17 = [*(a1 + 80) ic_loggingDescription];
      v18 = [*(a1 + 64) ic_loggingDescription];
      v47 = 138543874;
      v48 = v16;
      v49 = 2114;
      v50 = v17;
      v51 = 2114;
      v52 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleted share in account ID %{public}@: %{public}@ %{public}@", &v47, 0x20u);
    }

    [v3 setCkServerShare:0];
    if (([v3 isOwnedByCurrentUser] & 1) == 0 && objc_msgSend(v3, "markedForDeletion"))
    {
      [v3 deleteFromLocalDatabase];
    }
  }

  else
  {
    if (v15)
    {
      v19 = *(a1 + 48);
      v20 = [*(a1 + 80) ic_loggingDescription];
      v21 = [*(a1 + 64) ic_loggingDescription];
      v47 = 138543874;
      v48 = v19;
      v49 = 2114;
      v50 = v20;
      v51 = 2114;
      v52 = v21;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleted record in account ID %{public}@: %{public}@ %{public}@", &v47, 0x20u);
    }

    [v3 objectWasDeletedFromCloud];
    if ([v3 markedForDeletion] && (objc_msgSend(v3, "supportsDeletionByTTL") & 1) == 0)
    {
      v22 = +[REMLog cloudkit];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *v2;
        v24 = [v3 shortLoggingDescription];
        v47 = 138543618;
        v48 = v23;
        v49 = 2114;
        v50 = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Actually deleting object in account ID %{public}@: %{public}@ with supportsDeletionByTTL = false from local DB upon completion of CKModifyRecordsOperation.", &v47, 0x16u);
      }

      [v3 deleteFromLocalDatabase];
    }

    if ([v3 shouldBeIgnoredForSync])
    {
      [v3 decrementFailureCounts];
    }

    v25 = [v3 objectID];

    if (v25)
    {
      v26 = [*(a1 + 32) objectIDsToRetry];
      v27 = [v3 objectID];
      [v26 removeObject:v27];
      goto LABEL_51;
    }
  }

LABEL_52:
}

void sub_10007D980(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) recordName];
  v5 = [NSString stringWithFormat:@"pushing record for account ID %@: %@", v2, v3];

  v4 = *(a1 + 56);
  [objc_opt_class() saveAndFaultIfFailWithContext:*(a1 + 64) shouldTakeServerAsTruth:*(a1 + 48) != 0 logDescription:v5];
}

void sub_10007DAF4(id *a1)
{
  v2 = a1[4];
  v4 = a1 + 5;
  v3 = a1[5];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 incrementOrClearRetryCountForOperationType:v6 error:a1[6]];

  if (!a1[6])
  {
    goto LABEL_29;
  }

  v7 = +[REMLog cloudkit];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10076206C(v4);
  }

  v8 = [a1[4] operationQueue];
  v9 = [v8 iterativelyCancelDependentOperations:a1[5]];

  v10 = [a1[6] code];
  if ((v10 - 3) < 2)
  {
    goto LABEL_7;
  }

  if (v10 == 2)
  {
    v12 = +[REMLog cloudkit];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1007620F8();
    }

    [a1[4] handleGenericPartialFailuresForError:a1[6] operation:a1[5]];
    goto LABEL_15;
  }

  if (v10 == 20)
  {
LABEL_7:
    v11 = +[REMLog cloudkit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = +[REMLog cloudkit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      sub_10076218C();
    }
  }

LABEL_15:
  if ([a1[6] code] != 2)
  {
    v13 = a1[4];
    v14 = [a1[5] database];
    v15 = [v13 accountIDForDatabase:v14];

    if (![v15 length])
    {
      v16 = +[REMLog cloudkit];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        sub_100762220();
      }
    }

    v30 = v15;
    v17 = [a1[4] contextForAccountID:v15 withBatchFetchHelper:1];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v18 = [a1[5] recordsToSave];
    v19 = [v18 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v34;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v34 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = a1[4];
          v24 = a1[5];
          v25 = [*(*(&v33 + 1) + 8 * i) recordID];
          [v23 modifyRecordsOperation:v24 recordWasSavedWithRecordID:v25 record:0 context:v17 onProcessingQueue:1 error:a1[6]];
        }

        v20 = [v18 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v20);
    }

    v26 = [v17 batchFetchHelper];
    [v26 flushOnCurrentQueue:1];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_10007DF20;
    v31[3] = &unk_1008D9B98;
    v31[4] = a1[4];
    v32 = v17;
    v27 = v17;
    [v27 performBlockAndWait:v31];
  }

  [a1[4] startRetryTimerIfNecessaryWithError:a1[6]];
LABEL_29:
  v28 = +[REMLog cloudkit];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [*v4 ic_loggingDescription];
    *buf = 138543362;
    v38 = v29;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Finished modify operation %{public}@", buf, 0xCu);
  }
}

id sub_10007DF20(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(a1 + 40);

  return [v3 saveAndFaultIfFailWithContext:v4 shouldTakeServerAsTruth:1 logDescription:@"finished modify (save) operation with error(s)"];
}

void sub_10007E42C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
LABEL_5:
    v8 = v7;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 zoneID];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_7:
  v9 = [v6 code];
  if (v9 == 28)
  {
    if (v8)
    {
      v10 = a1[5];
      goto LABEL_15;
    }

    v11 = +[REMLog cloudkit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  if (v9 == 26)
  {
    if (v8)
    {
      v10 = a1[4];
LABEL_15:
      [v10 addObject:v8];
      goto LABEL_21;
    }

    v11 = +[REMLog cloudkit];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_19:
      sub_1007623C0();
    }

LABEL_20:

    goto LABEL_21;
  }

  if (v9 == 25)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

LABEL_21:
}

void sub_10007ED5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007ED80(uint64_t a1)
{
  v2 = [*(a1 + 32) accountCKIdentifier];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_10007EDCC()
{
  v0 = +[REMLog cloudkit];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1007624A0();
  }
}

void sub_10007F4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10007F4D0(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_10007F9C4(uint64_t a1)
{
  v2 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = a1;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v23;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        v8 = [v7 completionBlock];
        v9 = v8;
        if (v8)
        {
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_10007FCF4;
          v19[3] = &unk_1008D9C60;
          v21 = v8;
          v20 = v2;
          [v7 setCompletionBlock:v19];

          v10 = &v21;
        }

        else
        {
          v17[0] = _NSConcreteStackBlock;
          v17[1] = 3221225472;
          v17[2] = sub_10007FD38;
          v17[3] = &unk_1008D9990;
          v18 = v2;
          [v7 setCompletionBlock:v17];
          v10 = &v18;
        }

        dispatch_group_enter(v2);
        v11 = +[REMLog cloudkit];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = [v7 ic_loggingDescription];
          *buf = 138543362;
          v27 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Run exclusively operation start: {%{public}@}", buf, 0xCu);
        }

        [v7 start];
      }

      v4 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v4);
  }

  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v13 = +[REMLog cloudkit];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [*(v15 + 32) ic_map:&stru_1008DA828];
    *buf = 138543362;
    v27 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Run exclusively operations end: {%{public}@}", buf, 0xCu);
  }
}

void sub_10007FCF4(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

void sub_100080390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000803C0(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 40);
  v4 = v3 != qword_100952980 || Current - *&qword_100934E58 > *(a1 + 48);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    qword_100952980 = v3;
    qword_100934E58 = *&Current;
  }
}

void sub_100080E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100080E98(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = [*(a1 + 32) processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080FAC;
  block[3] = &unk_1008DA408;
  v16 = v7;
  v17 = WeakRetained;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v18 = v6;
  v19 = v10;
  v20 = v11;
  v12 = v6;
  v13 = WeakRetained;
  v14 = v7;
  dispatch_async(v9, block);
}

void sub_100080FAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = REMCRMergeableOrderedSet_ptr;
  v4 = +[REMLog cloudkit];
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1007627C4();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 40) ic_loggingDescription];
    *buf = 138543362;
    v27 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Saved record zones %{public}@", buf, 0xCu);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = *(a1 + 48);
  v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v23;
    *&v8 = 138543618;
    v20 = v8;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * v11);
        v13 = [v3[50] cloudkit];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          [v12 zoneID];
          v15 = v14 = v3;
          v16 = [v15 ic_loggingDescription];
          v17 = [*(a1 + 40) ic_loggingDescription];
          *buf = v20;
          v27 = v16;
          v28 = 2114;
          v29 = v17;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Saved record zone %{public}@ %{public}@", buf, 0x16u);

          v3 = v14;
        }

        v18 = [*(a1 + 56) accountZoneIDsNeedingToBeSaved];
        v19 = [v12 zoneID];
        [v18 ic_removeZoneID:v19 forAccountID:*(a1 + 64)];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }
}

void sub_100081688(uint64_t a1)
{
  v2 = cloudKitAccountTypes();
  v3 = [NSSet setWithArray:v2];

  v4 = [*(a1 + 32) storeController];
  v5 = [v4 storesForAccountTypes:v3];
  v6 = [v5 valueForKey:@"identifier"];

  v7 = *(a1 + 32);
  v8 = [objc_opt_class() filterNonUploadableChangedManagedObjectIDs:*(*(*(a1 + 56) + 8) + 40) cloudKitStoreIdentifiers:v6];
  v9 = [v8 mutableCopy];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(a1 + 40);
  if (v12 && [v12 count])
  {
    v13 = [NSSet setWithSet:*(a1 + 40)];
    [*(*(*(a1 + 56) + 8) + 40) minusSet:v13];
    v14 = [*(a1 + 32) objectIDsToProcess];
    [v14 minusSet:v13];

    v15 = [*(a1 + 32) objectIDsToRetry];
    [v15 minusSet:v13];
  }

  if ([*(*(*(a1 + 56) + 8) + 40) count])
  {
    v16 = [*(a1 + 32) objectIDsToProcess];
    v17 = [v16 count];

    v18 = [*(a1 + 32) objectIDsToProcess];
    [v18 unionSet:*(*(*(a1 + 56) + 8) + 40)];

    v19 = [*(a1 + 32) objectIDsToProcess];
    v20 = [v19 count] - v17;

    if (v20 >= 1)
    {
      v21 = +[REMLog cloudkit];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v32 = 134217984;
        v33 = v20;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Enqueued %ld object IDs because of coredata changes", &v32, 0xCu);
      }
    }

    if (![*(a1 + 32) hasRetryTimer])
    {
      goto LABEL_12;
    }

    v22 = [*(a1 + 32) retryTimer];
    if (v22)
    {
      v23 = v22;
      v24 = [*(a1 + 32) retryTimer];
      v25 = [v24 fireDate];
      v26 = +[NSDate date];
      v27 = [v25 ic_isEarlierThanDate:v26];

      if (v27)
      {
LABEL_12:
        v28 = [*(a1 + 32) processingSelectorDelayer];

        if (v28)
        {
          v29 = +[REMLog cloudkit];
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = *(a1 + 48);
            v32 = 138543362;
            v33 = v30;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "contextDidSave processingSelectorDelayer.requestFire for author: %{public}@", &v32, 0xCu);
          }

          v31 = [*(a1 + 32) processingSelectorDelayer];
          [v31 requestFire];
        }

        else
        {
          [*(a1 + 32) processPendingCloudObjects];
        }
      }
    }
  }
}

void sub_100081AD0(uint64_t a1)
{
  v2 = objc_alloc_init(ICNSBlockOperation);
  [(ICNSBlockOperation *)v2 setName:*(a1 + 32)];
  objc_opt_class();
  v3 = [*(a1 + 40) operationQueue];
  v4 = [v3 operations];
  v5 = [v4 lastObject];
  v6 = REMDynamicCast();

  if ([v6 isProcessObjectsForContextDidSaveOperation] && objc_msgSend(v6, "canCoalesceWithOperation:", v2))
  {
    v7 = +[REMLog cloudkit];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [v6 name];
      *buf = 138543362;
      v33 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Coalescing ICNSBlockOperation name=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    objc_initWeak(&location, v2);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100081EFC;
    v28[3] = &unk_1008DA8C8;
    objc_copyWeak(&v30, &location);
    v9 = *(a1 + 48);
    v28[4] = *(a1 + 40);
    v29 = v9;
    [(ICNSBlockOperation *)v2 addExecutionBlock:v28];
    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [*(a1 + 40) needsToProcessAllDirtyObjects];
      *buf = 134349312;
      v33 = v2;
      v34 = 1024;
      LODWORD(v35) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Adding process objects operation %{public}p. allDirtyObjects=%d", buf, 0x12u);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [*(a1 + 40) operationQueue];
    v13 = [v12 operations];
    v14 = [v13 copy];

    v15 = [v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v15)
    {
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v14);
          }

          [(ICNSBlockOperation *)v2 addDependency:*(*(&v24 + 1) + 8 * v17)];
          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v15);
    }

    v18 = [(ICNSBlockOperation *)v2 dependencies];
    v19 = [v18 count] == 0;

    if (!v19)
    {
      v20 = +[REMLog cloudkit];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [(ICNSBlockOperation *)v2 dependencies];
        v22 = [v21 count];
        *buf = 134349312;
        v33 = v2;
        v34 = 2048;
        v35 = v22;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Process operation %{public}p waiting on %ld other operations", buf, 0x16u);
      }
    }

    v23 = [*(a1 + 40) operationQueue];
    [v23 addOperation:v2];

    [*(a1 + 40) errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessary];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

void sub_100081EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100081EFC(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_100762858(a1);
  }

  v3 = [*(a1 + 32) processingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081FD0;
  block[3] = &unk_1008DA020;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

void sub_1000820E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_100082104(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if ([WeakRetained needsToProcessAllDirtyObjects])
  {
    [WeakRetained setNeedsToProcessAllDirtyObjects:0];
    v3 = +[REMLog cloudkit];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Running process all dirty objects operation.", buf, 2u);
    }

    [WeakRetained context];
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_100082224;
    v8 = &unk_1008D9B98;
    v10 = v9 = WeakRetained;
    v4 = v10;
    [v4 performBlockAndWait:&v5];
  }

  [WeakRetained processPendingCloudObjectsWithOperationName:*(a1 + 32) syncReason:*(a1 + 40) completionHandler:{*(a1 + 48), v5, v6, v7, v8, v9}];
}

void sub_100082224(uint64_t a1)
{
  v3 = [*(a1 + 32) allDirtyCloudObjectIDsInContext:*(a1 + 40)];
  v2 = [*(a1 + 32) objectIDsToRetry];
  [v2 unionSet:v3];
}

id sub_1000823EC(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.processPendingCloudObjects[%@]}", &v6, 0xCu);
  }

  v4 = *(a1 + 40);
  return objc_opt_self();
}

void sub_100082BDC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.sync.coredata}", v8, 2u);
  }

  v6 = *(a1 + 32);
  v7 = objc_opt_self();
}

void sub_100082C8C(uint64_t a1)
{
  v55 = 0;
  v56 = &v55;
  v57 = 0x3032000000;
  v58 = sub_10006D330;
  v59 = sub_10006D340;
  v60 = +[NSMutableArray array];
  v2 = [*(a1 + 32) context];
  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_100083224;
  v50[3] = &unk_1008DA748;
  v50[4] = *(a1 + 32);
  v3 = v2;
  v51 = v3;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v52 = v4;
  v53 = v5;
  v54 = &v55;
  [v3 performBlockAndWait:v50];
  v6 = [v56[5] count];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [v7 objectIDsToProcess];
    v9 = [v8 count];

    v10 = [*(a1 + 32) objectIDsToRetry];
    v11 = [*(a1 + 32) objectIDsToProcess];
    [v10 unionSet:v11];

    v12 = +[NSMutableSet set];
    [*(a1 + 32) setObjectIDsToProcess:v12];

    v13 = +[REMLog cloudkit];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      v16 = +[NSDate date];
      [v16 timeIntervalSinceDate:*(a1 + 56)];
      v17 = v56[5];
      *buf = 138544386;
      v62 = v15;
      v63 = 2114;
      v64 = v14;
      v65 = 2048;
      v66 = v18;
      v67 = 2048;
      v68 = v9;
      v69 = 2114;
      v70 = v17;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "SYNC[COREDATA] END(DEFERRED due to MERGE.LOCAL needs to happen before we can processObjectIDs) {operationName: %{public}@, syncReason: %{public}@, duration: %.4f, numIDsToProcessAddingToRetry: %ld, pendingAccountIdentifiers: %{public}@}", buf, 0x34u);
    }

    v19 = *(a1 + 64);
    v20 = v19;
    v21 = *(a1 + 88);
    if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, v21, "cloudkit.coredata", "", buf, 2u);
    }

    v22 = *(a1 + 72);
    v23 = objc_opt_self();
    (*(*(a1 + 80) + 16))();
  }

  else
  {
    v24 = [v7 objectIDsToRetry];
    v25 = [v24 count];

    v26 = [*(a1 + 32) objectIDsToProcess];
    v27 = [*(a1 + 32) objectIDsToRetry];
    [v26 unionSet:v27];

    v28 = +[NSMutableSet set];
    [*(a1 + 32) setObjectIDsToRetry:v28];

    v29 = +[REMLog cloudkit];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 40);
      v30 = *(a1 + 48);
      v32 = [*(a1 + 32) objectIDsToProcess];
      v33 = [v32 count];
      *buf = 138544130;
      v62 = v31;
      v63 = 2114;
      v64 = v30;
      v65 = 2048;
      v66 = v33;
      v67 = 2048;
      v68 = v25;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SYNC[COREDATA] CONTINUE {operationName: %{public}@, syncReason: %{public}@, objectIDsToProcess.count: %ld, retryIDsCount: %ld}", buf, 0x2Au);
    }

    v34 = *(a1 + 32);
    v35 = [v34 objectIDsToProcess];
    v36 = [*(a1 + 32) operationQueue];
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_100083398;
    v44[3] = &unk_1008DA990;
    v37 = *(a1 + 56);
    v38 = *(a1 + 40);
    v43 = *(a1 + 48);
    v39 = *(a1 + 64);
    *&v40 = v43;
    *(&v40 + 1) = v39;
    *&v41 = v37;
    *(&v41 + 1) = v38;
    v45 = v41;
    v46 = v40;
    v49 = *(a1 + 88);
    v47 = *(a1 + 72);
    v48 = *(a1 + 80);
    [v34 processObjectIDs:v35 operationQueue:v36 completionHandler:v44];

    v42 = +[NSMutableSet set];
    [*(a1 + 32) setObjectIDsToProcess:v42];
  }

  _Block_object_dispose(&v55, 8);
}

void sub_100083224(uint64_t a1)
{
  v2 = [*(a1 + 32) cloudKitAccountsInContext:*(a1 + 40)];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000832D0;
  v3[3] = &unk_1008DA968;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  [v2 enumerateObjectsUsingBlock:v3];
}

void sub_1000832D0(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 daWasMigrated] && (objc_msgSend(v3, "inactive") & 1) == 0)
  {
    v4 = [v3 identifier];
    v5 = [v4 UUIDString];

    if ([v5 length])
    {
      [*(*(*(a1 + 48) + 8) + 40) addObject:v5];
    }

    else
    {
      v6 = +[REMLog cloudkit];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_100762B60(a1);
      }
    }
  }
}

void sub_100083398(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 count];
  v5 = +[REMLog cloudkit];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100762BE0();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = +[NSDate date];
    [v9 timeIntervalSinceDate:*(a1 + 32)];
    v16 = 138543874;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    v20 = 2048;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SYNC[COREDATA] END {operationName: %{public}@, syncReason: %{public}@, duration: %.4f}", &v16, 0x20u);
  }

  v11 = *(a1 + 56);
  v12 = v11;
  v13 = *(a1 + 80);
  if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v16) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_END, v13, "cloudkit.coredata", "", &v16, 2u);
  }

  v14 = *(a1 + 64);
  v15 = objc_opt_self();
  (*(*(a1 + 72) + 16))();
}

void sub_100083624(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_100083640(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained processingQueue];
  dispatch_assert_queue_V2(v3);

  if ([WeakRetained hasPassedBuddy] && (objc_msgSend(WeakRetained, "isSystemAvailableForSyncing") & 1) != 0)
  {
    v4 = [WeakRetained appleAccountUtilities];
    v5 = [v4 unsafeUntilSystemReady_allCloudKitRemindersEnabledICloudACAccounts];

    [NSMutableArray arrayWithCapacity:[v5 count]];
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_100083BC8;
    v6 = v35[3] = &unk_1008DA9E0;
    v36 = v6;
    [v5 enumerateObjectsUsingBlock:v35];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x2020000000;
    v30 = 0;
    v21 = 0;
    v22 = &v21;
    v23 = 0x3032000000;
    v24 = sub_10006D330;
    v25 = sub_10006D340;
    v26 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v6 count]);
    v7 = +[NSDate now];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100083C44;
    v20[3] = &unk_1008DAA30;
    v20[4] = WeakRetained;
    v20[5] = &v21;
    v20[6] = &v31;
    v20[7] = &v27;
    [v6 enumerateObjectsUsingBlock:v20];
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = +[NSDate date];
      [v9 timeIntervalSinceDate:v7];
      *buf = 134218242;
      *&buf[4] = v10 * 1000.0;
      *&buf[12] = 2114;
      *&buf[14] = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "MERGE.LOCAL: (MergeLocalObjectsContext) Populated merge contexts {elapsed: %.4f ms, accountIdentifiers: %{public}@}", buf, 0x16u);
    }

    [WeakRetained setNeedsToMergeLocalObjects:*(v32 + 24)];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v40 = sub_10006D330;
    v41 = sub_10006D340;
    v42 = +[NSMutableDictionary dictionary];
    v11 = v22[5];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100083F88;
    v15[3] = &unk_1008DAA58;
    v15[4] = &v16;
    v15[5] = buf;
    [v11 enumerateKeysAndObjectsUsingBlock:v15];
    if (v17[3])
    {
      v12 = *(*&buf[8] + 40);
      v13 = [WeakRetained operationQueue];
      [WeakRetained processLocalObjectMergeEligibleObjectIDs:v12 operationQueue:v13 completionHandler:*(a1 + 32)];
    }

    else
    {
      if (v28[3])
      {
        goto LABEL_8;
      }

      v13 = +[REMLog cloudkit];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = *(v32 + 24);
        *v37 = 67109120;
        v38 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "MERGE.LOCAL: No need to merge local objects or no objectIDsInCloud (someAccountsNeedToMergeLocalObjects: %d)", v37, 8u);
      }
    }

    [WeakRetained setNeedsToMergeLocalObjects:0];
    [WeakRetained clearRetryCountForOperationType:@"Merge.Local"];
LABEL_8:
    if (*(v28 + 24) == 1)
    {
      [v22[5] enumerateKeysAndObjectsUsingBlock:&stru_1008DAA98];
      [WeakRetained _scheduleRetryMergeLocalObjects];
    }

    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v21, 8);

    _Block_object_dispose(&v27, 8);
    _Block_object_dispose(&v31, 8);

    goto LABEL_13;
  }

  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    sub_100762CBC();
  }

LABEL_13:
}

void sub_100083B54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose((v38 - 176), 8);
  _Block_object_dispose(&a16, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_100083BC8(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 identifier];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 identifier];
    [v4 addObject:v5];
  }
}

void sub_100083C44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) mergeLocalObjectsFetchContextAffectingStoreOf:v3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100083D28;
  v8[3] = &unk_1008DAA08;
  v6 = v3;
  v9 = v6;
  v10 = v5;
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v7 = v5;
  [v7 performBlockAndWait:v8];

  objc_autoreleasePoolPop(v4);
}

void sub_100083D28(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [REMCDAccount cloudKitAccountWithCKIdentifier:*(a1 + 32) context:*(a1 + 40)];
  if (v3)
  {
    v4 = [[ICREMCDAccountMergeLocalObjectsContext alloc] initWithAccountIdentifier:*(a1 + 32)];
    [(ICREMCDAccountMergeLocalObjectsContext *)v4 validateWithAccount:v3];
    [*(*(*(a1 + 48) + 8) + 40) setObject:v4 forKey:*(a1 + 32)];
    if ([(ICREMCDAccountMergeLocalObjectsContext *)v4 needsToMergeLocalObjects])
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v5 = +[REMLog cloudkit];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *v2;
        *v13 = 138543362;
        *&v13[4] = v6;
        v7 = "MERGE.LOCAL: (MergeLocalObjectsContext) Account needs to merge local objects {accountIdentifier: %{public}@}";
        v8 = v5;
        v9 = 12;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, v13, v9);
      }
    }

    else
    {
      v5 = +[REMLog cloudkit];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *v2;
        *v13 = 138543618;
        *&v13[4] = v10;
        *&v13[12] = 1024;
        *&v13[14] = [v3 inactive];
        v7 = "MERGE.LOCAL: (MergeLocalObjectsContext) Account does not need to merge local objects {accountIdentifier: %{public}@, isInactive: %d}";
        v8 = v5;
        v9 = 18;
        goto LABEL_9;
      }
    }

    if ([(ICREMCDAccountMergeLocalObjectsContext *)v4 shouldRetryMergeLocalObjects])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v11 = +[REMLog cloudkit];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(ICREMCDAccountMergeLocalObjectsContext *)v4 loggableDescription];
        *v13 = 138543362;
        *&v13[4] = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "MERGE.LOCAL: (MergeLocalObjectsContext) Account is not ready to merge local objects {mergeContext: %{public}@}", v13, 0xCu);
      }
    }

    [*(a1 + 40) reset];
    goto LABEL_15;
  }

  v4 = +[REMLog cloudkit];
  if (os_log_type_enabled(&v4->super, OS_LOG_TYPE_ERROR))
  {
    sub_100762D50((a1 + 32));
  }

LABEL_15:
}

void sub_100083F88(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 objectIDsOfClassesEligibleForLocalObjectMerge];
  if ([v5 count])
  {
    *(*(*(a1 + 32) + 8) + 24) += [v5 count];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v5 forKey:v6];
  }
}

void sub_100084020(id a1, NSString *a2, ICREMCDAccountMergeLocalObjectsContext *a3, BOOL *a4)
{
  v4 = a3;
  if ([(ICREMCDAccountMergeLocalObjectsContext *)v4 shouldRetryMergeLocalObjects])
  {
    v5 = +[REMLog cloudkit];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(ICREMCDAccountMergeLocalObjectsContext *)v4 loggableDescription];
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "MERGE.LOCAL: This account cannot merge local objects at this time, will schedule retry if needed (mergeContext: %{public}@)", &v7, 0xCu);
    }
  }
}

void sub_1000846C0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }

  v5 = +[REMLog cloudkit];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "os_transaction RELEASE {name: com.apple.remindd.cloudkit.merge.local.coredata}", v8, 2u);
  }

  v6 = *(a1 + 32);
  v7 = objc_opt_self();
}

void sub_100084770(uint64_t a1)
{
  v2 = +[REMLog cloudkit];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) count];
    *buf = 134217984;
    v17 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "MERGE.LOCAL[COREDATA] CONTINUE {keys.count: %ld}", buf, 0xCu);
  }

  v4 = objc_alloc_init(NSMutableArray);
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100084934;
  v13 = &unk_1008DAAE8;
  v5 = *(a1 + 32);
  v14 = *(a1 + 40);
  v6 = v4;
  v15 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:&v10];
  v7 = [REMLog cloudkit:v10];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = +[NSDate date];
    [v8 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 134217984;
    v17 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "MERGE.LOCAL[COREDATA] END {duration: %.4f}", buf, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
}

void sub_100084934(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[REMLog cloudkit];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v17 = v5;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "MERGE.LOCAL: Here's the objectIDs to fetch and process (accountID: %{public}@, eligibleObjectIDs: %{public}@).", buf, 0x16u);
  }

  [*(a1 + 32) mergeLocalObjectsWriteContextAffectingStoreOf:v5];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100084AC4;
  v11[3] = &unk_1008D9B70;
  v13 = v12 = v5;
  v14 = v6;
  v15 = *(a1 + 40);
  v8 = v6;
  v9 = v13;
  v10 = v5;
  [v9 performBlockAndWait:v11];
}

void sub_100084AC4(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [REMCDAccount cloudKitAccountWithCKIdentifier:*(a1 + 32) context:*(a1 + 40)];
  v4 = v3;
  if (!v3)
  {
    v8 = +[REMLog cloudkit];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100762E64((a1 + 32));
    }

    goto LABEL_13;
  }

  if ([v3 daWasMigrated])
  {
    v6 = *(a1 + 40);
    v5 = *(a1 + 48);
    v12 = 0;
    v7 = [ICCloudContext _performLocalObjectMergeWithEligibleObjectIDs:v5 cloudKitAccount:v4 managedObjectContext:v6 error:&v12];
    v8 = v12;
    if (v8)
    {
      [*(a1 + 56) addObject:v8];
    }

    v9 = +[REMLog cloudkit];
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *v2;
        *buf = 138543362;
        v14 = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "MERGE.LOCAL[COREDATA] MERGE LOCAL SAVED for accountID %{public}@.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100762DF4(v2);
    }

LABEL_13:
  }
}

id sub_1000851A4(uint64_t a1)
{
  [*(a1 + 32) addProcessLocalObjectsOperationToMergeLocalObjectsWithCompletionHandler:&stru_1008DAB50];
  [*(a1 + 32) setNeedsToProcessAllDirtyObjects:1];
  v2 = ICNSBlockOperationNameProcessDirtyObjects;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);

  return [v3 addOperationToProcessObjectsWithOperationName:v2 syncReason:v4 completionHandler:v5];
}

void sub_100085204(id a1, NSArray *a2)
{
  v2 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v12;
    *&v4 = 138543362;
    v10 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = +[REMLog cloudkit];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = v10;
          v16 = v8;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "MERGE.LOCAL: Collected error upon merge local objects completion: {error: %{public}@}.", buf, 0xCu);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    }

    while (v5);
  }
}

void sub_1000855B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  [a3 reset];
  [*(a1 + 32) _processCloudObjectIDs:v5 operationQueue:*(a1 + 40) completionHandler:*(a1 + 48)];
}

void sub_1000857B8(uint64_t a1)
{
  v53 = objc_opt_new();
  v56 = objc_opt_new();
  v2 = +[NSMutableArray array];
  v61 = +[NSMutableArray array];
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v55 = a1;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v76 objects:v89 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v77;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v77 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v76 + 1) + 8 * i);
        v9 = [v8 entity];
        v10 = [v9 name];
        v11 = [v10 isEqual:@"REMCKCloudState"];

        if (v11)
        {
          v12 = v61;
        }

        else
        {
          v12 = v2;
        }

        [v12 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v76 objects:v89 count:16];
    }

    while (v5);
  }

  v58 = +[NSMutableDictionary dictionary];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v2;
  v13 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
  v14 = v56;
  if (v13)
  {
    v15 = v13;
    v16 = *v73;
    do
    {
      v17 = 0;
      do
      {
        if (*v73 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v72 + 1) + 8 * v17);
        v19 = [v18 persistentStore];
        v20 = v19;
        if (v19)
        {
          v21 = [v19 identifier];
          if ([v21 length])
          {
            v22 = [v58 objectForKey:v21];
            if ([v22 length])
            {
              v23 = v22;
              goto LABEL_26;
            }

            v24 = [*(v55 + 40) storeController];
            v23 = [v24 accountIdentifierForStoreID:v21];

            if ([v23 length])
            {
              [v58 setObject:v23 forKey:v21];
              v14 = v56;
LABEL_26:
              v25 = [v14 objectForKeyedSubscript:v23];
              if (!v25)
              {
                v25 = +[NSMutableArray array];
                [v14 setObject:v25 forKeyedSubscript:v23];
              }

              [v25 addObject:v18];
            }

            else
            {
              v25 = +[REMLog cloudkit];
              v14 = v56;
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v83 = v18;
                v84 = 2114;
                v85 = v21;
                v86 = 2114;
                v87 = v23;
                _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "_processFetchedCloudObjectsWithObjectIDs with nil or empty accountID for managedObjectID %{public}@, storeID %{public}@, accountID: %{public}@", buf, 0x20u);
              }
            }
          }

          else
          {
            v23 = +[REMLog cloudkit];
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v83 = v18;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "_processFetchedCloudObjectsWithObjectIDs with nil or empty storeID for managedObjectID %{public}@", buf, 0xCu);
            }
          }

          goto LABEL_31;
        }

        v21 = +[REMLog cloudkit];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v83 = v18;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "_processFetchedCloudObjectsWithObjectIDs with nil store for managedObjectID %{public}@", buf, 0xCu);
        }

LABEL_31:

        v17 = v17 + 1;
      }

      while (v15 != v17);
      v26 = [obj countByEnumeratingWithState:&v72 objects:v88 count:16];
      v15 = v26;
    }

    while (v26);
  }

  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_100086010;
  v70[3] = &unk_1008DABA0;
  v57 = v53;
  v71 = v57;
  [v14 enumerateKeysAndObjectsUsingBlock:v70];
  context = objc_autoreleasePoolPush();
  v27 = +[REMCKCloudState defaultRelationshipKeyPathsForPrefetching];
  v28 = [REMCKCloudState ic_objectsFromObjectIDs:v61 propertiesToFetch:0 relationshipKeyPathsForPrefetching:v27 context:*(v55 + 48)];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v59 = v28;
  v29 = [v59 countByEnumeratingWithState:&v66 objects:v81 count:16];
  if (!v29)
  {
    goto LABEL_53;
  }

  v30 = v29;
  v31 = *v67;
  do
  {
    for (j = 0; j != v30; j = j + 1)
    {
      if (*v67 != v31)
      {
        objc_enumerationMutation(v59);
      }

      v33 = *(*(&v66 + 1) + 8 * j);
      objc_opt_class();
      v34 = REMCheckedDynamicCast();
      objc_opt_class();
      v35 = [v34 cloudObject];
      v36 = REMCheckedDynamicCast();

      v37 = [v36 accountCKIdentifier];
      if (![v37 length])
      {
        v38 = +[REMLog cloudkit];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
        {
          v54 = [v34 ic_loggingDescription];
          v40 = [v36 ic_loggingDescription];
          *buf = 138543874;
          v83 = v37;
          v84 = 2114;
          v85 = v54;
          v86 = 2112;
          v87 = v40;
          v41 = v40;
          _os_log_fault_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "fetched REMCKCloudState with cloudObject.accountID is nil or empty: %{public}@, cloudState: %{public}@, cloudObject: %@", buf, 0x20u);
        }

        goto LABEL_50;
      }

      if (v36 && (([v36 isInICloudAccount] & 1) != 0 || objc_msgSend(v36, "needsToBeDeletedFromCloud")))
      {
        v38 = [v57 objectForKeyedSubscript:v37];
        if (!v38)
        {
          v38 = +[NSMutableOrderedSet orderedSet];
          [v57 setObject:v38 forKeyedSubscript:v37];
        }

        v39 = [v36 objectID];
        [v38 addObject:v39];

LABEL_50:
      }
    }

    v30 = [v59 countByEnumeratingWithState:&v66 objects:v81 count:16];
  }

  while (v30);
LABEL_53:

  objc_autoreleasePoolPop(context);
  v42 = objc_opt_new();
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v43 = v57;
  v44 = [v43 countByEnumeratingWithState:&v62 objects:v80 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v63;
    do
    {
      for (k = 0; k != v45; k = k + 1)
      {
        if (*v63 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = *(*(&v62 + 1) + 8 * k);
        v49 = [v43 objectForKeyedSubscript:v48];
        v50 = [v49 array];
        [v42 setObject:v50 forKeyedSubscript:v48];
      }

      v45 = [v43 countByEnumeratingWithState:&v62 objects:v80 count:16];
    }

    while (v45);
  }

  v51 = *(v55 + 48);
  (*(*(v55 + 56) + 16))();
}

void sub_100086010(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [NSMutableOrderedSet orderedSetWithArray:a3];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

void sub_100086448(uint64_t a1)
{
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_100086764;
  v31[3] = &unk_1008DABC8;
  v2 = (a1 + 48);
  v3 = *(a1 + 32);
  *&v4 = *(a1 + 40);
  *(&v4 + 1) = *v2;
  v22 = v4;
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v32 = v22;
  v33 = v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v31];
  [*(a1 + 40) reset];
  if ([*(a1 + 56) count])
  {
    v8 = +[ICCloudConfiguration sharedConfiguration];
    v9 = [v8 throttlingPolicy];
    [v9 incrementBatchCount];

    v10 = +[REMLog cloudkit];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 56);
      *buf = 138543362;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "_processCloudObjects adding fetch&/modify cloud objects operation to operation queue: %{public}@", buf, 0xCu);
    }

    [*(a1 + 64) addOperations:*(a1 + 56) waitUntilFinished:0];
    v12 = *(a1 + 48);
    [objc_opt_class() errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessaryForOperationQueue:*(a1 + 64)];
  }

  if (*(a1 + 72))
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100086E5C;
    v27[3] = &unk_1008DA318;
    v13 = *(a1 + 56);
    v14 = *(a1 + 48);
    v28 = v13;
    v29 = v14;
    v30 = *(a1 + 72);
    v15 = [ICNSBlockOperation blockOperationWithBlock:v27];
    [v15 setName:ICNSBlockOperationNameProcessCompletionForOperations];
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = *(a1 + 56);
    v17 = [v16 countByEnumeratingWithState:&v23 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v24;
      do
      {
        v20 = 0;
        do
        {
          if (*v24 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [v15 addDependency:{*(*(&v23 + 1) + 8 * v20), v22, v23}];
          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v23 objects:v34 count:16];
      }

      while (v18);
    }

    [*(a1 + 64) addOperation:v15];
    v21 = *(a1 + 48);
    [objc_opt_class() errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessaryForOperationQueue:*(a1 + 64)];
  }
}

void sub_100086764(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = REMCRMergeableOrderedSet_ptr;
  v8 = +[REMLog cloudkit];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v59 = [v6 count];
    v60 = 2114;
    v61 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Processing %lu cloud objects for accountID %{public}@", buf, 0x16u);
  }

  v43 = v5;

  v44 = +[NSMutableSet set];
  v47 = +[NSMutableArray array];
  v48 = +[NSMutableArray array];
  v45 = +[NSMutableArray array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v52 objects:v57 count:16];
  v46 = v9;
  if (v10)
  {
    v11 = v10;
    v50 = *v53;
    do
    {
      v12 = 0;
      do
      {
        if (*v53 != v50)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v52 + 1) + 8 * v12);
        v14 = objc_autoreleasePoolPush();
        v15 = a1[4];
        v51 = 0;
        v16 = [v15 existingObjectWithID:v13 error:&v51];
        v17 = v51;
        if (!v16)
        {
          v18 = [v7[50] cloudkit];
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *buf = 138543618;
            v59 = v17;
            v60 = 2114;
            v61 = v13;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Cannot fault-in object while processing cloudObjectIDs {error: %{public}@, cloudObjectID: %{public}@}", buf, 0x16u);
          }

          goto LABEL_42;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v18 = v16;
          if ([a1[5] _isRecognizedCloudObjectClass:v18])
          {
            if (([v18 isInICloudAccount]& 1) != 0)
            {
              if ([v18 ckNeedsToBeFetchedFromCloud])
              {
                v19 = [v18 recordID];
                if (v19)
                {
                  [v44 addObject:v19];
                }

                v7 = REMCRMergeableOrderedSet_ptr;
              }

              if ([v18 canBeRootShareObject])
              {
                v20 = [v18 ckServerRecord];
                v21 = [v20 share];
                v22 = [v21 recordID];

                if (v22)
                {
                  v23 = [v18 ckServerShare];

                  if (!v23)
                  {
                    [v44 addObject:v22];
                  }
                }

                v9 = v46;
                v7 = REMCRMergeableOrderedSet_ptr;
              }

              if (![v18 needsToBePushedToCloud]|| ([v18 shouldBeIgnoredForSync]& 1) != 0)
              {
LABEL_27:
                v27 = [v18 needsToBeDeletedFromCloud];
                v25 = v48;
                if (v27)
                {
                  goto LABEL_28;
                }
              }

              else
              {
                v24 = [v18 hasAllMandatoryFields];
                v25 = v47;
                if ((v24 & 1) == 0)
                {
                  v26 = [v7[50] cloudkit];
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
                  {
                    sub_100762ED4(v56, v18);
                  }

                  v7 = REMCRMergeableOrderedSet_ptr;
                  goto LABEL_27;
                }

LABEL_28:
                [v25 addObject:v18];
              }

              if ([v18 needsToDeleteShare])
              {
                [v45 addObject:v18];
                [v47 removeObject:v18];
              }
            }

            [a1[4] refreshObject:v18 mergeChanges:0];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_respondsToSelector() & 1) != 0 && (v29 = [objc_opt_class() methodForSelector:"shouldSyncToCloud"], v30 = objc_opt_class(), v31 = v29(v30, "shouldSyncToCloud"), v7 = REMCRMergeableOrderedSet_ptr, !v31))
            {
              v32 = +[REMLog cloudkit];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                v33 = objc_opt_class();
                v34 = NSStringFromClass(v33);
                *buf = 138543362;
                v59 = v34;
                _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "This REMCDObject subclass has shouldSyncToCloud=NO. Not saving this object to the cloud {class: %{public}@}", buf, 0xCu);
              }
            }

            else
            {
              v32 = [v7[50] cloudkit];
              if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
              {
                v35 = objc_opt_class();
                v49 = NSStringFromClass(v35);
                *buf = 138543618;
                v59 = v49;
                v60 = 2114;
                v61 = v13;
                _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "BOGUS: Unrecognized subclass of REMCDObject but shouldSyncToCloud=YES. Not saving this object to the cloud {class: %{public}@, objectID: %{public}@}", buf, 0x16u);
              }
            }

            v7 = REMCRMergeableOrderedSet_ptr;
          }

LABEL_42:

          goto LABEL_43;
        }

        v28 = [v7[50] cloudkit];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v59 = v13;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, "Found non-REMCDObject to process. Skipping {objectID: %{public}@}", buf, 0xCu);
        }

        [a1[4] refreshObject:v16 mergeChanges:0];
LABEL_43:

        objc_autoreleasePoolPop(v14);
        v12 = v12 + 1;
      }

      while (v11 != v12);
      v36 = [v9 countByEnumeratingWithState:&v52 objects:v57 count:16];
      v11 = v36;
    }

    while (v36);
  }

  v37 = a1[5];
  v38 = [v44 allObjects];
  v39 = [v37 operationsToFetchRecordIDs:v38 operationGroupName:0 accountID:v43];

  [a1[6] addObjectsFromArray:v39];
  v40 = [a1[5] operationsToModifyRecordsForCloudObjectsToSave:v47 delete:v48 deleteShares:v45 operationGroupName:@"SaveChangedObjects" addDependencies:1 accountID:v43];
  [a1[6] addObjectsFromArray:v40];
  if ([v45 count])
  {
    v41 = [a1[5] fetchAndCompletionOperationWithDeleteShareObjects:v45 accountID:v43 dependencyOperations:a1[6] completionHandler:0];
    [a1[7] addOperation:v41];
    v42 = a1[5];
    [objc_opt_class() errorAndPromptToFileRadarWithICTap2RadarTypeTooManyOperationsInOperationQueueIfNecessaryForOperationQueue:a1[7]];
  }
}