@interface CEMPolicyAppDeclaration
- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4;
- (id)dmf_removeRequestWithContext:(id)a3 error:(id *)a4;
@end

@implementation CEMPolicyAppDeclaration

- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CEMPolicyAppDeclaration *)self payloadMode];
  if (DMDDeclarationModeIsValid(v7))
  {
    v8 = objc_opt_new();
    v9 = [v6 organizationIdentifier];
    [v8 setOrganizationIdentifier:v9];

    v10 = [(CEMPolicyAppDeclaration *)self declarationIdentifier];
    [v8 setDeclarationIdentifier:v10];

    [v8 setType:DMFEffectivePolicyTypeApplication];
    [v8 setPolicy:DMDPolicyFromDeclarationMode(v7)];
    v11 = [(CEMPolicyAppDeclaration *)self payloadApps];
    [v8 setIdentifiers:v11];

    if (v7)
    {
      if ([v7 caseInsensitiveCompare:DMFDeclarationPayloadModeOverride])
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

      if (a4)
      {
        v17 = v15;
        v13 = 0;
        *a4 = v15;
      }

      else
      {
        v13 = 0;
      }
    }
  }

  else
  {
    if (!a4)
    {
      v13 = 0;
      goto LABEL_19;
    }

    v20 = DMFInvalidParameterErrorKey;
    v21 = DMFDeclarationPayloadModeKey;
    v8 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    DMFErrorWithCodeAndUserInfo();
    *a4 = v13 = 0;
  }

LABEL_19:

  return v13;
}

- (id)dmf_removeRequestWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 organizationIdentifier];

  [v7 setOrganizationIdentifier:v8];
  v9 = [(CEMPolicyAppDeclaration *)self declarationIdentifier];
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