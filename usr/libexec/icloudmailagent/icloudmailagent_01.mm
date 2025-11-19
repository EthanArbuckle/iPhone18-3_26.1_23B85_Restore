unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyAPIResponse and conformance EmptyAPIResponse()
{
  result = lazy protocol witness table cache variable for type EmptyAPIResponse and conformance EmptyAPIResponse;
  if (!lazy protocol witness table cache variable for type EmptyAPIResponse and conformance EmptyAPIResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyAPIResponse and conformance EmptyAPIResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t lazy protocol witness table accessor for type Data? and conformance <A> A?(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchSenderOverridesAPIRequestBody and conformance FetchSenderOverridesAPIRequestBody()
{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody and conformance FetchSenderOverridesAPIRequestBody;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody and conformance FetchSenderOverridesAPIRequestBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIRequestBody and conformance FetchSenderOverridesAPIRequestBody);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchSenderOverridesAPIResponse and conformance FetchSenderOverridesAPIResponse()
{
  result = lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse and conformance FetchSenderOverridesAPIResponse;
  if (!lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse and conformance FetchSenderOverridesAPIResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchSenderOverridesAPIResponse and conformance FetchSenderOverridesAPIResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StartFullSyncAPIRequestBody and conformance StartFullSyncAPIRequestBody()
{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody and conformance StartFullSyncAPIRequestBody;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody and conformance StartFullSyncAPIRequestBody)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIRequestBody and conformance StartFullSyncAPIRequestBody);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StartFullSyncAPIResponse and conformance StartFullSyncAPIResponse()
{
  result = lazy protocol witness table cache variable for type StartFullSyncAPIResponse and conformance StartFullSyncAPIResponse;
  if (!lazy protocol witness table cache variable for type StartFullSyncAPIResponse and conformance StartFullSyncAPIResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartFullSyncAPIResponse and conformance StartFullSyncAPIResponse);
  }

  return result;
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type MSError and conformance MSError()
{
  result = lazy protocol witness table cache variable for type MSError and conformance MSError;
  if (!lazy protocol witness table cache variable for type MSError and conformance MSError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MSError and conformance MSError);
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSypGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSDySSypGGMd, &_ss18_DictionaryStorageCySSSDySSypGGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

uint64_t outlined destroy of TaskPriority?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

id MCCSecretAgentService.().init()()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }

  v1 = static CategorizationManager.sharedInstance;
  *&v0[OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationManager] = static CategorizationManager.sharedInstance;
  v2 = one-time initialization token for sharedInstance;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = static CategorizationSyncManager.sharedInstance;
  *&v0[OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager] = static CategorizationSyncManager.sharedInstance;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for MCCSecretAgentService();
  v5 = v4;
  v6 = objc_msgSendSuper2(&v14, "init");
  v7 = one-time initialization token for secretAgentService;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.secretAgentService);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "MCCSecretAgentService is initialized", v12, 2u);
  }

  return v8;
}

void @objc MCCSecretAgentService.isModelReady(completion:)(void *a1, int a2, void *aBlock, const char *a4, void (*a5)(uint64_t, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  specialized MCCSecretAgentService.isModelReady(completion:)(v9, v8, a4, a5);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t @objc MCCSecretAgentService.getIABCategoryID(_:completion:)(void *a1, int a2, int a3, void *aBlock, const char *a5, void (*a6)(uint64_t, uint64_t, uint64_t, void *))
{
  v9 = _Block_copy(aBlock);
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  _Block_copy(v9);
  v13 = a1;
  specialized MCCSecretAgentService.getIABCategoryID(_:completion:)(v10, v12, v13, v9, a5, a6);
  _Block_release(v9);
  _Block_release(v9);
}

Swift::Void __swiftcall MCCSecretAgentService.syncNewOldCategoryTimestamps(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.secretAgentService);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "MCCSecretAgentService syncNewOldCategoryTimestamps called", v7, 2u);
  }

  v8 = *(v2 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  CategorizationSyncManager.syncNewOldCategoryTimestamps(_:)(a1);
}

id MCCSecretAgentService.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MCCSecretAgentService();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t outlined destroy of (String, Double)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SdtMd, &_sSS_SdtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RCOverrideRule(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t specialized MCCSecretAgentService.pingWithcompletion(_:)(uint64_t a1)
{
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.secretAgentService);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "MCCSecretAgentService ping", v5, 2u);
  }

  v6 = *(a1 + 16);

  return v6(a1, 1, 0);
}

void specialized MCCSecretAgentService.predictCommerceEmail(with:completion:)(void *a1, uint64_t a2, void *aBlock)
{
  _Block_copy(aBlock);
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.secretAgentService);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "predictCommerceEmail MCCSecretAgentService predictCommerceEmailWithContext called", v9, 2u);
  }

  v10 = *(a2 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationManager);
  v13 = &_swiftEmptyDictionarySingleton;
  _Block_copy(aBlock);
  _Block_copy(aBlock);
  v11 = objc_autoreleasePoolPush();
  specialized closure #1 in CategorizationManager.predictCommerceEmail(with:completion:)(v10, a1, &v13, aBlock);
  objc_autoreleasePoolPop(v11);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v13);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  (*(aBlock + 2))(aBlock, isa, 0);

  _Block_release(aBlock);

  _Block_release(aBlock);
}

void specialized MCCSecretAgentService.getPKCategory(forDomain:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.sync);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "getPKCategoryForDomain MCCSecretAgentService called", v11, 2u);
  }

  v12 = *(a3 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationManager);
  _Block_copy(aBlock);
  specialized CategorizationManager.getPKCategory(forDomain:completion:)(a1, a2, v12, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void specialized MCCSecretAgentService.getIABCategoryID(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, const char *a5, void (*a6)(uint64_t, uint64_t, uint64_t, void *))
{
  _Block_copy(aBlock);
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.secretAgentService);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, a5, v15, 2u);
  }

  v16 = *(a3 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationManager);
  _Block_copy(aBlock);
  a6(a1, a2, v16, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void specialized MCCSecretAgentService.isModelReady(completion:)(uint64_t a1, void *aBlock, const char *a3, void (*a4)(uint64_t, void *))
{
  _Block_copy(aBlock);
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.secretAgentService);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, a3, v11, 2u);
  }

  v12 = *(a1 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationManager);
  _Block_copy(aBlock);
  a4(v12, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void specialized MCCSecretAgentService.isCategorizationSupported(forLocale:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.secretAgentService);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "isCategorizationSupported MCCSecretAgentService called", v7, 2u);
  }

  type metadata accessor for LocaleHelper();
  v8 = static LocaleHelper.isCategorizationSupported(forLocale:)();
  if (v8 == 2)
  {
    v9 = objc_allocWithZone(NSError);
    v10 = String._bridgeToObjectiveC()();
    v11 = [v9 initWithDomain:v10 code:-1 userInfo:0];

    v12 = v11;
    v14 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v14);
  }

  else
  {
    v13 = *(a3 + 16);

    v13(a3, v8 & 1, 0);
  }
}

uint64_t specialized MCCSecretAgentService.syncRecategorizationRules(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v19 - v8;
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.secretAgentService);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "MCCSecretAgentService syncRecategorizationRules is called", v13, 2u);
  }

  v14 = *(a2 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v14;
  v16[5] = a1;
  v17 = v14;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in CategorizationSyncManager.syncToWeb(rules:), v16);

  return (*(a3 + 16))(a3, 1, 0);
}

uint64_t specialized MCCSecretAgentService.clearAllUserOverrides(withTimestamp:completion:)(uint64_t a1, uint64_t a2, Swift::Double a3)
{
  if (one-time initialization token for secretAgentService != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.secretAgentService);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "MCCSecretAgentService clearAllUserOverrides called", v9, 2u);
  }

  v10 = *(a1 + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  CategorizationSyncManager.clearAllUserOverrides(timestamp:)(a3);
  v11 = *(a2 + 16);

  return v11(a2, 1, 0);
}

uint64_t partial apply for closure #1 in CategorizationSyncManager.syncToWeb(rules:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in APIManager.retryPendingRequests();

  return closure #1 in CategorizationSyncManager.syncToWeb(rules:)(a1, v4, v5, v7, v6);
}

Swift::Void __swiftcall CategorizationSyncManager.syncNewOldCategoryTimestamps(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v66 - v6;
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v70 = *(v8 - 8);
  v71 = v8;
  v9 = *(v70 + 64);
  __chkstk_darwin(v8);
  v11 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMd, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMR);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v77 = &v66 - v14;
  v79 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  isa = v79[-1].isa;
  v15 = *(isa + 8);
  __chkstk_darwin(v79);
  v72 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVySSGMd, &_s7Combine4JustVySSGMR);
  v73 = *(v17 - 8);
  v74 = v17;
  v18 = *(v73 + 64);
  __chkstk_darwin(v17);
  v20 = &v66 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMR);
  v78 = *(v21 - 8);
  v22 = *(v78 + 64);
  __chkstk_darwin(v21);
  v76 = &v66 - v23;
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.sync);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "Received new old category timestamps, filtering out Primary inbox", v27, 2u);
  }

  v28 = specialized _NativeDictionary.filter(_:)(a1._rawValue);
  if (*(v28 + 16))
  {
    v68 = v21;
    v69 = v7;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Received new old category timestamps, delaying them to 5 seconds", v31, 2u);
    }

    v67 = *&v2[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldLock];
    [v67 lock];
    v32 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldValueToSend;
    swift_beginAccess();
    if (*&v2[v32])
    {
      v34 = CategorizationSyncManager.newOldValueToSend.modify();
      if (*v33)
      {
        v35 = v33;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = *v35;
        *v35 = 0x8000000000000000;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v28, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v81);

        v37 = *v35;
        *v35 = v81;
      }

      else
      {
      }

      (v34)(v80, 0);
    }

    else
    {
      *&v2[v32] = v28;
    }

    v41 = v2;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v80[0] = v45;
      *v44 = 136315138;
      v81 = *&v2[v32];

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo8NSNumberCGSgMd, &_sSDySSSo8NSNumberCGSgMR);
      v46 = String.init<A>(describing:)();
      v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v47, v80);

      *(v44 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v42, v43, "Updated set of category timestamps: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    v49 = v69;
    v69 = v41;
    v66 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldCancellable;
    if (*&v41[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldCancellable])
    {
      v50 = *&v41[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldCancellable];

      AnyCancellable.cancel()();
    }

    v80[0] = 0;
    v80[1] = 0xE000000000000000;
    Just.init(_:)();
    v51 = v72;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v52 = isa;
    v53 = v77;
    (*(isa + 7))(v77, 1, 1, v79);
    type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v54 = v70;
    v55 = v11;
    v56 = v11;
    v57 = v71;
    (*(v70 + 104))(v56, enum case for DispatchQoS.QoSClass.default(_:), v71);
    v58 = static OS_dispatch_queue.global(qos:)();
    (*(v54 + 8))(v55, v57);
    v80[0] = v58;
    v59 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    (*(*(v59 - 8) + 56))(v49, 1, 1, v59);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Just<String> and conformance Just<A>, &_s7Combine4JustVySSGMd, &_s7Combine4JustVySSGMR);
    lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v60 = v76;
    v61 = v74;
    Publisher.delay<A>(for:tolerance:scheduler:options:)();
    outlined destroy of TaskPriority?(v49, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    outlined destroy of TaskPriority?(v53, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMd, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMR);
    (*(v52 + 1))(v51, v79);
    (*(v73 + 8))(v20, v61);
    swift_allocObject();
    v62 = v69;
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Delay<Just<String>, OS_dispatch_queue> and conformance Publishers.Delay<A, B>, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMR);
    v63 = v68;
    v64 = Publisher<>.sink(receiveValue:)();

    (*(v78 + 8))(v60, v63);
    v65 = *&v62[v66];
    *&v62[v66] = v64;

    [v67 unlock];
  }

  else
  {

    v79 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v79, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v79, v38, "Received Primary inbox, ignoring it, there is no UI for it.", v39, 2u);
    }

    v40 = v79;
  }
}

uint64_t CategorizationSyncManager.notifyRuleListeners(overrides:)(unint64_t a1, void *a2, SEL *a3, char *a4)
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_22:
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.sync);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Nothing to notify", v23, 2u);
    }

    return 1;
  }

LABEL_21:
  v18 = a4;
  v19 = _CocoaArrayWrapper.endIndex.getter();
  a4 = v18;
  if (!v19)
  {
    goto LABEL_22;
  }

LABEL_3:
  format = a4;
  v6 = *(v4 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock);
  [v6 lock];
  v7 = CategorizationSyncManager.eligibleListeners(of:)(a2);
  v4 = v7;
  if (v7 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
LABEL_5:
      v9 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v10 = *(v4 + 8 * v9 + 32);
        }

        a2 = v10;
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

        v12 = [v10 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30MCCCategoryRulesClientProtocol_pMd, &_sSo30MCCCategoryRulesClientProtocol_pMR);
        if (swift_dynamicCast())
        {
          type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for RCOverrideRule, RCOverrideRule_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v31 *a3];

          swift_unknownObjectRelease();
        }

        ++v9;
      }

      while (v11 != v8);

      if (one-time initialization token for sync != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.sync);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, format, v17, 2u);
      }

      [v6 unlock];
      return 1;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }
  }

  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.sync);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "No listeners to handle overrides", v28, 2u);
  }

  [v6 unlock];
  return 0;
}

