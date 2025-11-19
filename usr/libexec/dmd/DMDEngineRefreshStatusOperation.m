@interface DMDEngineRefreshStatusOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3;
@end

@implementation DMDEngineRefreshStatusOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(DMDEngineRefreshStatusOperation *)self organizationIdentifier];
  v6 = [DMDPayloadMetadata fetchRequestForPayloadMetadatasFromOrganizationWithIdentifier:v5 matchingPredicate:0];

  v26 = 0;
  v7 = [v6 execute:&v26];
  v8 = v26;
  if (v7)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      do
      {
        v13 = 0;
        do
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v22 + 1) + 8 * v13) setNeedsRefreshStatus];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v11);
    }

    v21 = v8;
    v14 = [v4 save:&v21];
    v15 = v21;

    if (v14)
    {
      v16 = +[NSNotificationCenter defaultCenter];
      v17 = [(DMDEngineRefreshStatusOperation *)self organizationIdentifier];
      [v16 postNotificationName:@"DMDConfigurationSourceStatusDidChange" object:v17];

      v18 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_100083ADC(v9, self, v18);
      }

      v19 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v9 count]);
      [(DMDEngineRefreshStatusOperation *)self setResultObject:v19];
    }

    else
    {
      [(DMDEngineRefreshStatusOperation *)self setError:v15];
    }

    v8 = v15;
  }

  else
  {
    v20 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100083B98(self, v20);
    }

    [(DMDEngineRefreshStatusOperation *)self setError:v8];
  }
}

@end