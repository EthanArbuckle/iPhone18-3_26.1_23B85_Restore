@interface DMDEngineCreateConfigurationOrganizationOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3;
@end

@implementation DMDEngineCreateConfigurationOrganizationOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [(DMDEngineCreateConfigurationOrganizationOperation *)self request];
  v6 = [v5 organizationType];
  v7 = DMFAllConfigurationOrganizationTypes();
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    if ([v6 isEqualToString:DMFConfigurationOrganizationTypeInternal])
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_7;
    }

    v11 = [DMDConfigurationOrganization fetchRequestMatchingConfigurationOrganizationsOfType:v6];
    v28 = 0;
    v13 = [v11 execute:&v28];
    v9 = v28;
    if (v13)
    {
      v10 = [v13 count] == 0;

LABEL_7:
      v14 = [v5 organizationIdentifier];
      v11 = [DMDConfigurationOrganization fetchRequestMatchingConfigurationOrganizationWithIdentifier:v14];

      v27 = v9;
      v15 = [v11 execute:&v27];
      v16 = v27;

      if (!v15)
      {
        v23 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100082BB8(v5, v16);
        }

        [(DMDEngineCreateConfigurationOrganizationOperation *)self setError:v16];
        goto LABEL_19;
      }

      v17 = [v15 firstObject];
      if (!v17)
      {
        if (!v10)
        {
          v25 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100082B40(v6, v25);
          }

          v17 = DMFErrorWithCodeAndUserInfo();
          [(DMDEngineCreateConfigurationOrganizationOperation *)self setError:v17];
          goto LABEL_18;
        }

        v17 = [[DMDConfigurationOrganization alloc] initWithContext:v4];
      }

      v18 = [v5 organizationDisplayName];
      [(DMDConfigurationOrganization *)v17 setDisplayName:v18];

      v19 = [v5 organizationIdentifier];
      [(DMDConfigurationOrganization *)v17 setIdentifier:v19];

      v20 = [v5 organizationType];
      [(DMDConfigurationOrganization *)v17 setType:v20];

      [(DMDConfigurationOrganization *)v17 setActive:1];
      v26 = v16;
      v21 = [v4 save:&v26];
      v22 = v26;

      if (v21)
      {
        [(DMDEngineCreateConfigurationOrganizationOperation *)self setResultObject:0];
      }

      else
      {
        [(DMDEngineCreateConfigurationOrganizationOperation *)self setError:v22];
      }

      v16 = v22;
LABEL_18:

LABEL_19:
      v9 = v16;
      goto LABEL_20;
    }

    v24 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_100082A9C(v6, v9);
    }

    [(DMDEngineCreateConfigurationOrganizationOperation *)self setError:v9];
  }

  else
  {
    v29 = DMFInvalidParameterErrorKey;
    v30 = @"request.organizationType";
    v11 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v12 = DMFErrorWithCodeAndUserInfo();
    [(DMDEngineCreateConfigurationOrganizationOperation *)self setError:v12];

    v9 = 0;
  }

LABEL_20:
}

@end