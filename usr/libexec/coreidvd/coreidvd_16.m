unint64_t sub_10017639C()
{
  result = qword_1008453F0;
  if (!qword_1008453F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1008453F0);
  }

  return result;
}

uint64_t sub_1001763E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100175420();
}

uint64_t sub_1001763F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10017643C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100834450, &unk_1006BFED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t sub_1001764AC@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  v27[3] = *v1;
  v5 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = (v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = type metadata accessor for IdentityDocumentPresentmentConfiguration.Credential();
  v10 = *(v31 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v31);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for IdentityDocumentPresentmentConfiguration.RelyingParty();
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v27[4] = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1[2];
  v18 = *(v17 + 16);
  if (v18)
  {
    v27[1] = a1;
    v27[2] = v1;
    v34 = _swiftEmptyArrayStorage;
    v28 = v18;
    result = sub_100172F5C(0, v18, 0);
    v20 = 0;
    v21 = v34;
    v22 = *(v6 + 80);
    v29 = v10;
    v30 = v17 + ((v22 + 32) & ~v22);
    v27[5] = v10 + 32;
    while (v20 < *(v17 + 16))
    {
      sub_1001774B0(v30 + *(v6 + 72) * v20, v9);
      sub_1001767EC(v9, &v33, v13);
      if (v3)
      {
        sub_100177514(v9);
      }

      v32 = 0;
      v23 = v13;
      sub_100177514(v9);
      v34 = v21;
      v25 = v21[2];
      v24 = v21[3];
      if (v25 >= v24 >> 1)
      {
        sub_100172F5C(v24 > 1, v25 + 1, 1);
        v21 = v34;
      }

      ++v20;
      v21[2] = v25 + 1;
      v26 = v21 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v25;
      v13 = v23;
      result = (*(v29 + 32))(v26, v23, v31);
      v3 = v32;
      if (v28 == v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_100176F44();
    if (v3)
    {
    }

    else
    {
      return IdentityDocumentPresentmentConfiguration.init(eligibleCredentials:relyingParty:)();
    }
  }

  return result;
}

uint64_t sub_1001767EC@<X0>(char **a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v45 = a2;
  v39 = a3;
  v4 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  v6 = __chkstk_darwin(v4);
  v42 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&qword_10083AE00, &qword_1006D9ED0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v39 - v16;
  v18 = type metadata accessor for ISO18013KnownDocTypes();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v39 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[8];
  v24 = a1[9];

  ISO18013KnownDocTypes.init(rawValue:)();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_10000BE18(v17, &qword_10083AE00, &qword_1006D9ED0);
    (*(v11 + 104))(v44, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v10);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    v25 = swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    result = swift_willThrow();
LABEL_5:
    *v45 = v25;
    return result;
  }

  (*(v19 + 32))(v22, v17, v18);
  v27 = a1[10];
  v28 = v43;
  sub_100176C9C(v9);
  v25 = v28;
  if (v28)
  {
    result = (*(v19 + 8))(v22, v18);
    goto LABEL_5;
  }

  v29 = v9;
  v30 = a1[1];
  v44 = *a1;
  v32 = v40;
  v31 = v41;
  v33 = *(v40 + 16);
  v45 = v29;
  v33(v42);
  v34 = *(a1 + *(type metadata accessor for DigitalPresentmentEligibleProposalData() + 20));
  if (v34)
  {
    v36 = v34[5];
    v35 = v34[6];
    v37 = v34[3];
    v38 = v34[4];

    v31 = v41;
  }

  else
  {

    ISO18013KnownDocTypes.localizedTestDocumentTitle.getter();
  }

  IdentityDocumentPresentmentConfiguration.Credential.init(credentialIdentifier:elementCategoryGroups:localizedPassName:passIdentifier:)();
  (*(v32 + 8))(v45, v31);
  return (*(v19 + 8))(v22, v18);
}

uint64_t sub_100176C9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DIPError.Code();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100007224(&qword_10083C3C0, &unk_1006DAA10);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v14 - v9;
  ISO18013KnownDocTypes.rawValue.getter();

  IdentityDocumentElementCategoryGroups.init(documentType:documentElements:)();
  v11 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v10, v11);
  }

  sub_10000BE18(v10, &qword_10083C3C0, &unk_1006DAA10);
  (*(v3 + 104))(v6, enum case for DIPError.Code.digitalPresentmentInvalidElement(_:), v2);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_100176F44()
{
  v1 = type metadata accessor for DIPError.Code();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  if (((*(v0 + 89) | ((*(v0 + 93) | (*(v0 + 95) << 16)) << 32)) & 0x8000000000000000) != 0)
  {
    v16 = *(v0 + 56);
    v17 = *(v0 + 64);
    v18 = *(v0 + 72);
    v19 = *(v0 + 80);
    return static IdentityDocumentPresentmentConfiguration.RelyingParty.web(brandIdentifier:displayOrigin:)();
  }

  else if (*(v0 + 88))
  {
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);
    return static IdentityDocumentPresentmentConfiguration.RelyingParty.firstPartyService(nameOverride:usageDescription:)();
  }

  else
  {
    v31 = v4;
    v34 = v0;
    type metadata accessor for DigitalPresentmentCallingAppDataProvider();
    inited = swift_initStackObject();
    inited[2] = v8;
    inited[3] = v7;
    inited[4] = v10;
    inited[5] = v9;
    GSMainScreenScaleFactor();
    sub_100128240(&v32);
    if (*(&v32 + 1))
    {
      v30[2] = v32;
      v31 = *&v33[0];
      v21 = v34;
      v22 = v34[15];
      v23 = v34[16];
      v24 = v34[17];
      v25 = v34[18];
      v30[1] = v34[19];
      v26 = v33[0];
      *(v34 + 15) = v32;
      *(v21 + 17) = v26;
      v27 = *(v21 + 160);
      *(v21 + 145) = *(v33 + 9);

      sub_1000B00AC(v22, v23);
      v28 = v21[3];
      v29 = v21[4];
      static IdentityDocumentPresentmentConfiguration.RelyingParty.application(applicationIdentifier:localizedName:usageDescription:)();
    }

    else
    {
      (*(v2 + 104))(v6, enum case for DIPError.Code.digitalPresentmentRelyingPartyNil(_:), v31);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }
  }
}

uint64_t sub_1001771F8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  v4 = *(v0 + 96);
  v5 = *(v0 + 104);
  v6 = *(v0 + 112);
  sub_100177570(*(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v7 = *(v0 + 136);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);
  v10 = *(v0 + 160);
  sub_1000B00AC(*(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t sub_100177298(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1001772E8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 2 * -a2;
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10017737C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *(v3 + 128);
  v6 = *(v3 + 136);
  v7 = *(v3 + 144);
  v8 = *(v3 + 152);
  v9 = *(v3 + 160);
  result = sub_1000AB7D8(v4, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = v9;
  return result;
}

__n128 sub_1001773F4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v14 = swift_allocObject();
  *(v14 + 120) = 0u;
  *(v14 + 136) = 0u;
  *(v14 + 145) = 0u;
  v15 = *(a6 + 16);
  *(v14 + 56) = *a6;
  *(v14 + 72) = v15;
  result = *(a6 + 32);
  v17 = *(a6 + 48);
  *(v14 + 88) = result;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  *(v14 + 48) = a5;
  *(v14 + 104) = v17;
  *a7 = v14;
  return result;
}

uint64_t sub_1001774B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100177514(uint64_t a1)
{
  v2 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100177570(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a5 & 0x8000000000000000) == 0)
  {
  }
}

unint64_t sub_1001775D0()
{
  v1 = type metadata accessor for DIPError.Code();
  v36 = *(v1 - 8);
  v37 = v1;
  v2 = *(v36 + 64);
  __chkstk_darwin(v1);
  v38 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for BundleRecord();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v33 - v10;
  __chkstk_darwin(v9);
  v35 = &v33 - v12;
  v14 = v0[4];
  v13 = v0[5];
  if (v14 != 0xD000000000000023 || 0x80000001006F9E20 != v13)
  {
    v15 = v0[4];
    v16 = v0[5];
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 && (v14 != 0xD000000000000023 || 0x8000000100702BF0 != v13) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v27 = v0[10];
      sub_10000BA08(v0 + 6, v0[9]);
      v28 = *v0;
      v29 = v0[1];
      v30 = v0[2];
      v31 = v0[3];
      v32 = v39;
      dispatch thunk of BundleRecordFetching.record(withAuditToken:)();
      if (v32)
      {
        goto LABEL_9;
      }

      v11 = v8;
LABEL_11:
      v21 = v33;
      v20 = v34;
      v22 = v35;
      (*(v33 + 32))(v35, v11, v34);
      v23 = BundleRecord.localizedIdentityUsageDescription.getter();
      if (v24)
      {
        v19 = v23;
        v25 = HIBYTE(v24) & 0xF;
        if ((v24 & 0x2000000000000000) == 0)
        {
          v25 = v23 & 0xFFFFFFFFFFFFLL;
        }

        if (v25)
        {
          (*(v21 + 8))(v22, v20);
          return v19;
        }

        (*(v36 + 104))(v38, enum case for DIPError.Code.digitalPresentmentInvalidUsageDescription(_:), v37);
        v19 = sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
      }

      else
      {
        (*(v36 + 104))(v38, enum case for DIPError.Code.digitalPresentmentInvalidUsageDescription(_:), v37);
        v19 = sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
      }

      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v21 + 8))(v35, v20);
      return v19;
    }
  }

  v17 = v0[10];
  sub_10000BA08(v0 + 6, v0[9]);
  v18 = v39;
  dispatch thunk of BundleRecordFetching.record(withApplicationIdentifier:)();
  if (!v18)
  {

    goto LABEL_11;
  }

LABEL_9:
  (*(v36 + 104))(v38, enum case for DIPError.Code.digitalPresentmentInvalidUsageDescription(_:), v37);
  swift_errorRetain();
  v19 = sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  return v19;
}

__n128 sub_100177B7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_100177BA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100177BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_100177C4C()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityBiometricStoreHelper();
  v5 = swift_allocObject();
  sub_10017ABC8();
  (*(v1 + 104))(v4, enum case for DispatchQoS.QoSClass.userInitiated(_:), v0);
  v6 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v4, v0);
  *(v5 + 24) = v6;
  result = [objc_allocWithZone(DCBiometricStore) init];
  *(v5 + 16) = result;
  qword_100882220 = v5;
  return result;
}

uint64_t sub_100177DA8()
{
  v1 = *(v0[19] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100177EC8;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083C4E8, &unk_1006DAB30);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10017AD7C;
  v0[13] = &unk_10080A190;
  v0[14] = v2;
  [v1 globalAuthACLWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100177EC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 160) = v2;
  if (v2)
  {
    v3 = sub_10017808C;
  }

  else
  {
    v3 = sub_100177FD8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100177FD8()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) aclData];

    v1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0xF000000000000000;
  }

  v5 = *(v0 + 8);

  return v5(v1, v4);
}

uint64_t sub_10017808C()
{
  v1 = *(v0 + 160);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 160);

  return v2();
}

uint64_t sub_1001780FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();

  return _swift_task_switch(sub_1001781C0, 0, 0);
}

uint64_t sub_1001781C0()
{
  v1 = v0[20];
  if (v1 > 2)
  {
    (*(v0[23] + 104))(v0[24], enum case for DIPError.Code.internalError(_:), v0[22]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v7 = v0[24];

    v8 = v0[1];

    return v8();
  }

  else
  {
    v2 = v0[18];
    v3 = v0[19];
    v4 = *(v0[21] + 16);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[25] = isa;
    v0[2] = v0;
    v0[3] = sub_10017841C;
    v6 = swift_continuation_init();
    v0[17] = sub_100007224(&unk_100843590, &qword_1006D8B10);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100429100;
    v0[13] = &unk_10080A168;
    v0[14] = v6;
    [v4 setGlobalAuthACL:isa ofType:v1 + 1 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_10017841C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_100178598;
  }

  else
  {
    v3 = sub_10017852C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10017852C()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100178598()
{
  v1 = v0[25];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[26];
  v4 = v0[24];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100178610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_100178638, 0, 0);
}

uint64_t sub_100178638()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[21];
  v4 = v0[19];
  v5 = *(v0[23] + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v0[24] = isa;
  v7 = Data._bridgeToObjectiveC()().super.isa;
  v0[25] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100178798;
  v8 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083C4E0, &unk_1006DAB20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100178990;
  v0[13] = &unk_10080A140;
  v0[14] = v8;
  [v5 setModifiedGlobalAuthACL:isa externalizedLAContext:v7 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100178798()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_100178918;
  }

  else
  {
    v3 = sub_1001788A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001788A8()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100178918()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

uint64_t sub_100178990(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for UUID();
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_100178A70()
{
  v1[10] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[11] = v2;
  v3 = *(v2 - 8);
  v1[12] = v3;
  v4 = *(v3 + 64) + 15;
  v1[13] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[14] = v5;
  v6 = *(v5 - 8);
  v1[15] = v6;
  v7 = *(v6 + 64) + 15;
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return _swift_task_switch(sub_100178BB0, 0, 0);
}

uint64_t sub_100178BB0()
{
  v1 = v0[19];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching template UUIDs for binding details", v4, 2u);
  }

  v5 = v0[19];
  v6 = v0[14];
  v7 = v0[15];

  v8 = *(v7 + 8);
  v0[20] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v0[21] = v9;
  *v9 = v0;
  v9[1] = sub_100178CE4;
  v10 = v0[10];

  return sub_100179764();
}

uint64_t sub_100178CE4(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v6 = *(*v3 + 168);
  v7 = *v3;
  v5[22] = a1;
  v5[23] = v2;

  if (v2)
  {
    v8 = sub_1001791B4;
  }

  else
  {
    v5[24] = a2;
    v8 = sub_100178E0C;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100178E0C()
{
  v1 = v0[22];
  if (v0[24] <= 0)
  {

    v1 = _swiftEmptyArrayStorage;
  }

  v0[25] = v1;
  v2 = v0[18];
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching Identity credentials for binding details", v5, 2u);
  }

  v6 = v0[20];
  v7 = v0[18];
  v8 = v0[14];
  v9 = v0[15];

  v6(v7, v8);
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v10 = swift_task_alloc();
  v0[26] = v10;
  *v10 = v0;
  v10[1] = sub_100178F9C;

  return sub_10017AE08();
}

uint64_t sub_100178F9C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 208);
  v6 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v7 = *(v4 + 200);

    v8 = sub_10017948C;
  }

  else
  {
    *(v4 + 224) = a1;
    v8 = sub_1001790CC;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1001790CC()
{
  v1 = v0[25];
  v3 = v0[18];
  v2 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[13];
  sub_10017AC2C(v0[28]);

  v7 = objc_allocWithZone(type metadata accessor for IdentityBindingDetails());
  v8 = IdentityBindingDetails.init(templateUUIDs:passDescriptions:)();

  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_1001791B4()
{
  v32 = v0;
  v1 = v0[23];
  v2 = v0[17];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v30 = v0[20];
    v6 = v0[17];
    v7 = v0[14];
    v8 = v0[15];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = Error.localizedDescription.getter();
    v16 = sub_100141FE4(v14, v15, &v31);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error retrieving bound template UUIDs for binding details, %s", v9, 0xCu);
    sub_10000BB78(v10);

    v30(v6, v7);
  }

  else
  {
    v17 = v0[20];
    v18 = v0[17];
    v19 = v0[14];
    v20 = v0[15];

    v17(v18, v19);
  }

  v21 = v0[23];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v22 = v0[23];
  v23 = v0[18];
  v24 = v0[19];
  v26 = v0[16];
  v25 = v0[17];
  v27 = v0[13];

  v28 = v0[1];

  return v28();
}

uint64_t sub_10017948C()
{
  v32 = v0;
  v1 = v0[27];
  v2 = v0[16];
  defaultLogger()();
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v30 = v0[20];
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v31 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[7];
    v14 = Error.localizedDescription.getter();
    v16 = sub_100141FE4(v14, v15, &v31);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v3, v4, "Error retrieving identity credentials for binding details, %s", v9, 0xCu);
    sub_10000BB78(v10);

    v30(v6, v8);
  }

  else
  {
    v17 = v0[20];
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];

    v17(v18, v20);
  }

  v21 = v0[27];
  (*(v0[12] + 104))(v0[13], enum case for DIPError.Code.internalError(_:), v0[11]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v22 = v0[27];
  v23 = v0[18];
  v24 = v0[19];
  v26 = v0[16];
  v25 = v0[17];
  v27 = v0[13];

  v28 = v0[1];

  return v28();
}

uint64_t sub_100179784()
{
  v1 = *(v0[21] + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001798A4;
  v2 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083C4D8, &qword_1006DAB18);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100179A40;
  v0[13] = &unk_10080A118;
  v0[14] = v2;
  [v1 globalAuthACLTemplateUUIDsAndCredentialCountWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001798A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_1001799D4;
  }

  else
  {
    v3 = sub_1001799B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001799D4()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2();
}

uint64_t sub_100179A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a5)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v9 = swift_allocError();
    *v10 = a5;
    v11 = a5;

    return _swift_continuation_throwingResumeWithError(v8, v9);
  }

  else
  {
    type metadata accessor for UUID();
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = *(*(v8 + 64) + 40);
    *v13 = v12;
    v13[1] = a3;
    v13[2] = a4;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_100179B38()
{
  v1[20] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[24] = v5;
  v6 = *(v5 - 8);
  v1[25] = v6;
  v7 = *(v6 + 64) + 15;
  v1[26] = swift_task_alloc();

  return _swift_task_switch(sub_100179C54, 0, 0);
}

uint64_t sub_100179C54()
{
  v1 = v0[26];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchCASDCertificate called", v4, 2u);
  }

  v6 = v0[25];
  v5 = v0[26];
  v7 = v0[24];
  v8 = v0[20];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_100179E18;
  v10 = swift_continuation_init();
  v0[17] = sub_100007224(&unk_100845E00, &qword_1006DAB10);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004B1218;
  v0[13] = &unk_10080A0F0;
  v0[14] = v10;
  [v9 getCASDCertificate:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100179E18()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_100179FAC;
  }

  else
  {
    v3 = sub_100179F28;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100179F28()
{
  v1 = v0[26];
  v2 = v0[23];
  v3 = v0[18];
  v4 = v0[19];

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t sub_100179FAC()
{
  v1 = v0[26];
  v2 = v0[27];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  swift_willThrow();
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10017A124()
{
  v1[19] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[20] = v2;
  v3 = *(v2 - 8);
  v1[21] = v3;
  v4 = *(v3 + 64) + 15;
  v1[22] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[23] = v5;
  v6 = *(v5 - 8);
  v1[24] = v6;
  v7 = *(v6 + 64) + 15;
  v1[25] = swift_task_alloc();

  return _swift_task_switch(sub_10017A240, 0, 0);
}

uint64_t sub_10017A240()
{
  v1 = v0[25];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "fetchProgenitorKeyAttestation called", v4, 2u);
  }

  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v8 = v0[19];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 16);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10017A404;
  v10 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083C4D0, &unk_1006DAB00);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10017AD7C;
  v0[13] = &unk_10080A0C8;
  v0[14] = v10;
  [v9 getGlobalProgenitorKeyAttestation:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10017A404()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_10017A5DC;
  }

  else
  {
    v3 = sub_10017A514;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10017A514()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    v2 = [*(v0 + 144) attestationData];

    v1 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0xF000000000000000;
  }

  v5 = *(v0 + 200);
  v6 = *(v0 + 176);

  v7 = *(v0 + 8);

  return v7(v1, v4);
}

uint64_t sub_10017A5DC()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[21];
  v3 = v0[22];
  v5 = v0[20];
  swift_willThrow();
  (*(v4 + 104))(v3, enum case for DIPError.Code.internalError(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10017A75C(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_10000BA08((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10017A82C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_10017A890()
{
  v1 = type metadata accessor for DIPError.Code();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();

  return _swift_task_switch(sub_10017A94C, 0, 0);
}

uint64_t sub_10017A94C()
{
  (*(v0[3] + 104))(v0[4], enum case for DIPError.Code.featureNotSupported(_:), v0[2]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10017AAA8()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100103B8C;

  return sub_100179B38();
}

uint64_t sub_10017AB38()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10017AD78;

  return sub_10017A124();
}

unint64_t sub_10017ABC8()
{
  result = qword_100845BD0;
  if (!qword_100845BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100845BD0);
  }

  return result;
}

uint64_t sub_10017AC2C(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 40;
  v4 = _swiftEmptyArrayStorage;
LABEL_2:
  v5 = (v3 + 16 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v4;
    }

    if (v1 >= v2)
    {
      break;
    }

    v6 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_14;
    }

    v8 = *(v5 - 1);
    v7 = *v5;

    sub_100511C48(v8, v7);
    v10 = v9;

    ++v1;
    v5 += 2;
    if (v10)
    {
      v12 = *(v10 + 40);
      v11 = *(v10 + 48);

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1003C5110(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v14 = *(v4 + 2);
      v13 = *(v4 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_1003C5110((v13 > 1), v14 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v14 + 1;
      v15 = &v4[16 * v14];
      *(v15 + 4) = v12;
      *(v15 + 5) = v11;
      v1 = v6;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_10017AD80()
{
  type metadata accessor for IdentityCredentialStoreHelper();
  v0 = swift_allocObject();
  v1 = objc_allocWithZone(DCCredentialStore);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v3 = [v1 initWithPartitions:isa];

  *(v0 + 16) = v3;
  qword_100882228 = v0;
}

uint64_t sub_10017AE28()
{
  v1 = *(v0[19] + 16);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[20] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10017AF70;
  v3 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083C598, &qword_1006DAB78);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100506480;
  v0[13] = &unk_10080A1B8;
  v0[14] = v3;
  [v1 credentialIdentifiersInPartitions:isa completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10017AF70()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_10017B138;
  }

  else
  {
    v3 = sub_10017B080;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10017B080()
{
  v1 = *(v0 + 144);
  if (*(v1 + 16) && (v2 = sub_10003ADCC(0x797469746E656469, 0xE800000000000000), (v3 & 1) != 0))
  {
    v4 = *(*(v1 + 56) + 8 * v2);
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10017B138()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_10017B1E4()
{
  v1[31] = v0;
  v2 = type metadata accessor for Logger();
  v1[32] = v2;
  v3 = *(v2 - 8);
  v1[33] = v3;
  v4 = *(v3 + 64) + 15;
  v1[34] = swift_task_alloc();
  v5 = type metadata accessor for DIPError.Code();
  v1[35] = v5;
  v6 = *(v5 - 8);
  v1[36] = v6;
  v7 = *(v6 + 64) + 15;
  v1[37] = swift_task_alloc();
  v8 = type metadata accessor for DIPError();
  v1[38] = v8;
  v9 = *(v8 - 8);
  v1[39] = v9;
  v10 = *(v9 + 64) + 15;
  v1[40] = swift_task_alloc();

  return _swift_task_switch(sub_10017B35C, 0, 0);
}

uint64_t sub_10017B35C()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceBiomeDataExpiration.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[41] = v4;
    *v4 = v0;
    v4[1] = sub_10017B5AC;

    return sub_10017EA14();
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v6 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v6 + 54);
    sub_100031B5C(&v6[4], (v0 + 2));
    os_unfair_lock_unlock(v6 + 54);
    v7 = v0[31];
    v8 = v0[9];
    v0[43] = v8;

    sub_100031918((v0 + 2));
    v9 = *(v8 + 16);
    v10 = swift_allocObject();
    v0[44] = v10;
    *(v10 + 16) = sub_10017F7D8;
    *(v10 + 24) = v7;
    v11 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
    swift_retain_n();
    v12 = swift_task_alloc();
    v0[45] = v12;
    *v12 = v0;
    v12[1] = sub_10017B8E0;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 47, sub_10017F7F4, v10, &type metadata for Bool);
  }
}

uint64_t sub_10017B5AC()
{
  v2 = *(*v1 + 328);
  v3 = *v1;
  v3[42] = v0;

  if (v0)
  {
    v4 = v3[40];
    v5 = v3[37];
    v6 = v3[34];

    v7 = v3[1];

    return v7(0);
  }

  else
  {

    return _swift_task_switch(sub_10017B710, 0, 0);
  }
}

void sub_10017B710()
{
  v1._countAndFlagsBits = 0x6166316233343530;
  v2._object = 0x80000001007032B0;
  v1._object = 0xE800000000000000;
  v2._countAndFlagsBits = 0xD00000000000003ALL;
  logMilestone(tag:description:)(v1, v2);
  v3 = v0[42];
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v4 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v4 + 54);
  sub_100031B5C(&v4[4], (v0 + 2));
  os_unfair_lock_unlock(v4 + 54);
  if (!v3)
  {
    v5 = v0[31];
    v6 = v0[9];
    v0[43] = v6;

    sub_100031918((v0 + 2));
    v7 = *(v6 + 16);
    v8 = swift_allocObject();
    v0[44] = v8;
    *(v8 + 16) = sub_10017F7D8;
    *(v8 + 24) = v5;
    v9 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
    swift_retain_n();
    v10 = swift_task_alloc();
    v0[45] = v10;
    *v10 = v0;
    v10[1] = sub_10017B8E0;

    AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 47, sub_10017F7F4, v8, &type metadata for Bool);
  }
}

uint64_t sub_10017B8E0()
{
  v2 = *(*v1 + 360);
  v3 = *v1;
  *(v3 + 368) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10017BA78, 0, 0);
  }

  else
  {
    v5 = *(v3 + 344);
    v4 = *(v3 + 352);
    v6 = *(v3 + 320);
    v7 = *(v3 + 296);
    v8 = *(v3 + 272);
    v9 = *(v3 + 248);

    v10 = *(v3 + 376);

    v11 = *(v3 + 8);

    return v11(v10);
  }
}

uint64_t sub_10017BA78()
{
  v1 = v0[46];
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[40];
  v5 = v0[37];
  v6 = v0[38];
  v8 = v0[35];
  v7 = v0[36];
  v22 = v0[34];
  v23 = v0[33];
  v9 = v0[31];
  v24 = v0[32];
  v25 = v0[39];

  (*(v7 + 104))(v5, enum case for DIPError.Code.biomeDataSharingUnableToCheckUserConsent(_:), v8);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  v10 = *(v25 + 16);
  v10(v11, v4, v6);
  _StringGuts.grow(_:)(43);

  swift_getErrorValue();
  v13 = v0[27];
  v12 = v0[28];
  v14 = v0[29];
  v15._countAndFlagsBits = Error.localizedDescription.getter();
  String.append(_:)(v15);

  defaultLogger()();
  DIPRecordError(_:message:log:)();

  (*(v23 + 8))(v22, v24);

  swift_allocError();
  v10(v16, v4, v6);
  swift_willThrow();

  (*(v25 + 8))(v4, v6);
  v17 = v0[40];
  v18 = v0[37];
  v19 = v0[34];

  v20 = v0[1];

  return v20(0);
}

void sub_10017BD6C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v57 = a2;
  v55 = a3;
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v50 - v6;
  v8 = type metadata accessor for Date();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  __chkstk_darwin(v8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v50 - v19;
  __chkstk_darwin(v18);
  v22 = &v50 - v21;
  v23 = v58;
  v24 = sub_100578014();
  if (v23)
  {
    return;
  }

  v50 = a1;
  v51 = v17;
  v53 = v11;
  v54 = v12;
  v25 = v56;
  v26 = v57;
  v58 = 0;
  if (!v24)
  {
    defaultLogger()();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "User consent doesn't exist. hasUserConsent -> FALSE", v39, 2u);
    }

    (*(v13 + 8))(v22, v54);
    goto LABEL_12;
  }

  v52 = v24;
  v27 = [v24 optInDate];
  if (!v27)
  {
    defaultLogger()();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "User consent date doesn't exist. hasUserConsent -> FALSE", v42, 2u);
    }

    (*(v13 + 8))(v20, v54);
LABEL_12:
    *v55 = 0;
    return;
  }

  v28 = v53;
  v29 = v27;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v30 = *(v26 + 64);
  v31 = v25;
  v32 = *(v25 + 16);
  v33 = v8;
  v34 = v31;
  v32(v7, v28, v33);
  (*(v34 + 56))(v7, 0, 1, v33);

  v35 = v58;
  v36 = sub_10017F818(v7);
  v58 = v35;
  if (v35)
  {

    sub_100103444(v7);
    (*(v34 + 8))(v28, v33);
  }

  else
  {
    v43 = v36;
    sub_100103444(v7);

    if (v43)
    {
      v44 = *(v26 + 16);

      v45 = v58;
      sub_1002FEF78();
      if (v45)
      {
        (*(v34 + 8))(v53, v33);
      }

      else
      {

        sub_1005783D4();
        (*(v34 + 8))(v53, v33);

        *v55 = 0;
      }
    }

    else
    {
      v46 = v51;
      defaultLogger()();
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "User Consent exists. hasUserConsent -> TRUE", v49, 2u);
      }

      (*(v13 + 8))(v46, v54);
      (*(v34 + 8))(v53, v33);
      *v55 = 1;
    }
  }
}

