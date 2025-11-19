@interface MCCSecretAgentService
- (void)clearAllUserOverridesWithTimestamp:(double)a3 completion:(id)a4;
- (void)getPKCategoryForDomain:(id)a3 completion:(id)a4;
- (void)isCategorizationSupportedForLocale:(id)a3 completion:(id)a4;
- (void)notifyFullSyncCategoryOverrides:(id)a3;
- (void)notifyNewOldCategoryChange:(id)a3 timestamp:(double)a4;
- (void)notifyWebRule:(id)a3;
- (void)pingWithcompletion:(id)a3;
- (void)predictCommerceEmailWithContext:(id)a3 completion:(id)a4;
- (void)registerCategoryRulesCallbackListener:(id)a3 notificationTypes:(unint64_t)a4 completion:(id)a5;
- (void)syncNewOldCategoryTimestamps:(id)a3;
- (void)syncRecategorizationRules:(id)a3 completion:(id)a4;
@end

@implementation MCCSecretAgentService

- (void)pingWithcompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  specialized MCCSecretAgentService.pingWithcompletion(_:)(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)predictCommerceEmailWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized MCCSecretAgentService.predictCommerceEmail(with:completion:)(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)getPKCategoryForDomain:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  specialized MCCSecretAgentService.getPKCategory(forDomain:completion:)(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)isCategorizationSupportedForLocale:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  specialized MCCSecretAgentService.isCategorizationSupported(forLocale:completion:)(v6, v8, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)registerCategoryRulesCallbackListener:(id)a3 notificationTypes:(unint64_t)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  _Block_copy(v8);
  v11 = a3;
  v10 = self;
  specialized CategorizationSyncManager.registerCategoryRulesCallbackListener(endpoint:notificationTypes:completion:)(v11, a4, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (void)syncRecategorizationRules:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for RCOverrideRule, RCOverrideRule_ptr);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  v7 = self;
  specialized MCCSecretAgentService.syncRecategorizationRules(_:completion:)(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)clearAllUserOverridesWithTimestamp:(double)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  specialized MCCSecretAgentService.clearAllUserOverrides(withTimestamp:completion:)(v7, v6, a3);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)syncNewOldCategoryTimestamps:(id)a3
{
  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = self;
  MCCSecretAgentService.syncNewOldCategoryTimestamps(_:)(v4);
}

- (void)notifyWebRule:(id)a3
{
  v5 = *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100035B00;
  *(v6 + 32) = a3;
  v8 = a3;
  v7 = self;
  CategorizationSyncManager.notifyRuleListeners(overrides:)(v6);
}

- (void)notifyFullSyncCategoryOverrides:(id)a3
{
  type metadata accessor for RCOverrideRule(0, &lazy cache variable for type metadata for RCOverrideRule, RCOverrideRule_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  v6 = self;
  CategorizationSyncManager.notifySyncAllListeners(overrides:)(v4);
}

- (void)notifyNewOldCategoryChange:(id)a3 timestamp:(double)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = *(&self->super.isa + OBJC_IVAR____TtC15icloudmailagent21MCCSecretAgentService_categorizationSyncManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SdtGMd, &_ss23_ContiguousArrayStorageCySS_SdtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000356B0;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  *(inited + 48) = a4;
  v11 = self;
  v12 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SdTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, Double)(inited + 32);
  CategorizationSyncManager.notifyNewOldListeners(categories:)(v12);
}

@end