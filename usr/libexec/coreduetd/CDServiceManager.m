@interface CDServiceManager
+ (id)sharedInstance;
- (CDServiceManager)init;
- (void)setupServices;
@end

@implementation CDServiceManager

+ (id)sharedInstance
{
  if (qword_100044540 != -1)
  {
    sub_100021CF0();
  }

  v3 = qword_100044538;

  return v3;
}

- (CDServiceManager)init
{
  v3 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v3))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CDServiceManagerInit", " enableTelemetry=YES ", buf, 2u);
  }

  v22.receiver = self;
  v22.super_class = CDServiceManager;
  v4 = [(CDServiceManager *)&v22 init];
  if (v4)
  {
    v5 = +[CDDataMigrator sharedInstance];
    dataMigrator = v4->_dataMigrator;
    v4->_dataMigrator = v5;

    v7 = +[CDKnowledgeDaemon defaultDaemon];
    knowledgeDaemon = v4->_knowledgeDaemon;
    v4->_knowledgeDaemon = v7;

    v9 = [CDPeopleDaemon alloc];
    v10 = [(CDKnowledgeDaemon *)v4->_knowledgeDaemon storage];
    v11 = [(CDPeopleDaemon *)v9 initWithKnowledgeStore:v10];
    peopleDaemon = v4->_peopleDaemon;
    v4->_peopleDaemon = v11;

    v13 = [(CDKnowledgeDaemon *)v4->_knowledgeDaemon storage];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [_DKKnowledgeStorage storageWithShallowCopyFromStorage:v13 clientIdentifier:v15];

    v17 = [(CDPeopleDaemon *)v4->_peopleDaemon store];
    v18 = [_CDSpotlightItemRecorder spotlightItemRecorderWithInteractionRecorder:v17 knowledgeStore:v16];
    spotlightRecorder = v4->_spotlightRecorder;
    v4->_spotlightRecorder = v18;

    [(CDServiceManager *)v4 setupServices];
  }

  v20 = +[_CDLogging knowledgeSignpost];
  if (os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CDServiceManagerInit", &unk_10003467D, buf, 2u);
  }

  return v4;
}

- (void)setupServices
{
  [(_CDSpotlightItemRecorder *)self->_spotlightRecorder registerSpotlightRecorderWithServiceName:@"com.apple.corespotlight.receiver.coreduet"];
  [(_CDSpotlightItemRecorder *)self->_spotlightRecorder startIntentDeletionForContactDeletions];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021D04();
  }

  xpc_set_event_stream_handler("com.apple.notifyd.matching", &_dispatch_main_q, &stru_10003C9D0);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100021D48();
  }

  xpc_set_event_stream_handler("com.apple.distnoted.matching", &_dispatch_main_q, &stru_10003C9F0);
}

@end