uint64_t sub_10017C2F0()
{
  v1[32] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[33] = v2;
  v3 = *(v2 - 8);
  v1[34] = v3;
  v4 = *(v3 + 64) + 15;
  v1[35] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[36] = v5;
  v6 = *(v5 - 8);
  v1[37] = v6;
  v7 = *(v6 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_10017C418, 0, 0);
}

uint64_t sub_10017C418()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceBiomeDataExpiration.getter();
  v3 = NSUserDefaults.internalBool(forKey:)(v2);

  if (v3)
  {
    v4 = swift_task_alloc();
    v0[40] = v4;
    *v4 = v0;
    v4[1] = sub_10017C668;

    return sub_10017EA14();
  }

  else
  {
    if (qword_100832B60 != -1)
    {
      swift_once();
    }

    v6 = *(qword_100881E78 + 16);
    os_unfair_lock_lock(v6 + 54);
    sub_100031B5C(&v6[4], (v0 + 2));
    os_unfair_lock_unlock(v6 + 54);
    v7 = v0[32];
    v8 = v0[9];
    v0[42] = v8;

    sub_100031918((v0 + 2));
    v9 = *(v8 + 16);
    v10 = swift_allocObject();
    v0[43] = v10;
    *(v10 + 16) = sub_10017F72C;
    *(v10 + 24) = v7;
    v11 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
    swift_retain_n();
    v12 = swift_task_alloc();
    v0[44] = v12;
    *v12 = v0;
    v12[1] = sub_10017C9FC;

    return AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 30, sub_10017F748, v10, &type metadata for IdentityProofingDataSharingUserConsent);
  }
}

uint64_t sub_10017C668()
{
  v2 = *(*v1 + 320);
  v3 = *v1;
  v3[41] = v0;

  if (v0)
  {
    v5 = v3[38];
    v4 = v3[39];
    v6 = v3[35];

    v7 = v3[1];

    return v7();
  }

  else
  {

    return _swift_task_switch(sub_10017C7C4, 0, 0);
  }
}

void sub_10017C7C4()
{
  v1 = v0[39];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "user consent date has been set to 91 days back from today.", v4, 2u);
  }

  v5 = v0[39];
  v6 = v0[36];
  v7 = v0[37];

  (*(v7 + 8))(v5, v6);
  v8 = v0[41];
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v9 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v9 + 54);
  sub_100031B5C(&v9[4], (v0 + 2));
  os_unfair_lock_unlock(v9 + 54);
  if (!v8)
  {
    v10 = v0[32];
    v11 = v0[9];
    v0[42] = v11;

    sub_100031918((v0 + 2));
    v12 = *(v11 + 16);
    v13 = swift_allocObject();
    v0[43] = v13;
    *(v13 + 16) = sub_10017F72C;
    *(v13 + 24) = v10;
    v14 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
    swift_retain_n();
    v15 = swift_task_alloc();
    v0[44] = v15;
    *v15 = v0;
    v15[1] = sub_10017C9FC;

    AsyncCoreDataContainer.performWrite<A>(_:)(v0 + 30, sub_10017F748, v13, &type metadata for IdentityProofingDataSharingUserConsent);
  }
}

uint64_t sub_10017C9FC()
{
  v2 = *(*v1 + 352);
  v3 = *v1;
  v3[45] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10017CB90, 0, 0);
  }

  else
  {
    v5 = v3[42];
    v4 = v3[43];
    v7 = v3[38];
    v6 = v3[39];
    v8 = v3[35];
    v9 = v3[32];

    v10 = v3[30];

    v11 = v3[1];

    return v11(v10);
  }
}

uint64_t sub_10017CB90()
{
  v30 = v0;
  v1 = v0[45];
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[38];
  v5 = v0[32];

  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[45];
    v10 = v0[37];
    v9 = v0[38];
    v11 = v0[36];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v12 = 136315138;
    swift_getErrorValue();
    v15 = v0[27];
    v14 = v0[28];
    v16 = v0[29];
    v17 = Error.localizedDescription.getter();
    v19 = sub_100141FE4(v17, v18, &v29);

    *(v12 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error while fetching user consent %s", v12, 0xCu);
    sub_10000BB78(v13);

    (*(v10 + 8))(v9, v11);
  }

  else
  {
    v21 = v0[37];
    v20 = v0[38];
    v22 = v0[36];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[45];
  (*(v0[34] + 104))(v0[35], enum case for DIPError.Code.biomeDataSharingIdentityPassDoesntExist(_:), v0[33]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v25 = v0[38];
  v24 = v0[39];
  v26 = v0[35];

  v27 = v0[1];

  return v27();
}

void sub_10017CEA0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v120 = a2;
  v122 = a3;
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v115 = &v106 - v6;
  v7 = type metadata accessor for DIPError.Code();
  v116 = *(v7 - 8);
  v117 = v7;
  v8 = *(v116 + 64);
  __chkstk_darwin(v7);
  v118 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for Date();
  v119 = *(v123 - 8);
  v10 = *(v119 + 64);
  __chkstk_darwin(v123);
  v121 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v124 = *(v12 - 8);
  v13 = *(v124 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v106 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v106 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = &v106 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v106 - v27;
  v29 = __chkstk_darwin(v26);
  v31 = &v106 - v30;
  __chkstk_darwin(v29);
  v33 = &v106 - v32;
  v34 = v126;
  v35 = sub_100578014();
  if (v34)
  {
    return;
  }

  v112 = v31;
  v113 = v28;
  v110 = v16;
  v111 = v25;
  v108 = a1;
  v109 = v22;
  v107 = v19;
  v114 = v12;
  v37 = v122;
  v36 = v123;
  v126 = 0;
  if (!v35)
  {
    defaultLogger()();
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "User consent doesn't exist", v62, 2u);
    }

    (*(v124 + 8))(v33, v114);
    goto LABEL_12;
  }

  v38 = v35;
  v39 = [v35 optInDate];
  if (!v39)
  {
    v63 = v112;
    defaultLogger()();
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.error.getter();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v118;
    if (v66)
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "User consent date doesn't exist. Exiting with an error as the Date should always exist if consent exists.", v68, 2u);
    }

    (*(v124 + 8))(v63, v114);
    (*(v116 + 104))(v67, enum case for DIPError.Code.biomeDataSharingUserConsentDateDoesntExist(_:), v117);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    return;
  }

  v112 = v38;
  v40 = v121;
  v41 = v39;
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = v113;
  defaultLogger()();
  v43 = Logger.logObject.getter();
  v44 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&_mh_execute_header, v43, v44, "Checking if the 90 retention period has elapsed...", v45, 2u);
  }

  v46 = v124 + 8;
  v47 = *(v124 + 8);
  v47(v42, v114);
  v48 = v112;
  v49 = [v112 credentialIdentifier];
  v50 = v120;
  if (!v49)
  {
    (*(v116 + 104))(v118, enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), v117);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v119 + 8))(v40, v36);
    return;
  }

  v106 = v47;
  v124 = v46;
  v51 = v49;
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  v55 = *(v50 + 64);
  v56 = v119;
  v57 = v115;
  (*(v119 + 16))(v115, v40, v36);
  (*(v56 + 56))(v57, 0, 1, v36);

  v58 = v126;
  v59 = sub_10017F818(v57);
  v126 = v58;
  if (v58)
  {

    sub_100103444(v57);
    (*(v56 + 8))(v40, v36);
    return;
  }

  v69 = v59;
  v113 = v52;
  sub_100103444(v57);

  if (v69)
  {

    v70 = *(v120 + 16);

    v71 = v126;
    sub_1002FEF78();
    if (v71)
    {
      (*(v56 + 8))(v121, v36);
LABEL_21:

      return;
    }

    sub_1005783D4();
    v91 = v112;
    (*(v56 + 8))(v121, v36);

    *v37 = 1;
    return;
  }

  v72 = v111;
  defaultLogger()();
  v73 = Logger.logObject.getter();
  v74 = static os_log_type_t.debug.getter();
  v75 = v54;
  if (os_log_type_enabled(v73, v74))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v73, v74, "Retention timeline looks good. Checking if the user has withdrawn the consent", v76, 2u);
    v72 = v111;
  }

  v77 = v72;
  v78 = v114;
  v79 = v106;
  v106(v77, v114);
  v80 = v112;
  if (![v112 optInStatus])
  {

    v86 = v110;
    defaultLogger()();
    v87 = v80;
    v88 = Logger.logObject.getter();
    v89 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 67109120;
      *(v90 + 4) = [v87 optInStatus];

      _os_log_impl(&_mh_execute_header, v88, v89, "Consent has been withdrawn. Current status is %{BOOL}d", v90, 8u);
      v78 = v114;
    }

    else
    {
    }

    v79(v86, v78);
    (*(v56 + 8))(v121, v123);
LABEL_12:
    *v37 = 1;
    return;
  }

  v81 = v113;
  v82 = sub_100315D5C(v113, v54);
  if ((v82 & 0x100) == 0)
  {

    defaultLogger()();
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&_mh_execute_header, v83, v84, "No Identity Pass exists.", v85, 2u);
      v78 = v114;
    }

    v79(v109, v78);
    (*(v56 + 8))(v40, v123);
LABEL_41:
    *v37 = 0;
    return;
  }

  if (v82)
  {
    v92 = v107;
    defaultLogger()();

    v93 = Logger.logObject.getter();
    v94 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = v81;
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v125[0] = v97;
      *v96 = 136315138;
      v98 = sub_100141FE4(v95, v75, v125);
      v99 = v92;
      v100 = v98;

      *(v96 + 4) = v100;
      _os_log_impl(&_mh_execute_header, v93, v94, "Matching pass exists for %s. Returning the consent as share", v96, 0xCu);
      sub_10000BB78(v97);

      v106(v99, v114);
    }

    else
    {

      v79(v92, v78);
    }

    (*(v56 + 8))(v121, v123);
    goto LABEL_41;
  }

  v101 = *(v120 + 16);

  v102 = v126;
  sub_1002FEF78();
  v103 = v123;
  if (v102)
  {
    (*(v56 + 8))(v40, v123);

    goto LABEL_21;
  }

  v125[0] = 0;
  v125[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(59);
  v104._countAndFlagsBits = 0xD000000000000039;
  v104._object = 0x80000001007031C0;
  String.append(_:)(v104);
  v105._countAndFlagsBits = v113;
  v105._object = v54;
  String.append(_:)(v105);

  v126 = v125[0];
  (*(v116 + 104))(v118, enum case for DIPError.Code.biomeDataSharingIdentityPassDoesntExist(_:), v117);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  (*(v56 + 8))(v40, v103);
}

