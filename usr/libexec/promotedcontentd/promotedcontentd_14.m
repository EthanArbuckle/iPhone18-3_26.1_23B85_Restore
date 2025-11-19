uint64_t sub_10027877C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

Swift::Int sub_1002787D8()
{
  sub_100399B58();
  sub_100397568();
  return sub_100399B88();
}

Swift::Int sub_10027882C()
{
  sub_100399B58();
  sub_100397568();
  return sub_100399B88();
}

uint64_t sub_100278874@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_100397508();
  v4 = v3;

  if (v4 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = v2;
  }

  v7 = 0xF000000000000000;
  if (v4 >> 60 != 15)
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
  return result;
}

unint64_t sub_1002788F4()
{
  result = qword_1004D8768;
  if (!qword_1004D8768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8768);
  }

  return result;
}

unint64_t sub_10027894C()
{
  result = qword_1004D8770;
  if (!qword_1004D8770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8770);
  }

  return result;
}

uint64_t type metadata accessor for TransmittedAttribution()
{
  result = qword_1004D87D0;
  if (!qword_1004D87D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100278A14()
{
  type metadata accessor for AttributionCandidate(319);
  if (v0 <= 0x3F)
  {
    sub_10024A0C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

BOOL sub_100278AB4(uint64_t a1, uint64_t a2)
{
  sub_100397748();
  sub_100278C34();
  if ((sub_100398F08() & 1) == 0)
  {
    return 0;
  }

  sub_1001E27A8(&qword_1004D6250);
  if ((sub_100398F08() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for AttributionCandidate(0);
  if ((sub_100237E2C(a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5 + 8);
  v7 = *(a2 + v5 + 8);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    v8 = *(a1 + v5) == *(a2 + v5) && v6 == v7;
    if (!v8 && (sub_1003999B8() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  type metadata accessor for AppSpecifier(0);
  if ((sub_100398188() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for TransmittedAttribution();
  if ((sub_100259AD0(*(a1 + v9[5]), *(a1 + v9[5] + 8), *(a2 + v9[5]), *(a2 + v9[5] + 8)) & 1) == 0 || *(a1 + v9[6]) != *(a2 + v9[6]))
  {
    return 0;
  }

  v11 = v9[7];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12 != 2)
  {
    return v13 != 2 && ((v13 ^ v12) & 1) == 0;
  }

  return v13 == 2;
}

unint64_t sub_100278C34()
{
  result = qword_1004D6460;
  if (!qword_1004D6460)
  {
    sub_100397748();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D6460);
  }

  return result;
}

uint64_t sub_100278C8C(void *a1)
{
  if (!a1)
  {
    sub_1003993E8();
    sub_100206B54();
    v11 = sub_1003995A8();
    sub_100398B98();

    v12 = sub_100398F28();
    v13 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(18);
    return 0;
  }

  v1 = a1;
  v2 = [v1 responseStatusCode];
  v3 = [v1 responseError];
  if (v3)
  {
    v4 = v3;
    sub_1003993E8();
    sub_100206B54();
    v5 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1003C9930;
    swift_getErrorValue();
    v7 = sub_100399AC8();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100206BA0();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v10 = 2;
    sub_100398B98();

    return v10;
  }

  if (v2 == 204)
  {
    sub_1003993F8();
    sub_100206B54();
    v14 = sub_1003995A8();
    sub_100398B98();

    return 1;
  }

  if ((v2 - 400) <= 0x63)
  {
    sub_1003993E8();
    sub_100206B54();
    v16 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1003C9930;
    v18 = [v1 responseStatusCode];
    *(v17 + 56) = &type metadata for Int;
    *(v17 + 64) = &protocol witness table for Int;
    *(v17 + 32) = v18;
    sub_100398B98();

    return 0;
  }

  if ((v2 - 500) > 0x63)
  {
    sub_1003993E8();
    sub_100206B54();
    v24 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1003C9930;
    v26 = [v1 responseStatusCode];
    *(v25 + 56) = &type metadata for Int;
    *(v25 + 64) = &protocol witness table for Int;
    *(v25 + 32) = v26;
    v10 = 2;
    sub_100398B98();

    v27 = sub_100398F28();
    v28 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(19);
  }

  else
  {
    v19 = sub_100398F28();
    v20 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(20);
    sub_1003993E8();
    sub_100206B54();
    v21 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1003C9930;
    v23 = [v1 responseStatusCode];
    *(v22 + 56) = &type metadata for Int;
    *(v22 + 64) = &protocol witness table for Int;
    *(v22 + 32) = v23;
    v10 = 2;
    sub_100398B98();
  }

  return v10;
}

uint64_t AttributionSignposts.appInstall()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = v1 + *(v3 + 20);
  v25 = *(v7 + 16);
  v25(&v23 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14);
  v26 = v1;
  v15 = sub_100398C08();
  v24 = sub_100399508();
  if (sub_100399598())
  {
    v16 = swift_slowAlloc();
    v23 = v10;
    v17 = v16;
    *v16 = 134349056;
    *(v16 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v18 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v24, v18, "AppInstall", "id=%{name=id,public}llu", v17, 0xCu);
    v10 = v23;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v25(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v19 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v20 = *(type metadata accessor for SignpostInterval() + 24);
  v21 = sub_100398C18();
  result = (*(*(v21 - 8) + 16))(a1 + v20, v26, v21);
  *a1 = "AppInstall";
  *(a1 + 8) = 10;
  *(a1 + 16) = 2;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_10027964C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionSignposts(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002796B0(uint64_t a1)
{
  v2 = type metadata accessor for AttributionSignposts(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall AttributionSignposts.operationCompleted()()
{
  v1 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100398BD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v0 + *(v1 + 20), v4);
  sub_10027964C(v0, v3);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v8);
  v9 = sub_100398C08();
  v10 = sub_100399518();
  if (sub_100399598())
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    *(v11 + 4) = sub_100398BB8();
    sub_1002796B0(v3);
    v12 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v9, v10, v12, "OperationCompleted", "id=%{name=id,public}llu", v11, 0xCu);
  }

  else
  {

    sub_1002796B0(v3);
  }

  (*(v5 + 8))(v7, v4);
}

uint64_t AttributionSignposts.buildPayload()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = v1 + *(v3 + 20);
  v25 = *(v7 + 16);
  v25(&v23 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14);
  v26 = v1;
  v15 = sub_100398C08();
  v24 = sub_100399508();
  if (sub_100399598())
  {
    v16 = swift_slowAlloc();
    v23 = v10;
    v17 = v16;
    *v16 = 134349056;
    *(v16 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v18 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v24, v18, "BuildPayload", "id=%{name=id,public}llu", v17, 0xCu);
    v10 = v23;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v25(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v19 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v20 = *(type metadata accessor for SignpostInterval() + 24);
  v21 = sub_100398C18();
  result = (*(*(v21 - 8) + 16))(a1 + v20, v26, v21);
  *a1 = "BuildPayload";
  *(a1 + 8) = 12;
  *(a1 + 16) = 2;
  *(a1 + 24) = v19;
  return result;
}

uint64_t AttributionSignposts.generateToken()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = v1 + *(v3 + 20);
  v25 = *(v7 + 16);
  v25(&v23 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14);
  v26 = v1;
  v15 = sub_100398C08();
  v24 = sub_100399508();
  if (sub_100399598())
  {
    v16 = swift_slowAlloc();
    v23 = v10;
    v17 = v16;
    *v16 = 134217984;
    *(v16 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v18 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v24, v18, "GenerateToken", "id=%{name=id}llu", v17, 0xCu);
    v10 = v23;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v25(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v19 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v20 = *(type metadata accessor for TokenSignpostInterval(0) + 24);
  v21 = sub_100398C18();
  result = (*(*(v21 - 8) + 16))(a1 + v20, v26, v21);
  *a1 = "GenerateToken";
  *(a1 + 8) = 13;
  *(a1 + 16) = 2;
  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_100279F1C(int a1, int a2)
{
  v31 = a1;
  v32 = a2;
  v3 = sub_100398C28();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100398BD8();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TokenSignpostInterval(0);
  v33 = *v2;
  v11 = *(v2 + 16);
  v12 = sub_100398C08();
  sub_100398C48();
  v30 = sub_1003994F8();
  result = sub_100399598();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v29 = v12;
  if ((v11 & 1) == 0)
  {
    if (!v33)
    {
      __break(1u);
LABEL_5:

      return (*(v8 + 8))(v10, v7);
    }

    goto LABEL_10;
  }

  if (v33 >> 32)
  {
    __break(1u);
    goto LABEL_28;
  }

  if ((v33 & 0xFFFFF800) == 0xD800)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  if (v33 >> 16 > 0x10)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v33 = &v35;
LABEL_10:

  sub_100398C78();

  v14 = (*(v4 + 88))(v6, v3);
  v27 = v8;
  v28 = v7;
  if (v14 == enum case for OSSignpostError.doubleEnd(_:))
  {
    v15 = 0;
    v26 = "[Error] Interval already ended";
  }

  else
  {
    (*(v4 + 8))(v6, v3);
    v26 = "cached=%{name=cached,public}s signerReady=%{name=signerReady,public}s";
    v15 = 2;
  }

  v16 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v16 = v15;
  *(v16 + 1) = v15;
  *(v16 + 2) = 2082;
  if (v31)
  {
    v17 = 1702195828;
  }

  else
  {
    v17 = 0x65736C6166;
  }

  if (v31)
  {
    v18 = 0xE400000000000000;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v19 = sub_100005700(v17, v18, &v34);

  *(v16 + 4) = v19;
  *(v16 + 12) = 2082;
  if (v32)
  {
    v20 = 1702195828;
  }

  else
  {
    v20 = 0x65736C6166;
  }

  if (v32)
  {
    v21 = 0xE400000000000000;
  }

  else
  {
    v21 = 0xE500000000000000;
  }

  v22 = sub_100005700(v20, v21, &v34);

  *(v16 + 14) = v22;
  v23 = sub_100398BB8();
  v24 = v29;
  _os_signpost_emit_with_name_impl(&_mh_execute_header, v29, v30, v23, v33, v26, v16, 0x16u);
  swift_arrayDestroy();

  return (*(v27 + 8))(v10, v28);
}

uint64_t AttributionSignposts.preMatch()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = v1 + *(v3 + 20);
  v25 = *(v7 + 16);
  v25(&v23 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14);
  v26 = v1;
  v15 = sub_100398C08();
  v24 = sub_100399508();
  if (sub_100399598())
  {
    v16 = swift_slowAlloc();
    v23 = v10;
    v17 = v16;
    *v16 = 134217984;
    *(v16 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v18 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v24, v18, "PreMatch", "id=%{name=id}llu", v17, 0xCu);
    v10 = v23;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v25(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v19 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v20 = *(type metadata accessor for SignpostInterval() + 24);
  v21 = sub_100398C18();
  result = (*(*(v21 - 8) + 16))(a1 + v20, v26, v21);
  *a1 = "PreMatch";
  *(a1 + 8) = 8;
  *(a1 + 16) = 2;
  *(a1 + 24) = v19;
  return result;
}

uint64_t AttributionSignposts.processPreMatch()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = v1 + *(v3 + 20);
  v25 = *(v7 + 16);
  v25(&v23 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14);
  v26 = v1;
  v15 = sub_100398C08();
  v24 = sub_100399508();
  if (sub_100399598())
  {
    v16 = swift_slowAlloc();
    v23 = v10;
    v17 = v16;
    *v16 = 134217984;
    *(v16 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v18 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v24, v18, "FetchMetrics", "id=%{name=id}llu", v17, 0xCu);
    v10 = v23;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v25(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v19 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v20 = *(type metadata accessor for SignpostInterval() + 24);
  v21 = sub_100398C18();
  result = (*(*(v21 - 8) + 16))(a1 + v20, v26, v21);
  *a1 = "FetchMetrics";
  *(a1 + 8) = 12;
  *(a1 + 16) = 2;
  *(a1 + 24) = v19;
  return result;
}

uint64_t AttributionSignposts.match(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v4 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100398BD8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v25 - v12;
  v14 = v2 + *(v4 + 20);
  v29 = *(v8 + 16);
  v29(&v25 - v12, v14, v7);
  sub_10027964C(v2, v6);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v15);
  sub_1001E3438();
  sub_1002792C0();
  sub_10023998C(v16);
  v30 = v2;
  v17 = sub_100398C08();
  v27 = sub_100399508();
  if (sub_100399598())
  {
    v18 = swift_slowAlloc();
    v26 = v11;
    v19 = v18;
    *v18 = 134218240;
    *(v18 + 4) = sub_100398BB8();
    sub_1002796B0(v6);
    *(v19 + 12) = 2050;
    *(v19 + 14) = v28;
    v20 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v17, v27, v20, "Matching", "id=%{name=id}llu count=%{name=count,public}ld", v19, 0x16u);
    v11 = v26;
  }

  else
  {

    sub_1002796B0(v6);
  }

  v29(v11, v13, v7);
  sub_100398C68();
  swift_allocObject();
  v21 = sub_100398C58();
  (*(v8 + 8))(v13, v7);
  v22 = *(type metadata accessor for SignpostInterval() + 24);
  v23 = sub_100398C18();
  result = (*(*(v23 - 8) + 16))(a2 + v22, v30, v23);
  *a2 = "Matching";
  *(a2 + 8) = 8;
  *(a2 + 16) = 2;
  *(a2 + 24) = v21;
  return result;
}

uint64_t AttributionSignposts.processMatch()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = v1 + *(v3 + 20);
  v25 = *(v7 + 16);
  v25(&v23 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14);
  v26 = v1;
  v15 = sub_100398C08();
  v24 = sub_100399508();
  if (sub_100399598())
  {
    v16 = swift_slowAlloc();
    v23 = v10;
    v17 = v16;
    *v16 = 134217984;
    *(v16 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v18 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v24, v18, "FetchAdInstances", "id=%{name=id}llu", v17, 0xCu);
    v10 = v23;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v25(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v19 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v20 = *(type metadata accessor for SignpostInterval() + 24);
  v21 = sub_100398C18();
  result = (*(*(v21 - 8) + 16))(a1 + v20, v26, v21);
  *a1 = "FetchAdInstances";
  *(a1 + 8) = 16;
  *(a1 + 16) = 2;
  *(a1 + 24) = v19;
  return result;
}

uint64_t AttributionSignposts.postMatch()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = v1 + *(v3 + 20);
  v25 = *(v7 + 16);
  v25(&v23 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14);
  v26 = v1;
  v15 = sub_100398C08();
  v24 = sub_100399508();
  if (sub_100399598())
  {
    v16 = swift_slowAlloc();
    v23 = v10;
    v17 = v16;
    *v16 = 134217984;
    *(v16 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v18 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v24, v18, "PostMatch", "id=%{name=id}llu", v17, 0xCu);
    v10 = v23;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v25(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v19 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v20 = *(type metadata accessor for SignpostInterval() + 24);
  v21 = sub_100398C18();
  result = (*(*(v21 - 8) + 16))(a1 + v20, v26, v21);
  *a1 = "PostMatch";
  *(a1 + 8) = 9;
  *(a1 + 16) = 2;
  *(a1 + 24) = v19;
  return result;
}

uint64_t AttributionSignposts.processPostMatch()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100398BD8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v23 - v11;
  v13 = v1 + *(v3 + 20);
  v25 = *(v7 + 16);
  v25(&v23 - v11, v13, v6);
  sub_10027964C(v1, v5);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v14);
  v26 = v1;
  v15 = sub_100398C08();
  v24 = sub_100399508();
  if (sub_100399598())
  {
    v16 = swift_slowAlloc();
    v23 = v10;
    v17 = v16;
    *v16 = 134217984;
    *(v16 + 4) = sub_100398BB8();
    sub_1002796B0(v5);
    v18 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v24, v18, "ProcessPostMatch", "id=%{name=id}llu", v17, 0xCu);
    v10 = v23;
  }

  else
  {

    sub_1002796B0(v5);
  }

  v25(v10, v12, v6);
  sub_100398C68();
  swift_allocObject();
  v19 = sub_100398C58();
  (*(v7 + 8))(v12, v6);
  v20 = *(type metadata accessor for SignpostInterval() + 24);
  v21 = sub_100398C18();
  result = (*(*(v21 - 8) + 16))(a1 + v20, v26, v21);
  *a1 = "ProcessPostMatch";
  *(a1 + 8) = 16;
  *(a1 + 16) = 2;
  *(a1 + 24) = v19;
  return result;
}

void sub_10027B4E8()
{
  sub_1003976C8();
  v1 = v0 * 1000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    v2 = fabs(v1);
    if (v2 < 9.22337204e18)
    {
      v3 = v2;
      v4 = objc_opt_self();
      v5 = sub_100398F28();
      sub_1001E27A8(&unk_1004D5DB0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1003C9930;
      *(inited + 32) = 0x676E696D6974;
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:v3];
      sub_1002143B8(inited);
      swift_setDeallocating();
      sub_10025A0D0(inited + 32);
      sub_10025A138();
      isa = sub_100398E48().super.isa;

      [v4 sendEvent:v5 customPayload:isa];

      return;
    }
  }

  __break(1u);
}

uint64_t sub_10027B66C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AttributionSignposts(0) + 20);
  v4 = sub_100398BD8();
  (*(*(v4 - 8) + 16))(a1 + v3, v1, v4);
  v5 = APPerfLogForCategory();

  return sub_100398BF8();
}

uint64_t sub_10027B740@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v36 = a2;
  v37 = a4;
  v32 = a1;
  v6 = type metadata accessor for AttributionSignposts(0);
  v7 = __chkstk_darwin(v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v30 - v10;
  v12 = sub_100398BD8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v34 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v30 - v16;
  v18 = v4 + *(v6 + 20);
  v33 = *(v13 + 16);
  v33(&v30 - v16, v18, v12);
  sub_10027964C(v4, v11);
  sub_10027964C(v4, v9);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v19);
  v35 = v4;
  v20 = sub_100398C08();
  v31 = sub_100399508();
  if (sub_100399598())
  {
    v21 = swift_slowAlloc();
    v30 = a3;
    v22 = v21;
    *v21 = 134218240;
    v23 = sub_100398BB8();
    sub_1002796B0(v11);
    *(v22 + 1) = v23;
    *(v22 + 6) = 2050;
    *(v22 + 14) = sub_100398BB8();
    sub_1002796B0(v9);
    v24 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, v31, v24, v32, "task=%llu id=%{name=id,public}llu", v22, 0x16u);
    a3 = v30;
  }

  else
  {
    sub_1002796B0(v11);

    sub_1002796B0(v9);
  }

  v33(v34, v17, v12);
  sub_100398C68();
  swift_allocObject();
  v25 = sub_100398C58();
  (*(v13 + 8))(v17, v12);
  v26 = *(type metadata accessor for SignpostInterval() + 24);
  v27 = sub_100398C18();
  v28 = v37;
  result = (*(*(v27 - 8) + 16))(v37 + v26, v35, v27);
  *v28 = v36;
  *(v28 + 8) = a3;
  *(v28 + 16) = 2;
  *(v28 + 24) = v25;
  return result;
}

uint64_t AttributionSignposts.appOpen(_:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v4 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100398BD8();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  v14 = v2 + *(v4 + 20);
  v27 = *(v8 + 16);
  v27(&v24 - v12, v14, v7);
  sub_10027964C(v2, v6);
  sub_100239938();
  sub_1002792C0();
  sub_10023998C(v15);
  v28 = v2;
  v16 = sub_100398C08();
  v25 = sub_100399508();
  if (sub_100399598())
  {
    v17 = swift_slowAlloc();
    v24 = v11;
    v18 = v17;
    *v17 = 134349312;
    *(v17 + 4) = sub_100398BB8();
    sub_1002796B0(v6);
    *(v18 + 12) = 1024;
    *(v18 + 14) = v26 & 1;
    v19 = sub_100398BB8();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, v25, v19, "AppOpen", "id=%{name=id,public}llu prod=%{BOOL}d", v18, 0x12u);
    v11 = v24;
  }

  else
  {

    sub_1002796B0(v6);
  }

  v27(v11, v13, v7);
  sub_100398C68();
  swift_allocObject();
  v20 = sub_100398C58();
  (*(v8 + 8))(v13, v7);
  v21 = *(type metadata accessor for SignpostInterval() + 24);
  v22 = sub_100398C18();
  result = (*(*(v22 - 8) + 16))(a2 + v21, v28, v22);
  *a2 = "AppOpen";
  *(a2 + 8) = 7;
  *(a2 + 16) = 2;
  *(a2 + 24) = v20;
  return result;
}

uint64_t sub_10027BE1C()
{
  result = sub_100398C68();
  if (v1 <= 0x3F)
  {
    result = sub_100398C18();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10027BEF8()
{
  result = sub_100398BD8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10027BF64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1000035B8(a1, a1[3]);
  sub_100397BA8();
  if (!v2)
  {
    v5 = sub_100397508();
    v7 = v6;

    if (v7 >> 60 != 15)
    {
      sub_1000035B8(a1, a1[3]);
      v8 = sub_100397BA8();
      v10 = v9;
      v13 = v8;
      sub_1000035B8(a1, a1[3]);
      result = sub_100397BA8();
      *a2 = v5;
      a2[1] = v7;
      a2[2] = v13;
      a2[3] = v10;
      a2[4] = result;
      a2[5] = v12;
      return result;
    }

    sub_100397B38();
    sub_100251778();
    swift_allocError();
    sub_100397B28();
    swift_willThrow();
  }

  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_10027C11C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035B8(a1, a1[3]);
  result = sub_100397BE8();
  if (v2)
  {

    result = 0;
  }

  *a2 = result;
  *(a2 + 8) = v2 != 0;
  return result;
}

uint64_t sub_10027C1A4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10027C200(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10027C248(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for SignpostInterval()
{
  result = qword_1004D8AF0;
  if (!qword_1004D8AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10027C30C()
{
  v1 = sub_100398C28();
  v18 = *(v1 - 8);
  __chkstk_darwin(v1);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_100398BD8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SignpostInterval();
  v8 = *v0;
  v9 = *(v0 + 16);
  v10 = sub_100398C08();
  sub_100398C48();
  v17 = sub_1003994F8();
  result = sub_100399598();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v5 + 8))(v7, v4);
  }

  if ((v9 & 1) == 0)
  {
    if (v8)
    {
LABEL_9:

      sub_100398C78();

      v12 = v18;
      if ((*(v18 + 88))(v3, v1) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v13 = "[Error] Interval already ended";
      }

      else
      {
        (*(v12 + 8))(v3, v1);
        v13 = "";
      }

      v14 = swift_slowAlloc();
      *v14 = 0;
      v15 = sub_100398BB8();
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, v17, v15, v8, v13, v14, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v8 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v8 & 0xFFFFF800) != 0xD800)
  {
    if (v8 >> 16 <= 0x10)
    {
      v8 = &v19;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

BOOL sub_10027C5D4(uint64_t a1, uint64_t a2, Class isa, uint64_t a4)
{
  sub_1003993D8();
  sub_100206B54();
  v8 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1003EB210;
  *(v9 + 56) = &type metadata for String;
  v10 = sub_100206BA0();
  *(v9 + 64) = v10;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  if (isa)
  {
    v23 = sub_1001E27A8(&qword_1004D5E00);
    v24 = sub_10027C9D4();
    *&v22 = isa;
    sub_100004A68(&v22, v9 + 72);
  }

  else
  {
    *(v9 + 96) = &type metadata for String;
    *(v9 + 104) = v10;
    *(v9 + 72) = 7104878;
    *(v9 + 80) = 0xE300000000000000;
  }

  sub_100398B98();

  [objc_opt_self() metricClass];
  swift_getObjCClassMetadata();
  v11 = sub_100398F28();
  v12 = sub_100398F28();
  if (isa)
  {
    sub_1001E27A8(&unk_1004D5850);
    isa = sub_100398E48().super.isa;
  }

  if (a4)
  {
    sub_1001E27A8(&unk_1004D4400);
    v13.super.isa = sub_100398E48().super.isa;
  }

  else
  {
    v13.super.isa = 0;
  }

  v14 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPurpose:8502 metric:8000 contentIdentifier:0 contextIdentifier:0 handle:v11 secondaryHandle:v12 branch:0 properties:isa internalProperties:v13.super.isa relayData:0 environment:0 order:0 options:0xFFFFFFFF80000000];

  if (v14)
  {
    v15 = swift_dynamicCastObjCProtocolConditional();
    if (v15)
    {
      v16 = v15;
      swift_unknownObjectRetain();
      v17 = sub_100398F28();
      [v16 updateClientBundleID:v17];

      swift_unknownObjectRelease();
    }

    [objc_msgSend(objc_opt_self() "storage")];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1003993E8();
    v18 = sub_1003995A8();
    sub_100398B98();

    v19 = sub_100398F28();
    v20 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(100);
  }

  return v14 != 0;
}

unint64_t sub_10027C9D4()
{
  result = qword_1004D8BD0;
  if (!qword_1004D8BD0)
  {
    sub_1001E27F0(&qword_1004D5E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8BD0);
  }

  return result;
}

uint64_t sub_10027CA38(uint64_t a1)
{
  if (a1 > 5604)
  {
    if (a1 <= 5607)
    {
      if (a1 == 5605)
      {
        return 0xD00000000000001BLL;
      }

      if (a1 == 5606)
      {
        return 0xD000000000000019;
      }
    }

    else
    {
      if (a1 > 5609)
      {
        if (a1 == 5610)
        {
          return 0xD000000000000023;
        }

        if (a1 == 5611)
        {
          return 0xD000000000000018;
        }

        goto LABEL_30;
      }

      if (a1 != 5608)
      {
        return 0x204449206D616441;
      }
    }

    return 0xD000000000000020;
  }

  if (a1 <= 5600)
  {
    switch(a1)
    {
      case 0:
        return 0x726F727265206F4ELL;
      case 15:
        return 0xD00000000000001ALL;
      case 5600:
        return 0xD000000000000014;
    }

LABEL_30:
    result = sub_100399A68();
    __break(1u);
    return result;
  }

  if (a1 > 5602)
  {
    if (a1 == 5603)
    {
      return 0xD000000000000022;
    }

    return 0xD00000000000001BLL;
  }

  if (a1 == 5601)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

Swift::Int sub_10027CCCC()
{
  sub_100399B58();
  sub_100398EC8();
  return sub_100399B88();
}

uint64_t sub_10027CD30(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027D834();

  return _BridgedNSError.hash(into:)(a1, a2, v4);
}

uint64_t sub_10027CD7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10027D34C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_10027CDB0(uint64_t a1)
{
  v2 = sub_10027D834();

  return _BridgedNSError._domain.getter(a1, v2);
}

uint64_t sub_10027CDEC(uint64_t a1)
{
  v2 = sub_10027D834();

  return _BridgedNSError._code.getter(a1, v2);
}

uint64_t sub_10027CE44(uint64_t a1, uint64_t a2)
{
  v4 = sub_10027D834();

  return _BridgedNSError.init(_bridgedNSError:)(a1, a2, v4);
}

id sub_10027CF68()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ODAttributionAnalytics();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10027CFC0(uint64_t a1)
{
  if (!a1)
  {
    v1 = objc_opt_self();
    v2 = sub_100398F28();
    sub_1001E27A8(&unk_1004D5DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003EB210;
    *(inited + 32) = 0x646F69726550;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:12];
    *(inited + 56) = 0x737574617453;
    *(inited + 64) = 0xE600000000000000;
    v6 = [objc_allocWithZone(NSNumber) initWithInteger:0];
LABEL_6:
    *(inited + 72) = v6;
    sub_1002143B8(inited);
    swift_setDeallocating();
    sub_1001E27A8(&qword_1004D5A28);
    swift_arrayDestroy();
    sub_10025A138();
    v4.super.isa = sub_100398E48().super.isa;
    goto LABEL_7;
  }

  swift_errorRetain();
  sub_1001E27A8(&qword_1004D4818);
  if (!swift_dynamicCast())
  {
    v1 = objc_opt_self();
    v2 = sub_100398F28();
    sub_1001E27A8(&unk_1004D5DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003EB210;
    *(inited + 32) = 0x646F69726550;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:12];
    *(inited + 56) = 0x737574617453;
    *(inited + 64) = 0xE600000000000000;
    v6 = [objc_allocWithZone(NSNumber) initWithInteger:15];
    goto LABEL_6;
  }

  v1 = objc_opt_self();
  v2 = sub_100398F28();
  sub_1001E27A8(&unk_1004D5DB0);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_1003EB210;
  *(v3 + 32) = 0x646F69726550;
  *(v3 + 40) = 0xE600000000000000;
  *(v3 + 48) = [objc_allocWithZone(NSNumber) initWithInteger:12];
  *(v3 + 56) = 0x737574617453;
  *(v3 + 64) = 0xE600000000000000;
  *(v3 + 72) = [objc_allocWithZone(NSNumber) initWithInteger:v7];
  sub_1002143B8(v3);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004D5A28);
  swift_arrayDestroy();
  sub_10025A138();
  v4.super.isa = sub_100398E48().super.isa;
LABEL_7:

  [v1 sendEvent:v2 customPayload:v4.super.isa];
}

uint64_t sub_10027D34C(uint64_t result)
{
  if ((result - 5600) >= 0xC && result != 0 && result != 15)
  {
    return 0;
  }

  return result;
}

void sub_10027D378(uint64_t a1, char a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = sub_100398F28();
  sub_1001E27A8(&unk_1004D5DB0);
  if (a2)
  {
    a1 = 0;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003EB210;
  *(inited + 32) = 0x646F69726550;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a3];
  *(inited + 56) = 0x737574617453;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  sub_1002143B8(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004D5A28);
  swift_arrayDestroy();
  sub_10025A138();
  isa = sub_100398E48().super.isa;

  [v6 sendEvent:v7 customPayload:isa];
}

void sub_10027D530(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = sub_100398F28();
  sub_1001E27A8(&unk_1004D5DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003EB210;
  *(inited + 32) = 0x646F69726550;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
  *(inited + 56) = 0x737574617453;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(NSNumber) initWithInteger:0];
  sub_1002143B8(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004D5A28);
  swift_arrayDestroy();
  sub_10025A138();
  isa = sub_100398E48().super.isa;

  [v2 sendEvent:v3 customPayload:isa];
}

unint64_t sub_10027D6D8()
{
  result = qword_1004D8C08;
  if (!qword_1004D8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8C08);
  }

  return result;
}

unint64_t sub_10027D730()
{
  result = qword_1004D8C10;
  if (!qword_1004D8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8C10);
  }

  return result;
}

unint64_t sub_10027D788()
{
  result = qword_1004D8C18;
  if (!qword_1004D8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8C18);
  }

  return result;
}

unint64_t sub_10027D7E0()
{
  result = qword_1004D8C20;
  if (!qword_1004D8C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8C20);
  }

  return result;
}

unint64_t sub_10027D834()
{
  result = qword_1004D8C28;
  if (!qword_1004D8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8C28);
  }

  return result;
}

uint64_t sub_10027D888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v193 = a2;
  v208 = a1;
  v207 = a3;
  v199 = sub_100398768();
  v198 = *(v199 - 8);
  v4 = __chkstk_darwin(v199);
  v187 = &v181 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v188 = &v181 - v7;
  v8 = __chkstk_darwin(v6);
  v185 = &v181 - v9;
  v10 = __chkstk_darwin(v8);
  v186 = &v181 - v11;
  v12 = __chkstk_darwin(v10);
  v189 = &v181 - v13;
  __chkstk_darwin(v12);
  v190 = &v181 - v14;
  v194 = type metadata accessor for ProductionAppSpecifier(0);
  v15 = __chkstk_darwin(v194);
  v183 = &v181 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v182 = &v181 - v18;
  __chkstk_darwin(v17);
  v184 = &v181 - v19;
  v204 = sub_1001E27A8(&unk_1004D70A0);
  v203 = *(v204 - 8);
  v20 = __chkstk_darwin(v204);
  v196 = &v181 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v195 = &v181 - v22;
  v201 = type metadata accessor for AttributionCandidate.Provenance(0);
  __chkstk_darwin(v201);
  v202 = &v181 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_100398DA8();
  v206 = *(v217 - 8);
  __chkstk_darwin(v217);
  v216 = &v181 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_100398DD8();
  v205 = *(v215 - 8);
  __chkstk_darwin(v215);
  v214 = &v181 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for AttributionPayloadDTO(0);
  __chkstk_darwin(v192);
  v197 = (&v181 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = sub_1002142A8(_swiftEmptyArrayStorage);
  v227 = v200;
  [*(v3 + 56) lock];
  v218 = v3;
  v27 = *(*(v3 + 16) + 16);
  v213 = *(v3 + 16);

  v212 = v27;
  if (v27)
  {
    v29 = 0;
    v211 = v213 + 32;
    v210 = &v223;
    v209 = (v206 + 8);
    v30 = (v205 + 8);
    v31 = v214;
    v32 = v216;
    while (v29 < *(v213 + 16))
    {
      v33 = v218;
      v34 = *(v218 + 32);
      v35 = swift_allocObject();
      v219 = *(v211 + 16 * v29);
      *(v35 + 16) = v219;
      *(v35 + 32) = v33;
      *(v35 + 40) = v29;
      v225 = sub_10027F8C4;
      v226 = v35;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v223 = sub_1001F77E8;
      v224 = &unk_10047C218;
      v36 = _Block_copy(&aBlock);
      swift_unknownObjectRetain_n();
      v37 = v34;

      sub_100398DC8();
      *&v221 = _swiftEmptyArrayStorage;
      sub_1001F8B1C();
      sub_1001E27A8(&unk_1004DC400);
      sub_1001F8B74();
      v38 = v217;
      sub_100399658();
      sub_100399478();
      _Block_release(v36);
      swift_unknownObjectRelease();

      (*v209)(v32, v38);
      (*v30)(v31, v215);

      if (v212 == ++v29)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_5:

  v39 = v218;
  [*(v218 + 56) unlock];
  v40 = sub_10027F118();
  if (v41)
  {

    *v207 = v40;
LABEL_37:
    sub_1001E27A8(&unk_1004D76E8);
    return swift_storeEnumTagMultiPayload();
  }

  v42 = type metadata accessor for AttributionCandidate(0);
  v43 = v208;
  v44 = v202;
  sub_10027F8D0(&v208[*(v42 + 20)], v202);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v191 = v40;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v203 + 32))(v195, v44, v204);
      v46 = type metadata accessor for TransmittedAttribution();
      v47 = v43;

      v48 = sub_100397548(0);
      v224 = &type metadata for String;
      *&aBlock = v48;
      *(&aBlock + 1) = v49;
      sub_10021243C(&aBlock, &v221);
      v50 = v227;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v220 = v50;
      sub_10023C638(&v221, 0x7475626972747461, 0xEE0079654B6E6F69, isUniquelyReferenced_nonNull_native);
      v52 = v220;
      v224 = &type metadata for Bool;
      LOBYTE(aBlock) = 1;
      sub_10021243C(&aBlock, &v221);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v220 = v52;
      sub_10023C638(&v221, 0x7475626972747461, 0xEB000000006E6F69, v53);
      v54 = v220;
      v55 = (v47 + *(v42 + 24));
      v56 = *(type metadata accessor for AppSpecifier(0) + 20);
      v57 = sub_1003981A8();
      v224 = &type metadata for String;
      *&aBlock = v57;
      *(&aBlock + 1) = v58;
      sub_10021243C(&aBlock, &v221);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v220 = v54;
      sub_10023C638(&v221, 0x6449656C646E7562, 0xE800000000000000, v59);
      v227 = v220;
      v60 = *(v55 + 1);
      v213 = v42;
      if (v60)
      {
        v61 = *v55;
        v62 = *(v194 + 20);
        v63 = sub_1003981B8();
        v64 = v184;
        (*(*(v63 - 8) + 16))(&v184[v62], &v55[v56], v63);
        *v64 = v61;
        v64[1] = v60;
        swift_bridgeObjectRetain_n();
        sub_10027F934(v64);
        v224 = &type metadata for String;
        *&aBlock = v61;
        *(&aBlock + 1) = v60;
        sub_10021243C(&aBlock, &v221);
        v65 = v227;
        v66 = swift_isUniquelyReferenced_nonNull_native();
        v220 = v65;
        sub_10023C638(&v221, 0x64496D616461, 0xE600000000000000, v66);
        v227 = v220;
      }

      else
      {
        sub_10023C010(0x64496D616461, 0xE600000000000000, &aBlock);
        sub_1001ED244(&aBlock, &qword_1004D5D40);
      }

      v100 = v46;
      v101 = v208;
      v102 = v198;
      if (v208[*(v46 + 24)])
      {
        v103 = &enum case for AttributionCallType.open(_:);
      }

      else
      {
        v103 = &enum case for AttributionCallType.install(_:);
      }

      v104 = v189;
      v105 = v199;
      (*(v198 + 104))(v189, *v103, v199);
      v106 = v190;
      (*(v102 + 32))(v190, v104, v105);
      v107 = sub_100398758();
      (*(v102 + 8))(v106, v105);
      v224 = &type metadata for Int;
      *&aBlock = v107;
      sub_10021243C(&aBlock, &v221);
      v108 = v227;
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v220 = v108;
      sub_10023C638(&v221, 0x6E6576456C6C6163, 0xED00006570795474, v109);
      v110 = v220;
      v111 = v204;
      v112 = v195;
      sub_100397A18();
      v113 = aBlock;
      v114 = swift_isUniquelyReferenced_nonNull_native();
      *&v221 = v110;
      sub_10027F990(v113, sub_10027F718, 0, v114, &v221);

      v115 = v112;
      v116 = v100;
      (*(v203 + 8))(v115, v111);
      v117 = v221;
      v227 = v221;
    }

    else
    {
      v224 = &type metadata for Bool;
      LOBYTE(aBlock) = 0;
      sub_10021243C(&aBlock, &v221);

      v83 = v43;
      v84 = v227;
      v85 = swift_isUniquelyReferenced_nonNull_native();
      v220 = v84;
      sub_10023C638(&v221, 0x7475626972747461, 0xEB000000006E6F69, v85);
      v86 = v220;
      v87 = (v83 + *(v42 + 24));
      v88 = *(type metadata accessor for AppSpecifier(0) + 20);
      v89 = sub_1003981A8();
      v224 = &type metadata for String;
      *&aBlock = v89;
      *(&aBlock + 1) = v90;
      sub_10021243C(&aBlock, &v221);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      v220 = v86;
      sub_10023C638(&v221, 0x6449656C646E7562, 0xE800000000000000, v91);
      v227 = v220;
      v92 = *(v87 + 1);
      if (v92)
      {
        v93 = *v87;
        v94 = *(v194 + 20);
        v95 = sub_1003981B8();
        v96 = v183;
        (*(*(v95 - 8) + 16))(&v183[v94], &v87[v88], v95);
        *v96 = v93;
        v96[1] = v92;
        swift_bridgeObjectRetain_n();
        sub_10027F934(v96);
        v224 = &type metadata for String;
        *&aBlock = v93;
        *(&aBlock + 1) = v92;
        v97 = v92;
        sub_10021243C(&aBlock, &v221);
        v98 = v227;
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v220 = v98;
        sub_10023C638(&v221, 0x64496D616461, 0xE600000000000000, v99);
        v227 = v220;
      }

      else
      {
        v97 = 0;
        sub_10023C010(0x64496D616461, 0xE600000000000000, &aBlock);
        sub_1001ED244(&aBlock, &qword_1004D5D40);
      }

      v137 = type metadata accessor for TransmittedAttribution();
      v101 = v208;
      v138 = v198;
      if (v208[*(v137 + 24)])
      {
        v139 = &enum case for AttributionCallType.open(_:);
      }

      else
      {
        v139 = &enum case for AttributionCallType.install(_:);
      }

      v140 = v187;
      v141 = v199;
      (*(v198 + 104))(v187, *v139, v199);
      v142 = v188;
      (*(v138 + 32))(v188, v140, v141);
      v143 = sub_100398758();
      (*(v138 + 8))(v142, v141);
      v116 = v137;
      v224 = &type metadata for Int;
      *&aBlock = v143;
      sub_10021243C(&aBlock, &v221);
      v144 = v227;
      v145 = swift_isUniquelyReferenced_nonNull_native();
      v220 = v144;
      sub_10023C638(&v221, 0x6E6576456C6C6163, 0xED00006570795474, v145);
      v146 = v220;
      v147 = sub_100397548(0);
      v224 = &type metadata for String;
      *&aBlock = v147;
      *(&aBlock + 1) = v148;
      sub_10021243C(&aBlock, &v221);
      v149 = swift_isUniquelyReferenced_nonNull_native();
      v220 = v146;
      sub_10023C638(&v221, 0x7475626972747461, 0xEE0079654B6E6F69, v149);
      v117 = v220;
      v227 = v220;
      v60 = v97;
    }
  }

  else
  {
    (*(v203 + 32))(v196, v44, v204);
    v224 = &type metadata for Bool;
    LOBYTE(aBlock) = 0;
    sub_10021243C(&aBlock, &v221);

    v67 = v43;
    v68 = v227;
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v220 = v68;
    sub_10023C638(&v221, 0x7475626972747461, 0xEB000000006E6F69, v69);
    v70 = v220;
    v71 = (v67 + *(v42 + 24));
    v72 = *(type metadata accessor for AppSpecifier(0) + 20);
    v73 = sub_1003981A8();
    v224 = &type metadata for String;
    *&aBlock = v73;
    *(&aBlock + 1) = v74;
    sub_10021243C(&aBlock, &v221);
    v75 = swift_isUniquelyReferenced_nonNull_native();
    v220 = v70;
    sub_10023C638(&v221, 0x6449656C646E7562, 0xE800000000000000, v75);
    v227 = v220;
    v76 = *(v71 + 1);
    *&v219 = v76;
    if (v76)
    {
      v77 = *v71;
      v78 = *(v194 + 20);
      v79 = sub_1003981B8();
      v80 = v182;
      (*(*(v79 - 8) + 16))(&v182[v78], &v71[v72], v79);
      *v80 = v77;
      v80[1] = v76;
      swift_bridgeObjectRetain_n();
      sub_10027F934(v80);
      v224 = &type metadata for String;
      *&aBlock = v77;
      *(&aBlock + 1) = v76;
      sub_10021243C(&aBlock, &v221);
      v81 = v227;
      v82 = swift_isUniquelyReferenced_nonNull_native();
      v220 = v81;
      sub_10023C638(&v221, 0x64496D616461, 0xE600000000000000, v82);
      v227 = v220;
    }

    else
    {
      sub_10023C010(0x64496D616461, 0xE600000000000000, &aBlock);
      sub_1001ED244(&aBlock, &qword_1004D5D40);
    }

    v118 = type metadata accessor for TransmittedAttribution();
    v101 = v208;
    v119 = v198;
    if (v208[*(v118 + 24)])
    {
      v120 = &enum case for AttributionCallType.open(_:);
    }

    else
    {
      v120 = &enum case for AttributionCallType.install(_:);
    }

    v121 = v185;
    v122 = v199;
    (*(v198 + 104))(v185, *v120, v199);
    v123 = v186;
    (*(v119 + 32))(v186, v121, v122);
    v124 = sub_100398758();
    (*(v119 + 8))(v123, v122);
    v224 = &type metadata for Int;
    *&aBlock = v124;
    sub_10021243C(&aBlock, &v221);
    v125 = v227;
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v220 = v125;
    sub_10023C638(&v221, 0x6E6576456C6C6163, 0xED00006570795474, v126);
    v127 = v220;
    v128 = sub_100397548(0);
    v224 = &type metadata for String;
    *&aBlock = v128;
    *(&aBlock + 1) = v129;
    sub_10021243C(&aBlock, &v221);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v220 = v127;
    sub_10023C638(&v221, 0x7475626972747461, 0xEE0079654B6E6F69, v130);
    v131 = v220;
    v132 = v204;
    v133 = v196;
    sub_100397A18();
    v134 = aBlock;
    v135 = swift_isUniquelyReferenced_nonNull_native();
    *&v221 = v131;
    sub_10027F990(v134, sub_10027F718, 0, v135, &v221);

    v136 = v133;
    v116 = v118;
    (*(v203 + 8))(v136, v132);
    v117 = v221;
    v227 = v221;
    v60 = v219;
  }

  type metadata accessor for TransmittedAttribution();
  v150 = *(v101 + *(v116 + 28));
  if (v150 == 2)
  {
    sub_10023C010(0x63696C7075447369, 0xEB00000000657461, &aBlock);
    sub_1001ED244(&aBlock, &qword_1004D5D40);
    if (v60)
    {
LABEL_32:
      v151 = v227;
      goto LABEL_35;
    }
  }

  else
  {
    v224 = &type metadata for Bool;
    LOBYTE(aBlock) = v150 & 1;
    sub_10021243C(&aBlock, &v221);
    v152 = swift_isUniquelyReferenced_nonNull_native();
    v220 = v117;
    sub_10023C638(&v221, 0x63696C7075447369, 0xEB00000000657461, v152);
    v227 = v220;
    if (v60)
    {
      goto LABEL_32;
    }
  }

  v224 = &type metadata for Bool;
  LOBYTE(aBlock) = 1;
  sub_10021243C(&aBlock, &v221);
  v153 = v227;
  v154 = swift_isUniquelyReferenced_nonNull_native();
  v220 = v153;
  sub_10023C638(&v221, 0x6D706F6C65766564, 0xEE00707041746E65, v154);
  v151 = v220;
  v227 = v220;
LABEL_35:
  v155 = *(v39 + 64);
  v224 = &type metadata for Bool;
  LOBYTE(aBlock) = v155;
  sub_10021243C(&aBlock, &v221);
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v220 = v151;
  sub_10023C638(&v221, 0x796C6E4F64616572, 0xE800000000000000, v156);
  v157 = sub_10027FCA0();
  v159 = v158;
  v161 = v160;

  if (v161)
  {
    v162 = v191;
    sub_10027FF18(v191, 0);
    sub_10027FF18(v162, 0);
    *v207 = v157;
    goto LABEL_37;
  }

  v163 = v192;
  v164 = *(v192 + 24);
  v165 = sub_1003974E8();
  v166 = v197;
  (*(*(v165 - 8) + 16))(v197 + v164, v193, v165);
  type metadata accessor for AppSpecifier(0);
  sub_1001EF9F4(v157, v159);
  v167 = sub_1003981A8();
  *v166 = v191;
  v166[1] = v157;
  v208 = v157;
  v204 = v159;
  v166[2] = v159;
  v168 = (v166 + *(v163 + 28));
  *v168 = v167;
  v168[1] = v169;
  [*(v39 + 56) lock];
  v170 = *(*(v39 + 16) + 16);
  v213 = *(v39 + 16);

  v212 = v170;
  if (!v170)
  {
LABEL_42:

    [*(v218 + 56) unlock];
    sub_10027FF70(v208, v204, 0);
    sub_10027FF18(v191, 0);
    sub_100243088(v197, v207);
    sub_1001E27A8(&unk_1004D76E8);
    return swift_storeEnumTagMultiPayload();
  }

  v171 = 0;
  v211 = v213 + 32;
  v210 = &v223;
  v209 = (v206 + 8);
  v172 = (v205 + 8);
  v174 = v216;
  v173 = v217;
  while (v171 < *(v213 + 16))
  {
    v175 = v218;
    v176 = *(v218 + 32);
    v177 = swift_allocObject();
    v219 = *(v211 + 16 * v171);
    *(v177 + 16) = v219;
    *(v177 + 32) = v175;
    *(v177 + 40) = v171;
    v225 = sub_10027FF64;
    v226 = v177;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v223 = sub_1001F77E8;
    v224 = &unk_10047C268;
    v178 = _Block_copy(&aBlock);
    swift_unknownObjectRetain_n();

    v179 = v176;
    v180 = v214;
    sub_100398DC8();
    *&v221 = _swiftEmptyArrayStorage;
    sub_1001F8B1C();
    sub_1001E27A8(&unk_1004DC400);
    sub_1001F8B74();
    sub_100399658();
    sub_100399478();
    _Block_release(v178);
    swift_unknownObjectRelease();

    (*v209)(v174, v173);
    (*v172)(v180, v215);

    if (v212 == ++v171)
    {
      goto LABEL_42;
    }
  }

LABEL_45:
  __break(1u);
  return result;
}

id sub_10027F118()
{
  sub_1003979B8();
  v1 = sub_100397998();
  v3 = v2;
  v4 = sub_1003979A8();
  v6 = v5;
  v7 = sub_100397988();
  v9 = v8;
  v11 = *(v0 + 40);
  v10 = *(v0 + 48);

  v12 = sub_100397978();
  v14 = 0x6E776F6E6B6E55;
  v15 = 0xE700000000000000;
  *&v32 = 0x6E776F6E6B6E55;
  *(&v32 + 1) = 0xE700000000000000;
  if (v13)
  {
    v14 = v12;
  }

  *&v33 = 0;
  *(&v33 + 1) = 0xE000000000000000;
  if (v13)
  {
    v15 = v13;
  }

  *&v34 = v1;
  *(&v34 + 1) = v3;
  *&v35 = v4;
  *(&v35 + 1) = v6;
  *&v36 = v7;
  *(&v36 + 1) = v9;
  *&v37 = v11;
  *(&v37 + 1) = v10;
  *&v38 = v14;
  *(&v38 + 1) = v15;
  sub_1003970E8();
  swift_allocObject();
  sub_1003970D8();
  v39[4] = v36;
  v39[5] = v37;
  v39[6] = v38;
  v39[0] = v32;
  v39[1] = v33;
  v39[2] = v34;
  v39[3] = v35;
  sub_10027F6C4();
  v16 = sub_1003970C8();
  v18 = v17;

  sub_10025CD94(&v32);
  v19 = objc_opt_self();
  isa = sub_100397538().super.isa;
  *&v39[0] = 0;
  v21 = [v19 JSONObjectWithData:isa options:0 error:v39];

  if (!v21)
  {
    v24 = *&v39[0];
    v23 = sub_1003973E8();

    swift_willThrow();
LABEL_10:
    sub_1001EFA90(v16, v18);
    return v23;
  }

  v22 = *&v39[0];
  sub_100399648();
  swift_unknownObjectRelease();
  sub_1001E27A8(&qword_1004D7AA8);
  if (!swift_dynamicCast())
  {
    sub_1001E27A8(&unk_1004D5A30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003C9930;
    *(inited + 32) = sub_100398F58();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v26;
    *(inited + 48) = 0xD000000000000027;
    *(inited + 56) = 0x8000000100430BA0;
    sub_1002142A8(inited);
    swift_setDeallocating();
    sub_1001ED244(inited + 32, &unk_1004D5DD0);
    v27 = objc_allocWithZone(NSError);
    v28 = sub_100398F28();
    v29 = sub_100398E48().super.isa;

    v23 = [v27 initWithDomain:v28 code:3210 userInfo:v29];

    goto LABEL_10;
  }

  sub_1001EFA90(v16, v18);
  return v31;
}

uint64_t sub_10027F4A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = *(a3 + 24);
  v10[3] = sub_1001E27A8(&qword_1004D5D40);
  result = swift_allocObject();
  v10[0] = result;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v8 + 16) > a4)
  {
    sub_10027FF84(v8 + 32 * a4 + 32, result + 16);
    (*(a2 + 8))(v10, ObjectType, a2);
    return sub_100003894(v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_10027F574(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = *(a3 + 24);
  v10[3] = sub_1001E27A8(&qword_1004D5D40);
  result = swift_allocObject();
  v10[0] = result;
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v8 + 16) > a4)
  {
    sub_10027FF84(v8 + 32 * a4 + 32, result + 16);
    (*(a2 + 16))(v10, ObjectType, a2);
    return sub_100003894(v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_10027F648()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10027F6C4()
{
  result = qword_1004D8DA0;
  if (!qword_1004D8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8DA0);
  }

  return result;
}

uint64_t sub_10027F718@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1000038F4((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_10027F764@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000038F4(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_10021243C(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_1001ED244(v21, &qword_1004D8DA8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_10027F8D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionCandidate.Provenance(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10027F934(uint64_t a1)
{
  v2 = type metadata accessor for ProductionAppSpecifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10027F990(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_10027F764(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_10021243C(v44, v42);
  v14 = *a5;
  result = sub_1001EC1DC(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_10023B29C(v20, a4 & 1);
    result = sub_1001EC1DC(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_100399A98();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_10023CA2C();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_100003894(v25);
    sub_10021243C(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_10021243C(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_10027F764(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_10021243C(v44, v42);
        v32 = *a5;
        result = sub_1001EC1DC(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_10023B29C(v36, 1);
          result = sub_1001EC1DC(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          sub_100003894(v31);
          sub_10021243C(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_10021243C(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_10027F764(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_10027FF7C();
  }

LABEL_27:
  __break(1u);
  return result;
}

id sub_10027FCA0()
{
  v0 = objc_opt_self();
  isa = sub_100398E48().super.isa;
  v2 = [v0 isValidJSONObject:isa];

  if (v2)
  {
    v3 = sub_100398E48().super.isa;
    v14 = 0;
    v4 = [v0 dataWithJSONObject:v3 options:1 error:&v14];

    v5 = v14;
    if (v4)
    {
      v6 = sub_100397558();
    }

    else
    {
      v12 = v5;
      v6 = sub_1003973E8();

      swift_willThrow();
    }
  }

  else
  {
    sub_1001E27A8(&unk_1004D5A30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003C9930;
    *(inited + 32) = sub_100398F58();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v8;
    *(inited + 48) = 0xD000000000000045;
    *(inited + 56) = 0x8000000100430BD0;
    sub_1002142A8(inited);
    swift_setDeallocating();
    sub_1001ED244(inited + 32, &unk_1004D5DD0);
    v9 = objc_allocWithZone(NSError);
    v10 = sub_100398F28();
    v11 = sub_100398E48().super.isa;

    v6 = [v9 initWithDomain:v10 code:3210 userInfo:v11];
  }

  return v6;
}

uint64_t sub_10027FF18(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_10027FF24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10027FF70(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1001EFA90(a1, a2);
  }
}

uint64_t sub_10027FF84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D5D40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100280000(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s11Attribution0A10TokenGroupV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v10);
}

uint64_t AttributionTokenGroup.debugDescription.getter()
{
  sub_1003996F8(42);
  v1._countAndFlagsBits = 0x7267206E656B6F74;
  v1._object = 0xEC0000002870756FLL;
  sub_100399068(v1);
  v2._countAndFlagsBits = sub_100397548(0);
  sub_100399068(v2);

  v3._countAndFlagsBits = 0x61646E617473202CLL;
  v3._object = 0xEC000000203A6472;
  sub_100399068(v3);
  sub_1003997C8();
  v4._countAndFlagsBits = 0x6C6961746564202CLL;
  v4._object = 0xEC000000203A6465;
  sub_100399068(v4);
  sub_1003997C8();
  return 0;
}

BOOL _s11Attribution0A10TokenGroupV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (sub_100259AD0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    if (sub_100259AD0(*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) != 0 && ((v4 ^ v7) & 1) == 0 && (v5 == v8 && v6 == v9 || (sub_1003999B8()))
    {
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = *(a1 + 72);
      v14 = *(a1 + 80);
      v13 = *(a1 + 88);
      v15 = *(a2 + 56);
      v16 = *(a2 + 64);
      v17 = *(a2 + 72);
      v19 = *(a2 + 80);
      v18 = *(a2 + 88);
      if (sub_100259AD0(v10, v11, v15, v16) & 1) != 0 && ((v12 ^ v17) & 1) == 0 && (v14 == v19 && v13 == v18 || (sub_1003999B8()))
      {
        return 1;
      }
    }
  }

  return result;
}

__n128 sub_1002802B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_1002802CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100280314(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10028037C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_1002373F4(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100003554(v4, v11);
      sub_1001E27A8(&unk_1004D9A30);
      sub_1001E27A8(&qword_1004D64E0);
      swift_dynamicCast();
      v15 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1002373F4((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      v2[2] = v6 + 1;
      v7 = &v2[5 * v6];
      v8 = v12;
      v9 = v13;
      v7[8] = v14;
      *(v7 + 2) = v8;
      *(v7 + 3) = v9;
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1002804B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v13 = _swiftEmptyArrayStorage;
    sub_100237414(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      v13 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        sub_100237414((v7 > 1), v8 + 1, 1);
        v2 = v13;
      }

      v11 = &type metadata for Int;
      v12 = &protocol witness table for Int;
      *&v10 = v5;
      v2[2] = v8 + 1;
      sub_100004A68(&v10, &v2[5 * v8 + 4]);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_100280600(void *a1, uint64_t (*a2)(_BYTE *, uint64_t))
{
  sub_100003554(a1, v6);
  sub_1000035B8(a1, a1[3]);
  v4 = sub_100397B48();
  return a2(v6, v4);
}

BOOL sub_100280684(void *a1, unint64_t a2, uint64_t a3)
{
  v32 = a1;
  v6 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v31 - v7;
  v9 = sub_100397748();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v3;
  v13 = *(v3 + 40);
  v36 = sub_100281694(0x3F, 0xE100000000000000, *(v13 + 16));
  sub_1001E27A8(&unk_1004D9A20);
  sub_100281730();
  v33 = sub_100398ED8();
  v15 = v14;

  sub_1001E2838(a3, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1001ED244(v8, &qword_1004D4CE0);
    sub_1001E27A8(&qword_1004D9A80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1003EB210;
    v36 = v32;
    v37 = a2;

    v17 = sub_1003990F8();
    *(v16 + 56) = &type metadata for String;
    *(v16 + 64) = &protocol witness table for String;
    *(v16 + 32) = v17;
    *(v16 + 40) = v18;
    v20 = *(v34 + 24);
    v19 = *(v34 + 32);
    *(v16 + 96) = &type metadata for String;
    *(v16 + 104) = &protocol witness table for String;
    *(v16 + 72) = v20;
    *(v16 + 80) = v19;

    v21 = sub_1002804B8(v13);
    v36 = v16;
    sub_10028158C(v21);
    v22 = v36;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1003996F8(248);
    v38._countAndFlagsBits = 0xD0000000000000AELL;
    v38._object = 0x8000000100430C60;
    sub_100399068(v38);
    v35 = 100;
    v39._countAndFlagsBits = sub_100399998();
    sub_100399068(v39);

    v40._object = 0x8000000100430D10;
    v40._countAndFlagsBits = 0xD00000000000003DLL;
    sub_100399068(v40);
    v41._countAndFlagsBits = v33;
    v41._object = v15;
    sub_100399068(v41);

    v42._countAndFlagsBits = 0x2054494D494C0A29;
    v42._object = 0xE900000000000031;
    sub_100399068(v42);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_1001E27A8(&qword_1004D9A80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1003C9260;
    *(v23 + 56) = v9;
    *(v23 + 64) = &protocol witness table for Date;
    v24 = sub_1001E6B7C((v23 + 32));
    (*(v10 + 16))(v24, v12, v9);
    v36 = v32;
    v37 = a2;

    v25 = sub_1003990F8();
    *(v23 + 96) = &type metadata for String;
    *(v23 + 104) = &protocol witness table for String;
    *(v23 + 72) = v25;
    *(v23 + 80) = v26;
    v28 = *(v34 + 24);
    v27 = *(v34 + 32);
    *(v23 + 136) = &type metadata for String;
    *(v23 + 144) = &protocol witness table for String;
    *(v23 + 112) = v28;
    *(v23 + 120) = v27;

    v29 = sub_1002804B8(v13);
    v36 = v23;
    sub_10028158C(v29);
    v22 = v36;
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1003996F8(276);
    v43._countAndFlagsBits = 0xD0000000000000CALL;
    v43._object = 0x8000000100430D80;
    sub_100399068(v43);
    v35 = 100;
    v44._countAndFlagsBits = sub_100399998();
    sub_100399068(v44);

    v45._object = 0x8000000100430D10;
    v45._countAndFlagsBits = 0xD00000000000003DLL;
    sub_100399068(v45);
    v46._countAndFlagsBits = v33;
    v46._object = v15;
    sub_100399068(v46);

    v47._countAndFlagsBits = 0x2054494D494C0A29;
    v47._object = 0xE900000000000031;
    sub_100399068(v47);
    (*(v10 + 8))(v12, v9);
  }

  sub_10028037C(v22);

  sub_100397CF8();

  return (v37 & 1) == 0 && v36 > 0;
}

uint64_t sub_100280DD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000035B8(a1, a1[3]);
  result = sub_100397C18();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t sub_100280E38()
{

  return swift_deallocClassInstance();
}

char *sub_100280EA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001E27A8(&qword_1004D8E88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100280FD8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001E27A8(&qword_1004D9A80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001E27A8(&unk_1004D9A30);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100281120(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001E27A8(&qword_1004D8E98);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_10028122C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1001E27A8(&qword_1004D8E80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1001E27A8(&qword_1004D84B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1002813B0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1001E27A8(a5);
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

void *sub_10028158C(void *result)
{
  v2 = result[2];
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_100280FD8(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1001E27A8(&unk_1004D9A30);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_100281694(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a3)
    {
      return _swiftEmptyArrayStorage;
    }

    v4 = result;
    v6 = sub_1003991D8();
    v7 = v6;
    v6[2] = a3;
    v6[4] = v4;
    v6[5] = a2;
    v8 = a3 - 1;
    if (v8)
    {
      v9 = v6 + 7;
      do
      {
        *(v9 - 1) = v4;
        *v9 = a2;

        v9 += 2;
        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

unint64_t sub_100281730()
{
  result = qword_1004D8E78;
  if (!qword_1004D8E78)
  {
    sub_1001E27F0(&unk_1004D9A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D8E78);
  }

  return result;
}

uint64_t sub_1002817A4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v2 = sub_1001EC1DC(1701869940, 0xE400000000000000);
  if ((v3 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000038F4(*(a1 + 56) + 32 * v2, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_16;
  }

  v4 = sub_1001EC1DC(0x73656372756F73, 0xE700000000000000);
  if ((v5 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_1000038F4(*(a1 + 56) + 32 * v4, v12);
  sub_1001E27A8(&qword_1004D8EA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  if (*(a1 + 16))
  {
    v6 = sub_1001EC1DC(0x736573616870, 0xE600000000000000);
    if (v7)
    {
      sub_1000038F4(*(a1 + 56) + 32 * v6, v12);
      if (swift_dynamicCast())
      {
        if (!*(a1 + 16) || (v8 = sub_1001EC1DC(0x7365707954707061, 0xE800000000000000), (v9 & 1) == 0))
        {

          goto LABEL_16;
        }

        sub_1000038F4(*(a1 + 56) + 32 * v8, v12);

        if (swift_dynamicCast())
        {
          return v11;
        }
      }
    }
  }

LABEL_16:

  return 0;
}

uint64_t sub_1002819A4(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v2 == v1)
    {
      return v3;
    }

    if (v1 >= v2)
    {
      break;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = sub_10025E8D0(v5);
    v7 = sub_1002817A4(v6);
    v9 = v8;
    v11 = v10;
    v13 = v12;

    ++v1;
    if (v9)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100280EA4(0, *(v3 + 2) + 1, 1, v3);
        v3 = result;
      }

      v15 = *(v3 + 2);
      v14 = *(v3 + 3);
      if (v15 >= v14 >> 1)
      {
        result = sub_100280EA4((v14 > 1), v15 + 1, 1, v3);
        v3 = result;
      }

      *(v3 + 2) = v15 + 1;
      v16 = &v3[32 * v15];
      *(v16 + 8) = v7;
      *(v16 + 5) = v9;
      *(v16 + 6) = v11;
      *(v16 + 7) = v13;
      v1 = v4;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_100281AF8()
{
  sub_1001E27A8(&qword_1004D8F48);
  sub_100397E78();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1003EFC40;
  sub_1001E27A8(&unk_1004D7BF0);
  v0 = sub_100397E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003C9930;
  *(v4 + v3) = sub_10025D724(&off_100479F38);
  v28 = enum case for IntBucketContents.individualValues(_:);
  v5 = *(v1 + 104);
  v5(v4 + v3);
  sub_100397E68();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1003C9260;
  v7 = v6 + v3;
  *(v6 + v3) = xmmword_1003EFC50;
  v8 = enum case for IntBucketContents.range(_:);
  v27 = enum case for IntBucketContents.range(_:);
  (v5)(v6 + v3, enum case for IntBucketContents.range(_:), v0);
  *(v7 + v2) = xmmword_1003EFC60;
  (v5)(v7 + v2, v8, v0);
  v26 = 2 * v2;
  *(v7 + v26) = xmmword_1003EFC70;
  (v5)(v7 + 2 * v2, v8, v0);
  sub_100397E68();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1003C9930;
  *(v9 + v3) = sub_10025D724(&off_100479F68);
  (v5)(v9 + v3, v28, v0);
  sub_100397E68();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1003C9930;
  *(v10 + v3) = sub_10025D724(&off_100479F98);
  (v5)(v10 + v3, v28, v0);
  sub_100397E68();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003C9930;
  *(v11 + v3) = sub_10025D724(&off_100479FC0);
  (v5)(v11 + v3, v28, v0);
  sub_100397E68();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003C9930;
  *(v12 + v3) = sub_10025D724(&off_100479FE8);
  (v5)(v12 + v3, v28, v0);
  sub_100397E68();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003C9930;
  *(v13 + v3) = sub_10025D724(&off_10047A018);
  (v5)(v13 + v3, v28, v0);
  sub_100397E68();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003C9930;
  *(v14 + v3) = sub_10025D724(&off_10047A040);
  (v5)(v14 + v3, v28, v0);
  sub_100397E68();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003C9930;
  *(v15 + v3) = sub_10025D724(&off_10047A080);
  (v5)(v15 + v3, v28, v0);
  sub_100397E68();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1003ECC10;
  v17 = (v16 + v3);
  *v17 = sub_10025D724(&off_10047A0B0);
  (v5)(v17, v28, v0);
  *(v17 + v2) = xmmword_1003EFC80;
  (v5)(v17 + v2, v27, v0);
  *(v17 + v26) = xmmword_1003EFC90;
  (v5)(v17 + 2 * v2, v27, v0);
  *(v17 + 3 * v2) = xmmword_1003EFCA0;
  (v5)(v17 + 3 * v2, v27, v0);
  *(v17 + 4 * v2) = xmmword_1003EFCB0;
  (v5)(v17 + 4 * v2, v27, v0);
  *(v17 + 5 * v2) = xmmword_1003EFCC0;
  (v5)(v17 + 5 * v2, v27, v0);
  *(v17 + 6 * v2) = xmmword_1003EFCD0;
  (v5)();
  sub_100397E68();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1003EB210;
  v19 = (v18 + v3);
  *v19 = sub_10025D724(&off_10047A0E0);
  (v5)(v19, v28, v0);
  *(v19 + v2) = xmmword_1003EFCE0;
  (v5)(v19 + v2, v27, v0);
  sub_100397E68();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1003C9930;
  *(v20 + v3) = xmmword_1003EFCF0;
  (v5)(v20 + v3, v27, v0);
  sub_100397E68();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1003C9930;
  *(v21 + v3) = sub_10025D724(&off_10047A108);
  (v5)(v21 + v3, v28, v0);
  sub_100397E68();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1003EB210;
  v23 = (v22 + v3);
  *v23 = sub_10025D724(&off_10047A138);
  (v5)(v23, v28, v0);
  *(v23 + v2) = xmmword_1003EFD00;
  (v5)(v23 + v2, v27, v0);
  sub_100397E68();

  return IntBucketConfiguration.init(unknownBucketName:discreteBuckets:classifiedBuckets:)(100011, _swiftEmptyArrayStorage, v25);
}

uint64_t sub_1002825B8(void *a1)
{
  v3 = sub_1001E27A8(&qword_1004D92A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_1000035B8(a1, a1[3]);
  sub_1002867E0();
  sub_100399BF8();
  v14 = 0;
  sub_100399988();
  if (!v1)
  {
    v13 = 1;
    sub_100399958();
    type metadata accessor for AttributionPerfMetrics(0);
    v12 = 2;
    sub_100397748();
    sub_100286798(&qword_1004D6428, &type metadata accessor for Date);
    sub_100399978();
    v11 = 3;
    sub_100399978();
    v10 = 4;
    sub_100399978();
    v9 = 5;
    sub_100399978();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100282864@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v43 = sub_100397748();
  v41 = *(v43 - 8);
  v3 = __chkstk_darwin(v43);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v7 = &v36 - v6;
  v8 = __chkstk_darwin(v5);
  v10 = &v36 - v9;
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v44 = sub_1001E27A8(&qword_1004D9290);
  v42 = *(v44 - 8);
  __chkstk_darwin(v44);
  v14 = &v36 - v13;
  v15 = type metadata accessor for AttributionPerfMetrics(0);
  __chkstk_darwin(v15);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v47 = a1;
  sub_1000035B8(a1, v18);
  sub_1002867E0();
  v45 = v14;
  v19 = v46;
  sub_100399BC8();
  if (v19)
  {
    return sub_100003894(v47);
  }

  v20 = v12;
  v46 = v7;
  v22 = v42;
  v21 = v43;
  v53 = 0;
  *v17 = sub_1003998E8();
  v52 = 1;
  v23 = v22;
  v17[1] = sub_1003998B8();
  v17[2] = v25;
  v51 = 2;
  v26 = v21;
  sub_100286798(&qword_1004D6400, &type metadata accessor for Date);
  sub_1003998D8();
  v27 = v17 + v15[6];
  v36 = *(v41 + 32);
  v36(v27, v20, v21);
  v50 = 3;
  v37 = 0;
  sub_1003998D8();
  v38 = 0;
  v28 = v36;
  v36(v17 + v15[7], v10, v26);
  v49 = 4;
  v29 = v46;
  v30 = v38;
  sub_1003998D8();
  v38 = v30;
  if (v30)
  {
    (*(v23 + 8))(v45, v44);
    v31 = v41;
    v32 = v37;
    sub_100003894(v47);

    if (v32)
    {
      return (*(v31 + 8))(v17 + v15[7], v26);
    }
  }

  else
  {
    v28(v17 + v15[8], v29, v26);
    v48 = 5;
    v33 = v40;
    v34 = v38;
    sub_1003998D8();
    v38 = v34;
    if (!v34)
    {
      (*(v23 + 8))(v45, v44);
      v28(v17 + v15[9], v33, v26);
      sub_100286834(v17, v39, type metadata accessor for AttributionPerfMetrics);
      sub_100003894(v47);
      return sub_10028689C(v17, type metadata accessor for AttributionPerfMetrics);
    }

    (*(v23 + 8))(v45, v44);
    sub_100003894(v47);

    LOBYTE(v32) = 1;
    v31 = v41;
  }

  v35 = *(v31 + 8);
  v35(v17 + v15[6], v26);
  result = (v35)(v17 + v15[7], v26);
  if (v32)
  {
    return (v35)(v17 + v15[8], v26);
  }

  return result;
}

uint64_t sub_100282E50()
{
  v1 = *v0;
  v2 = 0x6C61767265746E69;
  v3 = 0x74536E6F6D656164;
  v4 = 0xD000000000000019;
  if (v1 != 4)
  {
    v4 = 0xD000000000000018;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100282F2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10028575C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100282F54(uint64_t a1)
{
  v2 = sub_1002867E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100282F90(uint64_t a1)
{
  v2 = sub_1002867E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100282FFC(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D9278);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_1000035B8(a1, a1[3]);
  sub_100286744();
  sub_100399BF8();
  v13 = *v3;
  v15 = 0;
  sub_1001E27A8(&qword_1004D7AA8);
  sub_10025B9C4(&qword_1004D7AD0);
  sub_100399948();
  if (!v2)
  {
    v9 = v3[2];
    v13 = v3[1];
    v14 = v9;
    v15 = 1;
    sub_100245FB4(v13, v9);
    sub_1001F9BE4();
    sub_100399948();
    sub_1001DDE50(v13, v14);
    v10 = type metadata accessor for AttributionNetworkRequestData(0);
    LOBYTE(v13) = 2;
    sub_1003974E8();
    sub_100286798(&qword_1004D7AD8, &type metadata accessor for URL);
    sub_100399978();
    LOBYTE(v13) = 3;
    sub_100399958();
    v13 = *(v3 + *(v10 + 32));
    v15 = 4;
    type metadata accessor for APHTTPMethod(0);
    sub_100286798(&qword_1004D9280, type metadata accessor for APHTTPMethod);
    sub_100399978();
    LOBYTE(v13) = 5;
    type metadata accessor for AttributionPerfMetrics(0);
    sub_100286798(&qword_1004D9288, type metadata accessor for AttributionPerfMetrics);
    sub_100399978();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100283380@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = type metadata accessor for AttributionPerfMetrics(0);
  __chkstk_darwin(v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1003974E8();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1001E27A8(&qword_1004D9258);
  v28 = *(v31 - 8);
  __chkstk_darwin(v31);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AttributionNetworkRequestData(0);
  __chkstk_darwin(v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v33 = a1;
  sub_1000035B8(a1, v13);
  sub_100286744();
  v30 = v9;
  v14 = v32;
  sub_100399BC8();
  if (v14)
  {
    return sub_100003894(v33);
  }

  v32 = v7;
  v15 = v28;
  v16 = v29;
  v25 = v4;
  v17 = v12;
  sub_1001E27A8(&qword_1004D7AA8);
  v35 = 0;
  sub_10025B9C4(&qword_1004D7AB0);
  sub_1003998A8();
  *v12 = v34;
  v35 = 1;
  sub_10025B970();
  sub_1003998A8();
  *(v12 + 8) = v34;
  LOBYTE(v34) = 2;
  sub_100286798(&qword_1004D7AC0, &type metadata accessor for URL);
  v18 = v32;
  sub_1003998D8();
  (*(v16 + 32))(v17 + v10[6], v18, v5);
  LOBYTE(v34) = 3;
  v19 = sub_1003998B8();
  v20 = (v17 + v10[7]);
  *v20 = v19;
  v20[1] = v21;
  type metadata accessor for APHTTPMethod(0);
  v35 = 4;
  sub_100286798(&qword_1004D9268, type metadata accessor for APHTTPMethod);
  sub_1003998D8();
  *(v17 + v10[8]) = v34;
  LOBYTE(v34) = 5;
  sub_100286798(&qword_1004D9270, type metadata accessor for AttributionPerfMetrics);
  v22 = v25;
  sub_1003998D8();
  (*(v15 + 8))(v30, v31);
  sub_1002868FC(v22, v17 + v10[9], type metadata accessor for AttributionPerfMetrics);
  sub_100286834(v17, v26, type metadata accessor for AttributionNetworkRequestData);
  sub_100003894(v33);
  return sub_10028689C(v17, type metadata accessor for AttributionNetworkRequestData);
}

uint64_t sub_1002839B8()
{
  v1 = *v0;
  v2 = 0x73726564616568;
  v3 = 0x6449656C646E7562;
  v4 = 0x646F6874656DLL;
  if (v1 != 4)
  {
    v4 = 0x7274654D66726570;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 2036625250;
  if (v1 != 1)
  {
    v5 = 6910581;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100283A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100285970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100283A90(uint64_t a1)
{
  v2 = sub_100286744();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100283ACC(uint64_t a1)
{
  v2 = sub_100286744();

  return CodingKey.debugDescription.getter(a1, v2);
}

id AttributionRetryWorkerBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttributionRetryWorkerBridge();
  return objc_msgSendSuper2(&v2, "init");
}

id AttributionRetryWorkerBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AttributionRetryWorkerBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_100283E48(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v8 = sub_1001E27A8(&qword_1004D92B0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v18 - v9);
  type metadata accessor for AttributionRetryWorker(0);
  v11 = swift_dynamicCastClass();
  if (v11)
  {
    v12 = v11;
    v13 = type metadata accessor for AttributionRetryWorker.OriginalRequest(0);
    sub_100286834(a5, v10 + *(v13 + 24), type metadata accessor for AttributionNetworkRequestData);
    *v10 = a3;
    v10[1] = a4;
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
    v14 = OBJC_IVAR____TtC11Attribution22AttributionRetryWorker_originalRequest;
    swift_beginAccess();
    swift_unknownObjectRetain();
    v15 = a3;
    v16 = a4;
    sub_100286C8C(v10, v12 + v14, &qword_1004D92B0);
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = sub_100398F28();
    APSimulateCrash();
    v17 = v18;
  }
}

uint64_t sub_100284020(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v105 = a5;
  v106 = a6;
  v101 = a3;
  v102 = a4;
  v104 = a1;
  v97 = sub_1003979F8();
  __chkstk_darwin(v97);
  v98 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributionNetworkRequestData(0);
  v100 = *(v9 - 8);
  __chkstk_darwin(v9);
  v103 = (&v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1001E27A8(&qword_1004D92A8);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v96 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v96 - v15;
  v17 = sub_1001E27A8(&qword_1004D92B0);
  __chkstk_darwin(v17 - 8);
  v19 = &v96 - v18;
  v20 = type metadata accessor for AttributionRetryWorker.OriginalRequest(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = mach_continuous_time();

  v104 = sub_100269608(v104, a2);
  v24 = OBJC_IVAR____TtC11Attribution22AttributionRetryWorker_originalRequest;
  swift_beginAccess();
  sub_10000ADB4(v6 + v24, v19, &qword_1004D92B0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1001ED244(v19, &qword_1004D92B0);
    v25 = v100;
    (*(v100 + 56))(v16, 1, 1, v9);
    v26 = objc_autoreleasePoolPush();
    sub_100285054(v101, v102, v16);
    objc_autoreleasePoolPop(v26);
    sub_10000ADB4(v16, v14, &qword_1004D92A8);
    if ((*(v25 + 48))(v14, 1, v9) == 1)
    {
      sub_1001ED244(v14, &qword_1004D92A8);
      sub_1003993E8();
      sub_100004218(0, &qword_1004D5D30);
      v27 = sub_1003995A8();
      sub_100398B98();

      v28 = v98;
      *v98 = 0;
      swift_storeEnumTagMultiPayload();
      v105(v28);
      sub_10028689C(v28, &type metadata accessor for WorkResult);
      return sub_1001ED244(v16, &qword_1004D92A8);
    }

    v42 = v9;
    v43 = v103;
    sub_1002868FC(v14, v103, type metadata accessor for AttributionNetworkRequestData);
    v44 = *v43;
    v96 = v16;
    if (v44 && *(v44 + 16) && ((v45 = sub_1001EC1DC(0xD000000000000018, 0x800000010042DF60), (v46 & 1) != 0) || *(v44 + 16) && (v45 = sub_1001EC1DC(0xD000000000000017, 0x8000000100430F60), (v47 & 1) != 0)))
    {
      v48 = (*(v44 + 56) + 16 * v45);
      v50 = *v48;
      v49 = v48[1];
    }

    else
    {
      v50 = 0;
      v49 = 0xE000000000000000;
    }

    v59 = sub_1003993D8();
    sub_100004218(0, &qword_1004D5D30);
    v60 = sub_1003995A8();
    v61 = os_log_type_enabled(v60, v59);
    v102 = v44;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock = v63;
      *v62 = 134218242;
      *(v62 + 4) = v104;
      *(v62 + 12) = 2080;
      v64 = sub_100005700(v50, v49, &aBlock);

      *(v62 + 14) = v64;
      _os_log_impl(&_mh_execute_header, v60, v59, "Retry: attempt retry:%lu\nRetry: attempt sigID:%s", v62, 0x16u);
      sub_100003894(v63);
    }

    else
    {
    }

    v65 = *(v42 + 36);
    v66 = v103;
    v101 = v42;
    v67 = *(v103 + v65);
    type metadata accessor for AttributionPerfMetrics(0);
    v68 = objc_allocWithZone(APAttributionUploadStatusListener);
    v69 = sub_100398F28();
    isa = sub_100397688().super.isa;
    v71 = sub_100397688().super.isa;
    v72 = sub_100397688().super.isa;
    v73 = sub_100397688().super.isa;
    v74 = [v68 initWithIntervalId:v67 reportingStorefront:v69 requestTimestamp:isa daemonStartTime:v71 tokenPayloadDeliveryStartTime:v72 tokenReturnedToClientDate:v73];

    [v74 requestBuildingStartedWithTimestamp:v99];
    v75 = swift_allocObject();
    v77 = v104;
    v76 = v105;
    v75[2] = v74;
    v75[3] = v77;
    v78 = v106;
    v75[4] = v76;
    v75[5] = v78;
    v79 = objc_opt_self();

    v80 = v74;
    v81 = [v79 sharedAPNetworkClient];
    v82 = v101;
    v83 = sub_100398F28();
    v84 = [v81 temporarySessionForClient:v83];

    v85 = *(v66 + *(v82 + 8));
    v86 = *(v66 + 16);

    sub_100397438(v87);
    v89 = v88;
    if (v102)
    {
      v90.super.isa = sub_100398E48().super.isa;
    }

    else
    {
      v90.super.isa = 0;
    }

    if (v86 >> 60 == 15)
    {
      v91 = 0;
    }

    else
    {
      v91 = sub_100397538().super.isa;
    }

    v92 = objc_allocWithZone(APHTTPRequest);
    v111 = sub_100286964;
    v112 = v75;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_100284FEC;
    v110 = &unk_10047C438;
    v93 = _Block_copy(&aBlock);

    v94 = [v92 initWithURL:v89 HTTPMethod:v85 HTTPHeaders:v90.super.isa HTTPBody:v91 serviceName:0 completionHandler:v93];
    _Block_release(v93);

    sub_100286970(v94);
    [v80 requestIsAboutToBeSent];
    v95 = [v84 sendRequest:v94];

    sub_1001ED244(v96, &qword_1004D92A8);
    v57 = type metadata accessor for AttributionNetworkRequestData;
    v58 = v103;
  }

  else
  {
    sub_1002868FC(v19, v23, type metadata accessor for AttributionRetryWorker.OriginalRequest);
    v30 = *&v23[*(v20 + 24) + *(v9 + 36)];
    type metadata accessor for AttributionPerfMetrics(0);
    v31 = objc_allocWithZone(APAttributionUploadStatusListener);
    v32 = sub_100398F28();
    v33 = sub_100397688().super.isa;
    v34 = sub_100397688().super.isa;
    v35 = sub_100397688().super.isa;
    v36 = sub_100397688().super.isa;
    v37 = [v31 initWithIntervalId:v30 reportingStorefront:v32 requestTimestamp:v33 daemonStartTime:v34 tokenPayloadDeliveryStartTime:v35 tokenReturnedToClientDate:v36];

    v38 = *(v23 + 1);
    v39 = [v38 completionHandler];
    v40 = v23;
    if (v39)
    {
      v41 = swift_allocObject();
      *(v41 + 16) = v39;
      v39 = sub_100286BF4;
    }

    else
    {
      v41 = 0;
    }

    v51 = v104;
    v52 = swift_allocObject();
    v52[2] = v37;
    v52[3] = v51;
    v53 = v106;
    v52[4] = v105;
    v52[5] = v53;
    v52[6] = v39;
    v52[7] = v41;
    v111 = sub_100286BD4;
    v112 = v52;
    aBlock = _NSConcreteStackBlock;
    v108 = 1107296256;
    v109 = sub_100284FEC;
    v110 = &unk_10047C488;
    v54 = _Block_copy(&aBlock);
    v55 = v37;

    sub_100286BE4(v39);

    [v38 setCompletionHandler:v54];
    _Block_release(v54);
    sub_100286970(v38);
    [v55 requestIsAboutToBeSent];
    v56 = [*v40 sendRequest:v38];

    sub_10023998C(v39);
    v57 = type metadata accessor for AttributionRetryWorker.OriginalRequest;
    v58 = v40;
  }

  return sub_10028689C(v58, v57);
}

uint64_t sub_100284BF4(void *a1, void *a2, unint64_t a3, void (*a4)(uint64_t *), uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v42 = a5;
  v43 = a4;
  v12 = sub_100397748();
  v40 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1003979F8();
  v16 = __chkstk_darwin(v15);
  v18 = (&v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v20 = (&v37 - v19);
  [a2 receivedResponse:a1 retryCount:a3];
  v41 = a1;
  v21 = sub_100269924(a1, a3, a2);
  if (v21 == 2)
  {
    v37 = v15;
    v38 = a6;
    v39 = a7;
    v22 = sub_10026A1D4(a3);
    if (v23)
    {
      v25 = v22;
      v26 = v23;
      v27 = v24;
      v28 = *(sub_1001E27A8(&qword_1004D6CB8) + 64);
      *v18 = v25;
      v18[1] = v26;

      sub_100397738();
      sub_1003976B8();
      (*(v40 + 8))(v14, v12);

      v29 = sub_100397C98();
      if (v27)
      {
        v44 = _swiftEmptyArrayStorage;
        sub_100286798(&qword_1004D6CC0, &type metadata accessor for WorkOrderFlags);
        sub_1001E27A8(&qword_1004D6CC8);
        sub_100243350();
        sub_100399658();
        v30 = 0;
      }

      else
      {
        v30 = 1;
      }

      a6 = v38;
      (*(*(v29 - 8) + 56))(v18 + v28, v30, 1, v29);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v31 = v41;
      v32 = [v41 responseError];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1003973D8();
        v35 = [v34 code];
      }

      else
      {
        v35 = [v31 responseStatusCode];
      }

      a6 = v38;
      [a2 uploadFailedWithStatusCode:v35 retryCount:a3];
      *v20 = 0;
      swift_storeEnumTagMultiPayload();
      v18 = v20;
    }
  }

  else
  {
    *v20 = v21 & 1;
    swift_storeEnumTagMultiPayload();
    v18 = v20;
  }

  v43(v18);
  result = sub_10028689C(v18, &type metadata accessor for WorkResult);
  if (a6)
  {

    a6(v41);
    return sub_10023998C(a6);
  }

  return result;
}

void sub_100284FEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100285054(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v6 = sub_1001E27A8(&qword_1004D92A8);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v15 - v8;
  v10 = a1(v7);
  if (v3)
  {

LABEL_4:
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v12 = sub_1003995A8();
    sub_100398B98();

    return;
  }

  if (v11 >> 60 == 15)
  {
    goto LABEL_4;
  }

  v13 = v10;
  v14 = v11;
  type metadata accessor for AttributionNetworkRequestData(0);
  sub_100286798(&qword_1004D92B8, type metadata accessor for AttributionNetworkRequestData);
  sub_100398138();
  sub_1001DDE50(v13, v14);
  sub_100286C8C(v9, a3, &qword_1004D92A8);
}

uint64_t sub_1002852A4(void *a1, void *a2, unint64_t a3, void (*a4)(void), uint64_t a5)
{
  v10 = sub_100397748();
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1003979F8();
  v14 = __chkstk_darwin(v13);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = (&v34 - v17);
  [a2 receivedResponse:a1 retryCount:a3];
  v19 = sub_100269924(a1, a3, a2);
  if (v19 == 2)
  {
    v34 = a5;
    v35 = a4;
    v20 = sub_10026A1D4(a3);
    if (v21)
    {
      v23 = v20;
      v24 = v21;
      v25 = v22;
      v26 = *(sub_1001E27A8(&qword_1004D6CB8) + 64);
      *v16 = v23;
      v16[1] = v24;

      sub_100397738();
      sub_1003976B8();
      (*(v36 + 8))(v12, v10);

      v27 = sub_100397C98();
      if (v25)
      {
        v37 = _swiftEmptyArrayStorage;
        sub_100286798(&qword_1004D6CC0, &type metadata accessor for WorkOrderFlags);
        sub_1001E27A8(&qword_1004D6CC8);
        sub_100243350();
        sub_100399658();
        v28 = 0;
      }

      else
      {
        v28 = 1;
      }

      a4 = v35;
      (*(*(v27 - 8) + 56))(v16 + v26, v28, 1, v27);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v29 = [a1 responseError];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1003973D8();
        v32 = [v31 code];
      }

      else
      {
        v32 = [a1 responseStatusCode];
      }

      [a2 uploadFailedWithStatusCode:v32 retryCount:a3];
      *v18 = 0;
      swift_storeEnumTagMultiPayload();
      v16 = v18;
      a4 = v35;
    }
  }

  else
  {
    *v18 = v19 & 1;
    swift_storeEnumTagMultiPayload();
    v16 = v18;
  }

  a4(v16);
  return sub_10028689C(v16, &type metadata accessor for WorkResult);
}

uint64_t sub_100285660()
{
  sub_1001ED244(v0 + OBJC_IVAR____TtC11Attribution22AttributionRetryWorker_originalRequest, &qword_1004D92B0);

  return swift_deallocClassInstance();
}

uint64_t sub_1002856D8(uint64_t a1)
{
  sub_100003894(a1);
  type metadata accessor for AttributionRetryWorker(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC11Attribution22AttributionRetryWorker_originalRequest;
  v3 = type metadata accessor for AttributionRetryWorker.OriginalRequest(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  return v1;
}

uint64_t sub_10028575C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xEA00000000006449;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000100431050 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000100431070 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74536E6F6D656164 && a2 == 0xEF656D6954747261 || (sub_1003999B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000100431090 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004310B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100285970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73726564616568 && a2 == 0xE700000000000000;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646F6874656DLL && a2 == 0xE600000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7274654D66726570 && a2 == 0xEB00000000736369)
  {

    return 5;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100285B6C(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v78 = a8;
  v79 = a5;
  v80 = a6;
  v81 = a7;
  v15 = sub_1001E27A8(&qword_1004D92C8);
  __chkstk_darwin(v15 - 8);
  v17 = &v68 - v16;
  v18 = type metadata accessor for AttributionNetworkRequestData(0);
  v74 = *(v18 - 1);
  v19 = __chkstk_darwin(v18);
  v21 = &v68 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v20;
  __chkstk_darwin(v19);
  v82 = (&v68 - v22);
  v23 = type metadata accessor for AttributionPerfMetrics(0);
  __chkstk_darwin(v23);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [a1 name];
  if (!v26)
  {
    v26 = [a2 serviceName];
    if (!v26)
    {
      v67 = sub_100398F28();
      APSimulateCrash();

      return 0;
    }
  }

  v27 = v26;
  v69 = v21;
  v70 = a1;
  v83 = a2;
  v71 = a3;
  v72 = a4;
  v73 = v17;
  v76 = sub_100398F58();
  v77 = v28;

  v29 = v23[6];
  v30 = sub_100397748();
  v31 = *(*(v30 - 8) + 16);
  v31(&v25[v29], v78, v30);
  v31(&v25[v23[7]], a9, v30);
  v31(&v25[v23[8]], a10, v30);
  v32 = v25;
  v31(&v25[v23[9]], a11, v30);
  v33 = v80;
  *v25 = v79;
  *(v25 + 1) = v33;
  *(v25 + 2) = v81;

  v34 = v83;
  v35 = [v83 HTTPMethod];
  v36 = [v34 allHTTPHeaderFields];
  if (v36)
  {
    v37 = v36;
    v38 = sub_100398E68();
  }

  else
  {
    v38 = 0;
  }

  v39 = v82;
  v40 = [v34 HTTPBody];
  if (v40)
  {
    v41 = v40;
    v42 = sub_100397558();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xF000000000000000;
  }

  v45 = [v34 URL];
  sub_100397478();

  sub_100286834(v32, v39 + v18[9], type metadata accessor for AttributionPerfMetrics);
  *(v39 + v18[8]) = v35;
  *v39 = v38;
  v39[1] = v42;
  v39[2] = v44;
  v46 = (v39 + v18[7]);
  v47 = v77;
  *v46 = v76;
  v46[1] = v47;
  sub_100286798(&qword_1004D92D0, type metadata accessor for AttributionNetworkRequestData);
  v48 = sub_100398128();
  if (v49 >> 60 == 15)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v50 = sub_1003995A8();
    sub_100398B98();

    sub_10028689C(v39, type metadata accessor for AttributionNetworkRequestData);
    sub_10028689C(v32, type metadata accessor for AttributionPerfMetrics);
    return 0;
  }

  v52 = v49;
  v53 = v48;
  sub_100397DB8();
  result = sub_100397D98();
  v82 = result;
  if (result)
  {
    v54 = type metadata accessor for AttributionRetryWorker(0);
    v84[3] = sub_1001E27A8(&qword_1004D92D8);
    v84[0] = v54;
    v55 = sub_100398118();
    v80 = v56;
    v81 = v55;
    sub_100003894(v84);
    v57 = v53;
    sub_1001EF9F4(v53, v52);
    v58 = v73;
    sub_100397C88();
    v59 = sub_100397C98();
    (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    v60 = v69;
    sub_100286834(v39, v69, type metadata accessor for AttributionNetworkRequestData);
    v61 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v62 = swift_allocObject();
    v63 = v70;
    v64 = v83;
    *(v62 + 16) = v70;
    *(v62 + 24) = v64;
    sub_1002868FC(v60, v62 + v61, type metadata accessor for AttributionNetworkRequestData);
    v65 = v63;
    v66 = v64;
    sub_100397D78();

    sub_1001DDE50(v57, v52);

    sub_1001DDE50(v57, v52);
    sub_1001ED244(v58, &qword_1004D92C8);
    sub_10028689C(v39, type metadata accessor for AttributionNetworkRequestData);
    sub_10028689C(v32, type metadata accessor for AttributionPerfMetrics);
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100286308()
{
  sub_100286398();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100286398()
{
  if (!qword_1004D8FB8)
  {
    type metadata accessor for AttributionRetryWorker.OriginalRequest(255);
    v0 = sub_1003995E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D8FB8);
    }
  }
}

uint64_t sub_100286458()
{
  result = sub_100004218(319, &qword_1004D90D0);
  if (v1 <= 0x3F)
  {
    result = sub_100004218(319, &unk_1004D90D8);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for AttributionNetworkRequestData(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_10028655C()
{
  sub_100286630();
  if (v0 <= 0x3F)
  {
    sub_1002434D0();
    if (v1 <= 0x3F)
    {
      sub_1003974E8();
      if (v2 <= 0x3F)
      {
        type metadata accessor for APHTTPMethod(319);
        if (v3 <= 0x3F)
        {
          type metadata accessor for AttributionPerfMetrics(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100286630()
{
  if (!qword_1004D9178)
  {
    sub_1001E27F0(&qword_1004D7AA8);
    v0 = sub_1003995E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D9178);
    }
  }
}

uint64_t sub_1002866BC()
{
  result = sub_100397748();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100286744()
{
  result = qword_1004D9260;
  if (!qword_1004D9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9260);
  }

  return result;
}

uint64_t sub_100286798(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002867E0()
{
  result = qword_1004D9298;
  if (!qword_1004D9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9298);
  }

  return result;
}

uint64_t sub_100286834(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10028689C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002868FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_100286970(void *a1)
{
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v2 = objc_allocWithZone(NSUserDefaults);
    v3 = sub_100398F28();
    v4 = [v2 initWithSuiteName:v3];

    if (v4)
    {
      v5 = v4;
      v6 = sub_100398F28();
      v7 = [v5 stringForKey:v6];

      if (v7)
      {
        v8 = sub_100398F58();
        v10 = v9;

        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        if (v11)
        {
          v12 = sub_100398F28();
          [a1 setRequestHeader:v12 withValue:v7];
        }
      }

      v21 = v5;
      v13 = sub_100398F28();
      v14 = [v21 stringForKey:v13];

      if (v14)
      {
        v15 = sub_100398F58();
        v17 = v16;

        v18 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v18 = v15 & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          v19 = sub_100398F28();
          [a1 setRequestHeader:v19 withValue:v14];

          v20 = v14;
        }

        else
        {
          v20 = v21;
          v21 = v14;
        }
      }
    }
  }
}

uint64_t sub_100286BE4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_100286C08(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AttributionNetworkRequestData(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  sub_100283E48(a1, a2, v6, v7, v8);
}

uint64_t sub_100286C8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1001E27A8(a3);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100286D04(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100286D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100286E58()
{
  result = qword_1004D92E0;
  if (!qword_1004D92E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D92E0);
  }

  return result;
}

unint64_t sub_100286EB0()
{
  result = qword_1004D92E8;
  if (!qword_1004D92E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D92E8);
  }

  return result;
}

unint64_t sub_100286F08()
{
  result = qword_1004D92F0;
  if (!qword_1004D92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D92F0);
  }

  return result;
}

unint64_t sub_100286F60()
{
  result = qword_1004D92F8;
  if (!qword_1004D92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D92F8);
  }

  return result;
}

unint64_t sub_100286FB8()
{
  result = qword_1004D9300;
  if (!qword_1004D9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9300);
  }

  return result;
}

unint64_t sub_100287010()
{
  result = qword_1004D9308;
  if (!qword_1004D9308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9308);
  }

  return result;
}

uint64_t sub_1002870D8(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D9410);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_1000035B8(a1, a1[3]);
  sub_100288418();
  sub_100399BF8();
  v11[15] = 0;
  type metadata accessor for AttributionPayloadDTO(0);
  sub_100289054(&qword_1004D9418, type metadata accessor for AttributionPayloadDTO);
  sub_100399978();
  if (!v2)
  {
    v9 = type metadata accessor for AttributionSignerWorkerTask(0);
    v11[14] = 1;
    sub_100399988();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_100266830();
    sub_100399948();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1002872D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for AttributionPayloadDTO(0);
  __chkstk_darwin(v4);
  v19 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001E27A8(&qword_1004D93F8);
  v17 = *(v6 - 8);
  v18 = v6;
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for AttributionSignerWorkerTask(0);
  __chkstk_darwin(v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_100288418();
  sub_100399BC8();
  if (v2)
  {
    return sub_100003894(a1);
  }

  v12 = v17;
  v13 = v11;
  v23 = 0;
  sub_100289054(&qword_1004D9408, type metadata accessor for AttributionPayloadDTO);
  v14 = v18;
  sub_1003998D8();
  sub_1002884CC(v19, v13, type metadata accessor for AttributionPayloadDTO);
  v22 = 1;
  *(v13 + *(v9 + 20)) = sub_1003998E8();
  v20 = 2;
  sub_100266738();
  sub_1003998A8();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v21;
  sub_100288F80(v13, v16, type metadata accessor for AttributionSignerWorkerTask);
  sub_100003894(a1);
  return sub_10028846C(v13, type metadata accessor for AttributionSignerWorkerTask);
}

uint64_t sub_100287644(uint64_t a1)
{
  v2 = sub_100288418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100287680(uint64_t a1)
{
  v2 = sub_100288418();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002876EC(uint64_t a1)
{
  v2 = sub_100397A48();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == enum case for WorkerError.failedToDeserializeTask(_:))
  {
    (*(v3 + 96))(v5, v2);
    v7 = *v5;
    v8 = sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v9 = sub_1003995A8();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v7;
      v23 = v11;
      *v10 = 136446210;
      sub_1001E27A8(&qword_1004D8288);
      v12 = sub_1003995D8();
      v14 = sub_100005700(v12, v13, &v23);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v9, v8, "Attribution Signing: Failed to deserialize task. %{public}s", v10, 0xCu);
      sub_100003894(v11);
    }

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(7);
    sub_100264F44(v7);
  }

  else
  {
    v15 = v6;
    v16 = enum case for WorkerError.failedToSerializeTask(_:);
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v17 = sub_1003995A8();
    sub_100398B98();

    if (v15 == v16)
    {
      v18 = sub_100398F28();
      v19 = sub_100398F28();
      CreateDiagnosticReport();

      _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(15);
    }

    else
    {
      v20 = sub_100398F28();
      v21 = sub_100398F28();
      CreateDiagnosticReport();

      _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(21);
      (*(v3 + 8))(v5, v2);
    }
  }
}

uint64_t sub_100287AF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  v40 = a2;
  v41 = a3;
  v35 = sub_1003979F8();
  __chkstk_darwin(v35);
  v36 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributionSignerWorkerTask(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  v13 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v34 - v15;
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  v39 = a1;
  sub_100288F80(a1, &v34 - v17, type metadata accessor for AttributionSignerWorkerTask);
  sub_100288F80(v18, v16, type metadata accessor for AttributionSignerWorkerTask);
  v19 = *(v10 + 80);
  v20 = (v19 + 16) & ~v19;
  v21 = swift_allocObject();
  sub_1002884CC(v18, v21 + v20, type metadata accessor for AttributionSignerWorkerTask);
  v22 = (v21 + ((v11 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v37 = a4;
  v38 = a5;
  *v22 = a4;
  v22[1] = a5;

  sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v23 = sub_1003995A8();
  sub_100398B98();

  if (qword_1004D6138 != -1)
  {
    swift_once();
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    sub_10028846C(v16, type metadata accessor for AttributionSignerWorkerTask);
    v26 = *(v25 + 24);
    swift_unknownObjectRetain();

    v27 = v39;
    sub_100288F80(v39, v13, type metadata accessor for AttributionSignerWorkerTask);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_100288534;
    *(v28 + 24) = v21;
    sub_1002884CC(v13, v28 + ((v19 + 32) & ~v19), type metadata accessor for AttributionSignerWorkerTask);

    sub_100242ABC(v27, v40, v41, v26, sub_1002885D4, v28);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1003993E8();
    v30 = sub_1003995A8();
    sub_100398B98();

    v31 = sub_100398F28();
    v32 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(5);
    v33 = v36;
    *v36 = 0;
    swift_storeEnumTagMultiPayload();
    sub_100287FC0(v33, v16, v37);

    sub_10028846C(v33, &type metadata accessor for WorkResult);
    return sub_10028846C(v16, type metadata accessor for AttributionSignerWorkerTask);
  }
}

uint64_t sub_100287FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = sub_1003979F8();
  __chkstk_darwin(v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + *(type metadata accessor for AttributionSignerWorkerTask(0) + 24)))
  {
    sub_100288F80(a1, v8, &type metadata accessor for WorkResult);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v9 = *v8;
      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = 5604;
      }

      v11 = [objc_allocWithZone(type metadata accessor for ODAttributionAnalytics()) init];
      sub_10027D370(v10, v9);
    }

    else
    {
      sub_10028846C(v8, &type metadata accessor for WorkResult);
    }
  }

  return a3(a1);
}

uint64_t sub_1002880FC(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_1001E27A8(&qword_1004D6CD8);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AttributionPayloadDTO(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100288648(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1002886B8(v9);
LABEL_5:
    v17 = type metadata accessor for AttributionSigner.Result();
    return a2(a1 + *(v17 + 24));
  }

  sub_1002884CC(v9, v13, type metadata accessor for AttributionPayloadDTO);
  v14 = type metadata accessor for AttributionSigner.Result();
  v15 = (a1 + *(v14 + 20));
  v16 = v15[1];
  if (v16 >> 60 == 15)
  {
    sub_10028846C(v13, type metadata accessor for AttributionPayloadDTO);
    goto LABEL_5;
  }

  v19 = v14;
  v20 = *v15;
  v21 = type metadata accessor for AttributionSignerWorkerTask(0);
  v22 = *(a4 + *(v21 + 20));
  v23 = *(a4 + *(v21 + 24));
  sub_100245FB4(v20, v16);
  sub_100288720(v13, v20, v16, v23, v22);
  a2(a1 + *(v19 + 24));
  sub_1001DDE50(v20, v16);
  return sub_10028846C(v13, type metadata accessor for AttributionPayloadDTO);
}

void sub_10028838C()
{
  type metadata accessor for AttributionPayloadDTO(319);
  if (v0 <= 0x3F)
  {
    sub_100266694();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_100288418()
{
  result = qword_1004D9400;
  if (!qword_1004D9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9400);
  }

  return result;
}

uint64_t sub_10028846C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002884CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100288534(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionSignerWorkerTask(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100287FC0(a1, v1 + v4, v5);
}

uint64_t sub_1002885D4(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionSignerWorkerTask(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1002880FC(a1, v4, v5, v6);
}

uint64_t sub_100288648(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D6CD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002886B8(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D6CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100288720(char *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v57 = a5;
  v55 = a4;
  v56 = a4;
  v6 = sub_100398DA8();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v70 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100399468();
  v64 = *(v8 - 8);
  v65 = v8;
  __chkstk_darwin(v8);
  v63 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_100399438();
  __chkstk_darwin(v61);
  v62 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100398DD8();
  v68 = *(v11 - 8);
  v69 = v11;
  __chkstk_darwin(v11);
  v67 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AttributionDeliveryWorkerTask(0);
  v14 = v13 - 8;
  v58 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v59 = v16;
  v60 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v54 = &v54 - v17;
  v18 = type metadata accessor for SignedAttributionPayloadDTO(0);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003993F8();
  sub_100004218(0, &qword_1004D5D30);
  v22 = sub_1003995A8();
  sub_100398B98();

  v23 = *a1;

  v24 = sub_100397548(0);
  v26 = v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = v23;
  sub_10023C788(v24, v26, 0xD000000000000018, 0x800000010042DF60, isUniquelyReferenced_nonNull_native);
  v28 = aBlock[0];
  v30 = *(a1 + 1);
  v29 = *(a1 + 2);
  v31 = type metadata accessor for AttributionPayloadDTO(0);
  v32 = *(v31 + 24);
  v33 = *(v19 + 32);
  v34 = sub_1003974E8();
  (*(*(v34 - 8) + 16))(&v21[v33], &a1[v32], v34);
  v35 = &a1[*(v31 + 28)];
  v36 = *v35;
  v37 = *(v35 + 1);
  *v21 = v28;
  *(v21 + 1) = v30;
  *(v21 + 2) = v29;
  v38 = &v21[*(v19 + 36)];
  *v38 = v36;
  *(v38 + 1) = v37;
  v66 = v21;
  v39 = v54;
  sub_100288F80(v21, v54, type metadata accessor for SignedAttributionPayloadDTO);
  v40 = v55;
  *(v39 + *(v14 + 28)) = v57;
  v41 = v39;
  *(v39 + *(v14 + 32)) = v40;
  if (v56 == 2 || (v40 & 1) == 0)
  {
    sub_1001EF9F4(v30, v29);
  }

  else
  {
    v42 = objc_allocWithZone(type metadata accessor for ODAttributionAnalytics());
    sub_1001EF9F4(v30, v29);

    v43 = [v42 init];
    sub_10027D528();
  }

  sub_100004218(0, &qword_1004D40C0);
  v44 = v67;
  sub_100398DC8();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100289054(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_1001E27A8(&qword_1004D40D0);
  sub_100004380(&qword_1004D40D8, &qword_1004D40D0);
  sub_100399658();
  (*(v64 + 104))(v63, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v65);
  v45 = sub_100399488();
  v46 = v41;
  v47 = v60;
  sub_100288F80(v41, v60, type metadata accessor for AttributionDeliveryWorkerTask);
  v48 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v49 = swift_allocObject();
  sub_1002884CC(v47, v49 + v48, type metadata accessor for AttributionDeliveryWorkerTask);
  aBlock[4] = sub_100288FE8;
  aBlock[5] = v49;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001F77E8;
  aBlock[3] = &unk_10047C698;
  v50 = _Block_copy(aBlock);
  sub_100398DC8();
  v73 = _swiftEmptyArrayStorage;
  sub_100289054(&qword_1004D40A0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1001E27A8(&unk_1004DC400);
  sub_100004380(&qword_1004D40B0, &unk_1004DC400);
  v51 = v70;
  v52 = v72;
  sub_100399658();
  sub_100399478();
  _Block_release(v50);

  (*(v71 + 8))(v51, v52);
  (*(v68 + 8))(v44, v69);
  sub_10028846C(v46, type metadata accessor for AttributionDeliveryWorkerTask);
  sub_10028846C(v66, type metadata accessor for SignedAttributionPayloadDTO);
}

uint64_t sub_100288F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100288FE8()
{
  type metadata accessor for AttributionDeliveryWorkerTask(0);
  type metadata accessor for AttributionDeliveryWorker(0);
  return sub_100398158();
}

uint64_t sub_100289054(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002890B0()
{
  result = qword_1004D9420;
  if (!qword_1004D9420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9420);
  }

  return result;
}

unint64_t sub_100289108()
{
  result = qword_1004D9428;
  if (!qword_1004D9428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9428);
  }

  return result;
}

unint64_t sub_100289160()
{
  result = qword_1004D9430;
  if (!qword_1004D9430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9430);
  }

  return result;
}

void *sub_1002891B4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100397588();
  v5 = *(v4 - 8);
  result = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_1001EFA90(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_1001EAB38(v10, 0);
      v14 = sub_1003974F8();
      sub_1001EFA90(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

unint64_t sub_100289334()
{
  result = qword_1004D9438;
  if (!qword_1004D9438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D9438);
  }

  return result;
}

uint64_t sub_100289398(uint64_t result, int a2, int a3, char a4)
{
  if (a2 <= 31)
  {
    if ((a2 - 0x10000000) >> 29 == 7)
    {
      if (a3 > 8 * a2)
      {
        return result;
      }

      v9 = a3 + 7;
      if (a3 >= 0)
      {
        v9 = a3;
      }

      v5 = v9 >> 3;
      v6 = a3;
      v8 = a3 - (v9 & 0xFFFFFFF8);
      v7 = result;
      v4 = sub_1002891B4(*result, *(result + 8));
      if ((a4 & 1) == 0)
      {
        if (v8 >= 0)
        {
          LOBYTE(v8) = ~(1 << v8);
        }

        else
        {
          LOBYTE(v8) = -1;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          if (v6 < -7)
          {
LABEL_27:
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

LABEL_19:
          if (v4[2] > v5)
          {
            v11 = v4 + v5;
            v12 = *(v4 + v5 + 32) & v8;
            goto LABEL_21;
          }

LABEL_29:
          __break(1u);
          return result;
        }

LABEL_26:
        result = sub_1002895A8(v4);
        v4 = result;
        if (v6 < -7)
        {
          goto LABEL_27;
        }

        goto LABEL_19;
      }

      if (v8 >= 0)
      {
        v8 = 1 << v8;
      }

      else
      {
        LOBYTE(v8) = 0;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (v6 >= -7)
        {
          goto LABEL_12;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }
    }

    else
    {
      __break(1u);
    }

    result = sub_1002895A8(v4);
    v4 = result;
    if (v6 >= -7)
    {
LABEL_12:
      if (v4[2] > v5)
      {
        v11 = v4 + v5;
        v12 = *(v4 + v5 + 32) | v8;
LABEL_21:
        v11[32] = v12;
        v13 = sub_100289800(v4);
        v15 = v14;

        *v7 = v13;
        v7[1] = v15;
        return result;
      }

      goto LABEL_28;
    }

    goto LABEL_25;
  }

  return result;
}

_BYTE *sub_100289514@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_100289648(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100289700(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10028977C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_1002895BC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100289648(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_100289700(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1003971B8();
  swift_allocObject();
  result = sub_100397178();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_100397518();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_10028977C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1003971B8();
  swift_allocObject();
  result = sub_100397178();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_100289800(uint64_t a1)
{
  v9 = sub_1001E27A8(&qword_1004D94F0);
  v10 = sub_100289A70();
  v8[0] = a1;
  v2 = sub_1000035B8(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_100289514(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100003894(v8);
  return v5;
}

__n128 sub_1002898B0@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_100397A58();
  v4 = v3;
  __src = sub_1002895BC(56);
  v5 = sub_100289648(&__src, &__src + 1);
  v7 = v6;
  v8 = sub_100397A58();
  v28 = v8;
  v29 = v9;
  v26 = v8;
  v27 = v9;
  v10 = __src;
  if (__src < 0)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v11 = v8;
  v12 = v9;
  sub_1001EF9F4(v8, v9);
  sub_1001EF9F4(v11, v12);
  sub_100289398(&v28, 7, v10, 1);
  if (__src < 0)
  {
    goto LABEL_5;
  }

  sub_100289398(&v26, 7, __src, 0);
  *&v25 = v2;
  *(&v25 + 1) = v4;
  sub_1001EF9F4(v2, v4);
  sub_100397578();
  v13 = v28;
  v14 = v29;
  sub_100397578();
  v24.n128_u64[0] = v2;
  v24.n128_u64[1] = v4;
  sub_1001EF9F4(v2, v4);
  sub_100397578();
  v21 = v2;
  v22 = v4;
  v15 = v7;
  v16 = v5;
  v18 = v26;
  v17 = v27;
  sub_100397578();
  sub_1001EFA90(v16, v15 & 0xFFFFFFFFFFFFFFLL);
  sub_1001EFA90(v11, v12);
  sub_1001EFA90(v18, v17);
  sub_1001EFA90(v13, v14);
  result = v24;
  v20 = v25;
  *a1 = v21;
  *(a1 + 8) = v22;
  *(a1 + 16) = v20;
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_100289A70()
{
  result = qword_1004D94F8;
  if (!qword_1004D94F8)
  {
    sub_1001E27F0(&qword_1004D94F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D94F8);
  }

  return result;
}

void sub_100289B18(id a1)
{
  v1 = qword_1004E68B8;
  qword_1004E68B8 = @"adprivacyd";
}

void sub_100289B74(id a1)
{
  v1 = qword_1004E68C8;
  qword_1004E68C8 = @"1";
}

void sub_100289B8C(id a1)
{
  v4 = +[APAMSBagManager bagSubProfile];
  v1 = +[APAMSBagManager bagSubProfileVersion];
  v2 = [AMSBag bagForProfile:v4 profileVersion:v1];
  v3 = qword_1004E68D8;
  qword_1004E68D8 = v2;
}

void sub_100289E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100289EA4(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 BOOLValue];
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138478083;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = v5;
      v7 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{private}@: Unable to get the 'isSearchLandingAdsEnabled' status from the bag. Error: %{public}@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10028A1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10028A1E0(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 BOOLValue];
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138478083;
      v9 = objc_opt_class();
      v10 = 2114;
      v11 = v5;
      v7 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{private}@: Unable to get the 'isSponsoredAdsEnabledForAdTrackingd' status from the bag. Error: %{public}@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10028A4EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10028A518(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 BOOLValue];
  }

  else
  {
    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412546;
      v9 = objc_opt_class();
      v10 = 2112;
      v11 = v5;
      v7 = v9;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@: Unable to get the 'useAMSMescal' key from the bag. Error: %@", &v8, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10028A6E8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (!a2 || v6)
  {
    v9 = APLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412546;
      v12 = objc_opt_class();
      v13 = 2112;
      v14 = v7;
      v10 = v12;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%@: Unable to get the 'useAMSMescal' key from the bag. Error: %@", &v11, 0x16u);
    }

    v8 = 1;
  }

  else
  {
    v8 = [a2 BOOLValue];
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v8, v7);
}

void sub_10028A8C4(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a2 && !v6)
  {
    [a2 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10028AA08(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a2 && !v6)
  {
    [a2 integerValue];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10028AB4C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a2 && !v6)
  {
    [a2 integerValue];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10028AC90(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7.n128_u64[0] = 0;
  v8 = v6;
  if (a2 && !v6)
  {
    [a2 doubleValue];
  }

  (*(*(a1 + 32) + 16))(v7);
}

void sub_10028ADD0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a2 && !v6)
  {
    [a2 integerValue];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_10028AE8C(id a1)
{
  qword_1004E68E0 = objc_alloc_init(APDeviceInfo);

  _objc_release_x1();
}

void sub_10028B00C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_10028B454(uint64_t a1)
{
  *(*(a1 + 32) + 40) = objc_alloc_init(APUnfairRecursiveLock);

  return _objc_release_x1();
}

__CFString *_statusToString(uint64_t a1)
{
  if (!a1)
  {
    v2 = @"None ";
    goto LABEL_11;
  }

  v1 = a1;
  if ((a1 & 2) != 0)
  {
    v2 = [&stru_1004810B8 stringByAppendingString:@"Wifi "];
    if ((v1 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v2 = &stru_1004810B8;
  if ((a1 & 4) != 0)
  {
LABEL_7:
    v3 = [(__CFString *)v2 stringByAppendingString:@"Cellular "];

    v2 = v3;
  }

LABEL_8:
  if ((v1 & 8) == 0)
  {
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = [(__CFString *)v2 stringByAppendingString:@"Expensive "];

  v2 = v6;
  if ((v1 & 0x10) != 0)
  {
LABEL_10:
    v4 = [(__CFString *)v2 stringByAppendingString:@"Constrained"];

    v2 = v4;
  }

LABEL_11:

  return v2;
}

void sub_10028BA7C(id a1)
{
  qword_1004E68F8 = objc_alloc_init(APTelephony);

  _objc_release_x1();
}

void sub_10028C01C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateTelephonyProperties];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setNetworkInfoUpdatingInProgress:0];
}

void sub_10028C180(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) maxDisplayBars];
  [v3 doubleValue];
  v5 = v4;

  v6 = [*(a1 + 32) bars];
  [v6 doubleValue];
  v8 = v7;

  v9 = [WeakRetained lock];
  [v9 lock];
  if (v5 <= 0.0)
  {
    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Unable to retrieve CT signal strength because maxBars is 0.", &v13, 2u);
    }
  }

  else
  {
    v10 = [NSNumber numberWithUnsignedInteger:vcvtad_u64_f64(v8 / v5 * 100.0)];
    [WeakRetained setLatestCellularSignalStrength:v10];

    v11 = APLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [WeakRetained latestCellularSignalStrength];
      v13 = 138543362;
      v14 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Update latest signal strength to %{public}@.", &v13, 0xCu);
    }
  }

  [v9 unlock];
}

id sub_10028CADC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);

  return [v3 invalidate];
}

void sub_10028CF70(id a1)
{
  qword_1004E6910 = objc_alloc_init(APIDAccountProvider);

  _objc_release_x1();
}

void sub_10028D160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10028E7D8(id a1, NSError *a2)
{
  v2 = a2;
  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = 138543362;
    v5 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Triggering a forceReconcile on adprivacyd. Keychain will be reloaded when notification is received that IDs in keychain have changed. Error: %{public}@.", &v4, 0xCu);
  }
}

void sub_10028E98C(id a1)
{
  v1 = qword_1004E6920;
  qword_1004E6920 = &off_100493E48;
}

uint64_t APPBLogAdEventResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_10028FB80(id a1)
{
  v1 = qword_1004E6930;
  qword_1004E6930 = &off_100493E70;
}

uint64_t APPBCachedAdReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        if (v13 == 4)
        {
          *(a1 + 40) |= 4u;
          LODWORD(v27) = 0;
          v21 = [a2 position] + 4;
          if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 4, v22 <= objc_msgSend(a2, "length")))
          {
            v25 = [a2 data];
            [v25 getBytes:&v27 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 24) = v27;
        }

        else
        {
          if (v13 != 5)
          {
LABEL_28:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_40;
          }

          *(a1 + 40) |= 2u;
          v27 = 0;
          v16 = [a2 position] + 8;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
          {
            v24 = [a2 data];
            [v24 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 16) = v27;
        }
      }

      else if (v13 == 1)
      {
        v19 = PBReaderReadString();
        v20 = *(a1 + 32);
        *(a1 + 32) = v19;
      }

      else
      {
        if (v13 != 2)
        {
          goto LABEL_28;
        }

        *(a1 + 40) |= 1u;
        v27 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v23 = [a2 data];
          [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v27;
      }

LABEL_40:
      v26 = [a2 position];
    }

    while (v26 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100291698(id a1)
{
  v1 = qword_1004E6940;
  qword_1004E6940 = &off_100493E98;
}

uint64_t APPBAdSpecificationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 5)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 16) = v21;
      }

      else if ((v12 >> 3) == 3)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBConfigurationReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v37 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v30 = PBReaderReadString();
          v31 = 24;
          goto LABEL_46;
        }

        if (v13 != 2)
        {
LABEL_47:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_57;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v38 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v38 & 0x7F) << v16;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_54;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_54:
        *(a1 + 32) = v22;
      }

      else
      {
        if (v13 == 3)
        {
          v23 = 0;
          v24 = 0;
          v25 = 0;
          *(a1 + 40) |= 4u;
          while (1)
          {
            v39 = 0;
            v26 = [a2 position] + 1;
            if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
            {
              v28 = [a2 data];
              [v28 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v25 |= (v39 & 0x7F) << v23;
            if ((v39 & 0x80) == 0)
            {
              break;
            }

            v23 += 7;
            v11 = v24++ >= 9;
            if (v11)
            {
              LOBYTE(v29) = 0;
              goto LABEL_50;
            }
          }

          v29 = (v25 != 0) & ~[a2 hasError];
LABEL_50:
          *(a1 + 36) = v29;
          goto LABEL_57;
        }

        if (v13 == 4)
        {
          v30 = PBReaderReadString();
          v31 = 16;
LABEL_46:
          v32 = *(a1 + v31);
          *(a1 + v31) = v30;

          goto LABEL_57;
        }

        if (v13 != 7)
        {
          goto LABEL_47;
        }

        *(a1 + 40) |= 1u;
        v36 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:&v36 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v36;
      }

LABEL_57:
      v35 = [a2 position];
    }

    while (v35 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1002934B0(uint64_t a1)
{
  [*(a1 + 32) startTime];
  v3 = v2;
  v4 = APLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v3 <= 0.0)
  {
    if (v5)
    {
      v12 = *(a1 + 32);
      *v21 = 134217984;
      *&v21[4] = v12;
      v9 = "%p: accumulating first item.";
      v10 = v4;
      v11 = 12;
      goto LABEL_6;
    }
  }

  else if (v5)
  {
    v6 = *(a1 + 32);
    Current = CFAbsoluteTimeGetCurrent();
    [*(a1 + 32) startTime];
    *v21 = 134218240;
    *&v21[4] = v6;
    *&v21[12] = 2048;
    *&v21[14] = (Current - v8) * 1000.0;
    v9 = "%p: accumulating one item after %.0f mS";
    v10 = v4;
    v11 = 22;
LABEL_6:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, v21, v11);
  }

  v13 = [*(a1 + 32) lock];
  [v13 lock];

  v14 = [*(a1 + 32) items];
  v15 = [v14 count];

  if (!v15 && [*(a1 + 32) accumulationTime])
  {
    [*(a1 + 32) _startAccumulationSource];
  }

  v16 = [*(a1 + 32) items];
  [v16 addObject:*(a1 + 40)];

  if ([*(a1 + 32) inactivityTime])
  {
    [*(a1 + 32) _startInactivitySource];
  }

  if ([*(a1 + 32) itemLimit])
  {
    v17 = [*(a1 + 32) items];
    v18 = [v17 count];
    v19 = [*(a1 + 32) itemLimit];

    if (v18 == v19)
    {
      [*(a1 + 32) _stopInactivitySource];
      [*(a1 + 32) _stopAccumulationSource];
      [*(a1 + 32) _callAccumulationHandlerWithReason:1];
    }
  }

  v20 = [*(a1 + 32) lock];
  [v20 unlock];
}

void sub_100294290(id a1)
{
  v1 = qword_1004E6950;
  qword_1004E6950 = &off_100493EC0;
}

uint64_t APPBLogSysEventRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v36) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v36 & 0x7F) << v5;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            *(a1 + 52) |= 1u;
            LODWORD(v36) = 0;
            v22 = [a2 position] + 4;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
            {
              v33 = [a2 data];
              [v33 getBytes:&v36 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v36;
            goto LABEL_65;
          case 5:
            v30 = PBReaderReadString();
            v31 = *(a1 + 16);
            *(a1 + 16) = v30;

            goto LABEL_65;
          case 6:
            v15 = 0;
            v16 = 0;
            v17 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v36) = 0;
              v18 = [a2 position] + 1;
              if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
              {
                v20 = [a2 data];
                [v20 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v17 |= (v36 & 0x7F) << v15;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v15 += 7;
              v11 = v16++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_57;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v17;
            }

LABEL_57:
            v32 = 48;
            goto LABEL_62;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = objc_alloc_init(APPBLogMetaData);
            objc_storeStrong((a1 + 40), v14);
            v36 = 0;
            v37 = 0;
            if (!PBReaderPlaceMark() || !APPBLogMetaDataReadFrom(v14, a2))
            {
LABEL_67:

              return 0;
            }

            goto LABEL_38;
          case 2:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v36) = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v36 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v36 & 0x7F) << v24;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                v21 = 0;
                goto LABEL_61;
              }
            }

            if ([a2 hasError])
            {
              v21 = 0;
            }

            else
            {
              v21 = v26;
            }

LABEL_61:
            v32 = 32;
LABEL_62:
            *(a1 + v32) = v21;
            goto LABEL_65;
          case 3:
            v14 = objc_alloc_init(APPBClickLocation);
            objc_storeStrong((a1 + 24), v14);
            v36 = 0;
            v37 = 0;
            if (!PBReaderPlaceMark() || !APPBClickLocationReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

LABEL_38:
            PBReaderRecallMark();

            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v34 = [a2 position];
    }

    while (v34 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBAdJourneyStartRelayValueReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v42 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v42 & 0x7F) << v5;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (!v13)
      {
        v23 = 0;
        while (1)
        {
          v43 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          if ((v43 & 0x80000000) == 0)
          {
            break;
          }

          if (v23++ > 8)
          {
            goto LABEL_68;
          }
        }

        [a2 hasError];
        goto LABEL_68;
      }

      if (v13 == 1)
      {
        v21 = PBReaderReadString();
        v22 = 24;
LABEL_55:
        v36 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_68;
      }

      if (v13 != 2)
      {
        goto LABEL_52;
      }

      [a1 clearOneofValuesForValue];
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 52) |= 4u;
      *(a1 + 32) = 1;
      *(a1 + 52) |= 8u;
      while (1)
      {
        v44 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v44 & 0x7F) << v14;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_65;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_65:
      *(a1 + 48) = v20;
LABEL_68:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      [a1 clearOneofValuesForValue];
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 52) |= 4u;
      *(a1 + 32) = 2;
      *(a1 + 52) |= 2u;
      while (1)
      {
        v45 = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v45 & 0x7F) << v28;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          v34 = 0;
          goto LABEL_63;
        }
      }

      if ([a2 hasError])
      {
        v34 = 0;
      }

      else
      {
        v34 = v30;
      }

LABEL_63:
      *(a1 + 16) = v34;
      goto LABEL_68;
    }

    if (v13 == 4)
    {
      [a1 clearOneofValuesForValue];
      *(a1 + 52) |= 4u;
      *(a1 + 32) = 3;
      *(a1 + 52) |= 1u;
      v41 = 0;
      v37 = [a2 position] + 8;
      if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
      {
        v39 = [a2 data];
        [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      *(a1 + 8) = v41;
      goto LABEL_68;
    }

    if (v13 != 5)
    {
LABEL_52:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_68;
    }

    [a1 clearOneofValuesForValue];
    *(a1 + 52) |= 4u;
    *(a1 + 32) = 4;
    v21 = PBReaderReadString();
    v22 = 40;
    goto LABEL_55;
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBPolicyDataReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = a1[1];
        a1[1] = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(APPBNumericParameter);
    [a1 addPolicyValues:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !APPBNumericParameterReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBConfigurationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 40;
          goto LABEL_26;
        }

        goto LABEL_39;
      }

      v24 = objc_alloc_init(APPBConfiguration);
      [a1 addTheConfiguration:v24];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !APPBConfigurationReadFrom(v24, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_45:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_26;
      case 4:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          LOBYTE(v27[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v27[0] & 0x7F) << v17;
          if ((v27[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_44;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_44:
        *(a1 + 8) = v23;
        goto LABEL_45;
      case 5:
        v14 = PBReaderReadString();
        v15 = 16;
LABEL_26:
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_45;
    }

LABEL_39:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_45;
  }

  return [a2 hasError] ^ 1;
}

void sub_100299F4C(id a1)
{
  v1 = qword_1004E6960;
  qword_1004E6960 = &off_100493EE8;
}

uint64_t APPBOptOutResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBShadowStyleReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    v5 = &selRef_hasSkipThreshold;
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v6 = 0;
      v7 = 0;
      v8 = 0;
      while (1)
      {
        LOBYTE(v39) = 0;
        v9 = [a2 position] + 1;
        if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
        {
          v11 = [a2 data];
          [v11 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v8 |= (v39 & 0x7F) << v6;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        v6 += 7;
        v12 = v7++ >= 9;
        if (v12)
        {
          v13 = 0;
          goto LABEL_16;
        }
      }

      v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
      if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v13 >> 3;
      if ((v13 >> 3) > 2)
      {
        break;
      }

      if (v14 != 1)
      {
        if (v14 == 2)
        {
          *(a1 + 48) |= 1u;
          LODWORD(v39) = 0;
          v15 = [a2 position] + 4;
          if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v39 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          v35 = v39;
          v36 = *(v5 + 1022);
LABEL_65:
          *(a1 + v36) = v35;
          goto LABEL_66;
        }

LABEL_41:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_66;
      }

      v25 = objc_alloc_init(APPBColor);
      objc_storeStrong((a1 + 32), v25);
      v39 = 0;
      v40 = 0;
      if (!PBReaderPlaceMark() || !APPBColorReadFrom(v25, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_66:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v14 == 3)
    {
      *(a1 + 48) |= 2u;
      LODWORD(v39) = 0;
      v26 = [a2 position] + 4;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 4, v27 <= objc_msgSend(a2, "length")))
      {
        v37 = [a2 data];
        [v37 getBytes:&v39 range:{objc_msgSend(a2, "position"), 4}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
      }

      else
      {
        [a2 _setError];
      }

      v35 = v39;
      v36 = 44;
      goto LABEL_65;
    }

    if (v14 == 4)
    {
      if ((v13 & 7) == 2)
      {
        v39 = 0;
        v40 = 0;
        result = PBReaderPlaceMark();
        if (!result)
        {
          return result;
        }

        while (1)
        {
          v18 = [a2 position];
          if (v18 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
          {
            break;
          }

          v19 = 0;
          v20 = 0;
          v21 = 0;
          while (1)
          {
            v41 = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v41 & 0x7F) << v19;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v12 = v20++ >= 9;
            if (v12)
            {
              goto LABEL_40;
            }
          }

          [a2 hasError];
LABEL_40:
          PBRepeatedInt32Add();
        }

        PBReaderRecallMark();
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        while (1)
        {
          LOBYTE(v39) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v39 & 0x7F) << v28;
          if ((v39 & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v12 = v29++ >= 9;
          if (v12)
          {
            goto LABEL_60;
          }
        }

        [a2 hasError];
LABEL_60:
        PBRepeatedInt32Add();
        v5 = &selRef_hasSkipThreshold;
      }

      goto LABEL_66;
    }

    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBColorReadFrom(_DWORD *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addColors:v21];
        }
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 3)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            while (1)
            {
              v25 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v25 & 0x7F) << v14;
              if ((v25 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_39;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_39:
            a1[6] = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_40;
        }

        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addDarkModeColors:v21];
        }
      }

LABEL_40:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APPBAdLayoutDetailsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v33) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v33 & 0x7F) << v5;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 116) |= 2u;
        while (1)
        {
          LOBYTE(v33) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v33 & 0x7F) << v13;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_62:
            v30 = 112;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_62;
      case 2u:
        v20 = PBReaderReadString();
        v21 = 64;
        goto LABEL_38;
      case 3u:
        v20 = PBReaderReadString();
        v21 = 16;
        goto LABEL_38;
      case 4u:
        v20 = PBReaderReadString();
        v21 = 32;
        goto LABEL_38;
      case 5u:
        v20 = PBReaderReadString();
        v21 = 8;
        goto LABEL_38;
      case 6u:
        v20 = PBReaderReadString();
        v21 = 80;
        goto LABEL_38;
      case 7u:
        v22 = objc_alloc_init(APPBElement);
        [a1 addElements:v22];
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || !APPBElementReadFrom(v22, a2))
        {
          goto LABEL_70;
        }

        goto LABEL_47;
      case 8u:
        v22 = objc_alloc_init(APPBStyle);
        objc_storeStrong((a1 + 104), v22);
        v33 = 0;
        v34 = 0;
        if (!PBReaderPlaceMark() || !APPBStyleReadFrom(v22, a2))
        {
          goto LABEL_70;
        }

        goto LABEL_47;
      case 9u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 116) |= 1u;
        while (1)
        {
          LOBYTE(v33) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v33 & 0x7F) << v24;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_66;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v26;
        }

LABEL_66:
        v30 = 40;
LABEL_67:
        *(a1 + v30) = v19;
        goto LABEL_68;
      case 0xAu:
        v20 = PBReaderReadString();
        v21 = 88;
        goto LABEL_38;
      case 0xBu:
        v22 = objc_alloc_init(APPBButton);
        objc_storeStrong((a1 + 48), v22);
        v33 = 0;
        v34 = 0;
        if (PBReaderPlaceMark() && APPBButtonReadFrom(v22, a2))
        {
          goto LABEL_47;
        }

        goto LABEL_70;
      case 0xCu:
        v20 = PBReaderReadString();
        v21 = 24;
        goto LABEL_38;
      case 0xDu:
        v20 = PBReaderReadString();
        v21 = 96;
LABEL_38:
        v23 = *(a1 + v21);
        *(a1 + v21) = v20;

        goto LABEL_68;
      case 0xEu:
        v22 = objc_alloc_init(APPBLocalizedStringEntry);
        [a1 addLocalizedHeadlines:v22];
        v33 = 0;
        v34 = 0;
        if (PBReaderPlaceMark() && APPBLocalizedStringEntryReadFrom(v22, a2))
        {
LABEL_47:
          PBReaderRecallMark();

LABEL_68:
          v31 = [a2 position];
          if (v31 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_70:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_68;
    }
  }
}

void sub_10029E5F4(id a1)
{
  v1 = qword_1004E6970;
  qword_1004E6970 = &off_100493F10;
}

uint64_t APPBAdSizeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v49 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v49 & 0x7F) << v5;
        if ((v49 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v13 == 1)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          while (1)
          {
            v53 = 0;
            v43 = [a2 position] + 1;
            if (v43 >= [a2 position] && (v44 = objc_msgSend(a2, "position") + 1, v44 <= objc_msgSend(a2, "length")))
            {
              v45 = [a2 data];
              [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v42 |= (v53 & 0x7F) << v40;
            if ((v53 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v11 = v41++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_81;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v42;
          }

LABEL_81:
          v47 = 16;
        }

        else
        {
          if (v13 != 2)
          {
LABEL_68:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_89;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            v52 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v52 & 0x7F) << v21;
            if ((v52 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_87;
            }
          }

          if ([a2 hasError])
          {
            v27 = 0;
          }

          else
          {
            v27 = v23;
          }

LABEL_87:
          v47 = 8;
        }

        goto LABEL_88;
      }

      if (v13 == 3)
      {
        break;
      }

      if (v13 == 4)
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v50 = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v50 & 0x7F) << v34;
          if ((v50 & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_77;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_77:
        v47 = 12;
LABEL_88:
        *(a1 + v47) = v27;
        goto LABEL_89;
      }

      if (v13 != 5)
      {
        goto LABEL_68;
      }

      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 28) |= 4u;
      while (1)
      {
        v54 = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v54 & 0x7F) << v14;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          LOBYTE(v20) = 0;
          goto LABEL_83;
        }
      }

      v20 = (v16 != 0) & ~[a2 hasError];
LABEL_83:
      *(a1 + 24) = v20;
LABEL_89:
      v48 = [a2 position];
      if (v48 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v28 = 0;
    v29 = 0;
    v30 = 0;
    *(a1 + 28) |= 2u;
    while (1)
    {
      v51 = 0;
      v31 = [a2 position] + 1;
      if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
      {
        v33 = [a2 data];
        [v33 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v30 |= (v51 & 0x7F) << v28;
      if ((v51 & 0x80) == 0)
      {
        break;
      }

      v28 += 7;
      v11 = v29++ >= 9;
      if (v11)
      {
        v27 = 0;
        goto LABEL_73;
      }
    }

    if ([a2 hasError])
    {
      v27 = 0;
    }

    else
    {
      v27 = v30;
    }

LABEL_73:
    v47 = 20;
    goto LABEL_88;
  }

  return [a2 hasError] ^ 1;
}

void sub_10029FAB0(id a1)
{
  v1 = qword_1004E6980;
  qword_1004E6980 = &off_100493F38;
}

uint64_t APPBLogAggregateMetricsResponseReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}