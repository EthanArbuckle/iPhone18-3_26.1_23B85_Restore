uint64_t @objc closure #1 in ProcessingServerCoreConnection.isUIActive()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in ProcessingServerCoreConnection.isUIActive();

  return ProcessingServerCoreConnection.isUIActive()();
}

uint64_t @objc closure #1 in ProcessingServerCoreConnection.isUIActive()(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t partial apply for @objc closure #1 in ProcessingServerCoreConnection.isUIActive()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:);

  return @objc closure #1 in ProcessingServerCoreConnection.isUIActive()(v2, v3);
}

uint64_t _sIeghH_IeAgH_TR(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = partial apply for closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:);

  return v7();
}

uint64_t _sIeghH_IeAgH_TRTA()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:);

  return _sIeghH_IeAgH_TR(v2, v3, v5);
}

uint64_t _sIeAgH_ytIeAgHr_TR(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:)partial apply;

  return v8();
}

uint64_t _sIeAgH_ytIeAgHr_TRTA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:);

  return _sIeAgH_ytIeAgHr_TR(a1, v4, v5, v7);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = v26 - v12;
  outlined init with copy of TaskPriority?(a3, v26 - v12);
  v14 = type metadata accessor for TaskPriority();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    outlined destroy of TaskPriority?(v13, &_sScPSgMd, &_sScPSgMR);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v15 + 8))(v13, v14);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v16 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v17 = dispatch thunk of Actor.unownedExecutor.getter();
  v19 = v18;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v20 = String.utf8CString.getter() + 32;
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = a5;

    if (v19 | v17)
    {
      v27[0] = 0;
      v27[1] = 0;
      v22 = v27;
      v27[2] = v17;
      v27[3] = v19;
    }

    else
    {
      v22 = 0;
    }

    v26[1] = 7;
    v26[2] = v22;
    v26[3] = v20;
    v24 = swift_task_create();

    outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);

    return v24;
  }

LABEL_8:
  outlined destroy of TaskPriority?(a3, &_sScPSgMd, &_sScPSgMR);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tgq5TA_36(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:)partial apply;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v5);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerCoreConnection.runNotificationServicing(for:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:);

  return @objc closure #1 in ProcessingServerCoreConnection.runNotificationServicing(for:)(v2, v3, v4);
}

uint64_t objectdestroy_43Tm()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerCoreConnection.realTimeCheckForNotification(significantLocationEnabled:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = partial apply for closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:);

  return @objc closure #1 in ProcessingServerCoreConnection.realTimeCheckForNotification(significantLocationEnabled:)(v2, v3, v4);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerCoreConnection.runFullProcessing()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:)partial apply;

  return @objc closure #1 in ProcessingServerCoreConnection.runFullProcessing()(v2, v3);
}

uint64_t objectdestroyTm_2()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t partial apply for @objc closure #1 in ProcessingServerCoreConnection.cloudSync()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = partial apply for closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:);

  return @objc closure #1 in ProcessingServerCoreConnection.cloudSync()(v2, v3);
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t type metadata accessor for RBSAttribute(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id MOWeatherData.__allocating_init(temperature:windSpeed:weatherSummry:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v11 = objc_allocWithZone(v7);
  v12 = OBJC_IVAR____TtC8momentsd13MOWeatherData_temperature;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v11[v12], a1, v13);
  v15 = OBJC_IVAR____TtC8momentsd13MOWeatherData_windSpeed;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v17 = *(v16 - 8);
  (*(v17 + 16))(&v11[v15], a2, v16);
  v18 = &v11[OBJC_IVAR____TtC8momentsd13MOWeatherData_weatherSummary];
  *v18 = a3;
  *(v18 + 1) = a4;
  v19 = &v11[OBJC_IVAR____TtC8momentsd13MOWeatherData_symbolName];
  *v19 = a5;
  *(v19 + 1) = a6;
  v25.receiver = v11;
  v25.super_class = v7;
  v20 = objc_msgSendSuper2(&v25, "init");
  (*(v17 + 8))(a2, v16);
  (*(v14 + 8))(a1, v13);
  return v20;
}

uint64_t key path setter for MOWeatherData.temperature : MOWeatherData(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*((swift_isaMask & **a2) + 0x78))(v8);
}

uint64_t MOWeatherData.temperature.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return (*(*(v9 - 8) + 16))(a4, v4 + v8, v9);
}

uint64_t MOWeatherData.temperature.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v9 - 8) + 40))(v4 + v8, a1, v9);
  return swift_endAccess();
}

uint64_t key path setter for MOWeatherData.windSpeed : MOWeatherData(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1);
  return (*((swift_isaMask & **a2) + 0x90))(v8);
}

id @objc MOWeatherData.weatherSummary.getter(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = String._bridgeToObjectiveC()();

  return v6;
}

uint64_t @objc MOWeatherData.weatherSummary.setter(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

id MOWeatherData.init(temperature:windSpeed:weatherSummry:symbolName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = OBJC_IVAR____TtC8momentsd13MOWeatherData_temperature;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMd, &_s10Foundation11MeasurementVySo17NSUnitTemperatureCGMR);
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v6[v11], a1, v12);
  v14 = OBJC_IVAR____TtC8momentsd13MOWeatherData_windSpeed;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo11NSUnitSpeedCGMd, &_s10Foundation11MeasurementVySo11NSUnitSpeedCGMR);
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v6[v14], a2, v15);
  v17 = &v6[OBJC_IVAR____TtC8momentsd13MOWeatherData_weatherSummary];
  *v17 = a3;
  *(v17 + 1) = a4;
  v18 = &v6[OBJC_IVAR____TtC8momentsd13MOWeatherData_symbolName];
  *v18 = a5;
  *(v18 + 1) = a6;
  v23.receiver = v6;
  v23.super_class = type metadata accessor for MOWeatherData();
  v19 = objc_msgSendSuper2(&v23, "init");
  (*(v16 + 8))(a2, v15);
  (*(v13 + 8))(a1, v12);
  return v19;
}

uint64_t type metadata accessor for MOWeatherData()
{
  result = type metadata singleton initialization cache for MOWeatherData;
  if (!type metadata singleton initialization cache for MOWeatherData)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::String __swiftcall MOWeatherData.getWeatherSummary()()
{
  v1 = (*((swift_isaMask & *v0) + 0xA0))();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall MOWeatherData.getSymbolName()()
{
  v1 = (*((swift_isaMask & *v0) + 0xB8))();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id MOWeatherData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOWeatherData();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void type metadata completion function for MOWeatherData()
{
  type metadata accessor for Measurement<NSUnitTemperature>(319, &lazy cache variable for type metadata for Measurement<NSUnitTemperature>, &lazy cache variable for type metadata for NSUnitTemperature, NSUnitTemperature_ptr);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for Measurement<NSUnitTemperature>(319, &lazy cache variable for type metadata for Measurement<NSUnitSpeed>, &lazy cache variable for type metadata for NSUnitSpeed, NSUnitSpeed_ptr);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Measurement<NSUnitTemperature>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    type metadata accessor for RBSAttribute(255, a3, a4);
    v5 = type metadata accessor for Measurement();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t MOAppCategoryUsage.category.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_category);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t MOAppCategoryUsage.category.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_category);
  swift_beginAccess();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

double MOAppCategoryUsage.totalDuration.getter()
{
  v1 = OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_totalDuration;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MOAppCategoryUsage.totalDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_totalDuration;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id MOAppCategoryUsage.__allocating_init(category:totalDuration:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_category];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_totalDuration] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, "init");
}

id MOAppCategoryUsage.init(category:totalDuration:)(uint64_t a1, uint64_t a2, double a3)
{
  v4 = &v3[OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_category];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC8momentsd18MOAppCategoryUsage_totalDuration] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for MOAppCategoryUsage();
  return objc_msgSendSuper2(&v6, "init");
}

Swift::String __swiftcall MOAppCategoryUsage.getCategory()()
{
  v1 = (*((swift_isaMask & *v0) + 0x60))();
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

id MOAppCategoryUsage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOAppCategoryUsage();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t MOAppUsageAggregation.categoryUsages.getter()
{
  v1 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t MOAppUsageAggregation.categoryUsages.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MOAppUsageAggregation.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_dateInterval;
  swift_beginAccess();
  v4 = type metadata accessor for DateInterval();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t MOAppUsageAggregation.dateInterval.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_dateInterval;
  swift_beginAccess();
  v4 = type metadata accessor for DateInterval();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t key path setter for MOAppUsageAggregation.dateInterval : MOAppUsageAggregation(uint64_t a1, void **a2)
{
  v4 = type metadata accessor for DateInterval();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1);
  return (*((swift_isaMask & **a2) + 0x88))(v8);
}

uint64_t MOAppUsageAggregation.longestActivity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1);
}

uint64_t outlined init with copy of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MOAppUsageAggregation.longestActivity.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity;
  swift_beginAccess();
  outlined assign with take of DateInterval?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of DateInterval?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for MOAppUsageAggregation.longestActivity : MOAppUsageAggregation(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v10 - v7;
  outlined init with copy of DateInterval?(a1, &v10 - v7);
  return (*((swift_isaMask & **a2) + 0xA0))(v8);
}

id MOAppUsageAggregation.__allocating_init(categoryUsages:dateInterval:longestActivity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  v9 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages;
  *&v8[OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages] = 0;
  v10 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity;
  v11 = type metadata accessor for DateInterval();
  v12 = *(v11 - 8);
  (*(v12 + 56))(&v8[v10], 1, 1, v11);
  swift_beginAccess();
  *&v8[v9] = a1;
  (*(v12 + 16))(&v8[OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_dateInterval], a2, v11);
  swift_beginAccess();
  outlined assign with copy of DateInterval?(a3, &v8[v10]);
  swift_endAccess();
  v15.receiver = v8;
  v15.super_class = v4;
  v13 = objc_msgSendSuper2(&v15, "init");
  outlined destroy of DateInterval?(a3);
  (*(v12 + 8))(a2, v11);
  return v13;
}

id MOAppUsageAggregation.init(categoryUsages:dateInterval:longestActivity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages;
  *&v3[OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_categoryUsages] = 0;
  v8 = OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_longestActivity;
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  (*(v10 + 56))(&v3[v8], 1, 1, v9);
  swift_beginAccess();
  *&v3[v7] = a1;
  (*(v10 + 16))(&v3[OBJC_IVAR____TtC8momentsd21MOAppUsageAggregation_dateInterval], a2, v9);
  swift_beginAccess();
  outlined assign with copy of DateInterval?(a3, &v3[v8]);
  swift_endAccess();
  v13.receiver = v3;
  v13.super_class = type metadata accessor for MOAppUsageAggregation();
  v11 = objc_msgSendSuper2(&v13, "init");
  outlined destroy of DateInterval?(a3);
  (*(v10 + 8))(a2, v9);
  return v11;
}

uint64_t outlined destroy of DateInterval?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::OpaquePointer_optional __swiftcall MOAppUsageAggregation.getCategoryUsage()()
{
  v1 = (*((swift_isaMask & *v0) + 0x68))();
  result.value._rawValue = v1;
  result.is_nil = v2;
  return result;
}

id MOAppUsageAggregation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOAppUsageAggregation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void type metadata completion function for MOAppUsageAggregation()
{
  v0 = type metadata accessor for DateInterval();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    type metadata accessor for DateInterval?();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for DateInterval?()
{
  if (!lazy cache variable for type metadata for DateInterval?)
  {
    type metadata accessor for DateInterval();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for DateInterval?);
    }
  }
}

