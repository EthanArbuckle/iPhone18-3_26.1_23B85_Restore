@interface CEMPolicyCategoryDeclaration
- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4;
- (id)dmf_removeRequestWithContext:(id)a3 error:(id *)a4;
@end

@implementation CEMPolicyCategoryDeclaration

- (id)dmf_installRequestWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(CEMPolicyCategoryDeclaration *)self payloadMode];
  if (DMDDeclarationModeIsValid(v7))
  {
    v8 = objc_opt_new();
    v9 = [v6 organizationIdentifier];
    [v8 setOrganizationIdentifier:v9];

    v10 = [(CEMPolicyCategoryDeclaration *)self declarationIdentifier];
    [v8 setDeclarationIdentifier:v10];

    [v8 setType:DMFEffectivePolicyTypeCategory];
    [v8 setPolicy:DMDPolicyFromDeclarationMode(v7)];
    v11 = [(CEMPolicyCategoryDeclaration *)self payloadCategoriesVersion2];
    if (v11)
    {
      [v8 setIdentifiers:v11];
    }

    else
    {
      v13 = [(CEMPolicyCategoryDeclaration *)self payloadCategories];
      [v8 setIdentifiers:v13];
    }

    if (v7)
    {
      if ([v7 caseInsensitiveCompare:DMFDeclarationPayloadModeOverride])
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

      if (a4)
      {
        v18 = v16;
        v12 = 0;
        *a4 = v16;
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
      goto LABEL_22;
    }

    v21 = DMFInvalidParameterErrorKey;
    v22 = DMFDeclarationPayloadModeKey;
    v8 = [NSDictionary dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    DMFErrorWithCodeAndUserInfo();
    *a4 = v12 = 0;
  }

LABEL_22:

  return v12;
}

- (id)dmf_removeRequestWithContext:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [v6 organizationIdentifier];

  [v7 setOrganizationIdentifier:v8];
  v9 = [(CEMPolicyCategoryDeclaration *)self declarationIdentifier];
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