void sub_10017DD54(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = type metadata accessor for Logger();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DIPError.Code();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100578014();
  if (!v2)
  {
    v14 = v13;
    v25 = v7;
    v26 = v3;
    v27 = v4;
    if (v13)
    {
      v15 = IdentityProofingDataSharingUserConsent.rawValue.getter();
      v16 = v15 == IdentityProofingDataSharingUserConsent.rawValue.getter();
      sub_10057ED84(v16);
      sub_1005783D4();
      v17 = v25;
      defaultLogger()();
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v29 = v21;
        *v20 = 136315138;
        v22 = IdentityProofingDataSharingUserConsent.debugDescription.getter();
        v24 = sub_100141FE4(v22, v23, &v29);

        *(v20 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v18, v19, "Successfully updated the user's consent to %s", v20, 0xCu);
        sub_10000BB78(v21);
      }

      (*(v27 + 8))(v17, v26);
    }

    else
    {
      (*(v9 + 104))(v12, enum case for DIPError.Code.missingProofingMetadata(_:), v8);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

void sub_10017E0FC(uint64_t a1)
{
  v2 = type metadata accessor for Logger();
  v69 = *(v2 - 8);
  v70 = v2;
  v3 = *(v69 + 64);
  __chkstk_darwin(v2);
  v71 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Calendar.Component();
  v79 = *(v75 - 8);
  v5 = *(v79 + 64);
  __chkstk_darwin(v75);
  v78 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for Calendar();
  v74 = *(v76 - 8);
  v7 = *(v74 + 64);
  __chkstk_darwin(v76);
  v77 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v73 = v61 - v11;
  v12 = type metadata accessor for Date();
  v72 = *(v12 - 8);
  v13 = *(v72 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = v61 - v18;
  __chkstk_darwin(v17);
  v21 = v61 - v20;
  v22 = type metadata accessor for DIPError.Code();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = (v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = a1;
  v28 = v80;
  v29 = sub_100578014();
  if (!v28)
  {
    v66 = v19;
    v67 = v23;
    v68 = v22;
    v30 = v77;
    v31 = v78;
    v32 = v79;
    v62 = v16;
    v63 = v21;
    v80 = v26;
    v64 = v27;
    if (v29)
    {
      v61[1] = 0;
      v65 = v29;
      static Calendar.current.getter();
      v33 = v32;
      v34 = v75;
      (*(v32 + 104))(v31, enum case for Calendar.Component.day(_:), v75);
      v35 = v66;
      Date.init()();
      v36 = v73;
      Calendar.date(byAdding:value:to:wrappingComponents:)();
      v37 = v72;
      v38 = *(v72 + 8);
      v39 = v35;
      v40 = v12;
      v41 = v12;
      v42 = v72 + 8;
      v38(v39, v41);
      (*(v33 + 8))(v31, v34);
      (*(v74 + 8))(v30, v76);
      v43 = (*(v37 + 48))(v36, 1, v40);
      v44 = v80;
      if (v43 == 1)
      {
        sub_100103444(v36);
        (*(v67 + 104))(v44, enum case for DIPError.Code.biomeDataSharingUserConsentDateDoesntExist(_:), v68);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }

      else
      {
        v80 = v38;
        v45 = *(v37 + 32);
        v46 = v37;
        v47 = v63;
        v45(v63, v36, v40);
        v48 = v71;
        defaultLogger()();
        v49 = v62;
        (*(v46 + 16))(v62, v47, v40);
        v50 = Logger.logObject.getter();
        v51 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v79 = v42;
          v53 = v52;
          v54 = swift_slowAlloc();
          v81 = v54;
          *v53 = 136315138;
          sub_10017F790(&qword_10083ACE0, &type metadata accessor for Date);
          v55 = dispatch thunk of CustomStringConvertible.description.getter();
          v56 = v49;
          v58 = v57;
          v59 = v80;
          v80(v56, v40);
          v60 = sub_100141FE4(v55, v58, &v81);

          *(v53 + 4) = v60;
          _os_log_impl(&_mh_execute_header, v50, v51, "Setting the consent date to %s", v53, 0xCu);
          sub_10000BB78(v54);

          (*(v69 + 8))(v71, v70);
        }

        else
        {

          v59 = v80;
          v80(v49, v40);
          (*(v69 + 8))(v48, v70);
        }

        sub_10057EF08(v47);
        sub_1005783D4();
        v59(v47, v40);
      }
    }

    else
    {
      (*(v67 + 104))(v80, enum case for DIPError.Code.proofingBiomeDataDoesntExist(_:), v68);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_10017E98C()
{
  v1 = v0[2];

  sub_10000BB78(v0 + 3);
  v2 = v0[8];

  return swift_deallocClassInstance();
}

uint64_t sub_10017EA14()
{
  v1 = type metadata accessor for Logger();
  v0[31] = v1;
  v2 = *(v1 - 8);
  v0[32] = v2;
  v3 = *(v2 + 64) + 15;
  v0[33] = swift_task_alloc();

  return _swift_task_switch(sub_10017EAD0, 0, 0);
}

uint64_t sub_10017EAD0()
{
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v1 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v1 + 54);
  sub_100031B5C(&v1[4], (v0 + 2));
  os_unfair_lock_unlock(v1 + 54);
  v2 = v0[9];
  v0[34] = v2;

  sub_100031918((v0 + 2));
  v3 = *(v2 + 16);
  v4 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_10017EC1C;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v5, sub_10017E9F8, 0, &type metadata for () + 8);
}

uint64_t sub_10017EC1C()
{
  v2 = *v1;
  v3 = *(*v1 + 280);
  v7 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v4 = sub_10017ED9C;
  }

  else
  {
    v5 = *(v2 + 272);

    v4 = sub_10017ED38;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10017ED38()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10017ED9C()
{
  v26 = v0;
  v1 = v0[36];
  v3 = v0[33];
  v2 = v0[34];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[36];
    v7 = v0[32];
    v24 = v0[33];
    v8 = v0[31];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[27];
    v11 = v0[28];
    v13 = v0[29];
    v14 = Error.localizedDescription.getter();
    v16 = sub_100141FE4(v14, v15, &v25);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received an error while force setting user consent in internal settings %s", v9, 0xCu);
    sub_10000BB78(v10);

    (*(v7 + 8))(v24, v8);
  }

  else
  {
    v17 = v0[36];
    v19 = v0[32];
    v18 = v0[33];
    v20 = v0[31];

    (*(v19 + 8))(v18, v20);
  }

  v21 = v0[33];

  v22 = v0[1];

  return v22();
}

uint64_t sub_10017EF7C(uint64_t a1)
{
  v1[27] = a1;
  v2 = type metadata accessor for DIPError.Code();
  v1[28] = v2;
  v3 = *(v2 - 8);
  v1[29] = v3;
  v4 = *(v3 + 64) + 15;
  v1[30] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[31] = v5;
  v6 = *(v5 - 8);
  v1[32] = v6;
  v7 = *(v6 + 64) + 15;
  v1[33] = swift_task_alloc();

  return _swift_task_switch(sub_10017F098, 0, 0);
}

uint64_t sub_10017F098()
{
  v24 = v0;
  v1 = v0[33];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  if (v4)
  {
    v8 = v0[27];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    v11 = IdentityProofingDataSharingUserConsent.debugDescription.getter();
    v13 = sub_100141FE4(v11, v12, &v23);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "User has changed the consent to %s", v9, 0xCu);
    sub_10000BB78(v10);
  }

  (*(v6 + 8))(v5, v7);
  if (qword_100832B60 != -1)
  {
    swift_once();
  }

  v14 = *(qword_100881E78 + 16);
  os_unfair_lock_lock(v14 + 54);
  sub_1000318FC(&v14[4], (v0 + 2));
  os_unfair_lock_unlock(v14 + 54);
  v15 = v0[27];
  v16 = v0[9];
  v0[34] = v16;

  sub_100031918((v0 + 2));
  v17 = swift_allocObject();
  v0[35] = v17;
  *(v17 + 16) = v15;
  v18 = *(v16 + 16);
  v19 = swift_allocObject();
  v0[36] = v19;
  *(v19 + 16) = sub_10017F6BC;
  *(v19 + 24) = v17;
  v20 = async function pointer to AsyncCoreDataContainer.performWrite<A>(_:)[1];

  v21 = swift_task_alloc();
  v0[37] = v21;
  *v21 = v0;
  v21[1] = sub_10017F35C;

  return AsyncCoreDataContainer.performWrite<A>(_:)(v21, sub_10017F710, v19, &type metadata for () + 8);
}

uint64_t sub_10017F35C()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v9 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_10017F4FC;
  }

  else
  {
    v6 = v2[35];
    v5 = v2[36];
    v7 = v2[34];

    v4 = sub_10017F48C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10017F48C()
{
  v1 = v0[33];
  v2 = v0[30];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10017F4FC()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[33];
  v5 = v0[34];
  v7 = v0[29];
  v6 = v0[30];
  v8 = v0[28];

  (*(v7 + 104))(v6, enum case for DIPError.Code.internalError(_:), v8);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_10017F790(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_10017F6D8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_10017F748@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = v5(&v8, *a1);
  if (!v3)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_10017F790(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_10017F818(uint64_t a1)
{
  v79 = a1;
  v1 = type metadata accessor for DIPError.Code();
  v70 = *(v1 - 8);
  v71 = v1;
  v2 = *(v70 + 8);
  __chkstk_darwin(v1);
  v72 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Calendar();
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = *(v77 + 64);
  __chkstk_darwin(v4);
  v74 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DateComponents();
  v75 = *(v7 - 8);
  v76 = v7;
  v8 = *(v75 + 64);
  __chkstk_darwin(v7);
  v73 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v65 - v12;
  v14 = type metadata accessor for Date();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v69 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v80 = &v65 - v19;
  v20 = type metadata accessor for Logger();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v67 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v68 = &v65 - v26;
  __chkstk_darwin(v25);
  v28 = &v65 - v27;
  defaultLogger()();

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v66 = v15;
    v32 = v14;
    v33 = v31;
    *v31 = 134217984;
    *(v31 + 4) = 90;

    _os_log_impl(&_mh_execute_header, v29, v30, "The retentionPeriodInDays is %ld", v33, 0xCu);
    v14 = v32;
    v15 = v66;
  }

  else
  {
  }

  v36 = *(v21 + 8);
  v35 = v21 + 8;
  v34 = v36;
  v36(v28, v20);
  sub_1001800D0(v79, v13);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v70 = v34;
    v71 = v35;
    v72 = v20;
    (*(v15 + 32))(v80, v13, v14);
    v38 = v74;
    static Calendar.current.getter();
    sub_100007224(&qword_1008334A0, &qword_1006BF610);
    v39 = type metadata accessor for Calendar.Component();
    v79 = v14;
    v40 = v39;
    v41 = *(v39 - 8);
    v42 = *(v41 + 72);
    v43 = (*(v41 + 80) + 32) & ~*(v41 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_1006BF520;
    (*(v41 + 104))(v44 + v43, enum case for Calendar.Component.day(_:), v40);
    sub_1003A92C4(v44);
    swift_setDeallocating();
    v45 = v40;
    v46 = v79;
    (*(v41 + 8))(v44 + v43, v45);
    swift_deallocClassInstance();
    v47 = v69;
    Date.init()();
    v48 = v73;
    Calendar.dateComponents(_:from:to:)();

    v49 = *(v15 + 8);
    v49(v47, v46);
    (*(v77 + 8))(v38, v78);
    v50 = DateComponents.day.getter();
    LOBYTE(v44) = v51;
    (*(v75 + 8))(v48, v76);
    if (v44)
    {
      v52 = 90;
    }

    else
    {
      v52 = v50;
    }

    v37 = v52 > 89;
    if (v52 < 90)
    {
      v53 = v67;
      defaultLogger()();
      v54 = Logger.logObject.getter();
      v62 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v54, v62))
      {
LABEL_16:

        v70(v53, v72);
        v49(v80, v46);
        return v37;
      }

      v63 = swift_slowAlloc();
      *v63 = 134217984;
      *(v63 + 4) = v52;
      v57 = "Retention period has not elapsed...The gap between dates is %ld";
      v58 = v62;
      v59 = v54;
      v60 = v63;
      v61 = 12;
    }

    else
    {
      v53 = v68;
      defaultLogger()();

      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v54, v55))
      {

        goto LABEL_16;
      }

      v56 = swift_slowAlloc();
      *v56 = 134218240;
      *(v56 + 4) = 90;

      *(v56 + 12) = 2048;
      *(v56 + 14) = v52;
      v57 = "The %ld day retention period has elapsed. The gap between dates is -> %ld";
      v58 = v55;
      v59 = v54;
      v60 = v56;
      v61 = 22;
    }

    _os_log_impl(&_mh_execute_header, v59, v58, v57, v60, v61);
    v46 = v79;

    goto LABEL_16;
  }

  sub_100103444(v13);
  v37 = v72;
  (*(v70 + 13))(v72, enum case for DIPError.Code.identityProofingDataSharingConsentDateDoesntExist(_:), v71);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  return v37;
}

uint64_t sub_1001800D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100849400, &unk_1006BFBB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100180164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Logger();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return _swift_task_switch(sub_10018027C, 0, 0);
}

uint64_t sub_10018027C()
{
  v1 = v0[16];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Check if there are any pending provisionings for identity type", v4, 2u);
  }

  v5 = v0[16];
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[6];

  v9 = *(v7 + 8);
  v0[17] = v9;
  v9(v5, v6);
  v10 = v8[6];
  v11 = v8[7];
  sub_10000BA08(v8 + 3, v10);
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  v0[18] = v13;
  v15 = *(v11 + 32);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = sub_10018046C;

  return v19(v12, v14, v10, v11);
}

uint64_t sub_10018046C(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_10018058C, 0, 0);
}

uint64_t sub_10018058C()
{
  if (v0[20])
  {
    v1 = v0[15];
    defaultLogger()();
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Pending Provisionings exists for identity type.", v4, 2u);
    }

    v5 = v0[17];
    v6 = v0[15];
    v7 = v0[7];
    v8 = v0[8];

    v5(v6, v7);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_10018080C;
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    return sub_100181C28(v12, v10, v11);
  }

  else
  {
    v14 = v0[9];
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[17];
    v20 = v0[8];
    v19 = v0[9];
    v21 = v0[7];
    if (v17)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "There are no pending provisionings for identity type", v22, 2u);
    }

    v18(v19, v21);
    v24 = v0[15];
    v23 = v0[16];
    v26 = v0[13];
    v25 = v0[14];
    v28 = v0[11];
    v27 = v0[12];
    v30 = v0[9];
    v29 = v0[10];

    v31 = v0[1];

    return v31(0);
  }
}

uint64_t sub_10018080C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 168);
  v8 = *v3;
  v4[22] = a1;
  v4[23] = a2;
  v4[24] = v2;

  if (v2)
  {
    v6 = sub_100181268;
  }

  else
  {
    v6 = sub_100180924;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_100180924()
{
  v114 = v0;
  v1 = v0[23];
  v2 = v0[14];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[22];
    v5 = v0[23];
    v108 = v0[17];
    v7 = v0[14];
    v8 = v0[7];
    v9 = v0[8];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v113[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_100141FE4(v6, v5, v113);
    _os_log_impl(&_mh_execute_header, v3, v4, "Filter the Pending Provisionings based on the credential identifier: %s of the identity credential type", v10, 0xCu);
    sub_10000BB78(v11);

    v108(v7, v8);
  }

  else
  {
    v12 = v0[17];
    v13 = v0[14];
    v14 = v0[7];
    v15 = v0[8];

    v12(v13, v14);
  }

  v16 = v0[20];
  if (v16 >> 62)
  {
    goto LABEL_30;
  }

  v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v17)
  {
LABEL_31:

    v36 = _swiftEmptyArrayStorage < 0 || (_swiftEmptyArrayStorage & 0x4000000000000000) != 0;
    if (v36)
    {
      v37 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v37 = _swiftEmptyArrayStorage[2];
    }

    v38 = v0[23];
    if (v37 <= 0)
    {
      v65 = v0[10];

      defaultLogger()();

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();

      v68 = os_log_type_enabled(v66, v67);
      v69 = v0[23];
      if (v68)
      {
        v70 = v0[22];
        v112 = v0[17];
        v71 = v0[10];
        v72 = v0[7];
        v73 = v0[8];
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v113[0] = v75;
        *v74 = 136315138;
        v76 = sub_100141FE4(v70, v69, v113);

        *(v74 + 4) = v76;
        v77 = "PendingProvisioning doesn't exist for the credential identifier %s";
LABEL_51:
        _os_log_impl(&_mh_execute_header, v66, v67, v77, v74, 0xCu);
        sub_10000BB78(v75);

        v112(v71, v72);
LABEL_57:
        v90 = 0;
LABEL_58:
        v96 = v0[15];
        v95 = v0[16];
        v98 = v0[13];
        v97 = v0[14];
        v100 = v0[11];
        v99 = v0[12];
        v102 = v0[9];
        v101 = v0[10];

        v103 = v0[1];

        v103(v90);
        return;
      }

      v91 = v0[17];
      v92 = v0[10];
LABEL_56:
      v93 = v0[7];
      v94 = v0[8];

      v91(v92, v93);
      goto LABEL_57;
    }

    v39 = v0[13];
    defaultLogger()();

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v43 = v0[22];
      v42 = v0[23];
      v106 = v0[13];
      v110 = v0[17];
      v44 = v0[8];
      v104 = v0[7];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v113[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_100141FE4(v43, v42, v113);
      _os_log_impl(&_mh_execute_header, v40, v41, "Pending provisionings exists for the credential Identifier %s", v45, 0xCu);
      sub_10000BB78(v46);

      v110(v106, v104);
      if (!v36)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v78 = v0[17];
      v79 = v0[13];
      v80 = v0[7];
      v81 = v0[8];

      v78(v79, v80);
      if (!v36)
      {
LABEL_39:
        v47 = v0[23];
        if (_swiftEmptyArrayStorage[2])
        {
LABEL_40:

          if ((_swiftEmptyArrayStorage & 0xC000000000000001) != 0)
          {
            v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!_swiftEmptyArrayStorage[2])
            {
              __break(1u);
              return;
            }

            v48 = _swiftEmptyArrayStorage[4];
          }

          v49 = v48;

          v50 = v0[12];
          v51 = [v49 status];
          defaultLogger()();
          v52 = Logger.logObject.getter();
          v53 = static os_log_type_t.debug.getter();
          v54 = os_log_type_enabled(v52, v53);
          v55 = v0[17];
          v56 = v0[12];
          v58 = v0[7];
          v57 = v0[8];
          if (v54)
          {
            v111 = v0[12];
            v59 = swift_slowAlloc();
            v107 = v58;
            v60 = swift_slowAlloc();
            v113[0] = v60;
            *v59 = 136315138;
            v0[2] = v51;
            type metadata accessor for PKPendingProvisioningStatus(0);
            v61 = String.init<A>(describing:)();
            v105 = v55;
            v63 = v51;
            v64 = sub_100141FE4(v61, v62, v113);

            *(v59 + 4) = v64;
            v51 = v63;
            _os_log_impl(&_mh_execute_header, v52, v53, "The provisioning status of the pending provisioning is %s", v59, 0xCu);
            sub_10000BB78(v60);

            v105(v111, v107);
          }

          else
          {

            v55(v56, v58);
          }

          v90 = (v51 - 1) < 4;
          goto LABEL_58;
        }

        goto LABEL_49;
      }
    }

    v82 = _CocoaArrayWrapper.endIndex.getter();
    v83 = v0[23];
    if (v82)
    {
      goto LABEL_40;
    }

LABEL_49:
    v84 = v0[11];

    defaultLogger()();

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();

    v85 = os_log_type_enabled(v66, v67);
    v86 = v0[23];
    if (v85)
    {
      v87 = v0[22];
      v112 = v0[17];
      v71 = v0[11];
      v72 = v0[7];
      v88 = v0[8];
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v113[0] = v75;
      *v74 = 136315138;
      v89 = sub_100141FE4(v87, v86, v113);

      *(v74 + 4) = v89;
      v77 = "unable to retrieve the first pending provisioning for credential identifier %s";
      goto LABEL_51;
    }

    v91 = v0[17];
    v92 = v0[11];
    goto LABEL_56;
  }

  while (1)
  {
    v18 = v16 & 0xFFFFFFFFFFFFFF8;
    v19 = v0[24];
    v20 = v16 & 0xC000000000000001;
    if ((v16 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v16 + 32);
      goto LABEL_9;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    v17 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v0[20];
    if (!v17)
    {
      goto LABEL_31;
    }
  }

  v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_9:
  v22 = v0[22];
  v23 = v0[23];
  v109 = v21;
  v113[0] = v21;
  v24 = sub_100181338(v113, v22, v23);
  if (v19)
  {
    goto LABEL_10;
  }

  if (v24)
  {
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v26 = _swiftEmptyArrayStorage[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (v17 != 1)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v17 == 1)
  {
LABEL_17:
    v27 = v0[20];
    goto LABEL_31;
  }

LABEL_18:
  v28 = (v16 + 40);
  v29 = 1;
  while (v20)
  {
    v35 = v0[20];
    v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v31 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      goto LABEL_28;
    }

LABEL_24:
    v32 = v0[22];
    v33 = v0[23];
    v109 = v30;
    v113[0] = v30;
    if (sub_100181338(v113, v32, v33))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v34 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    ++v29;
    ++v28;
    if (v31 == v17)
    {
      goto LABEL_17;
    }
  }

  if (v29 >= *(v18 + 16))
  {
    goto LABEL_29;
  }

  v30 = *v28;
  v31 = v29 + 1;
  if (!__OFADD__(v29, 1))
  {
    goto LABEL_24;
  }

LABEL_28:
  __break(1u);
LABEL_10:
  v25 = v0[20];
}

uint64_t sub_100181268()
{
  v1 = v0[20];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v4 = v0[14];
  v7 = v0[11];
  v6 = v0[12];
  v9 = v0[9];
  v8 = v0[10];

  v10 = v0[1];
  v11 = v0[24];

  return v10(0);
}

uint64_t sub_100181338(void **a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v38 - v13;
  __chkstk_darwin(v12);
  v16 = &v38 - v15;
  v17 = *a1;
  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (!v18)
  {
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "PendingProvisioning is not of type PKPendingIdentityCredential.", v30, 2u);
    }

    (*(v7 + 8))(v16, v6);
    return 0;
  }

  v19 = v18;
  v20 = v17;
  v21 = [v19 credentialIdentifier];
  if (!v21)
  {
    defaultLogger()();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Credential Identifier doesn't exist in the pending provisioning.", v33, 2u);
    }

    (*(v7 + 8))(v14, v6);
    return 0;
  }

  v22 = v21;
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v23 == a2 && v25 == a3)
  {
  }

  else
  {
    v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v27 & 1) == 0)
    {

      return 0;
    }
  }

  defaultLogger()();
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Found the credential identifier in the proofing session that matches the pending provisioning credential identifier", v37, 2u);
  }

  (*(v7 + 8))(v11, v6);
  return 1;
}

void sub_100181698(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v38 = a4;
  v39 = a3;
  v6 = type metadata accessor for Logger();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError.Code();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v41;
  sub_10057BE48(a1, a2);
  if (!v15)
  {
    v41 = a1;
    v17 = v40;
    v37 = v6;
    if (v16)
    {
      v36 = v16;
      v18 = [v16 credentialIdentifier];
      v19 = v11;
      if (v18)
      {
        v20 = v18;
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;
      }

      else
      {
        v21 = 0;
        v23 = 0;
      }

      v26 = v17;
      v27 = v39;
      swift_beginAccess();
      v28 = *(v27 + 24);
      *(v27 + 16) = v21;
      *(v27 + 24) = v23;

      if (v23)
      {
        v29 = v26;
        v30 = v21;

        defaultLogger()();

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          *v33 = 136315394;
          *(v33 + 4) = sub_100141FE4(v30, v23, &v44);
          *(v33 + 12) = 2080;
          *(v33 + 14) = sub_100141FE4(v41, a2, &v44);
          _os_log_impl(&_mh_execute_header, v31, v32, "Credential Identifier: %s exists for the proofing session with proofingSessionID: %s", v33, 0x16u);
          swift_arrayDestroy();
        }

        (*(v29 + 8))(v9, v37);
        v34 = v38;
        *v38 = v30;
        v34[1] = v23;
      }

      else
      {
        (*(v19 + 104))(v14, enum case for DIPError.Code.credentialIdentifierDoesNotExist(_:), v10);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100037214();
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
      }
    }

    else
    {
      v42 = 0;
      v43 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v24._countAndFlagsBits = 0xD000000000000033;
      v24._object = 0x80000001007034F0;
      String.append(_:)(v24);
      v25._countAndFlagsBits = v41;
      v25._object = a2;
      String.append(_:)(v25);
      (*(v11 + 104))(v14, enum case for DIPError.Code.proofingSessionDoesntExist(_:), v10);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100037214();
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }
}

uint64_t sub_100181BC4()
{
  v1 = *(v0 + 16);

  sub_10000BB78((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_100181C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_100181D48, 0, 0);
}

uint64_t sub_100181D48()
{
  v32 = v0;
  v1 = v0[12];
  v2 = v0[5];
  defaultLogger()();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[11];
  v6 = v0[12];
  v8 = v0[10];
  if (v5)
  {
    v10 = v0[4];
    v9 = v0[5];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100141FE4(v10, v9, &v31);
    _os_log_impl(&_mh_execute_header, v3, v4, "Retrieving the credential Identifier for the proofing session with proofingSessionID: %s", v11, 0xCu);
    sub_10000BB78(v12);
  }

  (*(v7 + 8))(v6, v8);
  type metadata accessor for IdentityProofingDataContext();
  swift_allocObject();
  sub_10057E28C();
  v0[13] = v13;
  v14 = v0[9];
  v15 = v0[8];
  v29 = v0[7];
  v17 = v0[5];
  v16 = v0[6];
  v18 = v0[4];
  v19 = v13;
  v20 = swift_allocObject();
  v0[14] = v20;
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v21 = swift_allocObject();
  v0[15] = v21;
  v21[2] = v19;
  v21[3] = v18;
  v21[4] = v17;
  v21[5] = v16;
  v21[6] = v20;
  v30 = *(v19 + 16);
  v22 = swift_allocObject();
  v0[16] = v22;
  *(v22 + 16) = sub_1001823A0;
  *(v22 + 24) = v21;
  v23 = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);
  v24 = *(v15 + 104);

  v24(v14, v23, v29);
  v25 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v26 = swift_task_alloc();
  v0[17] = v26;
  *v26 = v0;
  v26[1] = sub_100182084;
  v27 = v0[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 2, v27, sub_1001823FC, v22, &type metadata for String);
}

uint64_t sub_100182084()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v13 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = v2[16];
    (*(v2[8] + 8))(v2[9], v2[7]);

    v5 = sub_100182294;
  }

  else
  {
    v7 = v2[15];
    v6 = v2[16];
    v9 = v2[8];
    v8 = v2[9];
    v10 = v2[7];

    (*(v9 + 8))(v8, v10);
    v11 = v2[3];
    v2[19] = v2[2];
    v2[20] = v11;
    v5 = sub_100182204;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100182204()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];
  v6 = v0[19];
  v7 = v0[20];

  return v5(v6, v7);
}

uint64_t sub_100182294()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = v0[18];
  v5 = v0[12];
  v6 = v0[9];

  v7 = v0[1];

  return v7();
}

uint64_t sub_100182320()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100182358()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

void sub_1001823A0(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  sub_100181698(*(v1 + 24), *(v1 + 32), *(v1 + 48), a1);
}

uint64_t sub_1001823C4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

void *sub_1001823FC@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(v8);
  if (!v2)
  {
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

uint64_t sub_10018689C(uint64_t a1, char a2, char a3, uint64_t a4)
{
  *(v5 + 64) = a4;
  *(v5 + 72) = v4;
  *(v5 + 201) = a3;
  *(v5 + 200) = a2;
  *(v5 + 56) = a1;
  v6 = type metadata accessor for DIPError.Code();
  *(v5 + 80) = v6;
  v7 = *(v6 - 8);
  *(v5 + 88) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 96) = swift_task_alloc();
  v9 = type metadata accessor for DIPError();
  *(v5 + 104) = v9;
  v10 = *(v9 - 8);
  *(v5 + 112) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  *(v5 + 128) = v12;
  v13 = *(v12 - 8);
  *(v5 + 136) = v13;
  v14 = *(v13 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();

  return _swift_task_switch(sub_100186A44, 0, 0);
}

uint64_t sub_100186A44()
{
  v39 = v0;
  v1 = *(v0 + 56);
  v2 = v1 >> 62;
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_31:
    v28 = *(v0 + 144);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v29 = os_log_type_enabled(v4, v5);
    v9 = *(v0 + 136);
    v7 = *(v0 + 144);
    v8 = *(v0 + 128);
    if (v29)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "No assets to upload, exiting";
      goto LABEL_33;
    }

LABEL_34:

    (*(v9 + 8))(v7, v8);
    v31 = *(v0 + 160);
    v30 = *(v0 + 168);
    v33 = *(v0 + 144);
    v32 = *(v0 + 152);
    v34 = *(v0 + 120);
    v35 = *(v0 + 96);

    v36 = *(v0 + 8);

    return v36();
  }

