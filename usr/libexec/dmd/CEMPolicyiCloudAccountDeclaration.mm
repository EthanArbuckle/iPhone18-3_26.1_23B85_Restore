@interface CEMPolicyiCloudAccountDeclaration
- (id)dmf_installRequestWithContext:(id)context error:(id *)error;
- (id)dmf_removeRequestWithContext:(id)context error:(id *)error;
@end

@implementation CEMPolicyiCloudAccountDeclaration

- (id)dmf_installRequestWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  payloadMode = [(CEMPolicyiCloudAccountDeclaration *)self payloadMode];
  if (DMDDeclarationModeIsValid(payloadMode))
  {
    v8 = objc_opt_new();
    organizationIdentifier = [contextCopy organizationIdentifier];
    [v8 setOrganizationIdentifier:organizationIdentifier];

    declarationIdentifier = [(CEMPolicyiCloudAccountDeclaration *)self declarationIdentifier];
    [v8 setDeclarationIdentifier:declarationIdentifier];

    [v8 setType:DMFEffectivePolicyTypeiCloudAccountLogout];
    [v8 setPolicy:DMDPolicyFromDeclarationMode(payloadMode)];
    if (payloadMode)
    {
      if ([payloadMode caseInsensitiveCompare:DMFDeclarationPayloadModeOverride])
      {
        v11 = 100;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 100;
    }

    [v8 setPriority:v11];
    v18 = 0;
    v13 = [DMDSetEffectivePolicyOperation validateRequest:v8 error:&v18];
    v14 = v18;
    if (v13)
    {
      v12 = v8;
    }

    else
    {
      v15 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_10007BCE0(v14);
      }

      if (error)
      {
        v16 = v14;
        v12 = 0;
        *error = v14;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    if (!error)
    {
      v12 = 0;
      goto LABEL_19;
    }

    v19 = DMFInvalidParameterErrorKey;
    v20 = DMFDeclarationPayloadModeKey;
    v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    DMFErrorWithCodeAndUserInfo();
    *error = v12 = 0;
  }

LABEL_19:

  return v12;
}

- (id)dmf_removeRequestWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = objc_opt_new();
  organizationIdentifier = [contextCopy organizationIdentifier];

  [v7 setOrganizationIdentifier:organizationIdentifier];
  declarationIdentifier = [(CEMPolicyiCloudAccountDeclaration *)self declarationIdentifier];
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