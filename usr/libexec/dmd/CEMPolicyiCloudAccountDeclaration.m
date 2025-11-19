@interface CEMPolicyiCloudAccountDeclaration
- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4;
- (id)dmf_removeRequestWithContext:(id)a3 error:(id *)a4;
@end

@implementation CEMPolicyiCloudAccountDeclaration

- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CEMPolicyiCloudAccountDeclaration *)self payloadMode];
  if (DMDDeclarationModeIsValid(v7))
  {
    v8 = objc_opt_new();
    v9 = [v6 organizationIdentifier];
    [v8 setOrganizationIdentifier:v9];

    v10 = [(CEMPolicyiCloudAccountDeclaration *)self declarationIdentifier];
    [v8 setDeclarationIdentifier:v10];

    [v8 setType:DMFEffectivePolicyTypeiCloudAccountLogout];
    [v8 setPolicy:DMDPolicyFromDeclarationMode(v7)];
    if (v7)
    {
      if ([v7 caseInsensitiveCompare:DMFDeclarationPayloadModeOverride])
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

      if (a4)
      {
        v16 = v14;
        v12 = 0;
        *a4 = v14;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    if (!a4)
    {
      v12 = 0;
      goto LABEL_19;
    }

    v19 = DMFInvalidParameterErrorKey;
    v20 = DMFDeclarationPayloadModeKey;
    v8 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    DMFErrorWithCodeAndUserInfo();
    *a4 = v12 = 0;
  }

LABEL_19:

  return v12;
}

- (id)dmf_removeRequestWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 organizationIdentifier];

  [v7 setOrganizationIdentifier:v8];
  v9 = [(CEMPolicyiCloudAccountDeclaration *)self declarationIdentifier];
  [v7 setDeclarationIdentifier:v9];

  v15 = 0;
  LODWORD(v6) = [DMDRemoveEffectivePolicyOperation validateRequest:v7 error:&v15];
  v10 = v15;
  if (v6)
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

    if (a4)
    {
      v13 = v10;
      v11 = 0;
      *a4 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

@end