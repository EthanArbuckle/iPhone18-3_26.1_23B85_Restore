uint64_t sub_100001F00()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100001F18()
{
}

uint64_t sub_100001F40(uint64_t a1)
{
  v4 = *(*(a1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v1)))));
}

uint64_t sub_100001F88()
{
  sub_100003324(v0);
}

uint64_t sub_100001FD4(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_100001FE0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100002008(uint64_t result)
{
  *(result + 8) = sub_1000416B0;
  v2 = *(v1 + 208);
  v3 = *(v1 + 64);
  return result;
}

void sub_100002030(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4)
{
  v7 = *(v5 - 124);
  v8 = *(v5 - 124);
  v9 = *(v5 - 168);
  v11 = *(v5 - 112);
  v10 = *(v5 - 104);

  _os_signpost_emit_with_name_impl(a1, v9, v8, a4, v10, v11, v4, 0x20u);
}

uint64_t sub_100002068()
{
  sub_10005D588(v0);
}

uint64_t sub_1000020AC()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1000020C0@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ModelXPCRequest();
  v4 = sub_100002BDC(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  (*(v6 + 16))(&v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v3);
  v10 = *(v6 + 88);
  v11 = sub_100007660();
  v13 = v12(v11);
  if (v13 == enum case for ModelXPCRequest.executeRequest(_:))
  {
    v14 = sub_100006618();
    v15(v14);
    v16 = type metadata accessor for ModelXPCRequest.ExecuteRequest();
    sub_100009E20(v16);
    v17 = &unk_1001BE478;
    v18 = &type metadata accessor for ModelXPCRequest.ExecuteRequest;
LABEL_49:
    a1[4] = sub_100003814(v17, v18);
    sub_1000036CC(a1);
    sub_100006098(v3);
    return (*(v88 + 32))();
  }

  if (v13 == enum case for ModelXPCRequest.executeInputStreamRequest(_:))
  {
    v19 = sub_100006618();
    v20(v19);
    v21 = type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest();
    sub_100009E20(v21);
    v17 = &unk_1001BE468;
    v18 = &type metadata accessor for ModelXPCRequest.ExecuteInputStreamRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.cancelRequest(_:))
  {
    v22 = sub_100006618();
    v23(v22);
    v24 = type metadata accessor for ModelXPCRequest.CancelRequest();
    sub_100009E20(v24);
    v17 = &unk_1001BE488;
    v18 = &type metadata accessor for ModelXPCRequest.CancelRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.createSession(_:))
  {
    v25 = sub_100006618();
    v26(v25);
    SessionRequest = type metadata accessor for ModelXPCRequest.CreateSessionRequest();
    sub_100009E20(SessionRequest);
    v17 = &unk_1001BE428;
    v18 = &type metadata accessor for ModelXPCRequest.CreateSessionRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.deleteSession(_:))
  {
    v28 = sub_100006618();
    v29(v28);
    v30 = type metadata accessor for ModelXPCRequest.DeleteSessionRequest();
    sub_100009E20(v30);
    v17 = &unk_1001BE438;
    v18 = &type metadata accessor for ModelXPCRequest.DeleteSessionRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.prewarmSession(_:))
  {
    v31 = sub_100006618();
    v32(v31);
    v33 = type metadata accessor for ModelXPCRequest.PrewarmSession();
    sub_100009E20(v33);
    v17 = &unk_1001BE448;
    v18 = &type metadata accessor for ModelXPCRequest.PrewarmSession;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.cancelSession(_:))
  {
    v34 = sub_100006618();
    v35(v34);
    v36 = type metadata accessor for ModelXPCRequest.CancelSessionRequest();
    sub_100009E20(v36);
    v17 = &unk_1001BE458;
    v18 = &type metadata accessor for ModelXPCRequest.CancelSessionRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.acquireAssertion(_:))
  {
    v37 = sub_100006618();
    v38(v37);
    v39 = type metadata accessor for ModelXPCRequest.AcquireRequest();
    sub_100009E20(v39);
    v17 = &unk_1001BE4A8;
    v18 = &type metadata accessor for ModelXPCRequest.AcquireRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.releaseAssertion(_:))
  {
    v40 = sub_100006618();
    v41(v40);
    v42 = type metadata accessor for ModelXPCRequest.ReleaseRequest();
    sub_100009E20(v42);
    v17 = &unk_1001BE4B8;
    v18 = &type metadata accessor for ModelXPCRequest.ReleaseRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.fetchAssertions(_:))
  {
    v43 = sub_100006618();
    v44(v43);
    AssertionsRequest = type metadata accessor for ModelXPCRequest.FetchAssertionsRequest();
    sub_100009E20(AssertionsRequest);
    v17 = &unk_1001BE4C8;
    v18 = &type metadata accessor for ModelXPCRequest.FetchAssertionsRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.restoreAssertions(_:))
  {
    v46 = sub_100006618();
    v47(v46);
    v48 = type metadata accessor for ModelXPCRequest.RestoreAssertionsRequest();
    sub_100009E20(v48);
    v17 = &unk_1001BE4D8;
    v18 = &type metadata accessor for ModelXPCRequest.RestoreAssertionsRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.fetchAssets(_:))
  {
    v49 = sub_100006618();
    v50(v49);
    AssetsRequest = type metadata accessor for ModelXPCRequest.FetchAssetsRequest();
    sub_100009E20(AssetsRequest);
    v17 = &unk_1001BE4E8;
    v18 = &type metadata accessor for ModelXPCRequest.FetchAssetsRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.fetchDynamicAssets(_:))
  {
    v52 = sub_100006618();
    v53(v52);
    DynamicAssetsRequest = type metadata accessor for ModelXPCRequest.FetchDynamicAssetsRequest();
    sub_100009E20(DynamicAssetsRequest);
    v17 = &unk_1001BE4F8;
    v18 = &type metadata accessor for ModelXPCRequest.FetchDynamicAssetsRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.fetchPolicy(_:))
  {
    v55 = sub_100006618();
    v56(v55);
    PolicyRequest = type metadata accessor for ModelXPCRequest.FetchPolicyRequest();
    sub_100009E20(PolicyRequest);
    v17 = &unk_1001BE508;
    v18 = &type metadata accessor for ModelXPCRequest.FetchPolicyRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.fetchDisabledUseCases(_:))
  {
    v58 = sub_100006618();
    v59(v58);
    DisabledUseCasesRequest = type metadata accessor for ModelXPCRequest.FetchDisabledUseCasesRequest();
    sub_100009E20(DisabledUseCasesRequest);
    v17 = &unk_1001BE518;
    v18 = &type metadata accessor for ModelXPCRequest.FetchDisabledUseCasesRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.fetchAvailability(_:))
  {
    v61 = sub_100006618();
    v62(v61);
    AvailabilityRequest = type metadata accessor for ModelXPCRequest.FetchAvailabilityRequest();
    sub_100009E20(AvailabilityRequest);
    v17 = &unk_1001BE528;
    v18 = &type metadata accessor for ModelXPCRequest.FetchAvailabilityRequest;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.loadAssetBundle(_:))
  {
    v64 = sub_100006618();
    v65(v64);
    AssetBundle = type metadata accessor for ModelXPCRequest.LoadAssetBundle();
    sub_100009E20(AssetBundle);
    v17 = &unk_1001BE690;
    v18 = &type metadata accessor for ModelXPCRequest.LoadAssetBundle;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.holdAssetBundle(_:))
  {
    v67 = sub_100006618();
    v68(v67);
    v69 = type metadata accessor for ModelXPCRequest.HoldAssetBundle();
    sub_100009E20(v69);
    v17 = &unk_1001BE680;
    v18 = &type metadata accessor for ModelXPCRequest.HoldAssetBundle;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.forceAssetVersionSwitch(_:))
  {
    v70 = sub_100006618();
    v71(v70);
    v72 = type metadata accessor for ModelXPCRequest.ForceAssetVersionSwitch();
    sub_100009E20(v72);
    v17 = &unk_1001BE668;
    v18 = &type metadata accessor for ModelXPCRequest.ForceAssetVersionSwitch;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.dumpState(_:))
  {
    v73 = sub_100006618();
    v74(v73);
    v75 = type metadata accessor for ModelXPCRequest.DumpState();
    sub_100009E20(v75);
    v17 = &unk_1001BE688;
    v18 = &type metadata accessor for ModelXPCRequest.DumpState;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.fetchModelInstance(_:))
  {
    v76 = sub_100006618();
    v77(v76);
    ModelInstance = type metadata accessor for ModelXPCRequest.FetchModelInstance();
    sub_100009E20(ModelInstance);
    v17 = &unk_1001BE498;
    v18 = &type metadata accessor for ModelXPCRequest.FetchModelInstance;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.setAssetsHaveUpdated(_:))
  {
    v79 = sub_100006618();
    v80(v79);
    HaveUpdated = type metadata accessor for ModelXPCRequest.SetAssetsHaveUpdated();
    sub_100009E20(HaveUpdated);
    v17 = &unk_1001BE678;
    v18 = &type metadata accessor for ModelXPCRequest.SetAssetsHaveUpdated;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.ignoreAssetUpdates(_:))
  {
    v82 = sub_100006618();
    v83(v82);
    v84 = type metadata accessor for ModelXPCRequest.IgnoreAssetUpdates();
    sub_100009E20(v84);
    v17 = &unk_1001BE670;
    v18 = &type metadata accessor for ModelXPCRequest.IgnoreAssetUpdates;
    goto LABEL_49;
  }

  if (v13 == enum case for ModelXPCRequest.startMonitoringInferences(_:))
  {
    v85 = sub_100006618();
    v86(v85);
    started = type metadata accessor for ModelXPCRequest.StartMonitoringInferences();
    sub_100009E20(started);
    v17 = &unk_1001BE660;
    v18 = &type metadata accessor for ModelXPCRequest.StartMonitoringInferences;
    goto LABEL_49;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t ModelXPCRequest.needsCallback.getter()
{
  sub_1000020C0(v6);
  v0 = v6[4];
  sub_100003370(v6, v6[3]);
  v1 = *(v0 + 40);
  v2 = sub_1000060A4();
  v4 = v3(v2);
  sub_100003324(v6);
  return v4 & 1;
}

uint64_t sub_100002BB8()
{
}

void sub_100002C20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

uint64_t sub_100002C30(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return 0;
}

uint64_t sub_100002C58()
{

  return swift_task_alloc();
}

uint64_t sub_100002C88()
{
  sub_100003324(v0);
}

uint64_t sub_100002CEC()
{

  return swift_once();
}

uint64_t sub_100002D30()
{

  return sub_100004A3C(v0, v1, (v2 - 112));
}

uint64_t sub_100002D78(uint64_t a1)
{
  *(a1 + 8) = sub_1000F5EB0;
  v2 = *(v1 + 360);
  return v1 + 16;
}

void sub_100002DA4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 8u);
}

void sub_100002E20()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_100002E80(uint64_t result)
{
  *(result + 8) = sub_100154018;
  v2 = *(v1 + 128);
  return result;
}

uint64_t *sub_100002EC0@<X0>(uint64_t a1@<X8>)
{
  result = sub_100003370((a1 + 16), *(a1 + 40));
  v2 = *result;
  return result;
}

uint64_t sub_100002F54()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100002F64()
{
}

BOOL sub_100002F80(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100002FAC(uint64_t result)
{
  *(result + 8) = sub_100029524;
  v2 = *(v1 + 560);
  return result;
}

uint64_t sub_10000302C()
{
  result = v0 + 136;
  v2 = *(v0 + 136);
  return result;
}

uint64_t sub_100003088()
{
  v2 = v0[51];
  result = v0[52];
  v3 = v0[49];
  v4 = v0[50];
  v6 = v0[47];
  v5 = v0[48];
  v8 = v0[45];
  v7 = v0[46];
  v10 = v0[43];
  v9 = v0[44];
  v11 = v0[41];
  v12 = v0[42];
  return result;
}

uint64_t sub_1000030A4()
{

  return swift_once();
}

uint64_t sub_1000030C4()
{

  return swift_once();
}

uint64_t sub_1000030E4()
{

  return EventReporter.send(eventBuiltWithPresetsAnd:)();
}

unint64_t sub_100003138()
{
  *(v3 - 136) = *(v0 + 248);

  return sub_100117EB0(v2, v1);
}

uint64_t sub_100003160@<X0>(int *a1@<X8>)
{
  result = a1[1];
  v2 = a1 + *a1;
  return result;
}

uint64_t sub_10000317C()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_1000031E0()
{

  return swift_slowAlloc();
}

BOOL sub_10000320C(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100003254()
{
  v1 = v0[44];
  v3 = v0[45];
  v2 = v0[41];
  v4 = v0[42];
}

uint64_t sub_100003268()
{
  v2 = v0[12];
  v4 = v0[6];
  v3 = v0[7];

  return swift_task_alloc();
}

uint64_t sub_100003290()
{
  result = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  return result;
}

uint64_t sub_1000032C8()
{
  *(v1 + 440) = v0;
  v3 = *(v1 + 312);

  return type metadata accessor for AuditToken();
}

void sub_1000032F0()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 448);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
}

uint64_t sub_100003324(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_100003370(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1000033B4()
{

  return swift_unknownObjectRelease();
}

uint64_t sub_10000340C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  result = *(v0 + 344);
  v4 = *(v0 + 212) << 32;
  return result;
}

uint64_t sub_100003420()
{
}

uint64_t sub_100003474()
{

  return swift_beginAccess();
}

uint64_t sub_1000034B4()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void sub_1000034C8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000034E8()
{
  v2 = *(*(v0 + 256) + *(v0 + 368));
}

uint64_t sub_100003520()
{
  *(v0 + 4) = v1;
  *(v0 + 8) = 2080;

  return type metadata accessor for DaemonSession(0);
}

uint64_t sub_100003578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  *v13 = a13;
}

uint64_t sub_10000359C()
{

  return swift_slowAlloc();
}

void *sub_1000035B8()
{
  *(v0 + 8) = sub_1000C09D8;
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[2];
  return v1 + 12;
}

uint64_t sub_1000035F4()
{
  *(v1 + 12) = v0;
  v4 = *(v2 - 120);
  v5 = *(v2 - 96);

  return sub_100004A3C(v4, v5, (v2 - 88));
}

uint64_t sub_100003614()
{
  result = v0[49];
  v2 = v0[46];
  v3 = v0[27];
  return result;
}

void *sub_100003624(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = v3;
  a2[1] = v2;
  return result;
}

void sub_100003630()
{
  v3 = v1[49];
  v4 = v1[46];
  v5 = v1[47];
  v6 = v1[32];
}

uint64_t *sub_10000366C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t *sub_1000036CC(uint64_t *a1)
{
  v1 = a1;
  sub_1000191C8(a1[3]);
  if ((*(v2 + 82) & 2) != 0)
  {
    *v1 = swift_allocBox();
    return v3;
  }

  return v1;
}

uint64_t sub_100003788()
{

  return swift_slowAlloc();
}

uint64_t sub_1000037C8()
{
  v1 = *(v0 - 160);
  v2 = v1[4];
  sub_100003370(v1, v1[3]);
  v3 = *(v0 - 112) + *(v0 - 128);

  return InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
}

uint64_t sub_100003814(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100003890()
{

  return swift_slowAlloc();
}

BOOL sub_1000038BC(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1000038EC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

void sub_100003920(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100003940(uint64_t a1)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = v1;
}

uint64_t sub_1000039DC()
{

  return swift_slowAlloc();
}

double sub_1000039F8()
{
  *(v0 + 120) = 0;
  result = 0.0;
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  return result;
}

BOOL sub_100003A34(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_100003A4C()
{
}

uint64_t sub_100003A7C()
{
  sub_100003324(v0);
}

uint64_t sub_100003AC0@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v2 + 72) * v1;
  v4 = *(v2 + 32);
  return result;
}

uint64_t sub_100003B28(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
}

uint64_t sub_100003B44(uint64_t result)
{
  *(result + 8) = sub_100093EDC;
  v2 = *(v1 + 272);
  return result;
}

uint64_t sub_100003BD0(uint64_t a1)
{
  *(a1 + 8) = sub_1000EA188;
  v3 = *(v2 + 312);
  v4 = *(v2 + 288);
  return v1;
}

BOOL sub_100003CBC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v10, v11);
}

void sub_100003D34()
{
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[10];

  sub_1000AF388(v5);
}

uint64_t sub_100003D54(uint64_t a1)
{
  *(a1 + 8) = sub_1000D26D8;
  v4 = *(v2 + 24);
  v3 = *(v2 + 32);
  return v1;
}

uint64_t sub_100003D98(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003E34()
{

  return swift_slowAlloc();
}

uint64_t sub_100003E80(uint64_t a1)
{
  v4 = sub_100065020(&qword_1001BCB68, &unk_100173328);
  sub_100002F04(v4);
  v6 = *(v5 + 64);
  sub_100004B1C();
  __chkstk_darwin(v7);
  v121 = sub_100057858();
  v8 = sub_100002BDC(v121);
  v104 = v9;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  sub_100009C24();
  sub_100002BF0();
  __chkstk_darwin(v12);
  *(&v103 + 1) = &v103 - v13;
  if (qword_1001B89C0 != -1)
  {
LABEL_40:
    sub_100005264();
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000641C(v14, qword_1001BC8F8);
  sub_100005B00();
  v15 = type metadata accessor for URL();
  v112 = &v103;
  v16 = sub_100002BDC(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_100003E50();
  v23 = v21 - v22;
  v24 = *(v18 + 16);
  v110 = v18 + 16;
  v108 = v25;
  v109 = v24;
  (v24)(v23, a1, v15);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  v28 = os_log_type_enabled(v26, v27);
  v111 = v18;
  if (v28)
  {
    sub_10000A05C();
    v29 = swift_slowAlloc();
    v105 = a1;
    v30 = v29;
    sub_1000033D0();
    v31 = swift_slowAlloc();
    v107 = v1;
    *&v103 = v31;
    *&v119[0] = v31;
    *v30 = 136315138;
    sub_100007238();
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v34 = v33;
    v35 = *(v18 + 8);
    v36 = sub_100005EC8();
    v35(v36);
    v37 = sub_100004A3C(v32, v34, v119);
    v38 = v15;

    *(v30 + 4) = v37;
    _os_log_impl(&_mh_execute_header, v26, v27, "Looking up asset bundle %s in Model Catalog", v30, 0xCu);
    sub_100003324(v103);
    v39 = v107;
    sub_100002BD0();

    a1 = v105;
    sub_100002BD0();
  }

  else
  {

    v35 = *(v18 + 8);
    v40 = sub_100005EC8();
    v35(v40);
    v39 = v1;
    v38 = v15;
  }

  if (qword_1001B89D8 != -1)
  {
    sub_100002DE4();
    swift_once();
  }

  *&v114 = qword_1001BE970;
  type metadata accessor for CatalogClient();
  v41 = v113;
  CatalogClientProtocol.queryResourceBundle(with:)();
  if (v41)
  {
    *&v116 = v41;
    swift_errorRetain();
    sub_100065020(&qword_1001B8F60, &unk_100171260);
    v121 = String.init<A>(describing:)();
    v43 = v42;
    v113 = &v103;
    __chkstk_darwin(v121);
    sub_100003E50();
    v46 = v44 - v45;
    v47 = sub_100004CA4();
    v109(v47);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      sub_100002F10();
      v50 = swift_slowAlloc();
      sub_100011828();
      v112 = swift_slowAlloc();
      *&v116 = v112;
      *v50 = 136315394;
      sub_100007238();
      v51 = dispatch thunk of CustomStringConvertible.description.getter();
      v53 = v52;
      sub_1000032E4();
      v54(v46, v38);
      v55 = sub_100004A3C(v51, v53, &v116);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      v56 = v121;
      *(v50 + 14) = sub_100004A3C(v121, v43, &v116);
      _os_log_impl(&_mh_execute_header, v48, v49, "Failed to get resource bundle for %s: %s", v50, 0x16u);
      swift_arrayDestroy();
      sub_1000039CC();

      sub_100002BD0();

      v57 = v56;
    }

    else
    {

      sub_1000032E4();
      (v35)(v46, v38);
      v57 = v121;
    }

    sub_100003B1C();
    v72 = type metadata accessor for ModelManagerError();
    sub_100008744();
    sub_100015F54(v73, v74);
    sub_10000EF40();
    swift_allocError();
    *v75 = v57;
    v75[1] = v43;
    sub_100006098(v72);
    (*(v76 + 104))();
    swift_willThrow();
  }

  else
  {
    v119[0] = v116;
    v119[1] = v117;
    v120 = v118;
    sub_100007284(v119, &v114);
    if (v115)
    {
      v107 = v39;
      sub_100004A04(&v114, &v116);
      sub_100003370(&v116, *(&v117 + 1));
      a1 = dispatch thunk of ResourceBundle.resources.getter();
      v58 = 0;
      v1 = *(a1 + 16);
      v113 = &_swiftEmptyArrayStorage;
      v59 = (a1 + 32);
LABEL_12:
      v60 = v59 + 40 * v58;
      while (v1 != v58)
      {
        if (v58 >= *(a1 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        sub_100007130(v60, &v114);
        sub_1000072F4(&v114, v2);
        sub_100003324(&v114);
        if (sub_10000C6C0(v2, 1, v121) != 1)
        {
          v112 = v59;
          v61 = *(&v103 + 1);
          sub_10000C43C(v2, *(&v103 + 1));
          sub_10000C43C(v61, v106);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v68 = *(v113 + 2);
            sub_1000080E4();
            sub_1000093CC();
            v113 = v69;
          }

          v59 = v112;
          v63 = *(v113 + 2);
          v62 = *(v113 + 3);
          v64 = v63 + 1;
          if (v63 >= v62 >> 1)
          {
            sub_1000127D4(v62);
            v111 = v70;
            sub_1000093CC();
            v64 = v111;
            v113 = v71;
          }

          ++v58;
          *(v113 + 2) = v64;
          v65 = *(v104 + 80);
          v66 = *(v104 + 72);
          sub_100003C40();
          sub_10000C43C(v106, v67);
          goto LABEL_12;
        }

        sub_10000ECD8(v2, &qword_1001BCB68, &unk_100173328);
        v60 += 40;
        ++v58;
      }

      sub_1000089FC();
      v78 = v77;
      sub_100003370(&v116, *(&v117 + 1));
      v43 = dispatch thunk of ResourceBundle.rawID.getter();
      v80 = v79;

      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v81, v82))
      {
        sub_1000033D0();
        v83 = swift_slowAlloc();
        sub_100011828();
        v121 = swift_slowAlloc();
        *&v114 = v121;
        *v83 = 136315650;
        *(v83 + 4) = sub_100004A3C(v43, v80, &v114);
        *(v83 + 12) = 2048;
        *(v83 + 14) = *(v78 + 16);

        *(v83 + 22) = 2080;
        if (*(v78 + 16) == 1)
        {
          v84 = 0;
        }

        else
        {
          v84 = 115;
        }

        if (*(v78 + 16) == 1)
        {
          v85 = 0xE000000000000000;
        }

        else
        {
          v85 = 0xE100000000000000;
        }

        v86 = sub_100004A3C(v84, v85, &v114);

        *(v83 + 24) = v86;
        _os_log_impl(&_mh_execute_header, v81, v82, "Found asset bundle %s with %ld asset%s", v83, 0x20u);
        swift_arrayDestroy();
        sub_100005864();

        sub_100002BD0();
      }

      else
      {
      }

      sub_10000ECD8(v119, &qword_1001BCBA0, &qword_100173398);
      sub_100003324(&v116);
    }

    else
    {
      v87 = sub_10000ECD8(&v114, &qword_1001BCBA0, &qword_100173398);
      __chkstk_darwin(v87);
      sub_100003E50();
      v88 = a1;
      v91 = v89 - v90;
      v105 = v88;
      v109(v89 - v90);
      v92 = Logger.logObject.getter();
      v93 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v92, v93))
      {
        sub_10000A05C();
        swift_slowAlloc();
        v121 = &v103;
        sub_100007958();
        v94 = swift_slowAlloc();
        v113 = v35;
        v95 = v94;
        *&v116 = v94;
        LODWORD(v103) = 136315138;
        sub_100007238();
        v96 = dispatch thunk of CustomStringConvertible.description.getter();
        v98 = v97;
        sub_1000032E4();
        (v113)(v91, v38);
        v99 = sub_100004A3C(v96, v98, &v116);

        *(&v103 + 4) = v99;
        _os_log_impl(&_mh_execute_header, v92, v93, "Asset bundle %s not found in Model Catalog, falling back to test assets", &v103, 0xCu);
        sub_100003324(v95);
        sub_100005864();

        sub_100002BD0();
      }

      else
      {

        sub_1000032E4();
        (v35)(v91, v38);
      }

      v43 = URL.absoluteString.getter();
      v101 = URL.absoluteString.getter();
      sub_10010EC94(v101, v102);
      sub_10000ECD8(v119, &qword_1001BCBA0, &qword_100173398);
    }
  }

  return v43;
}