Swift::Bool __swiftcall CategorizationSyncManager.notifyNewOldListeners(categories:)(Swift::OpaquePointer categories)
{
  if (!*(categories._rawValue + 2))
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.sync);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Nothing to notify", v33, 2u);
    }

    return 1;
  }

  v2 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock);
  [v2 lock];
  v3 = CategorizationSyncManager.eligibleListeners(of:)(2);
  if (v3 >> 62)
  {
    while (2)
    {
      v39 = v3;
      v4 = _CocoaArrayWrapper.endIndex.getter();
      v3 = v39;
      if (v4)
      {
LABEL_4:
        v44 = v2;
        v5 = 0;
        v2 = (v3 & 0xC000000000000001);
        v6 = v3 & 0xFFFFFFFFFFFFFF8;
        v7 = v3 + 32;
        v47 = v3 & 0xC000000000000001;
        v48 = v4;
        v45 = v3 + 32;
        v46 = v3 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
LABEL_6:
          if (v2)
          {
            v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v5 >= *(v6 + 16))
            {
              goto LABEL_41;
            }

            v3 = *(v7 + 8 * v5);
          }

          v8 = v3;
          v9 = __OFADD__(v5++, 1);
          if (v9)
          {
            goto LABEL_40;
          }

          v10 = [v3 remoteObjectProxy];
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30MCCCategoryRulesClientProtocol_pMd, &_sSo30MCCCategoryRulesClientProtocol_pMR);
          if (swift_dynamicCast())
          {
            break;
          }

          if (v5 == v4)
          {
            goto LABEL_32;
          }
        }

        v49 = v5;
        v50 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
        v3 = static _DictionaryStorage.copy(original:)();
        v11 = v3;
        v12 = 0;
        v13 = 1 << *(categories._rawValue + 32);
        v14 = *(categories._rawValue + 8);
        if (v13 < 64)
        {
          v15 = ~(-1 << v13);
        }

        else
        {
          v15 = -1;
        }

        v16 = v15 & v14;
        v17 = (v13 + 63) >> 6;
        v51 = v3 + 64;
        if ((v15 & v14) != 0)
        {
          while (1)
          {
            v18 = __clz(__rbit64(v16));
            v16 &= v16 - 1;
LABEL_21:
            v21 = v18 | (v12 << 6);
            v22 = (*(categories._rawValue + 6) + 16 * v21);
            v23 = *v22;
            v24 = v22[1];
            v25 = *(*(categories._rawValue + 7) + 8 * v21);
            v2 = objc_allocWithZone(NSNumber);

            v3 = [v2 initWithDouble:v25];
            *(v51 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
            v26 = (v11[6] + 16 * v21);
            *v26 = v23;
            v26[1] = v24;
            *(v11[7] + 8 * v21) = v3;
            v27 = v11[2];
            v9 = __OFADD__(v27, 1);
            v28 = v27 + 1;
            if (v9)
            {
              break;
            }

            v11[2] = v28;
            if (!v16)
            {
              goto LABEL_16;
            }
          }

LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
          continue;
        }

LABEL_16:
        v19 = v12;
        while (1)
        {
          v12 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            __break(1u);
            goto LABEL_39;
          }

          if (v12 >= v17)
          {
            break;
          }

          v20 = *(categories._rawValue + v12 + 8);
          ++v19;
          if (v20)
          {
            v18 = __clz(__rbit64(v20));
            v16 = (v20 - 1) & v20;
            goto LABEL_21;
          }
        }

        type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        [v53 newOldCategoryTimestampsChanged:isa];

        swift_unknownObjectRelease();
        v2 = v47;
        v4 = v48;
        v5 = v49;
        v7 = v45;
        v6 = v46;
        if (v49 != v48)
        {
          goto LABEL_6;
        }

LABEL_32:

        if (one-time initialization token for sync != -1)
        {
          swift_once();
        }

        v34 = type metadata accessor for Logger();
        __swift_project_value_buffer(v34, static Logger.sync);
        v35 = Logger.logObject.getter();
        v36 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v35, v36))
        {
          v37 = swift_slowAlloc();
          *v37 = 0;
          _os_log_impl(&_mh_execute_header, v35, v36, "Successfully sent new/old sync message", v37, 2u);
        }

        [v44 unlock];
        return 1;
      }

      break;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }
  }

  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, static Logger.sync);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "No listeners to handle new/old category timestamps", v43, 2u);
  }

  [v2 unlock];
  return 0;
}

id one-time initialization function for sharedInstance()
{
  result = [objc_allocWithZone(type metadata accessor for CategorizationSyncManager()) init];
  static CategorizationSyncManager.sharedInstance = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for CategorizationManager()) init];
  static CategorizationManager.sharedInstance = result;
  return result;
}

{
  result = [objc_allocWithZone(type metadata accessor for MCCAgentConnectionManager()) init];
  static MCCAgentConnectionManager.sharedInstance = result;
  return result;
}

id CategorizationSyncManager.().init()()
{
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager] = 0;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timerTransaction] = 0;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkTransaction] = 0;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkMonitor] = 0;
  v1 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_deviceLockObserver;
  type metadata accessor for DeviceLockObserver();
  swift_allocObject();
  *&v0[v1] = DeviceLockObserver.init()();
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_cancellables] = &_swiftEmptySetSingleton;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_fetchCancellable] = 0;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldCancellable] = 0;
  v2 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldLock;
  *&v0[v2] = [objc_allocWithZone(NSLock) init];
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldValueToSend] = 0;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_minuteInterval] = 10080;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timer] = 0;
  v3 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_lock;
  *&v0[v3] = [objc_allocWithZone(NSLock) init];
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_clientConnections] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_pingTimer] = 0;
  v4 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock;
  *&v0[v4] = [objc_allocWithZone(NSLock) init];
  v9.receiver = v0;
  v9.super_class = type metadata accessor for CategorizationSyncManager();
  v5 = objc_msgSendSuper2(&v9, "init");
  v6 = one-time initialization token for shared;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  *(static APNSManager.shared + OBJC_IVAR____TtC15icloudmailagent11APNSManager_delegate + 8) = &protocol witness table for CategorizationSyncManager;
  swift_unknownObjectWeakAssign();
  CategorizationSyncManager.initApiManagerIfNeeded()();
  CategorizationSyncManager.listenForDeviceLock()();

  return v7;
}

uint64_t CategorizationSyncManager.listenForDeviceLock()()
{
  v2 = *(*(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_deviceLockObserver) + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<Bool, Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySbs5NeverOGMd, &_s7Combine12AnyPublisherVySbs5NeverOGMR);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();
}

Swift::Void __swiftcall CategorizationSyncManager.handleNewOldPush(state:)(Swift::OpaquePointer state)
{
  if (one-time initialization token for sync != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.sync);

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v34 = v6;
      *v5 = 136315138;
      v7 = Dictionary.description.getter();
      v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v34);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "Handle new old push %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v6);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v10 = static _DictionaryStorage.copy(original:)();
    v11 = v10;
    v12 = 0;
    v13 = 1 << *(state._rawValue + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(state._rawValue + 8);
    v16 = (v13 + 63) >> 6;
    v17 = v10 + 64;
    if (!v15)
    {
      break;
    }

    while (1)
    {
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_13:
      v21 = v18 | (v12 << 6);
      v22 = (*(state._rawValue + 6) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = *(*(state._rawValue + 7) + 8 * v21) / 1000.0;
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = (v11[6] + 16 * v21);
      *v26 = v24;
      v26[1] = v23;
      *(v11[7] + 8 * v21) = v25;
      v27 = v11[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      v11[2] = v29;

      if (!v15)
      {
        goto LABEL_8;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

LABEL_8:
  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v12 >= v16)
    {
      break;
    }

    v20 = *(state._rawValue + v12 + 8);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v15 = (v20 - 1) & v20;
      goto LABEL_13;
    }
  }

  v30 = CategorizationSyncManager.notifyNewOldListeners(categories:)(v11);

  v31 = [objc_opt_self() standardUserDefaults];
  if (v30)
  {
    v33 = String._bridgeToObjectiveC()();
    [(objc_class *)v31 removeObjectForKey:?];
  }

  else
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v33 = String._bridgeToObjectiveC()();
    [(objc_class *)v31 setObject:isa forKey:?];

    v31 = isa;
  }
}

void CategorizationSyncManager.initApiManagerIfNeeded()()
{
  v1 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager;
  if (!*(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager))
  {
    v2 = type metadata accessor for APIManager();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v5 = APIManager.init()();
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
  }
}

uint64_t closure #1 in CategorizationSyncManager.syncToWeb(rules:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  v5[5] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(closure #1 in CategorizationSyncManager.syncToWeb(rules:), 0, 0);
}

uint64_t closure #1 in CategorizationSyncManager.syncToWeb(rules:)()
{
  v1 = v0[3];
  CategorizationSyncManager.initApiManagerIfNeeded()();
  v2 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  v0[7] = v2;
  if (!v2)
  {
    if (one-time initialization token for sync == -1)
    {
LABEL_9:
      v14 = type metadata accessor for Logger();
      __swift_project_value_buffer(v14, static Logger.sync);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Unable to initialize api manager", v17, 2u);
      }

      goto LABEL_19;
    }

LABEL_23:
    swift_once();
    goto LABEL_9;
  }

  v3 = one-time initialization token for sync;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = v0[4];
  v5 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v5, static Logger.sync);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[4];
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (v9 >> 62)
    {
      v0[4];
      v32 = v10;
      v11 = _CocoaArrayWrapper.endIndex.getter();
      v10 = v32;
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v0[4];
    *(v10 + 4) = v11;
    v13 = v10;

    _os_log_impl(&_mh_execute_header, v6, v7, "Started syncing native rules to web, count: %ld", v13, 0xCu);
  }

  else
  {
    v18 = v0[4];
  }

  v19 = specialized static RCOverrideHelper.groupOverrideRules(rules:)(v0[4]);
  v20 = specialized static RCOverrideHelper.splitOverrideGroups(groups:maxMessagesPerGroup:)(v19, 100);
  v0[9] = v20;

  v21 = *(v20 + 16);
  v0[10] = v21;
  if (v21)
  {
    v0[11] = 0;
    v22 = v0[9];
    if (*(v22 + 2))
    {
      v23 = v0[7];
      v24 = *(v22 + 4);
      v0[12] = v24;
      v25 = *(v22 + 6);
      v0[13] = v25;
      v26 = v22[7];
      v27 = *(v22 + 5);

      v28 = swift_task_alloc();
      v0[14] = v28;
      *v28 = v0;
      v28[1] = closure #1 in CategorizationSyncManager.syncToWeb(rules:);

      return APIManager.syncRecategorizationRule(rule:)(v24, v27, v25, v26);
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_19:
  v30 = v0[6];

  v31 = v0[1];

  return v31();
}

{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v5 = closure #1 in CategorizationSyncManager.syncToWeb(rules:);
  }

  else
  {
    v5 = closure #1 in CategorizationSyncManager.syncToWeb(rules:);
  }

  return _swift_task_switch(v5, 0, 0);
}

void closure #1 in CategorizationSyncManager.syncToWeb(rules:)()
{
  v1 = v0[8];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully synced rule", v4, 2u);
  }

  v5 = v0[11] + 1;
  if (v5 == v0[10])
  {
    v6 = v0[9];
    v7 = v0[7];

    v8 = v0[6];

    v9 = v0[1];

    v9();
  }

  else
  {
    v0[11] = v5;
    v10 = v0[9];
    if (v5 >= *(v10 + 16))
    {
      __break(1u);
    }

    else
    {
      v11 = v0[7];
      v12 = (v10 + 32 * v5);
      v13 = *(v12 + 4);
      v0[12] = v13;
      v14 = *(v12 + 6);
      v0[13] = v14;
      v15 = v12[7];
      v16 = *(v12 + 5);

      v17 = swift_task_alloc();
      v0[14] = v17;
      *v17 = v0;
      v17[1] = closure #1 in CategorizationSyncManager.syncToWeb(rules:);

      APIManager.syncRecategorizationRule(rule:)(v13, v16, v14, v15);
    }
  }
}

{
  v31 = v0;
  v0[2] = v0[15];
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = type metadata accessor for MCCError();
  v5 = swift_dynamicCast();
  (*(*(v4 - 8) + 56))(v3, v5 ^ 1u, 1, v4);
  v6 = Optional.debugDescription.getter();
  v8 = v7;
  outlined destroy of TaskPriority?(v3, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[15];
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v30 = v14;
    *v13 = 136315138;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v30);

    *(v13 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Unable to sync native rule to web: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
  }

  else
  {
    v16 = v0[15];
  }

  v17 = v0[11] + 1;
  if (v17 == v0[10])
  {
    v18 = v0[9];
    v19 = v0[7];

    v20 = v0[6];

    v21 = v0[1];

    v21();
  }

  else
  {
    v0[11] = v17;
    v22 = v0[9];
    if (v17 >= *(v22 + 16))
    {
      __break(1u);
    }

    else
    {
      v23 = v0[7];
      v24 = (v22 + 32 * v17);
      v25 = *(v24 + 4);
      v0[12] = v25;
      v26 = *(v24 + 6);
      v0[13] = v26;
      v27 = v24[7];
      v28 = *(v24 + 5);

      v29 = swift_task_alloc();
      v0[14] = v29;
      *v29 = v0;
      v29[1] = closure #1 in CategorizationSyncManager.syncToWeb(rules:);

      APIManager.syncRecategorizationRule(rule:)(v25, v28, v26, v27);
    }
  }
}

Swift::Void __swiftcall CategorizationSyncManager.start()()
{
  v1 = v0;
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sync);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Starting CategorizationSyncManager...", v5, 2u);
  }

  v6 = specialized CategorizationSyncManager.getFrequency(for:)(0xD000000000000024, 0x8000000100038D00);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_minuteInterval);
  }

  else
  {
    v8 = v6;
  }

  *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_minuteInterval) = v8;
  v9 = objc_opt_self();
  if ((v8 * 60) >> 64 != (60 * v8) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = v9;
  v11 = (60 * v8);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17[4] = closure #1 in CategorizationSyncManager.newTimer()partial apply;
  v17[5] = v12;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
  v17[3] = &block_descriptor_74;
  v13 = _Block_copy(v17);

  v14 = [v10 scheduledTimerWithTimeInterval:1 repeats:v13 block:v11];
  _Block_release(v13);
  v15 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timer);
  *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timer) = v14;

  CategorizationSyncManager.monitorNetworkChanges()();
  CategorizationSyncManager.startPingTimer()();
  if (one-time initialization token for shared != -1)
  {
LABEL_12:
    swift_once();
  }

  APNSManager.start()();
  type metadata accessor for OSTransactionHelper();
  swift_initStaticObject();
  OSTransactionHelper.makeTransaction()();
  v16 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timerTransaction);
  *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timerTransaction) = 0;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

void CategorizationSyncManager.startPingTimer()()
{
  v1 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_pingTimer;
  if (!*(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_pingTimer))
  {
    v2 = v0;
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.sync);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "creating client-notification timer", v6, 2u);
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12[4] = partial apply for closure #1 in CategorizationSyncManager.startPingTimer();
    v12[5] = v8;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    v12[3] = &block_descriptor_69;
    v9 = _Block_copy(v12);

    v10 = [v7 scheduledTimerWithTimeInterval:1 repeats:v9 block:300.0];
    _Block_release(v9);
    v11 = *(v2 + v1);
    *(v2 + v1) = v10;
  }
}

void closure #1 in CategorizationSyncManager.startPingTimer()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock;
    [*(Strong + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock) lock];
    v3 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_clientConnections;
    swift_beginAccess();
    v4 = *(*&v1[v3] + 16);
    if (one-time initialization token for sync != -1)
    {
      goto LABEL_12;
    }

    while (1)
    {
      v5 = type metadata accessor for Logger();
      __swift_project_value_buffer(v5, static Logger.sync);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 134217984;
        *(v8 + 4) = v4;
        _os_log_impl(&_mh_execute_header, v6, v7, "notify [%ld clients]", v8, 0xCu);
      }

      v9 = *&v1[v3];
      v10 = *(v9 + 16);

      if (!v10)
      {
        break;
      }

      v3 = 0;
      v4 = (v9 + 40);
      while (v3 < *(v9 + 16))
      {
        ++v3;
        v11 = *v4;
        v12[0] = *(v4 - 1);
        v12[1] = v11;
        closure #1 in closure #1 in CategorizationSyncManager.startPingTimer()(v12);
        v4 += 2;
        if (v10 == v3)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_12:
      swift_once();
    }

LABEL_9:

    [*&v1[v2] unlock];
  }
}

uint64_t closure #1 in closure #1 in CategorizationSyncManager.startPingTimer()(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.sync);
  v4 = v1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v17 = v2;
    type metadata accessor for MCCRulesListenerNotificationType();
    v10 = v4;
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Connection: %@, notifications: %s", v7, 0x16u);
    outlined destroy of TaskPriority?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  v14 = [v4 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30MCCCategoryRulesClientProtocol_pMd, &_sSo30MCCCategoryRulesClientProtocol_pMR);
  result = swift_dynamicCast();
  if (result)
  {
    [v17 agentIsAlive];
    return swift_unknownObjectRelease();
  }

  return result;
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

