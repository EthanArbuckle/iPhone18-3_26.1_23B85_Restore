void sub_10024424C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v71 = a8;
  v66 = type metadata accessor for AttributionCandidate(0);
  v74 = *(v66 - 8);
  __chkstk_darwin(v66);
  v76 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1001E27A8(&unk_1004DCD00);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1003EB210;
  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = &protocol witness table for String;
  v70 = a6;
  *(v19 + 32) = a6;
  *(v19 + 40) = a7;
  *(v19 + 96) = &type metadata for String;
  *(v19 + 104) = &protocol witness table for String;
  v68 = a2;
  *(v19 + 72) = a2;
  *(v19 + 80) = a3;
  v75 = a7;

  v69 = a3;

  v67 = a1;
  LOBYTE(a1) = sub_100397CD8();

  if (a1)
  {
    v20 = *(v71 + *(type metadata accessor for ComputedAttributions(0) + 20));
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
      v64 = a11;
      v59 = "";
      v62 = a9;
      v63 = a10;
      v58 = "$_supportedInstallSignals";
      v61 = *(v74 + 72);
      v57 = "Failed to save candidates. ";
      v56 = "andidates. Removal failed.";
      v60 = xmmword_1003ECC00;
      v55 = xmmword_1003C9930;
      do
      {
        v74 = v21;
        v72 = v22;
        sub_100245DE0(v22, v76, type metadata accessor for AttributionCandidate);
        sub_100245F6C(&qword_1004D6DA0, type metadata accessor for AttributionCandidate);
        v23 = sub_1003970C8();
        if (v12)
        {

          v25 = 0;
          v73 = 0;
          v26 = 0xF000000000000000;
        }

        else
        {
          v25 = v23;
          v73 = 0;
          v26 = v24;
        }

        v27 = swift_allocObject();
        *(v27 + 16) = v60;
        *(v27 + 56) = &type metadata for String;
        *(v27 + 64) = &protocol witness table for String;
        v28 = v75;
        *(v27 + 32) = v70;
        *(v27 + 40) = v28;
        v29 = sub_100397748();
        *(v27 + 96) = v29;
        *(v27 + 104) = &protocol witness table for Date;
        v30 = sub_1001E6B7C((v27 + 72));
        v31 = *(*(v29 - 8) + 16);
        v31(v30, v71, v29);
        *(v27 + 136) = v29;
        *(v27 + 144) = &protocol witness table for Date;
        v32 = sub_1001E6B7C((v27 + 112));
        v33 = v76;
        v31(v32, v76, v29);
        v34 = *(sub_1001E27A8(&qword_1004D6250) + 36);
        *(v27 + 176) = v29;
        *(v27 + 184) = &protocol witness table for Date;
        v35 = sub_1001E6B7C((v27 + 152));
        v31(v35, v33 + v34, v29);
        if (v26 >> 60 == 15)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          *(v27 + 208) = 0;
          v40 = v25;
        }

        else
        {
          v40 = v25;
          v36 = v25;
          v37 = v26;
          v38 = &type metadata for Data;
          v39 = &protocol witness table for Data;
        }

        *(v27 + 192) = v36;
        *(v27 + 200) = v37;
        *(v27 + 216) = v38;
        *(v27 + 224) = v39;
        *(v27 + 256) = &type metadata for String;
        *(v27 + 264) = &protocol witness table for String;
        v41 = v69;
        *(v27 + 232) = v68;
        *(v27 + 240) = v41;

        sub_100245FB4(v40, v26);
        v42 = sub_100397CD8();

        v12 = v73;
        if (v42)
        {
          sub_100245D30(v76);
          sub_1001DDE50(v40, v26);
        }

        else
        {
          v43 = v26;
          sub_1003993E8();
          sub_100004218(0, &qword_1004D5D30);
          v44 = sub_1003995A8();
          sub_100398B98();

          v45 = sub_100398F28();
          v46 = sub_100398F28();
          CreateDiagnosticReport();

          v47 = [objc_opt_self() processInfo];
          LODWORD(v46) = [v47 isRunningTests];

          if (!v46)
          {
            v48 = objc_opt_self();
            v49 = sub_100398F28();
            sub_1001E27A8(&unk_1004D5DB0);
            inited = swift_initStackObject();
            *(inited + 16) = v55;
            *(inited + 32) = 0x707954726F727245;
            *(inited + 40) = 0xE900000000000065;
            *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:14];
            sub_1002143B8(inited);
            swift_setDeallocating();
            sub_1001ED244(inited + 32, &qword_1004D5A28);
            sub_100004218(0, &qword_1004D5DC0);
            isa = sub_100398E48().super.isa;

            [v48 sendEvent:v49 customPayload:isa];
          }

          sub_1001DDE50(v40, v43);
          sub_100245D30(v76);
        }

        v22 = v72 + v61;
        v21 = v74 - 1;
      }

      while (v74 != 1);
    }
  }

  else
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v52 = sub_1003995A8();
    sub_100398B98();

    v53 = sub_100398F28();
    v54 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(14);
  }
}

uint64_t sub_100244A28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (a1 + *(type metadata accessor for WinningAttribution(0) + 20));
  v10 = v9[3];
  v11 = v9[1];
  v43 = v9[2];
  v44 = v10;
  v12 = v9[3];
  v13 = v9[5];
  v45 = v9[4];
  v46 = v13;
  v14 = v9[1];
  v42[0] = *v9;
  v42[1] = v14;
  v38 = v43;
  v39 = v12;
  v15 = v9[5];
  v40 = v45;
  v41 = v15;
  v36 = v42[0];
  v37 = v11;
  sub_100245FC8(v42, v35);
  v16 = sub_100397CB8();
  v18 = v17;
  v35[2] = v38;
  v35[3] = v39;
  v35[4] = v40;
  v35[5] = v41;
  v35[0] = v36;
  v35[1] = v37;
  sub_100245D8C(v35);
  sub_1001E27A8(&qword_1004D9A80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003ECC10;
  v20 = sub_100397548(0);
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = v20;
  *(inited + 40) = v21;
  *(inited + 96) = &type metadata for Data;
  *(inited + 104) = &protocol witness table for Data;
  *(inited + 72) = v16;
  *(inited + 80) = v18;
  type metadata accessor for ExpiringAttributionToken();
  v22 = a6;
  v23 = sub_100397748();
  *(inited + 136) = v23;
  *(inited + 144) = &protocol witness table for Date;
  sub_1001E6B7C((inited + 112));
  v32 = v18;
  sub_1001EF9F4(v16, v18);
  sub_100397C38();
  *(inited + 176) = &type metadata for String;
  *(inited + 152) = a2;
  *(inited + 160) = a3;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = &protocol witness table for String;
  *(inited + 184) = &protocol witness table for String;
  *(inited + 192) = a5;
  *(inited + 200) = v22;
  *(inited + 256) = v23;
  *(inited + 264) = &protocol witness table for Date;
  v24 = sub_1001E6B7C((inited + 232));
  v25 = *(*(v23 - 8) + 16);
  v25(v24, a1, v23);
  v26 = *(sub_1001E27A8(&qword_1004D6250) + 36);
  *(inited + 296) = v23;
  *(inited + 304) = &protocol witness table for Date;
  v27 = sub_1001E6B7C((inited + 272));
  v25(v27, a1 + v26, v23);

  sub_10028037C(inited);
  swift_setDeallocating();
  sub_1001E27A8(&unk_1004D9A30);
  swift_arrayDestroy();
  LOBYTE(v9) = sub_100397CD8();

  if ((v9 & 1) == 0)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v28 = sub_1003995A8();
    sub_100398B98();

    v29 = sub_100398F28();
    v30 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(17);
  }

  return sub_1001EFA90(v16, v32);
}

unint64_t sub_100244FFC(_OWORD *a1)
{
  v1 = a1[3];
  v5[2] = a1[2];
  v5[3] = v1;
  v2 = a1[5];
  v5[4] = a1[4];
  v5[5] = v2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return sub_100240B30(v5);
}

uint64_t sub_100245038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1001E27A8(&unk_1004DCD00);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1003EB210;
  *(v9 + 56) = &type metadata for String;
  *(v9 + 64) = &protocol witness table for String;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 96) = &type metadata for String;
  *(v9 + 104) = &protocol witness table for String;
  *(v9 + 72) = a4;
  *(v9 + 80) = a5;
  type metadata accessor for WinningAttribution(0);

  sub_100397CF8();
}

uint64_t sub_100245388@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v33 = sub_100397748();
  v34 = *(v33 - 8);
  v3 = __chkstk_darwin(v33);
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v31 - v6;
  v8 = type metadata accessor for AttributionCandidate(0);
  __chkstk_darwin(v8);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003970B8();
  swift_allocObject();
  v11 = sub_1003970A8();
  sub_1000035B8(a1, a1[3]);
  v12 = v48;
  v13 = sub_100397B68();
  if (v12)
  {
  }

  v16 = v13;
  v17 = v14;
  v32 = v5;
  v48 = v7;
  v18 = v35;
  sub_100245F6C(&qword_1004D6D90, type metadata accessor for AttributionCandidate);
  sub_100397098();
  sub_1001EFA90(v16, v17);
  sub_1000035B8(a1, a1[3]);
  v19 = sub_100397B68();
  v21 = v20;
  sub_100397CA8();
  v31[1] = v11;
  sub_1001EFA90(v19, v21);
  v38 = v44;
  v39 = v45;
  v40 = v46;
  v41 = v47;
  v36 = v42;
  v37 = v43;
  sub_1000035B8(a1, a1[3]);
  v22 = v48;
  sub_100397B88();
  v23 = v18;
  sub_100245DE0(v10, v18, type metadata accessor for AttributionCandidate);
  v24 = v34;
  v25 = v33;
  (*(v34 + 16))(v32, v22, v33);
  v26 = type metadata accessor for WinningAttribution(0);
  v27 = (v23 + *(v26 + 20));
  type metadata accessor for ExpiringAttributionToken();
  sub_100397C78();

  (*(v24 + 8))(v22, v25);
  sub_100245D30(v10);
  v28 = v39;
  v27[2] = v38;
  v27[3] = v28;
  v29 = v41;
  v27[4] = v40;
  v27[5] = v29;
  v30 = v37;
  *v27 = v36;
  v27[1] = v30;
  return (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
}

double sub_100245818@<D0>(_OWORD *a1@<X8>)
{
  v3 = sub_100397DD8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100240C60(v6, v12);
  if (v1)
  {
    sub_100245F6C(&qword_1004D6D98, &type metadata accessor for JSONParsingError);
    swift_allocError();
    (*(v4 + 32))(v7, v6, v3);
  }

  else
  {
    v9 = v12[3];
    a1[2] = v12[2];
    a1[3] = v9;
    v10 = v12[5];
    a1[4] = v12[4];
    a1[5] = v10;
    result = *v12;
    v11 = v12[1];
    *a1 = v12[0];
    a1[1] = v11;
  }

  return result;
}

void sub_100245970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1001E27A8(&unk_1004DCD00);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1003EB210;
  v8 = sub_100397748();
  *(v7 + 56) = v8;
  *(v7 + 64) = &protocol witness table for Date;
  v9 = sub_1001E6B7C((v7 + 32));
  (*(*(v8 - 8) + 16))(v9, a1, v8);
  *(v7 + 96) = &type metadata for String;
  *(v7 + 104) = &protocol witness table for String;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;

  LOBYTE(a4) = sub_100397CD8();

  if ((a4 & 1) == 0)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v10 = sub_1003995A8();
    sub_100398B98();

    v11 = sub_100398F28();
    v12 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(21);
  }
}

void sub_100245B80(uint64_t a1, uint64_t a2)
{
  sub_1001E27A8(&unk_1004DCD00);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003C9930;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = &protocol witness table for String;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;

  LOBYTE(a2) = sub_100397CD8();

  if ((a2 & 1) == 0)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v5 = sub_1003995A8();
    sub_100398B98();

    v6 = sub_100398F28();
    v7 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(12);
  }
}

