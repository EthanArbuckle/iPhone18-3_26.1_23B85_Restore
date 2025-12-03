@interface MCEDUClassroomPayloadHandler
- (BOOL)_installWithError:(id *)error;
- (BOOL)isInstalled;
- (BOOL)setConfiguration:(id)configuration error:(id *)error;
- (id)_persistentIDForPayloadUUID:(id)d requireIdentity:(BOOL)identity error:(id *)error;
- (id)configurationWithError:(id *)error;
- (void)remove;
@end

@implementation MCEDUClassroomPayloadHandler

- (id)configurationWithError:(id *)error
{
  if (objc_opt_class())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100020A9C;
    v22 = sub_100020AAC;
    v23 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_100020A9C;
    v16 = sub_100020AAC;
    v17 = 0;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100020AB4;
    v8[3] = &unk_10011C258;
    v10 = &v18;
    v11 = &v12;
    v4 = dispatch_semaphore_create(0);
    v9 = v4;
    [CRKClassroomConfiguration fetchConfiguration:v8];
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      *error = v13[5];
    }

    error = v19[5];

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v18, 8);
  }

  else if (error)
  {
    v5 = MCInternalErrorDomain;
    v6 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v5 code:4 descriptionArray:v6 errorType:MCErrorTypeFatal, 0];

    error = 0;
  }

  return error;
}

- (BOOL)setConfiguration:(id)configuration error:(id *)error
{
  configurationCopy = configuration;
  if (objc_opt_class())
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_100020A9C;
    v17 = sub_100020AAC;
    v18 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100020D24;
    v10[3] = &unk_10011BFA0;
    v12 = &v13;
    v6 = dispatch_semaphore_create(0);
    v11 = v6;
    [CRKClassroomConfiguration setConfiguration:configurationCopy completion:v10];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    if (error)
    {
      *error = v14[5];
    }

    LOBYTE(error) = v14[5] == 0;

    _Block_object_dispose(&v13, 8);
  }

  else if (error)
  {
    v7 = MCInternalErrorDomain;
    v8 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v7 code:4 descriptionArray:v8 errorType:MCErrorTypeFatal, 0];

    LOBYTE(error) = 0;
  }

  return error;
}

- (id)_persistentIDForPayloadUUID:(id)d requireIdentity:(BOOL)identity error:(id *)error
{
  identityCopy = identity;
  dCopy = d;
  if (!dCopy)
  {
    error = 0;
    goto LABEL_14;
  }

  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  v10 = [profileHandler persistentIDForCertificateUUID:dCopy];

  if (!v10)
  {
    if (!error)
    {
      goto LABEL_13;
    }

    v14 = MCEDUClassroomErrorDomain;
    v15 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v14 code:45002 descriptionArray:v15 errorType:MCErrorTypeFatal, dCopy, 0];

    goto LABEL_12;
  }

  if (identityCopy)
  {
    profileHandler2 = [(MCNewPayloadHandler *)self profileHandler];
    profile = [profileHandler2 profile];
    v13 = +[MCKeychain copyIdentityWithPersistentID:useSystemKeychain:](MCKeychain, "copyIdentityWithPersistentID:useSystemKeychain:", v10, [profile isInstalledForSystem]);

    if (v13)
    {
      CFRelease(v13);
      goto LABEL_6;
    }

    if (!error)
    {
      goto LABEL_13;
    }

    v16 = MCEDUClassroomErrorDomain;
    payload = [(MCNewPayloadHandler *)self payload];
    friendlyName = [payload friendlyName];
    v19 = MCErrorArray();
    *error = [NSError MCErrorWithDomain:v16 code:45003 descriptionArray:v19 errorType:MCErrorTypeFatal, friendlyName, 0];

LABEL_12:
    error = 0;
    goto LABEL_13;
  }

LABEL_6:
  error = v10;
LABEL_13:

LABEL_14:

  return error;
}