Swift::Void __swiftcall CategorizationSyncManager.fetchRules()()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v42 - v1;
  v3 = type metadata accessor for DispatchQoS.QoSClass();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMd, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v42 - v9;
  v50 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v11 = *(v50 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine4JustVySSGMd, &_s7Combine4JustVySSGMR);
  v47 = *(v15 - 8);
  v48 = v15;
  v16 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v18 = &v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMR);
  v20 = *(v19 - 8);
  v21 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v49 = &v42 - v22;
  if (specialized CategorizationSyncManager.syncAllowed(callingMethod:)(0x6C75526863746566, 0xEC00000029287365))
  {
    v44 = v20;
    v45 = v19;
    v46 = v2;
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    __swift_project_value_buffer(v23, static Logger.sync);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "fetchRules called, debouncing for 5 seconds...", v26, 2u);
    }

    v43 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_fetchCancellable;
    if (*(&v51->isa + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_fetchCancellable))
    {
      v27 = *(&v51->isa + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_fetchCancellable);

      AnyCancellable.cancel()();
    }

    v52 = 0;
    v53 = 0xE000000000000000;
    Just.init(_:)();
    v28 = v14;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    (*(v11 + 56))(v10, 1, 1, v50);
    type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    (*(v4 + 104))(v7, enum case for DispatchQoS.QoSClass.default(_:), v3);
    v29 = static OS_dispatch_queue.global(qos:)();
    (*(v4 + 8))(v7, v3);
    v52 = v29;
    v30 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v31 = v46;
    (*(*(v30 - 8) + 56))(v46, 1, 1, v30);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Just<String> and conformance Just<A>, &_s7Combine4JustVySSGMd, &_s7Combine4JustVySSGMR);
    lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    v32 = v48;
    v33 = v49;
    Publisher.delay<A>(for:tolerance:scheduler:options:)();
    outlined destroy of TaskPriority?(v31, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);

    outlined destroy of TaskPriority?(v10, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMd, &_sSo17OS_dispatch_queueC8DispatchE17SchedulerTimeTypeV6StrideVSgMR);
    (*(v11 + 8))(v28, v50);
    (*(v47 + 8))(v18, v32);
    swift_allocObject();
    v34 = v51;
    swift_unknownObjectWeakInit();
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Delay<Just<String>, OS_dispatch_queue> and conformance Publishers.Delay<A, B>, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMd, &_s7Combine10PublishersO5DelayVy_AA4JustVySSGSo17OS_dispatch_queueCGMR);
    v35 = v45;
    v36 = Publisher<>.sink(receiveValue:)();

    (*(v44 + 8))(v33, v35);
    v37 = *(&v34->isa + v43);
    *(&v34->isa + v43) = v36;
  }

  else
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    __swift_project_value_buffer(v38, static Logger.sync);
    v51 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v51, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v51, v39, "fetchRules isn't allowed, skipping...", v40, 2u);
    }

    v41 = v51;
  }
}

uint64_t closure #1 in CategorizationSyncManager.fetchRules()()
{
  v0 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v2 = &v7 - v1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v4;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:), v6);
  }

  return result;
}

Swift::Void __swiftcall CategorizationSyncManager.clearAllUserOverrides(timestamp:)(Swift::Double timestamp)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  if (specialized CategorizationSyncManager.syncAllowed(callingMethod:)(0xD000000000000021, 0x8000000100038D70))
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v1;
    *(v8 + 40) = timestamp;
    v9 = v1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:), v8);
  }

  else
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.sync);
    v15 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v15, v11, "clearAllUserOverrides isn't allowed, skipping...", v12, 2u);
    }

    v13 = v15;
  }
}

uint64_t closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a1;
  *(v5 + 24) = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  *(v5 + 40) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 48) = swift_task_alloc();

  return _swift_task_switch(closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:), 0, 0);
}

uint64_t closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:)()
{
  v1 = *(v0 + 3);
  CategorizationSyncManager.initApiManagerIfNeeded()();
  v2 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  *(v0 + 7) = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    *(v0 + 8) = v3;
    *v3 = v0;
    v3[1] = closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:);
    v4 = v0[4];

    return APIManager.clearAllUserOverrides(timestamp:)(v4);
  }

  else
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.sync);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Successfully cleared all user overrides", v9, 2u);
    }

    v10 = *(v0 + 6);

    v11 = *(v0 + 1);

    return v11();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:);
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:);
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sync);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Successfully cleared all user overrides", v4, 2u);
  }

  v5 = *(v0 + 48);

  v6 = *(v0 + 8);

  return v6();
}

{
  v23 = v0;
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];

  v0[2] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v5 = type metadata accessor for MCCError();
  v6 = swift_dynamicCast();
  (*(*(v5 - 8) + 56))(v3, v6 ^ 1u, 1, v5);
  v7 = Optional.debugDescription.getter();
  v9 = v8;
  outlined destroy of TaskPriority?(v3, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.sync);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[9];
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315138;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v22);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Unable to clear all user overrides: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v18 = v0[9];
  }

  v19 = v0[6];

  v20 = v0[1];

  return v20();
}

uint64_t closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);
  v4[9] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[12] = v8;
  *v8 = v4;
  v8[1] = closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:);

  return CategorizationSyncManager.shouldSyncAll(fromPush:)(0);
}

uint64_t closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)(char a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 161) = a1;

  return _swift_task_switch(closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:), 0, 0);
}

uint64_t closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)()
{
  if (*(v0 + 161) == 1)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static Logger.sync);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Skipping fetching overrides, it is time to sync all overrides, yay!", v4, 2u);
    }

    v5 = *(v0 + 88);
    v6 = *(v0 + 64);

    static TaskPriority.background.getter();
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    *(v8 + 24) = 0;
    *(v8 + 32) = v6;
    *(v8 + 40) = 0;
    v9 = v6;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in CategorizationSyncManager.startFullSync(fromPush:), v8);

LABEL_26:
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);

    v30 = *(v0 + 8);

    return v30();
  }

  v10 = *(v0 + 64);
  CategorizationSyncManager.initApiManagerIfNeeded()();
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  *(v0 + 104) = __swift_project_value_buffer(v11, static Logger.sync);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Fetching Re-Categorization rules...", v14, 2u);
  }

  v15 = objc_opt_self();
  *(v0 + 112) = v15;
  v16 = [v15 standardUserDefaults];
  v17 = String._bridgeToObjectiveC()();
  v18 = [v16 valueForKey:v17];

  if (v18)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  *(v0 + 16) = v31;
  *(v0 + 32) = v32;
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v19 = *(v0 + 56) + 1.0;
      goto LABEL_19;
    }
  }

  else
  {
    outlined destroy of TaskPriority?(v0 + 16, &_sypSgMd, &_sypSgMR);
  }

  v19 = 0.0;
LABEL_19:
  *(v0 + 120) = v19;
  v20 = *(*(v0 + 64) + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  *(v0 + 128) = v20;
  if (!v20)
  {
    v23 = *(v0 + 104);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 120);
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v24, v25, "There are no changes since last fetch: %f, nothing to notify", v27, 0xCu);
    }

    goto LABEL_26;
  }

  v21 = swift_task_alloc();
  *(v0 + 136) = v21;
  *v21 = v0;
  v21[1] = closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:);

  return APIManager.fetchRecategorizationRules(changedSince:includeKeys:limit:includeSyncedFromDevice:)(0, 100, 2, v19);
}

{
  v1 = *(v0 + 144);

  SenderOverrides = FetchSenderOverridesAPIResponse.mappedOverrides()(v2);

  v4 = SenderOverrides >> 62;
  if (!(SenderOverrides >> 62))
  {
    if (*((SenderOverrides & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_23:
    v40 = *(v0 + 144);

    v41 = *(v0 + 104);
    v33 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v33, v42))
    {
      v43 = *(v0 + 120);
      v44 = swift_slowAlloc();
      *v44 = 134217984;
      *(v44 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v33, v42, "There are no changes since last fetch: %f, nothing to notify", v44, 0xCu);
    }

    goto LABEL_25;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = *(v0 + 152);
  v6 = *(*(*(v0 + 64) + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_deviceLockObserver) + 48);
  OS_dispatch_queue.sync<A>(execute:)();
  if (*(v0 + 160) == 1)
  {
    v7 = *(v0 + 144);
    v8 = *(v0 + 104);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unfortunately device is locked, deferring it until it is unlocked.", v11, 2u);
    }

LABEL_15:
    v32 = *(v0 + 112);

    v33 = [v32 standardUserDefaults];
    v34 = String._bridgeToObjectiveC()();
    [v33 setBool:1 forKey:v34];

LABEL_25:
    goto LABEL_26;
  }

  v12 = *(v0 + 64);
  if ((CategorizationSyncManager.notifyRuleListeners(overrides:)(SenderOverrides, 1, &selRef_overrideRulesChanged_, "Successfully sent rules sync message") & 1) == 0)
  {
    v28 = *(v0 + 144);
    v29 = *(v0 + 104);

    v9 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v9, v30, "notifyRuleListeners is failed, deferring it...", v31, 2u);
    }

    goto LABEL_15;
  }

  v13 = *(v0 + 104);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Successfully fetched overrides", v16, 2u);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 112);

  v19 = [v18 standardUserDefaults];
  v20 = String._bridgeToObjectiveC()();
  [v19 setBool:0 forKey:v20];

  v21 = *(v17 + 16);
  if (v21)
  {
    v22 = *(v0 + 112);
    v23 = *(*(v0 + 144) + 80 * v21 + 24);

    v24 = [v22 standardUserDefaults];
    v25 = String._bridgeToObjectiveC()();
    [v24 setDouble:v25 forKey:v23];

    v26 = SenderOverrides & 0xFFFFFFFFFFFFFF8;
    if (!v4)
    {
LABEL_12:
      v27 = *(v26 + 16);
      goto LABEL_18;
    }
  }

  else
  {

    v26 = SenderOverrides & 0xFFFFFFFFFFFFFF8;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  v27 = _CocoaArrayWrapper.endIndex.getter();
LABEL_18:

  if (v27 == 100)
  {
    v35 = *(v0 + 104);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "There are more overrides, fetching more...", v38, 2u);
    }

    v39 = *(v0 + 64);

    CategorizationSyncManager.fetchRules()();
  }

LABEL_26:
  v46 = *(v0 + 80);
  v45 = *(v0 + 88);

  v47 = *(v0 + 8);

  return v47();
}

{
  v24 = v0;
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[13];
  v5 = v0[9];
  v4 = v0[10];

  v0[6] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v6 = type metadata accessor for MCCError();
  v7 = swift_dynamicCast();
  (*(*(v6 - 8) + 56))(v4, v7 ^ 1u, 1, v6);
  v8 = Optional.debugDescription.getter();
  v10 = v9;
  outlined destroy of TaskPriority?(v4, &_s13MCCFoundation8MCCErrorOSgMd, &_s13MCCFoundation8MCCErrorOSgMR);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[19];
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23 = v16;
    *v15 = 136315138;
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v23);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v11, v12, "Unable to fetch Recategorization overrides: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v18 = v0[19];
  }

  v20 = v0[10];
  v19 = v0[11];

  v21 = v0[1];

  return v21();
}

uint64_t closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  v8 = *v2;
  v3[18] = a1;
  v3[19] = v1;

  if (v1)
  {
    v5 = closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:);
  }

  else
  {
    v6 = v3[16];

    v5 = closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:);
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t CategorizationSyncManager.shouldSyncAll(fromPush:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return _swift_task_switch(CategorizationSyncManager.shouldSyncAll(fromPush:), 0, 0);
}

uint64_t CategorizationSyncManager.shouldSyncAll(fromPush:)()
{
  if ((specialized CategorizationSyncManager.isFullSyncEnabled()() & 1) == 0 || (specialized CategorizationSyncManager.syncAllowed(callingMethod:)(0xD000000000000018, 0x8000000100038E80) & 1) == 0)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.sync);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_14;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Full Recategorization Sync isn't allowed. Push is off and No Syncing is allowed.";
    goto LABEL_13;
  }

  v1 = *(v0 + 40);
  if ((specialized CategorizationSyncManager.isTimeForFullSync()() & 1) == 0 && !v1)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.sync);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_14;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Full Recategorization Sync isn't allowed, as enough time hasn't passed since last sync.";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_14:

    v8 = *(v0 + 8);

    return v8(0);
  }

  v10 = *(v0 + 16);
  CategorizationSyncManager.initApiManagerIfNeeded()();
  v11 = *(v10 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  *(v0 + 24) = v11;
  if (!v11)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.sync);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_14;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Full Recategorization Sync isn't allowed, server didn't allow";
    goto LABEL_13;
  }

  v12 = swift_task_alloc();
  *(v0 + 32) = v12;
  *v12 = v0;
  v12[1] = CategorizationSyncManager.shouldSyncAll(fromPush:);

  return APIManager.shouldStartFullSync()();
}

{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  v5 = *(v2 + 24);
  if (v0)
  {

    return _swift_task_switch(CategorizationSyncManager.shouldSyncAll(fromPush:), 0, 0);
  }

  else
  {

    v6 = *(v4 + 8);

    return v6(1);
  }
}

{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sync);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Full Recategorization Sync isn't allowed, server didn't allow", v4, 2u);
  }

  v5 = *(v0 + 8);

  return v5(0);
}

void CategorizationSyncManager.monitorNetworkChanges()()
{
  v1 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v23 = *(v1 - 8);
  v24 = v1;
  v2 = *(v23 + 64);
  __chkstk_darwin(v1);
  v22 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v21[1] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v9 = type metadata accessor for NWInterface.InterfaceType();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  (*(v12 + 104))(v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for NWInterface.InterfaceType.wifi(_:));
  v13 = type metadata accessor for NWPathMonitor();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = NWPathMonitor.init(requiredInterfaceType:)();
  v17 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkMonitor;
  v18 = *(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkMonitor);
  *(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkMonitor) = v16;

  swift_allocObject();
  swift_unknownObjectWeakInit();

  outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWPath) -> ())?(partial apply for closure #1 in CategorizationSyncManager.monitorNetworkChanges());
  NWPathMonitor.pathUpdateHandler.setter();

  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v23 + 104))(v22, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v24);
  v19 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  if (*(v0 + v17))
  {
    v20 = *(v0 + v17);

    NWPathMonitor.start(queue:)();
  }
}