uint64_t sub_100004A04(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100004A3C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000061A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_10000603C(v11, *a3);
    *a3 = v9 + 32;
  }

  sub_100003324(v11);
  return v7;
}

uint64_t sub_100004B50()
{

  return swift_beginAccess();
}

uint64_t sub_100004B78()
{
}

uint64_t sub_100004BA0()
{

  return swift_beginAccess();
}

uint64_t sub_100004BD8(uint64_t result)
{
  *(v4 + 440) = result;
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(v4 + 224) = v1;
  return result;
}

unint64_t sub_100004C00(unint64_t result)
{
  *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  v3 = *(v1 + 48);
  return result;
}

uint64_t sub_100004C24()
{

  return swift_beginAccess();
}

__n128 sub_100004C68(_DWORD *a1)
{
  result = *(v2 - 240);
  *a1 = result.n128_u32[0];
  a1[1] = v1;
  return result;
}

void *sub_100004C7C()
{
  result = sub_100003370(*(v0 + 40), *(*(v0 + 40) + 24));
  *(v0 + 88) = *(*result + 128);
  return result;
}

uint64_t sub_100004CE8()
{
  result = v1;
  v3 = *(v0 + 8);
  return result;
}

BOOL sub_100004CFC()
{

  return sub_100128E20(sub_10014A5A0, v2, v0, v1);
}

void sub_100004D58()
{
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[37] + 8;
}

uint64_t sub_100004D74()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10006FA64;

  return sub_100004E20();
}

uint64_t sub_100004E20()
{
  sub_100002BAC();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = type metadata accessor for AuditToken();
  v1[10] = v4;
  sub_100002F44(v4);
  v1[11] = v5;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v8 = type metadata accessor for ModelXPCRequest();
  v1[15] = v8;
  sub_100002F44(v8);
  v1[16] = v9;
  v11 = *(v10 + 64) + 15;
  v1[17] = swift_task_alloc();
  sub_1000059F8();

  return _swift_task_switch(v12, v13, v14);
}

uint64_t sub_100004F40(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100004F70()
{

  return swift_once();
}

uint64_t sub_100004FB4()
{

  return String.hash(into:)();
}

uint64_t sub_100004FDC()
{

  return swift_once();
}

uint64_t sub_100004FFC()
{

  return swift_once();
}

uint64_t sub_100005038(unint64_t *a1)
{

  return sub_100091A48(a1);
}

uint64_t sub_1000050B4()
{

  return swift_once();
}

uint64_t sub_100005114()
{

  return swift_once();
}

uint64_t sub_100005134()
{

  return swift_once();
}

uint64_t sub_100005204@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;

  return swift_task_alloc();
}

uint64_t sub_100005224()
{

  return swift_once();
}

uint64_t sub_100005244()
{

  return swift_once();
}

void sub_1000052AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
}

uint64_t sub_1000052BC(unint64_t *a1)
{

  return sub_10011C9EC(a1);
}

uint64_t sub_1000052E0()
{

  return swift_once();
}

uint64_t sub_100005314()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000053A0()
{

  return swift_once();
}

uint64_t sub_1000053C0()
{
  sub_100003884();
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[8];
  v3 = v0[9];
  sub_100005490();
  TaskCancellingXPCReceivedMessage.decode()();
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  swift_task_alloc();
  sub_100004B34();
  v0[18] = v5;
  *v5 = v6;
  v5[1] = sub_1000138B4;
  v7 = v0[17];
  v8 = v0[14];

  return sub_10015DED0(v3 + 16, v8);
}

void sub_100005490()
{
  v1 = type metadata accessor for AuditToken();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  TaskCancellingXPCReceivedMessage.auditToken.getter();
  v6 = AuditToken.processIdentifier.getter();
  (*(v2 + 8))(v5, v1);
  v7 = *(v0 + 56);
  os_unfair_lock_lock(v7 + 5);
  if (!v7[4]._os_unfair_lock_opaque)
  {
    v7[4]._os_unfair_lock_opaque = v6;
  }

  os_unfair_lock_unlock(v7 + 5);
}

uint64_t sub_1000055C8(uint64_t result)
{
  *(result + 8) = sub_10005ECCC;
  v2 = *(v1 + 88);
  return result;
}

uint64_t sub_1000056DC()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[49];
  v4 = v0[46];
  v5 = v0[43];
  v6 = v0[40];
  v7 = v0[37];
  v8 = *(v0[53] + 8);
  return v0[54];
}

uint64_t sub_100005710()
{
  v1 = v0[50];
  result = v0[20];
  v3 = *(v0[53] - 8);
  return result;
}

uint64_t sub_100005730()
{
  v2 = *(v0 + 192);

  return swift_slowAlloc();
}

uint64_t sub_100005764()
{
  v1 = v0[42];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  v6 = v0[40] + 8;
  return v0[43];
}

uint64_t sub_100005790(uint64_t a1)
{
  sub_10000C6C0(v1, 1, a1);
}

void sub_1000057CC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100005804(unint64_t *a1)
{

  return sub_1000B4F30(a1);
}

uint64_t sub_100005828()
{
  result = v0 + 80;
  v2 = *(v0 + 80);
  return result;
}

uint64_t sub_100005844(uint64_t result)
{
  *(v4 + 440) = result;
  *(result + 16) = v1;
  *(result + 24) = v2;
  *(result + 32) = v3;
  *(v4 + 224) = v5;
  return result;
}

uint64_t sub_100005914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_100009BFC(a1, v4, 1, a4);
}

uint64_t sub_100005950(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 48);
  return v2;
}

uint64_t sub_10000598C()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[2];

  return swift_task_alloc();
}

uint64_t sub_1000059A8()
{
}

void sub_1000059D8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_100005A10()
{

  return swift_beginAccess();
}

uint64_t sub_100005A30(uint64_t a1)
{
  *(a1 + 8) = sub_1000C2B58;
  v4 = v1[25];
  v3 = v1[26];
  v5 = v1[24];
  v6 = v1[19];
  return v2;
}

uint64_t sub_100005A74()
{
  v2 = *(*(v1 - 160) + 8);
  result = v0;
  v4 = *(v1 - 144);
  return result;
}

uint64_t sub_100005A88()
{

  return swift_beginAccess();
}

uint64_t sub_100005AA4()
{
  sub_100003324(v0);
}

uint64_t sub_100005AD8()
{
}

uint64_t sub_100005B28(uint64_t a1)
{
  *(a1 + 8) = sub_100053DA0;
  v4 = v1[31];
  v3 = v1[32];
  v5 = v1[30];
  v6 = v1[26];
  return v2;
}

uint64_t sub_100005B6C()
{
  v2 = v0[17];
  v4 = v0[13];
  v3 = v0[14];
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];
}

__n128 sub_100005B8C()
{
  result = *(v0 - 128);
  *(v0 - 112) = *(v0 - 144);
  *(v0 - 96) = result;
  v2 = *(v0 - 88);
  return result;
}

uint64_t sub_100005BB4()
{

  return sub_100009BFC(v0, 1, 1, v1);
}

uint64_t sub_100005BD4(uint64_t a1)
{
  *(a1 + 8) = sub_100090B0C;
  v2 = *(v1 + 112);
  return v1 + 16;
}

uint64_t sub_100005C18()
{

  return swift_once();
}

uint64_t sub_100005C38()
{
  v1 = v0[5];
  v2 = *(v0[6] + 8);
  return v0[7];
}

uint64_t sub_100005C60()
{
  v1 = *(v0 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100005CE0()
{
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[22];

  return swift_beginAccess();
}

unint64_t sub_100005D74(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t sub_100005DA0(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  *v14 = a1;

  return sub_100004A3C(v13, v12, va);
}

uint64_t sub_100005DF0(uint64_t result)
{
  *(result + 8) = sub_10014C9B4;
  v2 = *(v1 + 184);
  return result;
}

void sub_100005EB0(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100005ED4()
{
  result = v0[40];
  v2 = v0[36];
  v3 = v0[35];
  v4 = *(v0[37] + 8);
  return result;
}

void sub_100005F70()
{
  v1 = v0[22];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[15];
}

uint64_t sub_100005FA4()
{

  return swift_task_alloc();
}

uint64_t *sub_100005FF8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(result + ((a2 + 3) & 0x1FFFFFFFCLL)) = 0;
  v2 = *result;
  return result;
}

uint64_t sub_100006010()
{
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[3];
  v6 = v0[4];

  return type metadata accessor for Logger();
}

uint64_t sub_10000603C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000060D8()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000060F4()
{
  v2 = *(v0 - 144);

  return swift_slowAlloc();
}

uint64_t sub_100006114(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_1000082D4(a1, a2, a3);
}

uint64_t sub_100006138()
{
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[65];
  v8 = v0[61];
  v7 = v0[62];
  v10 = v0[59];
  v9 = v0[60];
  v11 = v0[56];
}

BOOL sub_100006168(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_100006184(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

unint64_t sub_1000061A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10000CAF4(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

uint64_t sub_1000062D8()
{

  return swift_slowAlloc();
}

uint64_t sub_1000062F4@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

void sub_1000063B0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void sub_1000063C4()
{
  v1 = v0[48];
  v3 = v0[49];
  v2 = v0[46];
}

uint64_t sub_1000063F0()
{
  v2 = v0[42];
  v4 = v0[39];
  v3 = v0[40];

  return type metadata accessor for ModelManagerError();
}

uint64_t sub_10000641C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

BOOL sub_100006468(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void sub_1000064D0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_100006508(uint64_t result)
{
  *(v4 + 400) = result;
  *(result + 16) = v1;
  *(result + 24) = v2;
  *(result + 32) = v7;
  *(result + 40) = v5 & 1;
  *(result + 41) = v3;
  *(v4 + 216) = v6;
  return result;
}

uint64_t sub_100006544()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[52];
  v4 = v0[49];
  v5 = v0[46];
  v6 = v0[27];
  v7 = *(v0[28] + 32);
  return v0[29];
}

uint64_t sub_100006588()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[44];
  v5 = v0[40];
  v4 = v0[41];
  v7 = v0[38];
  v6 = v0[39];
  v8 = v0[35];
  v9 = v0[47] + 8;
  return v0[50];
}

void sub_1000065AC()
{
  v2 = v0[45];
  v1 = v0[46];
  v4 = v0[41];
  v3 = v0[42];
  v5 = v0[38];
  v6 = v0[35];
  v7 = v0[32];
  v8 = v0[29];
}

uint64_t sub_1000065D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  v3 = *(v2 - 8);
  return result;
}

void sub_100006628(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v144 = a2;
  v3 = sub_100065020(&qword_1001BCBA8, &qword_1001733A0);
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  sub_100004B1C();
  __chkstk_darwin(v6);
  v8 = v143 - v7;
  v9 = type metadata accessor for CostProfile();
  v10 = sub_100002BDC(v9);
  v147 = v11;
  v13 = *(v12 + 64);
  __chkstk_darwin(v10);
  sub_100009C24();
  sub_100002BF0();
  __chkstk_darwin(v14);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v15);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v16);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v17);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v18);
  sub_1000079F8();
  sub_100002BF0();
  __chkstk_darwin(v19);
  v21 = (v143 - v20);
  v22 = type metadata accessor for InferenceProvider();
  v23 = sub_100002BDC(v22);
  v151 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_100009C24();
  v162 = v27;
  sub_100002F1C();
  __chkstk_darwin(v28);
  v163 = v143 - v29;
  sub_100003B1C();
  v171 = type metadata accessor for ManagedRuntimeInformation();
  v30 = sub_100002BDC(v171);
  v32 = v31;
  v34 = *(v33 + 64);
  __chkstk_darwin(v30);
  sub_100009C24();
  v160 = v35;
  sub_100002F1C();
  __chkstk_darwin(v36);
  sub_1000079F8();
  v161 = v37;
  sub_100002F1C();
  __chkstk_darwin(v38);
  v154 = v143 - v39;
  v40 = a1[3];
  v41 = a1[4];
  v148 = a1;
  v42 = sub_100005EC8();
  v145 = sub_100003370(v42, v43);
  sub_100019498();
  v146 = v41;
  v44 = dispatch thunk of ManagedResource.runtimeInformation.getter();
  v45 = *(v44 + 16);
  v152 = v8;
  v164 = v22;
  v150 = v9;
  v149 = v21;
  if (v45)
  {
    v143[2] = v40;
    v172 = &_swiftEmptyArrayStorage;
    sub_10000C958(0, v45, 0);
    v153 = v32;
    v47 = *(v32 + 16);
    v46 = v32 + 16;
    v158 = v47;
    v48 = *(v46 + 64);
    sub_10000657C();
    v143[1] = v44;
    v50 = v44 + v49;
    v157 = *(v46 + 56);
    v159 = v46;
    v155 = (v46 - 8);
    v156 = (v151 + 8);
    v51 = v171;
    v21 = v172;
    v52 = v160;
    v53 = v162;
    do
    {
      v170 = v45;
      v54 = v161;
      v55 = v158;
      v158(v161, v50, v51);
      v55(v52, v54, v51);
      v56 = v163;
      ManagedRuntimeInformation.inferenceProvider.getter();
      v57 = InferenceProvider.id.getter();
      v168 = v58;
      v169 = v57;
      v59 = *v156;
      v60 = v56;
      v61 = v164;
      (*v156)(v60, v164);
      v62 = ManagedRuntimeInformation.instanceID.getter();
      v166 = v63;
      v167 = v62;
      ManagedRuntimeInformation.inferenceProvider.getter();
      LODWORD(v165) = InferenceProvider.hostedOnServer.getter();
      v59(v53, v61);
      v64 = *v155;
      (*v155)(v52, v51);
      v64(v54, v51);
      v172 = v21;
      v66 = v21[2];
      v65 = v21[3];
      v9 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        v70 = sub_1000127D4(v65);
        sub_10000C958(v70, v66 + 1, 1);
        v21 = v172;
      }

      v21[2] = v9;
      v67 = &v21[5 * v66];
      v68 = v168;
      *(v67 + 4) = v169;
      *(v67 + 5) = v68;
      v69 = v166;
      *(v67 + 6) = v167;
      *(v67 + 7) = v69;
      v67[64] = v165 & 1;
      v50 += v157;
      v45 = v170 - 1;
    }

    while (v170 != 1);
    v162 = v21;

    sub_10001348C();
    v8 = v152;
    v22 = v164;
    v32 = v153;
    v71 = v151;
  }

  else
  {

    v162 = &_swiftEmptyArrayStorage;
    v71 = v151;
  }

  v72 = *(dispatch thunk of ManagedResource.runtimeInformation.getter() + 16);
  v73 = v154;
  if (v72)
  {
    v76 = *(v32 + 16);
    v75 = v32 + 16;
    v74 = v76;
    v77 = *(v75 + 64);
    sub_10000657C();
    v161 = v78;
    v9 = v78 + v79;
    v21 = *(v75 + 56);
    v166 = (v71 + 8);
    v170 = &_swiftEmptyArrayStorage;
    v80 = (v75 - 8);
    v165 = xmmword_100173180;
    v81 = v171;
    v153 = v75;
    v167 = v21;
    do
    {
      v74(v73, v9, v81);
      ManagedRuntimeInformation.vmInferenceProvider.getter();
      if (sub_10000C6C0(v8, 1, v22) == 1)
      {
        (*v80)(v73, v81);
        sub_10000ECD8(v8, &qword_1001BCBA8, &qword_1001733A0);
      }

      else
      {
        v82 = v74;
        v83 = v73;
        v84 = InferenceProvider.id.getter();
        v168 = v85;
        v169 = v84;
        v86 = *v166;
        (*v166)(v8, v22);
        v87 = v163;
        ManagedRuntimeInformation.inferenceProvider.getter();
        v88 = InferenceProvider.hostedOnServer.getter();
        v86(v87, v22);
        (*v80)(v83, v171);
        v89 = v170;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = v89[2];
          sub_1000080E4();
          sub_10000758C();
          v89 = v95;
        }

        v91 = v89[2];
        v90 = v89[3];
        v74 = v82;
        if (v91 >= v90 >> 1)
        {
          sub_1000127D4(v90);
          sub_10000758C();
          v89 = v96;
        }

        v89[2] = v91 + 1;
        v170 = v89;
        v92 = &v89[5 * v91];
        v93 = v168;
        v92[4] = v169;
        v92[5] = v93;
        *(v92 + 3) = v165;
        *(v92 + 64) = v88 & 1;
        v8 = v152;
        v22 = v164;
        v81 = v171;
        v73 = v154;
        v21 = v167;
      }

      v9 += v21;
      --v72;
    }

    while (v72);

    sub_10001348C();
  }

  else
  {

    v170 = &_swiftEmptyArrayStorage;
  }

  v97 = v148;
  v98 = v148[3];
  v99 = v148[4];
  sub_100011C00();
  v100 = *(v99 + 8);
  sub_100003170();
  v171 = dispatch thunk of CatalogResource.id.getter();
  v102 = v101;
  v103 = v97[3];
  v104 = v97[4];
  sub_100011C00();
  v105 = *(v104 + 8);
  sub_100003170();
  v106 = dispatch thunk of CatalogResource.dependentResourceIDs.getter();
  v107 = v97[3];
  v108 = v97[4];
  sub_100011C00();
  sub_100003170();
  dispatch thunk of ManagedResource.cost.getter();
  v109 = CostProfile.onDeviceMemory.getter();
  v110 = *(v147 + 8);
  (v110)(v21, v9);
  if (v109 < 0)
  {
    __break(1u);
  }

  else
  {
    v111 = type metadata accessor for ModelCatalogAsset(0);
    v168 = v102;
    v169 = v111;
    v112 = v144;
    v113 = v144 + *(v111 + 32);
    AssetCost.init(onDeviceMemory:)();
    v114 = v97[3];
    v115 = v97[4];
    sub_100011C00();
    sub_100003170();
    dispatch thunk of ManagedResource.cost.getter();
    LODWORD(v167) = CostProfile.cacheable.getter();
    (v110)(v21, v9);
    v116 = v97[3];
    v117 = v97[4];
    sub_100011C00();
    sub_100003170();
    dispatch thunk of ManagedResource.cost.getter();
    LODWORD(v166) = CostProfile.avoidUnload.getter();
    v118 = sub_100003754();
    v110(v118);
    v119 = v9;
    v120 = v97[4];
    sub_100003370(v97, v97[3]);
    sub_100012E00(&v170);
    dispatch thunk of ManagedResource.cost.getter();
    LODWORD(v165) = CostProfile.dynamicModeAllowed.getter();
    (v110)(v116, v119);
    v164 = v106;
    v121 = v97[4];
    sub_100003370(v97, v97[3]);
    sub_100012E00(&v171);
    dispatch thunk of ManagedResource.cost.getter();
    LODWORD(v163) = CostProfile.energyEfficientMode.getter();
    v122 = v119;
    (v110)(v116, v119);
    v123 = v97[4];
    sub_100003370(v97, v97[3]);
    sub_100012E00(&v172);
    dispatch thunk of ManagedResource.cost.getter();
    LODWORD(v161) = CostProfile.unentitledGatedByFoundationModels.getter();
    (v110)(v116, v119);
    v124 = v97;
    v125 = v97[3];
    v126 = v97[4];
    sub_100003370(v124, v125);
    v127 = v143[7];
    dispatch thunk of ManagedResource.cost.getter();
    v128 = CostProfile.unentitledUseCases.getter();
    (v110)(v127, v122);
    v130 = v124[3];
    v129 = v124[4];
    v131 = sub_100005EC8();
    sub_100003370(v131, v132);
    v133 = v143[8];
    sub_100019498();
    dispatch thunk of ManagedResource.cost.getter();
    v134 = CostProfile.preferUnload.getter();
    (v110)(v133, v122);
    v135 = v168;
    v136 = v169;
    *v112 = v171;
    v112[1] = v135;
    v137 = v162;
    v112[2] = v164;
    v112[3] = v137;
    v112[4] = v170;
    sub_100009534(*(v136 + 36));
    sub_100009534(*(v138 + 40));
    sub_100009534(*(v139 + 44));
    sub_100009534(*(v140 + 48));
    sub_100009534(*(v141 + 52));
    *(v112 + *(v142 + 56)) = v128;
    *(v112 + *(v142 + 60)) = v134 & 1;
    sub_100003324(v124);
    sub_100002EEC();
  }
}

