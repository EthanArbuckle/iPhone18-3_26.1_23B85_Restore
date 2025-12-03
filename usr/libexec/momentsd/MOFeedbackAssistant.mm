@interface MOFeedbackAssistant
+ (void)triggerFeedbackAssistantFlowWithFlowIdentifier:(id)identifier;
@end

@implementation MOFeedbackAssistant

+ (void)triggerFeedbackAssistantFlowWithFlowIdentifier:(id)identifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v8;
  v13[5] = v10;
  v13[6] = ObjCClassMetadata;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v7, &closure #1 in static MOFeedbackAssistant.triggerFeedbackAssistantFlow(flowIdentifier:)partial apply, v13);
}

@end