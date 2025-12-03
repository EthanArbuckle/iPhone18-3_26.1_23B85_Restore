@interface MCCSecretAgentService
- (void)clearAllUserOverridesWithTimestamp:(double)timestamp completion:(id)completion;
- (void)getPKCategoryForDomain:(id)domain completion:(id)completion;
- (void)isCategorizationSupportedForLocale:(id)locale completion:(id)completion;
- (void)notifyFullSyncCategoryOverrides:(id)overrides;
- (void)notifyNewOldCategoryChange:(id)change timestamp:(double)timestamp;
- (void)notifyWebRule:(id)rule;
- (void)pingWithcompletion:(id)withcompletion;
- (void)predictCommerceEmailWithContext:(id)context completion:(id)completion;
- (void)registerCategoryRulesCallbackListener:(id)listener notificationTypes:(unint64_t)types completion:(id)completion;
- (void)syncNewOldCategoryTimestamps:(id)timestamps;
- (void)syncRecategorizationRules:(id)rules completion:(id)completion;
@end

@implementation MCCSecretAgentService

- (void)pingWithcompletion:(id)withcompletion
{
  v4 = _Block_copy(withcompletion);
  _Block_copy(v4);
  selfCopy = self;
  specialized MCCSecretAgentService.pingWithcompletion(_:)(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)predictCommerceEmailWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  contextCopy = context;
  selfCopy = self;
  specialized MCCSecretAgentService.predictCommerceEmail(with:completion:)(contextCopy, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)getPKCategoryForDomain:(id)domain completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  specialized MCCSecretAgentService.getPKCategory(forDomain:completion:)(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)isCategorizationSupportedForLocale:(id)locale completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  specialized MCCSecretAgentService.isCategorizationSupported(forLocale:completion:)(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)registerCategoryRulesCallbackListener:(id)listener notificationTypes:(unint64_t)types completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  _Block_copy(v8);
  listenerCopy = listener;
  selfCopy = self;
  specialized CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:)(listenerCopy, types, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)syncRecategorizationRules:(id)rules completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for RCOverrideRule, RCOverrideRule_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  specialized MCCSecretAgentService.syncRecategorizationRules(_:completion:)(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)clearAllUserOverridesWithTimestamp:(double)timestamp completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  specialized MCCSecretAgentService.clearAllUserOverrides(withTimestamp:completion:)(selfCopy, v6, timestamp);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)syncNewOldCategoryTimestamps:(id)timestamps
{
  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  MCCSecretAgentService.syncNewOldCategoryTimestamps(_:)(v4);
}

- (void)notifyWebRule:(id)rule
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100035B00;
  *(v6 + 32) = rule;
  ruleCopy = rule;
  selfCopy = self;
  CategorizationSyncManager.notifyRuleListeners(overrides:)(v6);
}

- (void)notifyFullSyncCategoryOverrides:(id)overrides
{
  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for RCOverrideRule, RCOverrideRule_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  selfCopy = self;
  CategorizationSyncManager.notifySyncAllListeners(overrides:)(v4);
}

- (void)notifyNewOldCategoryChange:(id)change timestamp:(double)timestamp
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SdtGMd, &_ss23_ContiguousArrayStorageCySS_SdtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000356B0;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 48) = timestamp;
  selfCopy = self;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Double)(inited + 32);
  CategorizationSyncManager.notifyNewOldListeners(categories:)(v12);
}

@end