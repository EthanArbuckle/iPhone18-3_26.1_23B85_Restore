@interface CEMManagementTestDeclaration
- (id)dmf_installRequestWithContext:(id)context error:(id *)error;
- (id)dmf_removeRequestWithContext:(id)context error:(id *)error;
- (id)dmf_statusForResult:(id)result context:(id)context;
@end

@implementation CEMManagementTestDeclaration

- (id)dmf_installRequestWithContext:(id)context error:(id *)error
{
  v5 = objc_opt_new();
  payloadEcho = [(CEMManagementTestDeclaration *)self payloadEcho];
  [v5 setEcho:payloadEcho];

  v13[0] = @"Installed";
  v13[1] = @"Failed";
  v14[0] = DMFRMEchoStatusOK;
  v14[1] = DMFRMEchoStatusFail;
  v13[2] = @"Pending";
  v14[2] = DMFRMEchoStatusPending;
  v7 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  payloadReturnStatus = [(CEMManagementTestDeclaration *)self payloadReturnStatus];
  v9 = payloadReturnStatus;
  if (payloadReturnStatus)
  {
    v10 = payloadReturnStatus;
  }

  else
  {
    v10 = @"Installed";
  }

  v11 = [v7 objectForKeyedSubscript:v10];
  [v5 setResultStatus:v11];

  return v5;
}

- (id)dmf_removeRequestWithContext:(id)context error:(id *)error
{
  v5 = objc_opt_new();
  payloadEcho = [(CEMManagementTestDeclaration *)self payloadEcho];
  [v5 setEcho:payloadEcho];

  v13[0] = @"Installed";
  v13[1] = @"Failed";
  v14[0] = DMFRMEchoStatusOK;
  v14[1] = DMFRMEchoStatusFail;
  v13[2] = @"Pending";
  v14[2] = DMFRMEchoStatusPending;
  v7 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  payloadReturnStatus = [(CEMManagementTestDeclaration *)self payloadReturnStatus];
  v9 = payloadReturnStatus;
  if (payloadReturnStatus)
  {
    v10 = payloadReturnStatus;
  }

  else
  {
    v10 = @"Installed";
  }

  v11 = [v7 objectForKeyedSubscript:v10];
  [v5 setResultStatus:v11];

  return v5;
}

- (id)dmf_statusForResult:(id)result context:(id)context
{
  resultCopy = result;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = @"Echo";
    echo = [resultCopy echo];
    v9 = echo;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end