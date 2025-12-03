@interface CEMPolicyCategoryDeclaration
- (id)dmf_installRequestWithContext:(id)context error:(id *)error;
- (id)dmf_removeRequestWithContext:(id)context error:(id *)error;
@end

@implementation CEMPolicyCategoryDeclaration

- (id)dmf_installRequestWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  payloadMode = [(CEMPolicyCategoryDeclaration *)self payloadMode];
  if (DMDDeclarationModeIsValid(payloadMode))
  {
    v8 = objc_opt_new();
    organizationIdentifier = [contextCopy organizationIdentifier];
    [v8 setOrganizationIdentifier:organizationIdentifier];

    declarationIdentifier = [(CEMPolicyCategoryDeclaration *)self declarationIdentifier];
    [v8 setDeclarationIdentifier:declarationIdentifier];

    [v8 setType:DMFEffectivePolicyTypeCategory];
    [v8 setPolicy:DMDPolicyFromDeclarationMode(payloadMode)];
    payloadCategoriesVersion2 = [(CEMPolicyCategoryDeclaration *)self payloadCategoriesVersion2];
    if (payloadCategoriesVersion2)
    {
      [v8 setIdentifiers:payloadCategoriesVersion2];
    }

    else
    {
      payloadCategories = [(CEMPolicyCategoryDeclaration *)self payloadCategories];
      [v8 setIdentifiers:payloadCategories];
    }

    if (payloadMode)
    {
      if ([payloadMode caseInsensitiveCompare:DMFDeclarationPayloadModeOverride])
      {
        v14 = 100;
      }

      else
      {
        v14 = 1;
      }
    }

    else
    {
      v14 = 100;
    }

    [v8 setPriority:v14];
    v20 = 0;
    v15 = [DMDSetEffectivePolicyOperation validateRequest:v8 error:&v20];
    v16 = v20;
    if (v15)
    {
      v12 = v8;
    }

    else
    {
      v17 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        sub_10007BCE0(v16);
      }

      if (error)
      {
        v18 = v16;
        v12 = 0;
        *error = v16;
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
      goto LABEL_22;
    }

    v21 = DMFInvalidParameterErrorKey;
    v22 = DMFDeclarationPayloadModeKey;
    v8 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    DMFErrorWithCodeAndUserInfo();
    *error = v12 = 0;
  }

LABEL_22:

  return v12;
}

- (id)dmf_removeRequestWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  v7 = objc_opt_new();
  organizationIdentifier = [contextCopy organizationIdentifier];

  [v7 setOrganizationIdentifier:organizationIdentifier];
  declarationIdentifier = [(CEMPolicyCategoryDeclaration *)self declarationIdentifier];
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