uint64_t sub_100245D30(uint64_t a1)
{
  v2 = type metadata accessor for AttributionCandidate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100245DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100245E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ComputedAttributions(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_100245EAC()
{
  v1 = *(type metadata accessor for ComputedAttributions(0) - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_10024424C(v0[2], v0[3], v0[4], v0[5], v0[6], v0[7], v0[8], v0 + v2, *(v0 + v3), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_100245F6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100245FB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001EF9F4(a1, a2);
  }

  return a1;
}

void sub_100246024()
{
  if ((sub_100397CD8() & 1) == 0)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v0 = sub_1003995A8();
    sub_100398B98();

    v1 = sub_100398F28();
    v2 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(23);
  }
}

void sub_100246174(uint64_t a1)
{
  sub_1001E27A8(&unk_1004DCD00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1003C9930;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = a1;
  LOBYTE(a1) = sub_100397CD8();

  if ((a1 & 1) == 0)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v3 = sub_1003995A8();
    sub_100398B98();

    v4 = sub_100398F28();
    v5 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(21);
  }
}

uint64_t sub_100246318(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_100246360(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t type metadata accessor for ExpiringAttributionToken()
{
  result = qword_1004D6E00;
  if (!qword_1004D6E00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100246424()
{
  result = sub_100397C68();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002464A4()
{
  sub_1003996F8(21);
  v1._countAndFlagsBits = 0x676E697269707865;
  v1._object = 0xEF286E656B6F7420;
  sub_100399068(v1);
  sub_1003997C8();
  v2._countAndFlagsBits = 8236;
  v2._object = 0xE200000000000000;
  sub_100399068(v2);
  type metadata accessor for ExpiringAttributionToken();
  sub_100397C68();
  sub_1003997C8();
  return 0;
}

uint64_t sub_10024659C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v24 = *(a1 + 48);
  v25 = *(a1 + 40);
  v22 = *(a1 + 64);
  v23 = *(a1 + 56);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v11 = *(a2 + 40);
  v10 = *(a2 + 48);
  v21 = *(a2 + 56);
  v19 = *(a1 + 80);
  v20 = *(a2 + 64);
  v16 = *(a2 + 72);
  v17 = *(a1 + 72);
  v18 = *(a2 + 80);
  v14 = *(a2 + 88);
  v15 = *(a1 + 88);
  if ((sub_100259AD0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || (sub_100259AD0(v4, v5, v7, v8) & 1) == 0 || ((v6 ^ v9) & 1) != 0 || (v25 != v11 || v24 != v10) && (sub_1003999B8() & 1) == 0 || (sub_100259AD0(v23, v22, v21, v20) & 1) == 0 || ((v17 ^ v16) & 1) != 0 || (v19 != v18 || v15 != v14) && (sub_1003999B8() & 1) == 0)
  {
    return 0;
  }

  v12 = *(type metadata accessor for ExpiringAttributionToken() + 20);

  return static ExpirationDate.== infix(_:_:)(a1 + v12, a2 + v12);
}

uint64_t sub_10024672C(uint64_t result, unint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v5 = HIBYTE(a2) & 0xF;
    v6 = result & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v7 = v5;
    }

    else
    {
      v7 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
      return 0;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v27 = a4;
      v28 = a3;
      v29 = result;

      v9 = sub_1002089E4(v29, a2, 10);
      v31 = v30;

      if (v31)
      {
        return 0;
      }

      a3 = v28;
      a4 = v27;
      goto LABEL_69;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v45[0] = result;
      v45[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (!v5)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        if (--v5)
        {
          v9 = 0;
          v19 = v45 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              break;
            }

            v21 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              break;
            }

            ++v19;
            if (!--v5)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (result == 45)
      {
        if (!v5)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        if (--v5)
        {
          v9 = 0;
          v13 = v45 + 1;
          while (1)
          {
            v14 = *v13 - 48;
            if (v14 > 9)
            {
              break;
            }

            v15 = 10 * v9;
            if ((v9 * 10) >> 64 != (10 * v9) >> 63)
            {
              break;
            }

            v9 = v15 - v14;
            if (__OFSUB__(v15, v14))
            {
              break;
            }

            ++v13;
            if (!--v5)
            {
              goto LABEL_65;
            }
          }
        }
      }

      else if (v5)
      {
        v9 = 0;
        v24 = v45;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if ((v9 * 10) >> 64 != (10 * v9) >> 63)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          ++v24;
          if (!--v5)
          {
            goto LABEL_65;
          }
        }
      }

      goto LABEL_64;
    }

    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_10;
    }
  }

  else
  {
    if (*(a3 + 16))
    {
      return *(a3 + 32);
    }

    __break(1u);
  }

  v43 = a3;
  v44 = a4;
  result = sub_100399768();
  a4 = v44;
  a3 = v43;
LABEL_10:
  v8 = *result;
  if (v8 == 43)
  {
    if (v6 < 1)
    {
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v5 = v6 - 1;
    if (v6 == 1)
    {
      goto LABEL_64;
    }

    v9 = 0;
    if (result)
    {
      v16 = (result + 1);
      while (1)
      {
        v17 = *v16 - 48;
        if (v17 > 9)
        {
          goto LABEL_64;
        }

        v18 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          goto LABEL_64;
        }

        v9 = v18 + v17;
        if (__OFADD__(v18, v17))
        {
          goto LABEL_64;
        }

        ++v16;
        if (!--v5)
        {
          goto LABEL_65;
        }
      }
    }

    goto LABEL_56;
  }

  if (v8 == 45)
  {
    if (v6 < 1)
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v5 = v6 - 1;
    if (v6 == 1)
    {
      goto LABEL_64;
    }

    v9 = 0;
    if (result)
    {
      v10 = (result + 1);
      while (1)
      {
        v11 = *v10 - 48;
        if (v11 > 9)
        {
          goto LABEL_64;
        }

        v12 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          goto LABEL_64;
        }

        v9 = v12 - v11;
        if (__OFSUB__(v12, v11))
        {
          goto LABEL_64;
        }

        ++v10;
        if (!--v5)
        {
          goto LABEL_65;
        }
      }
    }

LABEL_56:
    LOBYTE(v5) = 0;
    goto LABEL_65;
  }

  if (v6)
  {
    v9 = 0;
    if (result)
    {
      while (1)
      {
        v22 = *result - 48;
        if (v22 > 9)
        {
          goto LABEL_64;
        }

        v23 = 10 * v9;
        if ((v9 * 10) >> 64 != (10 * v9) >> 63)
        {
          goto LABEL_64;
        }

        v9 = v23 + v22;
        if (__OFADD__(v23, v22))
        {
          goto LABEL_64;
        }

        ++result;
        if (!--v6)
        {
          goto LABEL_56;
        }
      }
    }

    goto LABEL_56;
  }

LABEL_64:
  v9 = 0;
  LOBYTE(v5) = 1;
LABEL_65:
  v46 = v5;
  if (v5)
  {
    return 0;
  }

LABEL_69:
  v32 = *(a3 + 16);
  if (v9 >= v32)
  {
    return 0;
  }

  v33 = v9 - 1;
  v34 = __OFSUB__(v9, 1);
  if (a4 <= 0.0)
  {
    if (v34)
    {
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    goto LABEL_89;
  }

  if (v34)
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  if ((v33 & 0x8000000000000000) != 0)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  if (v32 >= v33)
  {
    if (v9 == 1)
    {
      goto LABEL_89;
    }

    if (v33 <= 3)
    {
      v35 = 0;
      v36 = 0.0;
LABEL_87:
      v39 = (~v35 + v9);
      v40 = (a3 + 8 * v35 + 32);
      do
      {
        v41 = *v40++;
        v36 = v36 + v41;
        --v39;
      }

      while (v39);
      goto LABEL_89;
    }

    v35 = v33 & 0x7FFFFFFFFFFFFFFCLL;
    v37 = (a3 + 48);
    v36 = 0.0;
    v38 = v33 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v36 = v36 + *(v37 - 2) + *(v37 - 1) + *v37 + v37[1];
      v37 += 4;
      v38 -= 4;
    }

    while (v38);
    if (v33 != v35)
    {
      goto LABEL_87;
    }

LABEL_89:
    if (v33 < v32)
    {
      v42 = *(a3 + 8 * v33 + 32);
      v45[0] = v9 + 1;
      sub_100399998();
      return v42;
    }

    goto LABEL_94;
  }

LABEL_101:
  __break(1u);
  return result;
}

unsigned __int8 *sub_100246BA8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_1003990F8();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1001E40F4();
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_100399768();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_10024712C(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v25 = a6;
  v26 = a5;
  v9 = type metadata accessor for ProductionAppSpecifier(0);
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  __chkstk_darwin(v9 - 8);
  v11 = type metadata accessor for AttributionCandidate.Provenance(0);
  __chkstk_darwin(v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for AttributionCandidate(0);
  __chkstk_darwin(v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    sub_10024BCE8();
    swift_allocError();
    *v17 = 5603;
    a3();
  }

  if (a1)
  {
    (a3)(a1);
  }

  else
  {
    sub_1002474DC(v26, 0, v16);
    sub_10024D608(&v16[*(v14 + 20)], v13, type metadata accessor for AttributionCandidate.Provenance);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_10024CAA0(v13, type metadata accessor for AttributionCandidate.Provenance);
    if (EnumCaseMultiPayload != 1)
    {
      (a3)(0);

      return sub_10024CAA0(v16, type metadata accessor for AttributionCandidate);
    }

    v23 = swift_allocObject();
    swift_weakInit();
    sub_10024D608(v26, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ProductionAppSpecifier);
    v20 = v25;
    sub_100003554(v25, v27);
    v21 = (*(v24 + 80) + 40) & ~*(v24 + 80);
    v22 = swift_allocObject();
    v22[2] = v23;
    v22[3] = a3;
    v22[4] = a4;
    sub_10024BC80(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for ProductionAppSpecifier);
    sub_100004A68(v27, v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));

    sub_100247CEC(v16, v20, sub_10024D77C, v22);

    sub_10024CAA0(v16, type metadata accessor for AttributionCandidate);
  }
}

uint64_t sub_1002474DC@<X0>(uint64_t *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v41 = type metadata accessor for AppSpecifier(0);
  __chkstk_darwin(v41);
  v6 = (&v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100397748();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001E27A8(&qword_1004D7110);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = sub_1000035B8(v3 + 13, v3[16]);
  v18 = *a1;
  v19 = a1[1];
  v42 = a1;
  v39 = v3;
  v20 = v3[2];
  v21 = v18;
  v22 = [v20 now];
  sub_100397708();

  v23 = *v17;
  v24 = v17[1];
  v25 = v17[2];
  v40 = v19;
  sub_100243588(v21, v19, v10, v23, v24, v25);
  (*(v8 + 8))(v10, v7);
  if (v43)
  {
    v26 = type metadata accessor for AttributionCandidate(0);
    v27 = (*(*(v26 - 8) + 48))(v16, 1, v26) != 1;
    sub_1001E27A8(&unk_1004D5DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003C9930;
    *(inited + 32) = 0x65756C6156;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithBool:v27];
    sub_1002143B8(inited);
    swift_setDeallocating();
    sub_1001ED244(inited + 32, &qword_1004D5A28);
    v29 = sub_100398F28();
    sub_100004218(0, &qword_1004D5DC0);
    isa = sub_100398E48().super.isa;

    AnalyticsSendEvent();
  }

  sub_10000ADB4(v16, v14, &qword_1004D7110);
  v31 = type metadata accessor for AttributionCandidate(0);
  v32 = *(*(v31 - 8) + 48);
  if (v32(v14, 1, v31) == 1)
  {
    v33 = *(type metadata accessor for ProductionAppSpecifier(0) + 20);
    v34 = *(v41 + 20);
    v35 = sub_1003981B8();
    (*(*(v35 - 8) + 16))(v6 + v34, v42 + v33, v35);
    v36 = v40;
    *v6 = v21;
    v6[1] = v36;

    sub_10024A168(v6, v44);
    sub_10024CAA0(v6, type metadata accessor for AppSpecifier);
    if (v32(v14, 1, v31) != 1)
    {
      sub_1001ED244(v14, &qword_1004D7110);
    }
  }

  else
  {
    sub_10024BC80(v14, v44, type metadata accessor for AttributionCandidate);
  }

  return sub_1001ED244(v16, &qword_1004D7110);
}

uint64_t sub_100247998(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t *a5, void *a6)
{
  v28 = a5;
  v29 = a6;
  v9 = type metadata accessor for TransmittedAttribution();
  __chkstk_darwin(v9);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WinningAttribution(0);
  __chkstk_darwin(v12);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1001E27A8(&qword_1004D70B0);
  __chkstk_darwin(v15);
  v17 = v27 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v27[1] = a4;
    sub_10000ADB4(a1, v17, &qword_1004D70B0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (a3)(0);

      return sub_1001ED244(v17, &qword_1004D70B0);
    }

    else
    {
      sub_10024BC80(v17, v14, type metadata accessor for WinningAttribution);
      v22 = sub_1000035B8(v19 + 13, v19[16]);
      sub_100244A28(v14, *v28, v28[1], *v22, v22[1], v22[2]);
      v23 = &v14[*(v12 + 20)];
      v24 = *v23;
      v25 = v23[1];
      sub_1000035B8(v19 + 23, v19[26]);
      sub_10024D608(v14, v11, type metadata accessor for AttributionCandidate);
      v26 = &v11[v9[5]];
      *v26 = v24;
      v26[1] = v25;
      v11[v9[6]] = 0;
      v11[v9[7]] = 2;
      sub_1001EF9F4(v24, v25);
      sub_100255A34(v11, v29);
      sub_10024CAA0(v11, type metadata accessor for TransmittedAttribution);
      (a3)(0);

      return sub_10024CAA0(v14, type metadata accessor for WinningAttribution);
    }
  }

  else
  {
    sub_10024BCE8();
    swift_allocError();
    *v21 = 5603;
    a3();
  }
}

uint64_t sub_100247CEC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v25[1] = a4;
  v26 = a3;
  v27 = a2;
  v7 = sub_100397748();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = type metadata accessor for AttributionCandidate(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1000035B8((v4 + 144), *(v4 + 168));
  v25[0] = *(sub_1001E27A8(&qword_1004D6250) + 36);
  sub_10024D608(a1, v13, type metadata accessor for AttributionCandidate);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v26;
  *(v16 + 24) = a4;
  sub_10024BC80(v13, v16 + v15, type metadata accessor for AttributionCandidate);
  v17 = *v14;
  v18 = v17[6];
  v19 = v17[7];
  v26 = sub_1000035B8(v17 + 3, v18);
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1 + v25[0], v7);
  v21 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v20;
  *(v22 + 3) = sub_10024B0D0;
  *(v22 + 4) = v16;
  (*(v8 + 32))(&v22[v21], v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v23 = *(v19 + 8);

  v23(v27, sub_10024BC08, v22, v18, v19);
}

uint64_t sub_100247FE0(uint64_t *a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v258 = a4;
  v259 = a6;
  v256 = a3;
  v257 = a5;
  v264 = a2;
  v237 = type metadata accessor for AppSpecifier(0);
  __chkstk_darwin(v237);
  v238 = v224 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AttributionCandidate(0);
  __chkstk_darwin(v9 - 8);
  v241 = v224 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001E27A8(&qword_1004D70B8);
  __chkstk_darwin(v11 - 8);
  v232 = v224 - v12;
  v230 = sub_1001E27A8(&qword_1004D70C0);
  __chkstk_darwin(v230);
  v231 = (v224 - v13);
  v239 = type metadata accessor for WinningAttribution(0);
  v236 = *(v239 - 1);
  __chkstk_darwin(v239);
  v15 = v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v16 - 8);
  v255 = v224 - v17;
  v235 = type metadata accessor for ProductionAppSpecifier(0);
  v243 = *(v235 - 8);
  v18 = __chkstk_darwin(v235);
  v245 = v224 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v244 = v224 - v21;
  v253 = v22;
  __chkstk_darwin(v20);
  v251 = v224 - v23;
  v24 = sub_1001E27A8(&unk_1004D70F8);
  v240 = *(v24 - 8);
  v25 = v240[8];
  v26 = __chkstk_darwin(v24 - 8);
  v234 = v224 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v26);
  v29 = v224 - v28;
  __chkstk_darwin(v27);
  v242 = v224 - v30;
  v31 = sub_1001E27A8(&qword_1004D4CE0);
  v32 = __chkstk_darwin(v31 - 8);
  v249 = v224 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = v224 - v34;
  v36 = sub_100397748();
  v37 = *(v36 - 8);
  v38 = __chkstk_darwin(v36);
  v233 = v224 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v246 = v224 - v41;
  v42 = __chkstk_darwin(v40);
  *&v263 = v224 - v43;
  v44 = __chkstk_darwin(v42);
  v250 = v224 - v45;
  v46 = __chkstk_darwin(v44);
  v254 = v224 - v47;
  v252 = v48;
  __chkstk_darwin(v46);
  v50 = v224 - v49;
  sub_10000ADB4(v6 + OBJC_IVAR____TtC11Attribution20AttributionProcessor_internalOverride, &v267, &qword_1004D7108);
  if (*(&v268 + 1))
  {
    LODWORD(v248) = sub_10024DB48();
  }

  else
  {
    LODWORD(v248) = 0;
  }

  sub_1001ED244(&v267, &qword_1004D7108);
  v51 = sub_1000035B8(v6 + 13, v6[16]);
  v262 = a1;
  v52 = *a1;
  v53 = a1[1];
  v54 = *v51;
  v55 = v51[1];
  v56 = v51[2];
  v265 = v52;
  sub_100243AC4(v52, v53, v54, v55, v56);
  v57 = (*(v37 + 48))(v35, 1, v36);
  v261 = v6;
  if (v57 != 1)
  {
    v225 = v25;
    v226 = v15;
    v237 = v29;
    v106 = *(v37 + 32);
    v235 = v37 + 32;
    v229 = v106;
    v106(v50, v35, v36);
    v107 = sub_1000035B8(v6 + 8, v6[11]);
    v108 = *v107;
    v109 = v107[6];
    v110 = v107[7];
    v227 = v53;
    v111 = v37;
    v112 = v36;
    sub_1000035B8(v107 + 1, v107[4]);

    v113 = sub_1003984C8();
    type metadata accessor for DatabaseActionStoreDataProvider();
    inited = swift_initStackObject();
    inited[2] = v108;
    inited[3] = v109;
    inited[4] = v110;
    inited[5] = v113;
    v116 = v111 + 16;
    v115 = *(v111 + 16);
    v117 = v249;
    v238 = v50;
    v228 = v115;
    v115(v249, v50, v112);
    v247 = v111;
    v118 = v111;
    v119 = v112;
    (*(v118 + 56))(v117, 0, 1, v112);
    v120 = v227;
    v121 = sub_100280684(v265, v227, v117);

    sub_1001ED244(v117, &qword_1004D4CE0);
    v260 = v119;
    if ((v121 | v248))
    {
      sub_1001E27A8(&unk_1004D5DB0);
      v122 = swift_initStackObject();
      *(v122 + 16) = xmmword_1003EB210;
      *(v122 + 32) = 0x6174614477654ELL;
      *(v122 + 40) = 0xE700000000000000;
      v224[1] = v116;
      *(v122 + 48) = [objc_allocWithZone(NSNumber) initWithBool:1];
      *(v122 + 56) = 0x65756C6156;
      *(v122 + 64) = 0xE500000000000000;
      *(v122 + 72) = [objc_allocWithZone(NSNumber) initWithBool:0];
      sub_1002143B8(v122);
      swift_setDeallocating();
      sub_1001E27A8(&qword_1004D5A28);
      swift_arrayDestroy();
      v123 = sub_100398F28();
      sub_100004218(0, &qword_1004D5DC0);
      isa = sub_100398E48().super.isa;

      AnalyticsSendEvent();

      v125 = v261;
      v126 = sub_1000035B8(v261 + 13, v261[16]);
      v127 = v242;
      v128 = v265;
      sub_100245038(v265, v120, *v126, v126[1], v126[2]);
      sub_1000035B8(v125 + 13, v125[16]);
      sub_100245B80(v128, v120);
      v241 = v125[2];
      v129 = [v241 now];
      v130 = v254;
      sub_100397708();

      v131 = swift_allocObject();
      swift_weakInit();
      sub_100003554(v264, &v267);
      v228(v250, v130, v119);
      v239 = type metadata accessor for ProductionAppSpecifier;
      sub_10024D608(v262, v251, type metadata accessor for ProductionAppSpecifier);
      sub_10000ADB4(v127, v237, &unk_1004D70F8);
      v132 = (*(v247 + 80) + 80) & ~*(v247 + 80);
      v248 = *(v247 + 80);
      v133 = *(v243 + 80);
      v134 = (v252 + v133 + v132) & ~v133;
      v135 = (v253 + *(v240 + 80) + v134) & ~*(v240 + 80);
      v136 = (v225 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
      v137 = swift_allocObject();
      v249 = v131;
      v138 = v257;
      *(v137 + 2) = v131;
      *(v137 + 3) = v138;
      *(v137 + 4) = v259;
      sub_100004A68(&v267, (v137 + 40));
      v229(&v137[v132], v250, v119);
      v265 = type metadata accessor for ProductionAppSpecifier;
      sub_10024BC80(v251, &v137[v134], type metadata accessor for ProductionAppSpecifier);
      sub_10024CDC8(v237, &v137[v135], &unk_1004D70F8);
      v139 = &v137[v136];
      v140 = v258;
      *v139 = v256;
      *(v139 + 1) = v140;
      v257 = sub_1000035B8(v261 + 3, v261[6]);

      v141 = [v241 now];
      sub_100397708();

      v142 = swift_allocObject();
      v259 = v142;
      swift_weakInit();
      v143 = v262;
      v144 = v244;
      v145 = v239;
      sub_10024D608(v262, v244, v239);
      v261 = (v133 | 7);
      v146 = v253;
      v147 = swift_allocObject();
      v147[2] = v142;
      v147[3] = sub_10024CE30;
      v147[4] = v137;
      sub_10024BC80(v144, v147 + ((v133 + 40) & ~v133), v265);
      v258 = *v257;
      v148 = sub_100399268();
      (*(*(v148 - 8) + 56))(v255, 1, 1, v148);
      sub_100003554(v264, v266);
      v149 = v245;
      sub_10024D608(v143, v245, v145);
      v228(v246, v263, v260);
      v150 = (v133 + 80) & ~v133;
      v151 = v150 + v146;
      v152 = (v248 + v150 + v146 + 1) & ~v248;
      v153 = (v252 + v152 + 7) & 0xFFFFFFFFFFFFFFF8;
      v154 = swift_allocObject();
      v154[2] = 0;
      v154[3] = 0;
      v154[4] = v258;
      sub_100004A68(v266, (v154 + 5));
      sub_10024BC80(v149, v154 + v150, v265);
      *(v154 + v151) = 1;
      v155 = v260;
      v229(v154 + v152, v246, v260);
      v156 = (v154 + v153);
      *v156 = sub_10024D824;
      v156[1] = v147;

      sub_1001F0F40(0, 0, v255, &unk_1003ECE58, v154);

      v157 = *(v247 + 8);
      v157(v263, v155);
      v157(v254, v155);
      sub_1001ED244(v242, &unk_1004D70F8);
      v157(v238, v155);
      goto LABEL_9;
    }

    v170 = v247;
    v171 = v261;
    v172 = sub_1000035B8(v261 + 13, v261[16]);
    v173 = v234;
    sub_100245038(v265, v120, *v172, v172[1], v172[2]);
    v174 = v239;
    if ((*(v236 + 48))(v173, 1, v239) == 1)
    {
      sub_1001ED244(v173, &unk_1004D70F8);
      v175 = v241;
      sub_1002474DC(v262, 1, v241);
      v176 = swift_allocObject();
      swift_weakInit();
      v177 = v264;
      sub_100003554(v264, &v267);
      v178 = swift_allocObject();
      v179 = v256;
      v180 = v257;
      *(v178 + 16) = v176;
      *(v178 + 24) = v180;
      v181 = v258;
      *(v178 + 32) = v259;
      *(v178 + 40) = v179;
      *(v178 + 48) = v181;
      *(v178 + 56) = 2;
      sub_100004A68(&v267, v178 + 64);

      sub_100247CEC(v175, v177, sub_10024D820, v178);

      sub_10024CAA0(v175, type metadata accessor for AttributionCandidate);
      (*(v170 + 8))(v238, v260);
    }

    v183 = v226;
    sub_10024BC80(v173, v226, type metadata accessor for WinningAttribution);
    v184 = [v171[2] now];
    v185 = v233;
    sub_100397708();

    sub_10024D180(&qword_1004D62C8, &type metadata accessor for Date);
    v186 = v260;
    if (sub_100398EF8() & 1) != 0 && (sub_1001E27A8(&qword_1004D6250), (sub_100398EE8()))
    {
      v187 = (v183 + *(v174 + 5));
      type metadata accessor for ExpiringAttributionToken();
      v188 = sub_100397C58();
      v189 = *(v170 + 8);
      (v189)(v185, v186);
      v265 = v189;
      if (v188)
      {
        v247 = v170 + 8;
        sub_1000035B8(v171 + 13, v171[16]);
        sub_1001E27A8(&unk_1004DCD00);
        v190 = swift_allocObject();
        v263 = xmmword_1003C9930;
        *(v190 + 16) = xmmword_1003C9930;
        v191 = sub_100397548(0);
        *(v190 + 56) = &type metadata for String;
        *(v190 + 64) = &protocol witness table for String;
        *(v190 + 32) = v191;
        *(v190 + 40) = v192;
        v193 = sub_100397CD8();

        if ((v193 & 1) == 0)
        {
          sub_1003993E8();
          sub_100004218(0, &qword_1004D5D30);
          v194 = sub_1003995A8();
          sub_100398B98();

          v195 = sub_100398F28();
          v196 = sub_100398F28();
          CreateDiagnosticReport();

          _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(13);
        }

        v197 = v187[3];
        v269 = v187[2];
        v270 = v197;
        v199 = v187[5];
        v271 = v187[4];
        v198 = v271;
        v272 = v199;
        v201 = v187[1];
        v267 = *v187;
        v200 = v267;
        v268 = v201;
        v202 = v231;
        v231[2] = v269;
        v202[3] = v197;
        v202[4] = v198;
        v202[5] = v199;
        *v202 = v200;
        v202[1] = v201;
        swift_storeEnumTagMultiPayload();
        sub_100245FC8(&v267, v266);
        (v256)(v202);
        sub_1001ED244(v202, &qword_1004D70C0);
        sub_1001E27A8(&unk_1004D5DB0);
        v203 = swift_initStackObject();
        *(v203 + 16) = v263;
        *(v203 + 32) = 0x65756C6156;
        *(v203 + 40) = 0xE500000000000000;
        *(v203 + 48) = [objc_allocWithZone(NSNumber) initWithBool:1];
        sub_1002143B8(v203);
        swift_setDeallocating();
        sub_1001ED244(v203 + 32, &qword_1004D5A28);
        v204 = sub_100398F28();
        sub_100004218(0, &qword_1004D5DC0);
        v205 = sub_100398E48().super.isa;

        AnalyticsSendEvent();

        v206 = v226;
        v207 = v232;
        sub_10024D608(v226, v232, type metadata accessor for WinningAttribution);
        v208 = type metadata accessor for PendingWinner(0);
        *(v207 + v208[5]) = 1;
        *(v207 + v208[6]) = 1;
        v209 = (v207 + v208[7]);
        v210 = v259;
        *v209 = v257;
        v209[1] = v210;
        (*(*(v208 - 1) + 56))(v207, 0, 1, v208);
        v211 = OBJC_IVAR____TtC11Attribution20AttributionProcessor_pendingWinner;
        v212 = v261;
        swift_beginAccess();

        sub_10024BD3C(v207, v212 + v211);
        swift_endAccess();
        v213 = v264[3];
        v214 = v264[4];
        v215 = sub_1000035B8(v264, v213);
        sub_10024BDAC(v215, v212, v213, v214);
        (v265)(v238, v260);
        v216 = v206;
        return sub_10024CAA0(v216, type metadata accessor for WinningAttribution);
      }
    }

    else
    {
      v265 = *(v170 + 8);
      (v265)(v185, v186);
    }

    v217 = v241;
    sub_1002474DC(v262, 1, v241);
    v218 = swift_allocObject();
    swift_weakInit();
    v219 = v264;
    sub_100003554(v264, &v267);
    v220 = swift_allocObject();
    v221 = v256;
    v222 = v257;
    *(v220 + 16) = v218;
    *(v220 + 24) = v222;
    v223 = v258;
    *(v220 + 32) = v259;
    *(v220 + 40) = v221;
    *(v220 + 48) = v223;
    *(v220 + 56) = 0;
    sub_100004A68(&v267, v220 + 64);

    sub_100247CEC(v217, v219, sub_10024D820, v220);

    sub_10024CAA0(v217, type metadata accessor for AttributionCandidate);
    (v265)(v238, v186);

    v216 = v226;
    return sub_10024CAA0(v216, type metadata accessor for WinningAttribution);
  }

  sub_1001ED244(v35, &qword_1004D4CE0);
  v58 = sub_1000035B8(v6 + 8, v6[11]);
  v59 = *v58;
  v60 = v58[6];
  v61 = v58[7];
  v62 = v37;
  sub_1000035B8(v58 + 1, v58[4]);

  v63 = sub_1003984C8();
  type metadata accessor for DatabaseActionStoreDataProvider();
  v64 = swift_initStackObject();
  v64[2] = v59;
  v64[3] = v60;
  v64[4] = v61;
  v64[5] = v63;
  v65 = v249;
  (*(v62 + 56))(v249, 1, 1, v36);
  v66 = sub_100280684(v265, v53, v65);

  sub_1001ED244(v65, &qword_1004D4CE0);
  if (((v66 | v248) & 1) == 0)
  {
    v158 = *(v235 + 20);
    v159 = *(v237 + 5);
    v160 = sub_1003981B8();
    v161 = v53;
    v162 = v238;
    (*(*(v160 - 8) + 16))(&v238[v159], v262 + v158, v160);
    *v162 = v265;
    v162[1] = v161;

    v163 = v241;
    sub_10024A168(v162, v241);
    sub_10024CAA0(v162, type metadata accessor for AppSpecifier);
    v164 = swift_allocObject();
    swift_weakInit();
    v165 = v264;
    sub_100003554(v264, &v267);
    v166 = swift_allocObject();
    v167 = v256;
    v168 = v257;
    *(v166 + 16) = v164;
    *(v166 + 24) = v168;
    v169 = v258;
    *(v166 + 32) = v259;
    *(v166 + 40) = v167;
    *(v166 + 48) = v169;
    *(v166 + 56) = 2;
    sub_100004A68(&v267, v166 + 64);

    sub_100247CEC(v163, v165, sub_10024CB00, v166);

    sub_10024CAA0(v163, type metadata accessor for AttributionCandidate);
  }

  sub_1001E27A8(&unk_1004D5DB0);
  v67 = swift_initStackObject();
  *(v67 + 16) = xmmword_1003EB210;
  *(v67 + 32) = 0x6174614477654ELL;
  *(v67 + 40) = 0xE700000000000000;
  *(v67 + 48) = [objc_allocWithZone(NSNumber) initWithBool:0];
  *(v67 + 56) = 0x65756C6156;
  *(v67 + 64) = 0xE500000000000000;
  *(v67 + 72) = [objc_allocWithZone(NSNumber) initWithBool:0];
  sub_1002143B8(v67);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004D5A28);
  swift_arrayDestroy();
  v68 = sub_100398F28();
  sub_100004218(0, &qword_1004D5DC0);
  v69 = sub_100398E48().super.isa;

  AnalyticsSendEvent();

  v70 = v261;
  v240 = v261[2];
  v71 = [v240 now];
  v72 = v254;
  sub_100397708();

  v73 = swift_allocObject();
  swift_weakInit();
  sub_100003554(v264, &v267);
  v260 = v36;
  v74 = *(v62 + 16);
  v242 = v62 + 16;
  v248 = v74;
  v74(v250, v72, v36);
  v239 = type metadata accessor for ProductionAppSpecifier;
  sub_10024D608(v262, v251, type metadata accessor for ProductionAppSpecifier);
  v241 = *(v62 + 80);
  v247 = v62;
  v75 = (v241 + 80) & ~v241;
  v76 = *(v243 + 80);
  v77 = (v252 + v76 + v75) & ~v76;
  v78 = (v253 + v77 + 7) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v249 = v73;
  v80 = v257;
  *(v79 + 2) = v73;
  *(v79 + 3) = v80;
  *(v79 + 4) = v259;
  v81 = v79;
  sub_100004A68(&v267, (v79 + 40));
  v82 = *(v62 + 32);
  v243 = v62 + 32;
  v257 = v82;
  (v82)(&v81[v75], v250, v260);
  v265 = type metadata accessor for ProductionAppSpecifier;
  sub_10024BC80(v251, &v81[v77], type metadata accessor for ProductionAppSpecifier);
  v83 = &v81[v78];
  v238 = v81;
  v84 = v258;
  *v83 = v256;
  *(v83 + 1) = v84;
  v256 = sub_1000035B8(v70 + 3, v70[6]);

  v85 = [v240 now];
  sub_100397708();

  v86 = swift_allocObject();
  v259 = v86;
  swift_weakInit();
  v87 = v262;
  v88 = v244;
  v89 = v239;
  sub_10024D608(v262, v244, v239);
  v261 = (v76 | 7);
  v90 = v253;
  v91 = swift_allocObject();
  v91[2] = v86;
  v91[3] = sub_10024CB04;
  v91[4] = v81;
  sub_10024BC80(v88, v91 + ((v76 + 40) & ~v76), v265);
  v92 = *v256;
  v93 = sub_100399268();
  (*(*(v93 - 8) + 56))(v255, 1, 1, v93);
  sub_100003554(v264, v266);
  v94 = v87;
  v95 = v245;
  sub_10024D608(v94, v245, v89);
  v96 = v246;
  (v248)(v246, v263, v260);
  v97 = (v76 + 80) & ~v76;
  v98 = v97 + v90;
  v99 = (v241 + v98 + 1) & ~v241;
  v100 = (v252 + v99 + 7) & 0xFFFFFFFFFFFFFFF8;
  v101 = swift_allocObject();
  v101[2] = 0;
  v101[3] = 0;
  v101[4] = v92;
  sub_100004A68(v266, (v101 + 5));
  sub_10024BC80(v95, v101 + v97, v265);
  *(v101 + v98) = 1;
  v102 = v101 + v99;
  v103 = v260;
  (v257)(v102, v96, v260);
  v104 = (v101 + v100);
  *v104 = sub_10024CC14;
  v104[1] = v91;

  sub_1001F0F40(0, 0, v255, &unk_1003ECE48, v101);

  v105 = *(v247 + 8);
  v105(v263, v103);
  v105(v254, v103);
LABEL_9:
}