LABEL_30:
  if (_CocoaArrayWrapper.endIndex.getter() < 1)
  {
    goto LABEL_31;
  }

LABEL_3:
  if (qword_100832B50 != -1)
  {
    swift_once();
  }

  if (*(v0 + 201) == 1)
  {
    v3 = *(v0 + 168);
    defaultLogger()();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 168);
    v8 = *(v0 + 128);
    v9 = *(v0 + 136);
    if (v6)
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "User has opted out of uploading data on expensive network";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v4, v5, v11, v10, 2u);

      goto LABEL_34;
    }

    goto LABEL_34;
  }

  v12 = qword_100881E48;
  v13 = *(v0 + 64);
  if (v13)
  {
    dispatch_group_enter(v13);
  }

  if (v2)
  {
    v15 = *(v0 + 56);
    if (v1 < 0)
    {
      v16 = *(v0 + 56);
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    v14 = *(v0 + 56);
    if (!v2)
    {
      goto LABEL_26;
    }

LABEL_16:
    v17 = 0;
    v18 = v1 & 0xC000000000000001;
    v19 = v1 & 0xFFFFFFFFFFFFFF8;
    v20 = v14 + 32;
    while (1)
    {
      if (v18)
      {
        v23 = *(v0 + 56);
        v1 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          v14 = *(v0 + 56);
          goto LABEL_26;
        }
      }

      else
      {
        if (v17 >= *(v19 + 16))
        {
          __break(1u);
          goto LABEL_30;
        }

        v1 = *(v20 + 8 * v17);

        v21 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          goto LABEL_24;
        }
      }

      v22 = *(v0 + 200);
      v38 = v1;
      sub_10018736C(&v38, v22, 0);

      ++v17;
      if (v21 == v2)
      {
        goto LABEL_25;
      }
    }
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14 = *(v0 + 56);
  if (v2)
  {
    goto LABEL_16;
  }

LABEL_26:
  v24 = *(v0 + 200);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v25 = swift_task_alloc();
  *(v0 + 176) = v25;
  *(v25 + 16) = v12;
  *(v25 + 24) = v14;
  *(v25 + 32) = 1;
  *(v25 + 33) = v24;
  *(v25 + 40) = v0 + 16;
  v26 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v27 = swift_task_alloc();
  *(v0 + 184) = v27;
  *v27 = v0;
  v27[1] = sub_100186E28;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v27, 0, 0, 0xD00000000000003FLL, 0x80000001006FCEC0, sub_1000492B4, v25, &type metadata for () + 8);
}

uint64_t sub_100186E28()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_1001870AC;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_100186F44;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100186F44()
{
  v1 = *(v0 + 160);
  sub_10000BE18(v0 + 16, &qword_100834128, &unk_1006DDA60);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Upload has successfully completed!", v4, 2u);
  }

  v5 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v8 = *(v0 + 64);

  (*(v7 + 8))(v5, v6);
  if (v8)
  {
    dispatch_group_leave(*(v0 + 64));
  }

  v10 = *(v0 + 160);
  v9 = *(v0 + 168);
  v12 = *(v0 + 144);
  v11 = *(v0 + 152);
  v13 = *(v0 + 120);
  v14 = *(v0 + 96);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001870AC()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v20 = *(v0 + 120);
  v21 = *(v0 + 112);
  v22 = *(v0 + 136);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v23 = *(v0 + 72);
  v24 = *(v0 + 128);
  v25 = *(v0 + 64);

  sub_10000BE18(v0 + 16, &qword_100834128, &unk_1006DDA60);
  (*(v6 + 104))(v5, enum case for DIPError.Code.internalError(_:), v7);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  swift_errorRetain();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  sub_100037214();
  swift_allocError();
  v8 = *(v21 + 16);
  v8(v9, v20, v4);
  defaultLogger()();
  DIPRecordError(_:message:log:)();
  (*(v22 + 8))(v3, v24);

  v10 = *(v23 + 40);
  *(v23 + 40) = v1;

  swift_allocError();
  v8(v11, v20, v4);
  swift_willThrow();

  (*(v21 + 8))(v20, v4);
  if (v25)
  {
    dispatch_group_leave(*(v0 + 64));
  }

  v13 = *(v0 + 160);
  v12 = *(v0 + 168);
  v15 = *(v0 + 144);
  v14 = *(v0 + 152);
  v16 = *(v0 + 120);
  v17 = *(v0 + 96);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_10018736C(uint64_t *a1, int a2, int a3)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  defaultLogger()();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v30 = a2;
    v31 = a3;
    v32 = v3;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136446722;
    v17 = 0xEF746E6F7246746ELL;
    v18 = *(v12 + 48);
    v19 = 0xED00006F65646956;
    v20 = 0x7373656E6576696CLL;
    v21 = 0xEE006F6564695679;
    v22 = 0x7261696C69787561;
    if (v18 != 4)
    {
      v22 = 0x5464696C61766E69;
      v21 = 0xEB00000000657079;
    }

    if (v18 != 3)
    {
      v20 = v22;
      v19 = v21;
    }

    v23 = 0xEE006B636142746ELL;
    v24 = 0x6569666C6573;
    if (v18 == 1)
    {
      v24 = 0x656D75636F446469;
    }

    else
    {
      v23 = 0xE600000000000000;
    }

    if (*(v12 + 48))
    {
      v25 = v24;
    }

    else
    {
      v25 = 0x656D75636F446469;
    }

    if (*(v12 + 48))
    {
      v17 = v23;
    }

    if (*(v12 + 48) <= 2u)
    {
      v26 = v25;
    }

    else
    {
      v26 = v20;
    }

    if (*(v12 + 48) <= 2u)
    {
      v27 = v17;
    }

    else
    {
      v27 = v19;
    }

    v28 = sub_100141FE4(v26, v27, &v33);

    *(v15 + 4) = v28;
    *(v15 + 12) = 1024;
    *(v15 + 14) = v30 & 1;
    *(v15 + 18) = 1024;
    *(v15 + 20) = v31 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "Starting to upload asset of type %{public}s with options allowsCellularAccess: %{BOOL}d and shouldScheduleUploads: %{BOOL}d", v15, 0x18u);
    sub_10000BB78(v16);

    return (*(v8 + 8))(v11, v7);
  }

  else
  {

    return (*(v8 + 8))(v11, v7);
  }
}

uint64_t sub_100187658()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  sub_10000BE18(v0 + OBJC_IVAR____TtC8coreidvd34IdentityProofingAssetUploadManager_livenessFlowInternalDiagnosticsVideoURL, &unk_100844540, &unk_1006BFBC0);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IdentityProofingAssetUploadManager()
{
  result = qword_10083C910;
  if (!qword_10083C910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100187740()
{
  sub_10002A514();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1001877EC()
{
  v0 = sub_10018782C();
  type metadata accessor for IdentityProofingBackgroundActivityManager();
  result = swift_allocObject();
  *(result + 16) = v0;
  qword_100882238 = result;
  return result;
}

void *sub_10018782C()
{
  v0 = type metadata accessor for Locale();
  v45 = *(v0 - 8);
  v46 = v0;
  v1 = *(v45 + 64);
  __chkstk_darwin(v0);
  v3 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for IdentityProofingBackgroundActivityScheduler();
  v43 = swift_allocObject();
  *(v43 + 16) = 3600;
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v4 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  type metadata accessor for IdentityProofingUploadsHelper();
  v6 = swift_allocObject();
  type metadata accessor for NetworkMonitor();
  *(v6 + 16) = static NetworkMonitor.shared.getter();
  *(v6 + 24) = v5;
  v42 = v6;
  type metadata accessor for BackgroundActivityManager();
  static BackgroundActivityManager.shared.getter();
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  v44 = v3;
  static Locale.current.getter();
  v7 = swift_allocObject();
  v41 = swift_allocObject();
  *(v41 + 16) = v7;
  v8 = type metadata accessor for IdentityProofingAttributeConfigHelper();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  v11 = IdentityProofingAttributeConfigHelper.init()();
  type metadata accessor for IdentityProofingAssetsProvider();
  v40 = swift_allocObject();
  *(v40 + 16) = v11;
  if (qword_100832C50 != -1)
  {
    swift_once();
  }

  v38 = qword_100882310;
  type metadata accessor for IdentityProofingPendingActionsFlowFactory();
  v39 = swift_allocObject();
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  type metadata accessor for IdentityProofingConfigProvider();
  v14 = swift_allocObject();

  v15 = sub_100188160();
  type metadata accessor for IdentityProofingDatabaseProvider();
  v16 = swift_allocObject();
  v17 = [objc_allocWithZone(PKPaymentService) init];
  v48 = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  v49 = &off_10080C410;
  *&v47 = v17;
  type metadata accessor for IdentityPendingProvisioningManager();
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  sub_10001F358(&v47, v18 + 24);
  type metadata accessor for PassManager();
  v37 = swift_allocObject();
  v36 = sub_100187DB4();
  v19 = swift_allocObject();
  v48 = &type metadata for IdentityProofingConnectToWifiAlertProvider;
  v49 = &off_10080D7A0;
  v20 = swift_allocObject();
  *&v47 = v20;
  v20[2] = v13;
  v20[3] = v14;
  v20[4] = v15;
  v20[5] = 0x4024000000000000;
  v21 = type metadata accessor for IdentityProofingBackgroundActivityProvider();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  v25 = sub_10001F370(&v47, &type metadata for IdentityProofingConnectToWifiAlertProvider);
  __chkstk_darwin(v25);
  v27 = &v35 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  v29 = *(v27 + 2);
  v30 = *(v27 + 3);
  v31 = (v24 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_connectToWifiAlertProvider);
  v31[3] = &type metadata for IdentityProofingConnectToWifiAlertProvider;
  v31[4] = &off_10080D7A0;
  v32 = swift_allocObject();
  *v31 = v32;
  *(v32 + 16) = *v27;
  *(v32 + 32) = v29;
  *(v32 + 40) = v30;
  v33 = v43;
  v24[2] = &off_1007FB220;
  v24[3] = v33;
  v24[4] = v42;
  sub_10001F358(v51, (v24 + 5));
  sub_10001F358(&v50, (v24 + 10));
  (*(v45 + 32))(v24 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_locale, v44, v46);
  *(v24 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_workflowProvider) = v41;
  *(v24 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_assetProvider) = v40;
  *(v24 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_proofingUpdateManager) = v38;
  *(v24 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_pendingActionsFlowFactory) = v39;
  *(v24 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_pendingProvisioning) = v18;
  *(v24 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_passManager) = v37;
  *(v24 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_cleanupProvider) = v36;
  *(v24 + OBJC_IVAR____TtC8coreidvd42IdentityProofingBackgroundActivityProvider_databaseProvider) = v19;
  sub_10000BB78(&v47);
  return v24;
}

uint64_t sub_100187DB4()
{
  v0 = type metadata accessor for DispatchQoS.QoSClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for IdentityProofingActionNotificationFlow();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  sub_10001F8D4(0, &qword_100845BD0, OS_dispatch_queue_ptr);
  (*(v1 + 104))(v4, enum case for DispatchQoS.QoSClass.default(_:), v0);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v1 + 8))(v4, v0);
  v20[3] = v5;
  v20[4] = &off_10080ADD0;
  v20[0] = v6;
  type metadata accessor for IdentityProofingCleanupProvider();
  v8 = swift_allocObject();
  v9 = sub_10001F370(v20, v5);
  v10 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12);
  v14 = *v12;
  v18 = v5;
  v19 = &off_10080ADD0;
  *&v17 = v14;
  swift_unknownObjectWeakInit();
  if (qword_1008824A8)
  {
    v15 = *(qword_1008824A8 + 152);
  }

  else
  {
    v15 = 0;
  }

  swift_unknownObjectWeakAssign();

  sub_10001F358(&v17, v8 + 24);
  *(v8 + 64) = v7;
  sub_10000BB78(v20);
  return v8;
}

uint64_t sub_100188010()
{
  v1 = *(v0 + 16);
  sub_100020260(v1 + 40, v3);
  sub_10000BA08(v3, v4);
  swift_retain_n();
  dispatch thunk of BackgroundActivityManaging.registerActivity(identifier:activity:)();

  sub_10000BB78(v3);
  sub_100020260(v1 + 40, v3);
  sub_10000BA08(v3, v4);

  dispatch thunk of BackgroundActivityManaging.registerActivity(identifier:activity:)();

  return sub_10000BB78(v3);
}

uint64_t sub_100188160()
{
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v0 = [objc_allocWithZone(PKPaymentService) init];
  v22[3] = sub_10001F8D4(0, &unk_1008458A0, PKPaymentService_ptr);
  v22[4] = &off_10080C410;
  v22[0] = v0;
  type metadata accessor for IdentityProofingConfigProvider();
  v1 = swift_allocObject();
  v2 = type metadata accessor for IdentityProofingTextReplacementProvider();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = IdentityProofingTextReplacementProvider.init()();
  type metadata accessor for IdentityProofingDeviceMigrationManagerFactory();
  v6 = swift_allocObject();
  type metadata accessor for IdentityProofingWorkflowProvider();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = type metadata accessor for IdentityProofingUserNotificationProvider();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  *(v11 + 56) = 0u;
  *(v11 + 72) = 0u;
  *(v11 + 88) = 0;
  v12 = OBJC_IVAR____TtC8coreidvd40IdentityProofingUserNotificationProvider_staticWorkflow;
  v13 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  sub_100020260(v22, v11 + 16);
  sub_1001883F8(v23, &v17);
  if (!v18)
  {
    if (qword_1008824A8 && (v14 = *(qword_1008824A8 + 152)) != 0)
    {
      *(&v20 + 1) = type metadata accessor for IdentityWatchSessionManagementListener();
      v21 = &off_10080C438;
      *&v19 = v14;
      v15 = v14;
      sub_100188468(v23);
      sub_10000BB78(v22);
      if (!v18)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_100188468(v23);
      sub_10000BB78(v22);
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      if (!v18)
      {
        goto LABEL_9;
      }
    }

    sub_100188468(&v17);
    goto LABEL_9;
  }

  sub_100188468(v23);
  sub_10000BB78(v22);
  sub_10001F358(&v17, &v19);
LABEL_9:
  swift_beginAccess();
  sub_1001884D0(&v19, v11 + 56);
  swift_endAccess();
  *(v11 + 96) = v1;
  *(v11 + 104) = v5;
  *(v11 + 112) = v7;
  return v11;
}

uint64_t sub_1001883B0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1001883F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100845E80, &qword_1006DAD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100188468(uint64_t a1)
{
  v2 = sub_100007224(&unk_100845E80, &qword_1006DAD90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001884D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&unk_100845E80, &qword_1006DAD90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100188540(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_10027DD00(a1, a2);
}

uint64_t sub_1001885E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_10027DD00(a1, a2);
}

void sub_100188690(uint64_t a1, void *a2)
{
  v4 = sub_100007224(&qword_10083CC58, &qword_1006DAE48);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  if (a2[5])
  {
    v9 = a2[3];
    v10 = a2[4];
    v11 = a2[5];

    v12 = String._bridgeToObjectiveC()();

    (*(v5 + 16))(v8, a1, v4);
    v13 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v14 = swift_allocObject();
    (*(v5 + 32))(v14 + v13, v8, v4);
    aBlock[4] = sub_100189A1C;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100188918;
    aBlock[3] = &unk_10080A368;
    v15 = _Block_copy(aBlock);

    [v9 isAccountKeySigningKeyAvailableForAccountKeyIdentifier:v12 completion:v15];
    _Block_release(v15);
  }

  else
  {
    LOBYTE(aBlock[0]) = 0;
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100188894(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_100007224(&qword_10083CC58, &qword_1006DAE48);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_100007224(&qword_10083CC58, &qword_1006DAE48);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100188918(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_100188990()
{
  v1[3] = v0;
  v2 = type metadata accessor for DIPError.Code();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  v1[7] = v5;
  v6 = *(v5 - 8);
  v1[8] = v6;
  v7 = *(v6 + 64) + 15;
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_100188AAC, 0, 0);
}

uint64_t sub_100188AAC()
{
  v1 = v0[9];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Attempting to create or retrieve Account key signing key", v4, 2u);
  }

  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[3];

  (*(v6 + 8))(v5, v7);
  v9 = *(v8 + 40);
  v0[10] = v9;
  if (v9)
  {
    v10 = v0[3];
    v11 = *(v10 + 32);
    v12 = swift_task_alloc();
    v0[11] = v12;
    v12[2] = v10;
    v12[3] = v11;
    v12[4] = v9;
    v13 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];

    v14 = swift_task_alloc();
    v0[12] = v14;
    v15 = sub_100189ACC();
    *v14 = v0;
    v14[1] = sub_100188DA0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD00000000000001ELL, 0x8000000100703AD0, sub_100189AC0, v12, v15);
  }

  else
  {
    (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.unableToCreateAccountKeySigningKeyLabel(_:), v0[4]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v16 = v0[9];
    v17 = v0[6];

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_100188DA0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_100188F3C;
  }

  else
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);

    v4 = sub_100188EC4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100188EC4()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[2];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100188F3C()
{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[13];
  v4 = v0[9];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

void sub_100188FBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083CC68, &unk_1006DAE50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = aBlock - v7;
  v9 = *(a2 + 24);
  v10 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(v8, a1, v4);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  (*(v5 + 32))(v12 + v11, v8, v4);
  aBlock[4] = sub_100189BB0;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001335C;
  aBlock[3] = &unk_10080A3B8;
  v13 = _Block_copy(aBlock);

  [v9 retrieveAccountKeySigningKeyForAccountKeyIdentifier:v10 completion:v13];
  _Block_release(v13);
}

uint64_t sub_100189190(void *a1, uint64_t a2, uint64_t a3)
{
  v33[1] = a3;
  v5 = type metadata accessor for DIPError.Code();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPError();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = 0;
  if (a2)
  {
    v21 = v18;
    swift_errorRetain();
    defaultLogger()();
    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = Error.localizedDescription.getter();
      v28 = sub_100141FE4(v26, v27, &v34);

      *(v24 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Received an error while retrieving the account key signing key %s", v24, 0xCu);
      sub_10000BB78(v25);
    }

    (*(v16 + 8))(v20, v21);
    v35 = 1;
    v34 = a2;
    sub_100007224(&qword_10083CC68, &unk_1006DAE50);
    CheckedContinuation.resume(throwing:)();
  }

  else if (a1)
  {
    v34 = a1;
    v29 = a1;
    sub_100007224(&qword_10083CC68, &unk_1006DAE50);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    (*(v6 + 104))(v9, enum case for DIPError.Code.unableToRetrieveAccountKeySigningKey(_:), v5);
    sub_1000402AC(_swiftEmptyArrayStorage);
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    v35 = 1;
    sub_100037214();
    v30 = swift_allocError();
    (*(v11 + 16))(v31, v14, v10);
    v34 = v30;
    sub_100007224(&qword_10083CC68, &unk_1006DAE50);
    CheckedContinuation.resume(throwing:)();
    (*(v11 + 8))(v14, v10);
  }

  return sub_1001895F4(&v35);
}

uint64_t sub_1001895F4(_BYTE *a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = __chkstk_darwin(v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    defaultLogger()();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Did encounter an error while retrieving the account key signing key for a given accountKeyIdentifier ", v10, 2u);
    }

    (*(v3 + 8))(v7, v2);
    type metadata accessor for DaemonAnalytics();
    return static DaemonAnalytics.sendAccountKeySigningKeyUnavailableEvent()();
  }

  return result;
}

uint64_t sub_100189748()
{
  v1 = *(v0 + 40);

  sub_10000BB78((v0 + 48));

  return swift_deallocClassInstance();
}

uint64_t sub_1001897DC()
{
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1001898B4;
  v3 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 40, 0, 0, 0xD00000000000001FLL, 0x8000000100703A20, sub_100189A00, v3, &type metadata for Bool);
}

uint64_t sub_1001898B4()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_1001899E4;
  }

  else
  {
    v3 = sub_1001899C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100189A1C(uint64_t a1, uint64_t a2)
{
  v4 = *(*(sub_100007224(&qword_10083CC58, &qword_1006DAE48) - 8) + 80);

  return sub_100188894(a1, a2);
}

uint64_t sub_100189AA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_100189AC0(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[4];
  sub_100188FBC(a1, v1[2]);
}

unint64_t sub_100189ACC()
{
  result = qword_10083CC60;
  if (!qword_10083CC60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10083CC60);
  }

  return result;
}

