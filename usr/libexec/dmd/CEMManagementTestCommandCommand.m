@interface CEMManagementTestCommandCommand
- (id)dmf_executeRequestWithContext:(id)a3 error:(id *)a4;
- (id)dmf_statusForResult:(id)a3 context:(id)a4;
@end

@implementation CEMManagementTestCommandCommand

- (id)dmf_executeRequestWithContext:(id)a3 error:(id *)a4
{
  v5 = objc_opt_new();
  v6 = [(CEMManagementTestCommandCommand *)self payloadEcho];
  [v5 setEcho:v6];

  v13[0] = @"Executed";
  v13[1] = @"Failed";
  v14[0] = DMFRMEchoStatusOK;
  v14[1] = DMFRMEchoStatusFail;
  v13[2] = @"Pending";
  v14[2] = DMFRMEchoStatusPending;
  v7 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:3];
  v8 = [(CEMManagementTestCommandCommand *)self payloadReturnStatus];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"Executed";
  }

  v11 = [v7 objectForKeyedSubscript:v10];
  [v5 setResultStatus:v11];

  return v5;
}

- (id)dmf_statusForResult:(id)a3 context:(id)a4
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = @"Echo";
    v5 = [v4 echo];
    v9 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end