uint64_t MOScreenTimeProvider.fetchHourlyAppUsage(startDate:endDate:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v10 = __chkstk_darwin(v6, v9);
  v11 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10, v12);
  v14 = &v30 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8, v17);
  v19 = &v30 - v18;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = *(v7 + 16);
  v21(v14, a1, v6);
  v21(v11, a2, v6);
  v22 = *(v7 + 80);
  v23 = (v22 + 32) & ~v22;
  v24 = (v8 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v26 = *(v7 + 32);
  v26(v25 + v23, v14, v6);
  v26(v25 + v24, v11, v6);
  v27 = (v25 + ((v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
  v28 = v31;
  *v27 = v30;
  v27[1] = v28;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v19, &async function pointer to partial apply for closure #1 in MOScreenTimeProvider.fetchHourlyAppUsage(startDate:endDate:completion:), v25);
}

uint64_t closure #1 in MOScreenTimeProvider.fetchHourlyAppUsage(startDate:endDate:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[14] = a6;
  v7[15] = a7;
  v7[12] = a4;
  v7[13] = a5;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR) - 8) + 64) + 15;
  v7[16] = swift_task_alloc();
  v9 = type metadata accessor for _DeviceActivityData.CategoryActivity();
  v7[17] = v9;
  v10 = *(v9 - 8);
  v7[18] = v10;
  v11 = *(v10 + 64) + 15;
  v7[19] = swift_task_alloc();
  v12 = type metadata accessor for _DeviceActivityData.ActivitySegment();
  v7[20] = v12;
  v13 = *(v12 - 8);
  v7[21] = v13;
  v14 = *(v13 + 64) + 15;
  v7[22] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14DeviceActivity01_aB4DataV0B7SegmentVSgMd, &_s14DeviceActivity01_aB4DataV0B7SegmentVSgMR) - 8) + 64) + 15;
  v7[23] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14DeviceActivity01_aB7ResultsVyAA01_aB4DataV0B7SegmentVGMd, &_s14DeviceActivity01_aB7ResultsVyAA01_aB4DataV0B7SegmentVGMR);
  v7[24] = v16;
  v17 = *(v16 - 8);
  v7[25] = v17;
  v18 = *(v17 + 64) + 15;
  v7[26] = swift_task_alloc();
  v19 = type metadata accessor for _DeviceActivityData();
  v7[27] = v19;
  v20 = *(v19 - 8);
  v7[28] = v20;
  v21 = *(v20 + 64) + 15;
  v7[29] = swift_task_alloc();
  v7[30] = swift_task_alloc();
  v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s14DeviceActivity0aB6FilterV7DevicesVSgMd, &_s14DeviceActivity0aB6FilterV7DevicesVSgMR) - 8) + 64) + 15;
  v7[31] = swift_task_alloc();
  v23 = type metadata accessor for DeviceActivityFilter.SegmentInterval();
  v7[32] = v23;
  v24 = *(v23 - 8);
  v7[33] = v24;
  v25 = *(v24 + 64) + 15;
  v7[34] = swift_task_alloc();
  v26 = type metadata accessor for DeviceActivityFilter();
  v7[35] = v26;
  v27 = *(v26 - 8);
  v7[36] = v27;
  v28 = *(v27 + 64) + 15;
  v7[37] = swift_task_alloc();
  v29 = type metadata accessor for DeviceActivityDataSource();
  v7[38] = v29;
  v30 = *(v29 - 8);
  v7[39] = v30;
  v31 = *(v30 + 64) + 15;
  v7[40] = swift_task_alloc();
  v32 = type metadata accessor for Date();
  v7[41] = v32;
  v33 = *(v32 - 8);
  v7[42] = v33;
  v34 = *(v33 + 64) + 15;
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v35 = type metadata accessor for DateInterval();
  v7[45] = v35;
  v36 = *(v35 - 8);
  v7[46] = v36;
  v37 = *(v36 + 64) + 15;
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v7[49] = swift_task_alloc();

  return _swift_task_switch(closure #1 in MOScreenTimeProvider.fetchHourlyAppUsage(startDate:endDate:completion:), 0, 0);
}

uint64_t partial apply for closure #1 in MOScreenTimeProvider.fetchHourlyAppUsage(startDate:endDate:completion:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:);

  return closure #1 in MOScreenTimeProvider.fetchHourlyAppUsage(startDate:endDate:completion:)(a1, v10, v11, v1 + v7, v1 + v9, v13, v14);
}

id MOScreenTimeProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOScreenTimeProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id MOScreenTimeProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MOScreenTimeProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v2 + 8);
  v9(v0 + v4, v1);
  v9(v0 + v6, v1);
  v10 = *(v0 + v7 + 8);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

uint64_t closure #1 in MOScreenTimeProvider.fetchHourlyAppUsage(startDate:endDate:completion:)partial apply(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Date() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = (v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = *v12;
  v14 = v12[1];
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:)partial apply;

  return closure #1 in MOScreenTimeProvider.fetchHourlyAppUsage(startDate:endDate:completion:)(a1, v10, v11, v1 + v7, v1 + v9, v13, v14);
}

void hdbscanResult::hdbscanResult(hdbscanResult *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t hdbscanResult::hdbscanResult(uint64_t a1, char **a2, char **a3, char **a4, char a5)
{
  *(a1 + 48) = 0u;
  v9 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v10 = (a1 + 24);
  *a1 = 0u;
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  if (v10 != a3)
  {
    std::vector<outlierScore>::__assign_with_size[abi:ne200100]<outlierScore*,outlierScore*>(v10, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  if (v9 != a4)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v9, *a4, a4[1], (a4[1] - *a4) >> 3);
  }

  *(a1 + 72) = a5;
  return a1;
}

void sub_1002398F0(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  hdbscanResult::hdbscanResult(v2, v1);
  _Unwind_Resume(a1);
}

void *std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<int>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<outlierScore>::__assign_with_size[abi:ne200100]<outlierScore*,outlierScore*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<outlierScore>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 4);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 4);
      v12 = v6[1];
    }

    v15 = a3 - v14;
    if (a3 != v14)
    {
      result = memmove(v12, v14, v15 - 4);
    }

    v16 = &v12[v15];
  }

  v6[1] = v16;
  return result;
}

void std::vector<outlierScore>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<outlierScore>>(a1, a2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<outlierScore>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<double>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void outlierScore::outlierScore(outlierScore *this, double a2, double a3, int a4)
{
  *this = a3;
  *(this + 1) = a2;
  *(this + 4) = a4;
}

{
  *this = a3;
  *(this + 1) = a2;
  *(this + 4) = a4;
}

BOOL outlierScore::operator<(uint64_t a1, uint64_t a2)
{
  v4[0] = a1 + 8;
  v4[1] = a1;
  v4[2] = a1 + 16;
  v3[0] = a2 + 8;
  v3[1] = a2;
  v3[2] = a2 + 16;
  return std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(v4, v3) == 0xFF;
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(uint64_t a1, uint64_t a2)
{
  v2 = **a1;
  v3 = **a2;
  if (v2 == v3)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    LODWORD(v4) = -127;
  }

  if (v2 > v3)
  {
    LODWORD(v4) = 1;
  }

  if (v2 < v3)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = v4;
  }

  if (!v4)
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    v7 = *v5 < *v6;
    v8 = *v5 <= *v6;
    if (*v5 == *v6)
    {
      LODWORD(v4) = 0;
    }

    else
    {
      LODWORD(v4) = -127;
    }

    if (!v8)
    {
      LODWORD(v4) = 1;
    }

    if (v7)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = v4;
    }

    if (!v4)
    {
      v9 = **(a1 + 16);
      v10 = **(a2 + 16);
      v11 = v9 == v10;
      if (v9 < v10)
      {
        LODWORD(v4) = -1;
      }

      else
      {
        LODWORD(v4) = 1;
      }

      if (v11)
      {
        return 0;
      }

      else
      {
        return v4;
      }
    }
  }

  return v4;
}

void cluster::cluster(cluster *this)
{
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = ++cluster::counter;
}

{
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = ++cluster::counter;
}

void cluster::cluster(cluster *this, int a2, cluster *a3, double a4, int a5)
{
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = ++cluster::counter;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 1) = a4;
  *(this + 6) = a5;
  *(this + 31) = a2;
  *(this + 32) = 0;
  *(this + 13) = a3;
  *(this + 14) = 0;
  *(this + 12) = 0x7FEFFFFFFFFFFFFFLL;
  if (a3)
  {
    *(a3 + 120) = 1;
  }

  *(this + 120) = 0;
  std::vector<cluster *>::resize(this + 9, 0);
}

void sub_100239FE0(_Unwind_Exception *a1)
{
  v6 = *v3;
  if (*v3)
  {
    *(v2 + 80) = v6;
    operator delete(v6);
  }

  std::__tree<int>::destroy(v1, *v4);
  _Unwind_Resume(a1);
}

void std::vector<cluster *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<cluster *>::__append(a1, a2 - v2);
  }
}

uint64_t cluster::detachPoints(uint64_t this, int a2, double a3)
{
  v3 = *(this + 24);
  *(this + 112) = *(this + 112) + a2 * (1.0 / a3 - 1.0 / *(this + 8));
  v4 = v3 - a2;
  *(this + 24) = v4;
  if (v4)
  {
    if (v4 < 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "Cluster cannot have less than 0 points.");
    }
  }

  else
  {
    *(this + 16) = a3;
  }

  return this;
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void cluster::propagate(cluster *this)
{
  v1 = *(this + 13);
  if (v1)
  {
    v2 = *(this + 12);
    if (v2 == 1.79769313e308)
    {
      v2 = *(this + 2);
      *(this + 12) = v2;
    }

    if (v2 < *(v1 + 96))
    {
      *(v1 + 96) = v2;
    }

    v3 = *(this + 10);
    if ((*(this + 120) & 1) == 0 || (v4 = *(this + 11), v3 > v4))
    {
      *(v1 + 44) += v3;
      v5 = *(this + 14) + *(v1 + 32);
LABEL_9:
      *(v1 + 32) = v5;
      v13 = this;
      std::vector<cluster *>::push_back[abi:ne200100](v1 + 72, &v13);
      return;
    }

    if (v3 >= v4)
    {
      if (v3 != v4)
      {
        return;
      }

      v10 = *(this + 14);
      v11 = *(this + 4);
      *(v1 + 44) += v3;
      v12 = *(v1 + 32);
      if (v10 >= v11)
      {
        v5 = v10 + v12;
        goto LABEL_9;
      }

      v6 = v11 + v12;
    }

    else
    {
      *(v1 + 44) += v4;
      v6 = *(this + 4) + *(v1 + 32);
    }

    *(v1 + 32) = v6;
    v7 = *(v1 + 80);
    v8 = *(this + 9);
    v9 = *(this + 10);

    std::vector<cluster *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cluster **>,std::__wrap_iter<cluster **>>(v1 + 72, v7, v8, v9, (v9 - v8) >> 3);
  }
}

void std::vector<cluster *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t *cluster::addPointsToVirtualChildCluster(uint64_t *result, void *a2)
{
  v2 = (a2 + 1);
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v4 = result;
    do
    {
      result = std::__tree<int>::__emplace_unique_key_args<int,int const&>((v4 + 6), v3 + 7);
      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return result;
}

BOOL cluster::virtualChildClusterConstraintsPoint(cluster *this, int a2)
{
  v4 = *(this + 7);
  v2 = this + 56;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 7) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 7) < a2)];
  }

  while (v3);
  if (v5 == v2 || *(v5 + 7) > a2)
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

void cluster::releaseVirtualChildCluster(cluster *this)
{
  v1 = (this + 56);
  std::__tree<int>::destroy(this + 48, *(this + 7));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

uint64_t *std::unique_ptr<cluster>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 72);
    if (v2)
    {
      *(v1 + 80) = v2;
      operator delete(v2);
    }

    std::__tree<int>::destroy(v1 + 48, *(v1 + 56));
    operator delete();
  }

  return result;
}

void std::vector<cluster *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

char *std::vector<cluster *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cluster **>,std::__wrap_iter<cluster **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t std::__split_buffer<std::unique_ptr<cluster>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<cluster>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<int>::destroy(a1, *a2);
    std::__tree<int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t *std::__tree<int>::__emplace_unique_key_args<int,int const&>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<int>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

double EuclideanDistance::computeDistance(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 3;
    v6 = 0.0;
    v7 = 1;
    do
    {
      if ((a3[1] - *a3) >> 3 <= v4)
      {
        break;
      }

      v8 = *(*a2 + 8 * v4) - *(*a3 + 8 * v4);
      v6 = v6 + v8 * v8;
      v4 = v7;
    }

    while (v5 > v7++);
  }

  else
  {
    v6 = 0.0;
  }

  return sqrt(v6);
}

