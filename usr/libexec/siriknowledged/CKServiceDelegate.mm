@interface CKServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation CKServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.siriknowledged"];

  if (v5)
  {
    v6 = +[_TtC13CoreKnowledge21CoreKnowledgeXPCUtils CKServiceXPCInterface];
    [v4 setExportedInterface:v6];

    v7 = +[CKDaemon sharedDaemon];
    [v4 setExportedObject:v7];

    [v4 resume];
    v8 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v13 = 136315394;
      v14 = "[CKServiceDelegate listener:shouldAcceptNewConnection:]";
      v15 = 1024;
      v16 = [v4 processIdentifier];
      _os_log_debug_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s New connection established to process %d", &v13, 0x12u);
    }
  }

  else
  {
    v10 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v12 = v10;
      v13 = 136315650;
      v14 = "[CKServiceDelegate listener:shouldAcceptNewConnection:]";
      v15 = 1024;
      v16 = [v4 processIdentifier];
      v17 = 2112;
      v18 = @"com.apple.siriknowledged";
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Trying to establish a connection from a process (%d) not entitled for %@", &v13, 0x1Cu);
    }
  }

  return v5 != 0;
}

@end