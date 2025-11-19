@interface DMFProfile
- (id)initWithProfile:(id)a3 isManaged:(BOOL)a4 signerCertificates:(id)a5 restrictions:(id)a6;
@end

@implementation DMFProfile

- (id)initWithProfile:(id)a3 isManaged:(BOOL)a4 signerCertificates:(id)a5 restrictions:(id)a6
{
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v43 = v10;
  v44 = v9;
  if ([v8 isEncrypted])
  {
    v11 = 0;
  }

  else
  {
    v39 = v8;
    v12 = [v8 payloads];
    v48 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [0 count]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = v12;
    v13 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v51;
      do
      {
        v16 = 0;
        do
        {
          if (*v51 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v50 + 1) + 8 * v16);
          v18 = [DMFProfilePayload alloc];
          v19 = [v17 type];
          v20 = [v17 identifier];
          v21 = [v17 version];
          v22 = [v17 displayName];
          v23 = [v17 organization];
          v24 = [v17 payloadDescription];
          v25 = [v18 initWithType:v19 identifier:v20 payloadVersion:v21 displayName:v22 organization:v23 payloadDescription:v24];
          [v48 addObject:v25];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v14);
    }

    v8 = v39;
    v10 = v43;
    v9 = v44;
    v11 = v48;
  }

  v49 = v11;
  obja = [v8 installType] == 2;
  v40 = [v8 UUID];
  v38 = [v8 identifier];
  v37 = [v8 version];
  v36 = [v8 displayName];
  v26 = [v8 organization];
  v27 = [v8 profileDescription];
  v28 = [v8 isLocked];
  v29 = [v8 removalPasscode];
  v30 = [v8 isEncrypted];
  v31 = [v9 copy];
  v32 = [v11 copy];
  v33 = [v10 copy];
  BYTE3(v35) = v30;
  BYTE2(v35) = v29 != 0;
  BYTE1(v35) = v28;
  LOBYTE(v35) = a4;
  objb = [DMFProfile initWithUUID:"initWithUUID:type:identifier:profileVersion:displayName:organization:profileDescription:isManaged:isLocked:hasRemovalPasscode:isEncrypted:signerCertificates:payloads:restrictions:" type:v40 identifier:obja profileVersion:v38 displayName:v37 organization:v36 profileDescription:v26 isManaged:v27 isLocked:v35 hasRemovalPasscode:v31 isEncrypted:v32 signerCertificates:v33 payloads:? restrictions:?];

  return objb;
}

@end