uint64_t bitSet::get(bitSet *this, int a2)
{
  if (*(this + 1) <= a2)
  {
    return 0;
  }

  else
  {
    return (*(*this + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }
}

void bitSet::set(bitSet *this, int a2)
{
  v3 = a2;
  if (*(this + 1) <= a2)
  {
    std::vector<BOOL>::resize(this, a2 + 64, 0);
  }

  *(*this + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
}

void bitSet::ensure(bitSet *this, int a2)
{
  if (*(this + 1) <= a2)
  {
    std::vector<BOOL>::resize(this, a2 + 64, 0);
  }
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22, &v18);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = *a1 + 8 * (v4 >> 6);
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_10023AF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<BOOL>::reserve(uint64_t result, unint64_t a2)
{
  if (a2 > *(result + 16) << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_10023B044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 8);
  v10 = *a3;
  v11 = *(a3 + 8);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, &v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

void *std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(void *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = *(result + 2);
  v5 = *result;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4);
    v2 = a2 - v6;
    *result = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    result = memset(v5, 255, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *v3 = v8;
    *v8 |= 0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F);
  }

  return result;
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

void undirectedGraph::quicksortByEdgeWeight(undirectedGraph *this)
{
  v1 = (*(this + 8) - *(this + 7)) >> 3;
  if (v1 >= 2)
  {
    std::vector<int>::vector[abi:ne200100](v9, (v1 >> 1) & 0x3FFFFFFF);
    std::vector<int>::vector[abi:ne200100](__p, (v1 >> 1) & 0x3FFFFFFF);
    v3 = 0;
    *v9[0] = 0;
    *__p[0] = v1 - 1;
    do
    {
      v4 = *(v9[0] + v3);
      v5 = *(__p[0] + v3);
      v6 = undirectedGraph::selectPivotIndex(this, v4, v5);
      v7 = undirectedGraph::partition(this, v4, v5, v6);
      if (v7 <= v4 + 1)
      {
        --v3;
      }

      else
      {
        *(v9[0] + v3) = v4;
        *(__p[0] + v3) = v7 - 1;
      }

      if (v7 < (v5 - 1))
      {
        *(v9[0] + ++v3) = v7 + 1;
        *(__p[0] + v3) = v5;
      }
    }

    while ((v3 & 0x80000000) == 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v9[0])
    {
      v9[1] = v9[0];
      operator delete(v9[0]);
    }
  }
}

void sub_10023B658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t undirectedGraph::selectPivotIndex(undirectedGraph *this, uint64_t a2, unsigned int a3)
{
  if ((a2 - a3) < 2)
  {
    return a2;
  }

  v4 = *(this + 7);
  v5 = *(v4 + 8 * a2);
  v6 = a2 + (a3 - a2) / 2;
  v7 = *(v4 + 8 * v6);
  v8 = *(v4 + 8 * a3);
  if (v5 <= v7)
  {
    result = (a2 + (a3 - a2) / 2);
    if (v7 > v8)
    {
      if (v8 >= v5)
      {
        return a3;
      }

      else
      {
        return a2;
      }
    }
  }

  else
  {
    result = a2;
    if (v5 > v8)
    {
      if (v8 >= v7)
      {
        return a3;
      }

      else
      {
        return v6;
      }
    }
  }

  return result;
}

uint64_t undirectedGraph::partition(undirectedGraph *this, uint64_t a2, int a3, int a4)
{
  v4 = *(this + 7);
  v5 = *(v4 + 8 * a4);
  if (a4 != a3)
  {
    v6 = *(this + 1);
    v7 = *(v6 + 4 * a4);
    v8 = *(this + 4);
    v9 = *(v8 + 4 * a4);
    *(v6 + 4 * a4) = *(v6 + 4 * a3);
    *(v8 + 4 * a4) = *(v8 + 4 * a3);
    *(v4 + 8 * a4) = *(v4 + 8 * a3);
    *(v6 + 4 * a3) = v7;
    *(v8 + 4 * a3) = v9;
    *(v4 + 8 * a3) = v5;
  }

  if (a2 < a3)
  {
    v10 = a2;
    do
    {
      v11 = *(v4 + 8 * v10);
      if (v11 < v5)
      {
        if (v10 != a2)
        {
          v12 = *(this + 1);
          v13 = *(v12 + 4 * v10);
          v14 = *(this + 4);
          v15 = *(v14 + 4 * v10);
          *(v12 + 4 * v10) = *(v12 + 4 * a2);
          *(v14 + 4 * v10) = *(v14 + 4 * a2);
          *(v4 + 8 * v10) = *(v4 + 8 * a2);
          *(v12 + 4 * a2) = v13;
          *(v14 + 4 * a2) = v15;
          *(v4 + 8 * a2) = v11;
        }

        a2 = (a2 + 1);
      }

      ++v10;
    }

    while (a3 != v10);
  }

  if (a2 != a3)
  {
    v16 = *(this + 1);
    v17 = *(v16 + 4 * a2);
    v18 = *(this + 4);
    v19 = *(v18 + 4 * a2);
    v20 = *(v4 + 8 * a2);
    *(v16 + 4 * a2) = *(v16 + 4 * a3);
    *(v18 + 4 * a2) = *(v18 + 4 * a3);
    *(v4 + 8 * a2) = *(v4 + 8 * a3);
    *(v16 + 4 * a3) = v17;
    *(v18 + 4 * a3) = v19;
    *(v4 + 8 * a3) = v20;
  }

  return a2;
}

double undirectedGraph::swapEdges(undirectedGraph *this, int a2, int a3)
{
  if (a2 != a3)
  {
    v3 = *(this + 1);
    v4 = *(v3 + 4 * a2);
    v5 = *(this + 4);
    v6 = *(v5 + 4 * a2);
    v7 = *(this + 7);
    result = *(v7 + 8 * a2);
    *(v3 + 4 * a2) = *(v3 + 4 * a3);
    *(v5 + 4 * a2) = *(v5 + 4 * a3);
    *(v7 + 8 * a2) = *(v7 + 8 * a3);
    *(v3 + 4 * a3) = v4;
    *(v5 + 4 * a3) = v6;
    *(v7 + 8 * a3) = result;
  }

  return result;
}

void *std::vector<int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_10023B8C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *hdbscanConstraint::hdbscanConstraint(_DWORD *result, int a2, int a3, int a4)
{
  result[1] = a2;
  result[2] = a3;
  *result = a4;
  return result;
}

{
  result[1] = a2;
  result[2] = a3;
  *result = a4;
  return result;
}

double ManhattanDistance::computeDistance(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1] - *a2;
  if (!v3)
  {
    return 0.0;
  }

  v4 = 0;
  v5 = v3 >> 3;
  result = 0.0;
  v7 = 1;
  do
  {
    if ((a3[1] - *a3) >> 3 <= v4)
    {
      break;
    }

    result = result + vabdd_f64(*(*a2 + 8 * v4), *(*a3 + 8 * v4));
    v4 = v7;
  }

  while (v5 > v7++);
  return result;
}

void hdbscanStar::hdbscanAlgorithm::calculateCoreDistances(void *a1@<X0>, int a2@<W1>, void **a3@<X8>)
{
  v5 = -1431655765 * ((a1[1] - *a1) >> 3);
  std::vector<double>::vector[abi:ne200100](a3, v5);
  v6 = a2 - 1;
  if (a2 == 1)
  {
    if (v5 >= 1)
    {
      v7 = *a3;

      bzero(v7, 8 * (v5 & 0x7FFFFFFF));
    }
  }

  else if (v5 >= 1)
  {
    v8 = 0;
    v9 = a2 - 2;
    v10 = v5 & 0x7FFFFFFF;
    __len = 8 * (a2 - 1);
    do
    {
      std::vector<double>::vector[abi:ne200100](__b, v6);
      if (a2 >= 2)
      {
        memset_pattern16(__b[0], &unk_100323C60, __len);
      }

      v11 = 0;
      v12 = __b[0];
      v13 = __b[0] + 8 * v9;
      do
      {
        if (v8 != v11)
        {
          v14 = *(*(*a1 + 24 * v8) + 8 * v11);
          v15 = (__b[0] + __len - 8);
          v16 = a2;
          while (--v16 >= 1)
          {
            v17 = *v15--;
            if (v14 >= v17)
            {
              goto LABEL_17;
            }
          }

          v16 = v6 & (v6 >> 31);
LABEL_17:
          if (v16 < v6)
          {
            v18 = v13;
            v19 = a2 - 2;
            if (v9 > v16)
            {
              do
              {
                --v19;
                *v18 = *(v18 - 1);
                --v18;
              }

              while (v19 > v16);
            }

            v12[v16] = v14;
          }
        }

        ++v11;
      }

      while (v11 != v10);
      v20 = __b[0];
      *(*a3 + v8) = *(__b[0] + a2 - 2);
      __b[1] = v20;
      operator delete(v20);
      ++v8;
    }

    while (v8 != v10);
  }
}

void sub_10023BB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void hdbscanStar::hdbscanAlgorithm::constructMst(void *a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v7 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  if (a3)
  {
    v8 = -1431655765 * ((a1[1] - *a1) >> 3);
  }

  else
  {
    v8 = 0;
  }

  memset(v53, 0, 24);
  v9 = v7 - 1 + v8;
  std::vector<int>::vector[abi:ne200100](&v51, v9);
  std::vector<double>::vector[abi:ne200100](&__b, v9);
  if (v7 >= 2)
  {
    memset_pattern16(__b, &unk_100323C60, 8 * (v7 - 1));
  }

  v37 = v9;
  v36 = v4;
  bitSet::set(v53, v7 - 1);
  if (v7 >= 2)
  {
    v10 = 1;
    v11 = v7 - 1;
    do
    {
      v12 = 0;
      v13 = v11;
      v14 = v11;
      v11 = -1;
      v15 = 1.79769313e308;
      do
      {
        if (v13 != v12 && (bitSet::get(v53, v12) & 1) == 0)
        {
          v16 = *(*(*a1 + 24 * v14) + 8 * v12);
          if (*(*a2 + 8 * v14) > v16)
          {
            v16 = *(*a2 + 8 * v14);
          }

          v17 = *(*a2 + 8 * v12);
          if (v17 <= v16)
          {
            v17 = v16;
          }

          v18 = *(__b + v12);
          if (v17 < v18)
          {
            *(__b + v12) = v17;
            *(v51 + v12) = v13;
            v18 = v17;
          }

          if (v18 <= v15)
          {
            v11 = v12;
            v15 = v18;
          }
        }

        ++v12;
      }

      while ((v7 & 0x7FFFFFFF) != v12);
      bitSet::set(v53, v11);
      ++v10;
    }

    while (v10 != v7);
  }

  std::vector<int>::vector[abi:ne200100](&v47, v37);
  if (v7 >= 2)
  {
    v19 = 0;
    v20 = vdupq_n_s64((v7 - 1) - 1);
    v21 = xmmword_100323C40;
    v22 = xmmword_100323C50;
    v23 = v47 + 8;
    v24 = vdupq_n_s64(4uLL);
    do
    {
      v25 = vmovn_s64(vcgeq_u64(v20, v22));
      if (vuzp1_s16(v25, *v20.i8).u8[0])
      {
        *(v23 - 2) = v19;
      }

      if (vuzp1_s16(v25, *&v20).i8[2])
      {
        *(v23 - 1) = v19 + 1;
      }

      if (vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v21))).i32[1])
      {
        *v23 = v19 + 2;
        v23[1] = v19 + 3;
      }

      v19 += 4;
      v21 = vaddq_s64(v21, v24);
      v22 = vaddq_s64(v22, v24);
      v23 += 4;
    }

    while (((v7 + 2) & 0xFFFFFFFC) != v19);
  }

  if (v36)
  {
    v26 = v51;
    if (2 * v7 > v7)
    {
      v27 = 0;
      v28 = 2 * v7 - 1;
      v29 = *a2;
      if (v28 <= v7)
      {
        v28 = v7;
      }

      v30 = v28;
      v31 = 4 * v7 - 4;
      v32 = v47 + v31;
      v33 = v51 + v31;
      v34 = __b + 8 * v7 - 8;
      do
      {
        *&v33[4 * v27] = v27;
        *&v32[4 * v27] = v27;
        *&v34[8 * v27] = *(v29 + 8 * v27);
        ++v27;
      }

      while (v30 - v7 + 1 != v27);
    }
  }

  else
  {
    v26 = v51;
  }

  v44 = 0;
  v45 = 0;
  v46 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v44, v26, v52, (v52 - v26) >> 2);
  v41 = 0;
  v42 = 0;
  v43 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v41, v47, v48, (v48 - v47) >> 2);
  __p = 0;
  v39 = 0;
  v40 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, __b, v50, (v50 - __b) >> 3);
  undirectedGraph::undirectedGraph(a4, v7, &v44, &v41, &__p);
  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v47)
  {
    v48 = v47;
    operator delete(v47);
  }

  if (__b)
  {
    v50 = __b;
    operator delete(__b);
  }

  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  if (v53[0])
  {
    operator delete(v53[0]);
  }
}

void sub_10023BF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  if (a25)
  {
    operator delete(a25);
  }

  if (a28)
  {
    operator delete(a28);
  }

  v31 = *(v29 - 128);
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(exception_object);
}

void hdbscanStar::hdbscanAlgorithm::computeHierarchyAndClusterTree(undirectedGraph *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, cluster_factory *a8)
{
  undirectedGraph::getNumEdges(a1);
  NumVertices = undirectedGraph::getNumVertices(a1);
  std::vector<int>::vector[abi:ne200100](&v19, NumVertices);
  v10 = undirectedGraph::getNumVertices(a1);
  std::vector<int>::vector[abi:ne200100](&v17, v10);
  v11 = v17;
  if (v18 != v17)
  {
    v12 = v18 - v17;
    v13 = v19;
    if (v12 <= 1)
    {
      v12 = 1;
    }

    do
    {
      *v11++ = 1;
      *v13++ = 1;
      --v12;
    }

    while (v12);
  }

  v16 = 0;
  std::vector<cluster *>::push_back[abi:ne200100](a7, &v16);
  undirectedGraph::getNumVertices(a1);
  cluster_factory::createNewCluster(a8, 1, 0, NAN);
}