uint64_t sub_10000706C()
{
}

uint64_t sub_100007098(uint64_t a1)
{

  return sub_100009BFC(v1, 1, 1, a1);
}

uint64_t sub_1000070D0(uint64_t a1)
{

  return sub_100009BFC(a1, 0, 1, v1);
}

uint64_t sub_1000070EC()
{
}

uint64_t sub_100007104()
{
  v2 = v0[42];
  v3 = v0[43];
  v4 = v0[32];
  v6 = v0[27];
  v5 = v0[28];
  v7 = v0[24];
  v8 = v0[21];
  v9 = v0[14];

  return type metadata accessor for Logger();
}

uint64_t sub_100007130(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  sub_100006098(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_1000071F0(uint64_t result)
{
  *(v2 + 14) = result;
  *(v2 + 22) = v1;
  return result;
}

unint64_t sub_100007238()
{
  result = qword_1001B9CD8;
  if (!qword_1001B9CD8)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9CD8);
  }

  return result;
}

uint64_t sub_100007284(uint64_t a1, uint64_t a2)
{
  v4 = sub_100065020(&qword_1001BCBA0, &qword_100173398);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000072F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_100007130(a1, v19);
  sub_100065020(&qword_1001BCB38, &qword_1001732E0);
  sub_100065020(&qword_1001BCB78, &qword_100173340);
  if (swift_dynamicCast())
  {
    sub_100004A04(v17, v20);
    sub_100007130(v20, v19);
    sub_100006628(v19, a2);
    sub_100003324(v20);
    v4 = type metadata accessor for ModelCatalogAsset(0);
    v5 = a2;
    v6 = 0;
  }

  else
  {
    v18 = 0;
    memset(v17, 0, sizeof(v17));
    sub_10000ECD8(v17, &qword_1001BCB80, &qword_100173348);
    if (qword_1001B89C0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000641C(v7, qword_1001BC8F8);
    sub_100007130(a1, v20);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136315138;
      sub_100003370(v20, v20[3]);
      v12 = dispatch thunk of CatalogResource.id.getter();
      v14 = v13;
      sub_100003324(v20);
      v15 = sub_100004A3C(v12, v14, v19);

      *(v10 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v8, v9, "Asset %s cannot be converted to a Model Catalog Managed Resource; ignoring", v10, 0xCu);
      sub_100003324(v11);
    }

    else
    {

      sub_100003324(v20);
    }

    v4 = type metadata accessor for ModelCatalogAsset(0);
    v5 = a2;
    v6 = 1;
  }

  return sub_100009BFC(v5, v6, 1, v4);
}

uint64_t sub_100007574()
{
  v2 = *(v0 + 112);

  return type metadata accessor for Logger();
}

void sub_10000758C()
{
  sub_100004D68();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_100012660();
  if (v6 == v7)
  {
LABEL_7:
    sub_100006184(v5);
    if (v2)
    {
      sub_100065020(&qword_1001B90C8, &unk_10016FD40);
      v8 = sub_100048628();
      v9 = j__malloc_size(v8);
      sub_10014B01C(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10001997C();
        sub_1000708B4(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_10000D5B4();
    swift_arrayInitWithCopy();
    goto LABEL_12;
  }

  sub_100005FE0();
  if (!v6)
  {
    sub_10000A210();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100007648()
{

  return swift_slowAlloc();
}

uint64_t sub_10000766C(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t sub_10000767C()
{

  return swift_slowAlloc();
}

uint64_t sub_100007698()
{

  return swift_slowAlloc();
}

uint64_t sub_1000076D8()
{
  v2 = *(v0 + 392);
  v3 = *(v0 + 368);

  return type metadata accessor for ModelManagerError();
}

uint64_t sub_1000076F4()
{
  v2 = v0[44];
  result = v0[45];
  v3 = v0[43];
  v5 = v0[39];
  v4 = v0[40];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[32];
  v9 = v0[29];
  return result;
}

uint64_t sub_100007710()
{
  v2 = v0[40];
  v3 = v0[36];
  v4 = v0[37];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v9 = v0[26];
  v8 = v0[27];
  v11 = v0[24];
  v10 = v0[25];
  v12 = v0[23];
  v14 = v0[20];
  v15 = v0[19];
}

uint64_t sub_100007748()
{
  v2 = *v0;

  return static _SetStorage.copy(original:)();
}

uint64_t sub_100007764()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_10000778C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000779C()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_1000077CC()
{
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[17];
  v6 = v0[6];

  return type metadata accessor for Logger();
}

uint64_t sub_1000077EC()
{

  return swift_allocObject();
}

uint64_t sub_10000781C()
{

  return swift_arrayInitWithCopy();
}

void sub_1000078A0()
{
  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[2];
}

uint64_t sub_1000078C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, char a20)
{
  v25 = (v23 + v22);
  *v25 = a18;
  v25[1] = a20;
  *(v21 + 104) = v20;
}

uint64_t sub_100007984()
{
  v2 = *(v0 + 240);
}

void sub_1000079BC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x12u);
}

uint64_t sub_1000079DC()
{
}

uint64_t sub_100007A20()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100007A5C(uint64_t a1)
{
  *(v4 - 88) = a1;
  *v2 = v3;
  *(v2 + 1) = v1;
  *(v2 + 2) = 2082;
  v6 = *(v4 - 152);

  return UUIDIdentifier.uuidString.getter();
}

uint64_t sub_100007AB0()
{
  result = v0[55];
  v2 = v0[56];
  v4 = v0[51];
  v3 = v0[52];
  v6 = v0[49];
  v5 = v0[50];
  v7 = v0[47];
  v8 = v0[48];
  v9 = v0[45];
  v10 = v0[46];
  return result;
}

void sub_100007AC8(uint64_t a1@<X8>)
{
  v3[9] = v2;
  v3[10] = v1;
  v3[17] = v4 + 3;
  v3[18] = (a1 - 32) | 0x8000000000000000;
}

uint64_t sub_100007AE0()
{

  return sub_100009BFC(v1, 1, 1, v0);
}

uint64_t sub_100007B00(uint64_t result)
{
  *(result + 8) = sub_100118AD0;
  v2 = *(v1 + 328);
  return result;
}

uint64_t sub_100007B38()
{
  v4 = (*(v0 + 56) + 40 * v1);

  return sub_100004A04(v4, v2);
}

uint64_t sub_100007BA0()
{
}

uint64_t sub_100007BCC()
{
}

uint64_t sub_100007BE4()
{
}

uint64_t sub_100007C00@<X0>(uint64_t a1@<X8>)
{
  result = a1 + v1 * v2;
  v5 = **(v3 - 152);
  return result;
}

uint64_t sub_100007C14(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100004A3C(v3, v4, a3);
}

uint64_t sub_100007C3C(uint64_t a1, uint64_t a2)
{
  sub_10000641C(a1, a2);

  return swift_errorRetain();
}

uint64_t sub_100007C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18)
{
  *(v18 + 352) = a1;
  *(a1 + 16) = v19;
  *(a1 + 24) = a18;
  *(a1 + 32) = a15;
  *(a1 + 40) = a17 & 1;
  return v20;
}

void sub_100007CF4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_100007D14()
{
  sub_100009BFC(v1, 0, 1, v0);
}

uint64_t sub_100007DC8()
{
}

uint64_t sub_100007DE0()
{
  v2 = *(*(v0 + 248) + *(*(v0 + 256) + 24));
  *(v0 + 272) = v2;
  v3 = *(v2 + 32);
  *(v0 + 304) = v3;
  v4 = -1;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v5 = v4 & *(v2 + 64);
}

uint64_t sub_100007E40(uint64_t a1)
{
  *(a1 + 8) = sub_1000DE2F0;
  v2 = v1[33];
  v3 = v1[28];
  return v1[29];
}

uint64_t sub_100007E88(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v4 + 4) = a1;
  *(v4 + 12) = 2080;

  return sub_100004A3C(v3, v2, va);
}

uint64_t sub_100007ED0()
{

  return swift_beginAccess();
}

uint64_t sub_100007EF4()
{
  v2 = *(v0 + 88);

  return swift_beginAccess();
}

uint64_t sub_100007F94()
{
  result = *(v0 + v1 + 72);
  v4 = *(v0 + v1 + 80);
  v5 = *(v0 + v1 + 88);
  v6 = *(v0 + v1 + 96);
  v7 = *(v0 + v1 + 104);
  v8 = *(v2 + v1 + 72);
  v9 = *(v2 + v1 + 80);
  v10 = *(v2 + v1 + 88);
  v11 = *(v2 + v1 + 96);
  v12 = *(v2 + v1 + 104);
  return result;
}

uint64_t sub_100007FBC(uint64_t a1)
{
  *(a1 + 8) = sub_100092F2C;
  v3 = *(v1 + 120);
  v4 = *(v1 + 96);
  return v2;
}

uint64_t *sub_100008030(uint64_t a1)
{
  *(v1 + 48) = a1;

  return sub_10000366C((v1 + 16));
}

uint64_t sub_100008048()
{
  v2 = v0[40];
  v4 = v0[36];
  v3 = v0[37];
  v6 = v0[32];
  v5 = v0[33];
  v7 = v0[31];
  v9 = v0[26];
  v8 = v0[27];
  v10 = v0[24];
  v14 = v0[23];
  v12 = v0 + 19;
  v11 = v0[19];
  v15 = v12[1];
}

uint64_t sub_100008080()
{

  return swift_dynamicCast();
}

uint64_t sub_1000080A4()
{

  return swift_slowAlloc();
}

void sub_1000080F4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_100008134(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_100004A3C(a1, a2, va);
}

uint64_t sub_10000814C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100008194()
{

  return swift_allocError();
}

uint64_t sub_1000081F4()
{
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  sub_100004A04((v1 + 168), v1 + 88);
}

uint64_t sub_100008244()
{
  v3 = v0[33];
  *(v1 - 120) = v0[32];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  v11 = v0[28];
  v12 = v0[27];
  v13 = v0[26];
  v7 = v0[19];
  v10 = v0[20];
  v8 = v0[17] + v3 + *(v0[18] + 60);

  return sub_1000480AC(v8, (v0 + 2));
}

uint64_t sub_1000082B4()
{
  v2 = v0[49];
  v3 = v0[45];
  v4 = v0[46];
  v5 = (v0[48] + 15) & 0xFFFFFFFFFFFFFFF0;

  return swift_task_alloc();
}

uint64_t sub_1000082D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000831C@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_10006A65C(v2, &a2 - a1, v3, v4);
}

void sub_100008354(uint64_t a1@<X8>)
{
  v2 = (a1 + v1);
  v3 = v2[1];
  v4 = *v2 + **v2;
}

void sub_100008390()
{
  v4 = *(v1 + 16);
  v3 = v1 + 16;
  v5 = *(v3 + 64);
  *(v2 - 96) = v0;
  v6 = *(v3 + 56);
}

uint64_t sub_1000083B4(uint64_t result)
{
  *(result + 8) = sub_1000178EC;
  v2 = *(v1 + 264);
  v3 = *(v1 + 232);
  return result;
}

uint64_t (*sub_1000083FC())()
{
  *(v1 + 192) = *v0;
  *(v1 + 200) = v0[1];
  return sub_1000B9104;
}

uint64_t sub_1000084D8(uint64_t a1)
{
  *(a1 + 8) = sub_10011FB60;
  v3 = *(v2 + 296);
  v4 = *(v2 + 256);
  return v1;
}

uint64_t sub_100008510(float *a1, float a2)
{
  *a1 = a2;

  return swift_beginAccess();
}

uint64_t sub_100008598()
{

  return swift_once();
}

uint64_t sub_1000085B8(unint64_t *a1)
{

  return sub_100091A48(a1);
}

uint64_t sub_100008638(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  return result;
}

uint64_t sub_10000869C()
{
  v2 = v0[29];
  v3 = v0[26];
  v5 = v0[22];
  v4 = v0[23];
  v7 = v0[18];
  v6 = v0[19];
}

uint64_t sub_1000086EC()
{

  return swift_once();
}

uint64_t sub_100008724()
{

  return swift_once();
}

uint64_t sub_10000875C()
{

  return swift_once();
}

uint64_t sub_10000877C()
{

  return swift_once();
}

uint64_t sub_1000087D4(uint64_t a1)
{
  *(a1 + 8) = sub_10005CDD0;
  v2 = v1[15];
  result = v1[12];
  v4 = v1[13];
  return result;
}

uint64_t sub_10000881C()
{

  return swift_once();
}

uint64_t sub_10000883C(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_10000884C()
{

  return sub_100009BFC(v0, 1, 1, v1);
}

uint64_t sub_10000887C()
{

  return swift_dynamicCast();
}

void sub_1000088A0()
{
  v1 = v0[17];
  v2 = v0[14];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];
  v6 = v0[2];
}

uint64_t sub_10000890C@<X0>(uint64_t a1@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v1 + 16);
  v6 = *(v2 + 16);
  return v3;
}

uint64_t sub_10000892C()
{
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[46];
  v5 = v0[35];

  return swift_beginAccess();
}

void sub_100008974()
{

  sub_100070E00();
}

uint64_t sub_100008990(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 16);
  return result;
}

uint64_t sub_1000089B8()
{
}

uint64_t sub_1000089D0()
{

  return swift_arrayDestroy();
}

uint64_t sub_1000089F0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = result;
  return result;
}

void sub_1000089FC()
{
  sub_1000134E8();
  v2 = sub_10002A104();
  v3 = type metadata accessor for ModelCatalogAsset(v2);
  v4 = sub_100002BDC(v3);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_100005630();
  sub_100018C20();
  __chkstk_darwin(v7);
  sub_10001885C();
  sub_10000814C(&qword_1001B9450, type metadata accessor for ModelCatalogAsset);
  sub_100004CA4();
  Set.init(minimumCapacity:)();
  v8 = *(v0 + 16);
  if (v8)
  {
    sub_10000CB40();
    do
    {
      sub_10000CF04();
      sub_10000931C();
      sub_100008B58();
      sub_100011314();
      sub_10000D2AC();
      v3 += v1;
      --v8;
    }

    while (v8);
  }

  sub_100009C38();
}