uint64_t sub_100189B2C(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100007224(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return _swift_deallocObject(v2, v6 + v7, v5 | 7);
}

uint64_t sub_100189BB0(void *a1, uint64_t a2)
{
  v5 = *(sub_100007224(&qword_10083CC68, &unk_1006DAE50) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100189190(a1, a2, v6);
}

void *sub_100189C68(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  type metadata accessor for IdentityProofingDeviceMigrationManager();
  v4 = swift_allocObject();
  v4[2] = 0;
  if (qword_100832C20 != -1)
  {
    swift_once();
  }

  v5 = *(qword_100882228 + 16);
  v4[3] = v5;
  v4[4] = a1;
  v4[5] = a2;
  sub_10001F358(&v8, (v4 + 6));
  v6 = v5;

  return v4;
}

uint64_t sub_100189D38(uint64_t a1, uint64_t a2)
{
  v3[54] = a2;
  v3[55] = v2;
  v3[53] = a1;
  v4 = type metadata accessor for IdentityProofingDisplayMessage();
  v3[56] = v4;
  v5 = *(v4 - 8);
  v3[57] = v5;
  v6 = *(v5 + 64) + 15;
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v7 = *(*(sub_100007224(&qword_10083BD28, &qword_1006DA240) - 8) + 64) + 15;
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v8 = *(*(sub_100007224(&unk_100845860, &unk_1006BF9D0) - 8) + 64) + 15;
  v3[67] = swift_task_alloc();
  v9 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v3[68] = v9;
  v10 = *(v9 - 8);
  v3[69] = v10;
  v11 = *(v10 + 64) + 15;
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v12 = *(*(type metadata accessor for IdentityProofingStaticWorkflow(0) - 8) + 64) + 15;
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v13 = type metadata accessor for DIPError.Code();
  v3[78] = v13;
  v14 = *(v13 - 8);
  v3[79] = v14;
  v15 = *(v14 + 64) + 15;
  v3[80] = swift_task_alloc();
  v16 = type metadata accessor for IdentityDocumentType.Category();
  v3[81] = v16;
  v17 = *(v16 - 8);
  v3[82] = v17;
  v18 = *(v17 + 64) + 15;
  v3[83] = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  v3[84] = v19;
  v20 = *(v19 - 8);
  v3[85] = v20;
  v21 = *(v20 + 64) + 15;
  v3[86] = swift_task_alloc();
  v3[87] = swift_task_alloc();
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();
  v3[92] = swift_task_alloc();
  v3[93] = swift_task_alloc();

  return _swift_task_switch(sub_10018A0F8, 0, 0);
}

uint64_t sub_10018A0F8()
{
  v183 = v0;
  v1 = *(v0 + 744);
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "STARTING prepareForProofingDisplay", v4, 2u);
  }

  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);
  v9 = *(v0 + 432);
  v10 = *(v0 + 440);
  v11 = *(v0 + 424);

  v12 = *(v7 + 8);
  *(v0 + 752) = v12;
  v12(v5, v8);
  v13 = *(v10 + 16);
  v175 = v10;
  *(v10 + 16) = v11;
  v14 = v11;

  if (v9 == 2)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  defaultLogger()();
  v16 = v14;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 736);
  v21 = *(v0 + 680);
  v22 = *(v0 + 672);
  v177 = v15;
  if (v19)
  {
    v179 = *(v0 + 736);
    v23 = *(v0 + 424);
    v24 = swift_slowAlloc();
    *&v181 = swift_slowAlloc();
    *v24 = 136446466;
    v25 = IdentityTarget.debugDescription.getter();
    v27 = sub_100141FE4(v25, v26, &v181);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    IdentityProofingConfiguration.documentType.getter();
    v28 = IdentityDocumentType.description.getter();
    v30 = sub_100141FE4(v28, v29, &v181);

    *(v24 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v17, v18, "The proofing target is %{public}s documentType: %s", v24, 0x16u);
    swift_arrayDestroy();

    v12(v179, v22);
  }

  else
  {

    v12(v20, v22);
  }

  v31 = *(v0 + 424);
  v32 = IdentityProofingConfiguration.credentialIdentifier.getter();
  if (!v33)
  {
    goto LABEL_16;
  }

  v34 = v32;
  v35 = v33;

  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v37 = *(v0 + 728);
    defaultLogger()();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Proofing has been invoked with a credential identifier, This is the XMAS watch scenario", v40, 2u);
    }

    v41 = *(v0 + 728);
    v42 = *(v0 + 680);
    v43 = *(v0 + 672);

    v12(v41, v43);
    v44 = 1;
  }

  else
  {
LABEL_16:
    v44 = 0;
  }

  *(v0 + 1544) = v44;
  v45 = *(v0 + 664);
  v46 = *(v0 + 656);
  v47 = *(v0 + 648);
  v48 = *(v0 + 424);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v49 = (*(v46 + 88))(v45, v47);
  if (v49 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v50 = *(v0 + 424);
    IdentityProofingConfiguration.state.getter();
    if (!v51)
    {
      v67 = *(v0 + 640);
      v68 = *(v0 + 632);
      v69 = *(v0 + 624);
      v70 = *(*(v0 + 440) + 152);

      sub_1001AC570();

      (*(v68 + 104))(v67, enum case for DIPError.Code.idStateUnavailable(_:), v69);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_29;
    }

    v173 = v44;
    v180 = v12;
    v52 = String.lowercased()();
    countAndFlagsBits = v52._countAndFlagsBits;
    object = v52._object;
  }

  else
  {
    if (v49 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v64 = *(v0 + 664);
      v65 = *(v0 + 656);
      v66 = *(v0 + 648);
      (*(*(v0 + 632) + 104))(*(v0 + 640), enum case for DIPError.Code.idTypeUnavailable(_:), *(v0 + 624));
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v65 + 8))(v64, v66);
LABEL_30:
      v83 = *(v0 + 744);
      v84 = *(v0 + 736);
      v85 = *(v0 + 728);
      v86 = *(v0 + 720);
      v87 = *(v0 + 712);
      v88 = *(v0 + 704);
      v89 = *(v0 + 696);
      v90 = *(v0 + 688);
      v91 = *(v0 + 664);
      v92 = *(v0 + 640);
      v154 = *(v0 + 616);
      v155 = *(v0 + 608);
      v156 = *(v0 + 600);
      v157 = *(v0 + 592);
      v158 = *(v0 + 584);
      v159 = *(v0 + 576);
      v160 = *(v0 + 568);
      v161 = *(v0 + 560);
      v162 = *(v0 + 536);
      v163 = *(v0 + 528);
      v164 = *(v0 + 520);
      v166 = *(v0 + 512);
      v168 = *(v0 + 504);
      v170 = *(v0 + 496);
      v172 = *(v0 + 488);
      v174 = *(v0 + 480);
      v176 = *(v0 + 472);
      v178 = *(v0 + 464);

      v93 = *(v0 + 8);

      return v93();
    }

    v180 = v12;
    v55 = *(v0 + 424);
    v56 = IdentityProofingConfiguration.country.getter();
    if (!v57)
    {
      v79 = *(v0 + 640);
      v80 = *(v0 + 632);
      v81 = *(v0 + 624);
      v82 = *(*(v0 + 440) + 152);

      sub_1001AC570();

      (*(v80 + 104))(v79, enum case for DIPError.Code.idCountryUnavailable(_:), v81);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_29;
    }

    countAndFlagsBits = v56;
    object = v57;
    v173 = v44;
  }

  v58 = *(v0 + 440);
  v59 = *(v0 + 424);
  v60 = *(v58 + 56);

  v61 = IdentityProofingConfiguration.documentType.getter();
  sub_1002E0DD4(countAndFlagsBits, object, v177, 0, 0, v61, &v181);
  v62 = v181;
  *(v0 + 760) = v181;
  v63 = v182;
  *(v0 + 776) = v182;

  v171 = v63;

  if (*(&v62 + 1))
  {
    v167 = *(v0 + 440);
    v169 = *(v0 + 424);
    v71 = *(v167 + 152);

    sub_1001AC570();

    v72 = *(v58 + 56);

    v73 = sub_1002E11B8(v62, *(&v62 + 1));
    v75 = v74;

    v165 = v73;
    *(v0 + 784) = v73;
    *(v0 + 792) = v75;
    v76 = *(v58 + 56);

    v77 = IdentityProofingConfiguration.documentType.getter();
    *(v0 + 800) = sub_1002E11E0(v62, *(&v62 + 1), v171, 0, v77, countAndFlagsBits, object);

    *(v0 + 808) = sub_1001A0380();
    *(v0 + 816) = v78;
    v105 = IdentityProofingActionStatus.rawValue.getter();
    if (v105 == IdentityProofingActionStatus.rawValue.getter())
    {
      *(v0 + 824) = *(*(v0 + 440) + 120);

      v106 = swift_task_alloc();
      *(v0 + 832) = v106;
      *v106 = v0;
      v106[1] = sub_10018B538;

      return sub_100180164(v62, *(&v62 + 1), v177);
    }

    v107 = IdentityProofingActionStatus.rawValue.getter();
    if (v107 == IdentityProofingActionStatus.rawValue.getter())
    {

      *(v0 + 984) = *(v167 + 152);

      v108 = swift_task_alloc();
      *(v0 + 992) = v108;
      *v108 = v0;
      v108[1] = sub_10018D22C;
      v109 = *(v0 + 424);

      return sub_1001B20D0(v109);
    }

    v110 = IdentityProofingActionStatus.rawValue.getter();
    if (v110 == IdentityProofingActionStatus.rawValue.getter())
    {
      v111 = *(v0 + 424);
      v112 = IdentityProofingConfiguration.documentType.getter();
      v113 = swift_task_alloc();
      *(v0 + 1112) = v113;
      *v113 = v0;
      v113[1] = sub_10018E888;
      v114 = *(v0 + 440);

      return sub_1001984EC(v112, v62, *(&v62 + 1), v171);
    }

    v115 = IdentityProofingActionStatus.rawValue.getter();
    if (v115 == IdentityProofingActionStatus.rawValue.getter() || (v116 = IdentityProofingActionStatus.rawValue.getter(), v116 == IdentityProofingActionStatus.rawValue.getter()))
    {
      v117 = *(v0 + 440);

      *(v0 + 1248) = *(v117 + 40);

      v118 = swift_task_alloc();
      *(v0 + 1256) = v118;
      *v118 = v0;
      v118[1] = sub_100190174;
      v119 = *(v0 + 424);

      return sub_100270B00(v0 + 120, v119, v62, *(&v62 + 1), v171, v165, v75);
    }

    v120 = IdentityProofingActionStatus.rawValue.getter();
    if (v120 == IdentityProofingActionStatus.rawValue.getter())
    {

      v121 = *(v175 + 16);
      *(v0 + 1280) = v121;
      if (v121)
      {
        v122 = *(v0 + 424);
        *(v0 + 1288) = *(*(v0 + 440) + 48);
        v123 = v121;

        v124 = sub_1001A0380();
        *(v0 + 1296) = v125;
        v148 = v124;
        v149 = v125;
        v150 = swift_task_alloc();
        *(v0 + 1304) = v150;
        *v150 = v0;
        v150[1] = sub_100190788;
        v186 = v123;
        v185 = v173;

        return sub_1002C1490(v0 + 24, v62, *(&v62 + 1), v171, v148, v149);
      }

      v140 = *(v0 + 640);
      v141 = *(v0 + 632);
      v142 = *(v0 + 624);

      (*(v141 + 104))(v140, enum case for DIPError.Code.proofingConfigurationUnavailable(_:), v142);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      goto LABEL_29;
    }

    v126 = IdentityProofingActionStatus.rawValue.getter();
    if (v126 == IdentityProofingActionStatus.rawValue.getter())
    {
      v127 = *(v0 + 528);
      v128 = *(v0 + 448);
      v129 = *(v0 + 456);
      v130 = *(v129 + 56);
      *(v0 + 1328) = v130;
      *(v0 + 1336) = (v129 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v130(v127, 1, 1, v128);
      v131 = swift_task_alloc();
      *(v0 + 1344) = v131;
      *v131 = v0;
      v131[1] = sub_100190D88;
      v132 = *(v0 + 520);
LABEL_62:
      v139 = *(v0 + 440);

      return sub_100199A40(v132, v62, *(&v62 + 1), v171);
    }

    v133 = IdentityProofingActionStatus.rawValue.getter();
    if (v133 == IdentityProofingActionStatus.rawValue.getter())
    {
      v134 = *(v0 + 496);
      v135 = *(v0 + 448);
      v136 = *(v0 + 456);
      v137 = *(v136 + 56);
      *(v0 + 1376) = v137;
      *(v0 + 1384) = (v136 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v137(v134, 1, 1, v135);
      v138 = swift_task_alloc();
      *(v0 + 1392) = v138;
      *v138 = v0;
      v138[1] = sub_100191F54;
      v132 = *(v0 + 488);
      goto LABEL_62;
    }

    v143 = IdentityProofingActionStatus.rawValue.getter();
    if (v143 == IdentityProofingActionStatus.rawValue.getter())
    {
      v144 = *(v0 + 424);
      *(v0 + 1440) = *(v167 + 152);

      v145 = IdentityProofingConfiguration.documentType.getter();
      v146 = swift_task_alloc();
      *(v0 + 1448) = v146;
      *v146 = v0;
      v146[1] = sub_10019334C;
      v147 = *(v0 + 592);

      return sub_1001AA1E4(v147, v145);
    }

    v151 = *(v0 + 640);
    v152 = *(v0 + 632);
    v153 = *(v0 + 624);

    (*(v152 + 104))(v151, enum case for DIPError.Code.serverUnavailable(_:), v153);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
LABEL_29:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    goto LABEL_30;
  }

  v95 = *(v0 + 688);

  defaultLogger()();
  v96 = Logger.logObject.getter();
  v97 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&_mh_execute_header, v96, v97, "No proofing attempt made. Check if there are other proofing sessions", v98, 2u);
  }

  v99 = *(v0 + 688);
  v100 = *(v0 + 680);
  v101 = *(v0 + 672);

  v180(v99, v101);
  v102 = swift_task_alloc();
  *(v0 + 1536) = v102;
  *v102 = v0;
  v102[1] = sub_10019431C;
  v103 = *(v0 + 440);
  v104 = *(v0 + 424);

  return sub_100195E94(v104, v173);
}

uint64_t sub_10018B538(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 832);
  v6 = *v2;
  *(*v2 + 840) = v1;

  if (v1)
  {
    v7 = sub_10019479C;
  }

  else
  {
    v8 = *(v4 + 824);
    v9 = *(v4 + 768);

    *(v4 + 1545) = a1 & 1;
    v7 = sub_10018B678;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10018B678()
{
  if (*(v0 + 1545) == 1)
  {
    *(v0 + 848) = *(*(v0 + 440) + 152);

    v1 = swift_task_alloc();
    *(v0 + 856) = v1;
    *v1 = v0;
    v1[1] = sub_10018B7B0;
    v2 = *(v0 + 424);

    return sub_1001B20D0(v2);
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 976) = v4;
    *v4 = v0;
    v4[1] = sub_10018CD74;
    v5 = *(v0 + 816);
    v6 = *(v0 + 808);
    v7 = *(v0 + 792);
    v8 = *(v0 + 784);
    v9 = *(v0 + 440);
    v10 = *(v0 + 424);

    return sub_100194F7C(v10, v6, v5, v8, v7);
  }
}

uint64_t sub_10018B7B0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 856);
  v7 = *v3;
  v5[108] = a1;
  v5[109] = a2;

  v8 = v4[106];
  if (v2)
  {
    v9 = v5[102];
    v10 = v5[99];

    v11 = v5[93];
    v12 = v5[92];
    v13 = v5[91];
    v14 = v5[90];
    v15 = v5[89];
    v16 = v5[88];
    v17 = v5[87];
    v18 = v5[86];
    v19 = v5[83];
    v23 = v5[80];
    v24 = v5[77];
    v25 = v5[76];
    v26 = v5[75];
    v27 = v5[74];
    v28 = v5[73];
    v29 = v5[72];
    v30 = v5[71];
    v31 = v5[70];
    v32 = v5[67];
    v33 = v5[66];
    v34 = v5[65];
    v35 = v5[64];
    v36 = v5[63];
    v37 = v5[62];
    v38 = v5[61];
    v39 = v5[60];
    v40 = v5[59];
    v20 = v5[58];

    v21 = *(v7 + 8);

    return v21();
  }

  else
  {

    return _swift_task_switch(sub_10018BAC8, 0, 0);
  }
}

uint64_t sub_10018BAC8()
{
  v1 = v0[53];
  v0[110] = *(v0[55] + 152);

  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[111] = v3;
  *v3 = v0;
  v3[1] = sub_10018BB84;
  v4 = v0[77];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_10018BB84()
{
  v2 = *v1;
  v3 = *(*v1 + 888);
  v4 = *v1;
  v2[112] = v0;

  v5 = v2[110];
  if (v0)
  {
    v6 = v2[109];
    v7 = v2[102];
    v8 = v2[99];

    v9 = sub_10018BF88;
  }

  else
  {

    v9 = sub_10018BCE4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10018BCE4()
{
  v1 = v0[109];
  v2 = v0[108];
  v0[113] = *(v0[55] + 144);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  inited = swift_initStackObject();
  v0[114] = inited;
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = swift_task_alloc();
  v0[115] = v4;
  *v4 = v0;
  v4[1] = sub_10018BDDC;
  v5 = v0[102];
  v6 = v0[101];

  return sub_10026F6BC(v6, v5, inited);
}

uint64_t sub_10018BDDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 920);
  v6 = *v2;
  v4[116] = v1;

  v7 = v4[114];
  v8 = v4[113];
  v9 = v4[102];
  if (v1)
  {
    v10 = v4[99];

    swift_setDeallocating();
    sub_10004D860(v7 + 32);
    v11 = sub_10018C3E8;
  }

  else
  {

    v4[117] = a1;
    swift_setDeallocating();
    sub_10004D860(v7 + 32);
    v11 = sub_10018C174;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10018BF88()
{
  v31 = v0[112];
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[83];
  v10 = v0[80];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[61];
  v28 = v0[60];
  v29 = v0[59];
  v30 = v0[58];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10018C174()
{
  v1 = v0[117];
  v2 = v0[77];
  v3 = v0[55];
  v4 = v0[53];
  v5 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  v0[118] = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v0[119] = *(v3 + 136);
  v6 = *(v2 + 64);

  v7 = IdentityProofingConfiguration.documentType.getter();
  v8 = swift_task_alloc();
  v0[120] = v8;
  *v8 = v0;
  v8[1] = sub_10018C2CC;
  v9 = v0[73];

  return sub_1002A77FC(v9, v6, v7);
}

uint64_t sub_10018C2CC()
{
  v2 = *v1;
  v3 = *(*v1 + 960);
  v7 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v4 = *(v2 + 792);

    v5 = sub_10018CB6C;
  }

  else
  {
    v5 = sub_10018C5DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10018C3E8()
{
  sub_1001A1FAC(v0[77]);
  v31 = v0[116];
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[83];
  v10 = v0[80];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[61];
  v28 = v0[60];
  v29 = v0[59];
  v30 = v0[58];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10018C5DC()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 584);
  v3 = *(v0 + 544);
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = *(v0 + 952);
  if (v1)
  {
    v10 = *(v0 + 792);
    v11 = *(v0 + 584);
    v12 = *(v0 + 552);
    v13 = *(v0 + 544);

    (*(v12 + 8))(v11, v13);
    v14 = *(v0 + 616);

    sub_1001A1FAC(v14);
    v15 = *(v0 + 744);
    v16 = *(v0 + 736);
    v17 = *(v0 + 728);
    v18 = *(v0 + 720);
    v19 = *(v0 + 712);
    v20 = *(v0 + 704);
    v21 = *(v0 + 696);
    v22 = *(v0 + 688);
    v23 = *(v0 + 664);
    v24 = *(v0 + 640);
    v48 = *(v0 + 616);
    v50 = *(v0 + 608);
    v52 = *(v0 + 600);
    v54 = *(v0 + 592);
    v56 = *(v0 + 584);
    v58 = *(v0 + 576);
    v60 = *(v0 + 568);
    v62 = *(v0 + 560);
    v64 = *(v0 + 536);
    v66 = *(v0 + 528);
    v68 = *(v0 + 520);
    v70 = *(v0 + 512);
    v72 = *(v0 + 504);
    v74 = *(v0 + 496);
    v76 = *(v0 + 488);
    v78 = *(v0 + 480);
    v80 = *(v0 + 472);
    v83 = *(v0 + 464);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v27 = *(v0 + 944);
    v81 = *(v0 + 784);
    v84 = *(v0 + 616);
    v86 = *(v0 + 792);
    v28 = *(v0 + 584);
    v29 = *(v0 + 552);
    v30 = *(v0 + 544);
    v31 = *(v0 + 424);
    v32 = v7;
    v33 = v8;

    (*(v29 + 8))(v28, v30);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1006DAE90;
    *(v34 + 32) = v27;
    v35 = v27;
    sub_10000B8B8(v32, v33);
    IdentityProofingConfiguration.documentType.getter();
    v36 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v87 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v32, v33);
    sub_1001A1FAC(v84);
    v37 = *(v0 + 744);
    v38 = *(v0 + 736);
    v39 = *(v0 + 728);
    v40 = *(v0 + 720);
    v41 = *(v0 + 712);
    v42 = *(v0 + 704);
    v43 = *(v0 + 696);
    v44 = *(v0 + 688);
    v45 = *(v0 + 664);
    v46 = *(v0 + 640);
    v49 = *(v0 + 616);
    v51 = *(v0 + 608);
    v53 = *(v0 + 600);
    v55 = *(v0 + 592);
    v57 = *(v0 + 584);
    v59 = *(v0 + 576);
    v61 = *(v0 + 568);
    v63 = *(v0 + 560);
    v65 = *(v0 + 536);
    v67 = *(v0 + 528);
    v69 = *(v0 + 520);
    v71 = *(v0 + 512);
    v73 = *(v0 + 504);
    v75 = *(v0 + 496);
    v77 = *(v0 + 488);
    v79 = *(v0 + 480);
    v82 = *(v0 + 472);
    v85 = *(v0 + 464);

    v47 = *(v0 + 8);

    return v47(v87);
  }
}

uint64_t sub_10018CB6C()
{
  v1 = *(v0 + 952);

  v33 = *(v0 + 968);
  v2 = *(v0 + 616);

  sub_1001A1FAC(v2);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 664);
  v12 = *(v0 + 640);
  v15 = *(v0 + 616);
  v16 = *(v0 + 608);
  v17 = *(v0 + 600);
  v18 = *(v0 + 592);
  v19 = *(v0 + 584);
  v20 = *(v0 + 576);
  v21 = *(v0 + 568);
  v22 = *(v0 + 560);
  v23 = *(v0 + 536);
  v24 = *(v0 + 528);
  v25 = *(v0 + 520);
  v26 = *(v0 + 512);
  v27 = *(v0 + 504);
  v28 = *(v0 + 496);
  v29 = *(v0 + 488);
  v30 = *(v0 + 480);
  v31 = *(v0 + 472);
  v32 = *(v0 + 464);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10018CD74(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 976);
  v4 = *(*v1 + 792);
  v39 = *v1;

  v5 = v2[102];

  v6 = v2[93];
  v7 = v2[92];
  v8 = v2[91];
  v9 = v2[90];
  v10 = v2[89];
  v11 = v2[88];
  v12 = v2[87];
  v13 = v2[86];
  v14 = v2[83];
  v20 = v2[80];
  v21 = v2[77];
  v22 = v2[76];
  v23 = v2[75];
  v24 = v2[74];
  v25 = v2[73];
  v26 = v2[72];
  v27 = v2[71];
  v28 = v2[70];
  v29 = v2[67];
  v30 = v2[66];
  v31 = v2[65];
  v32 = v2[64];
  v33 = v2[63];
  v34 = v2[62];
  v35 = v2[61];
  v36 = v2[60];
  v37 = v2[59];
  v15 = v2[58];

  v17 = *(v39 + 8);
  if (!v38)
  {
    v16 = a1;
  }

  return v17(v16);
}

uint64_t sub_10018D22C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 992);
  v7 = *v3;
  v5[125] = a1;
  v5[126] = a2;

  v8 = v4[123];
  if (v2)
  {
    v9 = v5[102];
    v10 = v5[99];

    v11 = v5[93];
    v12 = v5[92];
    v13 = v5[91];
    v14 = v5[90];
    v15 = v5[89];
    v16 = v5[88];
    v17 = v5[87];
    v18 = v5[86];
    v19 = v5[83];
    v23 = v5[80];
    v24 = v5[77];
    v25 = v5[76];
    v26 = v5[75];
    v27 = v5[74];
    v28 = v5[73];
    v29 = v5[72];
    v30 = v5[71];
    v31 = v5[70];
    v32 = v5[67];
    v33 = v5[66];
    v34 = v5[65];
    v35 = v5[64];
    v36 = v5[63];
    v37 = v5[62];
    v38 = v5[61];
    v39 = v5[60];
    v40 = v5[59];
    v20 = v5[58];

    v21 = *(v7 + 8);

    return v21();
  }

  else
  {

    return _swift_task_switch(sub_10018D548, 0, 0);
  }
}