void sub_10023CD04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  v42 = *(v40 - 248);
  if (v42)
  {
    *(v40 - 240) = v42;
    operator delete(v42);
  }

  std::__tree<int>::destroy(v40 - 224, *(v40 - 216));
  std::__tree<int>::destroy(v40 - 200, *(v40 - 192));
  std::__tree<int>::destroy(v40 - 176, *(v40 - 168));
  v43 = *(v40 - 152);
  if (v43)
  {
    *(v40 - 144) = v43;
    operator delete(v43);
  }

  v44 = *(v40 - 128);
  if (v44)
  {
    *(v40 - 120) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

void hdbscanStar::hdbscanAlgorithm::calculateNumConstraintsSatisfied(void *a1, void *a2, uint64_t **a3, void *a4)
{
  v4 = *a3;
  v5 = a3[1];
  if (v5 != *a3)
  {
    v8 = a1;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v9 = a1 + 1;
    v10 = *a1;
    if (*a1 != a1 + 1)
    {
      do
      {
        v12 = *(*(*a2 + 8 * *(v10 + 7)) + 104);
        if (v12)
        {
          v14 = v67;
          v13 = v68;
          if (v67 != v68)
          {
            while (!cluster::operator==(v14, v12))
            {
              v14 += 34;
              if (v14 == v13)
              {
                v14 = v13;
                break;
              }
            }

            v13 = v68;
          }

          if (v14 == v13)
          {
            std::vector<cluster>::push_back[abi:ne200100](&v67, v12);
          }
        }

        v15 = v10[1];
        if (v15)
        {
          do
          {
            v16 = v15;
            v15 = *v15;
          }

          while (v15);
        }

        else
        {
          do
          {
            v16 = v10[2];
            v23 = *v16 == v10;
            v10 = v16;
          }

          while (!v23);
        }

        v10 = v16;
      }

      while (v16 != v9);
      v4 = *a3;
      v5 = a3[1];
    }

    if (v4 != v5)
    {
      v53 = v8;
      do
      {
        v17 = *v4;
        v66 = *(v4 + 2);
        v65 = v17;
        v18 = *(*a4 + 4 * hdbscanConstraint::getPointA(&v65));
        v19 = *(*a4 + 4 * hdbscanConstraint::getPointB(&v65));
        if (hdbscanConstraint::getConstraintType(&v65) || v18 != v19)
        {
          if (hdbscanConstraint::getConstraintType(&v65) == 1)
          {
            v23 = v18 && v18 == v19;
            if (!v23)
            {
              if (v18)
              {
                v24 = *v8;
                if (*v8 != v9)
                {
                  while (*(v24 + 7) != v18)
                  {
                    v25 = v24[1];
                    if (v25)
                    {
                      do
                      {
                        v26 = v25;
                        v25 = *v25;
                      }

                      while (v25);
                    }

                    else
                    {
                      do
                      {
                        v26 = v24[2];
                        v23 = *v26 == v24;
                        v24 = v26;
                      }

                      while (!v23);
                    }

                    v24 = v26;
                    if (v26 == v9)
                    {
                      goto LABEL_50;
                    }
                  }

                  if (v24 != v9)
                  {
                    cluster::addConstraintsSatisfied(*(*a2 + 8 * v18), 1);
                  }
                }
              }

LABEL_50:
              if (v19)
              {
                v27 = *v8;
                if (*v8 != v9)
                {
                  while (*(v27 + 7) != v18)
                  {
                    v28 = v27[1];
                    if (v28)
                    {
                      do
                      {
                        v29 = v28;
                        v28 = *v28;
                      }

                      while (v28);
                    }

                    else
                    {
                      do
                      {
                        v29 = v27[2];
                        v23 = *v29 == v27;
                        v27 = v29;
                      }

                      while (!v23);
                    }

                    v27 = v29;
                    if (v29 == v9)
                    {
                      goto LABEL_62;
                    }
                  }

                  if (v27 != v9)
                  {
                    cluster::addConstraintsSatisfied(*(*a2 + 8 * v19), 1);
                  }
                }
              }

LABEL_62:
              if (!v18)
              {
                v30 = v68;
                if (v67 != v68)
                {
                  v31 = (v67 + 12);
                  while (1)
                  {
                    v32 = *(v31 - 48);
                    v33 = *(v31 - 16);
                    v55 = *(v31 - 32);
                    v56 = v33;
                    v54 = v32;
                    std::set<int>::set[abi:ne200100](&v57, v31);
                    v34 = v31 - 48;
                    __p = 0;
                    v60 = 0;
                    v61 = 0;
                    std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(&__p, *(v31 + 24), *(v31 + 32), (*(v31 + 32) - *(v31 + 24)) >> 3);
                    v35 = *(v31 + 48);
                    v36 = *(v31 + 64);
                    v64 = *(v31 + 80);
                    v62 = v35;
                    v63 = v36;
                    PointA = hdbscanConstraint::getPointA(&v65);
                    if (cluster::virtualChildClusterConstraintsPoint(&v54, PointA))
                    {
                      break;
                    }

                    if (__p)
                    {
                      v60 = __p;
                      operator delete(__p);
                    }

                    std::__tree<int>::destroy(&v57, v58);
                    v31 += 136;
                    if ((v34 + 136) == v30)
                    {
                      goto LABEL_63;
                    }
                  }

                  cluster::addVirtualChildConstraintsSatisfied(&v54, 1);
                  if (__p)
                  {
                    v60 = __p;
                    operator delete(__p);
                  }

                  std::__tree<int>::destroy(&v57, v58);
                }
              }

LABEL_63:
              v8 = v53;
              if (!v19)
              {
                v38 = v68;
                if (v67 != v68)
                {
                  v39 = (v67 + 12);
                  while (1)
                  {
                    v40 = *(v39 - 48);
                    v41 = *(v39 - 16);
                    v55 = *(v39 - 32);
                    v56 = v41;
                    v54 = v40;
                    std::set<int>::set[abi:ne200100](&v57, v39);
                    v42 = v39 - 48;
                    __p = 0;
                    v60 = 0;
                    v61 = 0;
                    std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(&__p, *(v39 + 24), *(v39 + 32), (*(v39 + 32) - *(v39 + 24)) >> 3);
                    v43 = *(v39 + 48);
                    v44 = *(v39 + 64);
                    v64 = *(v39 + 80);
                    v62 = v43;
                    v63 = v44;
                    PointB = hdbscanConstraint::getPointB(&v65);
                    if (cluster::virtualChildClusterConstraintsPoint(&v54, PointB))
                    {
                      break;
                    }

                    if (__p)
                    {
                      v60 = __p;
                      operator delete(__p);
                    }

                    std::__tree<int>::destroy(&v57, v58);
                    v39 += 136;
                    if ((v42 + 136) == v38)
                    {
                      goto LABEL_64;
                    }
                  }

                  cluster::addVirtualChildConstraintsSatisfied(&v54, 1);
                  if (__p)
                  {
                    v60 = __p;
                    operator delete(__p);
                  }

                  std::__tree<int>::destroy(&v57, v58);
                }
              }
            }
          }
        }

        else
        {
          v20 = *v8;
          if (*v8 != v9)
          {
            while (*(v20 + 7) != v18)
            {
              v21 = v20[1];
              if (v21)
              {
                do
                {
                  v22 = v21;
                  v21 = *v21;
                }

                while (v21);
              }

              else
              {
                do
                {
                  v22 = v20[2];
                  v23 = *v22 == v20;
                  v20 = v22;
                }

                while (!v23);
              }

              v20 = v22;
              if (v22 == v9)
              {
                goto LABEL_64;
              }
            }

            if (v20 != v9)
            {
              cluster::addConstraintsSatisfied(*(*a2 + 8 * v18), 2);
            }
          }
        }

LABEL_64:
        v4 = (v4 + 12);
      }

      while (v4 != v5);
    }

    v46 = v68;
    if (v67 != v68)
    {
      v47 = (v67 + 12);
      do
      {
        v48 = *(v47 - 48);
        v49 = *(v47 - 16);
        v55 = *(v47 - 32);
        v56 = v49;
        v54 = v48;
        std::set<int>::set[abi:ne200100](&v57, v47);
        v50 = v47 - 48;
        __p = 0;
        v60 = 0;
        v61 = 0;
        std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(&__p, *(v47 + 24), *(v47 + 32), (*(v47 + 32) - *(v47 + 24)) >> 3);
        v51 = *(v47 + 48);
        v52 = *(v47 + 64);
        v64 = *(v47 + 80);
        v62 = v51;
        v63 = v52;
        cluster::releaseVirtualChildCluster(&v54);
        if (__p)
        {
          v60 = __p;
          operator delete(__p);
        }

        std::__tree<int>::destroy(&v57, v58);
        v47 += 136;
      }

      while ((v50 + 136) != v46);
    }

    *&v54 = &v67;
    std::vector<cluster>::__destroy_vector::operator()[abi:ne200100](&v54);
  }
}

void sub_10023D36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  cluster::~cluster(&a11);
  a11 = (v11 - 112);
  std::vector<cluster>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t hdbscanStar::hdbscanAlgorithm::createNewCluster(uint64_t a1, uint64_t *a2, cluster *this, int a4, cluster_factory *a5, double a6)
{
  v11 = *a1;
  if (*a1 != a1 + 8)
  {
    v12 = *a2;
    do
    {
      *(v12 + 4 * *(v11 + 7)) = a4;
      v13 = v11[1];
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v11[2];
          v15 = *v14 == v11;
          v11 = v14;
        }

        while (!v15);
      }

      v11 = v14;
    }

    while (v14 != (a1 + 8));
  }

  cluster::detachPoints(this, *(a1 + 16), a6);
  if (a4)
  {
    v16 = *(a1 + 16);

    cluster_factory::createNewCluster(a5, a4, this, a6);
  }

  std::set<int>::set[abi:ne200100](v18, a1);
  cluster::addPointsToVirtualChildCluster(this, v18);
  std::__tree<int>::destroy(v18, v18[1]);
  return 0;
}

uint64_t std::vector<std::vector<int>>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void hdbscanStar::hdbscanAlgorithm::findProminentClusters(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = *(*a1 + 8);
  v34 = 0;
  v35 = 0;
  v33 = 0;
  std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(&v33, *(v7 + 72), *(v7 + 80), (*(v7 + 80) - *(v7 + 72)) >> 3);
  std::vector<int>::vector[abi:ne200100](a4, a3);
  v31 = 0;
  v32 = 0;
  v30 = &v31;
  v8 = v33;
  if (v33 != v34)
  {
    do
    {
      v9 = *(*v8 + 128);
      LODWORD(v24) = v9;
      for (i = v31; i; i = *i)
      {
        v11 = *(i + 8);
        if (v9 >= v11)
        {
          if (v11 >= v9)
          {
            break;
          }

          ++i;
        }
      }

      __p = &v24;
      v12 = std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(&v30, &v24);
      std::vector<int>::push_back[abi:ne200100](v12 + 5, (*v8 + 124));
      v8 += 8;
    }

    while (v8 != v34);
    while (v32)
    {
      v13 = v30;
      __p = 0;
      v28 = 0;
      v29 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__p, v30[5], v30[6], (v30[6] - v30[5]) >> 2);
      v14 = *(v13 + 8);
      std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__erase_unique<int>(&v30, v13 + 8);
      v15 = (*a2 + 24 * v14);
      v25 = 0;
      v26 = 0;
      v24 = 0;
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v24, *v15, v15[1], (v15[1] - *v15) >> 2);
      v16 = v24;
      if (v25 != v24)
      {
        v17 = 0;
        v18 = (v25 - v24) >> 2;
        v19 = __p;
        v20 = v28;
        v21 = *a4;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v22 = *&v16[4 * v17];
          v23 = v19;
          if (v19 != v20)
          {
            v23 = v19;
            while (*v23 != v22)
            {
              if (++v23 == v20)
              {
                goto LABEL_19;
              }
            }
          }

          if (v23 != v20)
          {
            *(v21 + 4 * v17) = v22;
          }

LABEL_19:
          ++v17;
        }

        while (v17 != v18);
      }

      if (v16)
      {
        v25 = v16;
        operator delete(v16);
      }

      if (__p)
      {
        v28 = __p;
        operator delete(__p);
      }
    }
  }

  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(&v30, v31);
  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }
}

void sub_10023D788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::push_back[abi:ne200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void hdbscanStar::hdbscanAlgorithm::findMembershipScore(void *a1@<X0>, uint64_t **a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1] - *a1;
  v6 = v5 >> 2;
  __src = 0x7FEFFFFFFFFFFFFFLL;
  std::vector<double>::vector[abi:ne200100](a3, (v5 >> 2));
  if (v6 >= 1)
  {
    v7 = 0;
    while (*(*a3 + 8 * v7) != 1.79769313e308)
    {
LABEL_53:
      ++v7;
LABEL_54:
      if (v7 >= v6)
      {
        return;
      }
    }

    v8 = 0;
    v9 = a1[1];
    v10 = (*a1 + 4 * v7);
    v11 = *v10;
    __src = 0;
    v52 = 0;
    v53 = 0;
    do
    {
      if (v10 != v9)
      {
        while (*v10 != v11)
        {
          if (++v10 == v9)
          {
            goto LABEL_22;
          }
        }
      }

      if (v10 == v9)
      {
        break;
      }

      v12 = (v10 - *a1) >> 2;
      if (v8 >= v53)
      {
        v13 = __src;
        v14 = v8 - __src;
        v15 = (v8 - __src) >> 2;
        v16 = v15 + 1;
        if ((v15 + 1) >> 62)
        {
          std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
        }

        v17 = v53 - __src;
        if ((v53 - __src) >> 1 > v16)
        {
          v16 = v17 >> 1;
        }

        v18 = v17 >= 0x7FFFFFFFFFFFFFFCLL;
        v19 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v18)
        {
          v19 = v16;
        }

        if (v19)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v19);
        }

        v20 = v15;
        v21 = (4 * v15);
        v22 = &v21[-v20];
        *v21 = v12;
        v8 = (v21 + 1);
        memcpy(v22, v13, v14);
        v23 = __src;
        __src = v22;
        v52 = v8;
        v53 = 0;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        *v8 = v12;
        v8 += 4;
      }

      v52 = v8;
      ++v10;
      v9 = a1[1];
    }

    while (v10 != v9);
