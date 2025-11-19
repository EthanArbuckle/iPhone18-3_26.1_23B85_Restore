@interface MCEDUClassroomPayloadHandler
- (BOOL)_installWithError:(id *)a3;
- (BOOL)isInstalled;
- (BOOL)setConfiguration:(id)a3 error:(id *)a4;
- (id)_persistentIDForPayloadUUID:(id)a3 requireIdentity:(BOOL)a4 error:(id *)a5;
- (id)configurationWithError:(id *)a3;
- (void)remove;
@end

@implementation MCEDUClassroomPayloadHandler

- (id)configurationWithError:(id *)a3
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
    if (a3)
    {
      *a3 = v13[5];
    }

    a3 = v19[5];

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(&v18, 8);
  }

  else if (a3)
  {
    v5 = MCInternalErrorDomain;
    v6 = MCErrorArray();
    *a3 = [NSError MCErrorWithDomain:v5 code:4 descriptionArray:v6 errorType:MCErrorTypeFatal, 0];

    a3 = 0;
  }

  return a3;
}

- (BOOL)setConfiguration:(id)a3 error:(id *)a4
{
  v5 = a3;
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
    [CRKClassroomConfiguration setConfiguration:v5 completion:v10];
    dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
    if (a4)
    {
      *a4 = v14[5];
    }

    LOBYTE(a4) = v14[5] == 0;

    _Block_object_dispose(&v13, 8);
  }

  else if (a4)
  {
    v7 = MCInternalErrorDomain;
    v8 = MCErrorArray();
    *a4 = [NSError MCErrorWithDomain:v7 code:4 descriptionArray:v8 errorType:MCErrorTypeFatal, 0];

    LOBYTE(a4) = 0;
  }

  return a4;
}

- (id)_persistentIDForPayloadUUID:(id)a3 requireIdentity:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (!v8)
  {
    a5 = 0;
    goto LABEL_14;
  }

  v9 = [(MCNewPayloadHandler *)self profileHandler];
  v10 = [v9 persistentIDForCertificateUUID:v8];

  if (!v10)
  {
    if (!a5)
    {
      goto LABEL_13;
    }

    v14 = MCEDUClassroomErrorDomain;
    v15 = MCErrorArray();
    *a5 = [NSError MCErrorWithDomain:v14 code:45002 descriptionArray:v15 errorType:MCErrorTypeFatal, v8, 0];

    goto LABEL_12;
  }

  if (v6)
  {
    v11 = [(MCNewPayloadHandler *)self profileHandler];
    v12 = [v11 profile];
    v13 = +[MCKeychain copyIdentityWithPersistentID:useSystemKeychain:](MCKeychain, "copyIdentityWithPersistentID:useSystemKeychain:", v10, [v12 isInstalledForSystem]);

    if (v13)
    {
      CFRelease(v13);
      goto LABEL_6;
    }

    if (!a5)
    {
      goto LABEL_13;
    }

    v16 = MCEDUClassroomErrorDomain;
    v17 = [(MCNewPayloadHandler *)self payload];
    v18 = [v17 friendlyName];
    v19 = MCErrorArray();
    *a5 = [NSError MCErrorWithDomain:v16 code:45003 descriptionArray:v19 errorType:MCErrorTypeFatal, v18, 0];

LABEL_12:
    a5 = 0;
    goto LABEL_13;
  }

LABEL_6:
  a5 = v10;
LABEL_13:

LABEL_14:

  return a5;
}

