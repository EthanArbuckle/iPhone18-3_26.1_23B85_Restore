@interface KCSharingPrivateKeyCredential
+ (NSSet)requiredAttributeKeys;
- (BOOL)isEqual:(id)equal;
- (KCSharingPrivateKeyCredential)initWithAttributes:(id)attributes error:(id *)error;
- (KCSharingPrivateKeyCredential)initWithDatabaseItem:(SecDbItem *)item error:(id *)error;
- (KCSharingPrivateKeyCredential)initWithProto:(id)proto sharingGroup:(id)group error:(id *)error;
- (NSString)description;
- (id)attributesWithAccessGroups:(id)groups error:(id *)error;
- (id)proto;
- (unint64_t)hash;
@end

@implementation KCSharingPrivateKeyCredential

- (id)attributesWithAccessGroups:(id)groups error:(id *)error
{
  v41[0] = kSecAttrSharingGroup;
  v40 = [(KCSharingPrivateKeyCredential *)self sharingGroup:groups];
  v42[0] = v40;
  v41[1] = kSecAttrKeyType;
  v39 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self keyType]];
  v42[1] = v39;
  v41[2] = kSecAttrApplicationTag;
  applicationTag = [(KCSharingPrivateKeyCredential *)self applicationTag];
  v42[2] = applicationTag;
  v41[3] = kSecAttrLabel;
  label = [(KCSharingPrivateKeyCredential *)self label];
  v42[3] = label;
  v41[4] = kSecAttrApplicationLabel;
  applicationLabel = [(KCSharingPrivateKeyCredential *)self applicationLabel];
  v42[4] = applicationLabel;
  v41[5] = kSecValueData;
  keyMaterial = [(KCSharingPrivateKeyCredential *)self keyMaterial];
  v42[5] = keyMaterial;
  v41[6] = kSecAttrKeySizeInBits;
  v7 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self keySizeInBits]];
  v42[6] = v7;
  v41[7] = kSecAttrEffectiveKeySize;
  v8 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self effectiveKeySize]];
  v42[7] = v8;
  v41[8] = kSecAttrCreationDate;
  creationDate = [(KCSharingPrivateKeyCredential *)self creationDate];
  v42[8] = creationDate;
  v41[9] = kSecAttrModificationDate;
  modificationDate = [(KCSharingPrivateKeyCredential *)self modificationDate];
  v42[9] = modificationDate;
  v42[10] = &__kCFBooleanFalse;
  v41[10] = kSecAttrSynchronizable;
  v41[11] = kSecAttrAccessible;
  v42[11] = kSecAttrAccessibleWhenUnlocked;
  v41[12] = kSecAttrAccessGroup;
  accessGroup = [(KCSharingPrivateKeyCredential *)self accessGroup];
  v42[12] = accessGroup;
  v12 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:13];
  v13 = [v12 mutableCopy];

  alias = [(KCSharingPrivateKeyCredential *)self alias];
  [v13 setObject:alias forKeyedSubscript:kSecAttrAlias];

  v15 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self creator]];
  [v13 setObject:v15 forKeyedSubscript:kSecAttrKeyCreator];

  startDate = [(KCSharingPrivateKeyCredential *)self startDate];
  [v13 setObject:startDate forKeyedSubscript:kSecAttrStartDate];

  endDate = [(KCSharingPrivateKeyCredential *)self endDate];
  [v13 setObject:endDate forKeyedSubscript:kSecAttrEndDate];

  viewHint = [(KCSharingPrivateKeyCredential *)self viewHint];
  [v13 setObject:viewHint forKeyedSubscript:kSecAttrSyncViewHint];

  v19 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self keyClass]];
  [v13 setObject:v19 forKeyedSubscript:kSecAttrKeyClass];

  v20 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self isPermanent]];
  [v13 setObject:v20 forKeyedSubscript:kSecAttrIsPermanent];

  v21 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self isPrivate]];
  [v13 setObject:v21 forKeyedSubscript:kSecAttrIsPrivate];

  v22 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self isModifiable]];
  [v13 setObject:v22 forKeyedSubscript:kSecAttrIsModifiable];

  v23 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self isSensitive]];
  [v13 setObject:v23 forKeyedSubscript:kSecAttrIsSensitive];

  v24 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self wasAlwaysSensitive]];
  [v13 setObject:v24 forKeyedSubscript:kSecAttrWasAlwaysSensitive];

  v25 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self isExtractable]];
  [v13 setObject:v25 forKeyedSubscript:kSecAttrIsExtractable];

  v26 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self wasNeverExtractable]];
  [v13 setObject:v26 forKeyedSubscript:kSecAttrWasNeverExtractable];

  v27 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self canEncrypt]];
  [v13 setObject:v27 forKeyedSubscript:kSecAttrCanEncrypt];

  v28 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self canDecrypt]];
  [v13 setObject:v28 forKeyedSubscript:kSecAttrCanDecrypt];

  v29 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self canDerive]];
  [v13 setObject:v29 forKeyedSubscript:kSecAttrCanDerive];

  v30 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self canSign]];
  [v13 setObject:v30 forKeyedSubscript:kSecAttrCanSign];

  v31 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self canVerify]];
  [v13 setObject:v31 forKeyedSubscript:kSecAttrCanVerify];

  v32 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self canSignRecover]];
  [v13 setObject:v32 forKeyedSubscript:kSecAttrCanSignRecover];

  v33 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self canVerifyRecover]];
  [v13 setObject:v33 forKeyedSubscript:kSecAttrCanVerifyRecover];

  v34 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self canWrap]];
  [v13 setObject:v34 forKeyedSubscript:kSecAttrCanWrap];

  v35 = [NSNumber numberWithInteger:[(KCSharingPrivateKeyCredential *)self canUnwrap]];
  [v13 setObject:v35 forKeyedSubscript:kSecAttrCanUnwrap];

  return v13;
}

- (id)proto
{
  v3 = objc_opt_new();
  accessGroup = [(KCSharingPrivateKeyCredential *)self accessGroup];
  [v3 setAccessGroup:accessGroup];

  [v3 setKeyType:{-[KCSharingPrivateKeyCredential keyType](self, "keyType")}];
  applicationTag = [(KCSharingPrivateKeyCredential *)self applicationTag];
  [v3 setApplicationTag:applicationTag];

  label = [(KCSharingPrivateKeyCredential *)self label];
  [v3 setLabel:label];

  applicationLabel = [(KCSharingPrivateKeyCredential *)self applicationLabel];
  [v3 setApplicationLabel:applicationLabel];

  keyMaterial = [(KCSharingPrivateKeyCredential *)self keyMaterial];
  [v3 setKeyMaterial:keyMaterial];

  [v3 setKeySizeInBits:{-[KCSharingPrivateKeyCredential keySizeInBits](self, "keySizeInBits")}];
  [v3 setEffectiveKeySize:{-[KCSharingPrivateKeyCredential effectiveKeySize](self, "effectiveKeySize")}];
  creationDate = [(KCSharingPrivateKeyCredential *)self creationDate];
  [creationDate timeIntervalSinceReferenceDate];
  [v3 setCreationDate:?];

  modificationDate = [(KCSharingPrivateKeyCredential *)self modificationDate];
  [modificationDate timeIntervalSinceReferenceDate];
  [v3 setModificationDate:?];

  alias = [(KCSharingPrivateKeyCredential *)self alias];
  [v3 setAlias:alias];

  [v3 setCreator:{-[KCSharingPrivateKeyCredential creator](self, "creator")}];
  startDate = [(KCSharingPrivateKeyCredential *)self startDate];
  [startDate timeIntervalSinceReferenceDate];
  [v3 setStartDate:?];

  endDate = [(KCSharingPrivateKeyCredential *)self endDate];
  [endDate timeIntervalSinceReferenceDate];
  [v3 setEndDate:?];

  viewHint = [(KCSharingPrivateKeyCredential *)self viewHint];
  [v3 setViewHint:viewHint];

  [v3 setKeyClass:{-[KCSharingPrivateKeyCredential keyClass](self, "keyClass")}];
  [v3 setIsPermanent:{-[KCSharingPrivateKeyCredential isPermanent](self, "isPermanent")}];
  [v3 setIsPrivate:{-[KCSharingPrivateKeyCredential isPrivate](self, "isPrivate")}];
  [v3 setIsModifiable:{-[KCSharingPrivateKeyCredential isModifiable](self, "isModifiable")}];
  [v3 setIsSensitive:{-[KCSharingPrivateKeyCredential isSensitive](self, "isSensitive")}];
  [v3 setWasAlwaysSensitive:{-[KCSharingPrivateKeyCredential wasAlwaysSensitive](self, "wasAlwaysSensitive")}];
  [v3 setIsExtractable:{-[KCSharingPrivateKeyCredential isExtractable](self, "isExtractable")}];
  [v3 setWasNeverExtractable:{-[KCSharingPrivateKeyCredential wasNeverExtractable](self, "wasNeverExtractable")}];
  [v3 setCanEncrypt:{-[KCSharingPrivateKeyCredential canEncrypt](self, "canEncrypt")}];
  [v3 setCanDecrypt:{-[KCSharingPrivateKeyCredential canDecrypt](self, "canDecrypt")}];
  [v3 setCanDerive:{-[KCSharingPrivateKeyCredential canDerive](self, "canDerive")}];
  [v3 setCanSign:{-[KCSharingPrivateKeyCredential canSign](self, "canSign")}];
  [v3 setCanVerify:{-[KCSharingPrivateKeyCredential canVerify](self, "canVerify")}];
  [v3 setCanSignRecover:{-[KCSharingPrivateKeyCredential canSignRecover](self, "canSignRecover")}];
  [v3 setCanVerifyRecover:{-[KCSharingPrivateKeyCredential canVerifyRecover](self, "canVerifyRecover")}];
  [v3 setCanWrap:{-[KCSharingPrivateKeyCredential canWrap](self, "canWrap")}];
  [v3 setCanUnwrap:{-[KCSharingPrivateKeyCredential canUnwrap](self, "canUnwrap")}];

  return v3;
}