uint64_t sub_10018D548()
{
  v1 = v0[53];
  v0[127] = *(v0[55] + 152);

  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[128] = v3;
  *v3 = v0;
  v3[1] = sub_10018D604;
  v4 = v0[76];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_10018D604()
{
  v2 = *v1;
  v3 = *(*v1 + 1024);
  v4 = *v1;
  v2[129] = v0;

  v5 = v2[127];
  if (v0)
  {
    v6 = v2[126];
    v7 = v2[102];
    v8 = v2[99];

    v9 = sub_10018DA08;
  }

  else
  {

    v9 = sub_10018D764;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10018D764()
{
  v1 = v0[126];
  v2 = v0[125];
  v0[130] = *(v0[55] + 144);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  inited = swift_initStackObject();
  v0[131] = inited;
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = swift_task_alloc();
  v0[132] = v4;
  *v4 = v0;
  v4[1] = sub_10018D85C;
  v5 = v0[102];
  v6 = v0[101];

  return sub_10026F6BC(v6, v5, inited);
}

uint64_t sub_10018D85C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1056);
  v6 = *v2;
  v4[133] = v1;

  v7 = v4[131];
  v8 = v4[130];
  v9 = v4[102];
  if (v1)
  {
    v10 = v4[99];

    swift_setDeallocating();
    sub_10004D860(v7 + 32);
    v11 = sub_10018DEFC;
  }

  else
  {

    v4[134] = a1;
    swift_setDeallocating();
    sub_10004D860(v7 + 32);
    v11 = sub_10018DBF4;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10018DA08()
{
  v31 = v0[129];
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[83];
  v10 = v0[80];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[61];
  v28 = v0[60];
  v29 = v0[59];
  v30 = v0[58];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10018DBF4()
{
  v1 = v0[134];
  v2 = v0[76];
  v3 = v0[55];
  v4 = v0[53];
  v5 = type metadata accessor for IdentityProofingUIConfig();
  v6 = objc_allocWithZone(v5);

  v7 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v8 = objc_allocWithZone(v5);
  v0[135] = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

  v0[136] = *(v3 + 136);
  v9 = *(v2 + 64);

  v10 = IdentityProofingConfiguration.documentType.getter();
  v11 = swift_task_alloc();
  v0[137] = v11;
  *v11 = v0;
  v11[1] = sub_10018DDE0;
  v12 = v0[72];

  return sub_1002A77FC(v12, v9, v10);
}

uint64_t sub_10018DDE0()
{
  v2 = *v1;
  v3 = *(*v1 + 1096);
  v7 = *v1;
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v4 = *(v2 + 792);

    v5 = sub_10018E680;
  }

  else
  {
    v5 = sub_10018E0F0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10018DEFC()
{
  sub_1001A1FAC(v0[76]);
  v31 = v0[133];
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[83];
  v10 = v0[80];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[61];
  v28 = v0[60];
  v29 = v0[59];
  v30 = v0[58];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10018E0F0()
{
  v1 = *(v0 + 1104);
  v2 = *(v0 + 576);
  v3 = *(v0 + 544);
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = *(v0 + 1088);
  if (v1)
  {
    v10 = *(v0 + 792);
    v11 = *(v0 + 576);
    v12 = *(v0 + 552);
    v13 = *(v0 + 544);

    (*(v12 + 8))(v11, v13);
    v14 = *(v0 + 608);

    sub_1001A1FAC(v14);
    v15 = *(v0 + 744);
    v16 = *(v0 + 736);
    v17 = *(v0 + 728);
    v18 = *(v0 + 720);
    v19 = *(v0 + 712);
    v20 = *(v0 + 704);
    v21 = *(v0 + 696);
    v22 = *(v0 + 688);
    v23 = *(v0 + 664);
    v24 = *(v0 + 640);
    v48 = *(v0 + 616);
    v50 = *(v0 + 608);
    v52 = *(v0 + 600);
    v54 = *(v0 + 592);
    v56 = *(v0 + 584);
    v58 = *(v0 + 576);
    v60 = *(v0 + 568);
    v62 = *(v0 + 560);
    v64 = *(v0 + 536);
    v66 = *(v0 + 528);
    v68 = *(v0 + 520);
    v70 = *(v0 + 512);
    v72 = *(v0 + 504);
    v74 = *(v0 + 496);
    v76 = *(v0 + 488);
    v78 = *(v0 + 480);
    v80 = *(v0 + 472);
    v83 = *(v0 + 464);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v27 = *(v0 + 1080);
    v81 = *(v0 + 784);
    v84 = *(v0 + 608);
    v86 = *(v0 + 792);
    v28 = *(v0 + 576);
    v29 = *(v0 + 552);
    v30 = *(v0 + 544);
    v31 = *(v0 + 424);
    v32 = v7;
    v33 = v8;

    (*(v29 + 8))(v28, v30);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1006DAE90;
    *(v34 + 32) = v27;
    v35 = v27;
    sub_10000B8B8(v32, v33);
    IdentityProofingConfiguration.documentType.getter();
    v36 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v87 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v32, v33);
    sub_1001A1FAC(v84);
    v37 = *(v0 + 744);
    v38 = *(v0 + 736);
    v39 = *(v0 + 728);
    v40 = *(v0 + 720);
    v41 = *(v0 + 712);
    v42 = *(v0 + 704);
    v43 = *(v0 + 696);
    v44 = *(v0 + 688);
    v45 = *(v0 + 664);
    v46 = *(v0 + 640);
    v49 = *(v0 + 616);
    v51 = *(v0 + 608);
    v53 = *(v0 + 600);
    v55 = *(v0 + 592);
    v57 = *(v0 + 584);
    v59 = *(v0 + 576);
    v61 = *(v0 + 568);
    v63 = *(v0 + 560);
    v65 = *(v0 + 536);
    v67 = *(v0 + 528);
    v69 = *(v0 + 520);
    v71 = *(v0 + 512);
    v73 = *(v0 + 504);
    v75 = *(v0 + 496);
    v77 = *(v0 + 488);
    v79 = *(v0 + 480);
    v82 = *(v0 + 472);
    v85 = *(v0 + 464);

    v47 = *(v0 + 8);

    return v47(v87);
  }
}

uint64_t sub_10018E680()
{
  v1 = *(v0 + 1088);

  v33 = *(v0 + 1104);
  v2 = *(v0 + 608);

  sub_1001A1FAC(v2);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 664);
  v12 = *(v0 + 640);
  v15 = *(v0 + 616);
  v16 = *(v0 + 608);
  v17 = *(v0 + 600);
  v18 = *(v0 + 592);
  v19 = *(v0 + 584);
  v20 = *(v0 + 576);
  v21 = *(v0 + 568);
  v22 = *(v0 + 560);
  v23 = *(v0 + 536);
  v24 = *(v0 + 528);
  v25 = *(v0 + 520);
  v26 = *(v0 + 512);
  v27 = *(v0 + 504);
  v28 = *(v0 + 496);
  v29 = *(v0 + 488);
  v30 = *(v0 + 480);
  v31 = *(v0 + 472);
  v32 = *(v0 + 464);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_10018E888(char a1)
{
  v2 = *(*v1 + 1112);
  v4 = *v1;
  *(*v1 + 1546) = a1;

  return _swift_task_switch(sub_10018E988, 0, 0);
}

uint64_t sub_10018E988()
{
  v1 = *(v0 + 776);
  v11 = *(v0 + 760);
  v2 = *(v0 + 536);
  v3 = *(v0 + 440);
  v4 = *(v0 + 424);
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v11;
  *(v6 + 56) = v1;
  *(v6 + 64) = v4;
  v7 = v4;

  sub_1003E653C(0, 0, v2, &unk_1006DAFD8, v6);

  *(v0 + 1120) = *(v3 + 152);

  v8 = swift_task_alloc();
  *(v0 + 1128) = v8;
  *v8 = v0;
  v8[1] = sub_10018EB00;
  v9 = *(v0 + 424);

  return sub_1001B20D0(v9);
}

uint64_t sub_10018EB00(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 1128);
  v7 = *v3;
  v5[142] = a1;
  v5[143] = a2;

  v8 = v4[140];
  if (v2)
  {
    v9 = v5[102];
    v10 = v5[99];

    v11 = v5[93];
    v12 = v5[92];
    v13 = v5[91];
    v14 = v5[90];
    v15 = v5[89];
    v16 = v5[88];
    v17 = v5[87];
    v18 = v5[86];
    v19 = v5[83];
    v23 = v5[80];
    v24 = v5[77];
    v25 = v5[76];
    v26 = v5[75];
    v27 = v5[74];
    v28 = v5[73];
    v29 = v5[72];
    v30 = v5[71];
    v31 = v5[70];
    v32 = v5[67];
    v33 = v5[66];
    v34 = v5[65];
    v35 = v5[64];
    v36 = v5[63];
    v37 = v5[62];
    v38 = v5[61];
    v39 = v5[60];
    v40 = v5[59];
    v20 = v5[58];

    v21 = *(v7 + 8);

    return v21();
  }

  else
  {

    return _swift_task_switch(sub_10018EE1C, 0, 0);
  }
}

uint64_t sub_10018EE1C()
{
  v1 = v0[53];
  v0[144] = *(v0[55] + 152);

  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[145] = v3;
  *v3 = v0;
  v3[1] = sub_10018EED8;
  v4 = v0[75];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_10018EED8()
{
  v2 = *v1;
  v3 = *(*v1 + 1160);
  v4 = *v1;
  v2[146] = v0;

  v5 = v2[144];
  if (v0)
  {
    v6 = v2[143];
    v7 = v2[102];
    v8 = v2[99];

    v9 = sub_10018F2E0;
  }

  else
  {

    v9 = sub_10018F038;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10018F038()
{
  v1 = v0[143];
  v2 = v0[142];
  v0[147] = *(v0[55] + 144);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  inited = swift_initStackObject();
  v0[148] = inited;
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = swift_task_alloc();
  v0[149] = v4;
  *v4 = v0;
  v4[1] = sub_10018F130;
  v5 = v0[102];
  v6 = v0[101];

  return sub_10026F6BC(v6, v5, inited);
}

uint64_t sub_10018F130(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 1192);
  v6 = *v2;
  v4[150] = a1;
  v4[151] = v1;

  v7 = v3[148];
  v8 = v3[147];
  v9 = v3[102];
  if (v1)
  {
    v10 = v4[99];

    swift_setDeallocating();
    sub_10004D860(v7 + 32);
    v11 = sub_10018F6CC;
  }

  else
  {

    swift_setDeallocating();
    sub_10004D860(v7 + 32);
    v11 = sub_10018F4CC;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10018F2E0()
{
  v31 = v0[146];
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[83];
  v10 = v0[80];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[61];
  v28 = v0[60];
  v29 = v0[59];
  v30 = v0[58];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10018F4CC()
{
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1546);
  v3 = type metadata accessor for IdentityProofingUIConfig();
  v4 = objc_allocWithZone(v3);

  v5 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  if (v2 == 1)
  {
    v6 = objc_allocWithZone(v3);
    v7 = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();

    v5 = v7;
  }

  else
  {
    v8 = *(v0 + 1200);
  }

  *(v0 + 1216) = v5;
  v9 = *(v0 + 600);
  v10 = *(v0 + 424);
  *(v0 + 1224) = *(*(v0 + 440) + 136);
  v11 = *(v9 + 64);

  v12 = IdentityProofingConfiguration.documentType.getter();
  v13 = swift_task_alloc();
  *(v0 + 1232) = v13;
  *v13 = v0;
  v13[1] = sub_10018F8C0;
  v14 = *(v0 + 568);

  return sub_1002A77FC(v14, v11, v12);
}

uint64_t sub_10018F6CC()
{
  sub_1001A1FAC(v0[75]);
  v31 = v0[151];
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[83];
  v10 = v0[80];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[61];
  v28 = v0[60];
  v29 = v0[59];
  v30 = v0[58];

  v11 = v0[1];

  return v11();
}

uint64_t sub_10018F8C0()
{
  v2 = *v1;
  v3 = *(*v1 + 1232);
  v7 = *v1;
  *(*v1 + 1240) = v0;

  if (v0)
  {
    v4 = *(v2 + 792);

    v5 = sub_10018FF6C;
  }

  else
  {
    v5 = sub_10018F9DC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10018F9DC()
{
  v1 = *(v0 + 1240);
  v2 = *(v0 + 568);
  v3 = *(v0 + 544);
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = *(v0 + 1224);
  if (v1)
  {
    v10 = *(v0 + 792);
    v11 = *(v0 + 568);
    v12 = *(v0 + 552);
    v13 = *(v0 + 544);

    (*(v12 + 8))(v11, v13);
    v14 = *(v0 + 600);

    sub_1001A1FAC(v14);
    v15 = *(v0 + 744);
    v16 = *(v0 + 736);
    v17 = *(v0 + 728);
    v18 = *(v0 + 720);
    v19 = *(v0 + 712);
    v20 = *(v0 + 704);
    v21 = *(v0 + 696);
    v22 = *(v0 + 688);
    v23 = *(v0 + 664);
    v24 = *(v0 + 640);
    v48 = *(v0 + 616);
    v50 = *(v0 + 608);
    v52 = *(v0 + 600);
    v54 = *(v0 + 592);
    v56 = *(v0 + 584);
    v58 = *(v0 + 576);
    v60 = *(v0 + 568);
    v62 = *(v0 + 560);
    v64 = *(v0 + 536);
    v66 = *(v0 + 528);
    v68 = *(v0 + 520);
    v70 = *(v0 + 512);
    v72 = *(v0 + 504);
    v74 = *(v0 + 496);
    v76 = *(v0 + 488);
    v78 = *(v0 + 480);
    v80 = *(v0 + 472);
    v83 = *(v0 + 464);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v27 = *(v0 + 1216);
    v81 = *(v0 + 784);
    v84 = *(v0 + 600);
    v86 = *(v0 + 792);
    v28 = *(v0 + 568);
    v29 = *(v0 + 552);
    v30 = *(v0 + 544);
    v31 = *(v0 + 424);
    v32 = v7;
    v33 = v8;

    (*(v29 + 8))(v28, v30);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1006DAE90;
    *(v34 + 32) = v27;
    v35 = v27;
    sub_10000B8B8(v32, v33);
    IdentityProofingConfiguration.documentType.getter();
    v36 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v87 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v32, v33);
    sub_1001A1FAC(v84);
    v37 = *(v0 + 744);
    v38 = *(v0 + 736);
    v39 = *(v0 + 728);
    v40 = *(v0 + 720);
    v41 = *(v0 + 712);
    v42 = *(v0 + 704);
    v43 = *(v0 + 696);
    v44 = *(v0 + 688);
    v45 = *(v0 + 664);
    v46 = *(v0 + 640);
    v49 = *(v0 + 616);
    v51 = *(v0 + 608);
    v53 = *(v0 + 600);
    v55 = *(v0 + 592);
    v57 = *(v0 + 584);
    v59 = *(v0 + 576);
    v61 = *(v0 + 568);
    v63 = *(v0 + 560);
    v65 = *(v0 + 536);
    v67 = *(v0 + 528);
    v69 = *(v0 + 520);
    v71 = *(v0 + 512);
    v73 = *(v0 + 504);
    v75 = *(v0 + 496);
    v77 = *(v0 + 488);
    v79 = *(v0 + 480);
    v82 = *(v0 + 472);
    v85 = *(v0 + 464);

    v47 = *(v0 + 8);

    return v47(v87);
  }
}

uint64_t sub_10018FF6C()
{
  v1 = *(v0 + 1224);

  v33 = *(v0 + 1240);
  v2 = *(v0 + 600);

  sub_1001A1FAC(v2);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);
  v6 = *(v0 + 720);
  v7 = *(v0 + 712);
  v8 = *(v0 + 704);
  v9 = *(v0 + 696);
  v10 = *(v0 + 688);
  v11 = *(v0 + 664);
  v12 = *(v0 + 640);
  v15 = *(v0 + 616);
  v16 = *(v0 + 608);
  v17 = *(v0 + 600);
  v18 = *(v0 + 592);
  v19 = *(v0 + 584);
  v20 = *(v0 + 576);
  v21 = *(v0 + 568);
  v22 = *(v0 + 560);
  v23 = *(v0 + 536);
  v24 = *(v0 + 528);
  v25 = *(v0 + 520);
  v26 = *(v0 + 512);
  v27 = *(v0 + 504);
  v28 = *(v0 + 496);
  v29 = *(v0 + 488);
  v30 = *(v0 + 480);
  v31 = *(v0 + 472);
  v32 = *(v0 + 464);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100190174(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1256);
  v6 = *(*v2 + 792);
  v7 = *v2;
  v4[158] = v1;

  v8 = v4[156];
  v9 = v4[96];
  if (v1)
  {

    v10 = sub_10019059C;
  }

  else
  {

    v4[159] = a1;

    v10 = sub_100190314;
  }

  return _swift_task_switch(v10, 0, 0);
}

uint64_t sub_100190314()
{
  v1 = *(v0 + 440);
  *(v0 + 112) = *(v0 + 1272);
  v2 = *(v1 + 152);
  sub_10000BBC4(v0 + 112, v0 + 160, &qword_10083D0A8, &qword_1006DAFC8);
  v3 = *(v0 + 160);

  swift_beginAccess();
  sub_1001A2AB0(v0 + 168, v2 + 144);
  swift_endAccess();

  v4 = *(v0 + 128);
  v5 = *(v0 + 144);
  *(v0 + 208) = *(v0 + 112);
  *(v0 + 224) = v4;
  *(v0 + 240) = v5;
  v36 = *(v0 + 208);
  sub_10000BE18(v0 + 216, &qword_10083D0A0, &qword_1006DAFC0);
  v6 = *(v0 + 744);
  v7 = *(v0 + 736);
  v8 = *(v0 + 728);
  v9 = *(v0 + 720);
  v10 = *(v0 + 712);
  v11 = *(v0 + 704);
  v12 = *(v0 + 696);
  v13 = *(v0 + 688);
  v14 = *(v0 + 664);
  v15 = *(v0 + 640);
  v18 = *(v0 + 616);
  v19 = *(v0 + 608);
  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  v22 = *(v0 + 584);
  v23 = *(v0 + 576);
  v24 = *(v0 + 568);
  v25 = *(v0 + 560);
  v26 = *(v0 + 536);
  v27 = *(v0 + 528);
  v28 = *(v0 + 520);
  v29 = *(v0 + 512);
  v30 = *(v0 + 504);
  v31 = *(v0 + 496);
  v32 = *(v0 + 488);
  v33 = *(v0 + 480);
  v34 = *(v0 + 472);
  v35 = *(v0 + 464);

  v16 = *(v0 + 8);

  return v16(v36);
}

uint64_t sub_10019059C()
{
  v31 = v0[158];
  v1 = v0[93];
  v2 = v0[92];
  v3 = v0[91];
  v4 = v0[90];
  v5 = v0[89];
  v6 = v0[88];
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[83];
  v10 = v0[80];
  v13 = v0[77];
  v14 = v0[76];
  v15 = v0[75];
  v16 = v0[74];
  v17 = v0[73];
  v18 = v0[72];
  v19 = v0[71];
  v20 = v0[70];
  v21 = v0[67];
  v22 = v0[66];
  v23 = v0[65];
  v24 = v0[64];
  v25 = v0[63];
  v26 = v0[62];
  v27 = v0[61];
  v28 = v0[60];
  v29 = v0[59];
  v30 = v0[58];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100190788(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1304);
  v6 = *(*v2 + 792);
  v7 = *v2;
  v4[164] = v1;

  v8 = v4[162];
  v9 = v4[161];
  v10 = v4[96];
  if (v1)
  {

    v11 = sub_100190B94;
  }

  else
  {
    v12 = v4[162];

    v4[165] = a1;

    v11 = sub_10019094C;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10019094C()
{
  v1 = *(v0 + 1280);
  v2 = *(v0 + 440);
  *(v0 + 16) = *(v0 + 1320);
  v3 = *(v2 + 152);

  sub_1001A6A30(v0 + 24);

  v4 = *(v0 + 32);
  *(v0 + 64) = *(v0 + 16);
  *(v0 + 80) = v4;
  *(v0 + 96) = *(v0 + 48);
  v35 = *(v0 + 64);
  sub_10000BE18(v0 + 72, &qword_10083D0A0, &qword_1006DAFC0);
  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);
  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  v12 = *(v0 + 688);
  v13 = *(v0 + 664);
  v14 = *(v0 + 640);
  v17 = *(v0 + 616);
  v18 = *(v0 + 608);
  v19 = *(v0 + 600);
  v20 = *(v0 + 592);
  v21 = *(v0 + 584);
  v22 = *(v0 + 576);
  v23 = *(v0 + 568);
  v24 = *(v0 + 560);
  v25 = *(v0 + 536);
  v26 = *(v0 + 528);
  v27 = *(v0 + 520);
  v28 = *(v0 + 512);
  v29 = *(v0 + 504);
  v30 = *(v0 + 496);
  v31 = *(v0 + 488);
  v32 = *(v0 + 480);
  v33 = *(v0 + 472);
  v34 = *(v0 + 464);

  v15 = *(v0 + 8);

  return v15(v35);
}

uint64_t sub_100190B94()
{
  v31 = *(v0 + 1312);
  v1 = *(v0 + 744);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v4 = *(v0 + 720);
  v5 = *(v0 + 712);
  v6 = *(v0 + 704);
  v7 = *(v0 + 696);
  v8 = *(v0 + 688);
  v9 = *(v0 + 664);
  v10 = *(v0 + 640);
  v13 = *(v0 + 616);
  v14 = *(v0 + 608);
  v15 = *(v0 + 600);
  v16 = *(v0 + 592);
  v17 = *(v0 + 584);
  v18 = *(v0 + 576);
  v19 = *(v0 + 568);
  v20 = *(v0 + 560);
  v21 = *(v0 + 536);
  v22 = *(v0 + 528);
  v23 = *(v0 + 520);
  v24 = *(v0 + 512);
  v25 = *(v0 + 504);
  v26 = *(v0 + 496);
  v27 = *(v0 + 488);
  v28 = *(v0 + 480);
  v29 = *(v0 + 472);
  v30 = *(v0 + 464);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_100190D88()
{
  v2 = *v1;
  v3 = *(*v1 + 1344);
  v4 = *v1;
  *(*v1 + 1352) = v0;

  v5 = *(v2 + 768);

  if (v0)
  {
    v6 = sub_100191530;
  }

  else
  {
    v6 = sub_100190EBC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100190EBC()
{
  v74 = v0;
  v1 = v0[167];
  v2 = v0[166];
  v3 = v0[90];
  v4 = v0[66];
  v5 = v0[65];
  v6 = v0[56];
  sub_10000BE18(v4, &qword_10083BD28, &qword_1006DA240);
  v2(v5, 0, 1, v6);
  sub_1001A2A40(v5, v4);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[100];
    v71 = v0[94];
    v10 = v0[90];
    v11 = v0[85];
    v12 = v0[84];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v73 = v14;
    *v13 = 136446210;
    v15 = IdentityProofingActionStatus.debugDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v73);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "DISPLAY_MESSAGE exists for action status %{public}s", v13, 0xCu);
    sub_10000BB78(v14);

    v71(v10, v12);
  }

  else
  {
    v18 = v0[94];
    v19 = v0[90];
    v20 = v0[85];
    v21 = v0[84];

    v18(v19, v21);
  }

  v22 = v0[64];
  v23 = v0[56];
  v24 = v0[57];
  sub_10000BBC4(v0[66], v22, &qword_10083BD28, &qword_1006DA240);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v25 = v0[102];
    v26 = v0[99];
    v27 = v0[80];
    v28 = v0[79];
    v29 = v0[78];
    v72 = v0[66];
    v30 = v0[64];

    sub_10000BE18(v30, &qword_10083BD28, &qword_1006DA240);
    v31 = *(v28 + 104);
    v31(v27, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v29);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v72, &qword_10083BD28, &qword_1006DA240);
    v31(v27, enum case for DIPError.Code.internalError(_:), v29);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v32 = v0[93];
    v33 = v0[92];
    v34 = v0[91];
    v35 = v0[90];
    v36 = v0[89];
    v37 = v0[88];
    v38 = v0[87];
    v39 = v0[86];
    v40 = v0[83];
    v41 = v0[80];
    v53 = v0[77];
    v54 = v0[76];
    v55 = v0[75];
    v56 = v0[74];
    v57 = v0[73];
    v58 = v0[72];
    v59 = v0[71];
    v60 = v0[70];
    v61 = v0[67];
    v62 = v0[66];
    v63 = v0[65];
    v64 = v0[64];
    v65 = v0[63];
    v66 = v0[62];
    v67 = v0[61];
    v68 = v0[60];
    v69 = v0[59];
    v70 = v0[58];

    v42 = v0[1];

    return v42();
  }

  else
  {
    (*(v0[57] + 32))(v0[59], v0[64], v0[56]);
    v44 = swift_task_alloc();
    v0[170] = v44;
    *v44 = v0;
    v44[1] = sub_100191BF4;
    v45 = v0[102];
    v46 = v0[101];
    v47 = v0[100];
    v48 = v0[99];
    v49 = v0[98];
    v50 = v0[59];
    v51 = v0[55];
    v52 = v0[53];

    return sub_1001A08A0(v50, v52, v46, v45, v47, v49, v48);
  }
}

uint64_t sub_100191530()
{
  v75 = v0;
  v1 = v0[89];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[100];
    v72 = v0[94];
    v5 = v0[89];
    v6 = v0[85];
    v7 = v0[84];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v74 = v9;
    *v8 = 136446210;
    v10 = IdentityProofingActionStatus.debugDescription.getter();
    v12 = sub_100141FE4(v10, v11, &v74);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "DISPLAY_MESSAGE doesn't exist for action status %{public}s. Creating display message using fallback strings.", v8, 0xCu);
    sub_10000BB78(v9);

    v72(v5, v7);
  }

  else
  {
    v13 = v0[94];
    v14 = v0[89];
    v15 = v0[85];
    v16 = v0[84];

    v13(v14, v16);
  }

  v17 = v0[169];
  v18 = v0[167];
  v19 = v0[166];
  v20 = v0[66];
  v21 = v0[63];
  v22 = v0[56];
  IdentityProofingDisplayMessage.init(title:messages:primaryButtonTitle:secondaryButtonTitle:learnMoreTitle:url:learnMoreURL:)();

  sub_10000BE18(v20, &qword_10083BD28, &qword_1006DA240);
  v19(v21, 0, 1, v22);
  sub_1001A2A40(v21, v20);
  v23 = v0[64];
  v24 = v0[56];
  v25 = v0[57];
  sub_10000BBC4(v0[66], v23, &qword_10083BD28, &qword_1006DA240);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v26 = v0[102];
    v27 = v0[99];
    v28 = v0[80];
    v29 = v0[79];
    v30 = v0[78];
    v73 = v0[66];
    v31 = v0[64];

    sub_10000BE18(v31, &qword_10083BD28, &qword_1006DA240);
    v32 = *(v29 + 104);
    v32(v28, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v30);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v73, &qword_10083BD28, &qword_1006DA240);
    v32(v28, enum case for DIPError.Code.internalError(_:), v30);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v33 = v0[93];
    v34 = v0[92];
    v35 = v0[91];
    v36 = v0[90];
    v37 = v0[89];
    v38 = v0[88];
    v39 = v0[87];
    v40 = v0[86];
    v41 = v0[83];
    v42 = v0[80];
    v54 = v0[77];
    v55 = v0[76];
    v56 = v0[75];
    v57 = v0[74];
    v58 = v0[73];
    v59 = v0[72];
    v60 = v0[71];
    v61 = v0[70];
    v62 = v0[67];
    v63 = v0[66];
    v64 = v0[65];
    v65 = v0[64];
    v66 = v0[63];
    v67 = v0[62];
    v68 = v0[61];
    v69 = v0[60];
    v70 = v0[59];
    v71 = v0[58];

    v43 = v0[1];

    return v43();
  }

  else
  {
    (*(v0[57] + 32))(v0[59], v0[64], v0[56]);
    v45 = swift_task_alloc();
    v0[170] = v45;
    *v45 = v0;
    v45[1] = sub_100191BF4;
    v46 = v0[102];
    v47 = v0[101];
    v48 = v0[100];
    v49 = v0[99];
    v50 = v0[98];
    v51 = v0[59];
    v52 = v0[55];
    v53 = v0[53];

    return sub_1001A08A0(v51, v53, v47, v46, v48, v50, v49);
  }
}

uint64_t sub_100191BF4(uint64_t a1)
{
  v2 = *(*v1 + 1360);
  v3 = *(*v1 + 816);
  v4 = *(*v1 + 792);
  v6 = *v1;
  *(*v1 + 1368) = a1;

  return _swift_task_switch(sub_100191D30, 0, 0);
}

uint64_t sub_100191D30()
{
  v1 = v0[66];
  (*(v0[57] + 8))(v0[59], v0[56]);
  sub_10000BE18(v1, &qword_10083BD28, &qword_1006DA240);
  v32 = v0[171];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[86];
  v10 = v0[83];
  v11 = v0[80];
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[74];
  v18 = v0[73];
  v19 = v0[72];
  v20 = v0[71];
  v21 = v0[70];
  v22 = v0[67];
  v23 = v0[66];
  v24 = v0[65];
  v25 = v0[64];
  v26 = v0[63];
  v27 = v0[62];
  v28 = v0[61];
  v29 = v0[60];
  v30 = v0[59];
  v31 = v0[58];

  v12 = v0[1];

  return v12(v32);
}

uint64_t sub_100191F54()
{
  v2 = *(*v1 + 1392);
  v5 = *v1;
  *(*v1 + 1400) = v0;

  if (v0)
  {
    v3 = sub_1001926E0;
  }

  else
  {
    v3 = sub_100192068;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100192068()
{
  v75 = v0;
  v1 = v0[173];
  v2 = v0[172];
  v3 = v0[88];
  v5 = v0[61];
  v4 = v0[62];
  v6 = v0[56];
  sub_10000BE18(v4, &qword_10083BD28, &qword_1006DA240);
  v2(v5, 0, 1, v6);
  sub_1001A2A40(v5, v4);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = v0[100];
    v71 = v0[94];
    v10 = v0[88];
    v11 = v0[85];
    v12 = v0[84];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v74 = v14;
    *v13 = 136446210;
    v15 = IdentityProofingActionStatus.debugDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v74);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v7, v8, "DISPLAY_MESSAGE exists for action status %{public}s", v13, 0xCu);
    sub_10000BB78(v14);

    v71(v10, v12);
  }

  else
  {
    v18 = v0[94];
    v19 = v0[88];
    v20 = v0[85];
    v21 = v0[84];

    v18(v19, v21);
  }

  v22 = v0[60];
  v23 = v0[56];
  v24 = v0[57];
  sub_10000BBC4(v0[62], v22, &qword_10083BD28, &qword_1006DA240);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    v25 = v0[102];
    v26 = v0[99];
    v27 = v0[80];
    v28 = v0[79];
    v29 = v0[78];
    v70 = v0[62];
    v72 = v0[96];
    v30 = v0[60];

    sub_10000BE18(v30, &qword_10083BD28, &qword_1006DA240);
    v31 = *(v28 + 104);
    v31(v27, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v29);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v70, &qword_10083BD28, &qword_1006DA240);
    v31(v27, enum case for DIPError.Code.internalError(_:), v29);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v32 = v0[93];
    v33 = v0[92];
    v34 = v0[91];
    v35 = v0[90];
    v36 = v0[89];
    v37 = v0[88];
    v38 = v0[87];
    v39 = v0[86];
    v40 = v0[83];
    v41 = v0[80];
    v53 = v0[77];
    v54 = v0[76];
    v55 = v0[75];
    v56 = v0[74];
    v57 = v0[73];
    v58 = v0[72];
    v59 = v0[71];
    v60 = v0[70];
    v61 = v0[67];
    v62 = v0[66];
    v63 = v0[65];
    v64 = v0[64];
    v65 = v0[63];
    v66 = v0[62];
    v67 = v0[61];
    v68 = v0[60];
    v69 = v0[59];
    v73 = v0[58];

    v42 = v0[1];

    return v42();
  }

  else
  {
    (*(v0[57] + 32))(v0[58], v0[60], v0[56]);
    v44 = swift_task_alloc();
    v0[176] = v44;
    *v44 = v0;
    v44[1] = sub_100192DB8;
    v45 = v0[102];
    v46 = v0[101];
    v47 = v0[100];
    v48 = v0[99];
    v49 = v0[98];
    v50 = v0[58];
    v51 = v0[55];
    v52 = v0[53];

    return sub_1001A08A0(v50, v52, v46, v45, v47, v49, v48);
  }
}

