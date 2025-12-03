@interface DMDEngineUpdateCommandsOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context;
@end

@implementation DMDEngineUpdateCommandsOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context
{
  contextCopy = context;
  request = [(DMDEngineUpdateCommandsOperation *)self request];
  addCommands = [request addCommands];
  request2 = [(DMDEngineUpdateCommandsOperation *)self request];
  organizationIdentifier = [request2 organizationIdentifier];
  v16 = 0;
  v9 = [DMDCommandPayloadMetadata commandsWithPayloadDictionaries:addCommands organizationIdentifier:organizationIdentifier context:contextCopy error:&v16];
  v10 = v16;

  if (v9)
  {
    v15 = v10;
    v11 = [contextCopy save:&v15];
    v12 = v15;

    if (v11)
    {
      [(DMDEngineUpdateCommandsOperation *)self setResultObject:0];
    }

    else
    {
      v14 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100083E60(v12, v14);
      }

      [(DMDEngineUpdateCommandsOperation *)self setError:v12];
    }

    v10 = v12;
  }

  else
  {
    v13 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100083EF8(v10, v13);
    }

    [(DMDEngineUpdateCommandsOperation *)self setError:v10];
  }
}

@end