- (NSString)description
{
  sharingGroup = [(KCSharingPrivateKeyCredential *)self sharingGroup];
  accessGroup = [(KCSharingPrivateKeyCredential *)self accessGroup];
  keyType = [(KCSharingPrivateKeyCredential *)self keyType];
  applicationTag = [(KCSharingPrivateKeyCredential *)self applicationTag];
  label = [(KCSharingPrivateKeyCredential *)self label];
  applicationLabel = [(KCSharingPrivateKeyCredential *)self applicationLabel];
  alias = [(KCSharingPrivateKeyCredential *)self alias];
  startDate = [(KCSharingPrivateKeyCredential *)self startDate];
  endDate = [(KCSharingPrivateKeyCredential *)self endDate];
  viewHint = [(KCSharingPrivateKeyCredential *)self viewHint];
  keyClass = [(KCSharingPrivateKeyCredential *)self keyClass];
  isPermanent = [(KCSharingPrivateKeyCredential *)self isPermanent];
  isPrivate = [(KCSharingPrivateKeyCredential *)self isPrivate];
  isModifiable = [(KCSharingPrivateKeyCredential *)self isModifiable];
  isSensitive = [(KCSharingPrivateKeyCredential *)self isSensitive];
  wasAlwaysSensitive = [(KCSharingPrivateKeyCredential *)self wasAlwaysSensitive];
  isExtractable = [(KCSharingPrivateKeyCredential *)self isExtractable];
  wasNeverExtractable = [(KCSharingPrivateKeyCredential *)self wasNeverExtractable];
  canEncrypt = [(KCSharingPrivateKeyCredential *)self canEncrypt];
  canDecrypt = [(KCSharingPrivateKeyCredential *)self canDecrypt];
  canDerive = [(KCSharingPrivateKeyCredential *)self canDerive];
  canSign = [(KCSharingPrivateKeyCredential *)self canSign];
  canVerify = [(KCSharingPrivateKeyCredential *)self canVerify];
  canSignRecover = [(KCSharingPrivateKeyCredential *)self canSignRecover];
  canVerifyRecover = [(KCSharingPrivateKeyCredential *)self canVerifyRecover];
  canWrap = [(KCSharingPrivateKeyCredential *)self canWrap];
  canUnwrap = [(KCSharingPrivateKeyCredential *)self canUnwrap];
  creator = [(KCSharingPrivateKeyCredential *)self creator];
  keySizeInBits = [(KCSharingPrivateKeyCredential *)self keySizeInBits];
  effectiveKeySize = [(KCSharingPrivateKeyCredential *)self effectiveKeySize];
  creationDate = [(KCSharingPrivateKeyCredential *)self creationDate];
  modificationDate = [(KCSharingPrivateKeyCredential *)self modificationDate];
  v36 = [NSString stringWithFormat:@"KCSharingPrivateKeyCredential(sharingGroup:%@, accessGroup:%@, keyType:%ld, applicationTag:%@, label:%@, applicationLabel:%@, alias:%@, startDate:%@, endDate:%@, viewHint:%@, keyClass:%ld, isPermanent:%ld, isPrivate:%ld, isModifiable:%ld, isSensitive:%ld, wasAlwaysSensitive:%ld, isExtractable:%ld, wasNeverExtractable:%ld, canEncrypt:%ld, canDecrypt:%ld, canDerive:%ld, canSign:%ld, canVerify:%ld, canSignRecover:%ld, canVerifyRecover:%ld, canWrap:%ld, canUnwrap:%ld, creator:%ld, keySizeInBits:%ld, effectiveKeySize:%ld, creationDate:%@, modificationDate:%@)", sharingGroup, accessGroup, keyType, applicationTag, label, applicationLabel, alias, startDate, endDate, viewHint, keyClass, isPermanent, isPrivate, isModifiable, isSensitive, wasAlwaysSensitive, isExtractable, wasNeverExtractable, canEncrypt, canDecrypt, canDerive, canSign, canVerify, canSignRecover, canVerifyRecover, canWrap, canUnwrap, creator, keySizeInBits, effectiveKeySize, creationDate, modificationDate];

  return v36;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v42 = 1;
  }

  else if ([(KCSharingPrivateKeyCredential *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    sharingGroup = [(KCSharingPrivateKeyCredential *)self sharingGroup];
    sharingGroup2 = [(KCSharingPrivateKeyCredential *)v5 sharingGroup];
    if ([sharingGroup isEqualToString:sharingGroup2])
    {
      accessGroup = [(KCSharingPrivateKeyCredential *)self accessGroup];
      accessGroup2 = [(KCSharingPrivateKeyCredential *)v5 accessGroup];
      if ([accessGroup isEqualToString:accessGroup2] && (v10 = -[KCSharingPrivateKeyCredential keyType](self, "keyType"), v10 == -[KCSharingPrivateKeyCredential keyType](v5, "keyType")))
      {
        applicationTag = [(KCSharingPrivateKeyCredential *)self applicationTag];
        applicationTag2 = [(KCSharingPrivateKeyCredential *)v5 applicationTag];
        if ([applicationTag isEqualToData:applicationTag2])
        {
          label = [(KCSharingPrivateKeyCredential *)self label];
          label2 = [(KCSharingPrivateKeyCredential *)v5 label];
          if ([label isEqualToString:?])
          {
            v60 = applicationTag;
            applicationLabel = [(KCSharingPrivateKeyCredential *)self applicationLabel];
            [(KCSharingPrivateKeyCredential *)v5 applicationLabel];
            v58 = v59 = applicationLabel;
            if ([applicationLabel isEqualToData:?])
            {
              keyMaterial = [(KCSharingPrivateKeyCredential *)self keyMaterial];
              keyMaterial2 = [(KCSharingPrivateKeyCredential *)v5 keyMaterial];
              v57 = keyMaterial;
              v16 = [keyMaterial isEqualToData:?];
              applicationTag = v60;
              if (v16)
              {
                v55 = label;
                keySizeInBits = [(KCSharingPrivateKeyCredential *)self keySizeInBits];
                if (keySizeInBits == [(KCSharingPrivateKeyCredential *)v5 keySizeInBits]&& (v18 = [(KCSharingPrivateKeyCredential *)self effectiveKeySize], v18 == [(KCSharingPrivateKeyCredential *)v5 effectiveKeySize]))
                {
                  creationDate = [(KCSharingPrivateKeyCredential *)self creationDate];
                  creationDate2 = [(KCSharingPrivateKeyCredential *)v5 creationDate];
                  v54 = creationDate;
                  v20 = [creationDate isEqualToDate:?];
                  label = v55;
                  if (v20)
                  {
                    modificationDate = [(KCSharingPrivateKeyCredential *)self modificationDate];
                    modificationDate2 = [(KCSharingPrivateKeyCredential *)v5 modificationDate];
                    if ([modificationDate isEqualToDate:?])
                    {
                      alias = [(KCSharingPrivateKeyCredential *)self alias];
                      alias2 = [(KCSharingPrivateKeyCredential *)v5 alias];
                      if ([alias isEqualToData:?])
                      {
                        creator = [(KCSharingPrivateKeyCredential *)self creator];
                        if (creator == [(KCSharingPrivateKeyCredential *)v5 creator])
                        {
                          startDate = [(KCSharingPrivateKeyCredential *)self startDate];
                          startDate2 = [(KCSharingPrivateKeyCredential *)v5 startDate];
                          if ([startDate isEqualToDate:?])
                          {
                            endDate = [(KCSharingPrivateKeyCredential *)self endDate];
                            endDate2 = [(KCSharingPrivateKeyCredential *)v5 endDate];
                            v47 = endDate;
                            if ([endDate isEqualToDate:?])
                            {
                              viewHint = [(KCSharingPrivateKeyCredential *)self viewHint];
                              viewHint2 = [(KCSharingPrivateKeyCredential *)v5 viewHint];
                              v45 = viewHint;
                              if (![viewHint isEqualToString:?])
                              {
                                goto LABEL_51;
                              }

                              keyClass = [(KCSharingPrivateKeyCredential *)self keyClass];
                              if (keyClass != [(KCSharingPrivateKeyCredential *)v5 keyClass])
                              {
                                goto LABEL_51;
                              }

                              isPermanent = [(KCSharingPrivateKeyCredential *)self isPermanent];
                              if (isPermanent != [(KCSharingPrivateKeyCredential *)v5 isPermanent])
                              {
                                goto LABEL_51;
                              }

                              isPrivate = [(KCSharingPrivateKeyCredential *)self isPrivate];
                              if (isPrivate != [(KCSharingPrivateKeyCredential *)v5 isPrivate])
                              {
                                goto LABEL_51;
                              }

                              isModifiable = [(KCSharingPrivateKeyCredential *)self isModifiable];
                              if (isModifiable != [(KCSharingPrivateKeyCredential *)v5 isModifiable])
                              {
                                goto LABEL_51;
                              }

                              isSensitive = [(KCSharingPrivateKeyCredential *)self isSensitive];
                              if (isSensitive != [(KCSharingPrivateKeyCredential *)v5 isSensitive])
                              {
                                goto LABEL_51;
                              }

                              wasAlwaysSensitive = [(KCSharingPrivateKeyCredential *)self wasAlwaysSensitive];
                              if (wasAlwaysSensitive != [(KCSharingPrivateKeyCredential *)v5 wasAlwaysSensitive])
                              {
                                goto LABEL_51;
                              }

                              isExtractable = [(KCSharingPrivateKeyCredential *)self isExtractable];
                              if (isExtractable != [(KCSharingPrivateKeyCredential *)v5 isExtractable])
                              {
                                goto LABEL_51;
                              }

                              wasNeverExtractable = [(KCSharingPrivateKeyCredential *)self wasNeverExtractable];
                              if (wasNeverExtractable != [(KCSharingPrivateKeyCredential *)v5 wasNeverExtractable])
                              {
                                goto LABEL_51;
                              }

                              canEncrypt = [(KCSharingPrivateKeyCredential *)self canEncrypt];
                              if (canEncrypt != [(KCSharingPrivateKeyCredential *)v5 canEncrypt])
                              {
                                goto LABEL_51;
                              }

                              canDecrypt = [(KCSharingPrivateKeyCredential *)self canDecrypt];
                              if (canDecrypt == [(KCSharingPrivateKeyCredential *)v5 canDecrypt]&& (v35 = [(KCSharingPrivateKeyCredential *)self canDerive], v35 == [(KCSharingPrivateKeyCredential *)v5 canDerive]) && (v36 = [(KCSharingPrivateKeyCredential *)self canSign], v36 == [(KCSharingPrivateKeyCredential *)v5 canSign]) && (v37 = [(KCSharingPrivateKeyCredential *)self canVerify], v37 == [(KCSharingPrivateKeyCredential *)v5 canVerify]) && (v38 = [(KCSharingPrivateKeyCredential *)self canSignRecover], v38 == [(KCSharingPrivateKeyCredential *)v5 canSignRecover]) && (v39 = [(KCSharingPrivateKeyCredential *)self canVerifyRecover], v39 == [(KCSharingPrivateKeyCredential *)v5 canVerifyRecover]) && (v40 = [(KCSharingPrivateKeyCredential *)self canWrap], v40 == [(KCSharingPrivateKeyCredential *)v5 canWrap]))
                              {
                                canUnwrap = [(KCSharingPrivateKeyCredential *)self canUnwrap];
                                v42 = canUnwrap == [(KCSharingPrivateKeyCredential *)v5 canUnwrap];
                              }

                              else
                              {
LABEL_51:
                                v42 = 0;
                              }
                            }

                            else
                            {
                              v42 = 0;
                            }
                          }

                          else
                          {
                            v42 = 0;
                          }
                        }

                        else
                        {
                          v42 = 0;
                        }

                        label = v55;
                        applicationTag = v60;
                      }

                      else
                      {
                        v42 = 0;
                      }
                    }

                    else
                    {
                      v42 = 0;
                    }
                  }

                  else
                  {
                    v42 = 0;
                  }
                }

                else
                {
                  v42 = 0;
                  label = v55;
                }
              }

              else
              {
                v42 = 0;
              }
            }

            else
            {
              v42 = 0;
              applicationTag = v60;
            }
          }

          else
          {
            v42 = 0;
          }
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (unint64_t)hash
{
  sharingGroup = [(KCSharingPrivateKeyCredential *)self sharingGroup];
  v4 = [sharingGroup hash];

  accessGroup = [(KCSharingPrivateKeyCredential *)self accessGroup];
  v6 = [accessGroup hash] - v4 + 32 * v4;

  v7 = [(KCSharingPrivateKeyCredential *)self keyType]+ 32 * v6 - v6;
  applicationTag = [(KCSharingPrivateKeyCredential *)self applicationTag];
  v9 = [applicationTag hash] + 32 * v7 - v7;

  label = [(KCSharingPrivateKeyCredential *)self label];
  v11 = [label hash] + 32 * v9 - v9;

  applicationLabel = [(KCSharingPrivateKeyCredential *)self applicationLabel];
  v13 = [applicationLabel hash] + 32 * v11 - v11;

  keyMaterial = [(KCSharingPrivateKeyCredential *)self keyMaterial];
  v15 = [keyMaterial hash] + 32 * v13 - v13;

  v16 = [(KCSharingPrivateKeyCredential *)self keySizeInBits]+ 32 * v15 - v15;
  v17 = [(KCSharingPrivateKeyCredential *)self effectiveKeySize]+ 32 * v16 - v16;
  creationDate = [(KCSharingPrivateKeyCredential *)self creationDate];
  v19 = [creationDate hash] + 32 * v17 - v17;

  modificationDate = [(KCSharingPrivateKeyCredential *)self modificationDate];
  v21 = [modificationDate hash] + 32 * v19 - v19;

  alias = [(KCSharingPrivateKeyCredential *)self alias];
  v23 = [alias hash] + 32 * v21 - v21;

  v24 = [(KCSharingPrivateKeyCredential *)self creator]+ 32 * v23 - v23;
  startDate = [(KCSharingPrivateKeyCredential *)self startDate];
  v26 = [startDate hash] + 32 * v24 - v24;

  endDate = [(KCSharingPrivateKeyCredential *)self endDate];
  v28 = [endDate hash] + 32 * v26 - v26;

  viewHint = [(KCSharingPrivateKeyCredential *)self viewHint];
  v30 = [viewHint hash] + 32 * v28 - v28;

  v31 = [(KCSharingPrivateKeyCredential *)self keyClass]+ 32 * v30 - v30;
  v32 = [(KCSharingPrivateKeyCredential *)self isPermanent]+ 32 * v31 - v31;
  v33 = [(KCSharingPrivateKeyCredential *)self isPrivate]+ 32 * v32 - v32;
  v34 = [(KCSharingPrivateKeyCredential *)self isModifiable]+ 32 * v33 - v33;
  v35 = [(KCSharingPrivateKeyCredential *)self isSensitive]+ 32 * v34 - v34;
  v36 = [(KCSharingPrivateKeyCredential *)self wasAlwaysSensitive]+ 32 * v35 - v35;
  v37 = [(KCSharingPrivateKeyCredential *)self isExtractable]+ 32 * v36 - v36;
  v38 = [(KCSharingPrivateKeyCredential *)self wasNeverExtractable]+ 32 * v37 - v37;
  v39 = [(KCSharingPrivateKeyCredential *)self canEncrypt]+ 32 * v38 - v38;
  v40 = [(KCSharingPrivateKeyCredential *)self canDecrypt]+ 32 * v39 - v39;
  v41 = [(KCSharingPrivateKeyCredential *)self canDerive]+ 32 * v40 - v40;
  v42 = [(KCSharingPrivateKeyCredential *)self canSign]+ 32 * v41 - v41;
  v43 = [(KCSharingPrivateKeyCredential *)self canVerify]+ 32 * v42 - v42;
  v44 = [(KCSharingPrivateKeyCredential *)self canSignRecover]+ 32 * v43 - v43;
  v45 = [(KCSharingPrivateKeyCredential *)self canVerifyRecover]+ 32 * v44 - v44;
  v46 = [(KCSharingPrivateKeyCredential *)self canWrap]+ 32 * v45 - v45;
  return [(KCSharingPrivateKeyCredential *)self canUnwrap]+ 32 * v46 - v46;
}

- (KCSharingPrivateKeyCredential)initWithAttributes:(id)attributes error:(id *)error
{
  attributesCopy = attributes;
  v134.receiver = self;
  v134.super_class = KCSharingPrivateKeyCredential;
  v7 = [(KCSharingPrivateKeyCredential *)&v134 init];

  if (!v7)
  {
    goto LABEL_174;
  }

  v8 = kSecAttrSharingGroup;
  v9 = [attributesCopy objectForKeyedSubscript:kSecAttrSharingGroup];
  if (!v9)
  {
    v285 = @"KCSharingMissingAttribute";
    v286 = v8;
    v10 = [NSDictionary dictionaryWithObjects:&v286 forKeys:&v285 count:1];
    sub_100061E2C(error, 22, v10);
LABEL_109:

    goto LABEL_110;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v283 = @"KCSharingInvalidAttribute";
    v281 = v8;
    v10 = [v9 copy];
    v282 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v282 forKeys:&v281 count:1];
    v284 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v284 forKeys:&v283 count:1];
    errorCopy3 = error;
    v54 = 1;
LABEL_94:
    sub_100061E2C(errorCopy3, v54, v12);
LABEL_107:

    goto LABEL_108;
  }

  v10 = [attributesCopy objectForKeyedSubscript:kSecAttrAccessGroup];
  if (!v10)
  {
    v279 = @"KCSharingMissingAttribute";
    v280 = kSecAttrAccessGroup;
    v11 = [NSDictionary dictionaryWithObjects:&v280 forKeys:&v279 count:1];
    sub_100061E2C(error, 22, v11);
LABEL_108:

    goto LABEL_109;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v277 = @"KCSharingInvalidAttribute";
    v275 = kSecAttrAccessGroup;
    v11 = [v10 copy];
    v276 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v276 forKeys:&v275 count:1];
    v278 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v278 forKeys:&v277 count:1];
    errorCopy5 = error;
    v56 = 1;
LABEL_97:
    sub_100061E2C(errorCopy5, v56, v13);
LABEL_106:

    goto LABEL_107;
  }

  v11 = [attributesCopy objectForKeyedSubscript:kSecAttrKeyType];
  if (!v11)
  {
    v273 = @"KCSharingMissingAttribute";
    v274 = kSecAttrKeyType;
    v12 = [NSDictionary dictionaryWithObjects:&v274 forKeys:&v273 count:1];
    errorCopy3 = error;
    v54 = 22;
    goto LABEL_94;
  }

  if ((_NSIsNSString() & 1) == 0 && (_NSIsNSNumber() & 1) == 0)
  {
    v271 = @"KCSharingInvalidAttribute";
    v269 = kSecAttrKeyType;
    v12 = [v11 copy];
    v270 = v12;
    v13 = [NSDictionary dictionaryWithObjects:&v270 forKeys:&v269 count:1];
    v272 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v272 forKeys:&v271 count:1];
    errorCopy7 = error;
    v61 = 1;
LABEL_104:
    sub_100061E2C(errorCopy7, v61, v14);
    goto LABEL_105;
  }

  v12 = [attributesCopy objectForKeyedSubscript:kSecAttrApplicationTag];
  if (!v12)
  {
    v267 = @"KCSharingMissingAttribute";
    v268 = kSecAttrApplicationTag;
    v13 = [NSDictionary dictionaryWithObjects:&v268 forKeys:&v267 count:1];
    errorCopy5 = error;
    v56 = 22;
    goto LABEL_97;
  }

  if (!_NSIsNSData() || ![v12 length])
  {
    v265 = @"KCSharingInvalidAttribute";
    v263 = kSecAttrApplicationTag;
    v13 = [v12 copy];
    v264 = v13;
    v14 = [NSDictionary dictionaryWithObjects:&v264 forKeys:&v263 count:1];
    v266 = v14;
    v57 = [NSDictionary dictionaryWithObjects:&v266 forKeys:&v265 count:1];
    errorCopy8 = error;
    v59 = 1;
LABEL_100:
    sub_100061E2C(errorCopy8, v59, v57);
LABEL_101:

LABEL_105:
    goto LABEL_106;
  }

  v13 = [attributesCopy objectForKeyedSubscript:kSecAttrLabel];
  if (!v13)
  {
    v261 = @"KCSharingMissingAttribute";
    v262 = kSecAttrLabel;
    v14 = [NSDictionary dictionaryWithObjects:&v262 forKeys:&v261 count:1];
    errorCopy7 = error;
    v61 = 22;
    goto LABEL_104;
  }

  if ((_NSIsNSString() & 1) == 0)
  {
    v259 = @"KCSharingInvalidAttribute";
    v257 = kSecAttrLabel;
    v14 = [v13 copy];
    v258 = v14;
    v133 = v12;
    v63 = v13;
    v57 = [NSDictionary dictionaryWithObjects:&v258 forKeys:&v257 count:1];
    v260 = v57;
    v64 = [NSDictionary dictionaryWithObjects:&v260 forKeys:&v259 count:1];
    sub_100061E2C(error, 1, v64);

    v13 = v63;
    v12 = v133;
    goto LABEL_101;
  }

  v14 = [attributesCopy objectForKeyedSubscript:kSecAttrApplicationLabel];
  if (!v14)
  {
    v255 = @"KCSharingMissingAttribute";
    v256 = kSecAttrApplicationLabel;
    v57 = [NSDictionary dictionaryWithObjects:&v256 forKeys:&v255 count:1];
    errorCopy8 = error;
    v59 = 22;
    goto LABEL_100;
  }

  v131 = v13;
  if (!_NSIsNSData() || ![v14 length])
  {
    v253 = @"KCSharingInvalidAttribute";
    v251 = kSecAttrApplicationLabel;
    v57 = [v14 copy];
    v252 = v57;
    v130 = v14;
    v65 = [NSDictionary dictionaryWithObjects:&v252 forKeys:&v251 count:1];
    v254 = v65;
    v66 = [NSDictionary dictionaryWithObjects:&v254 forKeys:&v253 count:1];
    sub_100061E2C(error, 1, v66);

    v14 = v130;
    v13 = v131;
    goto LABEL_101;
  }

  v15 = [attributesCopy objectForKeyedSubscript:kSecValueData];
  if (!v15)
  {
    v249 = @"KCSharingMissingAttribute";
    v250 = kSecValueData;
    v67 = [NSDictionary dictionaryWithObjects:&v250 forKeys:&v249 count:1];
    sub_100061E2C(error, 22, v67);
    goto LABEL_117;
  }

  v129 = v14;
  v128 = v15;
  if (!_NSIsNSData() || ![v15 length])
  {
    v247 = @"KCSharingInvalidAttribute";
    v245 = kSecValueData;
    v67 = [v15 copy];
    v246 = v67;
    v68 = [NSDictionary dictionaryWithObjects:&v246 forKeys:&v245 count:1];
    v248 = v68;
    v69 = [NSDictionary dictionaryWithObjects:&v248 forKeys:&v247 count:1];
    sub_100061E2C(error, 1, v69);

    v15 = v128;
    v14 = v129;
LABEL_117:

    goto LABEL_107;
  }

  v132 = v12;
  v16 = [attributesCopy objectForKeyedSubscript:kSecAttrKeySizeInBits];
  if ((_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
  {
    v243 = @"KCSharingInvalidAttribute";
    v241 = kSecAttrKeySizeInBits;
    v71 = [v16 copy];
    v242 = v71;
    v72 = [NSDictionary dictionaryWithObjects:&v242 forKeys:&v241 count:1];
    v244 = v72;
    v73 = [NSDictionary dictionaryWithObjects:&v244 forKeys:&v243 count:1];
    sub_100061E2C(error, 1, v73);

LABEL_126:
    goto LABEL_108;
  }

  v127 = v16;
  v17 = [attributesCopy objectForKeyedSubscript:kSecAttrEffectiveKeySize];
  if (!v17)
  {
    v239 = @"KCSharingMissingAttribute";
    v240 = kSecAttrEffectiveKeySize;
    v70 = [NSDictionary dictionaryWithObjects:&v240 forKeys:&v239 count:1];
    sub_100061E2C(error, 22, v70);
LABEL_122:

LABEL_125:
    goto LABEL_126;
  }

  if ((_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
  {
    v237 = @"KCSharingInvalidAttribute";
    v235 = kSecAttrEffectiveKeySize;
    v70 = [v17 copy];
    v236 = v70;
    v75 = [NSDictionary dictionaryWithObjects:&v236 forKeys:&v235 count:1];
    v238 = v75;
    v76 = [NSDictionary dictionaryWithObjects:&v238 forKeys:&v237 count:1];
    sub_100061E2C(error, 1, v76);

    goto LABEL_122;
  }

  v126 = [attributesCopy objectForKeyedSubscript:kSecAttrCreationDate];
  if (!v126)
  {
    v233 = @"KCSharingMissingAttribute";
    v234 = kSecAttrCreationDate;
    v74 = [NSDictionary dictionaryWithObjects:&v234 forKeys:&v233 count:1];
    sub_100061E2C(error, 22, v74);
LABEL_124:

    goto LABEL_125;
  }

  if ((_NSIsNSDate() & 1) == 0)
  {
    v231 = @"KCSharingInvalidAttribute";
    v229 = kSecAttrCreationDate;
    v74 = [v126 copy];
    v230 = v74;
    v77 = [NSDictionary dictionaryWithObjects:&v230 forKeys:&v229 count:1];
    v232 = v77;
    v78 = [NSDictionary dictionaryWithObjects:&v232 forKeys:&v231 count:1];
    sub_100061E2C(error, 1, v78);

    goto LABEL_124;
  }

  v125 = [attributesCopy objectForKeyedSubscript:kSecAttrModificationDate];
  if (!v125)
  {
    v227 = @"KCSharingMissingAttribute";
    v228 = kSecAttrModificationDate;
    v124 = [NSDictionary dictionaryWithObjects:&v228 forKeys:&v227 count:1];
    sub_100061E2C(error, 22, v124);
LABEL_129:
    v52 = 0;
    goto LABEL_173;
  }

  if ((_NSIsNSDate() & 1) == 0)
  {
    v225 = @"KCSharingInvalidAttribute";
    v223 = kSecAttrModificationDate;
    v124 = [v125 copy];
    v224 = v124;
    v79 = [NSDictionary dictionaryWithObjects:&v224 forKeys:&v223 count:1];
    v226 = v79;
    v80 = [NSDictionary dictionaryWithObjects:&v226 forKeys:&v225 count:1];
    sub_100061E2C(error, 1, v80);

    goto LABEL_129;
  }

  v18 = kSecAttrAlias;
  v124 = [attributesCopy objectForKeyedSubscript:kSecAttrAlias];
  if (v124 && (_NSIsNSData() & 1) == 0)
  {
    v221 = @"KCSharingInvalidAttribute";
    v219 = v18;
    v19 = [v124 copy];
    v220 = v19;
    v123 = [NSDictionary dictionaryWithObjects:&v220 forKeys:&v219 count:1];
    v222 = v123;
    v122 = [NSDictionary dictionaryWithObjects:&v222 forKeys:&v221 count:1];
    sub_100061E2C(error, 1, v122);
    v52 = 0;
  }

  else
  {
    v19 = [attributesCopy objectForKeyedSubscript:kSecAttrCreator];
    if (!v19 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
    {
      v20 = kSecAttrStartDate;
      v123 = [attributesCopy objectForKeyedSubscript:kSecAttrStartDate];
      if (v123 && (_NSIsNSDate() & 1) == 0)
      {
        v213 = @"KCSharingInvalidAttribute";
        v211 = v20;
        v122 = [v123 copy];
        v212 = v122;
        v120 = [NSDictionary dictionaryWithObjects:&v212 forKeys:&v211 count:1];
        v214 = v120;
        v119 = [NSDictionary dictionaryWithObjects:&v214 forKeys:&v213 count:1];
        sub_100061E2C(error, 1, v119);
        v52 = 0;

LABEL_171:
        goto LABEL_172;
      }

      v21 = kSecAttrEndDate;
      v122 = [attributesCopy objectForKeyedSubscript:kSecAttrEndDate];
      if (v122 && (_NSIsNSDate() & 1) == 0)
      {
        v209 = @"KCSharingInvalidAttribute";
        v207 = v21;
        v120 = [v122 copy];
        v208 = v120;
        v118 = [NSDictionary dictionaryWithObjects:&v208 forKeys:&v207 count:1];
        v210 = v118;
        v117 = [NSDictionary dictionaryWithObjects:&v210 forKeys:&v209 count:1];
        sub_100061E2C(error, 1, v117);
        v52 = 0;

LABEL_170:
        goto LABEL_171;
      }

      v120 = [attributesCopy objectForKeyedSubscript:kSecAttrSyncViewHint];
      if (v120 && (_NSIsNSString() & 1) == 0)
      {
        v205 = @"KCSharingInvalidAttribute";
        v203 = kSecAttrSyncViewHint;
        v118 = [v120 copy];
        v204 = v118;
        v116 = [NSDictionary dictionaryWithObjects:&v204 forKeys:&v203 count:1];
        v206 = v116;
        v115 = [NSDictionary dictionaryWithObjects:&v206 forKeys:&v205 count:1];
        sub_100061E2C(error, 1, v115);
        v52 = 0;

LABEL_169:
        goto LABEL_170;
      }

      v118 = [attributesCopy objectForKeyedSubscript:kSecAttrKeyClass];
      if (v118 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v201 = @"KCSharingInvalidAttribute";
        v199 = kSecAttrKeyClass;
        v116 = [v118 copy];
        v200 = v116;
        v114 = [NSDictionary dictionaryWithObjects:&v200 forKeys:&v199 count:1];
        v202 = v114;
        v113 = [NSDictionary dictionaryWithObjects:&v202 forKeys:&v201 count:1];
        sub_100061E2C(error, 1, v113);
        v52 = 0;

LABEL_168:
        goto LABEL_169;
      }

      v116 = [attributesCopy objectForKeyedSubscript:kSecAttrIsPermanent];
      if (v116 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v197 = @"KCSharingInvalidAttribute";
        v195 = kSecAttrIsPermanent;
        v114 = [v116 copy];
        v196 = v114;
        v112 = [NSDictionary dictionaryWithObjects:&v196 forKeys:&v195 count:1];
        v198 = v112;
        v111 = [NSDictionary dictionaryWithObjects:&v198 forKeys:&v197 count:1];
        sub_100061E2C(error, 1, v111);
        v52 = 0;

LABEL_167:
        goto LABEL_168;
      }

      v22 = kSecAttrIsPrivate;
      v114 = [attributesCopy objectForKeyedSubscript:kSecAttrIsPrivate];
      if (v114 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v193 = @"KCSharingInvalidAttribute";
        v191 = v22;
        v112 = [v114 copy];
        v192 = v112;
        v110 = [NSDictionary dictionaryWithObjects:&v192 forKeys:&v191 count:1];
        v194 = v110;
        v109 = [NSDictionary dictionaryWithObjects:&v194 forKeys:&v193 count:1];
        sub_100061E2C(error, 1, v109);
        v52 = 0;

LABEL_166:
        goto LABEL_167;
      }

      v23 = kSecAttrIsModifiable;
      v112 = [attributesCopy objectForKeyedSubscript:kSecAttrIsModifiable];
      if (v112 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v189 = @"KCSharingInvalidAttribute";
        v187 = v23;
        v110 = [v112 copy];
        v188 = v110;
        v108 = [NSDictionary dictionaryWithObjects:&v188 forKeys:&v187 count:1];
        v190 = v108;
        v107 = [NSDictionary dictionaryWithObjects:&v190 forKeys:&v189 count:1];
        sub_100061E2C(error, 1, v107);
        v52 = 0;

LABEL_165:
        goto LABEL_166;
      }

      v110 = [attributesCopy objectForKeyedSubscript:kSecAttrIsSensitive];
      if (v110 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v185 = @"KCSharingInvalidAttribute";
        v183 = kSecAttrIsSensitive;
        v108 = [v110 copy];
        v184 = v108;
        v106 = [NSDictionary dictionaryWithObjects:&v184 forKeys:&v183 count:1];
        v186 = v106;
        v105 = [NSDictionary dictionaryWithObjects:&v186 forKeys:&v185 count:1];
        sub_100061E2C(error, 1, v105);
        v52 = 0;

LABEL_164:
        goto LABEL_165;
      }

      v24 = kSecAttrWasAlwaysSensitive;
      v108 = [attributesCopy objectForKeyedSubscript:kSecAttrWasAlwaysSensitive];
      if (v108 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v181 = @"KCSharingInvalidAttribute";
        v179 = v24;
        v106 = [v108 copy];
        v180 = v106;
        v104 = [NSDictionary dictionaryWithObjects:&v180 forKeys:&v179 count:1];
        v182 = v104;
        v103 = [NSDictionary dictionaryWithObjects:&v182 forKeys:&v181 count:1];
        sub_100061E2C(error, 1, v103);
        v52 = 0;

LABEL_163:
        goto LABEL_164;
      }

      v106 = [attributesCopy objectForKeyedSubscript:kSecAttrIsExtractable];
      if (v106 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v177 = @"KCSharingInvalidAttribute";
        v175 = kSecAttrIsExtractable;
        v104 = [v106 copy];
        v176 = v104;
        v102 = [NSDictionary dictionaryWithObjects:&v176 forKeys:&v175 count:1];
        v178 = v102;
        v101 = [NSDictionary dictionaryWithObjects:&v178 forKeys:&v177 count:1];
        sub_100061E2C(error, 1, v101);
        v52 = 0;

LABEL_162:
        goto LABEL_163;
      }

      v25 = kSecAttrWasNeverExtractable;
      v104 = [attributesCopy objectForKeyedSubscript:kSecAttrWasNeverExtractable];
      if (v104 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v173 = @"KCSharingInvalidAttribute";
        v171 = v25;
        v102 = [v104 copy];
        v172 = v102;
        v100 = [NSDictionary dictionaryWithObjects:&v172 forKeys:&v171 count:1];
        v174 = v100;
        v99 = [NSDictionary dictionaryWithObjects:&v174 forKeys:&v173 count:1];
        sub_100061E2C(error, 1, v99);
        v52 = 0;

LABEL_161:
        goto LABEL_162;
      }

      v102 = [attributesCopy objectForKeyedSubscript:kSecAttrCanEncrypt];
      if (v102 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v169 = @"KCSharingInvalidAttribute";
        v167 = kSecAttrCanEncrypt;
        v100 = [v102 copy];
        v168 = v100;
        v98 = [NSDictionary dictionaryWithObjects:&v168 forKeys:&v167 count:1];
        v170 = v98;
        v97 = [NSDictionary dictionaryWithObjects:&v170 forKeys:&v169 count:1];
        sub_100061E2C(error, 1, v97);
        v52 = 0;

LABEL_160:
        goto LABEL_161;
      }

      v100 = [attributesCopy objectForKeyedSubscript:kSecAttrCanDecrypt];
      if (v100 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v165 = @"KCSharingInvalidAttribute";
        v163 = kSecAttrCanDecrypt;
        v98 = [v100 copy];
        v164 = v98;
        v96 = [NSDictionary dictionaryWithObjects:&v164 forKeys:&v163 count:1];
        v166 = v96;
        v95 = [NSDictionary dictionaryWithObjects:&v166 forKeys:&v165 count:1];
        sub_100061E2C(error, 1, v95);
        v52 = 0;

LABEL_159:
        goto LABEL_160;
      }

      v98 = [attributesCopy objectForKeyedSubscript:kSecAttrCanDerive];
      if (v98 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v161 = @"KCSharingInvalidAttribute";
        v159 = kSecAttrCanDerive;
        v96 = [v98 copy];
        v160 = v96;
        v94 = [NSDictionary dictionaryWithObjects:&v160 forKeys:&v159 count:1];
        v162 = v94;
        v93 = [NSDictionary dictionaryWithObjects:&v162 forKeys:&v161 count:1];
        sub_100061E2C(error, 1, v93);
        v52 = 0;

LABEL_158:
        goto LABEL_159;
      }

      v96 = [attributesCopy objectForKeyedSubscript:kSecAttrCanSign];
      if (v96 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v157 = @"KCSharingInvalidAttribute";
        v155 = kSecAttrCanSign;
        v94 = [v96 copy];
        v156 = v94;
        v92 = [NSDictionary dictionaryWithObjects:&v156 forKeys:&v155 count:1];
        v158 = v92;
        v91 = [NSDictionary dictionaryWithObjects:&v158 forKeys:&v157 count:1];
        sub_100061E2C(error, 1, v91);
        v52 = 0;

LABEL_157:
        goto LABEL_158;
      }

      v94 = [attributesCopy objectForKeyedSubscript:kSecAttrCanVerify];
      if (v94 && (_NSIsNSNumber() & 1) == 0 && (_NSIsNSString() & 1) == 0)
      {
        v153 = @"KCSharingInvalidAttribute";
        v151 = kSecAttrCanVerify;
        v92 = [v94 copy];
        v152 = v92;
        v90 = [NSDictionary dictionaryWithObjects:&v152 forKeys:&v151 count:1];
        v154 = v90;
        v89 = [NSDictionary dictionaryWithObjects:&v154 forKeys:&v153 count:1];
        sub_100061E2C(error, 1, v89);
        v52 = 0;

LABEL_156:
        goto LABEL_157;
      }

      v26 = kSecAttrCanSignRecover;
      v92 = [attributesCopy objectForKeyedSubscript:kSecAttrCanSignRecover];
      if (!v92 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
      {
        v27 = kSecAttrCanVerifyRecover;
        v90 = [attributesCopy objectForKeyedSubscript:kSecAttrCanVerifyRecover];
        if (!v90 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
        {
          v88 = [attributesCopy objectForKeyedSubscript:kSecAttrCanWrap];
          if (!v88 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
          {
            v87 = [attributesCopy objectForKeyedSubscript:kSecAttrCanUnwrap];
            if (!v87 || (_NSIsNSNumber() & 1) != 0 || (_NSIsNSString() & 1) != 0)
            {
              v28 = [v9 copy];
              sharingGroup = v7->_sharingGroup;
              v7->_sharingGroup = v28;

              v30 = [v10 copy];
              accessGroup = v7->_accessGroup;
              v7->_accessGroup = v30;

              v7->_keyType = [v11 intValue];
              v32 = [v132 copy];
              applicationTag = v7->_applicationTag;
              v7->_applicationTag = v32;

              v34 = [v131 copy];
              label = v7->_label;
              v7->_label = v34;

              v36 = [v129 copy];
              applicationLabel = v7->_applicationLabel;
              v7->_applicationLabel = v36;

              v38 = [v15 copy];
              keyMaterial = v7->_keyMaterial;
              v7->_keyMaterial = v38;

              v7->_keySizeInBits = [v127 integerValue];
              v7->_effectiveKeySize = [v17 integerValue];
              v40 = [v126 copy];
              creationDate = v7->_creationDate;
              v7->_creationDate = v40;

              v42 = [v125 copy];
              modificationDate = v7->_modificationDate;
              v7->_modificationDate = v42;

              v44 = [v124 copy];
              alias = v7->_alias;
              v7->_alias = v44;

              v7->_creator = [v19 intValue];
              v46 = [v123 copy];
              startDate = v7->_startDate;
              v7->_startDate = v46;

              v48 = [v122 copy];
              endDate = v7->_endDate;
              v7->_endDate = v48;

              v50 = [v120 copy];
              viewHint = v7->_viewHint;
              v7->_viewHint = v50;

              v7->_keyClass = [v118 intValue];
              v7->_isPermanent = [v116 intValue];
              v7->_isPrivate = [v114 intValue];
              v7->_isModifiable = [v112 intValue];
              v7->_isSensitive = [v110 intValue];
              v7->_wasAlwaysSensitive = [v108 intValue];
              v7->_isExtractable = [v106 intValue];
              v7->_wasNeverExtractable = [v104 intValue];
              v7->_canEncrypt = [v102 intValue];
              v7->_canDecrypt = [v100 intValue];
              v7->_canDerive = [v98 intValue];
              v7->_canSign = [v96 intValue];
              v7->_canVerify = [v94 intValue];
              v7->_canSignRecover = [v92 intValue];
              v7->_canVerifyRecover = [v90 intValue];
              v7->_canWrap = [v88 intValue];
              v7->_canUnwrap = [v87 intValue];
              v52 = 1;
              goto LABEL_154;
            }

            v137 = @"KCSharingInvalidAttribute";
            v135 = kSecAttrCanUnwrap;
            v86 = [v87 copy];
            v136 = v86;
            v83 = [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
            v138 = v83;
            v84 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
            sub_100061E2C(error, 1, v84);

LABEL_153:
            v52 = 0;
LABEL_154:

            goto LABEL_156;
          }

          v141 = @"KCSharingInvalidAttribute";
          v139 = kSecAttrCanWrap;
          v87 = [v88 copy];
          v140 = v87;
          v81 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
          v142 = v81;
          v82 = [NSDictionary dictionaryWithObjects:&v142 forKeys:&v141 count:1];
          sub_100061E2C(error, 1, v82);
        }

        else
        {
          v145 = @"KCSharingInvalidAttribute";
          v143 = v27;
          v88 = [v90 copy];
          v144 = v88;
          v87 = [NSDictionary dictionaryWithObjects:&v144 forKeys:&v143 count:1];
          v146 = v87;
          v81 = [NSDictionary dictionaryWithObjects:&v146 forKeys:&v145 count:1];
          sub_100061E2C(error, 1, v81);
        }

        goto LABEL_153;
      }

      v149 = @"KCSharingInvalidAttribute";
      v147 = v26;
      v90 = [v92 copy];
      v148 = v90;
      v88 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
      v150 = v88;
      v87 = [NSDictionary dictionaryWithObjects:&v150 forKeys:&v149 count:1];
      sub_100061E2C(error, 1, v87);
      goto LABEL_153;
    }

    v217 = @"KCSharingInvalidAttribute";
    v215 = kSecAttrCreator;
    v123 = [v19 copy];
    v216 = v123;
    v122 = [NSDictionary dictionaryWithObjects:&v216 forKeys:&v215 count:1];
    v218 = v122;
    v121 = [NSDictionary dictionaryWithObjects:&v218 forKeys:&v217 count:1];
    sub_100061E2C(error, 1, v121);
    v52 = 0;
  }

LABEL_172:

LABEL_173:
  if (v52)
  {
LABEL_174:
    v62 = v7;
    goto LABEL_175;
  }

LABEL_110:
  v62 = 0;
LABEL_175:

  return v62;
}

- (KCSharingPrivateKeyCredential)initWithProto:(id)proto sharingGroup:(id)group error:(id *)error
{
  protoCopy = proto;
  groupCopy = group;
  v128.receiver = self;
  v128.super_class = KCSharingPrivateKeyCredential;
  v9 = [(KCSharingPrivateKeyCredential *)&v128 init];

  if (v9)
  {
    v10 = [groupCopy copy];
    sharingGroup = v9->_sharingGroup;
    v9->_sharingGroup = v10;

    accessGroup = [protoCopy accessGroup];
    v13 = [accessGroup copy];
    accessGroup = v9->_accessGroup;
    v9->_accessGroup = v13;

    v9->_keyType = [protoCopy keyType];
    applicationTag = [protoCopy applicationTag];
    v16 = [applicationTag copy];
    applicationTag = v9->_applicationTag;
    v9->_applicationTag = v16;

    label = [protoCopy label];
    v19 = [label copy];
    label = v9->_label;
    v9->_label = v19;

    applicationLabel = [protoCopy applicationLabel];
    v22 = [applicationLabel copy];
    applicationLabel = v9->_applicationLabel;
    v9->_applicationLabel = v22;

    keyMaterial = [protoCopy keyMaterial];
    v25 = [keyMaterial copy];
    keyMaterial = v9->_keyMaterial;
    v9->_keyMaterial = v25;

    v9->_keySizeInBits = [protoCopy keySizeInBits];
    v9->_effectiveKeySize = [protoCopy effectiveKeySize];
    [protoCopy creationDate];
    v27 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    creationDate = v9->_creationDate;
    v9->_creationDate = v27;

    [protoCopy modificationDate];
    v29 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    modificationDate = v9->_modificationDate;
    v9->_modificationDate = v29;

    alias = [protoCopy alias];
    v32 = [alias copy];
    alias = v9->_alias;
    v9->_alias = v32;

    v9->_creator = [protoCopy creator];
    [protoCopy startDate];
    v34 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    startDate = v9->_startDate;
    v9->_startDate = v34;

    [protoCopy endDate];
    v36 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    endDate = v9->_endDate;
    v9->_endDate = v36;

    viewHint = [protoCopy viewHint];
    v39 = [viewHint copy];
    viewHint = v9->_viewHint;
    v9->_viewHint = v39;

    if ([protoCopy hasKeyClass])
    {
      v9->_keyClass = [protoCopy keyClass];
      v41 = KCSharingLogObject();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      *buf = 0;
      v42 = "Have key class";
      v43 = v41;
      v44 = 2;
    }

    else
    {
      v9->_keyClass = [(__CFString *)kSecAttrKeyClassPrivate integerValue];
      v41 = KCSharingLogObject();
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      keyClass = v9->_keyClass;
      *buf = 134217984;
      v130 = keyClass;
      v42 = "Doesn't have key class, setting with %ld";
      v43 = v41;
      v44 = 12;
    }

    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, v42, buf, v44);
LABEL_8:

    if ([protoCopy hasIsPermanent])
    {
      v9->_isPermanent = [protoCopy isPermanent];
      v46 = KCSharingLogObject();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 0;
      v47 = "Have isPermanent";
      v48 = v46;
      v49 = 2;
    }

    else
    {
      v9->_isPermanent = 1;
      v46 = KCSharingLogObject();
      if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      isPermanent = v9->_isPermanent;
      *buf = 134217984;
      v130 = isPermanent;
      v47 = "Doesn't have isPermanent, setting with %ld";
      v48 = v46;
      v49 = 12;
    }

    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, v47, buf, v49);
LABEL_14:

    if ([protoCopy hasIsPrivate])
    {
      v9->_isPrivate = [protoCopy isPrivate];
      v51 = KCSharingLogObject();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v52 = "Have isPrivate";
      v53 = v51;
      v54 = 2;
    }

    else
    {
      v9->_isPrivate = 1;
      v51 = KCSharingLogObject();
      if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_20;
      }

      isPrivate = v9->_isPrivate;
      *buf = 134217984;
      v130 = isPrivate;
      v52 = "Doesn't have isPrivate, setting with %ld";
      v53 = v51;
      v54 = 12;
    }

    _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, v52, buf, v54);
LABEL_20:

    if ([protoCopy hasIsModifiable])
    {
      v9->_isModifiable = [protoCopy isModifiable];
      v56 = KCSharingLogObject();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      *buf = 0;
      v57 = "Have isModifiable";
      v58 = v56;
      v59 = 2;
    }

    else
    {
      v9->_isModifiable = 1;
      v56 = KCSharingLogObject();
      if (!os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_26;
      }

      isModifiable = v9->_isModifiable;
      *buf = 134217984;
      v130 = isModifiable;
      v57 = "Doesn't have isModifiable, setting with %ld";
      v58 = v56;
      v59 = 12;
    }

    _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, v57, buf, v59);
LABEL_26:

    if ([protoCopy hasIsSensitive])
    {
      v9->_isSensitive = [protoCopy isSensitive];
      v61 = KCSharingLogObject();
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      *buf = 0;
      v62 = "Have isSensitive";
      v63 = v61;
      v64 = 2;
    }

    else
    {
      v9->_isSensitive = 0;
      v61 = KCSharingLogObject();
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      isSensitive = v9->_isSensitive;
      *buf = 134217984;
      v130 = isSensitive;
      v62 = "Doesn't have isSensitive, setting with %ld";
      v63 = v61;
      v64 = 12;
    }

    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, v62, buf, v64);
LABEL_32:

    if ([protoCopy hasWasAlwaysSensitive])
    {
      v9->_wasAlwaysSensitive = [protoCopy wasAlwaysSensitive];
      v66 = KCSharingLogObject();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      *buf = 0;
      v67 = "Have wasAlwaysSensitive";
      v68 = v66;
      v69 = 2;
    }

    else
    {
      v9->_wasAlwaysSensitive = 0;
      v66 = KCSharingLogObject();
      if (!os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_38;
      }

      wasAlwaysSensitive = v9->_wasAlwaysSensitive;
      *buf = 134217984;
      v130 = wasAlwaysSensitive;
      v67 = "Doesn't have wasAlwaysSensitive, setting with %ld";
      v68 = v66;
      v69 = 12;
    }

    _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, v67, buf, v69);
LABEL_38:

    if ([protoCopy hasIsExtractable])
    {
      v9->_isExtractable = [protoCopy isExtractable];
      v71 = KCSharingLogObject();
      if (!os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      *buf = 0;
      v72 = "Have isExtractable";
      v73 = v71;
      v74 = 2;
    }

    else
    {
      v9->_isExtractable = 1;
      v71 = KCSharingLogObject();
      if (!os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

      isExtractable = v9->_isExtractable;
      *buf = 134217984;
      v130 = isExtractable;
      v72 = "Doesn't have isExtractable, setting with %ld";
      v73 = v71;
      v74 = 12;
    }

    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, v72, buf, v74);
LABEL_44:

    if ([protoCopy hasWasNeverExtractable])
    {
      v9->_wasNeverExtractable = [protoCopy wasNeverExtractable];
      v76 = KCSharingLogObject();
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      *buf = 0;
      v77 = "Have wasNeverExtractable";
      v78 = v76;
      v79 = 2;
    }

    else
    {
      v9->_wasNeverExtractable = 0;
      v76 = KCSharingLogObject();
      if (!os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      wasNeverExtractable = v9->_wasNeverExtractable;
      *buf = 134217984;
      v130 = wasNeverExtractable;
      v77 = "Doesn't have wasNeverExtractable, setting with %ld";
      v78 = v76;
      v79 = 12;
    }

    _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, v77, buf, v79);
LABEL_50:

    if ([protoCopy hasCanEncrypt])
    {
      v9->_canEncrypt = [protoCopy canEncrypt];
      v81 = KCSharingLogObject();
      if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      *buf = 0;
      v82 = "Have canEncrypt";
      v83 = v81;
      v84 = 2;
    }

    else
    {
      v9->_canEncrypt = 0;
      v81 = KCSharingLogObject();
      if (!os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      canEncrypt = v9->_canEncrypt;
      *buf = 134217984;
      v130 = canEncrypt;
      v82 = "Doesn't have canEncrypt, setting with %ld";
      v83 = v81;
      v84 = 12;
    }

    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, v82, buf, v84);
LABEL_56:

    if ([protoCopy hasCanDecrypt])
    {
      v9->_canDecrypt = [protoCopy canDecrypt];
      v86 = KCSharingLogObject();
      if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_62;
      }

      *buf = 0;
      v87 = "Have canDecrypt";
      v88 = v86;
      v89 = 2;
    }

    else
    {
      v9->_canDecrypt = 1;
      v86 = KCSharingLogObject();
      if (!os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_62;
      }

      canDecrypt = v9->_canDecrypt;
      *buf = 134217984;
      v130 = canDecrypt;
      v87 = "Doesn't have canDecrypt, setting with %ld";
      v88 = v86;
      v89 = 12;
    }

    _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, v87, buf, v89);
LABEL_62:

    if ([protoCopy hasCanDerive])
    {
      v9->_canDerive = [protoCopy canDerive];
      v91 = KCSharingLogObject();
      if (!os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_68;
      }

      *buf = 0;
      v92 = "Have canDerive";
      v93 = v91;
      v94 = 2;
    }

    else
    {
      v9->_canDerive = 1;
      v91 = KCSharingLogObject();
      if (!os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_68;
      }

      canDerive = v9->_canDerive;
      *buf = 134217984;
      v130 = canDerive;
      v92 = "Doesn't have canDerive, setting with %ld";
      v93 = v91;
      v94 = 12;
    }

    _os_log_impl(&_mh_execute_header, v93, OS_LOG_TYPE_DEFAULT, v92, buf, v94);
LABEL_68:

    if ([protoCopy hasCanSign])
    {
      v9->_canSign = [protoCopy canSign];
      v96 = KCSharingLogObject();
      if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      *buf = 0;
      v97 = "Have canSign";
      v98 = v96;
      v99 = 2;
    }

    else
    {
      v9->_canSign = 1;
      v96 = KCSharingLogObject();
      if (!os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      canSign = v9->_canSign;
      *buf = 134217984;
      v130 = canSign;
      v97 = "Doesn't havec canSign, setting with %ld";
      v98 = v96;
      v99 = 12;
    }

    _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, v97, buf, v99);
LABEL_74:

    if ([protoCopy hasCanVerify])
    {
      v9->_canVerify = [protoCopy canVerify];
      v101 = KCSharingLogObject();
      if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      *buf = 0;
      v102 = "Have canVerify";
      v103 = v101;
      v104 = 2;
    }

    else
    {
      v9->_canVerify = 0;
      v101 = KCSharingLogObject();
      if (!os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      canVerify = v9->_canVerify;
      *buf = 134217984;
      v130 = canVerify;
      v102 = "Doesn't have canVerify, setting with %ld";
      v103 = v101;
      v104 = 12;
    }

    _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, v102, buf, v104);
LABEL_80:

    if ([protoCopy hasCanSignRecover])
    {
      v9->_canSignRecover = [protoCopy canSignRecover];
      v106 = KCSharingLogObject();
      if (!os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_86;
      }

      *buf = 0;
      v107 = "Have canSignRecover";
      v108 = v106;
      v109 = 2;
    }

    else
    {
      v9->_canSignRecover = 0;
      v106 = KCSharingLogObject();
      if (!os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_86;
      }

      canSignRecover = v9->_canSignRecover;
      *buf = 134217984;
      v130 = canSignRecover;
      v107 = "Doesn't have canSignRecover, setting with %ld";
      v108 = v106;
      v109 = 12;
    }

    _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, v107, buf, v109);
LABEL_86:

    if ([protoCopy hasCanVerifyRecover])
    {
      v9->_canVerifyRecover = [protoCopy canVerifyRecover];
      v111 = KCSharingLogObject();
      if (!os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_92;
      }

      *buf = 0;
      v112 = "Have canVerifyRecover";
      v113 = v111;
      v114 = 2;
    }

    else
    {
      v9->_canVerifyRecover = 0;
      v111 = KCSharingLogObject();
      if (!os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_92;
      }

      canVerifyRecover = v9->_canVerifyRecover;
      *buf = 134217984;
      v130 = canVerifyRecover;
      v112 = "Doesn't have canVerifyRecover, setting with %ld";
      v113 = v111;
      v114 = 12;
    }

    _os_log_impl(&_mh_execute_header, v113, OS_LOG_TYPE_DEFAULT, v112, buf, v114);
LABEL_92:

    if ([protoCopy hasCanWrap])
    {
      v9->_canWrap = [protoCopy canWrap];
      v116 = KCSharingLogObject();
      if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_98;
      }

      *buf = 0;
      v117 = "Have canWrap";
      v118 = v116;
      v119 = 2;
    }

    else
    {
      v9->_canWrap = 0;
      v116 = KCSharingLogObject();
      if (!os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_98;
      }

      canWrap = v9->_canWrap;
      *buf = 134217984;
      v130 = canWrap;
      v117 = "Doesn't have canWrap, setting with %ld";
      v118 = v116;
      v119 = 12;
    }

    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, v117, buf, v119);
LABEL_98:

    if ([protoCopy hasCanUnwrap])
    {
      v9->_canUnwrap = [protoCopy canUnwrap];
      v121 = KCSharingLogObject();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v122 = "Have canUnwrap";
        v123 = v121;
        v124 = 2;
LABEL_103:
        _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, v122, buf, v124);
      }
    }

    else
    {
      v9->_canUnwrap = 1;
      v121 = KCSharingLogObject();
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
      {
        canUnwrap = v9->_canUnwrap;
        *buf = 134217984;
        v130 = canUnwrap;
        v122 = "Doesn't have canUnwrap, setting with %ld";
        v123 = v121;
        v124 = 12;
        goto LABEL_103;
      }
    }
  }

  v126 = v9;

  return v126;
}

- (KCSharingPrivateKeyCredential)initWithDatabaseItem:(SecDbItem *)item error:(id *)error
{
  requiredAttributeKeys = [objc_opt_class() requiredAttributeKeys];
  v8 = sub_100017964(item, requiredAttributeKeys, error);

  if (v8)
  {
    self = [(KCSharingPrivateKeyCredential *)self initWithAttributes:v8 error:error];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (NSSet)requiredAttributeKeys
{
  if (qword_10039DC00 != -1)
  {
    dispatch_once(&qword_10039DC00, &stru_100334C90);
  }

  v3 = qword_10039DBF8;

  return v3;
}

@end