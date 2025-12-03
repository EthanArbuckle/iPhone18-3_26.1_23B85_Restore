@interface MCLoggingPayloadHandler
- (BOOL)_installAndReturnError:(id *)error;
- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error;
- (void)_remove;
- (void)remove;
@end

@implementation MCLoggingPayloadHandler

- (BOOL)_installAndReturnError:(id *)error
{
  payload = [(MCNewPayloadHandler *)self payload];
  loggingPayload = [payload loggingPayload];
  v5 = MCOSLogInstallProfilePayload();

  return v5;
}

- (BOOL)installWithInstaller:(id)installer options:(id)options interactionClient:(id)client outError:(id *)error
{
  v17 = 0;
  client = [(MCLoggingPayloadHandler *)self _installAndReturnError:&v17, options, client];
  v9 = v17;
  if (!client)
  {
    v10 = MCInstallationErrorDomain;
    payload = [(MCNewPayloadHandler *)self payload];
    friendlyName = [payload friendlyName];
    v13 = MCErrorArray();
    v14 = [NSError MCErrorWithDomain:v10 code:4001 descriptionArray:v13 underlyingError:v9 errorType:MCErrorTypeFatal, friendlyName, 0];

    if (error)
    {
      v15 = v14;
      *error = v14;
    }
  }

  return client;
}

- (void)_remove
{
  payload = [(MCNewPayloadHandler *)self payload];
  loggingPayload = [payload loggingPayload];
  MCOSLogRemoveProfilePayload();
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {

    [(MCLoggingPayloadHandler *)self _remove];
  }
}

@end