LABEL_22:
    if (v11)
    {
      std::vector<double>::vector[abi:ne200100](&__p, (v8 - __src) >> 2);
      v24 = __src;
      v25 = __p;
      if (v52 != __src)
      {
        v26 = (v52 - __src) >> 2;
        v27 = *a2;
        if (v26 <= 1)
        {
          v26 = 1;
        }

        v28 = __p;
        do
        {
          v29 = *v27++;
          *v28++ = v29;
          --v26;
        }

        while (v26);
      }

      v30 = v25 + 1;
      v31 = v25 == v50 || v30 == v50;
      v32 = v25;
      if (!v31)
      {
        v33 = *v25;
        v32 = v25;
        v34 = v25 + 1;
        do
        {
          v35 = *v34++;
          v36 = v35;
          if (v33 < v35)
          {
            v33 = v36;
            v32 = v30;
          }

          v30 = v34;
        }

        while (v34 != v50);
      }

      if (v25 == v50)
      {
        if (!v25)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v37 = *v32;
        v38 = v50 - v25;
        v39 = *a3;
        if (v38 <= 1)
        {
          v38 = 1;
        }

        v40 = v25;
        do
        {
          v41 = *v40++;
          v42 = (v37 - v41) / v37;
          v43 = *v24;
          v24 += 4;
          *(v39 + 8 * v43) = v42;
          --v38;
        }

        while (v38);
      }

      v50 = v25;
      operator delete(v25);
      v24 = __src;
    }

    else
    {
      v24 = __src;
      if (v8 != __src)
      {
        v44 = (v8 - __src) >> 2;
        v45 = *a3;
        if (v44 <= 1)
        {
          v44 = 1;
        }

        v46 = __src;
        do
        {
          v47 = *v46++;
          *(v45 + 8 * v47) = 0;
          --v44;
        }

        while (v44);
      }

      ++v7;
    }

LABEL_50:
    if (v24)
    {
      v52 = v24;
      operator delete(v24);
    }

    if (!v11)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }
}

void sub_10023DBB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t hdbscanStar::hdbscanAlgorithm::propagateTree(uint64_t **a1)
{
  v18 = 0;
  v19 = 0;
  v17 = &v18;
  memset(__p, 0, sizeof(__p));
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    goto LABEL_17;
  }

  do
  {
    v3 = *v1;
    if (*v1 && (*(v3 + 120) & 1) == 0)
    {
      v15 = *(v3 + 124);
      std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__erase_unique<int>(&v17, &v15);
      v13 = v15;
      v14 = v3;
      std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__emplace_unique_key_args<int,std::pair<int const,cluster *>>(&v17, &v13);
      bitSet::set(__p, v15);
    }

    ++v1;
  }

  while (v1 != v2);
  if (!v19)
  {
LABEL_17:
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = v18;
      v6 = &v18;
      if (v18)
      {
        do
        {
          v7 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v7 = v6[2];
          v8 = *v7 == v6;
          v6 = v7;
        }

        while (v8);
      }

      v9 = v7[5];
      std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__erase_unique<int>(&v17, v7 + 8);
      cluster::propagate(v9);
      v10 = *(v9 + 112) == INFINITY;
      v11 = *(v9 + 104);
      if (v11)
      {
        v15 = *(v11 + 124);
        if ((bitSet::get(__p, v15) & 1) == 0)
        {
          std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__erase_unique<int>(&v17, &v15);
          v13 = v15;
          v14 = v11;
          std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__emplace_unique_key_args<int,std::pair<int const,cluster *>>(&v17, &v13);
          bitSet::set(__p, v15);
        }
      }

      v4 |= v10;
    }

    while (v19);
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  std::__tree<int>::destroy(&v17, v18);
  return v4 & 1;
}

void sub_10023DD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, void *a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<int>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

void hdbscanStar::hdbscanAlgorithm::calculateOutlierScores(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = a2[1] - *a2;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  if ((v6 >> 3) < 1)
  {
    v18 = 0;
    v28 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (v6 >> 3) & 0x7FFFFFFF;
    do
    {
      v13 = *(*a2 + 8 * v11);
      if (v13 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = 1.0 - *(*(*a1 + 8 * *(*a3 + 4 * v11)) + 96) / v13;
      }

      outlierScore::outlierScore(&v31, v14, *(*a4 + 8 * v11), v11);
      v16 = *(a5 + 8);
      v15 = *(a5 + 16);
      if (v16 >= v15)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v16 - *a5) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v15 - *a5) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<outlierScore>>(a5, v22);
        }

        v23 = 24 * v19;
        v24 = v31;
        *(v23 + 16) = v32;
        *v23 = v24;
        v18 = 24 * v19 + 24;
        v25 = *(a5 + 8) - *a5;
        v26 = v23 - v25;
        memcpy((v23 - v25), *a5, v25);
        v27 = *a5;
        *a5 = v26;
        *(a5 + 8) = v18;
        *(a5 + 16) = 0;
        if (v27)
        {
          operator delete(v27);
        }
      }

      else
      {
        v17 = v31;
        *(v16 + 16) = v32;
        *v16 = v17;
        v18 = v16 + 24;
      }

      *(a5 + 8) = v18;
      ++v11;
    }

    while (v12 != v11);
    v28 = *a5;
  }

  v29 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v18 - v28) >> 3));
  if (v18 == v28)
  {
    v30 = 0;
  }

  else
  {
    v30 = v29;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,false>(v28, v18, &v31, v30, 1);
}

void sub_10023DFC8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<cluster>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<cluster>::__emplace_back_slow_path<cluster const&>(a1, a2);
  }

  else
  {
    std::vector<cluster>::__construct_one_at_end[abi:ne200100]<cluster const&>(a1, a2);
    result = v3 + 136;
  }

  *(a1 + 8) = result;
  return result;
}

void cluster::~cluster(cluster *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    *(this + 10) = v2;
    operator delete(v2);
  }

  std::__tree<int>::destroy(this + 48, *(this + 7));
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_10023E0C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_10023E144(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t undirectedGraph::undirectedGraph(uint64_t a1, int a2, char **a3, char **a4, char **a5)
{
  *(a1 + 8) = 0u;
  v9 = (a1 + 8);
  *(a1 + 56) = 0u;
  v10 = (a1 + 56);
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  v11 = (a1 + 32);
  v12 = (a1 + 80);
  *(a1 + 24) = 0u;
  *a1 = a2;
  if ((a1 + 8) != a3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((a1 + 8), *a3, a3[1], (a3[1] - *a3) >> 2);
  }

  if (v11 != a4)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v11, *a4, a4[1], (a4[1] - *a4) >> 2);
  }

  if (v10 != a5)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v10, *a5, a5[1], (a5[1] - *a5) >> 3);
  }

  std::vector<std::vector<int>>::resize(v12, a2);
  v13 = *(a1 + 64) - *(a1 + 56);
  if ((v13 >> 3) >= 1)
  {
    v14 = 0;
    v15 = (v13 >> 3) & 0x7FFFFFFF;
    do
    {
      std::vector<int>::push_back[abi:ne200100]((*v12 + 24 * *(*v9 + v14)), &(*v11)[v14]);
      v16 = *&(*v11)[v14];
      if (*(*v9 + v14) != v16)
      {
        std::vector<int>::push_back[abi:ne200100]((*v12 + 24 * v16), (*v9 + v14));
      }

      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return a1;
}

void sub_10023E2B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](va);
  v7 = *v5;
  if (*v5)
  {
    v2[8] = v7;
    operator delete(v7);
  }

  v8 = *v4;
  if (*v4)
  {
    v2[5] = v8;
    operator delete(v8);
  }

  v9 = *v3;
  if (*v3)
  {
    v2[2] = v9;
    operator delete(v9);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::vector<int>>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    std::vector<std::vector<int>>::__append(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      v8 = a1[1];
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v3 - 16) = v9;
          operator delete(v9);
        }

        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

void std::vector<std::vector<int>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    v17 = *(a1 + 16);
    *(a1 + 16) = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::vector<int>>::~__split_buffer(v18);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::vector<int>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<int>>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    v5 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }
}

void *std::__list_imp<int>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  result = std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(v3, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 8) = v3 + 3;
  return result;
}

uint64_t std::vector<std::vector<int>>::__emplace_back_slow_path<std::vector<int> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<int>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 2);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<int>>::~__split_buffer(&v14);
  return v8;
}