void sub_100008B58()
{
  sub_1000055B0();
  v3 = v2;
  v47 = v4;
  v48 = type metadata accessor for ModelCatalogAsset(0);
  v5 = sub_100002BDC(v48);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100005630();
  v12 = (v10 - v11);
  __chkstk_darwin(v13);
  v45 = (&v45 - v14);
  v46 = v0;
  v15 = *v0;
  v16 = *(*v0 + 40);
  Hasher.init(_seed:)();
  sub_10000C228(&v52);
  Hasher._finalize()();
  v50 = v15 + 56;
  v51 = v15;
  sub_100012A00();
  v19 = v18 & ~v17;
  if (((*(v20 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
  {
LABEL_47:
    v40 = v46;
    v41 = *v46;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v45;
    sub_10000931C();
    v52 = *v40;
    sub_100008EE4(v43, v19, isUniquelyReferenced_nonNull_native);
    *v40 = v52;
    sub_10000D460();
    goto LABEL_48;
  }

  v49 = ~v17;
  v21 = *v3;
  v22 = v3[1];
  v23 = *(v7 + 72);
  while (1)
  {
    v24 = *(v51 + 48);
    sub_100003B04();
    sub_10000931C();
    v25 = *v12 == v21 && v12[1] == v22;
    if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_46;
    }

    v26 = v12[2];
    sub_100016458();
    if (!v25)
    {
      goto LABEL_46;
    }

    if (v1 && v28 != v27)
    {
      break;
    }

LABEL_22:
    if (sub_1000BB718(v12[3], v3[3]) & 1) != 0 && (sub_1000BB718(v12[4], v3[4]))
    {
      v33 = v48[8];
      if (static AssetCost.== infix(_:_:)())
      {
        sub_1000189B8(v48[9]);
        if (v25)
        {
          sub_1000189B8(v48[10]);
          if (v25)
          {
            sub_1000189B8(v48[11]);
            if (v25)
            {
              sub_1000189B8(v48[12]);
              if (v25)
              {
                sub_1000189B8(v48[13]);
                if (v25)
                {
                  v34 = v48[14];
                  v35 = *(v12 + v34);
                  v36 = *(v3 + v34);
                  v37 = *(v35 + 16);
                  if (v37 == *(v36 + 16))
                  {
                    if (!v37 || v35 == v36)
                    {
LABEL_45:
                      sub_1000189B8(v48[15]);
                      if (v25)
                      {
                        goto LABEL_50;
                      }
                    }

                    else
                    {
                      v38 = (v35 + 40);
                      v1 = (v36 + 40);
                      while (1)
                      {
                        v39 = *(v38 - 1) == *(v1 - 1) && *v38 == *v1;
                        if (!v39 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                        {
                          break;
                        }

                        v38 += 2;
                        v1 += 2;
                        if (!--v37)
                        {
                          goto LABEL_45;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_46:
    sub_100011314();
    sub_10000D2AC();
    v19 = (v19 + 1) & v49;
    if (((*(v50 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v30 = (v28 + 40);
  v31 = (v27 + 40);
  while (v1)
  {
    v32 = *(v30 - 1) == *(v31 - 1) && *v30 == *v31;
    if (!v32 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_46;
    }

    v30 += 2;
    v31 += 2;
    v1 = (v1 - 1);
    if (!v1)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_50:
  sub_100007190();
  sub_10000D2AC();
  sub_10000D01C();
  sub_10000D2AC();
  v44 = *(v51 + 48);
  sub_100003B04();
  sub_10000931C();
LABEL_48:
  sub_100002EEC();
}

uint64_t sub_100008EE4(uint64_t *a1, unint64_t a2, char a3)
{
  v46 = type metadata accessor for ModelCatalogAsset(0);
  v7 = *(v46 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v46);
  v10 = (&v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v44 = v7;
  v45 = v3;
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100080494(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_100086848();
        goto LABEL_48;
      }

      sub_100087558(v11 + 1);
    }

    v13 = *v3;
    v14 = *(*v3 + 40);
    Hasher.init(_seed:)();
    sub_10000C228(v49);
    v15 = Hasher._finalize()();
    v16 = -1 << *(v13 + 32);
    a2 = v15 & ~v16;
    v48 = v13 + 56;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v47 = ~v16;
      v17 = *a1;
      v18 = a1[1];
      v19 = *(v7 + 72);
      do
      {
        v20 = *(v13 + 48);
        sub_10000931C();
        v21 = *v10 == v17 && v10[1] == v18;
        if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          v22 = v10[2];
          v23 = a1[2];
          v24 = *(v22 + 16);
          if (v24 == *(v23 + 16))
          {
            if (v24)
            {
              v25 = v22 == v23;
            }

            else
            {
              v25 = 1;
            }

            if (!v25)
            {
              v26 = (v22 + 40);
              v27 = (v23 + 40);
              while (v24)
              {
                v28 = *(v26 - 1) == *(v27 - 1) && *v26 == *v27;
                if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                {
                  goto LABEL_47;
                }

                v26 += 2;
                v27 += 2;
                if (!--v24)
                {
                  goto LABEL_28;
                }
              }

              __break(1u);
              goto LABEL_51;
            }

LABEL_28:
            if (sub_1000BB718(v10[3], a1[3]) & 1) != 0 && (sub_1000BB718(v10[4], a1[4]))
            {
              v29 = v46[8];
              if ((static AssetCost.== infix(_:_:)() & 1) != 0 && *(v10 + v46[9]) == *(a1 + v46[9]) && *(v10 + v46[10]) == *(a1 + v46[10]) && *(v10 + v46[11]) == *(a1 + v46[11]) && *(v10 + v46[12]) == *(a1 + v46[12]) && *(v10 + v46[13]) == *(a1 + v46[13]))
              {
                v30 = v46[14];
                v31 = *(v10 + v30);
                v32 = *(a1 + v30);
                v33 = *(v31 + 16);
                if (v33 == *(v32 + 16))
                {
                  if (!v33 || v31 == v32)
                  {
LABEL_46:
                    if (*(v10 + v46[15]) == *(a1 + v46[15]))
                    {
                      goto LABEL_52;
                    }
                  }

                  else
                  {
                    v34 = (v31 + 40);
                    v35 = (v32 + 40);
                    while (1)
                    {
                      v36 = *(v34 - 1) == *(v35 - 1) && *v34 == *v35;
                      if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
                      {
                        break;
                      }

                      v34 += 2;
                      v35 += 2;
                      if (!--v33)
                      {
                        goto LABEL_46;
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_47:
        sub_10000D2AC();
        a2 = (a2 + 1) & v47;
      }

      while (((*(v48 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_48:
  v37 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v38 = *(v37 + 48);
  v39 = *(v44 + 72);
  result = sub_10000D460();
  v41 = *(v37 + 16);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
LABEL_51:
    __break(1u);
    __break(1u);
LABEL_52:
    sub_10000D2AC();
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v43;
  }

  return result;
}

uint64_t sub_10000931C()
{
  v1 = sub_10000C1A0();
  v3 = v2(v1);
  sub_100002C00(v3);
  v5 = *(v4 + 16);
  v6 = sub_1000062B0();
  v7(v6);
  return v0;
}

uint64_t sub_100009370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_100002C00(v4);
  v6 = *(v5 + 16);
  v7 = sub_1000062B0();
  v8(v7);
  return a2;
}

void sub_1000093CC()
{
  sub_1000144A8();
  if (v3)
  {
    sub_100018970();
    if (v5 != v6)
    {
      sub_10014B39C();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_100029500();
    }
  }

  else
  {
    v4 = v2;
  }

  sub_10000C348(*(v0 + 16), v4, &qword_1001BCB90, &qword_100173370, type metadata accessor for ModelCatalogAsset);
  v7 = sub_1000494E8();
  v8 = type metadata accessor for ModelCatalogAsset(v7);
  sub_1000191C8(v8);
  v10 = *(v9 + 80);
  sub_10000657C();
  if (v1)
  {
    v12 = sub_100005FBC(v11);
    sub_100009630(v12, v13, v14);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_10000ECA0();
  }
}

uint64_t sub_1000094F0()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100009558()
{
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 128);
  v5 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = *(v0 + 408) & 1;

  return sub_10003C8E8(v2, v6, v8, v4, v5, v3);
}

uint64_t sub_10000957C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  sub_1000189A4();
  if (v8 && (v9 = (a4)(0), result = sub_100002C00(v9), v5 + *(v11 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      sub_100003AF0();

      return swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    sub_100003AF0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  return result;
}

void sub_100009648()
{
  sub_10000A274();
  v56 = v0;
  v58 = v1;
  v59 = v2;
  v4 = v3;
  v5 = type metadata accessor for ModelCatalogAsset(0);
  v6 = sub_100002BDC(v5);
  v60 = v7;
  v61 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  sub_100005630();
  v57 = v10 - v11;
  __chkstk_darwin(v12);
  v14 = &v55[-v13];
  v15 = v4 + 56;
  v16 = 1 << *(v4 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v4 + 56);
  v19 = (v16 + 63) >> 6;

  v20 = 0;
  while (v18)
  {
    v21 = v20;
LABEL_10:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = v22 | (v21 << 6);
    v24 = *(v4 + 48);
    v25 = sub_100005D58(v23);
    v27 = v26;
    v28 = sub_100009370(v25, v14, v26);
    v29 = *&v14[*(v61 + 56)];
    v62[0] = v58;
    v62[1] = v59;
    __chkstk_darwin(v28);
    *&v55[-16] = v62;
    v31 = sub_100009A9C(sub_10001609C, &v55[-32], v30);
    sub_1000125E8(v14, v27);
    if (!v31)
    {

      if (qword_1001B89B0 != -1)
      {
LABEL_35:
        sub_100008724();
      }

      v32 = type metadata accessor for Logger();
      sub_10000641C(v32, qword_1001BC6C0);
      v33 = v59;

      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v62[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_100004A3C(v58, v33, v62);
        _os_log_impl(&_mh_execute_header, v34, v35, "Not all assets in the bundle are eligible unentitled inference for: %s", v36, 0xCu);
        sub_100003324(v37);
        sub_100002BB8();
LABEL_29:
        sub_100002BB8();
      }

      goto LABEL_30;
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

  v38 = 1 << *(v4 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v4 + 56);
  v41 = (v38 + 63) >> 6;

  v42 = 0;
  v43 = v57;
  do
  {
    if (!v40)
    {
      while (1)
      {
        v44 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_34;
        }

        if (v44 >= v41)
        {

          goto LABEL_32;
        }

        v40 = *(v15 + 8 * v44);
        ++v42;
        if (v40)
        {
          v42 = v44;
          goto LABEL_23;
        }
      }
    }

    v44 = v42;
LABEL_23:
    v45 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
    v46 = v45 | (v44 << 6);
    v47 = *(v4 + 48);
    v48 = sub_100005D58(v46);
    v50 = v49;
    sub_100009370(v48, v43, v49);
    v51 = *(v43 + *(v61 + 52));
    sub_1000125E8(v43, v50);
  }

  while (v51 != 1);

  if (v56)
  {
    goto LABEL_32;
  }

  if (qword_1001B89B0 != -1)
  {
    sub_100008724();
  }

  v52 = type metadata accessor for Logger();
  sub_10000641C(v52, qword_1001BC6C0);
  v34 = Logger.logObject.getter();
  v53 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v34, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&_mh_execute_header, v34, v53, "Foundation models not available in region", v54, 2u);
    goto LABEL_29;
  }

LABEL_30:

LABEL_32:
  sub_100005874();
}

BOOL sub_100009A9C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_100009B78()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100009B94()
{
  v2 = v0[56];
  v3 = v0[54];
  v4 = v0[47];
}

uint64_t sub_100009BB0()
{
  result = v0[26];
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[29];
  v6 = v0[35];
  v5 = v0[36];
  v7 = v0[33];
  v8 = v0[34] + 8;
  return result;
}

uint64_t sub_100009BE4()
{
  v2 = *(v0 + 80);
}

uint64_t sub_100009C64(uint64_t result)
{
  *(result + 8) = sub_1000C5B5C;
  v3 = *(v1 + 192);
  v2 = *(v1 + 200);
  return result;
}

uint64_t sub_100009C98(uint64_t a1, uint64_t a2)
{

  return StringProtocol.contains<A>(_:)(a1, a2, a2, v2, v2);
}

uint64_t sub_100009CC4()
{
  v1 = v0[42];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = v0[35];
  return v0[43];
}

uint64_t sub_100009D14()
{
  sub_100003324(v0);
}

uint64_t sub_100009D70@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = *(*(a1 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(a2)))));
}

uint64_t sub_100009DC8()
{
  v2 = v0[53];
  v3 = v0[47];
  result = v0[20];
  v5 = *(v1 + 8);
  return result;
}

void sub_100009DDC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void sub_100009DFC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
}

uint64_t sub_100009E64()
{

  return swift_dynamicCast();
}

uint64_t sub_100009E7C()
{
  v1 = v0[10];
  v2 = v0[7];
  return v0[4];
}

uint64_t sub_100009EB0@<X0>(uint64_t a1@<X8>)
{

  return sub_1001419B0((a1 + 16), a1 + 32, v2, v1);
}

uint64_t sub_100009EE0()
{
  v2 = v0[15];
  v3 = v0[11];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
}

uint64_t sub_100009F00(uint64_t a1)
{
  *(a1 + 8) = sub_1000CD3B0;
  v4 = *(v2 + 40);
  v3 = *(v2 + 48);
  return v1;
}

uint64_t OSEligibilityChecking.isFoundationModelsEligible.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100118614;

  return v9(130, a1, a2);
}

uint64_t sub_10000A068()
{
  v2 = v0[39];
  v3 = v0[34];
  v5 = v0[31];
  v4 = v0[32];

  return swift_slowAlloc();
}

BOOL sub_10000A098()
{

  return os_log_type_enabled(v0, v1);
}

void sub_10000A0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = -1 << *(a4 + 32);
  if (-v4 < 64)
  {
    v5 = ~(-1 << -v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a4 + 64);
}

uint64_t sub_10000A0F8()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[12];
  v5 = v0[9];
  return v0[6];
}

BOOL sub_10000A130(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a3[2])
  {
    return 0;
  }

  v6 = a3[5];
  Hasher.init(_seed:)();
  sub_10002AB2C();
  String.hash(into:)();
  Hasher._finalize()();
  sub_100012A00();
  v9 = ~v8;
  do
  {
    v10 = v7 & v9;
    v11 = (1 << (v7 & v9)) & *(a3 + (((v7 & v9) >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
    v12 = v11 != 0;
    if (!v11)
    {
      break;
    }

    v13 = (a3[6] + 16 * v10);
    if (*v13 == a1 && v13[1] == a2)
    {
      break;
    }

    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v7 = v10 + 1;
  }

  while ((v15 & 1) == 0);
  return v12;
}

uint64_t sub_10000A220()
{

  return swift_once();
}

uint64_t sub_10000A24C(uint64_t result)
{
  *(result + 8) = sub_1000C5580;
  v2 = *(v1 + 192);
  return result;
}

uint64_t sub_10000A300(uint64_t result, float a2)
{
  *result = a2;
  *(result + 4) = v2;
  return result;
}

uint64_t sub_10000A350()
{
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[20];
}

BOOL sub_10000A384()
{

  return os_log_type_enabled(v0, v1);
}

void sub_10000A39C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_10000A3BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return sub_100004A3C(a1, a2, va);
}

uint64_t sub_10000A3D4(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 128);
  return result;
}

uint64_t sub_10000A3F4()
{

  return swift_beginAccess();
}

uint64_t sub_10000A418()
{

  return swift_allocError();
}

uint64_t *sub_10000A4C4(void *a1, uint64_t a2)
{
  result = sub_100003370(a1, a2);
  v3 = *result;
  return result;
}

uint64_t sub_10000A4F4(uint64_t a1, uint64_t a2)
{
  sub_10000641C(a1, a2);

  return Logger.logObject.getter();
}

uint64_t sub_10000A538()
{

  return sub_10000ED30(v0, v1, v2);
}

uint64_t sub_10000A554(uint64_t a1)
{
  *(a1 + 8) = sub_10009091C;
  v2 = v1[23];
  v3 = v1[18];
  v4 = v1[14];
  v5 = v1[13];
  return v1[15];
}

uint64_t sub_10000A5D8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return 0;
}

uint64_t sub_10000A6B8(uint64_t result)
{
  *(result + 8) = sub_10010FEDC;
  v2 = *(v1 + 368);
  v3 = *(v1 + 352);
  return result;
}

uint64_t sub_10000A6F0(uint64_t a1)
{

  return sub_100009BFC(v1, v2, 1, a1);
}

uint64_t sub_10000A710(uint64_t a1)
{
  *(a1 + 8) = sub_10011EF58;
  v3 = *(v2 + 256);
  return v1;
}

uint64_t sub_10000A7A0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 72);
  return v2 + 16;
}

uint64_t sub_10000A7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  result = a19;
  *(v22 - 140) = v21;
  v24 = *(v22 - 120);
  *(v22 - 136) = v20;
  *(v22 - 152) = v19;
  return result;
}

uint64_t sub_10000A7DC()
{
  v3 = *(v1 - 116) & 1;
  v4 = *(v1 - 112);

  return sub_100029FE0(v4, v3, v0);
}

uint64_t sub_10000A81C()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 96);
  return result;
}

void sub_10000A84C(uint64_t a1@<X8>)
{
  *(v6 + 8 * a1) = v2 | v1;
  *(*(v4 + 48) + 8 * v3) = v5;
  v7 = *(v4 + 16);
}

uint64_t sub_10000A874()
{
  result = v0 + 56;
  v2 = 1 << *(v0 + 32);
  return result;
}

void sub_10000A888()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[12];
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  v8 = v0[2];
}

uint64_t sub_10000A8D4(uint64_t a1)
{
  *(a1 + 8) = sub_1000DF89C;
  v2 = v1[22];
  v3 = v1[20];
  return v1[21];
}

uint64_t sub_10000A904(uint64_t a1, uint64_t a2)
{
  result = a2;
  v4 = *(v2 + 16);
  return result;
}

uint64_t sub_10000A93C@<X0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  *v1 = v2;
  *(v1 + 8) = a1;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_10000A950()
{
  v2 = v0[72];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[68];
  v6 = v0[65];
  v8 = v0[61];
  v7 = v0[62];
  v10 = v0[59];
  v9 = v0[60];
  v11 = v0[56];
}

void sub_10000A980()
{
  v5 = v0[52];
  v6 = v0[49];
  v1 = v0[46];
  v2 = v0[35];
  v4 = v0[33] + v0[51];
  v3 = v0[48] + 15;
}

uint64_t sub_10000A9F8()
{
  v2 = *(v0 + 344);
  v3 = *(v0 + 304);
  v4 = *(v0 + 312);
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);
  v7 = *(v0 + 248);
  v11 = *(v0 + 256);
  v8 = *(v0 + 524);
  v9 = *(v0 + 240);

  return swift_beginAccess();
}

uint64_t sub_10000AA34()
{

  return OSSignpostIntervalState.signpostID.getter();
}

uint64_t sub_10000AA54()
{
  result = v0[49];
  v2 = v0[47];
  v3 = v0[27];
  return result;
}

uint64_t sub_10000AA64()
{
  v3 = v1[60];
  v4 = v1[57];
  v1[47] = v0;

  return swift_errorRetain();
}

unint64_t sub_10000AA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17 = v15 + *(a15 + 36);
  v18 = v15 + *(a15 + 32);

  return sub_10002B0EC();
}

uint64_t sub_10000AAB4()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000AAD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100006098(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_10000AB2C()
{
  sub_100001ED0();
  v1 = v0;
  v8 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v5 = sub_100004B00(v4);
  *v5 = v6;
  v5[1] = sub_10001C260;

  return v8(v1);
}

uint64_t sub_10000AC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  sub_10000385C();
  a21 = v23;
  a22 = v24;
  sub_100003284();
  a20 = v22;
  v25 = v22[16];
  v26 = v22[10];
  v28 = v22[7];
  v27 = v22[8];
  v29 = v22[4];
  v30 = v22[5];
  v31 = AuditToken.processIdentifier.getter();
  ModelXPCRequest.CreateSessionRequest.metadata.getter();
  Session.Metadata.id.getter();
  v22[17] = *(v27 + 8);
  v22[18] = (v27 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32 = sub_1000071D0();
  v33(v32);
  if (qword_1001B8AE0 != -1)
  {
    sub_10000881C();
  }

  v35 = v22[15];
  v34 = v22[16];
  v37 = v22[11];
  v36 = v22[12];
  v38 = type metadata accessor for Logger();
  v22[19] = sub_10000641C(v38, qword_1001BE400);
  v39 = *(v36 + 16);
  v22[20] = v39;
  v22[21] = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v39(v35, v34, v37);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.info.getter();
  v42 = os_log_type_enabled(v40, v41);
  v43 = v22[15];
  v45 = v22[11];
  v44 = v22[12];
  if (v42)
  {
    v46 = swift_slowAlloc();
    a11 = sub_1000031E0();
    *v46 = 136315394;
    sub_100005070();
    sub_1000082D4(v47, v48, v49);
    v65 = v31;
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v51;
    v53 = *(v44 + 8);
    v53(v43, v45);
    sub_100004A3C(v50, v52, &a11);
    sub_10001AFBC();
    *(v46 + 4) = v43;
    *(v46 + 12) = 1024;
    *(v46 + 14) = v65;
    _os_log_impl(&_mh_execute_header, v40, v41, "XPC Handling createSessionRequest for client session %s from proceess %d", v46, 0x12u);
    sub_100003A7C();
    sub_100004B78();
  }

  else
  {

    v53 = *(v44 + 8);
    v53(v43, v45);
  }

  v22[22] = v53;
  v54 = v22[9];
  v55 = v22[5];
  v56 = v22[6];
  v57 = v22[3];
  sub_10000A4C4(v57 + 2, v57[5]);
  v22[23] = *(v58 + 128);

  ModelXPCRequest.CreateSessionRequest.metadata.getter();
  ModelXPCRequest.CreateSessionRequest.alreadyLockedInferenceProvider.getter();
  v59 = v57[8];
  os_unfair_lock_lock((v59 + 24));
  sub_10000A130(0xD000000000000020, 0x8000000100178910, *(v59 + 16));
  os_unfair_lock_unlock((v59 + 24));
  v60 = swift_task_alloc();
  v22[24] = v60;
  *v60 = v22;
  v60[1] = sub_100045E88;
  v61 = v22[6];
  v62 = v22[4];
  sub_1000031B8(v22[9]);
  sub_100003540();

  return sub_100013FF4();
}

uint64_t sub_10000AF24()
{
  sub_100007B84();
  sub_100005EA4();
  v20 = *(v0 + 432);
  v1 = *(v0 + 264);
  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = type metadata accessor for URL();
  *(v0 + 440) = v4;
  sub_100002F44(v4);
  *(v0 + 448) = v5;
  *(v0 + 456) = *(v6 + 64);
  *(v0 + 464) = sub_100002C58();
  Session.Metadata.assetBundleURI.getter();
  v21 = Session.Metadata.useCaseID.getter();
  v8 = v7;
  *(v0 + 472) = v21;
  *(v0 + 480) = v7;
  v9 = Session.Metadata.onBehalfOfPID.getter();
  *(v0 + 636) = v9;
  Session.Metadata.id.getter();
  v10 = AuditToken.processIdentifier.getter();
  *(v0 + 640) = v10;
  v12 = v1[41];
  v11 = v1[42];
  sub_100003370(v1 + 38, v12);
  sub_100065020(&qword_1001B9090, &unk_100172C70);
  sub_1000119E4();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_10016FF40;
  *(v13 + 32) = URL.absoluteString.getter();
  *(v13 + 40) = v14;
  *(v0 + 488) = (*(v11 + 56))(v13, v21, v8, v9, v10, 0, v20, v12);

  *(v0 + 496) = v1[43];
  sub_100003D04();

  return _swift_task_switch(v15, v16, v17);
}

uint64_t sub_10000B0C0()
{
  v73 = v0;
  v1 = sub_10000A130(*(v0 + 472), *(v0 + 480), *(v0 + 504));

  if (v1)
  {
    if (qword_1001B88F0 != -1)
    {
      sub_10000505C();
      swift_once();
    }

    v2 = *(v0 + 480);
    v3 = *(v0 + 432);
    v5 = *(v0 + 400);
    v4 = *(v0 + 408);
    v6 = *(v0 + 392);
    v7 = type metadata accessor for Logger();
    sub_10000641C(v7, qword_1001B9A18);
    v8 = *(v5 + 16);
    v9 = sub_1000062B0();
    v10(v9);

    v11 = Logger.logObject.getter();
    static os_log_type_t.default.getter();
    sub_100019920();

    if (sub_10000A384())
    {
      v65 = *(v0 + 640);
      v67 = *(v0 + 472);
      v69 = *(v0 + 480);
      v13 = *(v0 + 400);
      v12 = *(v0 + 408);
      v14 = *(v0 + 392);
      swift_slowAlloc();
      v72[0] = sub_1000062D8();
      *v2 = 136315650;
      sub_100005070();
      sub_10001B27C(v15, v16, v17);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = v19;
      v21 = *(v13 + 8);
      v22 = sub_100004CB0();
      v71 = v23;
      (v23)(v22);
      sub_100004A3C(v18, v20, v72);
      sub_100019498();

      *(v2 + 4) = v12;
      *(v2 + 12) = 1024;
      *(v2 + 14) = v65;
      *(v2 + 18) = 2080;
      *(v2 + 20) = sub_100004A3C(v67, v69, v72);
      sub_1000033FC();
      _os_log_impl(v24, v25, v26, v27, v28, 0x1Cu);
      swift_arrayDestroy();
      sub_1000039CC();

      sub_100002BD0();
    }

    else
    {
      v35 = *(v0 + 400);
      v34 = *(v0 + 408);
      v36 = *(v0 + 392);

      v37 = *(v35 + 8);
      v38 = sub_100007660();
      v71 = v39;
      (v39)(v38);
    }

    v41 = *(v0 + 480);
    v40 = *(v0 + 488);
    v43 = *(v0 + 464);
    v42 = *(v0 + 472);
    v44 = *(v0 + 448);
    v45 = *(v0 + 432);
    v56 = *(v0 + 440);
    v57 = *(v0 + 424);
    v58 = *(v0 + 416);
    v59 = *(v0 + 408);
    v55 = *(v0 + 392);
    v60 = *(v0 + 384);
    v61 = *(v0 + 376);
    v62 = *(v0 + 352);
    v63 = *(v0 + 328);
    v64 = *(v0 + 312);
    v66 = *(v0 + 304);
    v68 = *(v0 + 280);
    v70 = *(v0 + 272);
    v46 = *(v0 + 264);
    v47 = v46[41];
    v48 = v46[42];
    sub_100003370(v46 + 38, v47);
    (*(v48 + 64))(v45, 1, 1, v40, v47, v48);
    type metadata accessor for ModelManagerError();
    sub_100005C00();
    sub_100015F10(v49, 255, v50);
    sub_100008194();
    *v51 = v42;
    v51[1] = v41;
    sub_1000038AC();
    (*(v52 + 104))();
    swift_willThrow();

    v71(v45, v55);
    (*(v44 + 8))(v43, v56);

    sub_100001F00();
    sub_10000D138();

    __asm { BRAA            X1, X16 }
  }

  v29 = *sub_10000D070(*(v0 + 264));
  v30 = swift_task_alloc();
  *(v0 + 512) = v30;
  *v30 = v0;
  v30[1] = sub_1000154D8;
  v31 = *(v0 + 636);
  sub_10000D138();

  return sub_1000153F0();
}

uint64_t sub_10000B54C()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = *(v0 + 88);
  *(v0 + 80) = v5;
  v6 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider__monitoredPids;
  swift_beginAccess();
  CountedSet.add(_:)();
  swift_endAccess();
  (*(v2 + 16))(v1, v4 + v6, v3);
  *(v0 + 84) = v5;
  v7 = CountedSet.count(of:)();
  (*(v2 + 8))(v1, v3);
  if (v7 == 1)
  {
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    v10 = *(v0 + 88);
    v11 = type metadata accessor for TaskPriority();
    sub_100007098(v11);
    sub_10000870C();
    sub_10000E784(v12, v13);
    v14 = swift_allocObject();
    sub_10000EEE0(v14);
    sub_1000186A4();
  }

  v15 = *(v0 + 72);
  v16 = *(v0 + 48);

  sub_100001F00();

  return v17();
}

uint64_t sub_10000B6E4()
{
  sub_10000639C();
  sub_100003884();
  v1 = v0[48];
  v2 = v0[45];
  v3 = v0[46];
  v5 = v0[43];
  v4 = v0[44];
  v6 = v0[42];
  v7 = v0[33];
  v8 = v0[30];
  v9 = v0[31];
  v10 = *(v3 + 16);
  v0[65] = v10;
  v0[66] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v8, v2);
  v11 = *(v5 + 16);
  v12 = sub_100007660();
  v13(v12);
  v0[67] = v7[37];
  sub_100007130((v7 + 22), (v0 + 2));
  sub_100007130((v7 + 27), (v0 + 7));
  v14 = v7[56];
  sub_100003370(v7 + 52, v7[55]);

  v15 = swift_task_alloc();
  v0[68] = v15;
  *v15 = v0;
  sub_100004B28(v15);
  sub_1000060A4();
  sub_100003D20();

  return OSEligibilityChecking.isFoundationModelsEligible.getter(v16, v17);
}

uint64_t sub_10000B80C()
{
  v73 = v0;
  if (sub_10000E8DC(_swiftEmptyArrayStorage))
  {
    sub_10006622C(_swiftEmptyArrayStorage);
    v68 = v1;
  }

  else
  {
    v68 = &_swiftEmptySetSingleton;
  }

  v67 = *(v0 + 647);
  v65 = *(v0 + 536);
  v2 = *(v0 + 368);
  v59 = *(v0 + 360);
  v60 = *(v0 + 384);
  v61 = *(v0 + 344);
  v3 = *(v0 + 328);
  v62 = *(v0 + 336);
  v63 = *(v0 + 352);
  v4 = *(v0 + 320);
  v58 = *(v0 + 288);
  v66 = *(v0 + 646);
  v69 = *(v0 + 256);
  v70 = *(v0 + 280);
  sub_100016494(v0 + 16, *(v0 + 40));
  sub_100004F60();
  v6 = v5;
  v8 = *(v7 + 64);
  v64 = sub_100002C58();
  (*(v6 + 16))();
  v9 = *v64;
  v10 = type metadata accessor for ModelCatalogProvider(0);
  *(v0 + 120) = v10;
  *(v0 + 128) = &off_1001B2060;
  *(v0 + 96) = v9;
  v11 = type metadata accessor for DaemonSession(0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  *(v0 + 552) = v14;
  v15 = sub_100016494(v0 + 96, v10);
  sub_100004F60();
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = sub_100002C58();
  (*(v17 + 16))(v20, v15, v10);
  v21 = *v20;
  *(v0 + 160) = v10;
  *(v0 + 168) = &off_1001B2060;
  *(v0 + 136) = v21;
  v22 = OBJC_IVAR____TtC13modelmanagerd13DaemonSession__lazyState;
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v23 = v4[6];
  sub_100003978();
  sub_100009BFC(v24, v25, v26, v58);
  *(v3 + v4[7]) = 0;
  *(v3 + v4[8]) = 0;
  v27 = sub_100065020(&qword_1001B9C58, &qword_1001706B0);
  v28 = sub_1000184E0(v27);
  sub_100005FF8(v28, *(*v28 + 48));
  sub_100031660(v29 + class metadata base offset for ManagedBuffer);
  v31 = v30;
  sub_10000C050(v3, v32 + v33);
  sub_10000AAD0(v3, v31);
  *(v14 + v22) = v28;
  (*(v2 + 32))(v14 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_metadata, v60, v59);
  (*(v61 + 32))(v14 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_auditToken, v63, v62);
  *(v14 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_requestManager) = v65;
  sub_100004A04((v0 + 136), v14 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_modelCatalog);
  sub_100004A04((v0 + 56), v14 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_sysctl);
  v34 = v14 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_unsafeManagerOwnedState;
  *v34 = 0;
  *(v34 + 8) = v68;
  *(v34 + 16) = 0;
  *(v14 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_isFoundationModelsEligible) = v67;
  *(v14 + OBJC_IVAR____TtC13modelmanagerd13DaemonSession_isUnentitled) = v66;
  sub_100003324((v0 + 96));

  sub_100003324((v0 + 16));

  sub_100012EA4(v69, v70, &qword_1001B9CD0, &qword_100170778);
  if (sub_10000C6C0(v70, 1, v58) == 1)
  {
    sub_10001301C(*(v0 + 280), &qword_1001B9CD0);
  }

  else
  {
    v35 = *(v0 + 296);
    (*(v35 + 32))(*(v0 + 312), *(v0 + 280), *(v0 + 288));
    sub_10005AEB0();
    v36 = *(v35 + 8);
    v37 = sub_100003754();
    v38(v37);
  }

  v39 = *(v0 + 636);
  v40 = *(v0 + 264);
  v41 = *(v0 + 272);
  v71 = *(v0 + 240);
  sub_100004B50();

  sub_1000160BC(v72, v14);
  swift_endAccess();

  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);

  strcpy(v72, "Get Process ");
  BYTE5(v72[1]) = 0;
  HIWORD(v72[1]) = -5120;
  *(v0 + 632) = v39;
  v42._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v42);

  v43._countAndFlagsBits = 0x7469726F69725020;
  v43._object = 0xEE006B7361542079;
  String.append(_:)(v43);
  type metadata accessor for TaskPriority();
  sub_100003978();
  sub_100009BFC(v44, v45, v46, v47);
  sub_100011344();
  v51 = sub_100015F10(v48, v49, v50);
  v52 = swift_allocObject();
  *(v52 + 16) = v40;
  *(v52 + 24) = v51;
  *(v52 + 32) = v40;
  *(v52 + 40) = v39;
  swift_retain_n();
  sub_100007B78();
  sub_10006574C();
  *(v0 + 560) = v53;
  sub_100007130(v40 + 176, v0 + 176);
  v54 = swift_task_alloc();
  *(v0 + 568) = v54;
  v54[2] = v40;
  v54[3] = v71;
  v54[4] = v0 + 176;
  v54[5] = v14;
  v55 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v56 = swift_task_alloc();
  *(v0 + 576) = v56;
  *v56 = v0;
  v56[1] = sub_10002281C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10000BEC8()
{

  return swift_dynamicCast();
}

uint64_t sub_10000BEE8()
{

  return swift_arrayDestroy();
}

void sub_10000BF38()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
}

uint64_t sub_10000BF6C()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_10000BF7C()
{

  return swift_beginAccess();
}

uint64_t sub_10000BF98()
{

  return swift_task_alloc();
}

uint64_t sub_10000C00C()
{

  return swift_beginAccess();
}

uint64_t *sub_10000C030()
{
  result = sub_100003370(v0, v0[3]);
  v2 = *result;
  return result;
}

uint64_t sub_10000C050(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v5 = v4(v3);
  sub_100006098(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000062B0();
  v9(v8);
  return a2;
}

char *sub_10000C0AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100065020(&qword_1001B9070, &qword_10016FCE0);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_10000C1CC()
{
  v2 = v0[35];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[22];
}

uint64_t sub_10000C1F0(uint64_t a1)
{

  return sub_10000C6C0(a1, 1, v1);
}

uint64_t sub_10000C208()
{
}

void sub_10000C228(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v1[1];
  String.hash(into:)();
  sub_10000D234(a1, v1[2]);
  sub_10000D16C(a1, v1[3]);
  sub_10000D16C(a1, v1[4]);
  v6 = type metadata accessor for ModelCatalogAsset(0);
  v7 = v6[8];
  type metadata accessor for AssetCost();
  sub_10000D50C(&qword_1001BAB08, &type metadata accessor for AssetCost);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + v6[9]));
  Hasher._combine(_:)(*(v2 + v6[10]));
  Hasher._combine(_:)(*(v2 + v6[11]));
  Hasher._combine(_:)(*(v2 + v6[12]));
  Hasher._combine(_:)(*(v2 + v6[13]));
  sub_10000D234(a1, *(v2 + v6[14]));
  Hasher._combine(_:)(*(v2 + v6[15]));
}

char *sub_10000C348(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100065020(a3, a4);
  v8 = a5(0);
  sub_100002F44(v8);
  v10 = *(v9 + 72);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (v10)
  {
    if (&result[-v12] != 0x8000000000000000 || v10 != -1)
    {
      v13[2] = a1;
      v13[3] = 2 * (&result[-v12] / v10);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10000C43C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v5 = v4(v3);
  sub_100002C00(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000062B0();
  v9(v8);
  return a2;
}

char *sub_10000C494(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = sub_10000C5AC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_10000C5AC(uint64_t a1, uint64_t a2)
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

  sub_100065020(&qword_1001B9070, &qword_10016FCE0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_10000C698()
{
  *(v1 + 96) = *(v0 + 112);
}

uint64_t sub_10000C6E8()
{
}

uint64_t sub_10000C700()
{

  return swift_allocError();
}

uint64_t sub_10000C790(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100065020(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000C7F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005F38(a1, a2);
  v5 = sub_100065020(v3, v4);
  sub_100002C00(v5);
  (*(v6 + 8))(a1);
  return a1;
}

char *sub_10000C844(char *result, int64_t a2, char a3, char *a4)
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
    sub_100065020(&qword_1001B90C8, &unk_10016FD40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000C958(char *a1, int64_t a2, char a3)
{
  result = sub_10000C844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_10000C978()
{
  result = *(v0 - 232);
  v2 = *(v0 - 280);
  return result;
}

uint64_t sub_10000C998()
{
  v2 = v0[66];
  v3 = v0[64];
  v5 = v0[61];
  v4 = v0[62];
}

uint64_t sub_10000C9B4()
{
  v2 = v0[30];
  v3 = *(v0[32] + v0[44]);
}

uint64_t sub_10000CA10(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = sub_10000C0AC(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_10000CAF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_10000C494(a1, a2);
  sub_10000CA10(&off_1001AFDE0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

uint64_t sub_10000CB58(uint64_t a1, unint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  return sub_100004A3C(a1, a2, va);
}

uint64_t sub_10000CB84()
{
  sub_100003324(v0 + 2);
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[35];
}

uint64_t sub_10000CBE4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_100065020(a3, a4);
}

uint64_t sub_10000CC88()
{
  v3 = v0[50];
  v4 = v0[28] + v1;
  v5 = v0[51];

  return sub_10001938C(v4, v5);
}

uint64_t sub_10000CCCC()
{
  v0[12] = v0[46];
  v2 = v0[23];
  v3 = v0[21];

  return swift_errorRetain();
}

uint64_t sub_10000CD00()
{
}

uint64_t sub_10000CD28(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

void sub_10000CD44(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x20u);
}

uint64_t sub_10000CD70()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_10000CDB0()
{
  v3 = v0[46];
  *(v1 - 104) = v0[45];
  *(v1 - 96) = v3;
  v4 = v0[44];
  v5 = v0[41];
  v6 = v0[38];
  *(v1 - 112) = v0[36];
  v7 = v0[16] + v5;

  return swift_slowAlloc();
}

void sub_10000CDEC(uint64_t a1@<X8>)
{
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v1;
}

uint64_t sub_10000CDF8(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t sub_10000CE14(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *(result + 24);
  return result;
}

uint64_t sub_10000CE38()
{

  return sub_100056B00();
}

uint64_t sub_10000CE64()
{

  return Set.Iterator.init(_cocoa:)();
}

uint64_t sub_10000CE84()
{
  result = v0[56];
  v2 = v0[54];
  v3 = *(v0[55] + 88);
  return result;
}

void sub_10000CEA8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

unint64_t sub_10000CEC8(uint64_t a1)
{
  *(v1 + 40) = a1;

  return sub_10015D12C();
}

uint64_t sub_10000CEE0()
{
  *(v0 + 336) = *(v2 + 16);
  *(v0 + 344) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return v1;
}

void sub_10000CF1C()
{

  sub_1000652FC();
}

uint64_t sub_10000CF50()
{
  v2 = v0[40];
  v3 = v0[36];
  v4 = v0[35] + *(v0[33] + 20);

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

uint64_t sub_10000CF80(uint64_t a1)
{

  return sub_100004A3C(a1, v1, (v2 - 88));
}

uint64_t sub_10000CF98()
{
  v1[55] = v0;
  v3 = v1[45];
  v4 = v1[33];

  return swift_retain_n();
}

void sub_10000CFBC()
{
  v3 = v1[42];
  v4 = v1[39];
  v5 = v1[40];
  v6 = v1[31];
}

uint64_t sub_10000CFF4()
{
}

void *sub_10000D070@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 152);

  return sub_100003370((a1 + 128), v2);
}

uint64_t sub_10000D088(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return type metadata accessor for ModelManagerError();
}

void sub_10000D0AC(__n128 a1)
{
  *(v1 + 40) = a1;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
}

uint64_t sub_10000D0CC()
{
  v3 = *(*(v0 + 48) + 8 * v1);
}

void sub_10000D104(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, os_log_type_t a11)
{

  _os_log_impl(a1, v11, a11, a4, v12, 0xCu);
}

void sub_10000D16C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v8 = *(v4 - 2);
      v7 = *(v4 - 1);
      v9 = *v4;

      String.hash(into:)();
      if (v7)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      Hasher._combine(_:)(v9);

      v4 += 40;
      --v3;
    }

    while (v3);
  }
}

void sub_10000D234(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      String.hash(into:)();

      v4 += 2;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_10000D2AC()
{
  v1 = sub_10002A104();
  v3 = v2(v1);
  sub_100002C00(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_10000D300()
{
  v1 = sub_10002A104();
  v3 = v2(v1);
  sub_100002C00(v3);
  (*(v4 + 8))(v0);
  return v0;
}

void sub_10000D368()
{
  sub_10001139C();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for AssetCost();
    v5 = sub_100002CE0(*(v4 + 32));

    sub_100009BFC(v5, v6, v0, v7);
  }
}

uint64_t sub_10000D3EC(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return sub_100005C60();
  }

  type metadata accessor for AssetCost();
  v5 = sub_100002CE0(*(a3 + 32));

  return sub_10000C6C0(v5, v6, v7);
}

uint64_t sub_10000D460()
{
  v1 = sub_10000C1A0();
  v3 = v2(v1);
  sub_100002C00(v3);
  v5 = *(v4 + 32);
  v6 = sub_1000062B0();
  v7(v6);
  return v0;
}

uint64_t sub_10000D4B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100005B00();
  v5 = v4(v3);
  sub_100002C00(v5);
  v7 = *(v6 + 32);
  v8 = sub_1000062B0();
  v9(v8);
  return a2;
}

uint64_t sub_10000D50C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000D570(uint64_t a1)
{
  v3 = v1[29];
  v4 = *(v1[30] + 16);
  v5 = v2 + *(a1 + 20);
  return v1[32];
}

uint64_t sub_10000D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_100004A3C(v10, v11, va);
}

uint64_t sub_10000D5C4()
{
}

void sub_10000D5DC(void *a1, void *a2)
{
  sub_100065020(&dword_1001BA4A8, &qword_100171010);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100170BC0;
  *(v4 + 32) = a2;
  sub_10000E2C0(0, &qword_1001BC0C0, RBSProcessPredicate_ptr);
  v5 = a2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:isa];

  if (qword_1001B8968 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_10000641C(v7, qword_1001BBF20);
  v8 = v5;
  oslog = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v8;
    *v11 = v8;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v9, "New Predicate: %@", v10, 0xCu);
    sub_10000ED30(v11, &qword_1001B8F68, &qword_10016FB80);
  }
}

uint64_t sub_10000D7BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000D7E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_10000D838(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10000D7B4;
  *(v5 + 24) = v4;
  v9[4] = sub_10000D7BC;
  v9[5] = v5;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_10000D7E4;
  v9[3] = &unk_1001B1958;
  v6 = _Block_copy(v9);
  v7 = a2;

  [a1 updateConfiguration:v6];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000D990()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000DA10(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  v4 = sub_100065020(a1, a2);
  sub_100002F04(v4);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v8 = v3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return a3(v6, v7, v8);
}

uint64_t sub_10000DA80(void (*a1)(void))
{
  a1();
  sub_100065020(&qword_1001B90F8, &qword_10016FD70);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10000DACC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DAEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DAFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DB0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DB1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DB2C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000DB48()
{
  sub_100001ED0();
  v1 = v0[5];
  v2 = swift_task_alloc();
  sub_100012AE8(v2);
  v3 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10001C820;
  v5 = v0[2];
  sub_10000895C();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10000DC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_10000DB48, 0, 0);
}

id sub_10000DC4C()
{
  sub_10000E2C0(0, &qword_1001B9488, RBSProcessIdentifier_ptr);
  sub_10000DEE4();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() predicateMatchingIdentifiers:isa];

  return v1;
}

uint64_t sub_10000DCDC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10000E094();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_10007F978(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_1000834A4(v17 + 1);
        }

        v18 = v8;
        sub_10008376C(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_10000E094();
    v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        v19 = *v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = *v3;
        v18 = a2;
        sub_10000DF4C(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v24;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = static NSObject.== infix(_:_:)();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v21 = *(*(v6 + 48) + 8 * v13);
    *a1 = v21;
    v22 = v21;
    return 0;
  }

  return result;
}

unint64_t sub_10000DEE4()
{
  result = qword_1001B9490;
  if (!qword_1001B9490)
  {
    sub_10000E2C0(255, &qword_1001B9488, RBSProcessIdentifier_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001B9490);
  }

  return result;
}

Swift::Int sub_10000DF4C(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000834A4(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_10008A218(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = NSObject._rawHashValue(seed:)(*(*v3 + 40));
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_10000E094();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = static NSObject.== infix(_:_:)();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_100086BA0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

unint64_t sub_10000E094()
{
  result = qword_1001B9488;
  if (!qword_1001B9488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1001B9488);
  }

  return result;
}

void sub_10000E0D8(uint64_t a1)
{
  (sub_10000E8DC)();
  sub_10000E094();
  sub_10000814C(&qword_1001B9490, sub_10000E094);
  sub_100012484();
  v5[1] = Set.init(minimumCapacity:)();
  v2 = sub_10000E8DC(a1);
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_10000DCDC(v5, v4);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_10000E1F0(uint64_t a1, uint64_t a2)
{
  v2[10] = a2;
  v4 = sub_100065020(&qword_1001BC0B0, &qword_100172970);
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();

  return _swift_task_switch(sub_10000E300, a2, 0);
}

uint64_t sub_10000E2C0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000E300()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider__monitoredPids;
  swift_beginAccess();
  (*(v2 + 16))(v1, v4 + v5, v3);
  sub_1000082D4(&qword_1001BC0B8, &qword_1001BC0B0, &qword_100172970);
  dispatch thunk of Sequence.makeIterator()();
  while (1)
  {
    result = v0[2];
    v7 = v0[5];
    v8 = v0[6];
    if (!v8)
    {
      break;
    }

    v9 = v0[5];
LABEL_8:
    v11 = *(*(result + 48) + ((v9 << 8) | (4 * __clz(__rbit64(v8)))));
    v0[5] = v9;
    v0[6] = (v8 - 1) & v8;
    if ([objc_opt_self() identifierWithPid:v11])
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    else
    {
      if (qword_1001B8968 != -1)
      {
        swift_once();
      }

      v12 = type metadata accessor for Logger();
      sub_100002FD0(v12, qword_1001BBF20);
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = sub_100003788();
        *v15 = 67109120;
        *(v15 + 4) = v11;
        _os_log_impl(&_mh_execute_header, v13, v14, "Could not get RBSProcessIdentifier for %d", v15, 8u);
        sub_100002BB8();
      }
    }
  }

  v10 = v0[5];
  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= ((v0[4] + 64) >> 6))
    {
      break;
    }

    v8 = *(v0[3] + 8 * v9);
    ++v10;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  v16 = v0[10];
  sub_100007F18();
  sub_10000E2C0(0, &qword_1001BC0C0, RBSProcessPredicate_ptr);
  sub_10000E0D8(&_swiftEmptyArrayStorage);
  v17 = sub_10000DC4C();
  v0[14] = v17;
  v18 = *(v16 + 112);
  v19 = *(v16 + OBJC_IVAR____TtC13modelmanagerd20RunningBoardProvider_queue);
  v20 = swift_allocObject();
  v0[15] = v20;
  *(v20 + 16) = v18;
  *(v20 + 24) = v17;
  v21 = v18;
  v22 = v17;
  v23 = swift_task_alloc();
  v0[16] = v23;
  *v23 = v0;
  v23[1] = sub_10001C91C;

  return sub_10000DC28(sub_10000DC28, sub_10000DA08, v20);
}

uint64_t sub_10000E67C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000E6BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_10000E75C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
}

uint64_t sub_10000E76C()
{
  v2 = *(v0 + 80);

  return type metadata accessor for ModelManagerError();
}

uint64_t sub_10000E784(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000E7CC()
{
  sub_100001ED0();
  v2 = v1;
  v3 = swift_task_alloc();
  v4 = sub_100004B00(v3);
  *v4 = v5;
  v4[1] = sub_10006F558;

  return sub_10000E1F0(v2, v0);
}

uint64_t sub_10000E884()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

uint64_t sub_10000E89C(float a1)
{
  *v1 = a1;

  return type metadata accessor for InferenceProviderAsset(0);
}

uint64_t sub_10000E8E4()
{
  sub_100003884();
  sub_100009DFC();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_10000A2E0(v1);

  return sub_10000E978(v3, v4, v5, v6, v7);
}

uint64_t sub_10000E978(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  *(v5 + 16) = a5;
  *(v5 + 32) = a4;
  return _swift_task_switch(sub_10000E99C, a5, 0);
}

uint64_t sub_10000E99C()
{
  sub_100001ED0();
  if (qword_1001B8968 != -1)
  {
    sub_100005224();
  }

  v1 = type metadata accessor for Logger();
  sub_100002FD0(v1, qword_1001BBF20);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (sub_100002F80(v3))
  {
    v4 = *(v0 + 32);
    v5 = sub_100003788();
    sub_10000A300(v5, 1.5047e-36);
    sub_100002DA4(&_mh_execute_header, v6, v7, "Started monitoring: %d");
    sub_100002F64();
  }

  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_10001CB98;
  v9 = *(v0 + 16);

  return sub_10000EAAC();
}

uint64_t sub_10000EAC8()
{
  sub_100001ED0();
  v1 = *(v0 + 16);
  v2 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];

  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  sub_100065020(&qword_1001BC0A8, &qword_100172968);
  *v3 = v0;
  v3[1] = sub_10001CA9C;
  v4 = *(v0 + 16);

  return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF();
}

uint64_t sub_10000EBF0()
{
  sub_100001ED0();
  sub_100004B10();
  v0 = swift_task_alloc();
  v1 = sub_100004B00(v0);
  *v1 = v2;
  v3 = sub_100004F40(v1);

  return v4(v3);
}

uint64_t sub_10000EC80()
{
  *(v1 + 145) = (v0 & 1) == 0;
  v3 = *(v1 + 256);
}

uint64_t sub_10000ECA0()
{

  return swift_arrayInitWithCopy();
}

uint64_t sub_10000ECC0()
{
}

uint64_t sub_10000ECD8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100065020(a2, a3);
  sub_100002C00(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10000ED30(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100065020(a2, a3);
  sub_1000055EC(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_10000ED84(uint64_t a1, uint64_t a2)
{
  v3 = sub_100011D90(a1, a2);
  v5 = sub_100065020(v3, v4);
  sub_100002C00(v5);
  (*(v6 + 8))(v2);
  return v2;
}

void sub_10000EDD8(uint64_t a1@<X8>)
{
  v2 = *(*(v1 - 120) + 72);
  *(v1 - 112) = a1 + 1;
  v3 = *(v1 - 136) + v2 * a1;
}

void sub_10000EDF4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_10000EE54(uint64_t a1)
{
  v5 = __clz(__rbit64(v2)) | (v1 << 6);
  v6 = (*(a1 + 48) + 16 * v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = *(a1 + 56) + 40 * v5;

  return sub_1000480AC(v9, v3 + 168);
}

void sub_10000EEC0(void *a1@<X0>, const char *a2@<X3>, os_log_type_t a3@<W8>)
{

  _os_log_impl(a1, v3, a3, a2, v4, 0xCu);
}

uint64_t sub_10000EEE0(uint64_t a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
  *(a1 + 40) = v1;

  return swift_retain_n();
}

void sub_10000EF08(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *(v1 + 8) = 2080;
}

uint64_t sub_10000EF2C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + a1);
  result = *(v1 + a1 + 8);
  v4 = *(v1 + a1 + 16);
  return result;
}

uint64_t sub_10000EF54()
{
  v1 = v0[60];
  v2 = v0[57];
  v3 = *(v0[58] + 32);
  return v0[59];
}

uint64_t sub_10000EFE0(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_100065020(a1, a2);
  sub_100002BDC(v3);
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 32) & ~v6;
  v9 = *(v8 + 64);
  v10 = *(v2 + 24);

  (*(v5 + 8))(v2 + v7, v3);

  return _swift_deallocObject(v2, v7 + v9, v6 | 7);
}

void sub_10000F094()
{
  *(v2 - 112) = 0;
  *(v2 - 104) = 0;
  *(v2 - 96) = v0;
  *(v2 - 88) = v1;
}

uint64_t sub_10000F0A4()
{

  return swift_arrayDestroy();
}

uint64_t sub_10000F0C0()
{

  return swift_task_alloc();
}

void sub_10000F160(void *a1, uint64_t a2, uint64_t a3, os_signpost_id_t a4)
{
  v8 = *(v6 - 120);
  v9 = *(v6 - 120);
  v10 = *(v6 - 104);
  v11 = *(v6 - 136);

  _os_signpost_emit_with_name_impl(a1, v5, v9, a4, v10, v11, v4, 0x16u);
}

uint64_t sub_10000F18C(uint64_t result)
{
  *(v1 + 232) = result;
  v2 = *(result - 8);
  return result;
}

uint64_t sub_10000F1A8()
{
  v3 = v0[40];
  v4 = v0[37];
  v5 = v0[36];
  v6 = v0[35];
  v7 = v0[34];
  v8 = v0[32];
  v9 = v0[29];
}

uint64_t sub_10000F1E0()
{

  return swift_dynamicCast();
}

uint64_t sub_10000F278()
{
  v215 = v0;
  if (qword_1001B8A78 != -1)
  {
    sub_10000877C();
  }

  v2 = *(v0 + 264);
  v3 = type metadata accessor for Logger();
  *(v0 + 360) = sub_100002FD0(v3, qword_1001BCD78);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = &OBJC_IVAR____TtC13modelmanagerd13PolicyManager_allowList;
  v7 = &OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  if (os_log_type_enabled(v4, v5))
  {
    v8 = *(v0 + 264);
    v9 = sub_100007698();
    *v9 = 134217984;
    v10 = v8 + OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
    sub_100004BA0();
    *(v9 + 4) = *(v10 + *(_s6PolicyVMa_0() + 28));
    sub_100003DD0();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_100002F64();
  }

  v16 = *(v0 + 264);
  v17 = type metadata accessor for Date();
  *(v0 + 368) = v17;
  sub_100002F44(v17);
  *(v0 + 376) = v18;
  *(v0 + 384) = *(v19 + 64);
  *(v0 + 392) = swift_task_alloc();
  static Date.now.getter();
  *(v0 + 248) = &_swiftEmptySetSingleton;
  v20 = swift_task_alloc();
  v21 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_policy;
  *(v0 + 400) = v20;
  *(v0 + 408) = v21;
  v22 = v16 + v21;
  sub_100004BA0();
  v23 = _s6PolicyVMa_0();
  *(v0 + 416) = v23;
  v24 = *(v22 + *(v23 + 28));
  static Date.- infix(_:_:)();
  v25 = sub_100010EB0();
  v26 = swift_task_alloc();
  *(v26 + 16) = v20;
  v27 = sub_10002B370(v16, sub_10002B910, v26, v25);

  sub_10002B918(v27);
  sub_10002B524();
  v29 = v28;
  *(v0 + 424) = v28;

  if (v29 >> 62)
  {
    v30 = _CocoaArrayWrapper.endIndex.getter();
    if (v30)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
LABEL_7:
      *(v0 + 488) = enum case for LoadState.loaded(_:);
      v31 = __OFSUB__(v30, 1);
      v32 = v30 - 1;
      *(v0 + 432) = v32;
      if (!v31)
      {
        v33 = *(v0 + 424);
        if ((v33 & 0xC000000000000001) != 0)
        {
          v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_13;
        }

        if ((v32 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v32 < *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v34 = *(v33 + 8 * v32 + 32);

LABEL_13:
          sub_10000CF98();
          swift_retain_n();
          v35 = Logger.logObject.getter();
          v36 = static os_log_type_t.default.getter();

          log = v35;
          if (os_log_type_enabled(v35, v36))
          {
            v37 = *(v0 + 344);
            v38 = *(v0 + 352);
            v201 = *(v0 + 336);
            v205 = *(v0 + 272);
            v207 = *(v0 + 264);
            v39 = swift_slowAlloc();
            v209 = sub_1000031E0();
            v214[0] = v209;
            *v39 = 136315650;

            *(v0 + 216) = InferenceProviderAssetDescriptor.description.getter();
            *(v0 + 224) = v40;

            v41._countAndFlagsBits = 8250;
            v41._object = 0xE200000000000000;
            String.append(_:)(v41);

            v203 = v36;
            v42 = *(v0 + 216);
            v43 = *(v0 + 224);
            v45 = *(v34 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24);
            v44 = *(v34 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
            sub_100003370((v34 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), v45);
            v46 = sub_100012588();
            v47(v46);
            InferenceProviderDescriptor.description.getter();
            v48 = sub_10000CE94();
            v49(v48, v201);
            *(v0 + 232) = v42;
            *(v0 + 240) = v43;

            v50._countAndFlagsBits = v44;
            v50._object = v45;
            String.append(_:)(v50);

            v51 = sub_100004A3C(*(v0 + 232), *(v0 + 240), v214);

            *(v39 + 4) = v51;
            *(v39 + 12) = 1024;
            v52 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v34;
            sub_100004BA0();
            LODWORD(v52) = v52[*(v205 + 56)];

            *(v39 + 14) = v52;

            sub_10002ABB4();
            *(v39 + 20) = v52;

            _os_log_impl(&_mh_execute_header, log, v203, "Transitioning asset %s with update available %{BOOL}d and dynamic mode %{BOOL}d", v39, 0x18u);
            sub_100003324(v209);
            sub_100002F64();
            sub_100002BB8();
          }

          else
          {
            v53 = *(v0 + 264);
          }

          v54 = *(v0 + 272);
          v55 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          *(v0 + 448) = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
          v56 = &v55[v34];
          sub_100004BA0();
          if (v56[*(v54 + 56)] == 1)
          {
            v57 = *(v0 + 328);
            type metadata accessor for AuditToken();
            sub_100003978();
            sub_100009BFC(v58, v59, v60, v61);
            v62 = swift_task_alloc();
            *(v0 + 456) = v62;
            *v62 = v0;
            sub_100007B00(v62);
          }

          else
          {
            if (*(v34 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) == 1)
            {
              v63 = swift_task_alloc();
              *(v0 + 464) = v63;
              *v63 = v0;
              v63[1] = sub_100053C74;
              sub_100003C58();
              sub_100019CAC();

              return sub_1000486EC();
            }

            v66 = *(v0 + 320);
            type metadata accessor for AuditToken();
            sub_100003978();
            sub_100009BFC(v67, v68, v69, v70);
            v71 = swift_task_alloc();
            *(v0 + 472) = v71;
            *v71 = v0;
            sub_100007EB0(v71);
            v72 = *(v0 + 320);
          }

          sub_100003C58();
          sub_100019CAC();

          return sub_10002BA5C();
        }

        __break(1u);
LABEL_48:
        v123 = v7;
        v124 = *(v0 + 360);
        v125 = Logger.logObject.getter();
        v126 = static os_log_type_t.fault.getter();
        if (sub_100006168(v126))
        {
          v127 = sub_100007698();
          v128 = sub_1000031E0();
          v214[0] = v128;
          *v127 = 136315138;
          type metadata accessor for InferenceProviderAsset(0);
          sub_100002E08();
          sub_10002C7C4(v129, v130);

          v131 = Set.description.getter();
          v133 = v132;

          v134 = sub_100004A3C(v131, v133, v214);

          *(v127 + 4) = v134;
          sub_100007CF4(&_mh_execute_header, v135, v136, "All remaining assets that need transitioning have failed to unload or move to dynamic, %s");
          sub_100003324(v128);
          sub_100012A9C();
          sub_100002F64();
        }

        v137 = *(v0 + 392);
        v139 = *(v0 + 368);
        v138 = *(v0 + 376);
        v140 = type metadata accessor for ModelManagerError();
        sub_10000528C();
        sub_10002C7C4(v141, v142);
        sub_100008194();
        sub_100006098(v140);
        (*(v143 + 104))();
        swift_willThrow();

        v1 = *(v138 + 8);
        v1(v137, v139);
        goto LABEL_56;
      }

      __break(1u);
      goto LABEL_30;
    }
  }

  v74 = *(v0 + 360);
  v29 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  v76 = sub_100002F80(v75);
  v27 = *(v0 + 424);
  if (v76)
  {
    *sub_100007648() = 0;

    sub_100010C24(&_mh_execute_header, v77, v78, "Finished transitioning assets");
    sub_100002BB8();
    goto LABEL_31;
  }

LABEL_30:

LABEL_31:

  v79 = *(v0 + 264);
  v80 = sub_100019684();
  v81 = *(v0 + 264);
  if (v80)
  {
    v82 = _s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lFTu[1];
    v83 = *(v0 + 264);

    v84 = swift_task_alloc();
    *(v0 + 480) = v84;
    sub_100065020(&qword_1001BB430, &qword_100171E18);
    *v84 = v0;
    sub_100019AF4();
    v216 = &protocol witness table for Never;
    sub_1000058D8(&type metadata for Never);
    sub_100019CAC();

    return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v85, v86, v87);
  }

  v88 = sub_100010EB0();
  v89 = v88;
  if (v88 >> 62)
  {
    goto LABEL_63;
  }

  if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_64:
    v177 = *(v0 + 360);

    Logger.logObject.getter();
    v178 = static os_log_type_t.default.getter();
    if (sub_100002F80(v178))
    {
      v179 = sub_100007648();
      sub_10000A240(v179);
      sub_100003DD0();
      _os_log_impl(v180, v181, v182, v183, v184, 2u);
      sub_100002F64();
    }

    sub_100003630();
    v185 = sub_100006348();
    (v1)(v185);
    sub_100003978();
    sub_100009BFC(v186, v187, v188, v27);
LABEL_67:
    v189 = sub_100006588();
    (v1)(v189);
    v190 = *(v0 + 248);

    sub_100001F00();
    goto LABEL_68;
  }

LABEL_37:
  sub_10002CC90(v89);
  v90 = *(v0 + 248);

  sub_100019274();
  v94 = sub_10002D264(v91, v92, v93);
  v7 = v95;
  v196 = v90;

  v96 = v7[2];
  if (!v96)
  {
    goto LABEL_48;
  }

  v97 = *(v0 + 368);
  v89 = *(v0 + 376);
  v199 = *(v0 + 272);
  v98 = sub_100065020(&qword_1001BBA80, &qword_100172440);
  sub_100002F04(v98);
  v194 = *(v99 + 64) + 15;
  v198 = swift_task_alloc();
  sub_100003978();
  sub_100009BFC(v100, v101, v102, v97);
  v202 = (v89 + 16);
  v103 = (v89 + 8);
  v197 = v94;

  v27 = 0;
  v195 = (v89 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v204 = (v89 + 8);
  v200 = v7;
  while (1)
  {
    if (v27 >= v96)
    {
      __break(1u);
LABEL_63:
      if (!sub_10001890C())
      {
        goto LABEL_64;
      }

      goto LABEL_37;
    }

    v210 = *(v0 + 416);
    loga = *(v0 + 392);
    v104 = *(v0 + 368);
    v105 = *(v0 + 280);
    v208 = *(v0 + 264) + *(v0 + 408);
    v106 = *(v0 + 384) + 15;
    v107 = v7[v27 + 4];
    v206 = swift_task_alloc();
    v108 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
    sub_100004BA0();
    sub_10001938C(v108 + v107, v105);
    v109 = swift_task_alloc();
    sub_10000AA84(v109, v110, v111, v112, v113, v114, v115, v116, v193, v194, v195, v196, v197, v198, v199);

    v117 = sub_100018A64();
    v89 = *v202;
    v118 = (v117 & 1) != 0 ? v103 : v7;
    (v89)(v108, v118, v104);
    sub_1000193F0(v105);
    v119 = *(v208 + *(v210 + 28));
    static Date.+ infix(_:_:)();
    v103 = v204;
    v1 = *v204;
    v120 = sub_10000CDA4();
    (v1)(v120);

    v121 = static Date.> infix(_:_:)();

    if (v121)
    {
      break;
    }

    ++v27;
    v1(v206, *(v0 + 368));

    v7 = v200;
    v96 = v200[2];
    if (v27 == v96)
    {

      v122 = v200;

      goto LABEL_52;
    }
  }

  v144 = *(v0 + 368);
  v145 = *(v0 + 376);

  v122 = v200;

  sub_10002C278(v198, &qword_1001BBA80, &qword_100172440);
  (*(v145 + 32))(v198, v206, v144);
  sub_1000070D0(v198);

LABEL_52:
  v146 = *(v0 + 368);
  v147 = sub_100005FA4();
  sub_10002CC20(v198, v147);
  sub_100007204();
  sub_10002C278(v147, &qword_1001BBA80, &qword_100172440);

  if (v146 != 1)
  {
    sub_1000082B4();
    sub_100003904();
    (v89)();
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = *(v0 + 368);
      v164 = sub_100007698();
      *v164 = 134217984;
      sub_100004BA0();
      v165 = sub_100005FA4();
      sub_10002CC20(v198, v165);
      v166 = sub_10000205C();
      v85 = sub_10000C6C0(v166, v167, v163);
      if (v85 == 1)
      {
        __break(1u);
        return __s20ModelManagerServices9WorkQueueV15runBlockAndWait11description10isolatedTo7performqd__SS_xYiqd__yYaqd_0_YKctYaqd_0_YKs8SendableRd__s5ErrorRd_0_r0_lF(v85, v86, v87);
      }

      logb = *(v0 + 392);
      v168 = *(v0 + 368);
      Date.timeIntervalSince(_:)();
      v170 = v169;
      v1(v147, v168);
      v171 = sub_100001F70();
      (v1)(v171);

      *(v164 + 4) = v170;
      sub_1000080F4(&_mh_execute_header, v172, v162, "Additional assets need transitioning, next task wake in %f seconds");
      sub_100002BB8();

      v1(logb, v168);
    }

    else
    {
      v173 = *(v0 + 392);
      v174 = *(v0 + 368);

      v1(v147, v174);
      v175 = sub_100001F70();
      (v1)(v175);
    }

    v176 = *(v0 + 256);
    sub_100004BA0();
    sub_10002CC20(v198, v176);
    sub_10002C278(v198, &qword_1001BBA80, &qword_100172440);

    goto LABEL_67;
  }

  v148 = *(v0 + 360);

  v149 = Logger.logObject.getter();
  v150 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v149, v150))
  {
    v6 = sub_100007698();
    v151 = sub_1000031E0();
    v214[0] = v151;
    *v6 = 136315138;
    v152 = sub_1001196B4(v197, v122);
    v154 = sub_100004A3C(v152, v153, v214);

    *(v6 + 1) = v154;
    sub_1000034C8(&_mh_execute_header, v155, v156, "Remaining transition candidates %s generated task wake times in the past.  Ending asset transition task");
    sub_100003324(v151);
    sub_100002BB8();
    sub_100012A9C();
  }

  v123 = sub_1000076D8();
  sub_10000528C();
  sub_10002C7C4(v157, v158);
  sub_10000A418();
  sub_100006098(v123);
  (*(v159 + 104))();
  swift_willThrow();

  v1(v6, v107);
  sub_10002C278(v198, &qword_1001BBA80, &qword_100172440);

LABEL_56:
  sub_100012894();
  v160 = *(v0 + 280);
  (v1)(v123);

  sub_100001F00();
LABEL_68:
  sub_100019CAC();

  return v191();
}

void sub_100010338()
{
  sub_1000055B0();
  v3 = v0;
  State = type metadata accessor for LoadState();
  v5 = sub_100002BDC(State);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_100002B8C();
  sub_1000DB2B0();
  v10 = OBJC_IVAR____TtC13modelmanagerd29InferenceProviderAssetManager_assets;
  sub_1000183F4();
  swift_beginAccess();
  if ((*(v10 + v3) & 0xC000000000000001) != 0)
  {
    v11 = &_swiftEmptySetSingleton;
    v64 = &_swiftEmptySetSingleton;
    sub_10005FA6C();

    v48 = __CocoaSet.makeIterator()();
    HIDWORD(v47) = enum case for LoadState.loaded(_:);
    v12 = (v7 + 104);
    v13 = (v7 + 8);
    while (1)
    {
      v14 = __CocoaSet.Iterator.next()();
      if (!v14)
      {

        State = 0;
        goto LABEL_26;
      }

      v49 = v14;
      type metadata accessor for InferenceProviderAsset(0);
      sub_1000358A4();
      swift_dynamicCast();
      v15 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState + v62;
      sub_100002D24();
      swift_beginAccess();
      (*v12)(v1, HIDWORD(v47), State);
      sub_100002D0C();
      sub_100011B14(&dword_1001BA628, v16);
      sub_1000DAF88();
      sub_1000DAEA4();
      if (v60 == v58 && v61 == v59)
      {
        break;
      }

      sub_100012D24();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000DB45C();

      if (v2)
      {
        goto LABEL_16;
      }

      v18 = &v15[*(type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0) + 20)];
      sub_1000DAF88();
      sub_1000DAEA4();
      if (v60 == v58 && v61 == v59)
      {
        break;
      }

      sub_100012D24();
      _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000DB45C();

      v20 = *v13;
      v21 = sub_10000CF04();
      v22(v21);
      if ((v2 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      v26 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
      if (*(*&v15[*(v26 + 48)] + 16))
      {
LABEL_18:
        swift_endAccess();
        goto LABEL_20;
      }

      v27 = *(*&v15[*(v26 + 44)] + 16);
      swift_endAccess();
      if (v27)
      {
LABEL_20:
      }

      else
      {
        v35 = v62;
        v36 = v11[2];
        if (v11[3] <= v36)
        {
          sub_1000DB474(v28, v29, v30, v31, v32, v33, v34, v36, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
        }

        v11 = v64;
        v37 = *(v64 + 5);
        Hasher.init(_seed:)();
        sub_10001214C();
        v38 = Hasher._finalize()();
        sub_100012B94(v38, v64[32]);
        _HashTable.nextHole(atOrAfter:)();
        sub_1000119F0();
        sub_100027838(v39);
        *(*(v64 + 6) + 8 * v40) = v35;
        ++*(v64 + 2);
      }
    }

LABEL_16:
    v23 = *v13;
    v24 = sub_10000CF04();
    v25(v24);
    goto LABEL_17;
  }

  sub_1000DAF44();
  v11 = sub_100011E30(v41, v42, v43, v44);
LABEL_26:
  sub_100011CBC(v11);
  sub_10002ABFC();
  if (State)
  {

    __break(1u);
  }

  else
  {

    sub_100002EEC();
  }
}

uint64_t sub_1000106D8()
{
  v2 = *v1;
  sub_100004B40();
  *v3 = v2;
  v5 = *(v4 + 328);
  v6 = *v1;
  sub_100002B9C();
  *v7 = v6;

  if (v0)
  {
    v9 = v2[39];
    v8 = v2[40];
    v10 = v2[26];
    v12 = v2[22];
    v11 = v2[23];
    v15 = v2 + 20;
    v13 = v2[20];
    v14 = v15[1];

    (*(v14 + 8))(v12, v13);
    v16 = sub_100003754();
    v9(v16);
  }

  else
  {
    v18 = v2[39];
    v17 = v2[40];
    v19 = v2[26];
    v20 = v2[23];
    (*(v2[21] + 8))(v2[22], v2[20]);
    v18(v19, v20);
  }

  return _swift_task_switch(sub_100010888, 0, 0);
}

uint64_t sub_100010888()
{
  sub_100003884();
  v4 = sub_1000166C4();
  v3(v0, v1);
  if ((v4 & 1) == 0)
  {
    v5 = v2[32];

    v6 = v2[19];
    v7 = type metadata accessor for Date();
    v2[29] = v7;
    sub_100002BDC(v7);
    v2[30] = v8;
    v2[31] = *(v9 + 64);
    v2[32] = sub_100002C58();
    v10 = sub_100065020(&qword_1001BBA80, &qword_100172440);
    sub_100002F04(v10);
    v12 = *(v11 + 64);
    v2[33] = sub_100002C58();
    Strong = swift_weakLoadStrong();
    v2[34] = Strong;
    if (Strong)
    {
      v14 = swift_task_alloc();
      v2[35] = v14;
      *v14 = v2;
      sub_100011538();
      sub_100003E20();
      sub_100003D20();

      return sub_100010CFC();
    }

    sub_100003978();
    sub_100009BFC(v17, v18, v19, v7);
    sub_10002C278(v2[33], &qword_1001BBA80, &qword_100172440);
    v20 = v2[33];
  }

  sub_10000EC80();
  if (qword_1001B8A78 != -1)
  {
    sub_10000877C();
  }

  v21 = type metadata accessor for Logger();
  sub_100002FD0(v21, qword_1001BCD78);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (sub_100002F80(v23))
  {
    v24 = sub_100007648();
    sub_10000A240(v24);
    sub_100003DD0();
    _os_log_impl(v25, v26, v27, v28, v29, 2u);
    sub_100002F64();
  }

  v30 = v2[19];

  sub_100004C24();
  v31 = swift_weakLoadStrong();
  v2[42] = v31;
  if (!v31)
  {
    sub_100005CE0();
    os_activity_scope_leave((v22 + 24));
    swift_endAccess();

    sub_100001F00();
    sub_100003D20();

    __asm { BRAA            X1, X16 }
  }

  sub_100003D20();

  return _swift_task_switch(v32, v33, v34);
}

uint64_t sub_100010B88()
{
  result = v0[33];
  v2 = v0[31];
  v3 = *(v0[32] + 8);
  return result;
}

void sub_100010B98(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100010BD4()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = *(v0[30] + 16);
  return v0[32];
}

uint64_t sub_100010BF0()
{
  v3 = v0[43];
  v2 = v0[44];
  v4 = v0[42];
  v6 = v0[38];
  v5 = v0[39];
}

BOOL sub_100010C0C()
{

  return os_log_type_enabled(v0, v1);
}

void sub_100010C24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_100010C60()
{
  v1 = v0[112];
  v2 = v0[110];
  v3 = v0[107];
  v4 = v0[106];
  v5 = v0[104];
  v6 = v0[103];
  v7 = v0[102];
}

uint64_t sub_100010CFC()
{
  sub_100002BAC();
  v1[32] = v2;
  v1[33] = v0;
  v3 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  v1[34] = v3;
  sub_100002F04(v3);
  v5 = *(v4 + 64);
  v1[35] = sub_100002C58();
  State = type metadata accessor for LoadState();
  v1[36] = State;
  sub_100002F44(State);
  v1[37] = v7;
  v9 = *(v8 + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v10 = sub_100065020(&qword_1001BB3F8, &qword_100171D50);
  sub_100002F04(v10);
  v12 = *(v11 + 64) + 15;
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v13 = type metadata accessor for InferenceProviderDescriptor();
  v1[42] = v13;
  sub_100002F44(v13);
  v1[43] = v14;
  v16 = *(v15 + 64);
  v1[44] = sub_100002C58();
  v17 = sub_100002C10();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t _s6PolicyVMa_0()
{
  result = qword_1001BACC8;
  if (!qword_1001BACC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100010EB0()
{
  sub_100010338();
  v1 = v0;
  result = sub_10000E8DC(v0);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return _swiftEmptyArrayStorage;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      result = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v5 = result;
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v5 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (*(v5 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_dynamicModeAllowed) & 1) == 0 && (*(v5 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_isCacheable) & 1) != 0 || (*(v5 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_shouldAvoidUnload))
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v6 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

BOOL sub_100010FF8()
{
  sub_10002A104();
  State = type metadata accessor for LoadState();
  v2 = sub_100002BDC(State);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_100002B8C();
  v9 = v8 - v7;
  v10 = sub_1000DB320();
  v11(v10);
  v12 = sub_1000060A4();
  if (sub_100116D68(v12, v13))
  {
    v14 = *(v4 + 8);
    v15 = sub_10000D01C();
    v16(v15);
  }

  else
  {
    v17 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
    v18 = sub_100116D68(v0 + *(v17 + 20), v9);
    v19 = *(v4 + 8);
    v20 = sub_10000D01C();
    v21(v20);
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v22 = type metadata accessor for InferenceProviderAsset.ManagerOwnedState(0);
  if (*(*(v0 + *(v22 + 48)) + 16))
  {
    return 0;
  }

  return *(*(v0 + *(v22 + 44)) + 16) == 0;
}

uint64_t sub_100011134(uint64_t result)
{
  v3 = result & ~(v2 << *(v1 + 32));
  v4 = (v2 << v3) & ~*(v1 + 56 + 8 * (v3 >> 6));
  return result;
}

uint64_t sub_100011158()
{
}

uint64_t sub_100011174(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8 * a1 + 32);
}

void sub_1000111AC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t sub_1000111C8()
{
  v2 = *(v0 + 416);

  return type metadata accessor for Logger();
}

uint64_t sub_1000111F8()
{
}

uint64_t sub_100011210()
{
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[4];

  return type metadata accessor for Logger();
}

BOOL sub_100011230()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t sub_100011248()
{
  v3 = v0[20];
  v2 = v0[21];
  v5 = v0[18];
  v4 = v0[19];

  return type metadata accessor for TaskPriority();
}

uint64_t sub_10001127C(uint64_t a1, unint64_t a2)
{

  return sub_100004A3C(a1, a2, (v2 - 88));
}

void *sub_100011294(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100065020(&dword_1001BA4A8, &qword_100171010);
  v4 = sub_10014B308();
  j__malloc_size(v4);
  sub_1000316D4();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

uint64_t sub_10001132C()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[12];
  v3 = v0[13];
  v5 = *(v0[16] + 8);
  return v0[17];
}

uint64_t sub_1000113C8()
{
  *(v0 + 4) = v2;
  *(v0 + 12) = 2080;
  v4 = v1[3];
  v3 = v1[4];
  sub_100003370(v1, v4);
  v5 = *(v3 + 8);
  return v4;
}

uint64_t sub_100011418()
{

  return swift_beginAccess();
}

void sub_10001144C()
{
  v1 = v0[42];
  v2 = v0[41];
  v3 = v0[40];
  v4 = v0[37];
  v5 = v0[36];
  v6 = v0[35];
  v7 = v0[34];
  v8 = v0[32];
  v9 = v0[29];
}

uint64_t sub_1000114BC(uint64_t a1)
{
  *(a1 + 8) = sub_1000FF7CC;
  v3 = *(v2 + 16);
  return v1;
}

uint64_t sub_100011504(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t sub_100011558()
{

  return swift_once();
}

void sub_100011578(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000115E0()
{
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];
  v6 = v0[24];
  v5 = v0[25];
  v8 = v0[22];
  v7 = v0[23];
  v10 = v0[20];
  v9 = v0[21];
}

uint64_t sub_100011624(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_10016FF50;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_100011688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  sub_10000355C();
  a29 = v30;
  a30 = v37;
  v66 = v38;
  v39 = v34;
  if (!v33)
  {
LABEL_5:

    goto LABEL_6;
  }

  v40 = v33;
  if (*(v34 + 16) == v33)
  {
LABEL_6:
    sub_100005F10();
    return;
  }

  v41 = v32;
  v42 = v31;
  sub_100065020(v35, v36);
  v43 = static _SetStorage.allocate(capacity:)();
  v44 = v43;
  if (v41 < 1)
  {
    v45 = 0;
  }

  else
  {
    v45 = *v42;
  }

  v46 = 0;
  v47 = v43 + 56;
  while (v45)
  {
    sub_100012F5C();
LABEL_16:
    v52 = *(*(v39 + 48) + 8 * (v48 | (v46 << 6)));
    v53 = *(v44 + 40);
    Hasher.init(_seed:)();

    v66(&a10);
    Hasher._finalize()();
    v54 = *(v44 + 32);
    sub_10000D028();
    if (((v57 << v56) & ~*(v47 + 8 * v55)) == 0)
    {
      sub_10000783C();
      while (1)
      {
        sub_100060714();
        if (v61)
        {
          if (v59)
          {
            goto LABEL_30;
          }
        }

        if (v58 == v60)
        {
          v58 = 0;
        }

        if (*(v47 + 8 * v58) != -1)
        {
          sub_1000081CC();
          goto LABEL_26;
        }
      }
    }

    sub_1000033E8();
LABEL_26:
    sub_100045670();
    *(v47 + v62) |= v63;
    *(*(v44 + 48) + 8 * v64) = v52;
    ++*(v44 + 16);
    if (__OFSUB__(v40--, 1))
    {
      goto LABEL_31;
    }

    if (!v40)
    {
      goto LABEL_5;
    }
  }

  v49 = v46;
  while (1)
  {
    v46 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v46 >= v41)
    {
      goto LABEL_5;
    }

    ++v49;
    if (v42[v46])
    {
      sub_1000062A0();
      v45 = v51 & v50;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

void sub_100011834(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100011854()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100011870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  result = 0;
  *v9 = a9;
  return result;
}

void *sub_100011880@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 104) = v3;
  *(v4 - 96) = v1;
  v6 = *(v2 + a1 + 24);
  v5 = *(v2 + a1 + 32);
  *(v4 - 160) = v2 + a1;
  return sub_100003370((v2 + a1), v6);
}

uint64_t sub_1000118AC()
{
}

void sub_1000118EC()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[2];
}

uint64_t sub_100011910(uint64_t result)
{
  *(result + 8) = sub_10001BBEC;
  v2 = *(v1 + 200);
  v3 = *(v1 + 184);
  return result;
}

uint64_t sub_10001193C()
{
  result = v0[21];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[24];
  v5 = v0[40];
  v6 = v0[36];
  v7 = v0[35];
  v8 = v0[37] + 8;
  return result;
}

uint64_t sub_10001195C()
{
  v2 = v0[41];
  v3 = v0[38];
  v5 = v0[34];
  v4 = v0[35];
  v6 = v0[33];
  v7 = v0[30];
}

void sub_100011980()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];
}

uint64_t sub_100011990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = *(a18 + *(a19 + 28));

  return static Date.+ infix(_:_:)();
}

uint64_t sub_1000119B4()
{

  return String.init<A>(describing:)();
}

uint64_t sub_100011A14(uint64_t a1)
{
  *(v1 + 352) = a1;
  v4 = *(v3 + 32);
  return a1 + v2;
}

uint64_t sub_100011A30()
{
  v2 = ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72);

  return swift_allocObject();
}

uint64_t sub_100011A58()
{

  return static Date.> infix(_:_:)();
}

uint64_t sub_100011A90()
{
  *v0 = *(*(v1 + 48) + 8 * v2);
}

uint64_t sub_100011AAC()
{
  result = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  return result;
}

uint64_t sub_100011ABC()
{
  v2 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
}

uint64_t sub_100011B14(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011B5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100011BE0()
{
  result = v0[7];
  v2 = v0[5];
  v3 = *(v0[6] + 88);
  return result;
}

void *sub_100011C00()
{

  return sub_100003370(v1, v0);
}

uint64_t sub_100011C28()
{
}

uint64_t sub_100011C40@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC13modelmanagerd36InferenceProviderExtensionConnection_descriptor;
  v5 = type metadata accessor for InferenceProviderDescriptor();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *sub_100011CBC(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaSet.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_1000106D0(v2, 0);

    sub_10002B170(&v11, v3 + 32, v2, v1, v4, v5, v6, v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19);
    v1 = v8;
    sub_100019334(v11, v12, v13, v14, v15);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_100011D6C()
{

  return sub_100065020(v1, v0);
}

uint64_t sub_100011D9C()
{
  v2 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[37];
  v7 = v0[33];
  v6 = v0[34];
  v8 = v0[30];
}

void *sub_100011E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v39 = a3;
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v35 = a2;
    v36 = v5;
    v33 = &v32;
    __chkstk_darwin(v13);
    v34 = v11;
    v37 = &v32 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_100011624(0, v11, v37);
    v38 = 0;
    v18 = 0;
    v5 = a1 + 56;
    v19 = 1 << *(a1 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    a2 = v20 & *(a1 + 56);
    v11 = (v19 + 63) >> 6;
    while (a2)
    {
      v21 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
LABEL_12:
      v12 = v21 | (v18 << 6);
      v25 = *(*(a1 + 48) + 8 * v12);
      v26 = OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_unsafeManagerOwnedState;
      sub_100002D24();
      swift_beginAccess();

      LOBYTE(v26) = v39(&v26[v25]);
      swift_endAccess();

      if (v26)
      {
        *(v37 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        if (__OFADD__(v38++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1000120FC(v37, v34, v38, a1, v14, v15, v16, v17, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53);
          v29 = v28;

          goto LABEL_17;
        }
      }
    }

    v22 = v18;
    while (1)
    {
      v18 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v18 >= v11)
      {
        goto LABEL_16;
      }

      ++v22;
      if (*(v5 + 8 * v18))
      {
        sub_1000062A0();
        a2 = v24 & v23;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();

  v29 = sub_1000ECCAC(v31, v11, a1, a2, v39, a4);

  sub_100002BD0();

LABEL_17:

  return v29;
}

uint64_t sub_100012124()
{
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[15];
  v9 = v0[11];
}

uint64_t sub_10001214C()
{
  v41 = type metadata accessor for CustomAssetConfiguration();
  v1 = sub_100002BDC(v41);
  v39 = v2;
  v4 = *(v3 + 64);
  __chkstk_darwin(v1);
  sub_100002B8C();
  v38 = v6 - v5;
  v7 = sub_100065020(&qword_1001B9D00, &qword_100171E00);
  v8 = sub_100002F04(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_100005630();
  v13 = v11 - v12;
  __chkstk_darwin(v14);
  v40 = &v38 - v15;
  v16 = type metadata accessor for InferenceProviderDescriptor();
  v17 = sub_100002BDC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  __chkstk_darwin(v17);
  sub_100002B8C();
  v24 = v23 - v22;
  InferenceProviderAssetDescriptor.identifier.getter();
  String.hash(into:)();

  v25 = *(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 32);
  sub_100003370((v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection), *(v0 + OBJC_IVAR____TtC13modelmanagerd22InferenceProviderAsset_inferenceProviderConnection + 24));
  v26 = *(v25 + 8);
  v27 = sub_100005974();
  v28(v27, v25);
  sub_10000866C();
  sub_100011B5C(v29, v30);
  dispatch thunk of Hashable.hash(into:)();
  (*(v19 + 8))(v24, v16);
  v32 = v40;
  v31 = v41;
  InferenceProviderAssetDescriptor.customAssetConfiguration.getter();
  sub_10001E72C(v32, v13, &qword_1001B9D00, &qword_100171E00);
  if (sub_10000C1F0(v13) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v34 = v38;
    v33 = v39;
    (*(v39 + 32))(v38, v13, v31);
    Hasher._combine(_:)(1u);
    sub_100035324();
    sub_100011B5C(v35, v36);
    dispatch thunk of Hashable.hash(into:)();
    (*(v33 + 8))(v34, v31);
  }

  return sub_10000ECD8(v32, &qword_1001B9D00, &qword_100171E00);
}

BOOL sub_1000124B4()
{

  return os_log_type_enabled(v1, v0);
}

void sub_100012530()
{
  v3 = v1[55];
  v4 = v1[56];
  v5 = v1[52];
  v6 = v1[49];
  v7 = v1[27];
  v8 = v1[28];
}

uint64_t sub_100012550()
{

  return sub_100009BFC(v1, 0, 1, v0);
}

uint64_t sub_1000125A4()
{

  return swift_beginAccess();
}

uint64_t sub_1000125E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_100002C00(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100012640()
{

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t sub_100012684()
{
}

uint64_t sub_1000126B4()
{

  return swift_allocObject();
}

uint64_t sub_1000126CC(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_100004A3C(v2, v1, va);
}

void sub_100012728()
{

  sub_1001577CC(v5 + 16, v2, v4 & 0x101, v3, v1, v0);
}

uint64_t sub_100012758(uint64_t a1)
{
  v2 = -(-1 << *(a1 + 32));
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 56);
}

uint64_t sub_100012794()
{
  v1 = *(v0 + 88);
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 104);
  *(v0 + 64) = *(v0 + 120);
  return *(v0 + 24);
}

uint64_t sub_1000127B8(uint64_t result)
{
  *(v4 + 400) = result;
  *(result + 16) = v3;
  *(result + 24) = v2;
  *(v4 + 216) = v1;
  return result;
}

uint64_t sub_1000127E0@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 112) = *(a1 + 16);
  v5 = *(v1 + 16);
  v6 = *(v3 + 16);
  return v2;
}

uint64_t sub_10001281C@<X0>(uint64_t a1@<X8>)
{
  result = v2[45];
  v4 = v2[38];
  v5 = v2[39];
  v6 = v2[26];
  v7 = *(v5 + 16);
  v5 += 16;
  v8 = v1 + ((*(v5 + 64) + 32) & ~*(v5 + 64)) + *(v5 + 56) * a1;
  v2[60] = v7;
  v2[61] = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  return result;
}

BOOL sub_100012874()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

void sub_100012894()
{
  v2 = v0[49];
  v1 = v0[50];
  v3 = v0[46];
  v4 = v0[44];
  v6 = v0[40];
  v5 = v0[41];
  v8 = v0[38];
  v7 = v0[39];
}

uint64_t sub_1000128AC()
{

  return type metadata accessor for GenerativeFunctionsInstrumentationEvent();
}

uint64_t sub_100012918()
{
}

uint64_t sub_100012930()
{
}

uint64_t sub_10001294C(uint64_t result)
{
  *(result + 8) = v1;
  v3 = v2[26];
  v4 = v2[16];
  v5 = v2[17];
  v6 = v2[14];
  v7 = v2[15];
  return result;
}

uint64_t sub_10001297C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void sub_1000129AC(uint64_t a1@<X8>)
{
  *(v2 - 168) = 7;
  *(v2 - 160) = a1;
  *(v2 - 152) = v1;
}

uint64_t sub_1000129D8()
{
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);

  return swift_allocObject();
}

uint64_t sub_100012A48()
{
  v1 = *(v0 + 224);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = *(v0 + 184);
  v11 = *(v0 + 192);
  v5 = *(v0 + 176);
  v10 = *(v0 + 160);
  v16 = *(v0 + 410);
  v15 = *(v0 + 409);
  v6 = *(v0 + 144);
  v14 = *(v0 + 152);
  result = *(v0 + 128);
  v8 = *(v0 + 136);
  v13 = *(v0 + 408);
  v9 = *(v0 + 112);
  v12 = *(v0 + 120);
  return result;
}

uint64_t sub_100012A9C()
{
}

uint64_t sub_100012AB8(uint64_t a1)
{
  *(v3 - 96) = a1;
  *v2 = v1;
  *(v2 + 1) = v1;
  *(v2 + 2) = 2082;

  return UUIDIdentifier.uuidString.getter();
}

__n128 sub_100012AE8(uint64_t a1)
{
  *(v2 + 48) = a1;
  result = *(v2 + 24);
  *(a1 + 16) = v1;
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_100012B30()
{

  return swift_allocError();
}

uint64_t sub_100012B64()
{

  return static _SetStorage.convert(_:capacity:)();
}

uint64_t sub_100012BB4(float a1)
{
  *v1 = a1;

  return type metadata accessor for InferenceProviderAssetDescriptor();
}

uint64_t sub_100012BD8()
{
  *(v0 + 112) = 1;
}

uint64_t sub_100012BF8(uint64_t result)
{
  *(result + 8) = sub_100137198;
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  return result;
}

uint64_t sub_100012C1C()
{
  v0 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1 = sub_100002BDC(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v9 - v6;
  Session.Metadata.id.getter();
  sub_1000130C8(&qword_1001B9500);
  dispatch thunk of Hashable.hash(into:)();
  return (*(v3 + 8))(v7, v0);
}

void sub_100012D30()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
}

void sub_100012D40(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_100012D7C()
{

  return swift_beginAccess();
}

uint64_t sub_100012DB0()
{
  v7 = v0[35];
  v8 = v0[36];
  v2 = v0[31];
  v3 = v0[22];
  v6 = v0[20];
  v4 = v0[4] + v0[34];

  return swift_slowAlloc();
}

void sub_100012E14()
{
  v1 = v0[41];
  v4 = v0[42];
  v2 = v0[39];
  v3 = v0[32];
}

uint64_t sub_100012E48()
{
  *(v1 - 128) = v0;

  return InferenceProviderAssetDescriptor.version.getter();
}

uint64_t sub_100012E8C()
{
}

uint64_t sub_100012EA4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = sub_100065020(a3, a4);
  sub_100006098(v5);
  v7 = *(v6 + 16);
  v8 = sub_1000062B0();
  v9(v8);
  return a2;
}

uint64_t sub_100012F04()
{
  sub_10000C1C0();
  v3 = sub_100065020(v1, v2);
  sub_100002C00(v3);
  v5 = *(v4 + 16);
  v6 = sub_1000062B0();
  v7(v6);
  return v0;
}

uint64_t sub_100012F7C(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 248);
  return v2;
}

uint64_t sub_100012F90(uint64_t a1)
{
  *(a1 + 8) = sub_1000C7C64;
  v4 = v1[7];
  v3 = v1[8];
  v5 = v1[5];
  v6 = v1[6];
  return v2;
}

uint64_t sub_100012FD0()
{
}

uint64_t sub_100012FFC()
{

  return InferenceProviderRequestConfiguration.requestUUID.getter();
}

uint64_t sub_10001301C(uint64_t a1, uint64_t a2)
{
  v3 = sub_100011D90(a1, a2);
  v5 = sub_100065020(v3, v4);
  sub_100006098(v5);
  (*(v6 + 8))(v2);
  return v2;
}

uint64_t sub_100013074(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000130C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10006A614(&qword_1001B94F0, &unk_100172060);
    sub_1000055A4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100013114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_10000385C();
  sub_100003284();
  v16 = v14[14];
  v15 = v14[15];
  v17 = v14[10];
  v18 = *(v15 + 32);
  v43 = v15 + 32;
  v19 = *(v15 + 8);
  swift_getAssociatedTypeWitness();
  type metadata accessor for ModelManagerError();
  sub_100003814(&qword_1001B8F50, &type metadata accessor for ModelManagerError);
  v20 = type metadata accessor for IPCResult();
  sub_100009E20(v20);
  sub_100004CA4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100004CA4();
  v22 = swift_getAssociatedConformanceWitness();
  v23 = sub_100003814(&qword_1001B9A00, &type metadata accessor for ModelManagerError);
  v24 = sub_100003814(&qword_1001B9A08, &type metadata accessor for ModelManagerError);
  v14[2] = AssociatedConformanceWitness;
  v14[3] = v22;
  v14[4] = v23;
  v14[5] = v24;
  v17[4] = swift_getWitnessTable();
  v14[6] = AssociatedConformanceWitness;
  v14[7] = v22;
  v14[8] = v23;
  v14[9] = v24;
  v17[5] = swift_getWitnessTable();
  sub_1000036CC(v17);
  v42 = v18 + *v18;
  v25 = v18[1];
  swift_task_alloc();
  sub_100004B34();
  v14[16] = v26;
  *v26 = v27;
  v26[1] = sub_100046278;
  v28 = v14[14];
  v29 = v14[15];
  v30 = v14[12];
  v31 = v14[13];
  v32 = v14[11];
  sub_100003540();

  return v38(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v43, a12, a13, a14);
}

void sub_1000133B8()
{
  v3 = v1[35];
  v5 = v1[31];
  v4 = v1[32];
  v7 = v1[28];
  v6 = v1[29];
  v8 = v1[25];
}

uint64_t sub_100013418(char a1)
{
  *(v1 + 526) = a1 & 1;
  v4 = *(v3 + 8);
  return v2;
}

uint64_t sub_100013430()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

void sub_10001344C(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

uint64_t sub_100013464()
{
  v2 = v0[58];
  v3 = v0[55];
  v4 = v0[56];
  v5 = v0[52];
  v6 = v0[49];
  v7 = v0[45];
  v8 = v0[38];
  v9 = v0[39];
}

uint64_t (*sub_1000134AC(uint64_t *a1))()
{
  *(v1 + 256) = a1;
  v2 = *a1;
  return sub_10012F81C;
}

Class sub_1000134FC()
{
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 520) & 1;

  return sub_10002ECE0(v2, v4, v6, v3);
}

uint64_t sub_100013528(uint64_t result)
{
  v3[44] = v2;
  v3[45] = v1;
  v3[43] = result;
  return result;
}

uint64_t sub_100013534()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

void sub_1000135F8()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 525);
  v4 = *(v0 + 524);
  v5 = *(v0 + 240);
}

void sub_100013624(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t sub_10001363C()
{
  v1 = v0[58];
  result = v0[52];
  v3 = v0[53];
  v4 = v0[50];
  return result;
}

uint64_t sub_10001364C()
{
  *(v0 + 376) = *(v1 + 8);
  *(v0 + 384) = (v1 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v2;
}

id sub_100013668(int a1)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[2];
  *(v3 + 160) = a1;
  v6 = *(v3 + 152);
  *(v3 + 152) = v5;

  return v5;
}

BOOL sub_1000136A8()
{
  if (&nominal type descriptor for GenerativeFunctionsInstrumentationMetadata)
  {
    v0 = &type metadata for GenerativeFunctionsInstrumentationMetadata == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0 && &type metadata accessor for GenerativeFunctionsInstrumentationMetadata != 0 && &protocol conformance descriptor for GenerativeFunctionsInstrumentationMetadata != 0 && &protocol conformance descriptor for GenerativeFunctionsInstrumentationMetadata != 0;
}

void sub_100013710(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_100013730(float a1)
{
  *v1 = a1;

  return swift_errorRetain();
}

uint64_t sub_100013798()
{
  v2 = *(v0 - 88);

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

uint64_t sub_1000137BC()
{
  v2 = v0[9];
  *(v0[6] + v0[13]) = 3;
}

uint64_t sub_100013850()
{
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = v0[6];

  return type metadata accessor for Logger();
}

uint64_t sub_100013870()
{
  v4 = *(v0 + 16);
  v5 = *(*(v3 - 104) + 48) + *(v0 + 72) * v2;
  return v1;
}

uint64_t sub_100013894()
{
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v5 = v0[2];

  return type metadata accessor for Logger();
}

uint64_t sub_1000138B4()
{
  sub_100001ED0();
  v2 = *v1;
  v3 = *v1;
  sub_100002B9C();
  *v4 = v3;
  v5 = v2[18];
  v6 = *v1;
  *v4 = *v1;
  v3[19] = v0;

  v7 = v2[14];
  v8 = v2[11];
  v9 = v2[10];
  if (v0)
  {
    (*(v8 + 8))(v7, v9);
    sub_1000059F8();

    return _swift_task_switch(v10, v11, v12);
  }

  else
  {
    v13 = v3[9];
    v14 = *(v8 + 8);
    v3[20] = v14;
    v3[21] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v7, v9);
    v15 = swift_task_alloc();
    v3[22] = v15;
    *v15 = v6;
    v15[1] = sub_10008FA20;
    v16 = v3[17];

    return sub_10015E158(v13 + 16);
  }
}

double sub_100013AB8()
{
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t sub_100013AE4()
{
  v11 = *(v0 + 360);
  v1 = *(v0 + 248);
  v12 = *(v0 + 256);
  v13 = *(v0 + 264);
  v7 = *(v0 + 232);
  v8 = *(v0 + 296);
  v9 = *(v0 + 208);
  v10 = *(v0 + 184);
  v2 = *(v0 + 56);
  v3 = (*(v0 + 32) + *(v0 + 240));
  v4 = v3[4];
  sub_100003370(v3, v3[3]);

  return InferenceProviderAssetDescriptor.modelCatalogIdentifier.getter();
}

uint64_t sub_100013B50()
{
}

uint64_t sub_100013B74(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 256);

  return sub_10002D264(v5, a1, a2);
}

void sub_100013BC8()
{
  v1 = v0[41];
  v2 = v0[36];
  v3 = v0[37] + 8;
}

uint64_t sub_100013BD8()
{
}

uint64_t sub_100013BF8()
{
  sub_100001ED0();
  v1 = v0[10];
  sub_1000020C0(v0 + 2);
  v3 = v0[5];
  v2 = v0[6];
  v4 = sub_100003370(v0 + 2, v3);
  swift_task_alloc();
  sub_100004B34();
  v0[11] = v5;
  *v5 = v6;
  v5[1] = sub_10004638C;
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[7];

  return sub_100013CD4(v9, v4, v7, v8, v3, v2);
}

uint64_t sub_100013CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  return sub_1000051C8();
}

uint64_t sub_100013CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  return _swift_task_switch(sub_100013114, 0, 0);
}

uint64_t sub_100013CFC()
{
  *v0 = *(v1 + 32);
  result = v2 + 8;
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100013D48()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void *sub_100013D6C(void *a1, uint64_t a2)
{
  result = sub_100003370(a1, a2);
  v4 = *(v2 + 8);
  return result;
}

uint64_t sub_100013DAC()
{
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = v0[15];
}

void sub_100013DFC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t sub_100013E64()
{
}

uint64_t sub_100013E88()
{

  return swift_slowAlloc();
}

uint64_t sub_100013EFC()
{
  sub_100002BAC();
  v2 = v1;
  sub_100001EF4();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_100002B9C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_100013FF4()
{
  sub_100002BAC();
  *(v1 + 646) = v2;
  *(v1 + 256) = v3;
  *(v1 + 264) = v0;
  *(v1 + 240) = v4;
  *(v1 + 248) = v5;
  v6 = sub_100065020(&qword_1001BB050, &qword_10016F6E0);
  sub_100002F04(v6);
  v8 = *(v7 + 64);
  *(v1 + 272) = sub_100002C58();
  v9 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  sub_100002F04(v9);
  v11 = *(v10 + 64);
  *(v1 + 280) = sub_100002C58();
  v12 = type metadata accessor for InferenceProviderDescriptor();
  *(v1 + 288) = v12;
  sub_100002F44(v12);
  *(v1 + 296) = v13;
  v15 = *(v14 + 64);
  *(v1 + 304) = sub_10000F0C0();
  *(v1 + 312) = swift_task_alloc();
  v16 = type metadata accessor for DaemonSession.LazyState(0);
  *(v1 + 320) = v16;
  sub_100002F04(v16);
  v18 = *(v17 + 64);
  *(v1 + 328) = sub_100002C58();
  v19 = type metadata accessor for AuditToken();
  *(v1 + 336) = v19;
  sub_100002F44(v19);
  *(v1 + 344) = v20;
  v22 = *(v21 + 64);
  *(v1 + 352) = sub_100002C58();
  v23 = type metadata accessor for Session.Metadata();
  *(v1 + 360) = v23;
  sub_100002F44(v23);
  *(v1 + 368) = v24;
  v26 = *(v25 + 64);
  *(v1 + 376) = sub_10000F0C0();
  *(v1 + 384) = swift_task_alloc();
  v27 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  *(v1 + 392) = v27;
  sub_100002F44(v27);
  *(v1 + 400) = v28;
  v30 = *(v29 + 64);
  *(v1 + 408) = sub_10000F0C0();
  *(v1 + 416) = swift_task_alloc();
  *(v1 + 424) = swift_task_alloc();
  *(v1 + 432) = swift_task_alloc();
  v31 = sub_100002C10();

  return _swift_task_switch(v31, v32, v33);
}

uint64_t sub_100014248()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10006FA64;

  return sub_1000142F8();
}

uint64_t sub_1000142F8()
{
  sub_100002BAC();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_100065020(&qword_1001B9CD0, &qword_100170778);
  sub_100002F04(v5);
  v7 = *(v6 + 64);
  v1[6] = sub_100002C58();
  v8 = type metadata accessor for Session.Metadata();
  v1[7] = v8;
  sub_100002F44(v8);
  v1[8] = v9;
  v11 = *(v10 + 64);
  v1[9] = sub_10000BF98();
  v1[10] = swift_task_alloc();
  v12 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  v1[11] = v12;
  sub_100002F44(v12);
  v1[12] = v13;
  v15 = *(v14 + 64);
  v1[13] = sub_10000BF98();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v16 = sub_100003000();

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_100014454(uint64_t result)
{
  *(v3 - 296) = v1;
  *(v3 - 288) = v2;
  *(v3 - 248) = result;
  return result;
}

uint64_t sub_100014490()
{
}

uint64_t sub_1000144B8()
{
  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[22];
  return v0[25];
}

uint64_t sub_1000144CC()
{
  v2 = v1[10];
  swift_beginAccess();
  v3 = *(v2 + 112);
  if (*(v3 + 16))
  {
    v4 = sub_100014804(v1[9]);
    if (v5 & 1) != 0 && (*(*(v3 + 56) + v4))
    {
      v6 = 1;
      goto LABEL_22;
    }
  }

  v7 = v1[9];
  v1[8] = 0;
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer == noErr.getter())
  {
    if (v1[8] != 4)
    {
      if (qword_1001B8A70 != -1)
      {
        sub_10000875C();
      }

      v19 = type metadata accessor for Logger();
      sub_10000641C(v19, qword_1001BCC48);
      v10 = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();
      if (!sub_100006468(v20))
      {
        v6 = 0;
        goto LABEL_21;
      }

      v21 = v1[9];
      v14 = swift_slowAlloc();
      v6 = 0;
      *v14 = 134217984;
      *(v14 + 4) = v21;
      v15 = "Determined not eligible for domain %llu";
      v13 = 12;
      goto LABEL_20;
    }

    if (qword_1001B8A70 != -1)
    {
      sub_10000875C();
    }

    v9 = type metadata accessor for Logger();
    sub_10000641C(v9, qword_1001BCC48);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();
    if (sub_100006468(v11))
    {
      v12 = v1[9];
      v13 = 12;
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v12;
      v6 = 1;
      v15 = "Determined eligible for domain %llu";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v10, v0, v15, v14, v13);

      goto LABEL_21;
    }
  }

  else
  {
    if (qword_1001B8A70 != -1)
    {
      sub_10000875C();
    }

    v16 = type metadata accessor for Logger();
    sub_10000641C(v16, qword_1001BCC48);
    v10 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (sub_100006468(v17))
    {
      v18 = v1[9];
      v13 = 18;
      v14 = swift_slowAlloc();
      *v14 = 134218240;
      *(v14 + 4) = v18;
      *(v14 + 12) = 1024;
      *(v14 + 14) = domain_answer;
      v6 = 1;
      v15 = "Unable to determine eligibility for domain %llu, status: %d";
      goto LABEL_20;
    }
  }

  v6 = 1;
LABEL_21:
  v22 = v1[9];

  swift_beginAccess();
  v23 = *(v2 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(v2 + 112);
  sub_1001178C4(v6, v22, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v27;
  swift_endAccess();
LABEL_22:
  v25 = v1[1];

  return v25(v6);
}

unint64_t sub_100014804(Swift::UInt64 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_100014874(a1, v4);
}

unint64_t sub_100014874(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

uint64_t sub_1000148D4()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100117250;

  return OSEligibilityChecker.isEligible(for:)();
}

uint64_t OSEligibilityChecker.isEligible(for:)()
{
  sub_100002BAC();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;

  return _swift_task_switch(sub_1000144CC, v0, 0);
}

uint64_t sub_1000149F8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_100014A18()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_100014A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v37 = a7;
  v38 = a8;
  v29 = a6;
  GenerativeFunctionsInstrumentationEvent.eventType.setter();
  v12 = sub_100065020(&qword_1001BD078, &qword_100173950);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v28[-v14];
  v16 = enum case for GenerativeFunctionsInstrumentationEvent.Subtype.start(_:);
  v17 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Subtype();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  sub_100009BFC(v15, 0, 1, v17);
  GenerativeFunctionsInstrumentationEvent.subtype.setter();
  v18 = type metadata accessor for GenerativeFunctionsInstrumentationEvent.Identifiers();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v34 = a2;
  v35 = a3;
  v36 = a4;
  static Buildable.with(_:)();
  GenerativeFunctionsInstrumentationEvent.identifiers.setter();
  v20 = sub_100065020(&qword_1001BD090, &qword_100173970);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v23 = &v28[-v22];
  type metadata accessor for GenerativeFunctionsInstrumentationMetadata.ModelManagerSessionEvent();
  v24 = swift_allocBox();
  v30 = a5;
  v31 = v29;
  v32 = v37;
  v33 = v38;
  static Buildable.with(_:)();
  *v23 = v24;
  v25 = enum case for GenerativeFunctionsInstrumentationMetadata.modelManagerSessionEvent(_:);
  v26 = type metadata accessor for GenerativeFunctionsInstrumentationMetadata();
  (*(*(v26 - 8) + 104))(v23, v25, v26);
  sub_100009BFC(v23, 0, 1, v26);
  return GenerativeFunctionsInstrumentationEvent.metadata.setter();
}

uint64_t sub_100014D20()
{
  sub_100002BAC();
  sub_100001EF4();
  sub_100003744();
  *v2 = v1;
  v4 = *(v3 + 544);
  v5 = *(v3 + 264);
  v6 = *v0;
  sub_100002B9C();
  *v7 = v6;
  *(v9 + 647) = v8;

  v10 = sub_100002C10();

  return _swift_task_switch(v10, v11, v12);
}

void sub_100014E3C()
{
  sub_1000055B0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  if (sub_1000136A8())
  {
    v16 = sub_100065020(&qword_1001BD070, &qword_100173948);
    v25[1] = v25;
    sub_100002F04(v16);
    v18 = *(v17 + 64);
    sub_100004B1C();
    __chkstk_darwin(v19);
    sub_100003C70();
    v20 = sub_100003370(v1 + 5, v1[8]);
    v25[0] = v25;
    __chkstk_darwin(v20);
    sub_10000A328();
    v25[2] = v3;
    *(v21 - 48) = v3;
    *(v21 - 40) = v13;
    *(v21 - 32) = v11;
    *(v21 - 24) = v15;
    *(v21 - 16) = v9;
    *(v21 - 12) = v7;
    *(v21 - 8) = v5 & 1;
    sub_1000084CC(v22);
    sub_1000030E4();
    if (v3)
    {
    }

    v23 = sub_1000128AC();
    sub_10000A6F0(v23);
    sub_10000ECD8(v0, &qword_1001BD070, &qword_100173948);
  }

  v24 = v1[10];
  sub_100014FA0();
  sub_100002EEC();
}

void sub_100014FA0()
{
  sub_1000055B0();
  v56 = v1;
  v53 = v3;
  v54 = v2;
  v52 = v4;
  v6 = v5;
  v51 = v7;
  v9 = v8;
  v10 = sub_100065020(&qword_1001B94F0, &unk_100172060);
  sub_100002BDC(v10);
  v12 = v11;
  v14 = *(v13 + 64);
  sub_100004B1C();
  __chkstk_darwin(v15);
  sub_100018A10();
  sub_100003058(OBJC_IVAR____TtC13modelmanagerd19TelemetrySignposter_addSessionPostString);
  v57 = v16;
  v55 = *(v17 + 16);
  v18 = type metadata accessor for OSSignpostID();
  v19 = sub_100002BDC(v18);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  sub_100016624();

  v22 = sub_100013554();
  v25 = sub_100009C8C(v22, v23, v24);
  sub_100016484(v25);
  v26 = sub_100013554();
  v29 = sub_100009C8C(v26, v27, v28);
  sub_100016484(v29);
  (*(v12 + 16))(v0, v56, v10);
  v30 = OSSignposter.logHandle.getter();
  v31 = static os_signpost_type_t.begin.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {
    goto LABEL_5;
  }

  v50 = v10;
  if ((v55 & 1) == 0)
  {

    if (!v57)
    {
      __break(1u);
LABEL_5:

      v32 = (*(v12 + 8))(v0, v10);
LABEL_14:
      __chkstk_darwin(v32);
      sub_100002D4C();
      v44 = sub_100018688();
      v45(v44);
      v46 = type metadata accessor for OSSignpostIntervalState();
      sub_1000038EC(v46);
      sub_100003170();
      OSSignpostIntervalState.init(id:isOpen:)();
      v47 = sub_100019BCC();
      v48(v47, v6);
      type metadata accessor for TelemetryIntervalState();
      v49 = sub_1000126B4();
      sub_10003533C(v49);
      sub_100002EEC();
      return;
    }

LABEL_10:
    v35 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    *v35 = 136447490;
    v36 = Array.description.getter();
    sub_10001127C(v36, v37);
    sub_1000188B4();
    *(v35 + 4) = v9;
    *(v35 + 12) = 2082;
    *(v35 + 14) = sub_100004A3C(v51, v6, &v58);
    *(v35 + 22) = 1026;
    *(v35 + 24) = v52;
    *(v35 + 28) = 1026;
    if (v53)
    {
      v38 = 1702195828;
    }

    else
    {
      v38 = 0x65736C6166;
    }

    *(v35 + 30) = v54;
    *(v35 + 34) = 2082;
    v39 = sub_10000CF80(v38);

    *(v35 + 36) = v39;
    *(v35 + 44) = 2082;
    v40 = UUIDIdentifier.uuidString.getter();
    v42 = sub_10001127C(v40, v41);

    *(v35 + 46) = v42;
    (*(v12 + 8))(v0, v50);
    v43 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v30, v31, v43, v57, "bundeIdentifiers: %{public, signpost.description=attribute,public}s,\nuseCaseIdentifier: %{public, signpost.description=attribute,public}s,\nonBehalfOfPID: %{public, signpost.description=attribute,public}d,\ncreatedByPID: %{public, signpost.description=attribute,public}d,\ncontainsSensitiveData: %{public, signpost.description=attribute,public}s,\nuuid: %{public, signpost.description=attribute,public}s", v35, 0x36u);
    sub_100012500();
    swift_arrayDestroy();
    sub_100003A4C();
    sub_100002BB8();

    goto LABEL_14;
  }

  if (v57 >> 32)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_100011408();
  if (!v33)
  {
    sub_100005704();
    if (!(!v33 & v34))
    {

      v57 = &v58;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
}