uint64_t closure #1 in CategorizationSyncManager.monitorNetworkChanges()()
{
  v0 = type metadata accessor for NWPath.Status();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v24 - v6;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    type metadata accessor for OSTransactionHelper();
    swift_initStaticObject();
    v10 = OSTransactionHelper.makeTransaction()();
    v11 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkTransaction;
    v12 = *&v9[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkTransaction];
    *&v9[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_networkTransaction] = v10;
    swift_unknownObjectRelease();
    NWPath.status.getter();
    (*(v1 + 104))(v5, enum case for NWPath.Status.satisfied(_:), v0);
    v13 = static NWPath.Status.== infix(_:_:)();
    v14 = *(v1 + 8);
    v14(v5, v0);
    v14(v7, v0);
    if (v13)
    {
      if (one-time initialization token for sync != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.sync);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Network status changed, syncing pending rules", v18, 2u);
      }

      CategorizationSyncManager.syncPendingRules()();
    }

    else
    {
      if (one-time initialization token for sync != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.sync);
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Network is not reachable", v22, 2u);
      }
    }

    v23 = *&v9[v11];
    *&v9[v11] = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t closure #1 in CategorizationSyncManager.newTimer()()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    type metadata accessor for OSTransactionHelper();
    swift_initStaticObject();
    v2 = OSTransactionHelper.makeTransaction()();
    v3 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timerTransaction;
    v4 = *&v1[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timerTransaction];
    *&v1[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timerTransaction] = v2;
    swift_unknownObjectRelease();
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.sync);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Timer tickled...", v8, 2u);
    }

    CategorizationSyncManager.fetchRules()();
    CategorizationSyncManager.syncPendingRules()();
    CategorizationSyncManager.resetTimerIfNeeded()();
    v9 = *&v1[v3];
    *&v1[v3] = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

void CategorizationSyncManager.resetTimerIfNeeded()()
{
  v1 = specialized CategorizationSyncManager.getFrequency(for:)(0xD000000000000024, 0x8000000100038D00);
  if ((v2 & 1) == 0 && *(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_minuteInterval) != v1)
  {
    *(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_minuteInterval) = v1;
    v3 = v1;
    v4 = objc_opt_self();
    if ((v3 * 60) >> 64 == (60 * v3) >> 63)
    {
      v5 = v4;
      v6 = (60 * v3);
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v11[4] = partial apply for closure #1 in CategorizationSyncManager.newTimer();
      v11[5] = v7;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 1107296256;
      v11[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
      v11[3] = &block_descriptor_1;
      v8 = _Block_copy(v11);

      v9 = [v5 scheduledTimerWithTimeInterval:1 repeats:v8 block:v6];
      _Block_release(v8);
      v10 = *(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timer);
      *(v0 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_timer) = v9;
    }

    else
    {
      __break(1u);
    }
  }
}

id CategorizationSyncManager.syncPendingRules()()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_lock);
  [v7 lock];
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 doubleForKey:v10];
  v12 = v11;

  Date.init()();
  Date.timeIntervalSince1970.getter();
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  if (v14 - v12 <= 3600.0)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.sync);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Deferring sync until next hour", v21, 2u);
    }
  }

  else
  {
    v15 = [v8 standardUserDefaults];
    v16 = String._bridgeToObjectiveC()();
    [v15 setDouble:v16 forKey:v14];

    CategorizationSyncManager.initApiManagerIfNeeded()();
    if (*(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager))
    {
      v17 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);

      APIManager.retryPendingRequests()();
    }
  }

  return [v7 unlock];
}

id CategorizationSyncManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategorizationSyncManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t getEnumTagSinglePayload for CategorizationSyncManager.ClientConnection(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CategorizationSyncManager.ClientConnection(uint64_t result, int a2, int a3)
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

void closure #3 in CategorizationSyncManager.syncNewOldCategoryTimestamps(_:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CategorizationSyncManager.throttledNewOldSyncToServer()();
  }
}

id CategorizationSyncManager.throttledNewOldSyncToServer()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v27 - v4;
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.sync);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "5 seconds delay is complete, sending them to server", v9, 2u);
  }

  v10 = *&v0[OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldLock];
  [v10 lock];
  v11 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_newOldValueToSend;
  swift_beginAccess();
  v12 = *&v0[v11];
  if (v12)
  {
    *&v0[v11] = 0;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v27 = v16;
      *v15 = 136315138;
      type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
      v17 = Dictionary.description.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v27);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Final set of category timestamps: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    static TaskPriority.background.getter();
    v20 = type metadata accessor for TaskPriority();
    (*(*(v20 - 8) + 56))(v5, 0, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v1;
    v21[5] = v12;
    v22 = v1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &async function pointer to partial apply for closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer(), v21);
  }

  else
  {
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "No pending New Old values to sync to server, this should not have happened", v25, 2u);
    }
  }

  return [v10 unlock];
}

uint64_t closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return _swift_task_switch(closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer(), 0, 0);
}

uint64_t closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer()()
{
  v1 = v0[2];
  CategorizationSyncManager.initApiManagerIfNeeded()();
  v2 = *(v1 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  v0[4] = v2;
  if (v2)
  {

    v3 = swift_task_alloc();
    v0[5] = v3;
    *v3 = v0;
    v3[1] = closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer();
    v4 = v0[3];

    return APIManager.syncNewOldCategoryTimestamps(categories:)(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return _swift_task_switch(closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer(), 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[4];

  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v2 = v0[6];
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.sync);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[6];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to sync new old category timestamps: %@", v8, 0xCu);
    outlined destroy of TaskPriority?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

unint64_t specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSdGMd, &_ss18_DictionaryStorageCySSSdGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5)) | (v12 << 6);
        v14 = (*(a1 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        outlined init with copy of Any(*(a1 + 56) + 32 * v13, v26);
        *&v25 = v15;
        *(&v25 + 1) = v16;
        v23[2] = v25;
        v24[0] = v26[0];
        v24[1] = v26[1];
        v17 = v25;
        outlined init with take of Any(v24, v23);

        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v17, *(&v17 + 1));
        if (v18)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v17;
          v11 = result;

          *(v2[7] + 8 * v11) = v22;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v17;
          *(v2[7] + 8 * result) = v22;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_24;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t closure #1 in CategorizationSyncManager.startFullSync(fromPush:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 106) = a5;
  *(v5 + 16) = a4;
  v7 = type metadata accessor for Date();
  *(v5 + 24) = v7;
  v8 = *(v7 - 8);
  *(v5 + 32) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 40) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v5 + 48) = v10;
  *v10 = v5;
  v10[1] = closure #1 in CategorizationSyncManager.startFullSync(fromPush:);

  return CategorizationSyncManager.shouldSyncAll(fromPush:)(a5);
}

uint64_t closure #1 in CategorizationSyncManager.startFullSync(fromPush:)(char a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 107) = a1;

  return _swift_task_switch(closure #1 in CategorizationSyncManager.startFullSync(fromPush:), 0, 0);
}

uint64_t closure #1 in CategorizationSyncManager.startFullSync(fromPush:)()
{
  if (*(v0 + 107) != 1)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.sync);
    v13 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v13, v16, "Full Recategorization Sync isn't allowed", v17, 2u);
    }

    goto LABEL_15;
  }

  v1 = *(v0 + 16);
  CategorizationSyncManager.initApiManagerIfNeeded()();
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  *(v0 + 56) = __swift_project_value_buffer(v2, static Logger.sync);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetching All Category Overrides...", v5, 2u);
  }

  v6 = *(v0 + 16);

  v7 = *(v6 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_deviceLockObserver);
  *(v0 + 64) = v7;
  v8 = *(v7 + 48);
  OS_dispatch_queue.sync<A>(execute:)();
  if (*(v0 + 104) == 1)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unfortunately device is locked, deferring it until it is unlocked.", v11, 2u);
    }

    v12 = *(v0 + 106);

    if (v12 != 1)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v21 = *(*(v0 + 16) + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_apiManager);
  *(v0 + 72) = v21;
  if (!v21)
  {
    v23 = *(*(v0 + 64) + 48);
    OS_dispatch_queue.sync<A>(execute:)();
    v24 = *(v0 + 56);
    if (*(v0 + 105) == 1)
    {

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Unfortunately device is locked, deferring it until it is unlocked.", v27, 2u);
      }

      v28 = *(v0 + 106);

      if (v28 != 1)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 134217984;
        if (_swiftEmptyArrayStorage >> 62)
        {
          v44 = v31;
          v32 = _CocoaArrayWrapper.endIndex.getter();
          v31 = v44;
        }

        else
        {
          v32 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v31 + 4) = v32;
        v33 = v31;

        _os_log_impl(&_mh_execute_header, v29, v30, "Successfully fetched Sync All overrides, count: %ld", v33, 0xCu);
      }

      else
      {
      }

      v34 = *(v0 + 16);
      LOBYTE(v34) = CategorizationSyncManager.notifyRuleListeners(overrides:)(_swiftEmptyArrayStorage, 4, &selRef_syncAllCategoryOverrides_, "Successfully sent sync all message");

      if (v34)
      {
        v36 = *(v0 + 32);
        v35 = *(v0 + 40);
        v37 = *(v0 + 24);
        v38 = objc_opt_self();
        v39 = [v38 standardUserDefaults];
        v40 = String._bridgeToObjectiveC()();
        [v39 setBool:0 forKey:v40];

        v41 = [v38 standardUserDefaults];
        Date.init()();
        Date.timeIntervalSince1970.getter();
        v43 = v42;
        (*(v36 + 8))(v35, v37);
        v13 = String._bridgeToObjectiveC()();
        [v41 setDouble:v13 forKey:v43];

        goto LABEL_15;
      }

      if (*(v0 + 106) != 1)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = String._bridgeToObjectiveC()();
    [v13 setBool:1 forKey:v14];

LABEL_15:
LABEL_16:
    v18 = *(v0 + 40);

    v19 = *(v0 + 8);

    return v19();
  }

  v22 = swift_task_alloc();
  *(v0 + 80) = v22;
  *v22 = v0;
  v22[1] = closure #1 in CategorizationSyncManager.startFullSync(fromPush:);

  return APIManager.fetchRecategorizationRules(changedSince:includeKeys:limit:includeSyncedFromDevice:)(1, 0, 1, 0.0);
}

{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(*(v0 + 64) + 48);
  OS_dispatch_queue.sync<A>(execute:)();
  if (*(v0 + 105) != 1)
  {
    if (v2)
    {
      SenderOverrides = FetchSenderOverridesAPIResponse.mappedOverrides()(v2);
    }

    else
    {
      SenderOverrides = _swiftEmptyArrayStorage;
    }

    v10 = *(v0 + 56);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      if (SenderOverrides >> 62)
      {
        v14 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v14 = *((SenderOverrides & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v13 + 4) = v14;

      _os_log_impl(&_mh_execute_header, v11, v12, "Successfully fetched Sync All overrides, count: %ld", v13, 0xCu);
    }

    else
    {
    }

    v15 = *(v0 + 16);
    LOBYTE(v15) = CategorizationSyncManager.notifyRuleListeners(overrides:)(SenderOverrides, 4, &selRef_syncAllCategoryOverrides_, "Successfully sent sync all message");

    if (v15)
    {
      v17 = *(v0 + 32);
      v16 = *(v0 + 40);
      v18 = *(v0 + 24);
      v19 = objc_opt_self();
      v20 = [v19 standardUserDefaults];
      v21 = String._bridgeToObjectiveC()();
      [v20 setBool:0 forKey:v21];

      v22 = [v19 standardUserDefaults];
      Date.init()();
      Date.timeIntervalSince1970.getter();
      v24 = v23;
      (*(v17 + 8))(v16, v18);
      v25 = String._bridgeToObjectiveC()();
      [v22 setDouble:v25 forKey:v24];
LABEL_18:

      goto LABEL_19;
    }

    if (*(v0 + 106) != 1)
    {
      goto LABEL_19;
    }

LABEL_17:
    v25 = [objc_opt_self() standardUserDefaults];
    v22 = String._bridgeToObjectiveC()();
    [v25 setBool:1 forKey:v22];
    goto LABEL_18;
  }

  v4 = *(v0 + 56);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Unfortunately device is locked, deferring it until it is unlocked.", v7, 2u);
  }

  v8 = *(v0 + 106);

  if (v8 == 1)
  {
    goto LABEL_17;
  }

LABEL_19:
  v26 = *(v0 + 40);

  v27 = *(v0 + 8);

  return v27();
}

{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[7];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Unable to Sync All Overrides: %@", v8, 0xCu);
    outlined destroy of TaskPriority?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }

  v11 = v0[5];

  v12 = v0[1];

  return v12();
}

uint64_t closure #1 in CategorizationSyncManager.startFullSync(fromPush:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = closure #1 in CategorizationSyncManager.startFullSync(fromPush:);
  }

  else
  {
    v8 = *(v4 + 72);

    *(v4 + 96) = a1;
    v7 = closure #1 in CategorizationSyncManager.startFullSync(fromPush:);
  }

  return _swift_task_switch(v7, 0, 0);
}

void closure #1 in CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:)(void *a1)
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sync);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Callback connection %@ interrupted", v5, 0xCu);
    outlined destroy of TaskPriority?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }
}

void closure #2 in CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:)(void *a1)
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sync);
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v4, v5, "Callback connection %@ invalidated", v6, 0xCu);
    outlined destroy of TaskPriority?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v10 = &unk_100046000;
  if (Strong)
  {
    v11 = Strong;
    v12 = *(Strong + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock);

    [v12 lock];
  }

  swift_beginAccess();
  v13 = swift_unknownObjectWeakLoadStrong();
  if (v13)
  {
    v14 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_clientConnections;
    v15 = v13;
    swift_beginAccess();
    v16 = *&v15[v14];

    v17 = *(v16 + 16);
    if (v17)
    {
      v43 = _swiftEmptyArrayStorage;
      specialized ContiguousArray.reserveCapacity(_:)();
      v18 = 32;
      do
      {
        v19 = *(v16 + v18);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v20 = v43[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v18 += 16;
        --v17;
      }

      while (v17);

      v21 = v43;
      v10 = &unk_100046000;
    }

    else
    {

      v21 = _swiftEmptyArrayStorage;
    }

    v22 = specialized Collection<>.firstIndex(of:)(v3, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      swift_beginAccess();
      v25 = swift_unknownObjectWeakLoadStrong();
      if (v25)
      {
        v26 = v25;
        swift_beginAccess();
        v27 = specialized Array.remove(at:)(v22);
        swift_endAccess();
      }
    }
  }

  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v43 = v31;
    *v30 = 136315138;
    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    if (v32)
    {
      v33 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_clientConnections;
      v34 = v32;
      swift_beginAccess();
      v35 = *&v34[v33];
    }

    v36 = Array.description.getter();
    v38 = v37;

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v43);

    *(v30 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v28, v29, "Final list of connections: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  swift_beginAccess();
  v40 = swift_unknownObjectWeakLoadStrong();
  if (v40)
  {
    v41 = v40;
    v42 = *(v40 + v10[397]);

    [v42 unlock];
  }
}