uint64_t sub_1001926E0()
{
  v76 = v0;
  v1 = v0[87];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[100];
    v72 = v0[94];
    v5 = v0[87];
    v6 = v0[85];
    v7 = v0[84];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v75 = v9;
    *v8 = 136446210;
    v10 = IdentityProofingActionStatus.debugDescription.getter();
    v12 = sub_100141FE4(v10, v11, &v75);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "DISPLAY_MESSAGE doesn't exist for action status %{public}s. Creating display message using fallback strings.", v8, 0xCu);
    sub_10000BB78(v9);

    v72(v5, v7);
  }

  else
  {
    v13 = v0[94];
    v14 = v0[87];
    v15 = v0[85];
    v16 = v0[84];

    v13(v14, v16);
  }

  v17 = v0[175];
  v18 = v0[173];
  v19 = v0[172];
  v21 = v0[62];
  v20 = v0[63];
  v22 = v0[56];
  IdentityProofingDisplayMessage.init(title:messages:primaryButtonTitle:secondaryButtonTitle:learnMoreTitle:url:learnMoreURL:)();

  sub_10000BE18(v21, &qword_10083BD28, &qword_1006DA240);
  v19(v20, 0, 1, v22);
  sub_1001A2A40(v20, v21);
  v23 = v0[60];
  v24 = v0[56];
  v25 = v0[57];
  sub_10000BBC4(v0[62], v23, &qword_10083BD28, &qword_1006DA240);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v26 = v0[102];
    v27 = v0[99];
    v28 = v0[80];
    v29 = v0[79];
    v30 = v0[78];
    v71 = v0[62];
    v73 = v0[96];
    v31 = v0[60];

    sub_10000BE18(v31, &qword_10083BD28, &qword_1006DA240);
    v32 = *(v29 + 104);
    v32(v28, enum case for DIPError.Code.displayMessageDataUnavailable(_:), v30);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    sub_10000BE18(v71, &qword_10083BD28, &qword_1006DA240);
    v32(v28, enum case for DIPError.Code.internalError(_:), v30);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v33 = v0[93];
    v34 = v0[92];
    v35 = v0[91];
    v36 = v0[90];
    v37 = v0[89];
    v38 = v0[88];
    v39 = v0[87];
    v40 = v0[86];
    v41 = v0[83];
    v42 = v0[80];
    v54 = v0[77];
    v55 = v0[76];
    v56 = v0[75];
    v57 = v0[74];
    v58 = v0[73];
    v59 = v0[72];
    v60 = v0[71];
    v61 = v0[70];
    v62 = v0[67];
    v63 = v0[66];
    v64 = v0[65];
    v65 = v0[64];
    v66 = v0[63];
    v67 = v0[62];
    v68 = v0[61];
    v69 = v0[60];
    v70 = v0[59];
    v74 = v0[58];

    v43 = v0[1];

    return v43();
  }

  else
  {
    (*(v0[57] + 32))(v0[58], v0[60], v0[56]);
    v45 = swift_task_alloc();
    v0[176] = v45;
    *v45 = v0;
    v45[1] = sub_100192DB8;
    v46 = v0[102];
    v47 = v0[101];
    v48 = v0[100];
    v49 = v0[99];
    v50 = v0[98];
    v51 = v0[58];
    v52 = v0[55];
    v53 = v0[53];

    return sub_1001A08A0(v51, v53, v47, v46, v48, v50, v49);
  }
}

uint64_t sub_100192DB8(uint64_t a1)
{
  v2 = *(*v1 + 1408);
  v3 = *(*v1 + 816);
  v4 = *(*v1 + 792);
  v6 = *v1;
  *(*v1 + 1416) = a1;

  return _swift_task_switch(sub_100192EF4, 0, 0);
}

uint64_t sub_100192EF4()
{
  v1 = *(v0 + 1544);
  v2 = *(v0 + 496);
  v3 = *(v0 + 424);
  (*(*(v0 + 456) + 8))(*(v0 + 464), *(v0 + 448));
  sub_10000BE18(v2, &qword_10083BD28, &qword_1006DA240);
  IdentityProofingConfiguration.documentType.getter();
  if (v1 == 1)
  {
    *(v0 + 1424) = *(*(v0 + 440) + 104);

    v4 = swift_task_alloc();
    *(v0 + 1432) = v4;
    *v4 = v0;
    v4[1] = sub_10019303C;
    v5 = *(v0 + 768);
    v6 = *(v0 + 760);

    return sub_10029E160(0, 0, v6, v5, 2, 0);
  }

  else
  {

    return _swift_task_switch(sub_100193154, 0, 0);
  }
}

uint64_t sub_10019303C()
{
  v1 = *(*v0 + 1432);
  v2 = *(*v0 + 1424);
  v4 = *v0;

  return _swift_task_switch(sub_100193154, 0, 0);
}

uint64_t sub_100193154()
{
  v1 = v0[96];

  v32 = v0[177];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[86];
  v10 = v0[83];
  v11 = v0[80];
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[74];
  v18 = v0[73];
  v19 = v0[72];
  v20 = v0[71];
  v21 = v0[70];
  v22 = v0[67];
  v23 = v0[66];
  v24 = v0[65];
  v25 = v0[64];
  v26 = v0[63];
  v27 = v0[62];
  v28 = v0[61];
  v29 = v0[60];
  v30 = v0[59];
  v31 = v0[58];

  v12 = v0[1];

  return v12(v32);
}

uint64_t sub_10019334C()
{
  v2 = *v1;
  v3 = *(*v1 + 1448);
  v4 = *v1;
  v2[182] = v0;

  v5 = v2[180];
  if (v0)
  {
    v6 = v2[99];

    v7 = sub_100193708;
  }

  else
  {

    v7 = sub_100193490;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100193490()
{
  v1 = v0[74];
  v2 = v0[55];
  v3 = v0[53];
  v4 = objc_allocWithZone(type metadata accessor for IdentityProofingUIConfig());
  v0[183] = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v0[184] = *(v2 + 136);
  v5 = *(v1 + 64);

  v6 = IdentityProofingConfiguration.documentType.getter();
  v7 = swift_task_alloc();
  v0[185] = v7;
  *v7 = v0;
  v7[1] = sub_1001935EC;
  v8 = v0[70];

  return sub_1002A77FC(v8, v5, v6);
}

uint64_t sub_1001935EC()
{
  v2 = *v1;
  v3 = *(*v1 + 1480);
  v7 = *v1;
  *(*v1 + 1488) = v0;

  if (v0)
  {
    v4 = *(v2 + 792);

    v5 = sub_100193DCC;
  }

  else
  {
    v5 = sub_1001938FC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100193708()
{
  v1 = v0[96];

  v32 = v0[182];
  v2 = v0[93];
  v3 = v0[92];
  v4 = v0[91];
  v5 = v0[90];
  v6 = v0[89];
  v7 = v0[88];
  v8 = v0[87];
  v9 = v0[86];
  v10 = v0[83];
  v11 = v0[80];
  v14 = v0[77];
  v15 = v0[76];
  v16 = v0[75];
  v17 = v0[74];
  v18 = v0[73];
  v19 = v0[72];
  v20 = v0[71];
  v21 = v0[70];
  v22 = v0[67];
  v23 = v0[66];
  v24 = v0[65];
  v25 = v0[64];
  v26 = v0[63];
  v27 = v0[62];
  v28 = v0[61];
  v29 = v0[60];
  v30 = v0[59];
  v31 = v0[58];

  v12 = v0[1];

  return v12();
}

uint64_t sub_1001938FC()
{
  v1 = *(v0 + 1488);
  v2 = *(v0 + 560);
  v3 = *(v0 + 544);
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 1496) = v7;
  *(v0 + 1504) = v8;
  v9 = *(v0 + 1472);
  if (v1)
  {
    v10 = *(v0 + 792);
    v11 = *(v0 + 560);
    v12 = *(v0 + 552);
    v13 = *(v0 + 544);

    (*(v12 + 8))(v11, v13);
    v14 = *(v0 + 768);
    v15 = *(v0 + 592);

    sub_1001A1FAC(v15);
    v16 = *(v0 + 744);
    v17 = *(v0 + 736);
    v18 = *(v0 + 728);
    v19 = *(v0 + 720);
    v20 = *(v0 + 712);
    v21 = *(v0 + 704);
    v22 = *(v0 + 696);
    v23 = *(v0 + 688);
    v24 = *(v0 + 664);
    v25 = *(v0 + 640);
    v41 = *(v0 + 616);
    v42 = *(v0 + 608);
    v43 = *(v0 + 600);
    v44 = *(v0 + 592);
    v45 = *(v0 + 584);
    v46 = *(v0 + 576);
    v47 = *(v0 + 568);
    v48 = *(v0 + 560);
    v49 = *(v0 + 536);
    v50 = *(v0 + 528);
    v51 = *(v0 + 520);
    v52 = *(v0 + 512);
    v53 = *(v0 + 504);
    v54 = *(v0 + 496);
    v55 = *(v0 + 488);
    v56 = *(v0 + 480);
    v57 = *(v0 + 472);
    v59 = *(v0 + 464);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v28 = v7;
    v29 = v8;
    v30 = *(v0 + 1464);
    v58 = *(v0 + 784);
    v60 = *(v0 + 792);
    v61 = *(v0 + 1544);
    v31 = *(v0 + 560);
    v32 = *(v0 + 552);
    v33 = *(v0 + 544);
    v34 = *(v0 + 424);

    (*(v32 + 8))(v31, v33);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1006DAE90;
    *(v35 + 32) = v30;
    v36 = v30;
    sub_10000B8B8(v28, v29);
    IdentityProofingConfiguration.documentType.getter();
    v37 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    *(v0 + 1512) = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();
    IdentityProofingConfiguration.documentType.getter();
    if (v61)
    {
      *(v0 + 1520) = *(*(v0 + 440) + 104);

      v38 = swift_task_alloc();
      *(v0 + 1528) = v38;
      *v38 = v0;
      v38[1] = sub_100193FE0;
      v39 = *(v0 + 768);
      v40 = *(v0 + 760);

      return sub_10029E160(0, 0, v40, v39, 2, 0);
    }

    else
    {

      return _swift_task_switch(sub_1001940F8, 0, 0);
    }
  }
}

uint64_t sub_100193DCC()
{
  v1 = *(v0 + 1472);

  v34 = *(v0 + 1488);
  v2 = *(v0 + 768);
  v3 = *(v0 + 592);

  sub_1001A1FAC(v3);
  v4 = *(v0 + 744);
  v5 = *(v0 + 736);
  v6 = *(v0 + 728);
  v7 = *(v0 + 720);
  v8 = *(v0 + 712);
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);
  v11 = *(v0 + 688);
  v12 = *(v0 + 664);
  v13 = *(v0 + 640);
  v16 = *(v0 + 616);
  v17 = *(v0 + 608);
  v18 = *(v0 + 600);
  v19 = *(v0 + 592);
  v20 = *(v0 + 584);
  v21 = *(v0 + 576);
  v22 = *(v0 + 568);
  v23 = *(v0 + 560);
  v24 = *(v0 + 536);
  v25 = *(v0 + 528);
  v26 = *(v0 + 520);
  v27 = *(v0 + 512);
  v28 = *(v0 + 504);
  v29 = *(v0 + 496);
  v30 = *(v0 + 488);
  v31 = *(v0 + 480);
  v32 = *(v0 + 472);
  v33 = *(v0 + 464);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100193FE0()
{
  v1 = *(*v0 + 1528);
  v2 = *(*v0 + 1520);
  v4 = *v0;

  return _swift_task_switch(sub_1001940F8, 0, 0);
}

uint64_t sub_1001940F8()
{
  v1 = *(v0 + 1504);
  v2 = *(v0 + 1496);
  v3 = *(v0 + 768);
  v4 = *(v0 + 592);

  sub_10000B90C(v2, v1);
  sub_1001A1FAC(v4);
  v35 = *(v0 + 1512);
  v5 = *(v0 + 744);
  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  v8 = *(v0 + 720);
  v9 = *(v0 + 712);
  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  v12 = *(v0 + 688);
  v13 = *(v0 + 664);
  v14 = *(v0 + 640);
  v17 = *(v0 + 616);
  v18 = *(v0 + 608);
  v19 = *(v0 + 600);
  v20 = *(v0 + 592);
  v21 = *(v0 + 584);
  v22 = *(v0 + 576);
  v23 = *(v0 + 568);
  v24 = *(v0 + 560);
  v25 = *(v0 + 536);
  v26 = *(v0 + 528);
  v27 = *(v0 + 520);
  v28 = *(v0 + 512);
  v29 = *(v0 + 504);
  v30 = *(v0 + 496);
  v31 = *(v0 + 488);
  v32 = *(v0 + 480);
  v33 = *(v0 + 472);
  v34 = *(v0 + 464);

  v15 = *(v0 + 8);

  return v15(v35);
}

uint64_t sub_10019431C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 1536);
  v37 = *v1;

  v4 = v2[93];
  v5 = v2[92];
  v6 = v2[91];
  v7 = v2[90];
  v8 = v2[89];
  v9 = v2[88];
  v10 = v2[87];
  v11 = v2[86];
  v12 = v2[83];
  v18 = v2[80];
  v19 = v2[77];
  v20 = v2[76];
  v21 = v2[75];
  v22 = v2[74];
  v23 = v2[73];
  v24 = v2[72];
  v25 = v2[71];
  v26 = v2[70];
  v27 = v2[67];
  v28 = v2[66];
  v29 = v2[65];
  v30 = v2[64];
  v31 = v2[63];
  v32 = v2[62];
  v33 = v2[61];
  v34 = v2[60];
  v35 = v2[59];
  v13 = v2[58];

  v15 = *(v37 + 8);
  if (!v36)
  {
    v14 = a1;
  }

  return v15(v14);
}

uint64_t sub_10019479C()
{
  v1 = v0[103];
  v2 = v0[102];
  v3 = v0[99];
  v4 = v0[96];

  v35 = v0[105];
  v5 = v0[93];
  v6 = v0[92];
  v7 = v0[91];
  v8 = v0[90];
  v9 = v0[89];
  v10 = v0[88];
  v11 = v0[87];
  v12 = v0[86];
  v13 = v0[83];
  v14 = v0[80];
  v17 = v0[77];
  v18 = v0[76];
  v19 = v0[75];
  v20 = v0[74];
  v21 = v0[73];
  v22 = v0[72];
  v23 = v0[71];
  v24 = v0[70];
  v25 = v0[67];
  v26 = v0[66];
  v27 = v0[65];
  v28 = v0[64];
  v29 = v0[63];
  v30 = v0[62];
  v31 = v0[61];
  v32 = v0[60];
  v33 = v0[59];
  v34 = v0[58];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1001949B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a4;
  v9 = type metadata accessor for Logger();
  v8[11] = v9;
  v10 = *(v9 - 8);
  v8[12] = v10;
  v11 = *(v10 + 64) + 15;
  v8[13] = swift_task_alloc();
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_100194A88, 0, 0);
}