void sub_10023E7D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<cluster *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_10023E848(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<cluster *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(a1, a2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void sub_10023E95C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,false>(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = (a2 - 24);
  v74 = (a2 - 48);
  v9 = (a2 - 72);
  v10 = a1;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    a1 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (outlierScore::operator<(a2 - 24, v10))
      {
        goto LABEL_76;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(v10, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(v10, a2);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,outlierScore *>(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 24 * (v14 >> 1);
    if (v13 >= 0xC01)
    {
      v17 = outlierScore::operator<(v10 + 24 * v15, v10);
      v18 = outlierScore::operator<(a2 - 24, a1 + 24 * v15);
      if (v17)
      {
        if (v18)
        {
          v100 = *(a1 + 16);
          v76 = *a1;
          v19 = *v8;
          *(a1 + 16) = *(a2 - 8);
          *a1 = v19;
          goto LABEL_27;
        }

        v106 = *(a1 + 16);
        v82 = *a1;
        v27 = *v16;
        *(a1 + 16) = *(v16 + 16);
        *a1 = v27;
        *(v16 + 16) = v106;
        *v16 = v82;
        if (outlierScore::operator<(a2 - 24, a1 + 24 * v15))
        {
          v100 = *(v16 + 16);
          v76 = *v16;
          v28 = *v8;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 8) = v100;
        }
      }

      else if (v18)
      {
        v102 = *(v16 + 16);
        v78 = *v16;
        v23 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 8) = v102;
        if (outlierScore::operator<(a1 + 24 * v15, a1))
        {
          v103 = *(a1 + 16);
          v79 = *a1;
          v24 = *v16;
          *(a1 + 16) = *(v16 + 16);
          *a1 = v24;
          *(v16 + 16) = v103;
          *v16 = v79;
        }
      }

      v29 = a1 + 24 * v15 - 24;
      v30 = outlierScore::operator<(v29, a1 + 24);
      v31 = outlierScore::operator<(v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(a1 + 24);
          v33 = *(a1 + 40);
          v34 = *(a2 - 32);
          *(a1 + 24) = *v74;
          *(a1 + 40) = v34;
          *(a2 - 32) = v33;
          *v74 = v32;
        }

        else
        {
          v86 = *(a1 + 24);
          v110 = *(a1 + 40);
          v39 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v39;
          *(a1 + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (outlierScore::operator<(v74, v29))
          {
            v111 = *(a1 + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(a1 + 24 * v15 - 8) = *(a2 - 32);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 32) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(a1 + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(a1 + 24 * v15 - 8) = *(a2 - 32);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 32) = v107;
        if (outlierScore::operator<(v29, a1 + 24))
        {
          v84 = *(a1 + 24);
          v108 = *(a1 + 40);
          v36 = *(a1 + 24 * v15 - 8);
          *(a1 + 24) = *v29;
          *(a1 + 40) = v36;
          *(a1 + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = a1 + 24 * v15;
      v42 = outlierScore::operator<(v41 + 24, a1 + 48);
      v43 = outlierScore::operator<(a2 - 72, v41 + 24);
      if (v42)
      {
        if (v43)
        {
          v44 = *(a1 + 48);
          v45 = *(a1 + 64);
          v46 = *(a2 - 56);
          *(a1 + 48) = *v9;
          *(a1 + 64) = v46;
          *(a2 - 56) = v45;
          *v9 = v44;
        }

        else
        {
          v90 = *(a1 + 48);
          v114 = *(a1 + 64);
          v49 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v49;
          *(v41 + 40) = v114;
          *(v41 + 24) = v90;
          if (outlierScore::operator<(a2 - 72, v41 + 24))
          {
            v115 = *(v41 + 40);
            v91 = *(v41 + 24);
            v50 = *v9;
            *(v41 + 40) = *(a2 - 56);
            *(v41 + 24) = v50;
            *v9 = v91;
            *(a2 - 56) = v115;
          }
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 56);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 56) = v112;
        if (outlierScore::operator<(v41 + 24, a1 + 48))
        {
          v89 = *(a1 + 48);
          v113 = *(a1 + 64);
          v48 = *(v41 + 40);
          *(a1 + 48) = *(v41 + 24);
          *(a1 + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = outlierScore::operator<(v16, v29);
      v52 = outlierScore::operator<(v41 + 24, v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_55;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = *(v16 + 16);
        *(v16 + 16) = v119;
        *v16 = v95;
        if (outlierScore::operator<(v41 + 24, v16))
        {
          v116 = *(v16 + 16);
          v92 = *v16;
          *v16 = *(v41 + 24);
          *(v16 + 16) = *(v41 + 40);
LABEL_55:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = *(v16 + 16);
        v93 = *v16;
        *v16 = *(v41 + 24);
        *(v16 + 16) = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (outlierScore::operator<(v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = *(v16 + 16);
          *(v16 + 16) = v118;
          *v16 = v94;
        }
      }

      v120 = *(a1 + 16);
      v96 = *a1;
      v53 = *v16;
      *(a1 + 16) = *(v16 + 16);
      *a1 = v53;
      *(v16 + 16) = v120;
      *v16 = v96;
      goto LABEL_57;
    }

    v20 = outlierScore::operator<(v10, v10 + 24 * v15);
    v21 = outlierScore::operator<(a2 - 24, a1);
    if (v20)
    {
      if (v21)
      {
        v101 = *(v16 + 16);
        v77 = *v16;
        v22 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 8) = v101;
        goto LABEL_57;
      }

      v109 = *(v16 + 16);
      v85 = *v16;
      v37 = *a1;
      *(v16 + 16) = *(a1 + 16);
      *v16 = v37;
      *(a1 + 16) = v109;
      *a1 = v85;
      if (outlierScore::operator<(a2 - 24, a1))
      {
        v101 = *(a1 + 16);
        v77 = *a1;
        v38 = *v8;
        *(a1 + 16) = *(a2 - 8);
        *a1 = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(a1 + 16);
      v80 = *a1;
      v25 = *v8;
      *(a1 + 16) = *(a2 - 8);
      *a1 = v25;
      *v8 = v80;
      *(a2 - 8) = v104;
      if (outlierScore::operator<(a1, a1 + 24 * v15))
      {
        v105 = *(v16 + 16);
        v81 = *v16;
        v26 = *a1;
        *(v16 + 16) = *(a1 + 16);
        *v16 = v26;
        *(a1 + 16) = v105;
        *a1 = v81;
      }
    }

LABEL_57:
    if ((a5 & 1) == 0 && !outlierScore::operator<(a1 - 24, a1))
    {
      v10 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,outlierScore *,std::__less<void,void> &>(a1, a2);
      goto LABEL_64;
    }

    v54 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,outlierScore *,std::__less<void,void> &>(a1, a2);
    if ((v55 & 1) == 0)
    {
      goto LABEL_62;
    }

    v56 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(a1, v54);
    v10 = v54 + 24;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(v54 + 24, a2))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_62:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,false>(a1, v54, a3, -v12, a5 & 1);
      v10 = v54 + 24;
LABEL_64:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(v10, v10 + 24, v10 + 48, a2 - 24);
      return;
    }

    if (v14 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(v10, v10 + 24, v10 + 48, v10 + 72);
      if (!outlierScore::operator<(a2 - 24, v10 + 72))
      {
        return;
      }

      v62 = *(v10 + 72);
      v63 = *(v10 + 88);
      v64 = *(a2 - 8);
      *(v10 + 72) = *v8;
      *(v10 + 88) = v64;
      *(a2 - 8) = v63;
      *v8 = v62;
      if (!outlierScore::operator<(v10 + 72, v10 + 48))
      {
        return;
      }

      v65 = *(v10 + 64);
      v66 = *(v10 + 48);
      *(v10 + 48) = *(v10 + 72);
      *(v10 + 64) = *(v10 + 88);
      *(v10 + 72) = v66;
      *(v10 + 88) = v65;
      if (!outlierScore::operator<(v10 + 48, v10 + 24))
      {
        return;
      }

      v67 = *(v10 + 40);
      v68 = *(v10 + 24);
      *(v10 + 24) = *(v10 + 48);
      *(v10 + 40) = *(v10 + 64);
      *(v10 + 48) = v68;
      *(v10 + 64) = v67;
      goto LABEL_90;
    }

    goto LABEL_10;
  }

  v57 = outlierScore::operator<(v10 + 24, v10);
  v58 = outlierScore::operator<(a2 - 24, v10 + 24);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = *(v10 + 24);
    v72 = *(v10 + 40);
    v73 = *(a2 - 8);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v73;
    *(a2 - 8) = v72;
    *v8 = v71;
LABEL_90:
    if (outlierScore::operator<(v10 + 24, v10))
    {
      v123 = *(v10 + 16);
      v99 = *v10;
      *v10 = *(v10 + 24);
      *(v10 + 16) = *(v10 + 40);
      *(v10 + 24) = v99;
      *(v10 + 40) = v123;
    }

    return;
  }

  if (v58)
  {
LABEL_76:
    v122 = *(v10 + 16);
    v98 = *v10;
    v70 = *v8;
    *(v10 + 16) = *(a2 - 8);
    *v10 = v70;
    *v8 = v98;
    *(a2 - 8) = v122;
    return;
  }

  v121 = *(v10 + 16);
  v97 = *v10;
  *v10 = *(v10 + 24);
  *(v10 + 16) = *(v10 + 40);
  *(v10 + 24) = v97;
  *(v10 + 40) = v121;
  if (outlierScore::operator<(a2 - 24, v10 + 24))
  {
    v59 = *(v10 + 24);
    v60 = *(v10 + 40);
    v61 = *(a2 - 8);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v61;
    *(a2 - 8) = v60;
    *v8 = v59;
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = outlierScore::operator<(a2, a1);
  v9 = outlierScore::operator<(a3, a2);
  if (v8)
  {
    if (v9)
    {
      v10 = *a1;
      v11 = *(a1 + 16);
      v12 = *(a3 + 16);
      *a1 = *a3;
      *(a1 + 16) = v12;
LABEL_9:
      *(a3 + 16) = v11;
      *a3 = v10;
      goto LABEL_10;
    }

    v19 = *a1;
    v20 = *(a1 + 16);
    v21 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v21;
    *(a2 + 16) = v20;
    *a2 = v19;
    if (outlierScore::operator<(a3, a2))
    {
      v10 = *a2;
      v11 = *(a2 + 16);
      v22 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v22;
      goto LABEL_9;
    }
  }

  else if (v9)
  {
    v13 = *a2;
    v14 = *(a2 + 16);
    v15 = *(a3 + 16);
    *a2 = *a3;
    *(a2 + 16) = v15;
    *(a3 + 16) = v14;
    *a3 = v13;
    if (outlierScore::operator<(a2, a1))
    {
      v16 = *a1;
      v17 = *(a1 + 16);
      v18 = *(a2 + 16);
      *a1 = *a2;
      *(a1 + 16) = v18;
      *(a2 + 16) = v17;
      *a2 = v16;
    }
  }

LABEL_10:
  if (outlierScore::operator<(a4, a3))
  {
    v24 = *a3;
    v25 = *(a3 + 16);
    v26 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v26;
    *(a4 + 16) = v25;
    *a4 = v24;
    if (outlierScore::operator<(a3, a2))
    {
      v27 = *a2;
      v28 = *(a2 + 16);
      v29 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v29;
      *(a3 + 16) = v28;
      *a3 = v27;
      if (outlierScore::operator<(a2, a1))
      {
        result = *a1;
        v30 = *(a1 + 16);
        v31 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v31;
        *(a2 + 16) = v30;
        *a2 = result;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v15 = v2;
    v16 = v3;
    v5 = result;
    v6 = result + 24;
    if (result + 24 != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v9 = v8;
        v8 = v6;
        result = outlierScore::operator<(v6, v9);
        if (result)
        {
          v13 = *v8;
          v14 = *(v8 + 16);
          v10 = v7;
          while (1)
          {
            v11 = v5 + v10;
            *(v11 + 24) = *(v5 + v10);
            *(v11 + 40) = *(v5 + v10 + 16);
            if (!v10)
            {
              break;
            }

            v10 -= 24;
            result = outlierScore::operator<(&v13, v10 + v5);
            if ((result & 1) == 0)
            {
              v12 = v5 + v10 + 24;
              goto LABEL_10;
            }
          }

          v12 = v5;
LABEL_10:
          *v12 = v13;
          *(v12 + 16) = v14;
        }

        v6 = v8 + 24;
        v7 += 24;
      }

      while (v8 + 24 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v12 = v2;
    v13 = v3;
    v5 = result;
    v6 = result + 24;
    if (result + 24 != a2)
    {
      v7 = result - 24;
      do
      {
        v8 = v5;
        v5 = v6;
        result = outlierScore::operator<(v6, v8);
        if (result)
        {
          v10 = *v5;
          v11 = *(v5 + 16);
          v9 = v7;
          do
          {
            *(v9 + 48) = *(v9 + 24);
            *(v9 + 64) = *(v9 + 40);
            result = outlierScore::operator<(&v10, v9);
            v9 -= 24;
          }

          while ((result & 1) != 0);
          *(v9 + 48) = v10;
          *(v9 + 64) = v11;
        }

        v6 = v5 + 24;
        v7 += 24;
      }

      while (v5 + 24 != a2);
    }
  }

  return result;
}

unint64_t std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,outlierScore *,std::__less<void,void> &>(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v14 = *a1;
  v15 = *(a1 + 16);
  if (outlierScore::operator<(&v14, a2 - 24))
  {
    v4 = a1;
    do
    {
      v4 += 24;
    }

    while (!outlierScore::operator<(&v14, v4));
  }

  else
  {
    v5 = a1 + 24;
    do
    {
      v4 = v5;
      if (v5 >= v2)
      {
        break;
      }

      v6 = outlierScore::operator<(&v14, v5);
      v5 = v4 + 24;
    }

    while (!v6);
  }

  if (v4 < v2)
  {
    do
    {
      v2 -= 24;
    }

    while (outlierScore::operator<(&v14, v2));
  }

  while (v4 < v2)
  {
    v7 = *v4;
    v17 = *(v4 + 16);
    v16 = v7;
    v8 = *v2;
    *(v4 + 16) = *(v2 + 16);
    *v4 = v8;
    v9 = v16;
    *(v2 + 16) = v17;
    *v2 = v9;
    do
    {
      v4 += 24;
    }

    while (!outlierScore::operator<(&v14, v4));
    do
    {
      v2 -= 24;
    }

    while (outlierScore::operator<(&v14, v2));
  }

  v10 = (v4 - 24);
  if (v4 - 24 != a1)
  {
    v11 = *v10;
    *(a1 + 16) = *(v4 - 8);
    *a1 = v11;
  }

  v12 = v14;
  *(v4 - 8) = v15;
  *v10 = v12;
  return v4;
}

uint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,outlierScore *,std::__less<void,void> &>(__int128 *a1, unint64_t a2)
{
  v4 = 0;
  v15 = *a1;
  v16 = *(a1 + 2);
  do
  {
    v4 += 24;
  }

  while (outlierScore::operator<(a1 + v4, &v15));
  v5 = a1 + v4;
  v6 = a1 + v4 - 24;
  if (v4 == 24)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (!outlierScore::operator<(a2, &v15));
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!outlierScore::operator<(a2, &v15));
  }

  if (v5 < a2)
  {
    v7 = a1 + v4;
    v8 = a2;
    do
    {
      v17 = *v7;
      v9 = v17;
      v18 = *(v7 + 16);
      v10 = v18;
      v11 = *(v8 + 16);
      *v7 = *v8;
      *(v7 + 16) = v11;
      *(v8 + 16) = v10;
      *v8 = v9;
      do
      {
        v7 += 24;
      }

      while (outlierScore::operator<(v7, &v15));
      do
      {
        v8 -= 24;
      }

      while (!outlierScore::operator<(v8, &v15));
    }

    while (v7 < v8);
    v6 = v7 - 24;
  }

  if (v6 != a1)
  {
    v12 = *v6;
    *(a1 + 4) = *(v6 + 16);
    *a1 = v12;
  }

  v13 = v15;
  *(v6 + 16) = v16;
  *v6 = v13;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = a2 - 24;
        v14 = outlierScore::operator<(a1 + 24, a1);
        v15 = outlierScore::operator<(v5, a1 + 24);
        if (v14)
        {
          if (!v15)
          {
            v33 = *(a1 + 16);
            v34 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v34;
            *(a1 + 40) = v33;
            if (!outlierScore::operator<(v5, a1 + 24))
            {
              return 1;
            }

            v16 = *(a1 + 24);
            v17 = *(a1 + 40);
            v35 = *(v5 + 16);
            *(a1 + 24) = *v5;
            *(a1 + 40) = v35;
            goto LABEL_16;
          }

LABEL_15:
          v16 = *a1;
          v17 = *(a1 + 16);
          v18 = *(v5 + 16);
          *a1 = *v5;
          *(a1 + 16) = v18;
LABEL_16:
          *(v5 + 16) = v17;
          *v5 = v16;
          return 1;
        }

        if (!v15)
        {
          return 1;
        }

        v24 = *(a1 + 24);
        v25 = *(a1 + 40);
        v26 = *(v5 + 16);
        *(a1 + 24) = *v5;
        *(a1 + 40) = v26;
        *(v5 + 16) = v25;
        *v5 = v24;
        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(a1, a1 + 24, a1 + 48, a2 - 24);
        return 1;
      case 5:
        v6 = a2 - 24;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(a1, a1 + 24, a1 + 48, a1 + 72);
        if (!outlierScore::operator<(v6, a1 + 72))
        {
          return 1;
        }

        v7 = *(a1 + 72);
        v8 = *(a1 + 88);
        v9 = *(v6 + 16);
        *(a1 + 72) = *v6;
        *(a1 + 88) = v9;
        *(v6 + 16) = v8;
        *v6 = v7;
        if (!outlierScore::operator<(a1 + 72, a1 + 48))
        {
          return 1;
        }

        v10 = *(a1 + 64);
        v11 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v11;
        *(a1 + 88) = v10;
        if (!outlierScore::operator<(a1 + 48, a1 + 24))
        {
          return 1;
        }

        v12 = *(a1 + 40);
        v13 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v13;
        *(a1 + 64) = v12;
        break;
      default:
        goto LABEL_17;
    }

    if (outlierScore::operator<(a1 + 24, a1))
    {
      v27 = *(a1 + 16);
      v28 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v28;
      *(a1 + 40) = v27;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = a2 - 24;
    if (!outlierScore::operator<(a2 - 24, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v19 = (a1 + 48);
  v20 = outlierScore::operator<(a1 + 24, a1);
  v21 = outlierScore::operator<(a1 + 48, a1 + 24);
  if (v20)
  {
    if (v21)
    {
      v22 = *(a1 + 16);
      v23 = *a1;
      *a1 = *v19;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v36 = *(a1 + 16);
      v37 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v37;
      *(a1 + 40) = v36;
      if (!outlierScore::operator<(a1 + 48, a1 + 24))
      {
        goto LABEL_33;
      }

      v22 = *(a1 + 40);
      v23 = *(a1 + 24);
      *(a1 + 24) = *v19;
      *(a1 + 40) = *(a1 + 64);
    }

    *v19 = v23;
    *(a1 + 64) = v22;
  }

  else if (v21)
  {
    v29 = *(a1 + 40);
    v30 = *(a1 + 24);
    *(a1 + 24) = *v19;
    *(a1 + 40) = *(a1 + 64);
    *v19 = v30;
    *(a1 + 64) = v29;
    if (outlierScore::operator<(a1 + 24, a1))
    {
      v31 = *(a1 + 16);
      v32 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v32;
      *(a1 + 40) = v31;
    }
  }

LABEL_33:
  v38 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v39 = 0;
  v40 = 0;
  while (1)
  {
    if (outlierScore::operator<(v38, v19))
    {
      v45 = *v38;
      v46 = *(v38 + 16);
      v41 = v39;
      while (1)
      {
        v42 = a1 + v41;
        *(v42 + 72) = *(a1 + v41 + 48);
        *(v42 + 88) = *(a1 + v41 + 64);
        if (v41 == -48)
        {
          break;
        }

        v41 -= 24;
        if (!outlierScore::operator<(&v45, v42 + 24))
        {
          v43 = a1 + v41 + 72;
          goto LABEL_41;
        }
      }

      v43 = a1;
LABEL_41:
      *v43 = v45;
      *(v43 + 16) = v46;
      if (++v40 == 8)
      {
        return v38 + 24 == a2;
      }
    }

    v19 = v38;
    v39 += 24;
    v38 += 24;
    if (v38 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,outlierScore *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 24 * v10;
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (outlierScore::operator<(v13, a1))
        {
          v14 = *v13;
          v15 = *(v13 + 16);
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 16) = v16;
          *(a1 + 16) = v15;
          *a1 = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = a2 - 24;
      do
      {
        v23 = *a1;
        v24 = *(a1 + 16);
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(a1, a4, v17);
        if (v18 == v19)
        {
          *v19 = v23;
          *(v19 + 4) = v24;
        }

        else
        {
          v20 = *v18;
          *(v19 + 4) = *(v18 + 16);
          *v19 = v20;
          *v18 = v23;
          *(v18 + 16) = v24;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(a1, v19 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v19 - a1 + 24) >> 3));
        }

        v18 -= 24;
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v21 = v4;
    v22 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v11 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v12 = a1 + 24 * v11;
      v13 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v13 < a3 && outlierScore::operator<(a1 + 24 * v11, v12 + 24))
      {
        v12 += 24;
        v11 = v13;
      }

      if (!outlierScore::operator<(v12, v7))
      {
        v19 = *v7;
        v20 = *(v7 + 16);
        do
        {
          v15 = v12;
          v16 = *v12;
          *(v7 + 16) = *(v12 + 16);
          *v7 = v16;
          if (v9 < v11)
          {
            break;
          }

          v17 = (2 * v11) | 1;
          v12 = a1 + 24 * v17;
          v18 = 2 * v11 + 2;
          if (v18 < a3 && outlierScore::operator<(a1 + 24 * v17, v12 + 24))
          {
            v12 += 24;
            v17 = v18;
          }

          v7 = v15;
          v11 = v17;
        }

        while (!outlierScore::operator<(v12, &v19));
        result = v19;
        v15[1].n128_u32[0] = v20;
        *v15 = result;
      }
    }
  }

  return result;
}

__int128 *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 24 * v5;
    v8 = (v7 + 24);
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = (v7 + 48);
      if (outlierScore::operator<(v7 + 24, v7 + 48))
      {
        v8 = v11;
        v9 = v10;
      }
    }

    v12 = *v8;
    *(a1 + 4) = *(v8 + 4);
    *a1 = v12;
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v15 = v4;
    v16 = v5;
    v7 = (a4 - 2) >> 1;
    v8 = a1 + 24 * v7;
    v9 = a2 - 24;
    if (outlierScore::operator<(v8, a2 - 24))
    {
      v13 = *v9;
      v14 = *(v9 + 16);
      do
      {
        v11 = v8;
        v12 = *v8;
        *(v9 + 16) = *(v8 + 16);
        *v9 = v12;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = a1 + 24 * v7;
        v9 = v11;
      }

      while (outlierScore::operator<(v8, &v13));
      result = *&v13;
      *v11 = v13;
      *(v11 + 16) = v14;
    }
  }

  return result;
}

__n128 std::vector<cluster>::__construct_one_at_end[abi:ne200100]<cluster const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[2];
  *(v4 + 16) = a2[1];
  *(v4 + 32) = v6;
  *v4 = v5;
  std::set<int>::set[abi:ne200100]((v4 + 48), (a2 + 3));
  *(v4 + 72) = 0;
  *(v4 + 80) = 0;
  *(v4 + 88) = 0;
  std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(v4 + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  result = a2[6];
  v8 = a2[7];
  *(v4 + 128) = *(a2 + 32);
  *(v4 + 96) = result;
  *(v4 + 112) = v8;
  *(a1 + 8) = v4 + 136;
  return result;
}

void sub_1002402FC(_Unwind_Exception *a1)
{
  std::__tree<int>::destroy(v2 + 48, *(v2 + 56));
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

uint64_t std::vector<cluster>::__emplace_back_slow_path<cluster const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((*(a1 + 16) - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v6 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<cluster>>(a1, v6);
  }

  v7 = 136 * v2;
  v18 = 0;
  v19 = v7;
  v20 = v7;
  v8 = *a2;
  v9 = a2[2];
  *(v7 + 16) = a2[1];
  *(v7 + 32) = v9;
  *v7 = v8;
  std::set<int>::set[abi:ne200100]((v7 + 48), (a2 + 3));
  *(v7 + 72) = 0;
  *(v7 + 80) = 0;
  *(v7 + 88) = 0;
  std::vector<cluster *>::__init_with_size[abi:ne200100]<cluster **,cluster **>(v7 + 72, *(a2 + 9), *(a2 + 10), (*(a2 + 10) - *(a2 + 9)) >> 3);
  v10 = a2[6];
  v11 = a2[7];
  *(v7 + 128) = *(a2 + 32);
  *(v7 + 96) = v10;
  *(v7 + 112) = v11;
  *&v20 = v20 + 136;
  v12 = *(a1 + 8);
  v13 = v19 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cluster>,cluster*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<cluster>::~__split_buffer(&v18);
  return v17;
}

void sub_100240478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__tree<int>::destroy(v4 + 48, *(v4 + 56));
  std::__split_buffer<cluster>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<cluster>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1E1E1E1E1E1E1E2)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<cluster>,cluster*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::construct_at[abi:ne200100]<cluster,cluster,cluster*>(a4, v7);
      v7 = (v7 + 136);
      a4 += 136;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      std::__destroy_at[abi:ne200100]<cluster,0>(v6);
      v6 = (v6 + 136);
    }
  }
}

__n128 std::construct_at[abi:ne200100]<cluster,cluster,cluster*>(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  *(a1 + 48) = *(a2 + 6);
  v4 = a2 + 7;
  v5 = *(a2 + 7);
  *(a1 + 56) = v5;
  v6 = a1 + 56;
  v7 = *(a2 + 8);
  *(a1 + 64) = v7;
  if (v7)
  {
    *(v5 + 16) = v6;
    *(a2 + 6) = v4;
    *v4 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *(a1 + 48) = v6;
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  result = a2[6];
  v9 = a2[7];
  *(a1 + 128) = *(a2 + 32);
  *(a1 + 96) = result;
  *(a1 + 112) = v9;
  return result;
}

void std::__destroy_at[abi:ne200100]<cluster,0>(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[7];

  std::__tree<int>::destroy((a1 + 6), v3);
}

uint64_t std::__split_buffer<cluster>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::__destroy_at[abi:ne200100]<cluster,0>((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<cluster>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 17;
        std::__destroy_at[abi:ne200100]<cluster,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__tree<int>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (!v19)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v19 + 24) == 1)
      {
LABEL_55:
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      else
      {
        v18 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_72;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_68;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v24)
  {
    goto LABEL_65;
  }

  if (v24[3])
  {
    v25 = v7[1];
LABEL_65:
    *(v25 + 24) = 1;
    *(v7 + 24) = 0;
    v33 = *v25;
    v7[1] = *v25;
    if (v33)
    {
      *(v33 + 16) = v7;
    }

    v34 = v7[2];
    v25[2] = v34;
    v34[*v34 != v7] = v25;
    *v25 = v7;
    v7[2] = v25;
    v24 = v7;
  }

  else
  {
LABEL_68:
    v25 = v7;
  }

  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_72:
  *(v29 + 16) = v30;
  return result;
}

uint64_t **std::__tree<int>::__assign_multi<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<int>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 7) = *(v9 + 7);
          std::__tree<int>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<int>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<int>::__emplace_multi<int const&>();
  }

  return result;
}

void sub_100240C44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<int>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 28) >= *(v4 + 7))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<int>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

