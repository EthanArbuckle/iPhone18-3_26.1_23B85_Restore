@interface DMFProfile
- (id)initWithProfile:(id)profile isManaged:(BOOL)managed signerCertificates:(id)certificates restrictions:(id)restrictions;
@end

@implementation DMFProfile

- (id)initWithProfile:(id)profile isManaged:(BOOL)managed signerCertificates:(id)certificates restrictions:(id)restrictions
{
  profileCopy = profile;
  certificatesCopy = certificates;
  restrictionsCopy = restrictions;
  v43 = restrictionsCopy;
  v44 = certificatesCopy;
  if ([profileCopy isEncrypted])
  {
    v11 = 0;
  }

  else
  {
    v39 = profileCopy;
    payloads = [profileCopy payloads];
    v48 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [0 count]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = payloads;
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
          type = [v17 type];
          identifier = [v17 identifier];
          version = [v17 version];
          displayName = [v17 displayName];
          organization = [v17 organization];
          payloadDescription = [v17 payloadDescription];
          v25 = [v18 initWithType:type identifier:identifier payloadVersion:version displayName:displayName organization:organization payloadDescription:payloadDescription];
          [v48 addObject:v25];

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v14 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
      }

      while (v14);
    }

    profileCopy = v39;
    restrictionsCopy = v43;
    certificatesCopy = v44;
    v11 = v48;
  }

  v49 = v11;
  obja = [profileCopy installType] == 2;
  uUID = [profileCopy UUID];
  identifier2 = [profileCopy identifier];
  version2 = [profileCopy version];
  displayName2 = [profileCopy displayName];
  organization2 = [profileCopy organization];
  profileDescription = [profileCopy profileDescription];
  isLocked = [profileCopy isLocked];
  removalPasscode = [profileCopy removalPasscode];
  isEncrypted = [profileCopy isEncrypted];
  v31 = [certificatesCopy copy];
  v32 = [v11 copy];
  v33 = [restrictionsCopy copy];
  BYTE3(v35) = isEncrypted;
  BYTE2(v35) = removalPasscode != 0;
  BYTE1(v35) = isLocked;
  LOBYTE(v35) = managed;
  objb = [DMFProfile initWithUUID:"initWithUUID:type:identifier:profileVersion:displayName:organization:profileDescription:isManaged:isLocked:hasRemovalPasscode:isEncrypted:signerCertificates:payloads:restrictions:" type:uUID identifier:obja profileVersion:identifier2 displayName:version2 organization:displayName2 profileDescription:organization2 isManaged:profileDescription isLocked:v35 hasRemovalPasscode:v31 isEncrypted:v32 signerCertificates:v33 payloads:? restrictions:?];

  return objb;
}

@end