uint64_t sub_100249DCC()
{
  swift_unknownObjectRelease();
  sub_100003894(v0 + 24);
  sub_100003894(v0 + 64);
  sub_100003894(v0 + 104);
  sub_100003894(v0 + 144);
  sub_100003894(v0 + 184);

  sub_1001ED244(v0 + OBJC_IVAR____TtC11Attribution20AttributionProcessor_pendingWinner, &qword_1004D70B8);
  sub_1001ED244(v0 + OBJC_IVAR____TtC11Attribution20AttributionProcessor_internalOverride, &qword_1004D7108);

  return swift_deallocClassInstance();
}

void sub_100249EC0()
{
  sub_100249F84();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100249F84()
{
  if (!qword_1004D6E88)
  {
    type metadata accessor for PendingWinner(255);
    v0 = sub_1003995E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D6E88);
    }
  }
}

void sub_10024A024()
{
  type metadata accessor for WinningAttribution(319);
  if (v0 <= 0x3F)
  {
    sub_10024A0C8();
    if (v1 <= 0x3F)
    {
      sub_10024A118();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10024A0C8()
{
  if (!qword_1004D7058)
  {
    v0 = sub_1003995E8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D7058);
    }
  }
}

unint64_t sub_10024A118()
{
  result = qword_1004D7060;
  if (!qword_1004D7060)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1004D7060);
  }

  return result;
}

uint64_t sub_10024A168@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1001E27A8(&unk_1004D70E0);
  v5 = __chkstk_darwin(v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = sub_100397748();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  sub_100397608();
  sub_100397648();
  sub_10024D180(&qword_1004D62C8, &type metadata accessor for Date);
  result = sub_100398EF8();
  if (result)
  {
    v26 = a1;
    v18 = *(v11 + 32);
    v18(v9, v16, v10);
    v18(&v9[*(v4 + 48)], v14, v10);
    sub_10000ADB4(v9, v7, &unk_1004D70E0);
    v19 = a2;
    v20 = *(v4 + 48);
    v18(v19, v7, v10);
    v21 = *(v11 + 8);
    v21(&v7[v20], v10);
    sub_10024CDC8(v9, v7, &unk_1004D70E0);
    v22 = *(v4 + 48);
    v23 = sub_1001E27A8(&qword_1004D6250);
    v18(&v19[*(v23 + 36)], &v7[v22], v10);
    v21(v7, v10);
    v24 = type metadata accessor for AttributionCandidate(0);
    type metadata accessor for AttributionCandidate.Provenance(0);
    swift_storeEnumTagMultiPayload();
    return sub_10024D608(v26, &v19[*(v24 + 24)], type metadata accessor for AppSpecifier);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10024A468(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v41 = a7;
  v42 = a8;
  v44 = a5;
  v14 = sub_1001E27A8(&unk_1004D70F8);
  __chkstk_darwin(v14 - 8);
  v16 = &v38 - v15;
  v17 = sub_1001E27A8(&qword_1004D7110);
  __chkstk_darwin(v17 - 8);
  v19 = &v38 - v18;
  v20 = type metadata accessor for AttributionCandidate(0);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v43 = a3;
    if (a1)
    {
      (v43)(a1);
    }

    else
    {
      v39 = a10;
      v40 = a4;
      v38 = a9;
      v26 = v44[3];
      v27 = v44[4];
      sub_1000035B8(v44, v26);
      (*(v27 + 16))(a6, v26, v27);
      sub_1002474DC(v41, 0, v23);
      sub_10000ADB4(v42, v16, &unk_1004D70F8);
      v28 = type metadata accessor for WinningAttribution(0);
      if ((*(*(v28 - 8) + 48))(v16, 1, v28) == 1)
      {
        sub_1001ED244(v16, &unk_1004D70F8);
        v29 = 1;
      }

      else
      {
        sub_10024D608(v16, v19, type metadata accessor for AttributionCandidate);
        sub_10024CAA0(v16, type metadata accessor for WinningAttribution);
        v29 = 0;
      }

      v30 = (*(v21 + 56))(v19, v29, 1, v20);
      __chkstk_darwin(v30);
      *(&v38 - 2) = v23;
      v31 = sub_10024AA44(sub_10024D160);
      sub_1001ED244(v19, &qword_1004D7110);
      v32 = swift_allocObject();
      swift_weakInit();
      v33 = v44;
      sub_100003554(v44, v45);
      v34 = swift_allocObject();
      v35 = v43;
      *(v34 + 16) = v32;
      *(v34 + 24) = v35;
      v36 = v39;
      v37 = v38;
      *(v34 + 32) = v40;
      *(v34 + 40) = v37;
      *(v34 + 48) = v36;
      *(v34 + 56) = v31;
      sub_100004A68(v45, v34 + 64);

      sub_100247CEC(v23, v33, sub_10024D820, v34);

      return sub_10024CAA0(v23, type metadata accessor for AttributionCandidate);
    }
  }

  else
  {
    sub_10024BCE8();
    swift_allocError();
    *v25 = 5603;
    a3();
  }
}

uint64_t sub_10024A8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  sub_100397748();
  sub_10024D180(&qword_1004D6460, &type metadata accessor for Date);
  result = sub_100398F08();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1001E27A8(&qword_1004D6250);
  result = sub_100398F08();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v7 = type metadata accessor for AttributionCandidate(0);
  result = sub_100237E2C(a2 + *(v7 + 20), a1 + *(v7 + 20));
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v8 = *(v7 + 24);
  v9 = (a1 + v8);
  v10 = *(a2 + v8 + 8);
  v11 = v9[1];
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_15;
    }

    if (*(a2 + v8) != *v9 || v10 != v11)
    {
      result = sub_1003999B8();
      if ((result & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else if (v11)
  {
LABEL_15:
    v13 = 0;
    goto LABEL_16;
  }

  type metadata accessor for AppSpecifier(0);
  result = sub_100398188();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = 1;
LABEL_16:
  *a3 = v13;
  return result;
}

uint64_t sub_10024AA44(void (*a1)(uint64_t *__return_ptr, char *))
{
  v12 = a1;
  v3 = type metadata accessor for AttributionCandidate(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D7110);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_10000ADB4(v1, &v11 - v8, &qword_1004D7110);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return 2;
  }

  sub_10024BC80(v9, v6, type metadata accessor for AttributionCandidate);
  v12(&v13, v6);
  if (v2)
  {
    result = sub_10024CAA0(v6, type metadata accessor for AttributionCandidate);
    __break(1u);
  }

  else
  {
    sub_10024CAA0(v6, type metadata accessor for AttributionCandidate);
    return v13;
  }

  return result;
}

uint64_t sub_10024AC28(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5, uint64_t a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v16 = type metadata accessor for AttributionCandidate(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a1)
    {
      (a3)(a1);
    }

    else
    {
      v26 = a9;
      v22 = a5[3];
      v21 = a5[4];
      sub_1000035B8(a5, v22);
      (*(v21 + 16))(a6, v22, v21);
      sub_1002474DC(a7, 0, v18);
      v23 = swift_allocObject();
      swift_weakInit();
      sub_100003554(a5, v27);
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = a3;
      *(v24 + 32) = a4;
      *(v24 + 40) = a8;
      *(v24 + 48) = v26;
      *(v24 + 56) = 2;
      sub_100004A68(v27, v24 + 64);

      sub_100247CEC(v18, a5, sub_10024D820, v24);

      sub_10024CAA0(v18, type metadata accessor for AttributionCandidate);
    }
  }

  else
  {
    sub_10024BCE8();
    swift_allocError();
    *v19 = 5603;
    a3();
  }
}

uint64_t sub_10024AE84(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v6 = type metadata accessor for ExpiringAttributionToken();
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001E27A8(&qword_1004D7390);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  v12 = sub_1001E27A8(&qword_1004D70B0);
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_10000ADB4(a1, v11, &qword_1004D7390);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = sub_100397B38();
    (*(*(v15 - 8) + 32))(v14, v11, v15);
  }

  else
  {
    sub_10024BC80(v11, v8, type metadata accessor for ExpiringAttributionToken);
    sub_10024D608(a4, v14, type metadata accessor for AttributionCandidate);
    v16 = type metadata accessor for WinningAttribution(0);
    sub_10024BC80(v8, &v14[*(v16 + 20)], type metadata accessor for ExpiringAttributionToken);
  }

  swift_storeEnumTagMultiPayload();
  v19(v14);
  return sub_1001ED244(v14, &qword_1004D70B0);
}

uint64_t sub_10024B0D0(uint64_t a1)
{
  v3 = *(type metadata accessor for AttributionCandidate(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_10024AE84(a1, v4, v5, v6);
}

uint64_t sub_10024B144(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(void), void (*a5)(_OWORD *), uint64_t a6, int a7, void *a8)
{
  v73 = a8;
  v71 = a7;
  v74 = a6;
  v75 = a5;
  v77 = a4;
  v78 = a3;
  v9 = sub_1001E27A8(&qword_1004D70B8);
  __chkstk_darwin(v9 - 8);
  v72 = &v63 - v10;
  v69 = type metadata accessor for AttributionCandidate(0);
  __chkstk_darwin(v69);
  v68 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100397B38();
  v76 = *(v12 - 8);
  __chkstk_darwin(v12);
  v67 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WinningAttribution(0);
  v15 = __chkstk_darwin(v14);
  v66 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v70 = &v63 - v18;
  __chkstk_darwin(v17);
  v20 = &v63 - v19;
  v21 = sub_1001E27A8(&qword_1004D70B0);
  v22 = __chkstk_darwin(v21);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v63 - v25;
  v27 = sub_1001E27A8(&qword_1004D70C0);
  __chkstk_darwin(v27);
  v29 = (&v63 - v28);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_10024BCE8();
    swift_allocError();
    *v32 = 5603;
    v78();
  }

  v65 = Strong;
  v31 = v77;
  v64 = a1;
  sub_10000ADB4(a1, v26, &qword_1004D70B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v76 + 32))(v29, v26, v12);
  }

  else
  {
    sub_10024BC80(v26, v20, type metadata accessor for WinningAttribution);
    v33 = &v20[*(v14 + 20)];
    v34 = *(v33 + 3);
    v82 = *(v33 + 2);
    v83 = v34;
    v35 = *(v33 + 5);
    v84 = *(v33 + 4);
    v85 = v35;
    v36 = *(v33 + 1);
    v80 = *v33;
    v81 = v36;
    sub_100245FC8(&v80, v79);
    sub_10024CAA0(v20, type metadata accessor for WinningAttribution);
    v37 = v83;
    v29[2] = v82;
    v29[3] = v37;
    v38 = v85;
    v29[4] = v84;
    v29[5] = v38;
    v39 = v81;
    *v29 = v80;
    v29[1] = v39;
  }

  swift_storeEnumTagMultiPayload();
  v40 = v31;
  v75(v29);
  sub_1001ED244(v29, &qword_1004D70C0);
  sub_10000ADB4(v64, v24, &qword_1004D70B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v42 = v78;
  if (EnumCaseMultiPayload == 1)
  {
    v43 = v76;
    v44 = v67;
    (*(v76 + 32))(v67, v24, v12);
    sub_10024D180(&qword_1004D70D0, &type metadata accessor for UnknownError);
    swift_willThrowTypedImpl();
    (*(v43 + 8))(v44, v12);
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v45 = sub_1003995A8();
    sub_100398B98();

    sub_10024BCE8();
    swift_allocError();
    *v46 = 5600;
    v42();
  }

  v48 = v66;
  sub_10024BC80(v24, v66, type metadata accessor for WinningAttribution);
  v49 = v70;
  sub_10024BC80(v48, v70, type metadata accessor for WinningAttribution);
  sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v50 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1003C9930;
  sub_10024D608(v49, v68, type metadata accessor for AttributionCandidate);
  v52 = sub_100398FC8();
  v54 = v53;
  *(v51 + 56) = &type metadata for String;
  *(v51 + 64) = sub_100206BA0();
  *(v51 + 32) = v52;
  *(v51 + 40) = v54;
  sub_100398B98();

  v55 = v72;
  sub_10024D608(v49, v72, type metadata accessor for WinningAttribution);
  v56 = type metadata accessor for PendingWinner(0);
  *(v55 + v56[5]) = 1;
  *(v55 + v56[6]) = v71;
  v57 = (v55 + v56[7]);
  *v57 = v42;
  v57[1] = v40;
  (*(*(v56 - 1) + 56))(v55, 0, 1, v56);
  v58 = OBJC_IVAR____TtC11Attribution20AttributionProcessor_pendingWinner;
  v59 = v65;
  swift_beginAccess();

  sub_10024BD3C(v55, v59 + v58);
  swift_endAccess();
  v60 = v73[3];
  v61 = v73[4];
  v62 = sub_1000035B8(v73, v60);
  sub_10024BDAC(v62, v59, v60, v61);

  return sub_10024CAA0(v49, type metadata accessor for WinningAttribution);
}

uint64_t sub_10024BA14(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t *a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1003993D8();
    sub_100004218(0, &qword_1004D5D30);
    v11 = sub_1003995A8();
    sub_100398B98();

    v12 = sub_1000035B8((v10 + 104), *(v10 + 128));
    sub_100243E6C(a1, *a6, a6[1], *v12, v12[1], v12[2]);
    (a4)(0);
  }

  else
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v14 = sub_1003995A8();
    sub_100398B98();

    sub_10024BCE8();
    swift_allocError();
    *v15 = 5603;
    a4();
  }
}

uint64_t sub_10024BC08(uint64_t a1)
{
  v3 = *(sub_100397748() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_10024DC34(a1, v4, v5, v6, v7);
}

uint64_t sub_10024BC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10024BCE8()
{
  result = qword_1004D70C8;
  if (!qword_1004D70C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D70C8);
  }

  return result;
}

uint64_t sub_10024BD3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D70B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10024BDAC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TransmittedAttribution();
  __chkstk_darwin(v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001E27A8(&qword_1004D70B8);
  __chkstk_darwin(v11 - 8);
  v13 = v27 - v12;
  v14 = type metadata accessor for PendingWinner(0);
  v15 = *(v14 - 1);
  __chkstk_darwin(v14);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = a3;
  v28[4] = a4;
  v18 = sub_1001E6B7C(v28);
  (*(*(a3 - 8) + 16))(v18, a1, a3);
  swift_beginAccess();
  v19 = a2[28];
  if (v19[2])
  {
    v20 = OBJC_IVAR____TtC11Attribution20AttributionProcessor_pendingWinner;
    swift_beginAccess();
    sub_10000ADB4(a2 + v20, v13, &qword_1004D70B8);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1001ED244(v13, &qword_1004D70B8);
    }

    else
    {
      sub_10024BC80(v13, v17, type metadata accessor for PendingWinner);
      swift_beginAccess();
      v21 = v19[4];
      v22 = v19[5];
      sub_1001EF9F4(v21, v22);
      sub_100258A18(0, 1);
      swift_endAccess();
      v23 = v17[v14[5]];
      v24 = v17[v14[6]];
      v27[0] = *&v17[v14[7]];
      sub_1000035B8(a2 + 23, a2[26]);
      sub_10024D608(v17, v10, type metadata accessor for AttributionCandidate);
      v25 = &v10[v8[5]];
      *v25 = v21;
      v25[1] = v22;
      v10[v8[6]] = v23;
      v10[v8[7]] = v24;
      sub_1001EF9F4(v21, v22);
      sub_100255A34(v10, v28);
      sub_10024CAA0(v10, type metadata accessor for TransmittedAttribution);
      (v27[0])(0);
      sub_1001EFA90(v21, v22);
      sub_10024CAA0(v17, type metadata accessor for PendingWinner);
    }
  }

  return sub_100003894(v28);
}