void *std::__tree<int>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<int>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<int>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<int>::destroy(*a1, v2);
  }

  return a1;
}

uint64_t *std::list<int>::__assign_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  for (i = a1[1]; a2 != a3 && i != a1; i = i[1])
  {
    *(i + 4) = *(a2 + 16);
    a2 = *(a2 + 8);
  }

  if (i == a1)
  {
    return std::list<int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(a1, a1, a2, a3);
  }

  else
  {
    return std::list<int>::erase(a1, i, a1);
  }
}

uint64_t std::list<int>::__insert_with_sentinel[abi:ne200100]<std::__list_const_iterator<int,void *>,std::__list_const_iterator<int,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_100240F5C(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t *std::list<int>::erase(uint64_t a1, uint64_t *__p, uint64_t *a3)
{
  if (__p != a3)
  {
    v5 = *(*a3 + 8);
    v6 = *__p;
    *(v6 + 8) = v5;
    *v5 = v6;
    do
    {
      v7 = __p[1];
      --*(a1 + 16);
      operator delete(__p);
      __p = v7;
    }

    while (v7 != a3);
  }

  return a3;
}

void std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__erase_unique<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::erase(uint64_t **a1, uint64_t *a2)
{
  v3 = std::__tree<int>::__remove_node_pointer(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    a2[6] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

uint64_t std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__erase_unique<int>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= v3)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < v3));
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<int>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__emplace_unique_key_args<int,std::pair<int const,cluster *>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::set<int>::set[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::set<int>::insert[abi:ne200100]<std::__tree_const_iterator<int,std::__tree_node<int,void *> *,long>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<int>::__emplace_hint_unique_key_args<int,int const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<int>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<int>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void Hdbscan::loadDataSet(uint64_t a1, char ***a2)
{
  v2 = (a1 + 80);
  if (v2 != a2)
  {
    std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }
}

void Hdbscan::loadDistanceMatrix(uint64_t a1, char ***a2)
{
  v2 = (a1 + 104);
  if (v2 != a2)
  {
    std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }
}

void Hdbscan::execute(char ***a1, int a2, int a3, std::string *__str)
{
  v22 = 0;
  v23 = 0;
  memset(v17, 0, sizeof(v17));
  memset(&v18, 0, sizeof(v18));
  v21 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v15[2] = v16;
  v15[0] = 0;
  v15[1] = 0;
  v13 = 0;
  v14 = v15;
  __src = 0;
  v12 = 0;
  if (&v17[3] != (a1 + 10))
  {
    std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(&v17[3], a1[10], a1[11], 0xAAAAAAAAAAAAAAABLL * (a1[11] - a1[10]));
  }

  v19 = a2;
  v20 = a3;
  std::string::operator=(&v18, __str);
  v8 = a1[13];
  if (v17 != (a1 + 13))
  {
    v9 = a1[14];
    if (v9 != v8)
    {
      std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v17, v8, v9, 0xAAAAAAAAAAAAAAABLL * (v9 - v8));
    }
  }

  hdbscanParameters::hdbscanParameters(v10, v17);
  hdbscanRunner::run(v10);
}