- (BOOL)_installWithError:(id *)error
{
  payload = [(MCNewPayloadHandler *)self payload];
  v50 = 0;
  v6 = [(MCEDUClassroomPayloadHandler *)self configurationWithError:&v50];
  v7 = v50;

  if (!v6)
  {
    if (v7)
    {
      if (error)
      {
        v11 = MCEDUClassroomErrorDomain;
        configuration = MCErrorArray();
        v10 = [NSError MCErrorWithDomain:v11 code:45000 descriptionArray:configuration underlyingError:v7 errorType:MCErrorTypeFatal, 0];
        goto LABEL_7;
      }

LABEL_40:
      v12 = 0;
      goto LABEL_41;
    }

    payloadCertificatePersistentID = [payload payloadCertificatePersistentID];

    if (!payloadCertificatePersistentID)
    {
      payloadCertificateUUID = [payload payloadCertificateUUID];
      v15 = [(MCEDUClassroomPayloadHandler *)self _persistentIDForPayloadUUID:payloadCertificateUUID requireIdentity:1 error:error];
      [payload setPayloadCertificatePersistentID:v15];
    }

    leaderPayloadCertificateAnchorPersistentID = [payload leaderPayloadCertificateAnchorPersistentID];

    if (!leaderPayloadCertificateAnchorPersistentID)
    {
      configuration = objc_opt_new();
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      leaderPayloadCertificateAnchorUUID = [payload leaderPayloadCertificateAnchorUUID];
      v22 = [leaderPayloadCertificateAnchorUUID countByEnumeratingWithState:&v46 objects:v52 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v47;
LABEL_20:
        v25 = 0;
        while (1)
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(leaderPayloadCertificateAnchorUUID);
          }

          v26 = [(MCEDUClassroomPayloadHandler *)self _persistentIDForPayloadUUID:*(*(&v46 + 1) + 8 * v25) requireIdentity:0 error:error];
          if (!v26)
          {
            goto LABEL_36;
          }

          v27 = v26;
          [configuration addObject:v26];

          if (v23 == ++v25)
          {
            v23 = [leaderPayloadCertificateAnchorUUID countByEnumeratingWithState:&v46 objects:v52 count:16];
            if (v23)
            {
              goto LABEL_20;
            }

            break;
          }
        }
      }

      v28 = [configuration copy];
      [payload setLeaderPayloadCertificateAnchorPersistentID:v28];
    }

    memberPayloadCertificateAnchorPersistentID = [payload memberPayloadCertificateAnchorPersistentID];

    if (memberPayloadCertificateAnchorPersistentID)
    {
      goto LABEL_13;
    }

    configuration = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    leaderPayloadCertificateAnchorUUID = [payload memberPayloadCertificateAnchorUUID];
    v29 = [leaderPayloadCertificateAnchorUUID countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (!v29)
    {
LABEL_35:

      v35 = [configuration copy];
      [payload setMemberPayloadCertificateAnchorPersistentID:v35];

LABEL_13:
      resourcePayloadCertificatePersistentID = [payload resourcePayloadCertificatePersistentID];
      if (resourcePayloadCertificatePersistentID)
      {
      }

      else
      {
        resourcePayloadCertificateUUID = [payload resourcePayloadCertificateUUID];

        if (resourcePayloadCertificateUUID)
        {
          resourcePayloadCertificateUUID2 = [payload resourcePayloadCertificateUUID];
          v38 = [(MCEDUClassroomPayloadHandler *)self _persistentIDForPayloadUUID:resourcePayloadCertificateUUID2 requireIdentity:1 error:error];
          [payload setResourcePayloadCertificatePersistentID:v38];

          resourcePayloadCertificatePersistentID2 = [payload resourcePayloadCertificatePersistentID];

          if (!resourcePayloadCertificatePersistentID2)
          {
            v7 = 0;
            goto LABEL_40;
          }
        }
      }

      configuration = [payload configuration];
      v41 = 0;
      v12 = [(MCEDUClassroomPayloadHandler *)self setConfiguration:configuration error:&v41];
      v7 = v41;
      if (error && !v12)
      {
        v19 = MCEDUClassroomErrorDomain;
        v20 = MCErrorArray();
        *error = [NSError MCErrorWithDomain:v19 code:45000 descriptionArray:v20 underlyingError:v7 errorType:MCErrorTypeFatal, 0];
      }

      goto LABEL_8;
    }

    v30 = v29;
    v31 = *v43;
LABEL_29:
    v32 = 0;
    while (1)
    {
      if (*v43 != v31)
      {
        objc_enumerationMutation(leaderPayloadCertificateAnchorUUID);
      }

      v33 = [(MCEDUClassroomPayloadHandler *)self _persistentIDForPayloadUUID:*(*(&v42 + 1) + 8 * v32) requireIdentity:0 error:error];
      if (!v33)
      {
        break;
      }

      v34 = v33;
      [configuration addObject:v33];

      if (v30 == ++v32)
      {
        v30 = [leaderPayloadCertificateAnchorUUID countByEnumeratingWithState:&v42 objects:v51 count:16];
        if (v30)
        {
          goto LABEL_29;
        }

        goto LABEL_35;
      }
    }

LABEL_36:

    v7 = 0;
    v12 = 0;
    goto LABEL_8;
  }

  if (!error)
  {
    goto LABEL_40;
  }

  v8 = MCEDUClassroomErrorDomain;
  configuration = MCErrorArray();
  v10 = [NSError MCErrorWithDomain:v8 code:45001 descriptionArray:configuration errorType:MCErrorTypeFatal, 0];
LABEL_7:
  v12 = 0;
  *error = v10;
LABEL_8:

LABEL_41:
  return v12;
}

- (void)remove
{
  profileHandler = [(MCNewPayloadHandler *)self profileHandler];
  isSetAside = [profileHandler isSetAside];

  if ((isSetAside & 1) == 0)
  {

    [(MCEDUClassroomPayloadHandler *)self _remove];
  }
}

- (BOOL)isInstalled
{
  v2 = [(MCEDUClassroomPayloadHandler *)self configurationWithError:0];
  v3 = v2 != 0;

  return v3;
}

@end