uint64_t sub_100194A88()
{
  v1 = v0[10];
  v2 = v0[8];
  v0[15] = *(v0[6] + 64);

  v3 = IdentityProofingConfiguration.documentType.getter();
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_100194B68;
  v5 = v0[9];
  v6 = v0[7];

  return sub_100316898(v6, v2, 0, 0, v3, v5, 1, 0);
}

uint64_t sub_100194B68()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_100194D94;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_100194C84;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100194C84()
{
  v1 = v0[14];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Opportunistic update attempt successful", v8, 2u);
  }

  (*(v7 + 8))(v5, v6);
  v10 = v0[13];
  v9 = v0[14];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100194D94()
{
  v27 = v0;
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[13];

  defaultLogger()();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[17];
    v7 = v0[12];
    v25 = v0[13];
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v12 = v0[2];
    v11 = v0[3];
    v13 = v0[4];
    v14 = Error.localizedDescription.getter();
    v16 = sub_100141FE4(v14, v15, &v26);

    *(v9 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received an error during proofing updating. Ignore the error as this is an opportunistic update attempt. %s", v9, 0xCu);
    sub_10000BB78(v10);

    (*(v7 + 8))(v25, v8);
  }

  else
  {
    v17 = v0[17];
    v19 = v0[12];
    v18 = v0[13];
    v20 = v0[11];

    (*(v19 + 8))(v18, v20);
  }

  v22 = v0[13];
  v21 = v0[14];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100194F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[12] = a5;
  v6[13] = v5;
  v6[10] = a3;
  v6[11] = a4;
  v6[8] = a1;
  v6[9] = a2;
  v7 = type metadata accessor for IdentityProofingAttributeConfiguration();
  v6[14] = v7;
  v8 = *(v7 - 8);
  v6[15] = v8;
  v9 = *(v8 + 64) + 15;
  v6[16] = swift_task_alloc();
  v10 = *(*(type metadata accessor for IdentityProofingStaticWorkflow(0) - 8) + 64) + 15;
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_100195070, 0, 0);
}

uint64_t sub_100195070()
{
  v0[18] = *(v0[13] + 152);

  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_10019511C;
  v2 = v0[8];

  return sub_1001B189C(v2);
}

uint64_t sub_10019511C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 152);
  v8 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v9 = sub_100195D48;
  }

  else
  {
    v10 = v6[18];

    v6[21] = a2;
    v6[22] = a1;
    v9 = sub_100195258;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100195258()
{
  v2 = v0[21];
  v1 = v0[22];
  v0[23] = *(v0[13] + 144);
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  inited = swift_initStackObject();
  v0[24] = inited;
  *(inited + 16) = xmmword_1006BF520;
  *(inited + 32) = v1;
  *(inited + 40) = v2;

  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_100195348;
  v6 = v0[9];
  v5 = v0[10];

  return sub_10026F6BC(v6, v5, inited);
}

uint64_t sub_100195348(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 200);
  v6 = *v2;
  *(v4 + 208) = a1;
  *(v4 + 216) = v1;

  v7 = *(v3 + 192);
  v8 = *(v3 + 184);
  if (v1)
  {
    swift_setDeallocating();
    sub_10004D860(v7 + 32);

    v9 = sub_100195DBC;
  }

  else
  {

    swift_setDeallocating();
    sub_10004D860(v7 + 32);
    v9 = sub_1001954C4;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001954C4()
{
  v1 = v0[8];
  v0[28] = *(v0[13] + 152);

  v2 = IdentityProofingConfiguration.documentType.getter();
  v3 = swift_task_alloc();
  v0[29] = v3;
  *v3 = v0;
  v3[1] = sub_100195580;
  v4 = v0[17];

  return sub_1001AA1E4(v4, v2);
}

uint64_t sub_100195580()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *v1;
  v2[30] = v0;

  v5 = v2[28];
  if (v0)
  {
    v6 = v2[26];

    v7 = sub_100195E28;
  }

  else
  {

    v7 = sub_1001956C4;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1001956C4()
{
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[13];
  v4 = v0[8];
  v5 = type metadata accessor for IdentityProofingUIConfig();
  v6 = objc_allocWithZone(v5);

  v0[31] = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v7 = objc_allocWithZone(v5);
  v0[32] = IdentityProofingUIConfig.init(view:title:subTitle:url:primaryButtonTitle:secondaryButtonTitle:tertiaryButtonTitle:privacyLinktButtonTitle:messages:fields:caption:minLength:maxLength:placeholder:displayName:imageAssetsData:options:isUIEnabled:privacyLinkIdentifier:)();
  v0[33] = *(v3 + 136);
  v8 = *(v2 + 64);

  v9 = IdentityProofingConfiguration.documentType.getter();
  v10 = swift_task_alloc();
  v0[34] = v10;
  *v10 = v0;
  v10[1] = sub_1001958BC;
  v11 = v0[16];

  return sub_1002A77FC(v11, v8, v9);
}

uint64_t sub_1001958BC()
{
  v2 = *(*v1 + 272);
  v5 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {
    v3 = sub_100195CB4;
  }

  else
  {
    v3 = sub_1001959D0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001959D0()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = type metadata accessor for JSONEncoder();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_1001A2008(&qword_10083D090, &type metadata accessor for IdentityProofingAttributeConfiguration);
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v9 = *(v0 + 264);
  if (v1)
  {
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 112);

    (*(v11 + 8))(v10, v12);
    v13 = *(v0 + 256);
    v14 = *(v0 + 136);

    sub_1001A1FAC(v14);
    v16 = *(v0 + 128);
    v15 = *(v0 + 136);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v21 = *(v0 + 128);
    v35 = *(v0 + 136);
    v23 = *(v0 + 112);
    v22 = *(v0 + 120);
    v24 = *(v0 + 96);
    v33 = *(v0 + 64);
    v34 = *(v0 + 88);
    v25 = v7;
    v26 = v8;

    (*(v22 + 8))(v21, v23);
    sub_100007224(&unk_100845FD0, &qword_1006DB190);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1006DAEA0;
    *(v27 + 32) = v20;
    *(v27 + 40) = v19;
    v28 = v20;
    v29 = v19;
    sub_10000B8B8(v25, v26);

    IdentityProofingConfiguration.documentType.getter();
    v30 = objc_allocWithZone(type metadata accessor for IdentityProofingDisplayInfo());
    v31 = IdentityProofingDisplayInfo.init(proofingUI:docScan:attributeConfig:learnMoreURL:waitingForWiFiAlertDataThresholdInBytes:lowDataModeAlertDataThresholdInBytes:documentType:featureEnablementConfig:supportedRegions:livenessStepUpConfig:livenessStepUpIQSettings:shouldPreFetchLivenessConfig:minimumAge:nfcConfig:)();

    sub_10000B90C(v25, v26);
    sub_1001A1FAC(v35);

    v32 = *(v0 + 8);

    return v32(v31);
  }
}

uint64_t sub_100195CB4()
{
  v1 = *(v0 + 264);

  v2 = *(v0 + 280);
  v3 = *(v0 + 256);
  v4 = *(v0 + 136);

  sub_1001A1FAC(v4);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_100195D48()
{
  v1 = v0[18];

  v2 = v0[20];
  v4 = v0[16];
  v3 = v0[17];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100195DBC()
{
  v1 = v0[27];
  v3 = v0[16];
  v2 = v0[17];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100195E28()
{
  v1 = v0[30];
  v3 = v0[16];
  v2 = v0[17];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100195E94(uint64_t a1, char a2)
{
  *(v3 + 344) = a2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  v4 = type metadata accessor for DIPError();
  *(v3 + 152) = v4;
  v5 = *(v4 - 8);
  *(v3 + 160) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 168) = swift_task_alloc();
  v7 = type metadata accessor for DIPError.Code();
  *(v3 + 176) = v7;
  v8 = *(v7 - 8);
  *(v3 + 184) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 192) = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  *(v3 + 200) = v10;
  v11 = *(v10 - 8);
  *(v3 + 208) = v11;
  v12 = *(v11 + 64) + 15;
  *(v3 + 216) = swift_task_alloc();
  v13 = type metadata accessor for IdentityDocumentType.Category();
  *(v3 + 224) = v13;
  v14 = *(v13 - 8);
  *(v3 + 232) = v14;
  v15 = *(v14 + 64) + 15;
  *(v3 + 240) = swift_task_alloc();

  return _swift_task_switch(sub_10019606C, 0, 0);
}

uint64_t sub_10019606C()
{
  v1 = *(v0 + 144);
  if (*(v1 + 112))
  {
    v2 = *(v0 + 136);
    v3 = *(v1 + 112);

    v4 = IdentityProofingConfiguration.accountKeyIdentifier.getter();
    v6 = sub_100189C68(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  *(v0 + 248) = v6;
  v7 = [objc_opt_self() standardUserDefaults];
  v8._countAndFlagsBits = static DaemonInternalDefaultsKeys.forceDynamicWorkflowFailure.getter();
  v9 = NSUserDefaults.internalBool(forKey:)(v8);
  *(v0 + 345) = v9;

  if (!v9)
  {
    v10 = *(v0 + 136);
    v11 = *(*(v0 + 144) + 152);

    sub_1001A6ED4(v10);
  }

  if (v6)
  {
    v12 = type metadata accessor for IdentityProofingDeviceMigrationManager();
    swift_unknownObjectRetain();
    v13 = swift_task_alloc();
    *(v0 + 256) = v13;
    *v13 = v0;
    v13[1] = sub_1001969CC;

    return (sub_1001897BC)(v12, &off_10080A320);
  }

  *(v0 + 347) = 0;
  v16 = *(v0 + 232);
  v15 = *(v0 + 240);
  v17 = *(v0 + 224);
  v18 = *(v0 + 136);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v19 = (*(v16 + 88))(v15, v17);
  if (v19 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    v20 = *(v0 + 136);
    IdentityProofingConfiguration.state.getter();
    if (!v21)
    {
      v41 = *(v0 + 345);
      v42 = *(v0 + 248);
      v43 = *(v0 + 152);
      (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.idStateUnavailable(_:), *(v0 + 176));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      swift_unknownObjectRelease();
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v22 = *(v0 + 136);
    v23 = String.lowercased()();

    v24 = IdentityProofingConfiguration.documentType.getter();
    v25 = swift_allocObject();
    type metadata accessor for IdentityProofingDataContext();
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    swift_allocObject();
    sub_10057E28C();
    v45 = v44;
    v46 = swift_allocObject();
    v46[1]._countAndFlagsBits = v45;
    v46[1]._object = v24;
    v46[2] = v23;
    v46[3]._countAndFlagsBits = v25;

    sub_10057C18C(sub_1001A29D0, v46);

    swift_beginAccess();
    v48 = *(v25 + 16);
    v47 = *(v25 + 24);
    v50 = *(v25 + 32);
    v49 = *(v25 + 40);
    sub_1000AB7D8(v48, v47);

    if (v47)
    {
      v66 = *(v0 + 345);
      v51 = *(v0 + 184);
      v52 = *(v0 + 192);
      v53 = *(v0 + 176);
      v62 = *(v0 + 152);
      v64 = *(v0 + 248);
      _StringGuts.grow(_:)(102);
      v54._countAndFlagsBits = 0xD00000000000004DLL;
      v54._object = 0x80000001007041D0;
      String.append(_:)(v54);
      v55._countAndFlagsBits = v50;
      v55._object = v49;
      String.append(_:)(v55);
      v56._countAndFlagsBits = 0xD000000000000015;
      v56._object = 0x8000000100704140;
      String.append(_:)(v56);
      v57._countAndFlagsBits = v48;
      v57._object = v47;
      String.append(_:)(v57);

      (*(v51 + 104))(v52, enum case for DIPError.Code.proofingInProgressError(_:), v53);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      swift_unknownObjectRelease();
      if ((v66 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    v58 = swift_task_alloc();
    *(v0 + 288) = v58;
    *v58 = v0;
    v58[1] = sub_1001974D8;
    v59 = *(v0 + 344);
    v60 = *(v0 + 136);
    v61 = *(v0 + 144);

    return sub_10019A69C(v60, v59, 0);
  }

  else
  {
    if (v19 != enum case for IdentityDocumentType.Category.passport(_:))
    {
      v65 = *(v0 + 345);
      v31 = *(v0 + 248);
      v63 = *(v0 + 240);
      v32 = *(v0 + 224);
      v33 = *(v0 + 232);
      v34 = *(v0 + 152);
      (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.unexpectedIDType(_:), *(v0 + 176));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      swift_unknownObjectRelease();
      (*(v33 + 8))(v63, v32);
      if (v65 != 1)
      {
LABEL_19:
        v36 = *(v0 + 240);
        v37 = *(v0 + 216);
        v38 = *(v0 + 192);
        v39 = *(v0 + 168);

        v40 = *(v0 + 8);

        return v40();
      }

LABEL_18:
      v35 = *(*(v0 + 144) + 152);

      sub_1001AC570();

      goto LABEL_19;
    }

    v26 = *(v0 + 136);
    v27 = IdentityProofingConfiguration.piiTokenIdentifier.getter();
    v29 = v28;
    *(v0 + 304) = v28;
    v30 = swift_task_alloc();
    *(v0 + 312) = v30;
    *v30 = v0;
    v30[1] = sub_1001976BC;

    return sub_1001A252C(v27, v29);
  }
}

uint64_t sub_1001969CC(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 256);
  v6 = *v2;
  *(*v2 + 264) = v1;

  if (v1)
  {
    v7 = sub_1001981E8;
  }

  else
  {
    *(v4 + 346) = a1 & 1;
    v7 = sub_100196AF8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100196AF8()
{
  v1 = *(v0 + 248);
  swift_unknownObjectRelease();
  v2 = *(v0 + 346);
  v3 = *(v0 + 264);
  *(v0 + 347) = v2;
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 136);
  IdentityProofingConfiguration.documentType.getter();
  IdentityDocumentType.category.getter();
  v8 = (*(v5 + 88))(v4, v6);
  if (v8 == enum case for IdentityDocumentType.Category.mDL(_:))
  {
    if (v2)
    {
      v9 = swift_task_alloc();
      *(v0 + 272) = v9;
      *v9 = v0;
      v9[1] = sub_1001972F4;
      v10 = *(v0 + 344);
      v11 = *(v0 + 144);
      v12 = *(v0 + 136);
      v13 = 1;
LABEL_4:

      return sub_10019A69C(v12, v10, v13);
    }

    v20 = *(v0 + 136);
    IdentityProofingConfiguration.state.getter();
    if (v21)
    {
      v22 = *(v0 + 136);
      v23 = String.lowercased()();

      v24 = IdentityProofingConfiguration.documentType.getter();
      v25 = swift_allocObject();
      type metadata accessor for IdentityProofingDataContext();
      *(v25 + 16) = 0u;
      *(v25 + 32) = 0u;
      swift_allocObject();
      sub_10057E28C();
      if (v3)
      {

        v43 = *(v0 + 208);
        v42 = *(v0 + 216);
        v44 = *(v0 + 200);
        defaultLogger()();
        DIPRecordError(_:message:log:)();

        (*(v43 + 8))(v42, v44);
      }

      else
      {
        v40 = v26;
        v41 = swift_allocObject();
        v41[1]._countAndFlagsBits = v40;
        v41[1]._object = v24;
        v41[2] = v23;
        v41[3]._countAndFlagsBits = v25;

        sub_10057C18C(sub_1001A29D0, v41);
      }

      swift_beginAccess();
      v46 = *(v25 + 16);
      v45 = *(v25 + 24);
      v48 = *(v25 + 32);
      v47 = *(v25 + 40);
      sub_1000AB7D8(v46, v45);

      if (!v45)
      {
        v56 = swift_task_alloc();
        *(v0 + 288) = v56;
        *v56 = v0;
        v56[1] = sub_1001974D8;
        v10 = *(v0 + 344);
        v57 = *(v0 + 144);
        v12 = *(v0 + 136);
        v13 = 0;
        goto LABEL_4;
      }

      v62 = *(v0 + 345);
      v49 = *(v0 + 184);
      v50 = *(v0 + 192);
      v51 = *(v0 + 176);
      v58 = *(v0 + 152);
      v60 = *(v0 + 248);
      _StringGuts.grow(_:)(102);
      v52._countAndFlagsBits = 0xD00000000000004DLL;
      v52._object = 0x80000001007041D0;
      String.append(_:)(v52);
      v53._countAndFlagsBits = v48;
      v53._object = v47;
      String.append(_:)(v53);
      v54._countAndFlagsBits = 0xD000000000000015;
      v54._object = 0x8000000100704140;
      String.append(_:)(v54);
      v55._countAndFlagsBits = v46;
      v55._object = v45;
      String.append(_:)(v55);

      (*(v49 + 104))(v50, enum case for DIPError.Code.proofingInProgressError(_:), v51);
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      swift_unknownObjectRelease();
      if ((v62 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v37 = *(v0 + 345);
      v38 = *(v0 + 248);
      v39 = *(v0 + 152);
      (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.idStateUnavailable(_:), *(v0 + 176));
      sub_1000402AC(_swiftEmptyArrayStorage);
      sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      swift_unknownObjectRelease();
      if ((v37 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_15;
  }

  if (v8 != enum case for IdentityDocumentType.Category.passport(_:))
  {
    v61 = *(v0 + 345);
    v27 = *(v0 + 248);
    v59 = *(v0 + 240);
    v28 = *(v0 + 224);
    v29 = *(v0 + 232);
    v30 = *(v0 + 152);
    (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.unexpectedIDType(_:), *(v0 + 176));
    sub_1000402AC(_swiftEmptyArrayStorage);
    sub_1001A2008(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v29 + 8))(v59, v28);
    if (v61 != 1)
    {
LABEL_16:
      v32 = *(v0 + 240);
      v33 = *(v0 + 216);
      v34 = *(v0 + 192);
      v35 = *(v0 + 168);

      v36 = *(v0 + 8);

      return v36();
    }

LABEL_15:
    v31 = *(*(v0 + 144) + 152);

    sub_1001AC570();

    goto LABEL_16;
  }

  v15 = *(v0 + 136);
  v16 = IdentityProofingConfiguration.piiTokenIdentifier.getter();
  v18 = v17;
  *(v0 + 304) = v17;
  v19 = swift_task_alloc();
  *(v0 + 312) = v19;
  *v19 = v0;
  v19[1] = sub_1001976BC;

  return sub_1001A252C(v16, v18);
}

uint64_t sub_1001972F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[8] = v2;
  v4[9] = a1;
  v4[10] = v1;
  v5 = v3[34];
  v8 = *v2;
  v4[35] = v1;

  if (v1)
  {
    v6 = sub_1001982AC;
  }

  else
  {
    v6 = sub_100197410;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100197410()
{
  v1 = *(v0 + 345);
  v2 = *(v0 + 248);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {
    v3 = *(*(v0 + 144) + 152);

    sub_1001AC570();
  }

  v4 = *(v0 + 72);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);

  v9 = *(v0 + 8);

  return v9(v4);
}

uint64_t sub_1001974D8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v4[11] = v2;
  v4[12] = a1;
  v4[13] = v1;
  v5 = v3[36];
  v8 = *v2;
  v4[37] = v1;

  if (v1)
  {
    v6 = sub_10019836C;
  }

  else
  {
    v6 = sub_1001975F4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001975F4()
{
  v1 = *(v0 + 345);
  v2 = *(v0 + 248);
  swift_unknownObjectRelease();
  if (v1 == 1)
  {
    v3 = *(*(v0 + 144) + 152);

    sub_1001AC570();
  }

  v4 = *(v0 + 96);
  v5 = *(v0 + 240);
  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 168);

  v9 = *(v0 + 8);

  return v9(v4);
}