uint64_t sub_10024C168(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6)
{
  v84 = a2;
  v11 = sub_1001E27A8(&unk_1004D68E0);
  __chkstk_darwin(v11 - 8);
  v73 = (&v70 - v12);
  v13 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v13 - 8);
  v87 = &v70 - v14;
  v92 = sub_100397748();
  v90 = *(v92 - 8);
  v15 = __chkstk_darwin(v92);
  v81 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v16;
  __chkstk_darwin(v15);
  v86 = &v70 - v17;
  v18 = type metadata accessor for ProductionAppSpecifier(0);
  v74 = *(v18 - 8);
  v19 = __chkstk_darwin(v18 - 8);
  v79 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v77 = &v70 - v22;
  v83 = v23;
  __chkstk_darwin(v21);
  v75 = &v70 - v24;
  v25 = sub_1001E27A8(&qword_1004D4CE0);
  __chkstk_darwin(v25 - 8);
  v27 = &v70 - v26;
  v28 = swift_allocObject();
  v76 = a4;
  v28[2] = a4;
  v28[3] = a5;
  v28[4] = sub_10024D230;
  v28[5] = a6;
  v89 = v28;
  v29 = a3[11];
  v78 = a3;
  v30 = sub_1000035B8(a3 + 8, v29);
  v31 = *(a1 + 8);
  v82 = *a1;
  v85 = a1;
  v32 = *v30;
  v34 = v30[6];
  v33 = v30[7];
  sub_1000035B8(v30 + 1, v30[4]);
  v88 = a6;
  swift_retain_n();
  v91 = a5;

  v35 = sub_1003984C8();
  type metadata accessor for DatabaseActionStoreDataProvider();
  inited = swift_initStackObject();
  inited[2] = v32;
  inited[3] = v34;
  inited[4] = v33;
  inited[5] = v35;
  (*(v90 + 56))(v27, 1, 1, v92);
  LOBYTE(a3) = sub_100280684(v82, v31, v27);

  sub_1001ED244(v27, &qword_1004D4CE0);
  if (a3)
  {
    v37 = swift_allocObject();
    v38 = v78;
    swift_weakInit();
    v73 = type metadata accessor for ProductionAppSpecifier;
    v39 = v75;
    sub_10024D608(v85, v75, type metadata accessor for ProductionAppSpecifier);
    sub_100003554(v84, v94);
    v40 = *(v74 + 80);
    v41 = (v40 + 40) & ~v40;
    v72 = v41 + v83;
    v82 = (v40 | 7);
    v42 = (v41 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    v76 = v37;
    v43[2] = v37;
    v43[3] = sub_10024D238;
    v43[4] = v89;
    v44 = v43;
    v71 = type metadata accessor for ProductionAppSpecifier;
    sub_10024BC80(v39, v43 + v41, type metadata accessor for ProductionAppSpecifier);
    v74 = v44;
    sub_100004A68(v94, v44 + v42);
    v70 = sub_1000035B8(v38 + 3, v38[6]);
    v45 = v38[2];

    v46 = [v45 now];
    v47 = v86;
    sub_100397708();

    v48 = swift_allocObject();
    v75 = v48;
    swift_weakInit();
    v49 = v85;
    v50 = v77;
    v51 = v73;
    sub_10024D608(v85, v77, v73);
    v52 = swift_allocObject();
    v52[2] = v48;
    v52[3] = sub_10024D244;
    v52[4] = v44;
    sub_10024BC80(v50, v52 + v41, type metadata accessor for ProductionAppSpecifier);
    v53 = *v70;
    v54 = sub_100399268();
    (*(*(v54 - 8) + 56))(v87, 1, 1, v54);
    sub_100003554(v84, v93);
    v55 = v49;
    v56 = v79;
    sub_10024D608(v55, v79, v51);
    v57 = v90;
    v58 = v81;
    (*(v90 + 16))(v81, v47, v92);
    v59 = (v40 + 80) & ~v40;
    v60 = v59 + v83;
    v61 = (v59 + v83 + *(v57 + 80) + 1) & ~*(v57 + 80);
    v62 = (v80 + v61 + 7) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v63[2] = 0;
    v63[3] = 0;
    v63[4] = v53;
    sub_100004A68(v93, (v63 + 5));
    sub_10024BC80(v56, v63 + v59, v71);
    *(v63 + v60) = 0;
    v64 = v92;
    (*(v57 + 32))(v63 + v61, v58, v92);
    v65 = (v63 + v62);
    *v65 = sub_10024D824;
    v65[1] = v52;

    sub_1001F0F40(0, 0, v87, &unk_1003ECE70, v63);

    (*(v57 + 8))(v86, v64);
  }

  else
  {

    v76(v67);
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      v68 = type metadata accessor for AttributionCoordinator.Operation();
      v69 = v73;
      (*(*(v68 - 8) + 56))(v73, 1, 1, v68);
      sub_100257B28(v69);

      sub_1001ED244(v69, &unk_1004D68E0);
    }
  }
}

