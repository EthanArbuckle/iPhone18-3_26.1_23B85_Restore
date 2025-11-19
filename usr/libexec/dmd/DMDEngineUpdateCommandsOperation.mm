@interface DMDEngineUpdateCommandsOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3;
@end

@implementation DMDEngineUpdateCommandsOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(DMDEngineUpdateCommandsOperation *)self request];
  v6 = [v5 addCommands];
  v7 = [(DMDEngineUpdateCommandsOperation *)self request];
  v8 = [v7 organizationIdentifier];
  v16 = 0;
  v9 = [DMDCommandPayloadMetadata commandsWithPayloadDictionaries:v6 organizationIdentifier:v8 context:v4 error:&v16];
  v10 = v16;

  if (v9)
  {
    v15 = v10;
    v11 = [v4 save:&v15];
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