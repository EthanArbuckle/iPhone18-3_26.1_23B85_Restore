@interface DMDEngineCreateConfigurationOrganizationOperation
- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context;
@end

@implementation DMDEngineCreateConfigurationOrganizationOperation

- (void)performDatabaseModificationOperationWithManagedObjectContext:(id)context
{
  contextCopy = context;
  request = [(DMDEngineCreateConfigurationOrganizationOperation *)self request];
  organizationType = [request organizationType];
  v7 = DMFAllConfigurationOrganizationTypes();
  v8 = [v7 containsObject:organizationType];

  if (v8)
  {
    if ([organizationType isEqualToString:DMFConfigurationOrganizationTypeInternal])
    {
      v9 = 0;
      v10 = 1;
      goto LABEL_7;
    }

    v11 = [DMDConfigurationOrganization fetchRequestMatchingConfigurationOrganizationsOfType:organizationType];
    v28 = 0;
    v13 = [v11 execute:&v28];
    v9 = v28;
    if (v13)
    {
      v10 = [v13 count] == 0;

LABEL_7:
      organizationIdentifier = [request organizationIdentifier];
      v11 = [DMDConfigurationOrganization fetchRequestMatchingConfigurationOrganizationWithIdentifier:organizationIdentifier];

      v27 = v9;
      v15 = [v11 execute:&v27];
      v16 = v27;

      if (!v15)
      {
        v23 = DMFConfigurationEngineLog();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_100082BB8(request, v16);
        }

        [(DMDEngineCreateConfigurationOrganizationOperation *)self setError:v16];
        goto LABEL_19;
      }

      firstObject = [v15 firstObject];
      if (!firstObject)
      {
        if (!v10)
        {
          v25 = DMFConfigurationEngineLog();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            sub_100082B40(organizationType, v25);
          }

          firstObject = DMFErrorWithCodeAndUserInfo();
          [(DMDEngineCreateConfigurationOrganizationOperation *)self setError:firstObject];
          goto LABEL_18;
        }

        firstObject = [[DMDConfigurationOrganization alloc] initWithContext:contextCopy];
      }

      organizationDisplayName = [request organizationDisplayName];
      [(DMDConfigurationOrganization *)firstObject setDisplayName:organizationDisplayName];

      organizationIdentifier2 = [request organizationIdentifier];
      [(DMDConfigurationOrganization *)firstObject setIdentifier:organizationIdentifier2];

      organizationType2 = [request organizationType];
      [(DMDConfigurationOrganization *)firstObject setType:organizationType2];

      [(DMDConfigurationOrganization *)firstObject setActive:1];
      v26 = v16;
      v21 = [contextCopy save:&v26];
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
      sub_100082A9C(organizationType, v9);
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