uint64_t sub_10024CAA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10024CB04(uint64_t a1)
{
  v3 = *(sub_100397748() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ProductionAppSpecifier(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_10024AC28(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), (v1 + 40), v1 + v4, (v1 + v7), *v8, v8[1]);
}

uint64_t sub_10024CC18(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductionAppSpecifier(0) - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_100397748() - 8);
  v7 = (v5 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[4];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1001F3474;

  return sub_10026A578(a1, v8, v9, v11, (v1 + 5), v1 + v4, v10, v1 + v7);
}

uint64_t sub_10024CDC8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_1001E27A8(a3);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024CE30(uint64_t a1)
{
  v3 = *(sub_100397748() - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ProductionAppSpecifier(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1001E27A8(&unk_1004D70F8) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_10024A468(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), (v1 + 40), v1 + v4, (v1 + v7), v1 + v10, *v11, v11[1]);
}

uint64_t sub_10024CFB0(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductionAppSpecifier(0) - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(sub_100397748() - 8);
  v7 = (v5 + *(v6 + 80) + 1) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = *(v1 + v5);
  v11 = v1[4];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100005C50;

  return sub_10026A578(a1, v8, v9, v11, (v1 + 5), v1 + v4, v10, v1 + v7);
}

uint64_t sub_10024D180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10024D1C8()
{

  sub_100003894(v0 + 64);

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_10024D244(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductionAppSpecifier(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_10024712C(a1, v5, v6, v7, (v1 + v4), v8);
}

uint64_t sub_10024D2E8()
{
  v1 = (type metadata accessor for ProductionAppSpecifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1003981B8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10024D3E0(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ProductionAppSpecifier(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80)));

  return sub_10024BA14(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_10024D468()
{
  v1 = (type metadata accessor for ProductionAppSpecifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 80) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_100397748();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + v3 + 1) & ~v7;
  v9 = v2 | v7;
  v10 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  sub_100003894(v0 + 40);

  v11 = v1[7];
  v12 = sub_1003981B8();
  (*(*(v12 - 8) + 8))(v0 + v3 + v11, v12);
  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v10 + 16, v9 | 7);
}

uint64_t sub_10024D608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10024D670()
{
  v1 = (type metadata accessor for ProductionAppSpecifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v1[7];
  v6 = sub_1003981B8();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  sub_100003894(v0 + v4);

  return _swift_deallocObject(v0, v4 + 40, v2 | 7);
}

uint64_t sub_10024D77C(uint64_t a1)
{
  v3 = *(type metadata accessor for ProductionAppSpecifier(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100247998(a1, v5, v6, v7, (v1 + v4), v8);
}

uint64_t sub_10024D828()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10024D8E8()
{
  if (![objc_opt_self() isAppleInternalInstall])
  {
    return 0;
  }

  sub_100398F58();
  v0 = objc_allocWithZone(NSUserDefaults);
  v1 = sub_100398F28();

  v2 = [v0 initWithSuiteName:v1];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_100398F28();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    sub_100399648();

    swift_unknownObjectRelease();
  }

  else
  {

    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_1001F5818(v9);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

id sub_10024DA5C()
{
  result = [objc_opt_self() isAppleInternalInstall];
  if (result)
  {
    sub_100398F58();
    v1 = objc_allocWithZone(NSUserDefaults);
    v2 = sub_100398F28();

    v3 = [v1 initWithSuiteName:v2];

    if (v3)
    {
      v4 = sub_100398F28();
      v5 = [v3 BOOLForKey:v4];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_10024DB48()
{
  result = [objc_opt_self() isAppleInternalInstall];
  if (result)
  {
    sub_100398F58();
    v1 = objc_allocWithZone(NSUserDefaults);
    v2 = sub_100398F28();

    v3 = [v1 initWithSuiteName:v2];

    if (v3)
    {
      v4 = sub_100398F28();
      v5 = [v3 BOOLForKey:v4];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10024DC34(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, char *a5)
{
  v51 = a5;
  v8 = *(a1 + 8);
  v62 = *a1;
  v52 = v8;
  v9 = *(a1 + 24);
  v54 = *(a1 + 16);
  v53 = v9;
  v10 = *(a1 + 56);
  v55 = *(a1 + 48);
  v57 = v10;
  v56 = *(a1 + 64);
  v58 = *(a1 + 88);
  v11 = sub_1001E27A8(&qword_1004D70F0);
  __chkstk_darwin(v11 - 8);
  v61 = &v48 - v12;
  v13 = sub_100397748();
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v60 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v48 - v18;
  __chkstk_darwin(v17);
  v59 = &v48 - v20;
  v21 = sub_1001E27A8(&qword_1004D7390);
  v22 = __chkstk_darwin(v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v48 - v25;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_100397B28();
    swift_storeEnumTagMultiPayload();
    a3(v26);
    v29 = v26;
    return sub_10024E518(v29);
  }

  v28 = Strong;
  v50 = a4;
  if (*(a1 + 96))
  {
    sub_100397B28();
    swift_storeEnumTagMultiPayload();
    a3(v24);

    v29 = v24;
    return sub_10024E518(v29);
  }

  v49 = a3;
  v31 = *(a1 + 49);
  v67 = *(a1 + 33);
  v68 = v31;
  *v69 = *(a1 + 65);
  *&v69[15] = *(a1 + 80);
  v32 = *(a1 + 17);
  v65 = *(a1 + 1);
  v66 = v32;
  v33 = [*(Strong + 16) now];
  sub_100397708();

  sub_1000035B8((v28 + 64), *(v28 + 88));
  sub_1003984B8();
  v34 = v59;
  sub_100397678();
  v48 = *(v14 + 8);
  v48(v19, v13);
  sub_10000BE14();
  v35 = v51;
  v36 = sub_100398EE8();
  v37 = *(v14 + 16);
  if (v36)
  {
    v38 = v60;
    v39 = v60;
    v40 = v34;
  }

  else
  {
    v40 = v35;
    v38 = v60;
    v39 = v60;
  }

  v37(v39, v40, v13);
  v37(v19, v38, v13);
  type metadata accessor for ExpiringAttributionToken();
  v41 = v62;
  sub_1001EF9F4(v62, v52);
  sub_1001EF9F4(v54, v53);

  sub_1001EF9F4(v57, v56);

  sub_100397C78();
  *v26 = v41;
  v42 = v68;
  *(v26 + 33) = v67;
  *(v26 + 49) = v42;
  *(v26 + 65) = *v69;
  *(v26 + 5) = *&v69[15];
  v43 = v66;
  *(v26 + 1) = v65;
  *(v26 + 17) = v43;
  swift_storeEnumTagMultiPayload();
  v49(v26);
  sub_10024E518(v26);
  sub_100003554(v28 + 24, v64);
  v44 = v61;
  sub_100399248();
  v45 = sub_100399268();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  sub_100003554(v64, v63);
  v46 = swift_allocObject();
  *(v46 + 16) = 0;
  *(v46 + 24) = 0;
  sub_100004A68(v63, v46 + 32);
  sub_1001F0F40(0, 0, v44, &unk_1003ECFF0, v46);

  sub_100003894(v64);
  v47 = v48;
  v48(v38, v13);
  return v47(v34, v13);
}

uint64_t sub_10024E294()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_1000035B8(v1, v2);
  v6 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_10024E3B8;

  return v6(v2, v3);
}

uint64_t sub_10024E3B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10024E4AC()
{
  swift_unknownObjectRelease();
  sub_100003894(v0 + 24);
  sub_100003894(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_10024E518(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D7390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10024E580(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100005C50;

  return sub_10024E274(a1, v4, v5, v1 + 32);
}

uint64_t sub_10024E630(void *a1)
{
  sub_1000035B8(a1, a1[3]);
  v1 = sub_100397B58();
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = v1;
  v5 = v2;
  if (qword_1004D6120 != -1)
  {
    swift_once();
  }

  v6 = objc_opt_self();
  v7 = [objc_opt_self() classes];
  sub_100399318();

  isa = sub_1003992F8().super.isa;

  v9 = sub_100397538().super.isa;
  v14[0] = 0;
  v10 = [v6 unarchivedObjectOfClasses:isa fromData:v9 error:v14];

  if (v10)
  {
    v11 = v14[0];
    sub_100399648();
    swift_unknownObjectRelease();
    sub_1001E27A8(&qword_1004D5D38);
    if (swift_dynamicCast())
    {
      sub_1001DDE50(v4, v5);
      return v13;
    }

    sub_10024FDA4();
    swift_allocError();
  }

  else
  {
    v12 = v14[0];
    sub_1003973E8();
  }

  swift_willThrow();
  return sub_1001DDE50(v4, v5);
}

uint64_t sub_10024E888(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_100398B58();
  return sub_100397C28();
}

uint64_t sub_10024EC00@<X0>(sqlite3_stmt *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = sqlite3_column_type(a1, a2);
  if (v11 > 2)
  {
    if (v11 != 3)
    {
      if (v11 == 4)
      {
        v16[3] = a4;
        v16[4] = a5;
        v13 = sub_1001E6B7C(v16);
        (*(*(a4 - 8) + 16))(v13, a3, a4);
        v14 = sub_10024E630(v16);
        result = sub_100003894(v16);
        if (v6)
        {
          return result;
        }

        if (v14)
        {
          sub_100398EA8();
        }
      }

      goto LABEL_11;
    }

    result = sub_100397BA8();
    if (!v6)
    {
      sub_100399008();
    }
  }

  else
  {
    if (v11 != 1)
    {
      if (v11 == 2)
      {
        result = sub_100397BC8();
        if (!v6)
        {
          return sub_1003992B8();
        }

        return result;
      }

LABEL_11:
      v15 = sub_100398B58();
      return (*(*(v15 - 8) + 56))(a6, 1, 1, v15);
    }

    result = sub_100397C18();
    if (!v6)
    {
      return sub_100399B38();
    }
  }

  return result;
}

uint64_t sub_10024EE0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100398B58();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001E27A8(&qword_1004D8640);
  v11 = __chkstk_darwin(v10 - 8);
  v103 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v105 = &v92 - v14;
  v15 = __chkstk_darwin(v13);
  v104 = &v92 - v16;
  v17 = __chkstk_darwin(v15);
  v113 = &v92 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v92 - v20;
  __chkstk_darwin(v19);
  v23 = &v92 - v22;
  v24 = sub_1001E27A8(&qword_1004D4CE0);
  v25 = __chkstk_darwin(v24 - 8);
  v108 = &v92 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v120 = &v92 - v28;
  __chkstk_darwin(v27);
  v30 = &v92 - v29;
  v31 = sub_100397748();
  v32 = *(*(v31 - 8) + 56);
  v118 = v30;
  v32(v30, 1, 1, v31);
  v114 = *(v7 + 56);
  v115 = v7 + 56;
  v114(v23, 1, 1, v6);
  v126 = *(a2 + 16);
  if (!v126)
  {
    v83 = a3;

    v126 = 0;
    v116 = 0;
    v117 = 0;
    v119 = 0;
    v123 = 0;
    v84 = _swiftEmptyDictionarySingleton;
    v82 = 1;
    v125 = 1;
LABEL_66:
    v85 = v118;
    sub_10000ADB4(v118, v120, &qword_1004D4CE0);
    sub_10000ADB4(v23, v21, &qword_1004D8640);
    v86 = v84[2];
    v87 = v84;
    v88 = v113;
    if (v86)
    {
      *v113 = v87;
      (*(v7 + 104))(v88, enum case for APJSValue.dictionary(_:), v6);
      v89 = 0;
    }

    else
    {

      v89 = 1;
    }

    v114(v88, v89, 1, v6);
    LOBYTE(v127) = v82 & 1;
    sub_100398738();
    sub_1001ED244(v23, &qword_1004D8640);
    sub_1001ED244(v85, &qword_1004D4CE0);
    v90 = sub_100398748();
    (*(*(v90 - 8) + 56))(v83, 0, 1, v90);
    return sub_100003894(a1);
  }

  v97 = v9;
  v110 = v23;
  v106 = v21;
  v107 = a3;
  v112 = v6;
  v121 = 0;
  v124 = 0;
  v116 = 0;
  v117 = 0;
  v119 = 0;
  v123 = 0;
  v34 = 0;
  v102 = 0;
  v101 = 0x800000010042F080;
  v99 = (v7 + 48);
  v98 = (v7 + 32);
  v109 = v7;
  v95 = v7 + 40;
  v100 = "";
  v35 = (a2 + 40);
  v111 = _swiftEmptyDictionarySingleton;
  *&v33 = 138543362;
  v96 = v33;
  v122 = 1;
  v125 = 1;
  while (v34 < *(a2 + 16))
  {
    v37 = *(v35 - 1);
    v36 = *v35;
    v38 = v37 == 0x746E657665 && v36 == 0xE500000000000000;
    if (v38 || (sub_1003999B8() & 1) != 0)
    {
      sub_1000035B8(a1, a1[3]);
      v39 = sub_100397C08();
      if ((v40 & 1) == 0)
      {
        if (v39 < 0xFFFFFFFF80000000)
        {
          goto LABEL_72;
        }

        if (v39 > 0x7FFFFFFF)
        {
          goto LABEL_73;
        }

        v124 = v39;
        v125 = 0;
      }
    }

    else if (v37 == 0x65736F70727570 && v36 == 0xE700000000000000 || (sub_1003999B8() & 1) != 0)
    {
      sub_1000035B8(a1, a1[3]);
      v41 = sub_100397C08();
      if ((v42 & 1) == 0)
      {
        if (v41 < 0xFFFFFFFF80000000)
        {
          goto LABEL_74;
        }

        if (v41 > 0x7FFFFFFF)
        {
          goto LABEL_75;
        }

        v121 = v41;
        v122 = 0;
      }
    }

    else
    {
      if (v37 == 0x6973736572706D69 && v36 == 0xEC00000064496E6FLL || (sub_1003999B8() & 1) != 0)
      {

        sub_1000035B8(a1, a1[3]);
        v119 = sub_100397B98();
        v123 = v43;
        goto LABEL_24;
      }

      if (v37 == 0x6D617473656D6974 && v36 == 0xE900000000000070 || (sub_1003999B8() & 1) != 0)
      {
        sub_1000035B8(a1, a1[3]);
        v44 = v108;
        sub_100397B78();
        v45 = v118;
        sub_1001ED244(v118, &qword_1004D4CE0);
        sub_10024CDC8(v44, v45, &qword_1004D4CE0);
        goto LABEL_24;
      }

      if (v37 == 0x69747265706F7270 && v36 == 0xEE004E4F534A7365 || (sub_1003999B8() & 1) != 0)
      {

        sub_1000035B8(a1, a1[3]);
        v116 = sub_100397B98();
        v117 = v46;
        goto LABEL_24;
      }

      if (v37 == 0xD000000000000016 && v101 == v36 || (sub_1003999B8() & 1) != 0)
      {
        v47 = v102;
        v48 = sub_10024E630(a1);
        v102 = v47;
        if (v47)
        {
          v49 = sub_1003993E8();
          sub_100004218(0, &qword_1004D5D30);
          v50 = sub_1003995A8();
          if (os_log_type_enabled(v50, v49))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            *v51 = v96;
            LODWORD(v94) = v49;
            swift_errorRetain();
            v53 = _swift_stdlib_bridgeErrorToNSError();
            *(v51 + 4) = v53;
            *v52 = v53;
            _os_log_impl(&_mh_execute_header, v50, v94, "Can't load metric internal properties: %{public}@", v51, 0xCu);
            sub_1001ED244(v52, &qword_1004D8610);
          }

          else
          {
          }

          v102 = 0;
        }

        else
        {
          v54 = v104;
          if (v48)
          {
            sub_100398EA8();

            v55 = v110;
            sub_1001ED244(v110, &qword_1004D8640);
          }

          else
          {
            v55 = v110;
            sub_1001ED244(v110, &qword_1004D8640);
            v114(v54, 1, 1, v112);
          }

          sub_10024CDC8(v54, v55, &qword_1004D8640);
        }
      }

      else
      {
        v56 = a1[3];
        v94 = a1[4];
        v93 = sub_1000035B8(a1, v56);

        sub_10024E888(v34);
        v57 = v112;
        if ((*v99)(v105, 1, v112) == 1)
        {
          sub_1001ED244(v105, &qword_1004D8640);
          v58 = v111;
          v94 = sub_1001EC1DC(v37, v36);
          v60 = v59;

          if (v60)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v127 = v58;
            v62 = v103;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_10023CBD0();
              v58 = v127;
            }

            v63 = v94;

            v64 = v62;
            v65 = v112;
            (*(v109 + 32))(v64, *(v58 + 56) + *(v109 + 72) * v63, v112);
            v111 = v58;
            sub_10023C264(v63, v58);
            v66 = 0;
          }

          else
          {
            v66 = 1;
            v65 = v112;
          }

          v75 = v103;
          v114(v103, v66, 1, v65);
          sub_1001ED244(v75, &qword_1004D8640);
        }

        else
        {
          v93 = *v98;
          v93(v97, v105, v57);
          v67 = v111;
          LODWORD(v94) = swift_isUniquelyReferenced_nonNull_native();
          v127 = v67;
          v69 = sub_1001EC1DC(v37, v36);
          v70 = v67[2];
          v71 = (v68 & 1) == 0;
          v72 = v70 + v71;
          if (__OFADD__(v70, v71))
          {
            goto LABEL_76;
          }

          if (v67[3] >= v72)
          {
            if (v94)
            {
              if (v68)
              {
                goto LABEL_61;
              }
            }

            else
            {
              v94 = v69;
              LODWORD(v111) = v68;
              sub_10023CBD0();
              v69 = v94;
              if (v111)
              {
                goto LABEL_61;
              }
            }
          }

          else
          {
            LODWORD(v111) = v68;
            sub_10023B554(v72, v94);
            v73 = sub_1001EC1DC(v37, v36);
            if ((v111 & 1) != (v74 & 1))
            {
              goto LABEL_78;
            }

            v69 = v73;
            if (v111)
            {
LABEL_61:
              v76 = v69;

              v111 = v127;
              (*(v109 + 40))(v127[7] + *(v109 + 72) * v76, v97, v112);
              goto LABEL_24;
            }
          }

          v77 = v127;
          v127[(v69 >> 6) + 8] |= 1 << v69;
          v78 = (v77[6] + 16 * v69);
          *v78 = v37;
          v78[1] = v36;
          v93((v77[7] + *(v109 + 72) * v69), v97, v112);
          v79 = v77[2];
          v80 = __OFADD__(v79, 1);
          v81 = v79 + 1;
          if (v80)
          {
            goto LABEL_77;
          }

          v111 = v77;
          v77[2] = v81;
        }
      }
    }

LABEL_24:
    if (v34 == 0x7FFFFFFF)
    {
      goto LABEL_71;
    }

    ++v34;
    v35 += 2;
    if (v126 == v34)
    {
      v82 = v122;

      v126 = v121;
      v21 = v106;
      v83 = v107;
      v84 = v111;
      v6 = v112;
      v7 = v109;
      v23 = v110;
      goto LABEL_66;
    }
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  result = sub_100399A98();
  __break(1u);
  return result;
}

void sub_10024FC8C()
{
  sub_100004218(0, &qword_1004D73A0);
  sub_1001E27A8(&qword_1004D73A8);
  v0 = sub_100399A78();
  [objc_opt_self() setWithObject:v0];
  swift_unknownObjectRelease();
  sub_100399308();
  __break(1u);
}

unint64_t sub_10024FDA4()
{
  result = qword_1004D7398;
  if (!qword_1004D7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7398);
  }

  return result;
}

unint64_t sub_10024FE0C()
{
  result = qword_1004D73B0;
  if (!qword_1004D73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D73B0);
  }

  return result;
}

uint64_t TimeZone.utc.unsafeMutableAddressor()
{
  if (qword_1004D6128 != -1)
  {
    swift_once();
  }

  v0 = sub_100397968();

  return sub_10000351C(v0, static TimeZone.utc);
}

uint64_t sub_10024FEC4()
{
  v0 = sub_1001E27A8(&qword_1004D4B98);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_100397968();
  sub_1001EB3CC(v3, static TimeZone.utc);
  v4 = sub_10000351C(v3, static TimeZone.utc);
  sub_100397938();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static TimeZone.utc.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1004D6128 != -1)
  {
    swift_once();
  }

  v2 = sub_100397968();
  v3 = sub_10000351C(v2, static TimeZone.utc);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id sub_100250090()
{
  v1 = v0;
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v2 = sub_1003993F8();
    sub_100206B54();
    v3 = sub_1003995A8();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136315138;
      v6 = *&v1[OBJC_IVAR___APOnDeviceAttributionCoordinatorObjCBridge_coordinator];
      v7 = *(v6 + 64);
      v8 = *(v6 + 72);

      v9 = sub_100005700(v7, v8, &v12);

      *(v4 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v2, "OnDeviceAttributionCoordinatorObjCBridge for %s deallocated.", v4, 0xCu);
      sub_100003894(v5);
    }
  }

  v10 = type metadata accessor for OnDeviceAttributionCoordinatorObjCBridge();
  v13.receiver = v1;
  v13.super_class = v10;
  return objc_msgSendSuper2(&v13, "dealloc");
}

void *sub_100250250(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v33 = a8;
  v30 = a6;
  v31 = a5;
  v29 = a4;
  v11 = type metadata accessor for OnDeviceAttributionTelemetry(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for AppSpecifier(0);
  __chkstk_darwin(v14);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = [objc_opt_self() isAppleInternalInstall];
  if (v17)
  {
    sub_1003993F8();
    sub_100206B54();
    v18 = sub_1003995A8();
    sub_100398B98();
  }

  v19 = [objc_allocWithZone(type metadata accessor for ODAttributionAnalytics()) init];
  sub_10027D33C();

  if (*(a3 + OBJC_IVAR___APItunesAppMetaData_installedByAppStore) == 1)
  {
    result = *(a3 + OBJC_IVAR___APItunesAppMetaData_adamId);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v21 = [result stringValue];
    v22 = sub_100398F58();
    v24 = v23;

    sub_100398198();
    *v16 = v22;
    v16[1] = v24;
  }

  else
  {

    sub_100398198();
    *v16 = 0;
    v16[1] = 0;
  }

  v25 = swift_allocObject();
  *(v25 + 16) = v29 & 1;
  *(v25 + 24) = v30;
  *(v25 + 32) = a7;

  if (v17)
  {
    sub_1003993F8();
    sub_100206B54();
    v26 = sub_1003995A8();
    sub_100398B98();
  }

  sub_100398BE8();
  v27 = *(v32 + OBJC_IVAR___APOnDeviceAttributionCoordinatorObjCBridge_coordinator);

  sub_100250C24(v16, v13, sub_10025176C, v25, v33, a9, v27);

  sub_1002518F0(v13, type metadata accessor for OnDeviceAttributionTelemetry);
  return sub_1002518F0(v16, type metadata accessor for AppSpecifier);
}

uint64_t sub_1002505F8(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v27 = a4;
  v28 = a3;
  v6 = sub_100397B38();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001E27A8(&qword_1004D70C0);
  __chkstk_darwin(v10);
  v12 = (&v25 - v11);
  sub_10000ADB4(a1, &v25 - v11, &qword_1004D70C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_100251778();
    v13 = swift_allocError();
    (*(v7 + 16))(v14, v9, v6);
    v28(0, 0, v13);

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v16 = *v12;
    v17 = v12[1];
    v18 = v12[2];
    v19 = v12[3];
    v20 = v12[6];
    v21 = v12[7];
    v26 = v12[8];
    v22 = 5;
    if (a2)
    {
      v22 = 10;
      v23 = v12[11];
    }

    else
    {
      v23 = v20;
    }

    v24 = v12[v22];

    v28(v24, v23, 0);

    sub_1001EFA90(v16, v17);
    sub_1001EFA90(v18, v19);

    sub_1001EFA90(v21, v26);
  }
}

void sub_1002509AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_100398F28();
    if (a3)
    {
LABEL_3:
      v7 = sub_1003973D8();
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v7 = 0;
LABEL_6:
  v8 = v7;
  (*(a4 + 16))(a4, v6);
}

void sub_100250A3C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1003973D8();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_100250C24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a5;
  v47 = a4;
  v45 = a3;
  v11 = sub_1001E27A8(&unk_1004D68E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - v12;
  v14 = type metadata accessor for AttributionCoordinator.Operation();
  v43 = *(v14 - 8);
  v44 = v14;
  __chkstk_darwin(v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AppSpecifier(0);
  __chkstk_darwin(v17);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49[3] = type metadata accessor for OnDeviceAttributionTelemetry(0);
  v49[4] = &off_10047C0A0;
  v20 = sub_1001E6B7C(v49);
  sub_100251888(a2, v20, type metadata accessor for OnDeviceAttributionTelemetry);
  v21 = sub_1003993F8();
  sub_100206B54();
  v22 = sub_1003995A8();
  sub_100251888(a1, v19, type metadata accessor for AppSpecifier);
  if (os_log_type_enabled(v22, v21))
  {
    v23 = swift_slowAlloc();
    v42 = a7;
    v24 = v23;
    v25 = swift_slowAlloc();
    v41 = a6;
    v26 = v25;
    v48 = v25;
    *v24 = 136315138;
    v27 = sub_100398178();
    v29 = v28;
    sub_1002518F0(v19, type metadata accessor for AppSpecifier);
    v30 = sub_100005700(v27, v29, &v48);

    *(v24 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v22, v21, "Calling didOpen for %s", v24, 0xCu);
    sub_100003894(v26);
    a6 = v41;

    a7 = v42;

    v31 = a1[1];
    if (!v31)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_1002518F0(v19, type metadata accessor for AppSpecifier);
    v31 = a1[1];
    if (!v31)
    {
      goto LABEL_7;
    }
  }

  if (*(a7 + 112))
  {
    sub_1002419C0(*a1, v31);
  }

LABEL_7:
  v32 = sub_1001E27A8(&qword_1004D73E8);
  v33 = v32[12];
  v34 = &v16[v32[16]];
  v35 = &v16[v32[20]];
  sub_100251888(a1, v16, type metadata accessor for AppSpecifier);
  sub_100003554(v49, &v16[v33]);
  v36 = v46;
  v37 = v47;
  *v34 = v45;
  *(v34 + 1) = v37;
  *v35 = v36;
  *(v35 + 1) = a6;
  v38 = v44;
  swift_storeEnumTagMultiPayload();
  sub_100251888(v16, v13, type metadata accessor for AttributionCoordinator.Operation);
  (*(v43 + 56))(v13, 0, 1, v38);

  sub_100257B28(v13);
  sub_1001ED244(v13, &unk_1004D68E0);
  sub_1002518F0(v16, type metadata accessor for AttributionCoordinator.Operation);
  return sub_100003894(v49);
}

uint64_t sub_100251080(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v29 = a1;
  v7 = type metadata accessor for OnDeviceAttributionTelemetry(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100251888(a3, v9, type metadata accessor for OnDeviceAttributionTelemetry);
  v10 = 0;
  v11 = a2 >> 60;
  if (a2 >> 60 != 15)
  {
    v30 = v29;
    v31 = a2;
    sub_1001E27A8(&qword_1004D73F0);
    sub_1002517D0();
    v10 = sub_1003995F8();
  }

  v12 = sub_1003993F8();
  sub_100206B54();
  v13 = sub_1003995A8();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v28 = a2;
    *v14 = 134217984;
    *(v14 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v13, v12, "Setting V2 token key %lx", v14, 0xCu);
    a2 = v28;
  }

  v15 = v29;
  v16 = a2;
  if (v11 >= 0xF)
  {
    sub_1003993F8();
    v17 = sub_1003995A8();
    sub_100398B98();

    v15 = sub_100397A58();
    v16 = v18;
  }

  v19 = a4[13];
  sub_100245FB4(v29, a2);
  os_unfair_lock_lock(v19 + 4);
  v20 = *sub_1000035B8(a4 + 3, a4[6]);
  swift_beginAccess();
  v21 = v20[28];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[28] = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_100281120(0, *(v21 + 2) + 1, 1, v21);
    v20[28] = v21;
  }

  v24 = *(v21 + 2);
  v23 = *(v21 + 3);
  if (v24 >= v23 >> 1)
  {
    v21 = sub_100281120((v23 > 1), v24 + 1, 1, v21);
  }

  *(v21 + 2) = v24 + 1;
  v25 = &v21[16 * v24];
  *(v25 + 4) = v15;
  *(v25 + 5) = v16;
  v20[28] = v21;
  swift_endAccess();
  sub_1001EF9F4(v15, v16);
  sub_1002513CC(v9, v20);
  os_unfair_lock_unlock(v19 + 4);
  sub_1001EFA90(v15, v16);
  return sub_1002518F0(v9, type metadata accessor for OnDeviceAttributionTelemetry);
}

uint64_t sub_1002513CC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for TransmittedAttribution();
  __chkstk_darwin(v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D70B8);
  __chkstk_darwin(v7 - 8);
  v9 = v23 - v8;
  v10 = type metadata accessor for PendingWinner(0);
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[3] = type metadata accessor for OnDeviceAttributionTelemetry(0);
  v24[4] = &off_10047C0A0;
  v14 = sub_1001E6B7C(v24);
  sub_100251888(a1, v14, type metadata accessor for OnDeviceAttributionTelemetry);
  swift_beginAccess();
  v15 = a2[28];
  if (v15[2])
  {
    v16 = OBJC_IVAR____TtC11Attribution20AttributionProcessor_pendingWinner;
    swift_beginAccess();
    sub_10000ADB4(a2 + v16, v9, &qword_1004D70B8);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1001ED244(v9, &qword_1004D70B8);
    }

    else
    {
      sub_100251824(v9, v13);
      swift_beginAccess();
      v17 = v15[4];
      v18 = v15[5];
      sub_1001EF9F4(v17, v18);
      sub_100258A18(0, 1);
      swift_endAccess();
      v19 = v13[v10[5]];
      v20 = v13[v10[6]];
      v23[0] = *&v13[v10[7]];
      sub_1000035B8(a2 + 23, a2[26]);
      sub_100251888(v13, v6, type metadata accessor for AttributionCandidate);
      v21 = &v6[v4[5]];
      *v21 = v17;
      v21[1] = v18;
      v6[v4[6]] = v19;
      v6[v4[7]] = v20;
      sub_1001EF9F4(v17, v18);
      sub_100255A34(v6, v24);
      sub_1002518F0(v6, type metadata accessor for TransmittedAttribution);
      (v23[0])(0);
      sub_1001EFA90(v17, v18);
      sub_1002518F0(v13, type metadata accessor for PendingWinner);
    }
  }

  return sub_100003894(v24);
}

unint64_t sub_100251778()
{
  result = qword_1004D70D0;
  if (!qword_1004D70D0)
  {
    sub_100397B38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D70D0);
  }

  return result;
}

unint64_t sub_1002517D0()
{
  result = qword_1004D73F8;
  if (!qword_1004D73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D73F8);
  }

  return result;
}

uint64_t sub_100251824(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PendingWinner(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100251888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002518F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_100251960(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = *(v4 + 24);
  v9 = *(v4 + 16);

  sub_1003990F8();
  sub_100399058();
  os_unfair_lock_lock(v8 + 4);
  v10 = sub_100398F28();
  v11 = [v9 objectForKey:v10];

  if (v11)
  {
  }

  else
  {
    sub_1003983A8();
    v12 = sub_100398378();
    v11 = sub_100251BCC(a1, a2, a3, a4, v12 & 1);

    v13 = sub_100398F28();

    [v9 setObject:v11 forKey:v13];
  }

  os_unfair_lock_unlock(v8 + 4);

  return v11;
}

void *sub_100251AF4(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() mapTableWithKeyOptions:0 valueOptions:5];
  sub_1001E27A8(&qword_1004D5AE8);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v2[2] = v5;
  v2[3] = v6;
  type metadata accessor for AttributionAppOpenDelayTracker();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_10025EDC8(_swiftEmptyArrayStorage);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v7 + 24) = v8;
  v2[5] = a2;
  v2[6] = v7;
  v2[4] = a1;
  return v2;
}

uint64_t sub_100251BCC(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v130 = a3;
  LODWORD(v127) = a5;
  v134 = a4;
  v125 = a1;
  v126 = a2;
  v120 = sub_100398DB8();
  v117 = *(v120 - 8);
  __chkstk_darwin(v120);
  v116 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100398BD8();
  __chkstk_darwin(v8 - 8);
  v123 = type metadata accessor for AttributionInternalOverride();
  v124 = swift_allocObject();
  sub_100398BC8();
  sub_100397DF8();
  swift_allocObject();
  v132 = sub_100397DE8();
  v121 = [objc_allocWithZone(APSystemClock) init];
  v9 = type metadata accessor for OnDeviceAttributionConfigSystemDataSource();
  v10 = swift_allocObject();
  v11 = type metadata accessor for DefaultOnDeviceAttributionConfigurationStore();
  v12 = swift_allocObject();
  sub_100399368();
  v12[2] = v13;
  sub_100399368();
  v12[3] = v14;
  v12[4] = sub_1002142A8(_swiftEmptyArrayStorage);
  sub_1001E27A8(&qword_1004D41E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003EB210;
  *(v15 + 32) = xmmword_1003ED150;
  v12[5] = v15;
  v148[3] = v9;
  v149 = &off_10047A558;
  v148[0] = v10;
  v154 = v11;
  v155 = sub_10025344C(&qword_1004D7510, type metadata accessor for DefaultOnDeviceAttributionConfigurationStore);
  *&v153 = v12;
  v16 = type metadata accessor for OnDeviceAttributionExternalStore();
  v129 = v16;
  v17 = swift_allocObject();
  v18 = sub_1001F54B4(v148, v9);
  __chkstk_darwin(v18);
  v20 = (&v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v17[5] = v9;
  v17[6] = &off_10047A558;
  v17[2] = v22;
  sub_100004A68(&v153, (v17 + 7));
  sub_100003894(v148);
  v23 = *(v6 + 32);
  sub_100004218(0, &qword_1004D5D30);
  v24 = v23;
  sub_1003995A8();
  sub_100397D38();
  swift_allocObject();
  v25 = v24;
  v26 = sub_100397D28();
  v149 = v16;
  v128 = sub_10025344C(&qword_1004D7518, type metadata accessor for OnDeviceAttributionExternalStore);
  v148[0] = v26;
  v148[1] = v17;
  v150 = v128;
  v151 = v130;
  v152 = v134;
  v27 = type metadata accessor for DatabaseTokenStore();
  v28 = swift_allocObject();
  v133 = v26;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  sub_1003995A8();
  swift_allocObject();
  *(v28 + 16) = sub_100397D28();
  v29 = *(v131 + 5);
  v154 = v27;
  v155 = &off_10047C0B8;
  *&v153 = v28;
  v30 = type metadata accessor for AttributionTokenProvider();
  v31 = swift_allocObject();
  v32 = sub_1001F54B4(&v153, v27);
  __chkstk_darwin(v32);
  v34 = (&v111 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34);
  v36 = *v34;
  *(v31 + 40) = v27;
  *(v31 + 48) = &off_10047C0B8;
  *(v31 + 16) = v36;
  *(v31 + 56) = v29;
  *(v31 + 64) = 1;
  v122 = v28;

  swift_unknownObjectRetain();
  sub_100003894(&v153);
  v154 = v30;
  v155 = &protocol witness table for AttributionTokenProvider;
  *&v153 = v31;
  v146 = v129;
  v147 = v128;
  *&v145 = v17;
  v129 = type metadata accessor for ConfigurableExpiringAttributionTokenGenerator();
  v37 = swift_allocObject();
  v38 = v121;
  *(v37 + 16) = v121;
  sub_100004A68(&v153, v37 + 24);
  v128 = v37;
  sub_100004A68(&v145, v37 + 64);
  v39 = objc_opt_self();
  v118 = v17;

  v119 = v38;
  v121 = v31;

  v40 = [objc_msgSend(v39 "privateUserAccount")];
  swift_unknownObjectRelease();
  if (v40)
  {
    v41 = sub_100398F58();
    v43 = v42;
  }

  else
  {
    v43 = 0xE400000000000000;
    v41 = 1162760014;
  }

  sub_100004218(0, &qword_1004D40C0);
  v45 = v116;
  v44 = v117;
  v46 = v120;
  (*(v117 + 104))(v116, enum case for DispatchQoS.QoSClass.userInitiated(_:), v120);
  v47 = sub_100399498();
  (*(v44 + 8))(v45, v46);
  v48 = type metadata accessor for AttributionPayloadBuilder();
  v49 = swift_allocObject();
  *(v49 + 16) = _swiftEmptyArrayStorage;
  *(v49 + 24) = _swiftEmptyArrayStorage;
  v50 = [objc_allocWithZone(APUnfairLock) initWithOptions:1];
  *(v49 + 32) = v47;
  *(v49 + 40) = v41;
  *(v49 + 48) = v43;
  *(v49 + 56) = v50;
  *(v49 + 64) = v127 & 1;
  v51 = objc_allocWithZone(type metadata accessor for ODAttributionAnalytics());

  v52 = [v51 init];
  v154 = v48;
  v155 = &off_10047C1C0;
  v120 = v49;
  *&v153 = v49;
  v127 = type metadata accessor for AttributionNetworkTransmitter();
  v53 = swift_allocObject();
  v54 = sub_1001F54B4(&v153, v48);
  __chkstk_darwin(v54);
  v56 = (&v111 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v57 + 16))(v56);
  v58 = *v56;
  v53[5] = v48;
  v53[6] = &off_10047C1C0;
  v53[2] = v58;
  v53[7] = v52;
  sub_100003894(&v153);
  v59 = sub_10023DE14();
  if (v59)
  {
    v60 = v59;
    v61 = v118;
  }

  else
  {
    v61 = v118;
    sub_1000035B8(v118 + 7, v118[10]);
    v60 = sub_1003984C8();
  }

  type metadata accessor for DatabaseActionStoreDataProvider();
  v62 = swift_allocObject();
  v63 = v134;
  v64 = v133;
  v65 = v130;
  v62[2] = v133;
  v62[3] = v65;
  v62[4] = v63;
  v62[5] = v60;
  sub_1003983A8();

  sub_100398358();
  sub_1003985B8();
  swift_allocObject();

  v66 = sub_1003985A8();

  v118 = v62;

  v67 = sub_100252F98(v66, v62, v61, v65, v63);
  v117 = v67;
  v68 = type metadata accessor for JetEngineAttributor();
  v154 = v68;
  v155 = &off_10047BEE0;
  *&v153 = v67;
  v146 = &type metadata for AdActionStoreDatabase;
  v147 = &off_10047BB80;
  *&v145 = swift_allocObject();
  sub_100253494(v148, v145 + 16);
  v142 = &type metadata for DatabaseAttributionStore;
  v143 = &off_10047A9F0;
  v141[0] = v64;
  v141[1] = v65;
  v141[2] = v63;
  v139 = v129;
  v140 = &off_10047AD90;
  v138[0] = v128;
  v136 = v127;
  v137 = &off_10047B0C0;
  v135[0] = v53;
  v69 = type metadata accessor for AttributionProcessor(0);
  v70 = swift_allocObject();
  v71 = sub_1001F54B4(&v153, v68);
  v130 = &v111;
  __chkstk_darwin(v71);
  v73 = (&v111 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v74 + 16))(v73);
  v75 = sub_1001F54B4(&v145, v146);
  v116 = &v111;
  __chkstk_darwin(v75);
  v77 = (&v111 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77);
  v79 = sub_1001F54B4(v141, v142);
  v115 = &v111;
  __chkstk_darwin(v79);
  v81 = &v111 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v82 + 16))(v81);
  v83 = sub_1001F54B4(v138, v139);
  v114 = &v111;
  __chkstk_darwin(v83);
  v113 = v53;
  v85 = (&v111 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v86 + 16))(v85);
  v87 = sub_1001F54B4(v135, v136);
  v112 = &v111;
  __chkstk_darwin(v87);
  v89 = (&v111 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v90 + 16))(v89);
  v91 = *v73;
  v111 = *v81;
  v92 = *(v81 + 2);
  v93 = *v85;
  v94 = *v89;
  *(v70 + 48) = v68;
  *(v70 + 56) = &off_10047BEE0;
  *(v70 + 24) = v91;
  *(v70 + 88) = &type metadata for AdActionStoreDatabase;
  *(v70 + 96) = &off_10047BB80;
  v95 = swift_allocObject();
  *(v70 + 64) = v95;
  v96 = v77[1];
  v95[1] = *v77;
  v95[2] = v96;
  v97 = v77[3];
  v95[3] = v77[2];
  v95[4] = v97;
  *(v70 + 104) = v111;
  *(v70 + 120) = v92;
  *(v70 + 128) = &type metadata for DatabaseAttributionStore;
  *(v70 + 168) = v129;
  *(v70 + 176) = &off_10047AD90;
  *(v70 + 136) = &off_10047A9F0;
  *(v70 + 144) = v93;
  *(v70 + 208) = v127;
  *(v70 + 216) = &off_10047B0C0;
  *(v70 + 184) = v94;
  *(v70 + 224) = _swiftEmptyArrayStorage;
  v98 = OBJC_IVAR____TtC11Attribution20AttributionProcessor_pendingWinner;
  v99 = type metadata accessor for PendingWinner(0);
  (*(*(v99 - 8) + 56))(v70 + v98, 1, 1, v99);
  v100 = v119;
  *(v70 + 16) = v119;
  v101 = v70 + OBJC_IVAR____TtC11Attribution20AttributionProcessor_internalOverride;
  v102 = v123;
  *v101 = v124;
  *(v101 + 8) = v144;
  *(v101 + 24) = v102;
  *(v101 + 32) = &off_10047AD70;

  v129 = v100;

  sub_100003894(v135);
  sub_100003894(v138);
  sub_100003894(v141);
  sub_100003894(&v145);
  sub_100003894(&v153);
  v103 = *(v131 + 6);
  v154 = v69;
  v155 = &off_10047AA30;
  *&v153 = v70;
  type metadata accessor for AttributionCoordinator();
  v104 = swift_allocObject();
  v105 = sub_1001F54B4(&v153, v69);
  v131 = &v111;
  __chkstk_darwin(v105);
  v107 = (&v111 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v108 + 16))(v107);
  v109 = sub_100252ECC(*v107, v125, v126, v103, v104);

  sub_100003894(&v153);
  sub_1002534F0(v148);
  return v109;
}

uint64_t sub_100252C78()
{
  v1 = *(v0 + 16);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id OnDeviceAttributionObjCBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OnDeviceAttributionObjCBridge();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100252ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = type metadata accessor for AttributionProcessor(0);
  v15 = &off_10047AA30;
  *&v13 = a1;
  *(a5 + 16) = 0;
  *(a5 + 80) = 0;
  sub_1001E27A8(&qword_1004D5AE8);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(a5 + 88) = v10;
  *(a5 + 96) = _swiftEmptyArrayStorage;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(a5 + 104) = v11;
  sub_100004A68(&v13, a5 + 24);
  *(a5 + 64) = a2;
  *(a5 + 72) = a3;
  *(a5 + 112) = a4;
  return a5;
}

uint64_t sub_100252F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v8 = sub_1001E27A8(&qword_1004D8640);
  __chkstk_darwin(v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_100398728();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = sub_1003985B8();
  v41[4] = &protocol witness table for JetServiceRequester;
  v41[0] = a1;
  v15 = type metadata accessor for DatabaseActionStoreDataProvider();
  v40[3] = v15;
  v40[4] = &off_10047C340;
  v40[0] = a2;
  type metadata accessor for JetEngineAttributor();
  v16 = swift_allocObject();
  v17 = sub_1001F54B4(v40, v15);
  __chkstk_darwin(v17);
  v19 = (&v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v39[3] = v15;
  v39[4] = &off_10047C340;
  v39[0] = v21;
  sub_100003554(v41, v16 + 16);
  sub_100003554(v39, v16 + 56);
  sub_10023DC08();
  if (v22)
  {
    sub_1000035B8((a3 + 56), *(a3 + 80));
    sub_1003984B8();
    sub_10023DC14();
    if ((v23 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_10023DC14();
    if ((v25 & 1) == 0)
    {
LABEL_3:
      sub_10023DD0C();
      if ((v24 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      sub_1000035B8((a3 + 56), *(a3 + 80));
      sub_1003984A8();
      goto LABEL_8;
    }
  }

  sub_1000035B8((a3 + 56), *(a3 + 80));
  sub_100398498();
  sub_10023DD0C();
  if (v26)
  {
    goto LABEL_7;
  }

LABEL_8:
  v27 = objc_opt_self();
  sub_100004218(0, &qword_1004D6928);
  v28 = [v27 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (v29)
  {
    v30 = [v29 allProperties];
    swift_unknownObjectRelease();
    if (v30)
    {
      v31 = sub_100398E68();

      v32 = sub_10023D684(v31);

      if (v32)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  sub_1000035B8((a3 + 56), *(a3 + 80));
  sub_100398488();

LABEL_14:
  sub_100398EA8();

  v33 = sub_100398B58();
  result = (*(*(v33 - 8) + 48))(v10, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_100398718();
    sub_100003894(v41);
    sub_100003894(v39);
    (*(v12 + 32))(v16 + OBJC_IVAR____TtC11Attribution19JetEngineAttributor_config, v14, v11);
    v35 = (v16 + OBJC_IVAR____TtC11Attribution19JetEngineAttributor_accountToken);
    v36 = v38;
    *v35 = v37;
    v35[1] = v36;
    sub_100003894(v40);
    return v16;
  }

  return result;
}

uint64_t sub_10025344C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100253554(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_1001E27A8(&qword_1004D7558);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_1001E27A8(&qword_1004D7560);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_1001E27A8(&qword_1004D7568);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_1000035B8(a1, a1[3]);
  sub_100253FB4();
  sub_100399BF8();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_100254008();
    sub_100399908();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_10025405C();
    sub_100399908();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_100253810(uint64_t a1)
{
  v2 = sub_10025405C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10025384C(uint64_t a1)
{
  v2 = sub_10025405C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100253888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65726975716361 && a2 == 0xE700000000000000;
  if (v6 || (sub_1003999B8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D75736E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1003999B8();

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

uint64_t sub_100253964(uint64_t a1)
{
  v2 = sub_100253FB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002539A0(uint64_t a1)
{
  v2 = sub_100253FB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002539DC(uint64_t a1)
{
  v2 = sub_100254008();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100253A18(uint64_t a1)
{
  v2 = sub_100254008();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100253A54@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100253AF8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_100253AA4()
{
  result = qword_1004D7520;
  if (!qword_1004D7520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7520);
  }

  return result;
}

uint64_t sub_100253AF8(void *a1)
{
  v2 = sub_1001E27A8(&qword_1004D7528);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_1001E27A8(&qword_1004D7530);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_1001E27A8(&qword_1004D7538);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_1000035B8(a1, a1[3]);
  sub_100253FB4();
  v11 = v26;
  sub_100399BC8();
  if (v11)
  {
    return sub_100003894(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_1003998F8();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_100262E64();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_100399738();
    swift_allocError();
    v19 = v18;
    sub_1001E27A8(&qword_1004D63C0);
    *v19 = &type metadata for AssetEngagement;
    sub_100399868();
    sub_100399728();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_100003894(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_100254008();
    sub_100399858();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_10025405C();
    sub_100399858();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_100003894(v26);
  return v31 & 1;
}

unint64_t sub_100253FB4()
{
  result = qword_1004D7540;
  if (!qword_1004D7540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7540);
  }

  return result;
}

unint64_t sub_100254008()
{
  result = qword_1004D7548;
  if (!qword_1004D7548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7548);
  }

  return result;
}

unint64_t sub_10025405C()
{
  result = qword_1004D7550;
  if (!qword_1004D7550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7550);
  }

  return result;
}

unint64_t sub_1002540E4()
{
  result = qword_1004D7570;
  if (!qword_1004D7570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7570);
  }

  return result;
}

unint64_t sub_10025413C()
{
  result = qword_1004D7578;
  if (!qword_1004D7578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7578);
  }

  return result;
}

unint64_t sub_100254194()
{
  result = qword_1004D7580;
  if (!qword_1004D7580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7580);
  }

  return result;
}

unint64_t sub_1002541EC()
{
  result = qword_1004D7588;
  if (!qword_1004D7588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7588);
  }

  return result;
}

unint64_t sub_100254244()
{
  result = qword_1004D7590;
  if (!qword_1004D7590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7590);
  }

  return result;
}

unint64_t sub_10025429C()
{
  result = qword_1004D7598;
  if (!qword_1004D7598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7598);
  }

  return result;
}

unint64_t sub_1002542F4()
{
  result = qword_1004D75A0[0];
  if (!qword_1004D75A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1004D75A0);
  }

  return result;
}

uint64_t sub_100254360()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1002543A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1002543F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_100254478()
{
  v0 = objc_opt_self();
  sub_100004218(0, &qword_1004D6928);
  v1 = [v0 configurationForClass:swift_getObjCClassFromMetadata()];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2 || (v3 = v2, (v4 = [v2 uploadBackoffSchedule]) == 0))
  {
    swift_unknownObjectRelease();
    return &off_100479A60;
  }

  v5 = v4;
  sub_100004218(0, &qword_1004D43F0);
  v6 = sub_100399198();

  v7 = [v3 uploadHoldTransactionLimit];
  if (!v7)
  {
    swift_unknownObjectRelease();

    return &off_100479A60;
  }

  v8 = v7;
  if (!(v6 >> 62))
  {
    v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_19:

    v12 = _swiftEmptyArrayStorage;
LABEL_20:
    [v8 doubleValue];

    swift_unknownObjectRelease();
    return v12;
  }

  v9 = sub_1003997F8();
  if (!v9)
  {
    goto LABEL_19;
  }

LABEL_6:
  result = sub_1002373D4(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = _swiftEmptyArrayStorage;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v13 = sub_100399708();
      }

      else
      {
        v13 = *(v6 + 8 * v11 + 32);
      }

      v14 = v13;
      [v13 doubleValue];
      v16 = v15;

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_1002373D4((v17 > 1), v18 + 1, 1);
      }

      ++v11;
      _swiftEmptyArrayStorage[2] = v18 + 1;
      _swiftEmptyArrayStorage[v18 + 4] = v16;
    }

    while (v9 != v11);

    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void sub_1002546F8(void *a1)
{
  v2 = sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  log = sub_1003995A8();
  if (os_log_type_enabled(log, v2))
  {
    v3 = a1;
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v13 = v5;
    *v4 = 134349314;
    *(v4 + 4) = [v3 responseStatusCode];

    *(v4 + 12) = 2082;
    v6 = [v3 responseError];
    if (v6)
    {
      v7 = v6;
      swift_getErrorValue();
      v8 = sub_100399AC8();
      v10 = v9;
    }

    else
    {
      v10 = 0xE300000000000000;
      v8 = 7104878;
    }

    v11 = sub_100005700(v8, v10, &v13);

    *(v4 + 14) = v11;
    _os_log_impl(&_mh_execute_header, log, v2, "Received response with status code: %{public}ld, error: %{public}s", v4, 0x16u);
    sub_100003894(v5);
  }

  else
  {
  }
}

uint64_t sub_1002548E8(void *a1, uint64_t a2, unint64_t a3, void (*a4)(char *))
{
  v8 = sub_100397748();
  v47 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1003979F8();
  v11 = __chkstk_darwin(v48);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v44 - v14;
  sub_1002546F8(a1);
  v16 = sub_100278C8C(a1);
  if (v16 != 2)
  {
    v29 = v16;
    v30 = sub_1003993F8();
    sub_100004218(0, &qword_1004D5D30);
    v31 = sub_1003995A8();
    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v49 = v33;
      *v32 = 136315138;
      if (v29)
      {
        v34 = 0x73736563637573;
      }

      else
      {
        v34 = 0x6572756C696166;
      }

      v35 = sub_100005700(v34, 0xE700000000000000, &v49);

      *(v32 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v31, v30, "OnDevice attribution upload was completed: %s", v32, 0xCu);
      sub_100003894(v33);
    }

    *v13 = v29 & 1;
    swift_storeEnumTagMultiPayload();
    a4(v13);
    goto LABEL_13;
  }

  v46 = a4;
  v17 = sub_100254478();
  v45 = sub_10024672C(a2, a3, v17, v18);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if (!v22)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v36 = sub_1003995A8();
    sub_100398B98();

    *v13 = 0;
    swift_storeEnumTagMultiPayload();
    v28 = v13;
    goto LABEL_12;
  }

  if (v22 == 1)
  {
    sub_1003993E8();
    sub_100004218(0, &qword_1004D5D30);
    v25 = sub_1003995A8();
    sub_100398B98();

    v26 = sub_100398F28();
    v27 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(11);
    *v13 = 0;
    swift_storeEnumTagMultiPayload();
    v28 = v13;
LABEL_12:
    v46(v28);
LABEL_13:
    v15 = v13;
    return sub_100255860(v15);
  }

  v44 = v20;

  v38 = sub_1003993F8();
  sub_100004218(0, &qword_1004D5D30);
  v39 = sub_1003995A8();
  if (os_log_type_enabled(v39, v38))
  {
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v39, v38, "Scheduling upload retry with delay %f.", v40, 0xCu);
  }

  v41 = *(sub_1001E27A8(&qword_1004D6CB8) + 64);
  *v15 = v44;
  *(v15 + 1) = v22;
  sub_100397738();
  sub_1003976B8();
  (*(v47 + 8))(v10, v8);
  v42 = sub_100397C98();
  if (v24)
  {
    v49 = _swiftEmptyArrayStorage;
    sub_1002558BC(&qword_1004D6CC0, &type metadata accessor for WorkOrderFlags);
    sub_1001E27A8(&qword_1004D6CC8);
    sub_100243350();
    sub_100399658();
    v43 = 0;
  }

  else
  {
    v43 = 1;
  }

  (*(*(v42 - 8) + 56))(&v15[v41], v43, 1, v42);
  swift_storeEnumTagMultiPayload();
  v46(v15);
  sub_100243284(v45, v44, v22);
  return sub_100255860(v15);
}

void sub_100254FDC(void *a1)
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

void sub_100255240(void *a1)
{
  v2 = sub_100398FA8();
  __chkstk_darwin(v2 - 8);
  v4 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1003974E8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1003993D8();
  v10 = sub_100004218(0, &qword_1004D5D30);
  v49 = "$_supportedInstallSignals";
  v50 = "";
  v11 = sub_1003995A8();
  if (os_log_type_enabled(v11, v9))
  {
    v12 = swift_slowAlloc();
    v47[1] = v4;
    v48 = v10;
    v13 = a1;
    v14 = v12;
    v15 = swift_slowAlloc();
    v51 = v15;
    *v14 = 136446210;
    v16 = [v13 URL];
    sub_100397478();

    sub_1002558BC(&qword_1004D6A30, &type metadata accessor for URL);
    v17 = sub_100399998();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = sub_100005700(v17, v19, &v51);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v9, "Sending request to: %{public}s", v14, 0xCu);
    sub_100003894(v15);

    a1 = v13;
  }

  v21 = [a1 HTTPBody];
  if (v21)
  {
    v22 = v21;
    v23 = sub_100397558();
    v25 = v24;

    v26 = sub_1003993D8();
    v27 = sub_1003995A8();
    if (os_log_type_enabled(v27, v26))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v51 = v29;
      *v28 = 136446210;
      sub_100398F98();
      v30 = sub_100398F78();
      if (!v31)
      {
        v30 = 7104878;
      }

      v48 = v25;
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
      }

      v33 = a1;
      v34 = sub_100005700(v30, v32, &v51);

      *(v28 + 4) = v34;
      a1 = v33;
      _os_log_impl(&_mh_execute_header, v27, v26, "Request body: %{public}s", v28, 0xCu);
      sub_100003894(v29);

      sub_1001EFA90(v23, v48);
    }

    else
    {

      sub_1001EFA90(v23, v25);
    }
  }

  else
  {
    sub_1003993D8();
    v35 = sub_1003995A8();
    sub_100398B98();
  }

  v36 = [a1 allHTTPHeaderFields];
  if (v36)
  {
    v37 = v36;
    sub_100398E68();

    v38 = sub_1003993D8();
    v39 = sub_1003995A8();
    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v51 = v41;
      *v40 = 136446210;
      v42 = sub_100398E78();
      v44 = v43;

      v45 = sub_100005700(v42, v44, &v51);

      *(v40 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v39, v38, "Request headers: %{public}s", v40, 0xCu);
      sub_100003894(v41);
    }

    else
    {
    }
  }

  else
  {
    sub_1003993D8();
    v46 = sub_1003995A8();
    sub_100398B98();
  }
}

uint64_t sub_100255860(uint64_t a1)
{
  v2 = sub_1003979F8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002558BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100255904()
{
  v0 = sub_1001E27A8(&qword_1004D4AB8);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1003974E8();
  sub_1001EB3CC(v3, qword_1004DE550);
  v4 = sub_10000351C(v3, qword_1004DE550);
  sub_1003974B8();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_100255A34(uint64_t a1, void *a2)
{
  v106 = a2;
  v103 = sub_100398DA8();
  v102 = *(v103 - 8);
  __chkstk_darwin(v103);
  v101 = &v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_100399468();
  v96 = *(v97 - 8);
  __chkstk_darwin(v97);
  v95 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_100399438();
  __chkstk_darwin(v93);
  v94 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_100398DD8();
  v99 = *(v100 - 8);
  __chkstk_darwin(v100);
  v98 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for AttributionSignerWorkerTask(0);
  v90 = *(v89 - 8);
  v7 = __chkstk_darwin(v89);
  v92 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v8;
  __chkstk_darwin(v7);
  v112 = &v86 - v9;
  v10 = type metadata accessor for AttributionPayloadDTO(0);
  __chkstk_darwin(v10 - 8);
  v109 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1001E27A8(&unk_1004D76E8);
  v12 = __chkstk_darwin(v104);
  v105 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = (&v86 - v14);
  v16 = type metadata accessor for SignpostInterval();
  __chkstk_darwin(v16 - 8);
  v115 = &v86 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for AttributionSignposts(0);
  __chkstk_darwin(v88);
  v19 = &v86 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_1003974E8();
  v20 = *(v120 - 8);
  v21 = __chkstk_darwin(v120);
  v118 = &v86 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v113 = &v86 - v23;
  v24 = type metadata accessor for TransmittedAttribution();
  __chkstk_darwin(v24);
  v26 = &v86 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1003993D8();
  v28 = sub_100004218(0, &qword_1004D5D30);
  v116 = "";
  v117 = v28;
  v29 = sub_1003995A8();
  sub_1002573BC(a1, v26, type metadata accessor for TransmittedAttribution);
  LODWORD(v111) = v27;
  v30 = os_log_type_enabled(v29, v27);
  v108 = a1;
  v87 = v24;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v110 = v15;
    v32 = v31;
    v33 = swift_slowAlloc();
    v114 = v19;
    v34 = v33;
    aBlock = v33;
    *v32 = 136315138;
    v35 = sub_100397548(0);
    v37 = v36;
    sub_1002574F8(v26, type metadata accessor for TransmittedAttribution);
    v38 = v35;
    v39 = v120;
    v40 = v20;
    v41 = sub_100005700(v38, v37, &aBlock);

    *(v32 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v29, v111, "Starting attribution transmission for key: %s.", v32, 0xCu);
    sub_100003894(v34);
    v19 = v114;

    v15 = v110;
  }

  else
  {

    sub_1002574F8(v26, type metadata accessor for TransmittedAttribution);
    v40 = v20;
    v39 = v120;
  }

  v42 = v118;
  v43 = v119;
  sub_100257020(v118);
  if (v43)
  {
    v44 = sub_1003993E8();
    v45 = sub_1003995A8();
    if (os_log_type_enabled(v45, v44))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock = v47;
      *v46 = 136446210;
      swift_getErrorValue();
      v48 = sub_100399AC8();
      v50 = sub_100005700(v48, v49, &aBlock);

      *(v46 + 4) = v50;
      _os_log_impl(&_mh_execute_header, v45, v44, "Can't construct server URL: %{public}s. Attribution will not be sent.", v46, 0xCu);
      sub_100003894(v47);
    }

    aBlock = 0;
    v123 = 0xE000000000000000;
    sub_1003996F8(31);

    aBlock = 0xD00000000000001CLL;
    v123 = 0x800000010042F4C0;
    swift_getErrorValue();
    v128._countAndFlagsBits = sub_100399AC8();
    sub_100399068(v128);

    v129._countAndFlagsBits = 46;
    v129._object = 0xE100000000000000;
    sub_100399068(v129);
    v51 = sub_100398F28();

    v52 = sub_100398F28();
    CreateDiagnosticReport();

    _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(4);
    sub_1002572F8();
    swift_allocError();
    *v53 = 1;
    swift_willThrow();
  }

  else
  {
    v111 = "$_supportedInstallSignals";
    v55 = v113;
    (*(v40 + 32))(v113, v42, v39);
    v56 = v106[3];
    v57 = v106[4];
    sub_1000035B8(v106, v56);
    (*(v57 + 8))(v56, v57);
    AttributionSignposts.buildPayload()(v115);
    sub_1000035B8((v107 + 16), *(v107 + 40));
    v58 = v108;
    sub_10027D888(v108, v55, v15);
    sub_10027C30C();
    v59 = v105;
    sub_10025734C(v15, v105);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v114 = v19;
    if (EnumCaseMultiPayload == 1)
    {
      v61 = sub_1003993E8();
      v62 = sub_1003995A8();
      if (os_log_type_enabled(v62, v61))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v119 = v40;
        v65 = v64;
        aBlock = v64;
        *v63 = 136446210;
        swift_getErrorValue();
        v66 = sub_100399AC8();
        v68 = v15;
        v69 = sub_100005700(v66, v67, &aBlock);

        *(v63 + 4) = v69;
        v15 = v68;
        _os_log_impl(&_mh_execute_header, v62, v61, "Failed to construct attribution payload: %{public}s. Attribution will not be sent.", v63, 0xCu);
        sub_100003894(v65);
        v40 = v119;

        v39 = v120;
      }

      aBlock = 0;
      v123 = 0xE000000000000000;
      sub_1003996F8(44);

      aBlock = 0xD000000000000029;
      v123 = 0x800000010042F4E0;
      swift_getErrorValue();
      v130._countAndFlagsBits = sub_100399AC8();
      sub_100399068(v130);

      v131._countAndFlagsBits = 46;
      v131._object = 0xE100000000000000;
      sub_100399068(v131);
      v70 = sub_100398F28();

      v71 = sub_100398F28();
      CreateDiagnosticReport();

      _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(6);
      sub_1002572F8();
      swift_allocError();
      *v72 = 2;
      swift_willThrow();

      sub_1001ED244(v15, &unk_1004D76E8);
      sub_1002574F8(v115, type metadata accessor for SignpostInterval);
      sub_1002574F8(v114, type metadata accessor for AttributionSignposts);
      return (*(v40 + 8))(v113, v39);
    }

    else
    {
      v110 = v15;
      v119 = v40;
      v73 = v109;
      sub_100257424(v59, v109, type metadata accessor for AttributionPayloadDTO);
      sub_100256C0C();
      v74 = v58;
      v75 = v112;
      sub_1002573BC(v73, v112, type metadata accessor for AttributionPayloadDTO);
      LODWORD(v74) = *(v74 + *(v87 + 24));
      v76 = sub_100398BB8();
      v77 = v89;
      *(v75 + *(v89 + 20)) = v76;
      *(v75 + *(v77 + 24)) = v74;
      if (v74 == 1)
      {
        sub_10027D334();
      }

      sub_100004218(0, &qword_1004D40C0);
      v78 = v98;
      sub_100398DC8();
      aBlock = _swiftEmptyArrayStorage;
      sub_1000042F0(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
      sub_1001E27A8(&qword_1004D40D0);
      sub_100004380(&qword_1004D40D8, &qword_1004D40D0);
      sub_100399658();
      (*(v96 + 104))(v95, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v97);
      v79 = sub_100399488();
      v80 = v92;
      sub_1002573BC(v112, v92, type metadata accessor for AttributionSignerWorkerTask);
      v81 = (*(v90 + 80) + 16) & ~*(v90 + 80);
      v82 = swift_allocObject();
      sub_100257424(v80, v82 + v81, type metadata accessor for AttributionSignerWorkerTask);
      v126 = sub_10025748C;
      v127 = v82;
      aBlock = _NSConcreteStackBlock;
      v123 = 1107296256;
      v124 = sub_1001F77E8;
      v125 = &unk_10047B0F8;
      v83 = _Block_copy(&aBlock);
      sub_100398DC8();
      v121 = _swiftEmptyArrayStorage;
      sub_1000042F0(&qword_1004D40A0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001E27A8(&unk_1004DC400);
      sub_100004380(&qword_1004D40B0, &unk_1004DC400);
      v84 = v101;
      v85 = v103;
      sub_100399658();
      sub_100399478();
      _Block_release(v83);

      (*(v102 + 8))(v84, v85);
      (*(v99 + 8))(v78, v100);
      sub_1002574F8(v112, type metadata accessor for AttributionSignerWorkerTask);
      sub_1002574F8(v109, type metadata accessor for AttributionPayloadDTO);
      sub_1001ED244(v110, &unk_1004D76E8);
      sub_1002574F8(v115, type metadata accessor for SignpostInterval);
      sub_1002574F8(v114, type metadata accessor for AttributionSignposts);
      (*(v119 + 8))(v113, v120);
    }
  }
}

void sub_100256C0C()
{
  v1 = v0;
  v2 = sub_100398FA8();
  __chkstk_darwin(v2 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AttributionPayloadDTO(0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v30 - v9;
  v11 = sub_1003993D8();
  sub_100004218(0, &qword_1004D5D30);
  v30[2] = "$_supportedInstallSignals";
  v12 = sub_1003995A8();
  sub_1002573BC(v0, v10, type metadata accessor for AttributionPayloadDTO);
  if (os_log_type_enabled(v12, v11))
  {
    v13 = swift_slowAlloc();
    v30[1] = v4;
    v14 = v13;
    v15 = swift_slowAlloc();
    v30[0] = "";
    v16 = v15;
    v31 = v15;
    *v14 = 136446210;
    v17 = sub_100398E78();
    v19 = v18;
    sub_1002574F8(v10, type metadata accessor for AttributionPayloadDTO);
    v20 = sub_100005700(v17, v19, &v31);
    v1 = v0;

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v11, "Attribution headers: %{public}s", v14, 0xCu);
    sub_100003894(v16);
  }

  else
  {

    sub_1002574F8(v10, type metadata accessor for AttributionPayloadDTO);
  }

  v21 = sub_1003993D8();
  v22 = sub_1003995A8();
  sub_1002573BC(v1, v8, type metadata accessor for AttributionPayloadDTO);
  if (os_log_type_enabled(v22, v21))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v31 = v24;
    *v23 = 136446210;
    sub_100398F98();
    v25 = sub_100398F78();
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 7104878;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    sub_1002574F8(v8, type metadata accessor for AttributionPayloadDTO);
    v29 = sub_100005700(v27, v28, &v31);

    *(v23 + 4) = v29;
    _os_log_impl(&_mh_execute_header, v22, v21, "Attribution body: %{public}s", v23, 0xCu);
    sub_100003894(v24);
  }

  else
  {

    sub_1002574F8(v8, type metadata accessor for AttributionPayloadDTO);
  }
}

uint64_t sub_100257020@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1001E27A8(&qword_1004D4AB8);
  __chkstk_darwin(v2 - 8);
  v4 = v13 - v3;
  if ([objc_opt_self() isAppleInternalInstall])
  {
    v5 = [objc_allocWithZone(APSettingsStorageUserDefaults) initWithDefaultValues:0];
    v6 = sub_100398F28();
    v7 = [v5 valueForKey:v6];

    if (v7)
    {
      v13[3] = v7;
      sub_1001E27A8(&unk_1004D4400);
      if (swift_dynamicCast())
      {
        sub_1003974B8();

        v8 = sub_1003974E8();
        v9 = *(v8 - 8);
        if ((*(v9 + 48))(v4, 1, v8) != 1)
        {
          return (*(v9 + 32))(a1, v4, v8);
        }

        sub_1001ED244(v4, &qword_1004D4AB8);
      }
    }
  }

  if (qword_1004D6130 != -1)
  {
    swift_once();
  }

  v10 = sub_1003974E8();
  v11 = sub_10000351C(v10, qword_1004DE550);
  return (*(*(v10 - 8) + 16))(a1, v11, v10);
}

uint64_t sub_100257294()
{
  sub_100003894(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1002572F8()
{
  result = qword_1004D76F8;
  if (!qword_1004D76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D76F8);
  }

  return result;
}

uint64_t sub_10025734C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&unk_1004D76E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002573BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100257424(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025748C()
{
  type metadata accessor for AttributionSignerWorkerTask(0);
  type metadata accessor for AttributionSignerWorker(0);
  return sub_100398158();
}

uint64_t sub_1002574F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10025756C()
{
  result = qword_1004D7708;
  if (!qword_1004D7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7708);
  }

  return result;
}

uint64_t sub_1002575C0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_1002575DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100257600(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  if ((sub_100259AD0(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (v2 != v6 || v3 != v7) && (sub_1003999B8() & 1) == 0)
  {
    return 0;
  }

  if (v4 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_1003999B8();
}

id sub_1002576E0()
{
  v1 = v0;
  v2 = sub_100399468();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100399438();
  __chkstk_darwin(v6);
  v7 = sub_100398DD8();
  __chkstk_darwin(v7 - 8);
  v8 = *(v0 + 16);
  if (v8)
  {
    v9 = *(v0 + 16);
  }

  else
  {
    v10 = sub_1001E3174();
    v15[1] = "mpletionHandler ";
    v15[2] = v10;
    sub_100398DC8();
    v15[3] = _swiftEmptyArrayStorage;
    v15[0] = sub_100259188(&qword_1004D40C8, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1001E27A8(&qword_1004D40D0);
    sub_100004380(&qword_1004D40D8, &qword_1004D40D0);
    sub_100399658();
    (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v2);
    v11 = sub_100399488();
    v12 = *(v0 + 16);
    *(v1 + 16) = v11;
    v9 = v11;

    v8 = 0;
  }

  v13 = v8;
  return v9;
}

uint64_t sub_10025795C(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    sub_1001E27A8(&qword_1004D4818);
    a1 = swift_dynamicCast();
    if (a1)
    {
      sub_10027CA38(v12);
      v6 = sub_100398F28();

      sub_1001E27A8(&qword_1004D7920);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1003C9930;
      sub_1003996A8();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 1;
      sub_10025EFB4(inited);
      swift_setDeallocating();
      sub_1001ED244(inited + 32, &unk_1004D7E90);
      isa = sub_100398E48().super.isa;

      v9 = sub_100398F28();
      CreateDiagnosticReport();
    }
  }

  v10 = a2(a1, a2);
  return a4(v10);
}

void sub_100257B28(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100398DA8();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v39 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_100398DD8();
  v38 = *(v40 - 8);
  __chkstk_darwin(v40);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&unk_1004D68E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v36 - v8;
  v10 = type metadata accessor for AttributionCoordinator.Operation();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v14 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v36 - v19;
  __chkstk_darwin(v18);
  v22 = &v36 - v21;
  v43 = *(v2 + 88);
  os_unfair_lock_lock(v43 + 4);
  sub_1002586D8(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1001ED244(v9, &unk_1004D68E0);
    *(v2 + 80) = 0;
    swift_beginAccess();
    v23 = *(v2 + 96);
    if (*(v23 + 16))
    {
      swift_beginAccess();
      sub_100258748(v23 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v22);
      sub_100258A44(0, 1, sub_100280FB0, sub_1002587AC);
      swift_endAccess();
LABEL_11:
      *(v2 + 80) = 1;
      v28 = sub_1002576E0();
      v29 = swift_allocObject();
      swift_weakInit();
      sub_100258748(v22, v14);
      v30 = (*(v11 + 80) + 24) & ~*(v11 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = v29;
      sub_10025907C(v14, v31 + v30, type metadata accessor for AttributionCoordinator.Operation);
      aBlock[4] = sub_1002588F4;
      aBlock[5] = v31;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1001F77E8;
      aBlock[3] = &unk_10047B288;
      v32 = _Block_copy(aBlock);

      v33 = v37;
      sub_100398DC8();
      v44 = _swiftEmptyArrayStorage;
      sub_100259188(&qword_1004D40A0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1001E27A8(&unk_1004DC400);
      sub_100004380(&qword_1004D40B0, &unk_1004DC400);
      v34 = v39;
      v35 = v42;
      sub_100399658();
      sub_100399478();
      _Block_release(v32);

      (*(v41 + 8))(v34, v35);
      (*(v38 + 8))(v33, v40);
      sub_100259128(v22, type metadata accessor for AttributionCoordinator.Operation);
    }
  }

  else
  {
    sub_10025907C(v9, v20, type metadata accessor for AttributionCoordinator.Operation);
    if ((*(v2 + 80) & 1) == 0)
    {
      sub_10025907C(v20, v22, type metadata accessor for AttributionCoordinator.Operation);
      goto LABEL_11;
    }

    sub_100258748(v20, v17);
    swift_beginAccess();
    v24 = *(v2 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 96) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_100280FB0(0, v24[2] + 1, 1, v24);
      *(v2 + 96) = v24;
    }

    v27 = v24[2];
    v26 = v24[3];
    if (v27 >= v26 >> 1)
    {
      v24 = sub_100280FB0(v26 > 1, v27 + 1, 1, v24);
    }

    v24[2] = v27 + 1;
    sub_10025907C(v17, v24 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v27, type metadata accessor for AttributionCoordinator.Operation);
    *(v2 + 96) = v24;
    swift_endAccess();
    sub_100259128(v20, type metadata accessor for AttributionCoordinator.Operation);
  }

  os_unfair_lock_unlock(v43 + 4);
}

uint64_t sub_1002581EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_100258B1C(a2, v4, v5);
  }

  return result;
}

uint64_t sub_1002582BC()
{
  v0 = sub_1001E27A8(&unk_1004D68E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = type metadata accessor for AttributionCoordinator.Operation();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    sub_100257B28(v2);

    return sub_1001ED244(v2, &unk_1004D68E0);
  }

  return result;
}

uint64_t sub_1002583BC()
{
  sub_100003894(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AttributionCoordinator.Operation()
{
  result = qword_1004D78C8;
  if (!qword_1004D78C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100258494()
{
  sub_100258508(319);
  if (v0 <= 0x3F)
  {
    sub_100258634();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100258508(uint64_t a1)
{
  if (!qword_1004D78D8)
  {
    __chkstk_darwin(a1);
    type metadata accessor for AppSpecifier(255);
    sub_1001E27F0(&qword_1004D78E0);
    sub_1001E27F0(&qword_1004D78E8);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1004D78D8);
    }
  }
}

void sub_100258634()
{
  if (!qword_1004D78F0)
  {
    type metadata accessor for ProductionAppSpecifier(255);
    sub_1001E27F0(&qword_1004D78E0);
    sub_1001E27F0(&qword_1004D78E8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1004D78F0);
    }
  }
}

uint64_t sub_1002586D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&unk_1004D68E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100258748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AttributionCoordinator.Operation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002587AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for AttributionCoordinator.Operation();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1002588F4()
{
  v1 = *(type metadata accessor for AttributionCoordinator.Operation() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1002581EC(v2, v3);
}

unint64_t sub_100258958(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_100258A44(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_100258B1C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for AttributionCandidate(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ProductionAppSpecifier(0);
  __chkstk_darwin(v9);
  v11 = (&v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for AppSpecifier(0);
  __chkstk_darwin(v12);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for AttributionCoordinator.Operation();
  __chkstk_darwin(v15);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100258748(a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_1001E27A8(&qword_1004D68F0);
    v19 = *(v18 + 48);
    v20 = &v17[*(v18 + 64)];
    v21 = *v20;
    v22 = *(v20 + 1);
    sub_10025907C(v17, v11, type metadata accessor for ProductionAppSpecifier);
    sub_100004A68(&v17[v19], v50);
    v23 = *sub_1000035B8(a2 + 3, a2[6]);

    sub_10024C168(v11, v50, v23, v21, v22, a3);

    sub_100003894(v50);
    sub_100259128(v11, type metadata accessor for ProductionAppSpecifier);
  }

  else
  {
    v45 = v8;
    v24 = sub_1001E27A8(&qword_1004D73E8);
    v25 = v24[12];
    v26 = &v17[v24[16]];
    v28 = *v26;
    v27 = *(v26 + 1);
    v46 = v28;
    v48 = v27;
    v29 = &v17[v24[20]];
    v30 = a3;
    v32 = *v29;
    v31 = *(v29 + 1);
    sub_10025907C(v17, v14, type metadata accessor for AppSpecifier);
    sub_100004A68(&v17[v25], v50);
    v33 = a2[13];

    v47 = v33;
    os_unfair_lock_lock(v33 + 4);
    sub_1000035B8(a2 + 3, a2[6]);
    v34 = swift_allocObject();
    v34[2] = v32;
    v34[3] = v31;
    v34[4] = sub_10024D230;
    v34[5] = v30;
    v35 = v14[1];
    if (v35)
    {
      v36 = *v14;
      v37 = *(v12 + 20);
      v38 = *(v9 + 20);
      v39 = sub_1003981B8();
      (*(*(v39 - 8) + 16))(v11 + v38, v14 + v37, v39);
      *v11 = v36;
      v11[1] = v35;

      sub_100247FE0(v11, v50, v46, v48, sub_1002590E4, v34);

      sub_100259128(v11, type metadata accessor for ProductionAppSpecifier);
    }

    else
    {

      v40 = v45;
      sub_10024A168(v14, v45);
      v41 = swift_allocObject();
      swift_weakInit();
      sub_100003554(v50, v49);
      v42 = swift_allocObject();
      *(v42 + 16) = v41;
      *(v42 + 24) = sub_1002590E4;
      v43 = v46;
      *(v42 + 32) = v34;
      *(v42 + 40) = v43;
      *(v42 + 48) = v48;
      *(v42 + 56) = 2;
      sub_100004A68(v49, v42 + 64);

      sub_100247CEC(v40, v50, sub_10024D218, v42);

      sub_100259128(v40, type metadata accessor for AttributionCandidate);
    }

    os_unfair_lock_unlock(v47 + 4);

    sub_100003894(v50);
    sub_100259128(v14, type metadata accessor for AppSpecifier);
  }
}

uint64_t sub_10025907C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002590E4()
{
  v1 = *(v0 + 32);
  v2 = (*(v0 + 16))();
  return v1(v2);
}

uint64_t sub_100259128(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100259188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static AttributionToken.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_100259AD0(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  return sub_1003999B8();
}

uint64_t sub_100259258(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = sub_100259AD0(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if ((v8 & 1) != 0 && ((v2 ^ v5) & 1) == 0)
  {
    if (v3 == v6 && v4 == v7)
    {
      return 1;
    }

    else
    {

      return sub_1003999B8();
    }
  }

  return result;
}

uint64_t AttributionToken.debugDescription.getter()
{
  BYTE8(v2) = 0;
  sub_1003996F8(16);
  v3._countAndFlagsBits = 0x286E656B6F74;
  v3._object = 0xE600000000000000;
  sub_100399068(v3);
  v4._countAndFlagsBits = sub_100397548(0);
  sub_100399068(v4);

  v5._countAndFlagsBits = 8236;
  v5._object = 0xE200000000000000;
  sub_100399068(v5);
  *&v2 = *(v0 + 16);
  sub_1003997C8();
  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  sub_100399068(v6);
  sub_100399068(*(v0 + 24));
  return *(&v2 + 1);
}

uint64_t static AttributionToken.combineTokenSignature(token:sig:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a1;
  v14 = a2;
  v12[3] = &type metadata for Data;
  v12[4] = &protocol witness table for Data;
  v12[0] = a3;
  v12[1] = a4;
  v8 = sub_1000035B8(v12, &type metadata for Data);
  v9 = *v8;
  v10 = v8[1];
  sub_1001EF9F4(a1, a2);
  sub_1001EF9F4(a3, a4);
  sub_10025984C(v9, v10);
  sub_100003894(v12);
  return v13;
}

uint64_t sub_10025948C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_100397188();
    if (v10)
    {
      v11 = sub_1003971A8();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_100397198();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_100397188();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1003971A8();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_100397198();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1002596BC(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_100259A18(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1001EFA90(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_10025948C(v13, a3, a4, &v12);
  v10 = v4;
  sub_1001EFA90(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_10025984C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_100397528();
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_100259984(v3, v4);
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    return sub_100259984(v3, v4);
  }

  return sub_100397528();
}

uint64_t sub_100259984(uint64_t a1, uint64_t a2)
{
  result = sub_100397188();
  if (!result || (result = sub_1003971A8(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_100397198();
      return sub_100397528();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100259A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_100397188();
  v11 = result;
  if (result)
  {
    result = sub_1003971A8();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_100397198();
  sub_10025948C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_100259AD0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1001EF9F4(a3, a4);
          return sub_1002596BC(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

__n128 sub_100259C38(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100259C4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100259C94(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

unint64_t sub_100259D00()
{
  result = qword_1004D7928;
  if (!qword_1004D7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7928);
  }

  return result;
}

uint64_t sub_100259D74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100259FD8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id DiagnosticError.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticError();
  return objc_msgSendSuper2(&v2, "init");
}

id DiagnosticError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiagnosticError();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s11Attribution15DiagnosticErrorC010diagnosticC09errorTypeyAA0bcF0O_tFZ_0(uint64_t a1)
{
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isRunningTests];

  if ((v3 & 1) == 0)
  {
    v4 = objc_opt_self();
    v5 = sub_100398F28();
    sub_1001E27A8(&unk_1004D5DB0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1003C9930;
    *(inited + 32) = 0x707954726F727245;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = [objc_allocWithZone(NSNumber) initWithInteger:a1];
    sub_1002143B8(inited);
    swift_setDeallocating();
    sub_10025A0D0(inited + 32);
    sub_10025A138();
    isa = sub_100398E48().super.isa;

    [v4 sendEvent:v5 customPayload:isa];
  }
}

uint64_t sub_100259FD8(uint64_t result)
{
  if (result > 199)
  {
    if (result <= 399)
    {
      if ((result - 200) >= 2 && result != 300)
      {
        return 0;
      }
    }

    else if ((result - 400) >= 6 && result != 500)
    {
      return 0;
    }
  }

  else if ((result - 1) >= 0x17 && (result - 100) >= 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10025A06C()
{
  result = qword_1004D7930;
  if (!qword_1004D7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7930);
  }

  return result;
}

uint64_t sub_10025A0D0(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004D5A28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10025A138()
{
  result = qword_1004D5DC0;
  if (!qword_1004D5DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D5DC0);
  }

  return result;
}

void sub_10025A1CC()
{
  if (!qword_1004D79C8)
  {
    v0 = sub_100398EB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1004D79C8);
    }
  }
}

uint64_t sub_10025A23C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1003974E8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10025A2FC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1003974E8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10025A3C0()
{
  sub_10025A1CC();
  if (v0 <= 0x3F)
  {
    sub_1003974E8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10025A454(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006ELL;
  v3 = 0x6D617473656D6974;
  v4 = 0xE900000000000070;
  v5 = a1;
  v6 = 0x6F724665726F7473;
  v7 = 0xEA0000000000746ELL;
  if (a1 != 5)
  {
    v6 = 0x6449656C646E7562;
    v7 = 0xE800000000000000;
  }

  v8 = 0x6F6973726556736FLL;
  if (a1 != 3)
  {
    v8 = 0x646C697542736FLL;
    v2 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v7 = v2;
  }

  v9 = 0xD000000000000018;
  v10 = 0x800000010042DF60;
  v11 = 0x6F6674616C50736FLL;
  v12 = 0xEA00000000006D72;
  if (a1 == 1)
  {
    v11 = 0x6D617473656D6974;
    v12 = 0xE900000000000070;
  }

  if (a1)
  {
    v9 = v11;
    v10 = v12;
  }

  if (a1 <= 2u)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (v5 <= 2)
  {
    v14 = v10;
  }

  else
  {
    v14 = v7;
  }

  if (a2 <= 2u)
  {
    if (!a2)
    {
      v4 = 0x800000010042DF60;
      if (v13 != 0xD000000000000018)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (a2 != 1)
    {
      v4 = 0xEA00000000006D72;
      if (v13 != 0x6F6674616C50736FLL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v4 = 0xEA0000000000746ELL;
        if (v13 != 0x6F724665726F7473)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v4 = 0xE800000000000000;
        if (v13 != 0x6449656C646E7562)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v4 = 0xE90000000000006ELL;
      if (v13 != 0x6F6973726556736FLL)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v4 = 0xE700000000000000;
    v3 = 0x646C697542736FLL;
  }

  if (v13 != v3)
  {
LABEL_36:
    v15 = sub_1003999B8();
    goto LABEL_37;
  }

LABEL_33:
  if (v14 != v4)
  {
    goto LABEL_36;
  }

  v15 = 1;
LABEL_37:

  return v15 & 1;
}

Swift::Int sub_10025A68C()
{
  sub_100399B58();
  sub_100399018();

  return sub_100399B88();
}

uint64_t sub_10025A7C4(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D7AC8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035B8(a1, a1[3]);
  sub_10025B91C();
  sub_100399BF8();
  v12 = *v3;
  v14 = 0;
  sub_1001E27A8(&qword_1004D7AA8);
  sub_10025B9C4(&qword_1004D7AD0);
  sub_100399978();
  if (!v2)
  {
    v9 = v3[2];
    v12 = v3[1];
    v13 = v9;
    v14 = 1;
    sub_1001EF9F4(v12, v9);
    sub_1001F9BE4();
    sub_100399978();
    sub_1001EFA90(v12, v13);
    type metadata accessor for AttributionPayloadDTO(0);
    LOBYTE(v12) = 2;
    sub_1003974E8();
    sub_10025BA30(&qword_1004D7AD8);
    sub_100399978();
    LOBYTE(v12) = 3;
    sub_100399958();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10025AA38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1003974E8();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1001E27A8(&qword_1004D7A98);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v23 - v6;
  v8 = type metadata accessor for AttributionPayloadDTO(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_10025B91C();
  v30 = v7;
  v11 = v32;
  sub_100399BC8();
  if (v11)
  {
    return sub_100003894(a1);
  }

  v32 = v5;
  v12 = v29;
  sub_1001E27A8(&qword_1004D7AA8);
  v34 = 0;
  sub_10025B9C4(&qword_1004D7AB0);
  v13 = v30;
  sub_1003998D8();
  v26 = v33;
  *v10 = v33;
  v34 = 1;
  sub_10025B970();
  sub_1003998D8();
  *(v10 + 8) = v33;
  LOBYTE(v33) = 2;
  sub_10025BA30(&qword_1004D7AC0);
  v14 = v32;
  v25 = 0;
  sub_1003998D8();
  v15 = *(v28 + 32);
  v16 = &v10[*(v8 + 24)];
  v32 = v3;
  v15(v16, v14, v3);
  LOBYTE(v33) = 3;
  v17 = sub_1003998B8();
  v24 = v18;
  v19 = v17;
  (*(v12 + 8))(v13, v31);
  v20 = &v10[*(v8 + 28)];
  v21 = v24;
  *v20 = v19;
  *(v20 + 1) = v21;
  sub_10025BAC8(v10, v27, type metadata accessor for AttributionPayloadDTO);
  sub_100003894(a1);
  return sub_10025BB30(v10, type metadata accessor for AttributionPayloadDTO);
}

uint64_t sub_10025AEB8(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004D7AF0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11 - v7;
  sub_1000035B8(a1, a1[3]);
  sub_10025BA74();
  sub_100399BF8();
  v12 = *v3;
  v14 = 0;
  sub_1001E27A8(&qword_1004D7AA8);
  sub_10025B9C4(&qword_1004D7AD0);
  sub_100399978();
  if (!v2)
  {
    v9 = v3[2];
    v12 = v3[1];
    v13 = v9;
    v14 = 1;
    sub_1001EF9F4(v12, v9);
    sub_1001F9BE4();
    sub_100399978();
    sub_1001EFA90(v12, v13);
    type metadata accessor for SignedAttributionPayloadDTO(0);
    LOBYTE(v12) = 2;
    sub_1003974E8();
    sub_10025BA30(&qword_1004D7AD8);
    sub_100399978();
    LOBYTE(v12) = 3;
    sub_100399958();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10025B12C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = sub_1003974E8();
  v28 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1001E27A8(&qword_1004D7AE0);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v7 = &v23 - v6;
  v8 = type metadata accessor for SignedAttributionPayloadDTO(0);
  __chkstk_darwin(v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8(a1, a1[3]);
  sub_10025BA74();
  v30 = v7;
  v11 = v32;
  sub_100399BC8();
  if (v11)
  {
    return sub_100003894(a1);
  }

  v32 = v5;
  v12 = v29;
  sub_1001E27A8(&qword_1004D7AA8);
  v34 = 0;
  sub_10025B9C4(&qword_1004D7AB0);
  v13 = v30;
  sub_1003998D8();
  v26 = v33;
  *v10 = v33;
  v34 = 1;
  sub_10025B970();
  sub_1003998D8();
  *(v10 + 8) = v33;
  LOBYTE(v33) = 2;
  sub_10025BA30(&qword_1004D7AC0);
  v14 = v32;
  v25 = 0;
  sub_1003998D8();
  v15 = *(v28 + 32);
  v16 = &v10[*(v8 + 24)];
  v32 = v3;
  v15(v16, v14, v3);
  LOBYTE(v33) = 3;
  v17 = sub_1003998B8();
  v24 = v18;
  v19 = v17;
  (*(v12 + 8))(v13, v31);
  v20 = &v10[*(v8 + 28)];
  v21 = v24;
  *v20 = v19;
  *(v20 + 1) = v21;
  sub_10025BAC8(v10, v27, type metadata accessor for SignedAttributionPayloadDTO);
  sub_100003894(a1);
  return sub_10025BB30(v10, type metadata accessor for SignedAttributionPayloadDTO);
}

uint64_t sub_10025B5AC(void *a1)
{
  v3 = sub_1001E27A8(&qword_1004D7B28);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_1000035B8(a1, a1[3]);
  sub_10025C74C();
  sub_100399BF8();
  v8[15] = 0;
  sub_100399958();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_100399958();
  v8[13] = 2;
  sub_100399958();
  v8[12] = 3;
  sub_100399958();
  v8[11] = 4;
  sub_100399958();
  v8[10] = 5;
  sub_100399958();
  v8[9] = 6;
  sub_100399958();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10025B7CC(uint64_t a1)
{
  v2 = sub_10025B91C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10025B808(uint64_t a1)
{
  v2 = sub_10025B91C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10025B874(uint64_t a1)
{
  v2 = sub_10025BA74();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10025B8B0(uint64_t a1)
{
  v2 = sub_10025BA74();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10025B91C()
{
  result = qword_1004D7AA0;
  if (!qword_1004D7AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7AA0);
  }

  return result;
}

unint64_t sub_10025B970()
{
  result = qword_1004D7AB8;
  if (!qword_1004D7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7AB8);
  }

  return result;
}

uint64_t sub_10025B9C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001E27F0(&qword_1004D7AA8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10025BA30(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1003974E8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10025BA74()
{
  result = qword_1004D7AE8;
  if (!qword_1004D7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7AE8);
  }

  return result;
}

uint64_t sub_10025BAC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10025BB30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_10025BB90(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10025BBB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_10025BBFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ObservabilityErrorBucketConfigSystemJSONSource.Source(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ObservabilityErrorBucketConfigSystemJSONSource.Source(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10025BDCC()
{
  result = qword_1004D7AF8;
  if (!qword_1004D7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7AF8);
  }

  return result;
}

unint64_t sub_10025BE24()
{
  result = qword_1004D7B00;
  if (!qword_1004D7B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7B00);
  }

  return result;
}

uint64_t sub_10025BE90()
{
  sub_100399018();
}

uint64_t sub_10025BFBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10025C7A0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10025BFEC(unint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006ELL;
  v3 = *v1;
  v4 = 0xE900000000000070;
  v5 = 0x6D617473656D6974;
  v6 = 0xEA0000000000746ELL;
  v7 = 0x6F724665726F7473;
  if (v3 != 5)
  {
    v7 = 0x6449656C646E7562;
    v6 = 0xE800000000000000;
  }

  v8 = 0x6F6973726556736FLL;
  if (v3 != 3)
  {
    v8 = 0x646C697542736FLL;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v7 = v8;
    v6 = v2;
  }

  if (v3 != 1)
  {
    v5 = 0x6F6674616C50736FLL;
    v4 = 0xEA00000000006D72;
  }

  if (!*v1)
  {
    v5 = 0xD000000000000018;
    v4 = 0x800000010042DF60;
  }

  if (*v1 <= 2u)
  {
    v9 = v5;
  }

  else
  {
    v9 = v7;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  *a1 = v9;
  a1[1] = v10;
}

unint64_t sub_10025C0E0()
{
  v1 = *v0;
  v2 = 0x6D617473656D6974;
  v3 = 0x6F724665726F7473;
  if (v1 != 5)
  {
    v3 = 0x6449656C646E7562;
  }

  v4 = 0x6F6973726556736FLL;
  if (v1 != 3)
  {
    v4 = 0x646C697542736FLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0x6F6674616C50736FLL;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_10025C1D0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10025C7A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10025C204(uint64_t a1)
{
  v2 = sub_10025C74C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10025C240(uint64_t a1)
{
  v2 = sub_10025C74C();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10025C27C@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10025C7EC(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_10025C2E8(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return sub_10025C4B0(v13, v14) & 1;
}

unint64_t sub_10025C354()
{
  result = qword_1004D7B08;
  if (!qword_1004D7B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7B08);
  }

  return result;
}

unint64_t sub_10025C3AC()
{
  result = qword_1004D7B10;
  if (!qword_1004D7B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7B10);
  }

  return result;
}

unint64_t sub_10025C404()
{
  result = qword_1004D7B18;
  if (!qword_1004D7B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7B18);
  }

  return result;
}

unint64_t sub_10025C45C()
{
  result = qword_1004D7B20;
  if (!qword_1004D7B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7B20);
  }

  return result;
}

uint64_t sub_10025C4B0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1003999B8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1003999B8() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_1003999B8() & 1) == 0)
  {
    return 0;
  }

  if ((a1[6] != a2[6] || a1[7] != a2[7]) && (sub_1003999B8() & 1) == 0 || (a1[8] != a2[8] || a1[9] != a2[9]) && (sub_1003999B8() & 1) == 0 || (a1[10] != a2[10] || a1[11] != a2[11]) && (sub_1003999B8() & 1) == 0)
  {
    return 0;
  }

  if (a1[12] == a2[12] && a1[13] == a2[13])
  {
    return 1;
  }

  return sub_1003999B8();
}

uint64_t sub_10025C5EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726564616568 && a2 == 0xE600000000000000;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_10025C74C()
{
  result = qword_1004D7B30;
  if (!qword_1004D7B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7B30);
  }

  return result;
}

uint64_t sub_10025C7A0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100479AF8;
  v6._object = a2;
  v4 = sub_100399848(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_10025C7EC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1001E27A8(&qword_1004D7B38);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v29 - v7;
  sub_1000035B8(a1, a1[3]);
  sub_10025C74C();
  sub_100399BC8();
  if (v2)
  {
    return sub_100003894(a1);
  }

  LOBYTE(v46[0]) = 0;
  v9 = sub_1003998B8();
  v38 = v10;
  LOBYTE(v46[0]) = 1;
  *&v37 = sub_1003998B8();
  *(&v37 + 1) = v11;
  LOBYTE(v46[0]) = 2;
  v35 = sub_1003998B8();
  v13 = v12;
  LOBYTE(v46[0]) = 3;
  v14 = sub_1003998B8();
  v36 = v15;
  v31 = v14;
  LOBYTE(v46[0]) = 4;
  v34 = 0;
  v30 = sub_1003998B8();
  v33 = v16;
  LOBYTE(v46[0]) = 5;
  v29 = sub_1003998B8();
  v32 = v17;
  v58 = 6;
  v18 = sub_1003998B8();
  v19 = *(v6 + 8);
  v20 = v18;
  v34 = v21;
  v19(v8, v5);
  *&v39 = v9;
  v22 = v38;
  *(&v39 + 1) = v38;
  v40 = v37;
  *&v41 = v35;
  *(&v41 + 1) = v13;
  *&v42 = v31;
  v23 = v36;
  *(&v42 + 1) = v36;
  *&v43 = v30;
  *(&v43 + 1) = v33;
  *&v44 = v29;
  *(&v44 + 1) = v32;
  *&v45 = v20;
  v24 = v34;
  *(&v45 + 1) = v34;
  sub_10025CD5C(&v39, v46);
  sub_100003894(a1);
  v46[0] = v9;
  v46[1] = v22;
  v47 = v37;
  v48 = v35;
  v49 = v13;
  v50 = v31;
  v51 = v23;
  v52 = v30;
  v53 = v33;
  v54 = v29;
  v55 = v32;
  v56 = v20;
  v57 = v24;
  result = sub_10025CD94(v46);
  v26 = v44;
  a2[4] = v43;
  a2[5] = v26;
  a2[6] = v45;
  v27 = v40;
  *a2 = v39;
  a2[1] = v27;
  v28 = v42;
  a2[2] = v41;
  a2[3] = v28;
  return result;
}

uint64_t getEnumTagSinglePayload for AttributionHeaderDTO.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AttributionHeaderDTO.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10025CF18()
{
  result = qword_1004D7B40;
  if (!qword_1004D7B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7B40);
  }

  return result;
}

unint64_t sub_10025CF70()
{
  result = qword_1004D7B48;
  if (!qword_1004D7B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7B48);
  }

  return result;
}

unint64_t sub_10025CFC8()
{
  result = qword_1004D7B50;
  if (!qword_1004D7B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004D7B50);
  }

  return result;
}

void static DevicePipelinesHousekeeping.removeObsoleteAttributionData(from:)(void *a1)
{
  v2 = sub_100397748();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003983A8();
  if (sub_100398348())
  {
    v24 = v2;
    v6 = objc_opt_self();
    sub_100004218(0, &qword_1004D6928);
    v7 = [v6 configurationForClass:swift_getObjCClassFromMetadata()];
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8 && (v9 = [v8 cacheSizeLimit]) != 0)
    {
      v10 = v9;
      v11 = [v9 integerValue];
    }

    else
    {
      v11 = 900;
    }

    v23 = v3;
    swift_unknownObjectRelease();
    v12 = sub_1003993C8();
    sub_100004218(0, &qword_1004D5D30);
    v13 = sub_1003995A8();
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v13, v12, "Started cache cleanup. Max cache size: %{public}ld", v14, 0xCu);
    }

    v15 = [objc_msgSend(objc_opt_self() "privateUserAccount")];
    swift_unknownObjectRelease();
    v16 = v11;
    v17 = sub_100398F58();
    v19 = v18;

    sub_1003995A8();
    sub_100397D38();
    swift_allocObject();
    v20 = a1;
    v21 = sub_100397D28();

    sub_100397738();
    sub_100245970(v5, v21, v17, v19);
    (*(v23 + 8))(v5, v24);
    sub_100246174(v16);
    sub_1003993C8();
    v22 = sub_1003995A8();
    sub_100398B98();
  }
}

uint64_t static DevicePipelinesHousekeeping.clearAttributionCache(from:)(void *a1)
{
  sub_1003993C8();
  sub_100004218(0, &qword_1004D5D30);
  v2 = sub_1003995A8();
  sub_100398B98();

  sub_1003995A8();
  sub_100397D38();
  swift_allocObject();
  v3 = a1;
  sub_100397D28();
  v4 = objc_opt_self();

  swift_unknownObjectRelease();
  sub_100246024();
}

uint64_t sub_10025D594()
{
  sub_1001E27A8(&unk_1004D7BF0);
  v0 = sub_100397E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003C9260;
  v5 = (v4 + v3);
  *v5 = xmmword_1003EE0D0;
  v6 = enum case for IntBucketContents.range(_:);
  v7 = *(v1 + 104);
  v7(v5, enum case for IntBucketContents.range(_:), v0);
  *(v5 + v2) = sub_10025D724(&off_100479BC0);
  v7((v5 + v2), enum case for IntBucketContents.individualValues(_:), v0);
  *(v5 + 2 * v2) = xmmword_1003EE0E0;
  v7((v5 + 2 * v2), v6, v0);

  return IntBucketConfiguration.init(unknownBucketName:discreteBuckets:classifiedBuckets:)(100000, v4, _swiftEmptyArrayStorage);
}

uint64_t sub_10025D724(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&qword_1004DB030);
    v3 = sub_1003996D8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      result = sub_100399B48();
      v13 = result & v7;
      v14 = (result & v7) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v7);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v11)
        {
          v13 = (v13 + 1) & v7;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *DevicePipelinesModule.attributionObjCBridge.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *DevicePipelinesModule.__allocating_init(database:signing:)(void *a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_10025DC08(a1, a2);

  swift_unknownObjectRelease();
  return v4;
}

void *DevicePipelinesModule.init(database:signing:)(void *a1, uint64_t a2)
{
  v3 = sub_10025DC08(a1, a2);

  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_10025D968()
{
  v0 = sub_100398F28();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    class_addProtocol(v1, &OBJC_PROTOCOL___APMetricPropertySupportedTypes);
  }

  v2 = sub_100398F28();
  v3 = NSClassFromString(v2);

  if (v3)
  {
    class_addProtocol(v3, &OBJC_PROTOCOL___APMetricPropertySupportedTypes);
  }

  v4 = sub_100398F28();
  v5 = NSClassFromString(v4);

  if (v5)
  {
    class_addProtocol(v5, &OBJC_PROTOCOL___APMetricPropertySupportedTypes);
  }

  v6 = sub_100398F28();
  v7 = NSClassFromString(v6);

  if (v7)
  {
    class_addProtocol(v7, &OBJC_PROTOCOL___APMetricPropertySupportedTypes);
  }

  v8 = sub_100398F28();
  v9 = NSClassFromString(v8);

  if (v9)
  {
    class_addProtocol(v9, &OBJC_PROTOCOL___APMetricPropertySupportedTypes);
  }

  v10 = sub_100398F28();
  v11 = NSClassFromString(v10);

  if (v11)
  {
    class_addProtocol(v11, &OBJC_PROTOCOL___APMetricPropertySupportedTypes);
  }

  v12 = sub_100398F28();
  v13 = NSClassFromString(v12);

  if (v13)
  {
    class_addProtocol(v13, &OBJC_PROTOCOL___APMetricPropertySupportedTypes);
  }

  return swift_arrayDestroy();
}