@interface CKServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation CKServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.siriknowledged"];

  if (v5)
  {
    v6 = +[_TtC13CoreKnowledge21CoreKnowledgeXPCUtils CKServiceXPCInterface];
    [connectionCopy setExportedInterface:v6];

    v7 = +[CKDaemon sharedDaemon];
    [connectionCopy setExportedObject:v7];

    [connectionCopy resume];
    v8 = CKLogContextDaemon;
    if (os_log_type_enabled(CKLogContextDaemon, OS_LOG_TYPE_DEBUG))
    {
      v9 = v8;
      v13 = 136315394;
      v14 = "[CKServiceDelegate listener:shouldAcceptNewConnection:]";
      v15 = 1024;
      processIdentifier = [connectionCopy processIdentifier];
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
      processIdentifier = [connectionCopy processIdentifier];
      v17 = 2112;
      v18 = @"com.apple.siriknowledged";
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Trying to establish a connection from a process (%d) not entitled for %@", &v13, 0x1Cu);
    }
  }

  return v5 != 0;
}

@end