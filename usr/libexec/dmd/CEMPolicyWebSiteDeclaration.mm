@interface CEMPolicyWebSiteDeclaration
- (id)dmf_installRequestWithContext:(id)context error:(id *)error;
- (id)dmf_removeRequestWithContext:(id)context error:(id *)error;
@end

@implementation CEMPolicyWebSiteDeclaration

- (id)dmf_installRequestWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  payloadMode = [(CEMPolicyWebSiteDeclaration *)self payloadMode];
  if (DMDDeclarationModeIsValid(payloadMode))
  {
    v8 = objc_opt_new();
    organizationIdentifier = [contextCopy organizationIdentifier];
    [v8 setOrganizationIdentifier:organizationIdentifier];

    declarationIdentifier = [(CEMPolicyWebSiteDeclaration *)self declarationIdentifier];
    [v8 setDeclarationIdentifier:declarationIdentifier];

    [v8 setType:DMFEffectivePolicyTypeWeb];
    [v8 setPolicy:DMDPolicyFromDeclarationMode(payloadMode)];
    payloadHostnames = [(CEMPolicyWebSiteDeclaration *)self payloadHostnames];
    [v8 setIdentifiers:payloadHostnames];

    if (payloadMode)
    {
      if ([payloadMode caseInsensitiveCompare:DMFDeclarationPayloadModeOverride])
      {
        v12 = 100;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 100;
    }

    [v8 setPriority:v12];
    v19 = 0;
    v14 = [DMDSetEffectivePolicyOperation validateRequest:v8 error:&v19];
    v15 = v19;
    if (v14)
    {
      v13 = v8;
    }

    else
    {
      v16 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_10007BCE0(v15);
      }

      if (error)
      {
        v17 = v15;
        v13 = 0;
        *error = v15;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    if (!error)
    {
      v13 = 0;
      goto LABEL_19;
    }

    v20 = DMFInvalidParameterErrorKey;
    v21 = DMFDeclarationPayloadModeKey;
    v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    DMFErrorWithCodeAndUserInfo();
    *error = v13 = 0;
  }

LABEL_19:

  return v13;
}

- (id)dmf_removeRequestWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = objc_opt_new();
  organizationIdentifier = [contextCopy organizationIdentifier];

  [v7 setOrganizationIdentifier:organizationIdentifier];
  declarationIdentifier = [(CEMPolicyWebSiteDeclaration *)self declarationIdentifier];
  [v7 setDeclarationIdentifier:declarationIdentifier];

  v15 = 0;
  LODWORD(contextCopy) = [DMDRemoveEffectivePolicyOperation validateRequest:v7 error:&v15];
  v10 = v15;
  if (contextCopy)
  {
    v11 = v7;
  }

  else
  {
    v12 = DMFConfigurationEngineLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10007BD68(v10);
    }

    if (error)
    {
      v13 = v10;
      v11 = 0;
      *error = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end