- (BOOL)_installWithError:(id *)a3
{
  v5 = [(MCNewPayloadHandler *)self payload];
  v50 = 0;
  v6 = [(MCEDUClassroomPayloadHandler *)self configurationWithError:&v50];
  v7 = v50;

  if (!v6)
  {
    if (v7)
    {
      if (a3)
      {
        v11 = MCEDUClassroomErrorDomain;
        v9 = MCErrorArray();
        v10 = [NSError MCErrorWithDomain:v11 code:45000 descriptionArray:v9 underlyingError:v7 errorType:MCErrorTypeFatal, 0];
        goto LABEL_7;
      }

LABEL_40:
      v12 = 0;
      goto LABEL_41;
    }

    v13 = [v5 payloadCertificatePersistentID];

    if (!v13)
    {
      v14 = [v5 payloadCertificateUUID];
      v15 = [(MCEDUClassroomPayloadHandler *)self _persistentIDForPayloadUUID:v14 requireIdentity:1 error:a3];
      [v5 setPayloadCertificatePersistentID:v15];
    }

    v16 = [v5 leaderPayloadCertificateAnchorPersistentID];

    if (!v16)
    {
      v9 = objc_opt_new();
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v21 = [v5 leaderPayloadCertificateAnchorUUID];
      v22 = [v21 countByEnumeratingWithState:&v46 objects:v52 count:16];
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
            objc_enumerationMutation(v21);
          }

          v26 = [(MCEDUClassroomPayloadHandler *)self _persistentIDForPayloadUUID:*(*(&v46 + 1) + 8 * v25) requireIdentity:0 error:a3];
          if (!v26)
          {
            goto LABEL_36;
          }

          v27 = v26;
          [v9 addObject:v26];

          if (v23 == ++v25)
          {
            v23 = [v21 countByEnumeratingWithState:&v46 objects:v52 count:16];
            if (v23)
            {
              goto LABEL_20;
            }

            break;
          }
        }
      }

      v28 = [v9 copy];
      [v5 setLeaderPayloadCertificateAnchorPersistentID:v28];
    }

    v17 = [v5 memberPayloadCertificateAnchorPersistentID];

    if (v17)
    {
      goto LABEL_13;
    }

    v9 = objc_opt_new();
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = [v5 memberPayloadCertificateAnchorUUID];
    v29 = [v21 countByEnumeratingWithState:&v42 objects:v51 count:16];
    if (!v29)
    {
LABEL_35:

      v35 = [v9 copy];
      [v5 setMemberPayloadCertificateAnchorPersistentID:v35];

LABEL_13:
      v18 = [v5 resourcePayloadCertificatePersistentID];
      if (v18)
      {
      }

      else
      {
        v36 = [v5 resourcePayloadCertificateUUID];

        if (v36)
        {
          v37 = [v5 resourcePayloadCertificateUUID];
          v38 = [(MCEDUClassroomPayloadHandler *)self _persistentIDForPayloadUUID:v37 requireIdentity:1 error:a3];
          [v5 setResourcePayloadCertificatePersistentID:v38];

          v39 = [v5 resourcePayloadCertificatePersistentID];

          if (!v39)
          {
            v7 = 0;
            goto LABEL_40;
          }
        }
      }

      v9 = [v5 configuration];
      v41 = 0;
      v12 = [(MCEDUClassroomPayloadHandler *)self setConfiguration:v9 error:&v41];
      v7 = v41;
      if (a3 && !v12)
      {
        v19 = MCEDUClassroomErrorDomain;
        v20 = MCErrorArray();
        *a3 = [NSError MCErrorWithDomain:v19 code:45000 descriptionArray:v20 underlyingError:v7 errorType:MCErrorTypeFatal, 0];
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
        objc_enumerationMutation(v21);
      }

      v33 = [(MCEDUClassroomPayloadHandler *)self _persistentIDForPayloadUUID:*(*(&v42 + 1) + 8 * v32) requireIdentity:0 error:a3];
      if (!v33)
      {
        break;
      }

      v34 = v33;
      [v9 addObject:v33];

      if (v30 == ++v32)
      {
        v30 = [v21 countByEnumeratingWithState:&v42 objects:v51 count:16];
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

  if (!a3)
  {
    goto LABEL_40;
  }

  v8 = MCEDUClassroomErrorDomain;
  v9 = MCErrorArray();
  v10 = [NSError MCErrorWithDomain:v8 code:45001 descriptionArray:v9 errorType:MCErrorTypeFatal, 0];
LABEL_7:
  v12 = 0;
  *a3 = v10;
LABEL_8:

LABEL_41:
  return v12;
}

- (void)remove
{
  v3 = [(MCNewPayloadHandler *)self profileHandler];
  v4 = [v3 isSetAside];

  if ((v4 & 1) == 0)
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