unint64_t specialized Collection<>.firstIndex(of:)(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSXPCConnection, NSXPCConnection_ptr);
    v8 = static NSObject.== infix(_:_:)();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t CategorizationSyncManager.eligibleListeners(of:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_clientConnections;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  v7 = 0;
LABEL_2:
  v8 = (v4 + 40 + 16 * v7);
  while (v5 != v7)
  {
    if (v7 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    ++v7;
    v9 = v8 + 2;
    v10 = *v8;
    v8 += 2;
    if ((a1 & ~v10) == 0)
    {
      v11 = *(v9 - 3);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, _swiftEmptyArrayStorage[2] + 1, 1);
      }

      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      v14[4] = v11;
      v14[5] = v10;
      goto LABEL_2;
    }
  }

  v15 = _swiftEmptyArrayStorage[2];
  if (v15)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v16 = 4;
    do
    {
      v17 = _swiftEmptyArrayStorage[v16];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v18 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v16 += 2;
      --v15;
    }

    while (v15);
  }

  return _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall CategorizationSyncManager.didReceiveNewPayload(payload:topic:)(Swift::OpaquePointer payload, Swift::String topic)
{
  v3 = v2;
  object = topic._object;
  countAndFlagsBits = topic._countAndFlagsBits;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64);
  v8 = (__chkstk_darwin)();
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v67 - v11;
  if (one-time initialization token for sync != -1)
  {
LABEL_50:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  v14 = __swift_project_value_buffer(v13, static Logger.sync);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  v17 = os_log_type_enabled(v15, v16);
  *&v71 = payload;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v72 = countAndFlagsBits;
    v79[0] = v19;
    *v18 = 136315394;
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, object, v79);
    *(v18 + 12) = 2080;
    v70 = v3;
    v20 = Dictionary.description.getter();
    v22 = v14;
    v23 = v12;
    v24 = v10;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, v79);

    *(v18 + 14) = v25;
    v10 = v24;
    v12 = v23;
    v14 = v22;
    _os_log_impl(&_mh_execute_header, v15, v16, "Did Receive push message: %s, %s", v18, 0x16u);
    v3 = v70;
    swift_arrayDestroy();
    countAndFlagsBits = v72;
  }

  v26._countAndFlagsBits = countAndFlagsBits;
  v26._object = object;
  if (_findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CategorizationSyncManager.didReceiveNewPayload(payload:topic:), v26))
  {
    return;
  }

  v77._rawValue = 0x73746E657665;
  v78 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  v27 = v71;
  if (!*(v71 + 16) || (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v79), (v29 & 1) == 0))
  {
    outlined destroy of AnyHashable(v79);
    goto LABEL_44;
  }

  outlined init with copy of Any(*(v27 + 56) + 32 * v28, v80);
  outlined destroy of AnyHashable(v79);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDys11AnyHashableVypGGMd, &_sSaySDys11AnyHashableVypGGMR);
  payload._rawValue = &type metadata for Any;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_44:
    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&_mh_execute_header, v64, v65, "[MCCSecretAgentService] ignoring received push", v66, 2u);
    }

    return;
  }

  v72 = v14;
  rawValue = v77._rawValue;
  object = *(v77._rawValue + 2);
  if (object)
  {
    v32 = 0;
    countAndFlagsBits = 1701869940;
    *&v30 = 136315138;
    v71 = v30;
    do
    {
      if (v32 >= rawValue[2])
      {
        __break(1u);
        goto LABEL_50;
      }

      v33 = rawValue[v32 + 4];
      v77._rawValue = 1701869940;
      v78 = 0xE400000000000000;

      AnyHashable.init<A>(_:)();
      if (*(v33 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v79), (v35 & 1) != 0))
      {
        outlined init with copy of Any(*(v33 + 56) + 32 * v34, v80);
        outlined destroy of AnyHashable(v79);
        if (swift_dynamicCast())
        {
          v36._countAndFlagsBits = v77._rawValue;
          v36._object = v78;
          v37 = _findStringSwitchCase(cases:string:)(&outlined read-only object #1 of CategorizationSyncManager.didReceiveNewPayload(payload:topic:), v36);

          if (v37)
          {
            if (v37 != 1)
            {

              if (v37 == 2)
              {
                static TaskPriority.background.getter();
                v40 = type metadata accessor for TaskPriority();
                v41 = *(v40 - 8);
                (*(v41 + 56))(v12, 0, 1, v40);
                v42 = swift_allocObject();
                *(v42 + 16) = 0;
                *(v42 + 24) = 0;
                *(v42 + 32) = v3;
                *(v42 + 40) = 1;
                outlined init with copy of TaskPriority?(v12, v10);
                v43 = (*(v41 + 48))(v10, 1, v40);
                v44 = v3;

                if (v43 == 1)
                {
                  outlined destroy of TaskPriority?(v10, &_sScPSgMd, &_sScPSgMR);
                  v45 = 7168;
                }

                else
                {
                  v57 = TaskPriority.rawValue.getter();
                  (*(v41 + 8))(v10, v40);
                  v45 = v57 | 0x1C00;
                }

                v70 = v45;
                v59 = *(v42 + 16);
                v58 = *(v42 + 24);
                swift_unknownObjectRetain();

                if (v59)
                {
                  swift_getObjectType();
                  v60 = dispatch thunk of Actor.unownedExecutor.getter();
                  v62 = v61;
                  swift_unknownObjectRelease();
                }

                else
                {
                  v60 = 0;
                  v62 = 0;
                }

                outlined destroy of TaskPriority?(v12, &_sScPSgMd, &_sScPSgMR);
                v63 = swift_allocObject();
                *(v63 + 16) = &closure #1 in CategorizationSyncManager.startFullSync(fromPush:)partial apply;
                *(v63 + 24) = v42;
                if (v62 | v60)
                {
                  v73 = 0;
                  v74 = 0;
                  v75 = v60;
                  v76 = v62;
                }

                payload._rawValue = &type metadata for Any;
                countAndFlagsBits = 1701869940;
                swift_task_create();

                goto LABEL_11;
              }

              v54 = Logger.logObject.getter();
              v55 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v54, v55))
              {
                v56 = swift_slowAlloc();
                *v56 = 0;
                _os_log_impl(&_mh_execute_header, v54, v55, "Received an unknown event type", v56, 2u);
                payload._rawValue = &type metadata for Any;
              }

              goto LABEL_35;
            }

            v77._rawValue = 0x6574617473;
            v78 = 0xE500000000000000;
            AnyHashable.init<A>(_:)();
            if (*(v33 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v79), (v39 & 1) != 0))
            {
              outlined init with copy of Any(*(v33 + 56) + 32 * v38, v80);
              outlined destroy of AnyHashable(v79);
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSdGMd, &_sSDySSSdGMR);
              if (swift_dynamicCast())
              {

                CategorizationSyncManager.handleNewOldPush(state:)(v77);

LABEL_35:
                countAndFlagsBits = 1701869940;
                goto LABEL_11;
              }
            }

            else
            {
              outlined destroy of AnyHashable(v79);
            }

            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v68 = swift_slowAlloc();
              v79[0] = v68;
              *v48 = v71;
              v49 = Dictionary.description.getter();
              v69 = v12;
              v70 = v10;
              v50 = v49;
              v52 = v51;

              v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, v79);
              v12 = v69;

              *(v48 + 4) = v53;
              v10 = v70;
              _os_log_impl(&_mh_execute_header, v46, v47, "Ignoring newold push, payload is invalid: %s", v48, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v68);

              payload._rawValue = &type metadata for Any;
            }

            else
            {
            }

            goto LABEL_35;
          }

          CategorizationSyncManager.fetchRules()();
          goto LABEL_35;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v79);
      }

LABEL_11:
      ++v32;
    }

    while (object != v32);
  }
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySDySSypGGMd, &_ss23_ContiguousArrayStorageCySDySSypGGMR, &_sSDySSypGMd, &_sSDySSypGMR);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySay15icloudmailagent13GroupedSenderVGGMd, &_ss23_ContiguousArrayStorageCySay15icloudmailagent13GroupedSenderVGGMR, &_sSay15icloudmailagent13GroupedSenderVGMd, &_sSay15icloudmailagent13GroupedSenderVGMR);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15icloudmailagent25CategorizationSyncManagerC16ClientConnection33_D3B0FCFF93C920EE1A43E2A9ED08676CLLVGMd, &_ss23_ContiguousArrayStorageCy15icloudmailagent25CategorizationSyncManagerC16ClientConnection33_D3B0FCFF93C920EE1A43E2A9ED08676CLLVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n087_s15icloudmailagent25CategorizationSyncManagerC28syncNewOldCategoryTimestampsyySDySSSo8I28CGFSbSS3key_AF5valuet_tXEfU_Tf1nnc_n(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeDictionary.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = String.lowercased()();
    if (v17._countAndFlagsBits == 0x746C7561666564 && v17._object == 0xE700000000000000)
    {
    }

    else
    {
      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        *(v22 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
        }
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v22, a2, v23, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSo8NSNumberCG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab13VKXEfU_SS_So8I4CTG5AJxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSAIIsgnndzo_Tf1nc_n087_s15icloudmailagent25CategorizationSyncManagerC28syncNewOldCategoryTimestampsyySDySSSo8I28CGFSbSS3key_AF5valuet_tXEfU_Tf1nnc_n(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();

    v34 = v21;
    String.hash(into:)();
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v9 + 48) + 16 * v26);
    *v31 = v19;
    v31[1] = v20;
    *(*(v9 + 56) + 8 * v26) = v34;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v33;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t specialized CategorizationSyncManager.syncAllowed(callingMethod:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.sync);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v24);
    _os_log_impl(&_mh_execute_header, v5, v6, "Determining if syncing is allowed, requested by: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v10 = result;
    v11 = [result aa_primaryAppleAccount];

    if (!v11)
    {
      v11 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v11, v17, "Unable to get Apple Account", v18, 2u);
      }

      goto LABEL_17;
    }

    v12 = ACAccountDataclassMail;
    if (![v11 isProvisionedForDataclass:ACAccountDataclassMail])
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Device isn't provisioned for Mail";
        goto LABEL_15;
      }

LABEL_16:

LABEL_17:
      return 0;
    }

    if (([v11 aa_needsEmailConfiguration]& 1) != 0)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        v16 = "Device has no iCloud Mail set up";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

        goto LABEL_16;
      }

      goto LABEL_16;
    }

    if (([v11 isEnabledForDataclass:v12]& 1) == 0)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_16;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Device has Mail disabled";
      goto LABEL_15;
    }

    v19 = [v11 propertiesForDataclass:v12];
    if (!v19)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v13, v14))
      {
        goto LABEL_16;
      }

      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = "Unable to get account properties";
      goto LABEL_15;
    }

    v20 = v19;
    v21 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v21 + 16) && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v23 & 1) != 0))
    {
      outlined init with copy of Any(*(v21 + 56) + 32 * v22, v25);
      outlined destroy of AnyHashable(v24);

      if (swift_dynamicCast())
      {

        return 19;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v24);
    }

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_16;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Mail Account bag value missing: CategorySyncEnabled";
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs11AnyHashableV_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd, &_ss11_SetStorageCys11AnyHashableVGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      outlined init with copy of AnyHashable(v6 + 40 * v4, v19);
      result = AnyHashable._rawHashValue(seed:)(*(v3 + 40));
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        outlined init with copy of AnyHashable(*(v3 + 48) + 40 * i, v18);
        v11 = static AnyHashable.== infix(_:_:)();
        result = outlined destroy of AnyHashable(v18);
        if (v11)
        {
          outlined destroy of AnyHashable(v19);
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      v12 = *(v3 + 48) + 40 * i;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 32) = v20;
      *v12 = v13;
      *(v12 + 16) = v14;
      v15 = *(v3 + 16);
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (!v16)
      {
        *(v3 + 16) = v17;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void specialized CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = [objc_allocWithZone(NSXPCConnection) initWithListenerEndpoint:a1];
  if (one-time initialization token for sync != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.sync);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v42 = a3;
  v40 = a2;
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    aBlock = v11;
    *v10 = 136315138;
    v49 = a2;
    type metadata accessor for MCCRulesListenerNotificationType();
    v12 = String.init<A>(describing:)();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &aBlock);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "RegisterCategoryRulesCallbackListener for notifications: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  v15 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL___MCCCategoryRulesClientProtocol];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableVGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100035B60;
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  lazy protocol witness table accessor for type NSObject and conformance NSObject(&lazy protocol witness table cache variable for type NSObject and conformance NSObject, &lazy cache variable for type metadata for NSObject, NSObject_ptr);
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs11AnyHashableV_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v15 setClasses:isa forSelector:"overrideRulesChanged:" argumentIndex:0 ofReply:0];

  v18 = swift_initStackObject();
  *(v18 + 16) = xmmword_1000356A0;
  objc_opt_self();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs11AnyHashableV_Tt0g5Tf4g_n(v18);
  swift_setDeallocating();
  swift_arrayDestroy();
  v19 = Set._bridgeToObjectiveC()().super.isa;

  [v15 setClasses:v19 forSelector:"newOldCategoryTimestampsChanged:" argumentIndex:0 ofReply:0];

  v20 = v15;
  v21 = swift_initStackObject();
  *(v21 + 16) = xmmword_100035B60;
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  objc_opt_self();
  aBlock = swift_dynamicCastObjCClassUnconditional();
  AnyHashable.init<A>(_:)();
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCs11AnyHashableV_Tt0g5Tf4g_n(v21);
  swift_setDeallocating();
  swift_arrayDestroy();
  v22 = Set._bridgeToObjectiveC()().super.isa;

  [v15 setClasses:v22 forSelector:"syncAllCategoryOverrides:" argumentIndex:0 ofReply:0];

  [v6 setRemoteObjectInterface:v15];
  [v6 resume];
  v23 = [v6 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo30MCCCategoryRulesClientProtocol_pMd, &_sSo30MCCCategoryRulesClientProtocol_pMR);
  v24 = swift_dynamicCast();
  if (v24)
  {
    swift_unknownObjectRelease();
    v25 = *(v42 + OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_connectionsLock);
    [v25 lock];
    v26 = OBJC_IVAR____TtC15icloudmailagent25CategorizationSyncManager_clientConnections;
    swift_beginAccess();
    v27 = *(v42 + v26);
    v28 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + v26) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v27 + 2) + 1, 1, v27);
      *(v42 + v26) = v27;
    }

    v31 = *(v27 + 2);
    v30 = *(v27 + 3);
    if (v31 >= v30 >> 1)
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v27);
    }

    *(v27 + 2) = v31 + 1;
    v32 = &v27[16 * v31];
    *(v32 + 4) = v28;
    *(v32 + 5) = v40;
    *(v42 + v26) = v27;
    swift_endAccess();
    v33 = swift_allocObject();
    *(v33 + 16) = v28;
    v47 = partial apply for closure #1 in CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:);
    v48 = v33;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v46 = &block_descriptor_93;
    v34 = _Block_copy(&aBlock);
    v35 = v28;

    [v35 setInterruptionHandler:v34];
    _Block_release(v34);
    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    *(v37 + 24) = v36;
    v47 = partial apply for closure #2 in CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:);
    v48 = v37;
    aBlock = _NSConcreteStackBlock;
    v44 = 1107296256;
    v45 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v46 = &block_descriptor_100;
    v38 = _Block_copy(&aBlock);
    v39 = v35;

    [v39 setInvalidationHandler:v38];
    _Block_release(v38);
    [v25 unlock];
  }

  (*(a4 + 16))(a4, v24, 0);
  CategorizationSyncManager.retryAnyPendingPushes()();
}

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v50 = a5;
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
  v41 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v42 = v6;
  while (v9)
  {
    v45 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v49[0] = *v17;
    v49[1] = v18;
    v49[2] = v19;

    v20 = v19;
    a2(&v46, v49);

    v21 = v46;
    v22 = v47;
    v23 = v48;
    v24 = *v50;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(v46, v47);
    v27 = *(v24 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (*(v24 + 24) >= v29)
    {
      if ((v45 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      v31 = v50;
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, v45 & 1);
      v32 = *v31;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
      if ((v30 & 1) != (v34 & 1))
      {
        goto LABEL_27;
      }

      v26 = v33;
    }

    v9 &= v9 - 1;
    v35 = *v50;
    if (v30)
    {

      v12 = v35[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v35[(v26 >> 6) + 8] |= 1 << v26;
      v36 = (v35[6] + 16 * v26);
      *v36 = v21;
      v36[1] = v22;
      *(v35[7] + 8 * v26) = v23;
      v37 = v35[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_26;
      }

      v35[2] = v39;
    }

    a4 = 1;
    v11 = v14;
    v6 = v42;
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
      outlined consume of [String : GroupedOverride].Iterator._Variant();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v45 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

id specialized CategorizationSyncManager.getAppleAccount()()
{
  v0 = [objc_opt_self() defaultStore];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000356B0;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = 0;
  v5 = [v1 accountsWithAccountTypeIdentifiers:isa error:&v25];

  v6 = v25;
  if (!v5)
  {
    v12 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for sync == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for ACAccount, ACAccount_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v6;

  if (v7 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }

LABEL_14:

    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.sync);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Missing AppleAccount", v24, 2u);
    }

    return 0;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = *(v7 + 32);
LABEL_8:
    v10 = v9;

    return v10;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_10:
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.sync);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = 136315138;
    swift_getErrorValue();
    v18 = Error.localizedDescription.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v25);

    *(v16 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v14, v15, "Unable to get AppleAccount: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
  }

  return 0;
}

uint64_t specialized CategorizationSyncManager.getFrequency(for:)(uint64_t a1, unint64_t a2)
{
  v4 = specialized CategorizationSyncManager.getAppleAccount()();
  if (!v4)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.sync);
    v5 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000024, 0x8000000100038D00, v24);
      _os_log_impl(&_mh_execute_header, v5, v13, "Unable to get Apple Account for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
    }

    goto LABEL_22;
  }

  v5 = v4;
  v6 = [v4 propertiesForDataclass:ACAccountDataclassMail];
  if (v6)
  {
    v7 = v6;
    v8 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v24), (v10 & 1) != 0))
    {
      outlined init with copy of Any(*(v8 + 56) + 32 * v9, v25);
      outlined destroy of AnyHashable(v24);

      if (swift_dynamicCast())
      {

        return a1;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v24);
    }

    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.sync);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_21;
    }

    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v24);
    _os_log_impl(&_mh_execute_header, v17, v18, "Mail Account bag value missing: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.sync);
    v17 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v17, v22))
    {
      goto LABEL_21;
    }

    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v17, v22, "Unable to get account properties", v23, 2u);
  }