void sub_100241C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, char a37, void *a38)
{
  hdbscanParameters::~hdbscanParameters(&a10);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  std::__tree<int>::destroy(&a37, a38);
  std::__tree<int>::destroy(v38 - 232, *(v38 - 224));
  hdbscanParameters::~hdbscanParameters((v38 - 208));
  _Unwind_Resume(a1);
}

void hdbscanParameters::~hdbscanParameters(hdbscanParameters *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    *(this + 11) = v2;
    operator delete(v2);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  v3 = (this + 24);
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v3 = this;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void Hdbscan::displayResult(Hdbscan *this)
{
  v19 = 0;
  v20 = 0;
  v21 = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v19, *this, *(this + 1), (*(this + 1) - *this) >> 2);
  v22 = 0;
  v23 = 0;
  v24 = 0;
  std::vector<outlierScore>::__init_with_size[abi:ne200100]<outlierScore*,outlierScore*>(&v22, *(this + 3), *(this + 4), 0xAAAAAAAAAAAAAAABLL * ((*(this + 4) - *(this + 3)) >> 3));
  __p = 0;
  v26 = 0;
  v27 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *(this + 6), *(this + 7), (*(this + 7) - *(this + 6)) >> 3);
  v28 = *(this + 72);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "HDBSCAN clustering for ", 23);
  v2 = (*(this + 14) - *(this + 13)) >> 3;
  v3 = std::ostream::operator<<();
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, " objects.", 9);
  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v5 = std::locale::use_facet(&v29, &std::ctype<char>::id);
  (v5->__vftable[2].~facet_0)(v5, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  v6 = v19;
  if (v20 != v19)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = v6[v7];
      v10 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
      v7 = v8;
      v6 = v19;
      ++v8;
    }

    while (v7 < (v20 - v19) >> 2);
  }

  std::ios_base::getloc((&std::cout + std::cout.__vftable[-2].~basic_ostream_0));
  v11 = std::locale::use_facet(&v29, &std::ctype<char>::id);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  std::ios_base::getloc((&std::cout + std::cout.__vftable[-2].~basic_ostream_0));
  v12 = std::locale::use_facet(&v29, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cout, "The Clustering contains ", 24);
  v13 = *(this + 57);
  v14 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " clusters with ", 15);
  v15 = *(this + 56);
  v16 = std::ostream::operator<<();
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " noise Points.", 14);
  std::ios_base::getloc((v17 + *(*v17 - 24)));
  v18 = std::locale::use_facet(&v29, &std::ctype<char>::id);
  (v18->__vftable[2].~facet_0)(v18, 10);
  std::locale::~locale(&v29);
  std::ostream::put();
  std::ostream::flush();
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }
}

void sub_1002420C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<std::vector<double>>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::vector<double>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(&v18, a2, (a2 + v11), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<double>>,std::vector<double>*,std::vector<double>*,std::vector<double>*>(a1, (a2 + v11), a3, a1[1]);
  }
}

void std::vector<std::vector<double>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<double>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char **std::__copy_impl::operator()[abi:ne200100]<std::vector<double> *,std::vector<double> *,std::vector<double> *>(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a4, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void hdbscanParameters::hdbscanParameters(hdbscanParameters *this, const hdbscanParameters *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(this, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(this + 24, *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v4 = *(a2 + 3);
    *(this + 8) = *(a2 + 8);
    *(this + 3) = v4;
  }

  v5 = *(a2 + 9);
  *(this + 10) = 0;
  *(this + 9) = v5;
  *(this + 11) = 0;
  *(this + 12) = 0;
  std::vector<hdbscanConstraint>::__init_with_size[abi:ne200100]<hdbscanConstraint*,hdbscanConstraint*>(this + 80, *(a2 + 10), *(a2 + 11), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 11) - *(a2 + 10)) >> 2));
}

void sub_100242440(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

uint64_t std::vector<hdbscanConstraint>::__init_with_size[abi:ne200100]<hdbscanConstraint*,hdbscanConstraint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<hdbscanConstraint>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_100242588(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<hdbscanConstraint>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<hdbscanConstraint>>(a1, a2);
  }

  std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<hdbscanConstraint>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void hdbscanResult::~hdbscanResult(hdbscanResult *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

uint64_t std::vector<outlierScore>::__init_with_size[abi:ne200100]<outlierScore*,outlierScore*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<outlierScore>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1002426FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<int,int>,std::__map_value_compare<int,std::__value_type<int,int>,std::less<int>,true>,std::allocator<std::__value_type<int,int>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v13 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100242928(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100242908);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_100242B5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void hdbscanRunner::run(uint64_t a1)
{
  v2 = *(a1 + 32) - *(a1 + 24);
  if (!v2)
  {
    v2 = *(a1 + 8) - *a1;
  }

  v3 = 0xAAAAAAAAAAAAAAABLL * (v2 >> 3);
  hdbscanResult::hdbscanResult(&v64);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = v3;
  if (v5 == *a1)
  {
    std::vector<std::vector<double>>::vector[abi:ne200100](&v41, v3);
    if (v3 >= 1)
    {
      v7 = 0;
      v8 = (a1 + 48);
      while (1)
      {
        v9 = v6;
        std::vector<double>::resize(&v41[3 * v7], v6);
        if (v7)
        {
          break;
        }

LABEL_44:
        ++v7;
        v6 = v9;
        if (v7 == (v3 & 0x7FFFFFFF))
        {
          goto LABEL_45;
        }
      }

      v10 = 0;
      v11 = 0;
      while (*(a1 + 71) < 0)
      {
        v12 = *(a1 + 56);
        if (!v12)
        {
          goto LABEL_23;
        }

        if (v12 == 9)
        {
          v13 = *v8;
          if (**v8 != 0x616564696C637545 || *(*v8 + 8) != 110)
          {
LABEL_35:
            v23 = *v13;
            v24 = *(v13 + 8);
            if (v23 != 0x61747461686E614DLL || v24 != 110)
            {
              goto LABEL_29;
            }

            v44 = &off_100341658;
            v26 = (*(a1 + 24) + 24 * v7);
            v51 = 0;
            v49 = 0;
            v50 = 0;
            std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v49, *v26, v26[1], (v26[1] - *v26) >> 3);
            v27 = (*(a1 + 24) + v10);
            v48 = 0;
            v46 = 0;
            v47 = 0;
            std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v46, *v27, v27[1], (v27[1] - *v27) >> 3);
            v17 = ManhattanDistance::computeDistance(&v44, &v49, &v46);
            if (v46)
            {
              v47 = v46;
              operator delete(v46);
            }

            v18 = v49;
            if (v49)
            {
              v50 = v49;
LABEL_27:
              operator delete(v18);
            }

LABEL_28:
            v21 = v41;
            *(v41[3 * v7] + v11) = v17;
            *(v21[v10 / 8] + v7) = v17;
            goto LABEL_29;
          }

LABEL_19:
          v44 = &off_100341608;
          v15 = (*(a1 + 24) + 24 * v7);
          v56 = 0;
          v57 = 0;
          v55 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v55, *v15, v15[1], (v15[1] - *v15) >> 3);
          v16 = (*(a1 + 24) + v10);
          v54 = 0;
          __p = 0;
          v53 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *v16, v16[1], (v16[1] - *v16) >> 3);
          v17 = EuclideanDistance::computeDistance(&v44, &v55, &__p);
          if (__p)
          {
            v53 = __p;
            operator delete(__p);
          }

          v18 = v55;
          if (v55)
          {
            v56 = v55;
            goto LABEL_27;
          }

          goto LABEL_28;
        }

LABEL_29:
        ++v11;
        v10 += 24;
        if (v7 == v11)
        {
          goto LABEL_44;
        }
      }

      if (*(a1 + 71) != 9)
      {
        if (*(a1 + 71))
        {
          goto LABEL_29;
        }

LABEL_23:
        v44 = &off_100341608;
        v19 = (*(a1 + 24) + 24 * v7);
        v62 = 0;
        v63 = 0;
        v61 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v61, *v19, v19[1], (v19[1] - *v19) >> 3);
        v20 = (*(a1 + 24) + v10);
        v59 = 0;
        v60 = 0;
        v58 = 0;
        std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v58, *v20, v20[1], (v20[1] - *v20) >> 3);
        v17 = EuclideanDistance::computeDistance(&v44, &v61, &v58);
        if (v58)
        {
          v59 = v58;
          operator delete(v58);
        }

        v18 = v61;
        if (v61)
        {
          v62 = v61;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v22 = *v8 == 0x616564696C637545 && *(a1 + 56) == 110;
      v13 = (a1 + 48);
      if (!v22)
      {
        goto LABEL_35;
      }

      goto LABEL_19;
    }

LABEL_45:
    if (&v41 != a1)
    {
      std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(a1, v41, v42, 0xAAAAAAAAAAAAAAABLL * ((v42 - v41) >> 3));
    }

    v44 = &v41;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v44);
    v4 = *a1;
    v5 = *(a1 + 8);
  }

  memset(v43, 0, sizeof(v43));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v43, v4, v5, 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3));
  hdbscanStar::hdbscanAlgorithm::calculateCoreDistances(v43, *(a1 + 72), &v44);
  v41 = v43;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v41);
  memset(v40, 0, sizeof(v40));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v40, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v37, v44, v45, (v45 - v44) >> 3);
  hdbscanStar::hdbscanAlgorithm::constructMst(v40, &v37, 1, &v41);
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  v36 = v40;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v36);
  undirectedGraph::quicksortByEdgeWeight(&v41);
  std::vector<double>::vector[abi:ne200100](&v36, v6);
  std::vector<int>::vector[abi:ne200100](&v35, v6);
  memset(v34, 0, sizeof(v34));
  memset(v33, 0, sizeof(v33));
  memset(v32, 0, sizeof(v32));
  v28 = *(a1 + 76);
  v29 = *(a1 + 80);
  v30 = *(a1 + 88);
  memset(v31, 0, sizeof(v31));
  std::vector<hdbscanConstraint>::__init_with_size[abi:ne200100]<hdbscanConstraint*,hdbscanConstraint*>(v31, v29, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 2));
  hdbscanStar::hdbscanAlgorithm::computeHierarchyAndClusterTree(&v41, v28, v31, v34, &v36, &v35, v33, v32);
}

void sub_100243324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x230] = &a63;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x230]);
  hdbscanResult::~hdbscanResult((v63 - 184));
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<cluster>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<cluster>>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::vector<std::unique_ptr<cluster>>::__base_destruct_at_end[abi:ne200100](uint64_t result, void *a2)
{
  v2 = *(result + 8);
  while (v2 != a2)
  {
    v4 = *--v2;
    v3 = v4;
    *v2 = 0;
    if (v4)
    {
      v5 = *(v3 + 72);
      if (v5)
      {
        *(v3 + 80) = v5;
        operator delete(v5);
      }

      std::__tree<int>::destroy(v3 + 48, *(v3 + 56));
      operator delete();
    }
  }

  *(result + 8) = a2;
  return result;
}

void undirectedGraph::~undirectedGraph(undirectedGraph *this)
{
  v5 = (this + 80);
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

id _MOErrorInvalidParameterCreate(uint64_t a1)
{
  v1 = [NSString stringWithFormat:@"Invalid parameter not satisfying: %@", a1, NSLocalizedDescriptionKey];
  v6 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  v3 = [NSError errorWithDomain:@"MOErrorDomain" code:7 userInfo:v2];

  return v3;
}

void main_cold_1()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_4(&_mh_execute_header, v2, v3, "Unable to getrlimit: [%i] %s", v4, v5, v6, v7, v8);
}

void main_cold_2()
{
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_1_4(&_mh_execute_header, v2, v3, "Unable to setrlimit: [%i] %s", v4, v5, v6, v7, v8);
}

void main_cold_4(NSObject *a1)
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"Closing momentsd" value:&stru_1003416B0 table:0];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a1, OS_LOG_TYPE_DEBUG, "%@", &v4, 0xCu);
}

void _MODiagnosticReporter_NotificationHandler_cold_1(uint64_t a1, NSObject *a2)
{
  v3 = [NSNumber numberWithUnsignedLong:a1];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "_MODiagnosticReporter_NotificationHandler with flags %@", &v4, 0xCu);
}

void hdbscanResult::hdbscanResult(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;

    operator delete(v4);
  }
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v0 = Measurement._bridgeToObjectiveC()();
  result._doubleValue = v2;
  result._unit = v1;
  result.super.isa = v0;
  return result;
}

Swift::String __swiftcall NSLocalizedString(_:tableName:bundle:value:comment:)(Swift::String _, Swift::String_optional tableName, NSBundle bundle, Swift::String value, Swift::String comment)
{
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(_._countAndFlagsBits, _._object, tableName.value._countAndFlagsBits, tableName.value._object, bundle.super.isa, value._countAndFlagsBits, value._object, comment._countAndFlagsBits);
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  v4 = _CLLocationCoordinate2DMake(latitude, longitude);
  v3 = v4.longitude;
  v2 = v4.latitude;
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}