@interface MCLoggingPayloadHandler
- (BOOL)_installAndReturnError:(id *)a3;
- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6;
- (void)_remove;
- (void)remove;
@end

@implementation MCLoggingPayloadHandler

- (BOOL)_installAndReturnError:(id *)a3
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v4 = [v3 loggingPayload];
  v5 = MCOSLogInstallProfilePayload();

  return v5;
}

- (BOOL)installWithInstaller:(id)a3 options:(id)a4 interactionClient:(id)a5 outError:(id *)a6
{
  v17 = 0;
  v8 = [(MCLoggingPayloadHandler *)self _installAndReturnError:&v17, a4, a5];
  v9 = v17;
  if (!v8)
  {
    v10 = MCInstallationErrorDomain;
    v11 = [(MCNewPayloadHandler *)self payload];
    v12 = [v11 friendlyName];
    v13 = MCErrorArray();
    v14 = [NSError MCErrorWithDomain:v10 code:4001 descriptionArray:v13 underlyingError:v9 errorType:MCErrorTypeFatal, v12, 0];

    if (a6)
    {
      v15 = v14;
      *a6 = v14;
    }
  }

  return v8;
}

- (void)_remove
{
  v3 = [(MCNewPayloadHandler *)self payload];
  v2 = [v3 loggingPayload];
  MCOSLogRemoveProfilePayload();
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
  {

    [(MCLoggingPayloadHandler *)self _remove];
  }
}

@end