LABEL_21:

LABEL_22:
  return 0;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWPath) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

uint64_t partial apply for closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:)(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in CategorizationSyncManager.clearAllUserOverrides(timestamp:)(v7, a1, v4, v5, v6);
}

uint64_t lazy protocol witness table accessor for type NSObject and conformance NSObject(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RCOverrideRule(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in CategorizationSyncManager.fetchRecatOverrides(callingMethod:)(a1, v4, v5, v6);
}

uint64_t partial apply for closure #1 in CategorizationSyncManager.startFullSync(fromPush:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in CategorizationSyncManager.startFullSync(fromPush:)(a1, v4, v5, v6, v7);
}

uint64_t specialized CategorizationSyncManager.isFullSyncEnabled()()
{
  v0 = specialized CategorizationSyncManager.getAppleAccount()();
  if (!v0)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.sync);
    v1 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001FLL, 0x8000000100038EC0, v18);
      _os_log_impl(&_mh_execute_header, v1, v9, "Unable to get Apple Account for %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    goto LABEL_22;
  }

  v1 = v0;
  v2 = [v0 propertiesForDataclass:ACAccountDataclassMail];
  if (v2)
  {
    v3 = v2;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    AnyHashable.init<A>(_:)();
    if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v4 + 56) + 32 * v5, v19);
      outlined destroy of AnyHashable(v18);

      if (swift_dynamicCast())
      {

        return 31;
      }
    }

    else
    {

      outlined destroy of AnyHashable(v18);
    }

    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logger.sync);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Mail Account bag value missing: FullCategoryOverrideSyncEnabled";
  }

  else
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.sync);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_21;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Unable to get account properties";
  }

  _os_log_impl(&_mh_execute_header, v13, v14, v16, v15, 2u);

LABEL_21:

LABEL_22:
  return 0;
}

uint64_t specialized CategorizationSyncManager.isTimeForFullSync()()
{
  v0 = type metadata accessor for Date();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v31 - v6;
  v8 = objc_opt_self();
  v9 = [v8 standardUserDefaults];
  v10 = String._bridgeToObjectiveC()();
  [v9 doubleForKey:v10];
  v12 = v11;

  if (v12 == 0.0)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.sync);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Skipping first full sync as it is too early (doesn't apply for push trigger", v16, 2u);
    }

    v17 = [v8 standardUserDefaults];
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v19 = v18;
    (*(v1 + 8))(v7, v0);
    v20 = String._bridgeToObjectiveC()();
    [v17 setDouble:v20 forKey:v19];

    return 0;
  }

  Date.init(timeIntervalSince1970:)();
  v21 = specialized CategorizationSyncManager.getFrequency(for:)(0xD000000000000014, 0x8000000100038EA0);
  if (v22)
  {
    v23 = 14;
  }

  else
  {
    v23 = v21;
  }

  Date.timeIntervalSinceNow.getter();
  v25 = fabs(v24);
  if (v23 * 86400.0 > v25)
  {
    if (one-time initialization token for sync != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.sync);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134218240;
      *(v29 + 4) = v25 / 86400.0;
      *(v29 + 12) = 2048;
      *(v29 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v27, v28, "Full Recategorization Sync isn't allowed, not enough time passed: %f vs %ld", v29, 0x16u);
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }

  (*(v1 + 8))(v5, v0);
  return 1;
}

uint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t partial apply for closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in closure #1 in APIManager.retryPendingRequests();

  return closure #1 in CategorizationSyncManager.throttledNewOldSyncToServer()(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_46Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t APIRequestModel.accountBagKey.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t APIRequestModel.uuid.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t APIRequestModel.httpMethod.getter(uint64_t a1, void (*a2)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  return v4;
}

uint64_t APIRequestModel.body.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t APIRequestModel.retryCount.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance HTTPMethod(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1414745936;
  }

  else
  {
    v4 = 5522759;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1414745936;
  }

  else
  {
    v6 = 5522759;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance HTTPMethod()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance HTTPMethod()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance HTTPMethod()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance HTTPMethod@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of HTTPMethod.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance HTTPMethod(uint64_t *a1@<X8>)
{
  v2 = 5522759;
  if (*v1)
  {
    v2 = 1414745936;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t key path getter for APIRequestModel.uuid : APIRequestModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t key path setter for APIRequestModel.uuid : APIRequestModel(uint64_t *a1, uint64_t *a2)
{
  return key path setter for APIRequestModel.uuid : APIRequestModel(a1, a2);
}

{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in APIRequestModel.uuid.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  PersistentModel.setValue<A>(forKey:to:)();
}

double key path getter for APIRequestModel.body : APIRequestModel@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  *&v4 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data);
  PersistentModel.getValue<A>(forKey:)();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t closure #1 in APIRequestModel.body.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  lazy protocol witness table accessor for type Data? and conformance <A> A?(&lazy protocol witness table cache variable for type Data? and conformance <A> A?, lazy protocol witness table accessor for type Data and conformance Data);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t key path setter for APIRequestModel.httpMethod : APIRequestModel(char *a1, uint64_t *a2)
{
  return key path setter for APIRequestModel.httpMethod : APIRequestModel(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t key path getter for APIRequestModel.accountBagKey : APIRequestModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t closure #1 in APIRequestModel.accountBagKey.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey and conformance APIRequestModel.AccountBagKey();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t key path getter for APIRequestModel.httpMethod : APIRequestModel@<X0>(uint64_t *a1@<X0>, void (*a2)(void)@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  a2();
  PersistentModel.getValue<A>(forKey:)();

  *a3 = v7;
  return result;
}

uint64_t closure #1 in APIRequestModel.httpMethod.setter(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  a4();
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t APIRequestModel.savedDate.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t key path getter for APIRequestModel.savedDate : APIRequestModel(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  PersistentModel.getValue<A>(forKey:)();
}

uint64_t key path setter for APIRequestModel.savedDate : APIRequestModel(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v14 = v9;
  swift_getKeyPath();
  v12 = v9;
  v13 = v8;
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return (*(v5 + 8))(v8, v4);
}

uint64_t closure #1 in APIRequestModel.savedDate.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t key path getter for APIRequestModel.retryCount : APIRequestModel@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  PersistentModel.getValue<A>(forKey:)();

  *a2 = v4;
  return result;
}

uint64_t key path setter for APIRequestModel.retryCount : APIRequestModel(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t closure #1 in APIRequestModel.retryCount.setter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  PersistentModel.setValue<A>(forKey:to:)();
}

uint64_t APIRequestModel.AuthMethod.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO05BasicG10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO05BasicG10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO0G28TokenOrBasicHeaderCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO0G28TokenOrBasicHeaderCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    lazy protocol witness table accessor for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    lazy protocol witness table accessor for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

uint64_t APIRequestModel.AccountBagKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC13AccountBagKeyV10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC13AccountBagKeyV10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  lazy protocol witness table accessor for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance APIRequestModel.AuthMethod.CodingKeys()
{
  if (*v0)
  {
    result = 0x7475416369736162;
  }

  else
  {
    result = 0xD000000000000016;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance APIRequestModel.AuthMethod.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x8000000100038FE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7475416369736162 && a2 == 0xE900000000000068)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.AuthMethod.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.AuthMethod.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance APIRequestModel.AuthMethod@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized APIRequestModel.AuthMethod.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance APIRequestModel.AccountBagKey.CodingKeys()
{
  if (*v0)
  {
    result = 7955819;
  }

  else
  {
    result = 0x73616C4361746164;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance APIRequestModel.AccountBagKey.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73616C4361746164 && a2 == 0xE900000000000073;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.AccountBagKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.AccountBagKey.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance APIRequestModel.AccountBagKey@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized APIRequestModel.AccountBagKey.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance APIRequestModel.AccountBagKey(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  return APIRequestModel.AccountBagKey.encode(to:)(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance APIRequestModel.ACDataClass.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1818845549 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.ACDataClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.ACDataClass.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance APIRequestModel.ACDataClass.MailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance APIRequestModel.ACDataClass.MailCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance APIRequestModel.ACDataClass(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO14MailCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO14MailCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedEncodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void *APIRequestModel.init(backingData:)(__int128 *a1)
{
  v2 = v1;
  v4 = *v1;
  v2[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy15icloudmailagent010APIRequestD0C_AGQo_MR);
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  v2[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v2 + 3);
  static PersistentModel.createBackingData<A>()();
  *(v2 + 16) = 1;
  v5 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  ObservationRegistrar.init()();
  *(v2 + 16) = 0;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0(v2 + 3);
  outlined init with take of any BackingData<Self.BackingData.Model == APIRequestModel>(a1, (v2 + 3));
  swift_endAccess();
  return v2;
}

uint64_t APIRequestModel.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 3);
  v1 = OBJC_IVAR____TtC15icloudmailagent15APIRequestModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for APIRequestModel()
{
  result = type metadata singleton initialization cache for APIRequestModel;
  if (!type metadata singleton initialization cache for APIRequestModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for APIRequestModel()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t protocol witness for PersistentModel.init(backingData:) in conformance APIRequestModel(__int128 *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  APIRequestModel.init(backingData:)(a1);
  return v5;
}

uint64_t protocol witness for PersistentModel.persistentBackingData.setter in conformance APIRequestModel(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 24));
  outlined init with take of any BackingData<Self.BackingData.Model == APIRequestModel>(a1, v1 + 24);
  return swift_endAccess();
}

void (*protocol witness for PersistentModel.persistentBackingData.modify in conformance APIRequestModel(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of any BackingData<Self.BackingData.Model == APIRequestModel>(v1 + 24, v4);
  return protocol witness for PersistentModel.persistentBackingData.modify in conformance APIRequestModel;
}

void protocol witness for PersistentModel.persistentBackingData.modify in conformance APIRequestModel(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    outlined init with copy of any BackingData<Self.BackingData.Model == APIRequestModel>(*a1, v2 + 40);
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 24));
    outlined init with take of any BackingData<Self.BackingData.Model == APIRequestModel>((v2 + 40), v3 + 24);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_0((v3 + 24));
    outlined init with take of any BackingData<Self.BackingData.Model == APIRequestModel>(v2, v3 + 24);
    swift_endAccess();
  }

  free(v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance APIRequestModel()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance APIRequestModel()
{
  v1 = *v0;
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  return PersistentModel.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance APIRequestModel()
{
  v2 = *v0;
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance APIRequestModel()
{
  v1 = *v0;
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);
  return PersistentModel.id.getter();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance APIRequestModel(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type APIRequestModel and conformance APIRequestModel, type metadata accessor for APIRequestModel);

  return static PersistentModel.== infix(_:_:)(v3, v4, v2, v5);
}

uint64_t specialized APIRequestModel.AuthMethod.init(from:)(uint64_t *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO05BasicG10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO05BasicG10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v29);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO0G28TokenOrBasicHeaderCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO0G28TokenOrBasicHeaderCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC10AuthMethodO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys();
  v14 = v31;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = KeyedDecodingContainer.allKeys.getter();
  if (*(v18 + 16) != 1)
  {
    v20 = type metadata accessor for DecodingError();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v22 = &type metadata for APIRequestModel.AuthMethod;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    lazy protocol witness table accessor for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    lazy protocol witness table accessor for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v31);
  return v32;
}

uint64_t specialized APIRequestModel.AccountBagKey.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC13AccountBagKeyV10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC13AccountBagKeyV10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[15] = 0;
  lazy protocol witness table accessor for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10[14] = 1;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t specialized APIRequestModel.ACDataClass.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO14MailCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO14MailCodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v20 = *(v3 - 8);
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMd, &_ss22KeyedDecodingContainerVy15icloudmailagent15APIRequestModelC11ACDataClassO10CodingKeys33_213BE74E6AAB6583624EFB301234668FLLOGMR);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v21);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = v20;
    v19 = v7;
    if (*(KeyedDecodingContainer.allKeys.getter() + 16) == 1)
    {
      lazy protocol witness table accessor for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v13 = v19;
      (*(v12 + 8))(v6, v3);
    }

    else
    {
      v14 = type metadata accessor for DecodingError();
      swift_allocError();
      v16 = v15;
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v16 = &type metadata for APIRequestModel.ACDataClass;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v14 - 8) + 104))(v16, enum case for DecodingError.typeMismatch(_:), v14);
      swift_willThrow();
      v13 = v19;
    }

    (*(v13 + 8))(v10, v21);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t specialized static APIRequestModel.schemaMetadata.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMR);
  v0 = *(type metadata accessor for Schema.PropertyMetadata() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100035D20;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMR);
  v4 = *(type metadata accessor for Schema.Attribute.Option() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_1000356B0;
  static Schema.Attribute.Option.unique.getter();
  v7 = type metadata accessor for Schema.Attribute();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  Schema.Attribute.init(_:originalName:hashModifier:)();
  lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(&lazy protocol witness table cache variable for type Schema.Attribute and conformance Schema.Attribute, &type metadata accessor for Schema.Attribute);
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  return v3;
}

uint64_t partial apply for closure #1 in APIRequestModel.savedDate.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #1 in APIRequestModel.savedDate.setter();
}

uint64_t lazy protocol witness table accessor for type PersistentIdentifier and conformance PersistentIdentifier(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t partial apply for closure #1 in APIRequestModel.accountBagKey.setter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in APIRequestModel.accountBagKey.setter();
}

uint64_t partial apply for closure #1 in APIRequestModel.body.setter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in APIRequestModel.body.setter();
}

uint64_t partial apply for closure #1 in APIRequestModel.uuid.setter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return closure #1 in APIRequestModel.uuid.setter();
}

uint64_t outlined init with copy of any BackingData<Self.BackingData.Model == APIRequestModel>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined init with take of any BackingData<Self.BackingData.Model == APIRequestModel>(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.CodingKeys and conformance APIRequestModel.AuthMethod.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.BasicAuthCodingKeys and conformance APIRequestModel.AuthMethod.BasicAuthCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys and conformance APIRequestModel.AuthMethod.AuthTokenOrBasicHeaderCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.AccountBagKey.CodingKeys and conformance APIRequestModel.AccountBagKey.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass and conformance APIRequestModel.ACDataClass);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for APIRequestModel.AuthMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.CodingKeys and conformance APIRequestModel.ACDataClass.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys()
{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys;
  if (!lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIRequestModel.ACDataClass.MailCodingKeys and conformance APIRequestModel.ACDataClass.MailCodingKeys);
  }

  return result;
}

uint64_t one-time initialization function for secretAgentService()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.secretAgentService);
  __swift_project_value_buffer(v0, static Logger.secretAgentService);

  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for agentConnectionManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.agentConnectionManager);
  __swift_project_value_buffer(v0, static Logger.agentConnectionManager);

  return Logger.init(subsystem:category:)();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t one-time initialization function for sync(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);

  return Logger.init(subsystem:category:)();
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v7);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    outlined destroy of TaskPriority?(a1, &_sypSgMd, &_sypSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v7);

    outlined destroy of TaskPriority?(v7, &_sypSgMd, &_sypSgMR);
  }
}

id one-time initialization function for nlpLock()
{
  result = [objc_allocWithZone(NSLock) init];
  static CategorizationManager.nlpLock = result;
  return result;
}

uint64_t one-time initialization function for nlpExpiry()
{
  v0 = type metadata accessor for DispatchTime();
  __swift_allocate_value_buffer(v0, static CategorizationManager.nlpExpiry);
  __swift_project_value_buffer(v0, static CategorizationManager.nlpExpiry);
  return static DispatchTime.now()();
}

uint64_t one-time initialization function for nlpQueue()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9[1] = type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static CategorizationManager.nlpQueue = result;
  return result;
}

id CategorizationManager.().init()()
{
  v1 = &v0[OBJC_IVAR___CategorizationManager_nextNlpTimeout];
  *v1 = closure #1 in variable initialization expression of CategorizationManager.nextNlpTimeout;
  v1[1] = 0;
  static CategorizationManager.nlp = 0;

  static CategorizationManager.nlpTransaction = 0;
  swift_unknownObjectRelease();
  v12.receiver = v0;
  v12.super_class = type metadata accessor for CategorizationManager();
  v2 = objc_msgSendSuper2(&v12, "init");
  v3 = one-time initialization token for rules;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.rules);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v4;
    *v9 = v4;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "CategorizationManager %@ initialised", v8, 0xCu);
    outlined destroy of TaskPriority?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  return v4;
}

uint64_t CategorizationManager.fetchNlp()()
{
  v0 = type metadata accessor for NLPLevel();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for nlpLock != -1)
  {
    swift_once();
  }

  v5 = static CategorizationManager.nlpLock;
  [static CategorizationManager.nlpLock lock];
  CategorizationManager.setupNlpTimer()();
  if (static CategorizationManager.nlp)
  {
    if (one-time initialization token for rules != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.rules);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "CategorizationManager NLP not nil, returning it", v9, 2u);
    }

    v10 = static CategorizationManager.nlp;
  }

  else
  {
    if (one-time initialization token for rules != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.rules);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "CategorizationManager NLP nil, creating it", v14, 2u);
    }

    (*(v1 + 104))(v4, enum case for NLPLevel.english(_:), v0);
    v15 = type metadata accessor for MCCNLP();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v10 = MCCNLP.init(withLevel:)();
    static CategorizationManager.nlp = v10;
  }

  [v5 unlock];
  return v10;
}

uint64_t closure #1 in variable initialization expression of CategorizationManager.nextNlpTimeout()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for DispatchTime();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static DispatchTime.now()();
  *v4 = 30;
  (*(v1 + 104))(v4, enum case for DispatchTimeInterval.seconds(_:), v0);
  DispatchTime.advanced(by:)();
  (*(v1 + 8))(v4, v0);
  return (*(v6 + 8))(v9, v5);
}

void CategorizationManager.setupNlpTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  v4 = __chkstk_darwin(v2);
  v57 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v56 = v53 - v6;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  __chkstk_darwin(v7);
  v64 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  v10 = *(v63 + 64);
  __chkstk_darwin(v65);
  v62 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OS_dispatch_source.TimerFlags();
  v60 = *(v12 - 8);
  v61 = v12;
  v13 = *(v60 + 64);
  __chkstk_darwin(v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchTime();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (static CategorizationManager.nlpTimer)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ((OS_dispatch_source.isCancelled.getter() & 1) == 0)
    {
      v68 = v0;
      if (one-time initialization token for rules != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.rules);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "CategorizationManager NLP timer cancelled (old)", v24, 2u);
      }

      OS_dispatch_source.cancel()();
      v1 = v68;
    }

    swift_unknownObjectRelease();
  }

  if (one-time initialization token for rules != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  v53[1] = __swift_project_value_buffer(v25, static Logger.rules);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "CategorizationManager NLP timer being created", v28, 2u);
  }

  if (one-time initialization token for nlpExpiry != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v16, static CategorizationManager.nlpExpiry);
  v30 = *(v1 + OBJC_IVAR___CategorizationManager_nextNlpTimeout);
  v31 = *(v1 + OBJC_IVAR___CategorizationManager_nextNlpTimeout + 8);

  v30(v32);

  swift_beginAccess();
  v33 = *(v17 + 40);
  v55 = v20;
  v33(v29, v20, v16);
  swift_endAccess();
  if (!static CategorizationManager.nlpTransaction)
  {
    type metadata accessor for OSTransactionHelper();
    swift_initStaticObject();
    static CategorizationManager.nlpTransaction = OSTransactionHelper.makeTransaction()();
    swift_unknownObjectRelease();
  }

  v54 = v17;
  v68 = v16;
  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for OS_dispatch_source, OS_dispatch_source_ptr);
  if (one-time initialization token for nlpQueue != -1)
  {
    swift_once();
  }

  v34 = static CategorizationManager.nlpQueue;
  aBlock[0] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type OS_dispatch_source.TimerFlags and conformance OS_dispatch_source.TimerFlags, &type metadata accessor for OS_dispatch_source.TimerFlags);
  v35 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_source.TimerFlags] and conformance [A], &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMd, &_sSaySo18OS_dispatch_sourceC8DispatchE10TimerFlagsVGMR);
  v36 = v61;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v37 = static OS_dispatch_source.makeTimerSource(flags:queue:)();

  (*(v60 + 8))(v15, v36);
  static CategorizationManager.nlpTimer = v37;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_getObjectType();
  v38 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in CategorizationManager.setupNlpTimer();
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_2;
  v39 = _Block_copy(aBlock);

  v40 = v62;
  static DispatchQoS.unspecified.getter();
  v41 = v64;
  default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v39);
  swift_unknownObjectRelease();
  (*(v66 + 8))(v41, v67);
  (*(v63 + 8))(v40, v65);

  if (!static CategorizationManager.nlpTimer)
  {
    __break(1u);
    goto LABEL_25;
  }

  swift_getObjectType();
  v42 = v54;
  v43 = v55;
  (*(v54 + 16))(v55, v29, v68);
  v45 = v58;
  v44 = v59;
  v46 = *(v58 + 104);
  v47 = v56;
  v46(v56, enum case for DispatchTimeInterval.never(_:), v59);
  v48 = v57;
  *v57 = 5;
  v46(v48, enum case for DispatchTimeInterval.seconds(_:), v44);
  swift_unknownObjectRetain();
  OS_dispatch_source_timer.schedule(deadline:repeating:leeway:)();
  swift_unknownObjectRelease();
  v49 = *(v45 + 8);
  v49(v48, v44);
  v49(v47, v44);
  (*(v42 + 8))(v43, v68);
  if (!static CategorizationManager.nlpTimer)
  {
LABEL_25:
    __break(1u);
    return;
  }

  swift_getObjectType();
  swift_unknownObjectRetain();
  OS_dispatch_source.resume()();
  swift_unknownObjectRelease();
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "CategorizationManager NLP timer created", v52, 2u);
  }
}

void closure #1 in CategorizationManager.setupNlpTimer()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    CategorizationManager.nlpTimerTriggered()();
  }

  else
  {
    if (one-time initialization token for rules != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.rules);
    v1 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v1, v3, "CategorizationManager NLP timer failure to create", v4, 2u);
    }
  }
}

uint64_t default argument 1 of OS_dispatch_source.setEventHandler(qos:flags:handler:)()
{
  type metadata accessor for DispatchWorkItemFlags();
  lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, "f_");
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, "f_");
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

id CategorizationManager.nlpTimerTriggered()()
{
  v0 = type metadata accessor for DispatchTime();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v22 - v6;
  if (one-time initialization token for rules != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.rules);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "CategorizationManager NLP timer triggered", v11, 2u);
  }

  if (one-time initialization token for nlpLock != -1)
  {
    swift_once();
  }

  v12 = static CategorizationManager.nlpLock;
  [static CategorizationManager.nlpLock lock];
  if (one-time initialization token for nlpExpiry != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v0, static CategorizationManager.nlpExpiry);
  swift_beginAccess();
  (*(v1 + 16))(v7, v13, v0);
  static DispatchTime.now()();
  lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type DispatchTime and conformance DispatchTime, &type metadata accessor for DispatchTime);
  v14 = dispatch thunk of static Comparable.< infix(_:_:)();
  v15 = *(v1 + 8);
  v15(v5, v0);
  v15(v7, v0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  if (v14)
  {
    if (v18)
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "CategorizationManager NLP timer extended", v19, 2u);
    }

    CategorizationManager.setupNlpTimer()();
  }

  else
  {
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "CategorizationManager NLP timer expired", v20, 2u);
    }

    static CategorizationManager.nlp = 0;

    static CategorizationManager.nlpTransaction = 0;
    swift_unknownObjectRelease();
  }

  return [v12 unlock];
}

void specialized closure #1 in CategorizationManager.predictCommerceEmail(with:completion:)(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void, void))
{
  v191 = a4;
  v198 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20MCCKitCategorization010BlackPearlB7VersionVSgMd, &_s20MCCKitCategorization010BlackPearlB7VersionVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v181 = &v171 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v184 = &v171 - v10;
  v197 = type metadata accessor for BlackPearlVersion();
  v199 = *(v197 - 8);
  v11 = *(v199 + 64);
  __chkstk_darwin(v197);
  v13 = &v171 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ReasonCode();
  v189 = *(v14 - 8);
  v15 = *(v189 + 64);
  v16 = __chkstk_darwin(v14);
  v180 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v202 = &v171 - v18;
  v19 = type metadata accessor for CategoryTS();
  v201 = *(v19 - 8);
  v20 = *(v201 + 8);
  __chkstk_darwin(v19);
  v185 = &v171 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for Category();
  v192 = *(v194 - 8);
  v22 = *(v192 + 64);
  v23 = __chkstk_darwin(v194);
  v183 = &v171 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v193 = &v171 - v25;
  v26 = type metadata accessor for DecisionRequest();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v195 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for DecisionResult();
  v182 = *(v30 - 8);
  v31 = *(v182 + 64);
  __chkstk_darwin(v30);
  v200 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = CategorizationManager.fetchNlp()();
  if (!v33)
  {
    v38 = objc_allocWithZone(NSError);
    v39 = String._bridgeToObjectiveC()();
    v40 = [v38 initWithDomain:v39 code:-1 userInfo:0];

    v41 = v40;
    v42 = _convertErrorToNSError(_:)();
    v43 = v191;
    (v191)[2](v191, 0, v42);

    _Block_release(v43);
    return;
  }

  v190 = v33;
  if ((dispatch thunk of MCCNLP.isModelPresetLoaded.getter() & 1) == 0)
  {
    dispatch thunk of MCCNLP.scheduleImmediateDownload()();
  }

  v172 = v27;
  v34 = a2;
  v35 = [a2 senderName];
  if (v35)
  {
    v36 = v35;
    v178 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v196 = v37;
  }

  else
  {
    v178 = 0;
    v196 = 0xE000000000000000;
  }

  v44 = [a2 senderEmail];
  if (v44)
  {
    v45 = v44;
    v186 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v188 = v46;
  }

  else
  {
    v186 = 0;
    v188 = 0xE000000000000000;
  }

  v47 = [a2 emailSubject];
  if (v47)
  {
    v48 = v47;
    v177 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v187 = v49;
  }

  else
  {
    v177 = 0;
    v187 = 0xE000000000000000;
  }

  v174 = v4;
  v50 = [a2 receiverEmail];
  v203 = v14;
  v173 = v26;
  v171 = v30;
  v179 = v19;
  if (v50)
  {
    v51 = v50;
    v176 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v176 = 0;
    v53 = 0xE000000000000000;
  }

  v175 = [v34 isUnsubscribeHeaderPresent];
  [v34 isSenderVIP];
  [v34 isSenderInAddressBook];
  [v34 isSenderRecentContact];
  [v34 isSenderPrimary];
  [v34 isNonPersonalAccount];
  v178 = v53;
  DecisionRequest.init(senderName:senderEmail:emailSubject:receiverEmail:isUnsubscribeHeaderPresent:isSenderVIP:isSenderInAddressBook:isSenderRecentContact:isSenderPrimary:isNonPersonalAccount:)();
  if (dispatch thunk of MCCNLP.isModelPresetLoaded.getter())
  {
    dispatch thunk of MCCNLP.predictCommerceEmail(decisionRequest:)();
  }

  else
  {
    type metadata accessor for DecisionResultBuilder();
    static DecisionResultBuilder.buildCategorizationNotReadyResult()();
  }

  v54 = kDecisionCommerceKey;
  v55 = [objc_allocWithZone(NSNumber) initWithBool:DecisionResult.commerce.getter() & 1];
  v56 = type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v207 = v56;
  v206 = v55;
  specialized Dictionary.subscript.setter(&v206, v54);
  v57 = kDecisionTimeSensitiveKey;
  v58 = [objc_allocWithZone(NSNumber) initWithBool:DecisionResult.timesensitive.getter() & 1];
  v207 = v56;
  v206 = v58;
  specialized Dictionary.subscript.setter(&v206, v57);
  v59 = kDecisionSubCategoryKey;
  v60 = v193;
  DecisionResult.subCategory.getter();
  static Category.getCategoryText(for:)();
  v61 = *(v192 + 8);
  v177 = v192 + 8;
  v176 = v61;
  v61(v60, v194);
  v62 = String._bridgeToObjectiveC()();

  v186 = type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
  v207 = v186;
  v206 = v62;
  specialized Dictionary.subscript.setter(&v206, v59);
  v63 = kDecisionSubCategoryTSKey;
  v64 = v185;
  DecisionResult.subCategoryTS.getter();
  v65 = CategoryTS.rawValue.getter();
  (*(v201 + 1))(v64, v179);
  v66 = [objc_allocWithZone(NSNumber) initWithInteger:v65];
  v207 = v56;
  v206 = v66;
  specialized Dictionary.subscript.setter(&v206, v63);
  v67 = kDecisionScoreKey;
  DecisionResult.score.getter();
  v69 = [objc_allocWithZone(NSNumber) initWithDouble:v68];
  v207 = v56;
  v206 = v69;
  specialized Dictionary.subscript.setter(&v206, v67);
  v70 = kDecisionSenderScoreKey;
  DecisionResult.senderScore.getter();
  v72 = [objc_allocWithZone(NSNumber) initWithDouble:v71];
  v207 = v56;
  v206 = v72;
  specialized Dictionary.subscript.setter(&v206, v70);
  v73 = kDecisionTSScoreKey;
  DecisionResult.tsScore.getter();
  v75 = [objc_allocWithZone(NSNumber) initWithDouble:v74];
  v207 = v56;
  v206 = v75;
  specialized Dictionary.subscript.setter(&v206, v73);
  v76 = kDecisionTSCategoryScoreKey;
  DecisionResult.tsCategoryScore.getter();
  v78 = [objc_allocWithZone(NSNumber) initWithDouble:v77];
  v207 = v56;
  v206 = v78;
  specialized Dictionary.subscript.setter(&v206, v76);
  v205 = _swiftEmptyArrayStorage;
  v79 = DecisionResult.reasonCodes.getter();
  v80 = *(v79 + 16);
  if (v80)
  {
    v179 = v13;
    v201 = *(v189 + 16);
    v81 = (*(v189 + 80) + 32) & ~*(v189 + 80);
    v185 = v79;
    v82 = v79 + v81;
    v83 = *(v189 + 72);
    v84 = (v189 + 8);
    do
    {
      v85 = v202;
      v86 = v203;
      v201(v202, v82, v203);
      ReasonCode.rawValue.getter();
      (*v84)(v85, v86);
      String._bridgeToObjectiveC()();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v205 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v205 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v82 += v83;
      --v80;
    }

    while (v80);
    v87 = v205;

    v13 = v179;
  }

  else
  {

    v87 = _swiftEmptyArrayStorage;
  }

  v88 = kDecisionReasonCodesKey;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSStringCGMd, &_sSaySo8NSStringCGMR);
  v206 = v87;
  v89 = v88;
  v201 = v87;

  specialized Dictionary.subscript.setter(&v206, v89);
  v90 = kDecisionBPModelVersionKey;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlModelVersion()();
  v91 = v199 + 8;
  v92 = *(v199 + 8);
  v93 = v197;
  v92(v13, v197);
  v94 = String._bridgeToObjectiveC()();

  v95 = v186;
  v207 = v186;
  v206 = v94;
  specialized Dictionary.subscript.setter(&v206, v90);
  v96 = kDecisionBPSenderModelVersionKey;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlSenderModelVersion()();
  v92(v13, v93);
  v97 = String._bridgeToObjectiveC()();

  v207 = v95;
  v206 = v97;
  specialized Dictionary.subscript.setter(&v206, v96);
  v98 = kDecisionBPTSModelVersionKey;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlTSModelVersion()();
  v92(v13, v93);
  v99 = String._bridgeToObjectiveC()();

  v207 = v95;
  v206 = v99;
  specialized Dictionary.subscript.setter(&v206, v98);
  v100 = kDecisionBPFinalRuleModelVersionKey;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlFinalRuleVersion()();
  v92(v13, v93);
  v101 = String._bridgeToObjectiveC()();

  v207 = v95;
  v206 = v101;
  specialized Dictionary.subscript.setter(&v206, v100);
  v102 = kDecisionBPBreakthroughModelVersionKey;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlBreakthroughVersion()();
  v92(v13, v93);
  v103 = String._bridgeToObjectiveC()();

  v207 = v95;
  v206 = v103;
  specialized Dictionary.subscript.setter(&v206, v102);
  DecisionResult.blackPearlVersion.getter();
  object = BlackPearlVersion.getBlackPearlExperimentId()().value._object;
  v92(v13, v93);
  v202 = v92;
  v199 = v91;
  if (object)
  {

    v105 = kDecisionBPExperimentIdKey;
    DecisionResult.blackPearlVersion.getter();
    v106 = BlackPearlVersion.getBlackPearlExperimentId()().value._object;
    v92(v13, v93);
    if (!v106)
    {
      _Block_release(v191);
      __break(1u);
      goto LABEL_56;
    }

    v107 = String._bridgeToObjectiveC()();

    v207 = v95;
    v206 = v107;
    specialized Dictionary.subscript.setter(&v206, v105);
    v92 = v202;
  }

  else
  {
    v108 = kDecisionBPExperimentIdKey;
    v109 = NSString.init(stringLiteral:)();
    v207 = v95;
    v206 = v109;
    specialized Dictionary.subscript.setter(&v206, v108);
  }

  v110 = kDecisionBPExperimentDeploymentIdKey;
  DecisionResult.blackPearlVersion.getter();
  v111 = BlackPearlVersion.getBlackPearlDeploymentId()();
  v112 = v197;
  v92(v13, v197);
  v206 = v111;
  dispatch thunk of CustomStringConvertible.description.getter();
  v113 = String._bridgeToObjectiveC()();

  v207 = v95;
  v206 = v113;
  v114 = v202;
  specialized Dictionary.subscript.setter(&v206, v110);
  DecisionResult.blackPearlVersion.getter();
  v115 = BlackPearlVersion.getBlackPearlTreatmentId()().value._object;
  v114(v13, v112);
  if (v115)
  {

    v116 = kDecisionBPTreatmentIdKey;
    DecisionResult.blackPearlVersion.getter();
    v117 = BlackPearlVersion.getBlackPearlTreatmentId()().value._object;
    v114(v13, v112);
    if (v117)
    {
      v118 = String._bridgeToObjectiveC()();

      v207 = v95;
      v206 = v118;
      specialized Dictionary.subscript.setter(&v206, v116);
      v114 = v202;
      goto LABEL_35;
    }

LABEL_56:
    _Block_release(v191);
    __break(1u);
    goto LABEL_57;
  }

  v119 = kDecisionBPTreatmentIdKey;
  v120 = NSString.init(stringLiteral:)();
  v207 = v95;
  v206 = v120;
  specialized Dictionary.subscript.setter(&v206, v119);
LABEL_35:
  v121 = kDecisionBPRolloutDeploymentIdKey;
  DecisionResult.blackPearlVersion.getter();
  v122 = BlackPearlVersion.getBlackPearlRolloutDeploymentId()();
  v114(v13, v112);
  v206 = v122;
  dispatch thunk of CustomStringConvertible.description.getter();
  v123 = String._bridgeToObjectiveC()();

  v207 = v95;
  v206 = v123;
  v124 = v202;
  specialized Dictionary.subscript.setter(&v206, v121);
  DecisionResult.blackPearlVersion.getter();
  v125 = BlackPearlVersion.getBlackPearlRolloutFactorPackId()().value._object;
  v124(v13, v112);
  if (v125)
  {

    v126 = kDecisionBPRolloutFactorPackIdKey;
    DecisionResult.blackPearlVersion.getter();
    v127 = BlackPearlVersion.getBlackPearlRolloutFactorPackId()().value._object;
    v124(v13, v112);
    if (v127)
    {
      v128 = String._bridgeToObjectiveC()();

      v207 = v95;
      v206 = v128;
      specialized Dictionary.subscript.setter(&v206, v126);
      v124 = v202;
      goto LABEL_39;
    }

LABEL_57:
    _Block_release(v191);
    __break(1u);
    goto LABEL_58;
  }

  v129 = kDecisionBPRolloutFactorPackIdKey;
  v130 = NSString.init(stringLiteral:)();
  v207 = v95;
  v206 = v130;
  specialized Dictionary.subscript.setter(&v206, v129);
LABEL_39:
  DecisionResult.blackPearlVersion.getter();
  v131 = BlackPearlVersion.getBlackPearlRolloutId()().value._object;
  v124(v13, v112);
  if (v131)
  {

    v132 = kDecisionBPRolloutIdKey;
    DecisionResult.blackPearlVersion.getter();
    v133 = BlackPearlVersion.getBlackPearlRolloutId()().value._object;
    v124(v13, v112);
    if (v133)
    {
      v134 = String._bridgeToObjectiveC()();

      v207 = v95;
      v206 = v134;
      specialized Dictionary.subscript.setter(&v206, v132);
      v124 = v202;
      goto LABEL_43;
    }

LABEL_58:
    _Block_release(v191);
    __break(1u);
    goto LABEL_59;
  }

  v135 = kDecisionBPRolloutIdKey;
  v136 = NSString.init(stringLiteral:)();
  v207 = v95;
  v206 = v136;
  specialized Dictionary.subscript.setter(&v206, v135);
LABEL_43:
  v137 = v184;
  DecisionResult.blackPearlVersion.getter();
  BlackPearlVersion.getBlackPearlCategorizationVersion()();
  v138 = v197;
  v124(v13, v197);
  v139 = type metadata accessor for BlackPearlCategorizationVersion();
  v140 = *(v139 - 8);
  v141 = v124;
  v142 = *(v140 + 48);
  if (v142(v137, 1, v139) != 1)
  {
    outlined destroy of TaskPriority?(v137, &_s20MCCKitCategorization010BlackPearlB7VersionVSgMd, &_s20MCCKitCategorization010BlackPearlB7VersionVSgMR);
    v202 = kDecisionBPVersionKey;
    DecisionResult.blackPearlVersion.getter();
    v147 = v181;
    BlackPearlVersion.getBlackPearlCategorizationVersion()();
    v141(v13, v138);
    if (v142(v147, 1, v139) != 1)
    {

      BlackPearlCategorizationVersion.getVersionString()();
      (*(v140 + 8))(v147, v139);
      v148 = String._bridgeToObjectiveC()();

      v207 = v186;
      v206 = v148;
      v146 = v202;
      goto LABEL_47;
    }

LABEL_59:
    _Block_release(v191);
    __break(1u);
    return;
  }

  outlined destroy of TaskPriority?(v137, &_s20MCCKitCategorization010BlackPearlB7VersionVSgMd, &_s20MCCKitCategorization010BlackPearlB7VersionVSgMR);

  v143 = kDecisionBPVersionKey;
  v144 = v186;
  v145 = NSString.init(stringLiteral:)();
  v207 = v144;
  v206 = v145;
  v146 = v143;
LABEL_47:
  specialized Dictionary.subscript.setter(&v206, v146);
  v149 = v203;
  v150 = v193;
  v151 = v200;
  DecisionResult.subCategory.getter();
  v152 = v183;
  v153 = v194;
  (*(v192 + 104))(v183, enum case for Category.ERROR(_:), v194);
  lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type Category and conformance Category, &type metadata accessor for Category);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v154 = v176;
  v176(v152, v153);
  v154(v150, v153);
  v155 = v189;
  if (v206 == v204)
  {
    v156 = DecisionResult.reasonCodes.getter();
    v157 = *(v155 + 104);
    v158 = v180;
    v157(v180, enum case for ReasonCode.errorModelNotReady(_:), v149);
    v159 = specialized Sequence<>.contains(_:)(v158, v156);
    v160 = v158;

    v161 = *(v155 + 8);
    v161(v160, v149);
    if (v159 || (v162 = DecisionResult.reasonCodes.getter(), v157(v160, enum case for ReasonCode.errorMbertModelNotReady(_:), v149), v163 = specialized Sequence<>.contains(_:)(v160, v162), , v161(v160, v149), v163))
    {
      v164 = objc_allocWithZone(NSError);
      v165 = String._bridgeToObjectiveC()();
      v166 = [v164 initWithDomain:v165 code:-2 userInfo:0];

      v167 = v166;
      v168 = _convertErrorToNSError(_:)();
      (v191)[2](v191, 0, v168);
    }

    else
    {
    }

    v169 = v195;
    v170 = v182;
    v151 = v200;
  }

  else
  {

    v169 = v195;
    v170 = v182;
  }

  (*(v172 + 8))(v169, v173);
  (*(v170 + 8))(v151, v171);
  _Block_release(v191);
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(type metadata accessor for ReasonCode() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    lazy protocol witness table accessor for type DispatchTime and conformance DispatchTime(&lazy protocol witness table cache variable for type ReasonCode and conformance ReasonCode, &type metadata accessor for ReasonCode);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v4 != v5;
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
    v15 = v14;
    swift_dynamicCast();
    outlined init with take of Any((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    outlined init with take of Any(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    outlined init with take of Any(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v7[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*&v7[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = outlined init with take of Any(v31, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t @objc CategorizationManager.getIABCategoryID(with:completion:)(void *a1, int a2, int a3, void *aBlock, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = _Block_copy(aBlock);
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  specialized CategorizationManager.getIABCategoryID(with:completion:)(v8, v10, v11, v7, a5);
  _Block_release(v7);
  _Block_release(v7);
}

void @objc CategorizationManager.isModelReady(completion:)(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

id CategorizationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CategorizationManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v11 = v13;
    }

    outlined init with take of Any((*(v11 + 56) + 32 * v8), a2);
    specialized _NativeDictionary._delete(at:)(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        outlined init with take of Any(v25, v37);
      }

      else
      {
        outlined init with copy of Any(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = outlined init with take of Any(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15icloudmailagent15GroupedOverrideVGMd, &_ss18_DictionaryStorageCySS15icloudmailagent15GroupedOverrideVGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = (*(v5 + 56) + 32 * v22);
      v26 = *v25;
      v41 = v25[1];
      v42 = *v23;
      v27 = v25[2];
      v28 = v25[3];
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v42;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 32 * v16);
      *v18 = v26;
      v18[1] = v41;
      v18[2] = v27;
      v18[3] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
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
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSStringCypGMd, &_ss18_DictionaryStorageCySo8NSStringCypGMR);
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        outlined init with take of Any(v22, v33);
      }

      else
      {
        outlined init with copy of Any(v22, v33);
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
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

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = outlined init with take of Any(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (a2)
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSNumberCGMd, &_ss18_DictionaryStorageCySSSo8NSNumberCGMR);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = NSObject._rawHashValue(seed:)(v10);

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return outlined init with take of Any(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v22);
  }
}