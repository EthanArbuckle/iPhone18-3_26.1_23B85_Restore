@interface MASDAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForAllFields:(id)fields;
- (MASDAsset)initWithCoder:(id)coder;
- (id)description;
- (id)initAsset:(id)asset owner:(id)owner process:(id)process;
- (id)initSharedAssetWith:(id)with owner:(id)owner process:(id)process session:(id)session participant:(id)participant;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MASDAsset

- (void)encodeWithCoder:(id)coder
{
  assetHandle = self->_assetHandle;
  coderCopy = coder;
  [coderCopy encodeObject:assetHandle forKey:@"_assetHandle"];
  [coderCopy encodeObject:self->_assetOwner forKey:@"_assetOwner"];
  [coderCopy encodeObject:self->_assetProcess forKey:@"_assetProcess"];
  [coderCopy encodeObject:self->_assetMetadata forKey:@"_assetMetadata"];
  [coderCopy encodeObject:self->_assetData forKey:@"_assetData"];
  [coderCopy encodeBool:self->_sharedPersistent forKey:@"_sharedPersistent"];
  [coderCopy encodeObject:self->_creatorAttest forKey:@"_creatorAttest"];
  [coderCopy encodeObject:self->_serverAttest forKey:@"_serverAttest"];
}

- (MASDAsset)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = MASDAsset;
  v5 = [(MASDAsset *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_assetHandle"];
    assetHandle = v5->_assetHandle;
    v5->_assetHandle = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_assetOwner"];
    assetOwner = v5->_assetOwner;
    v5->_assetOwner = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_assetProcess"];
    assetProcess = v5->_assetProcess;
    v5->_assetProcess = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_assetMetadata"];
    assetMetadata = v5->_assetMetadata;
    v5->_assetMetadata = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_assetData"];
    assetData = v5->_assetData;
    v5->_assetData = v14;

    v5->_sharedPersistent = [coderCopy decodeBoolForKey:@"_sharedPersistent"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_creatorAttest"];
    creatorAttest = v5->_creatorAttest;
    v5->_creatorAttest = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serverAttest"];
    serverAttest = v5->_serverAttest;
    v5->_serverAttest = v18;
  }

  return v5;
}

- (id)initSharedAssetWith:(id)with owner:(id)owner process:(id)process session:(id)session participant:(id)participant
{
  withCopy = with;
  ownerCopy = owner;
  processCopy = process;
  sessionCopy = session;
  participantCopy = participant;
  v50.receiver = self;
  v50.super_class = MASDAsset;
  v17 = [(MASDAsset *)&v50 init];
  if (v17)
  {
    obj = owner;
    v47 = ownerCopy;
    processCopy2 = process;
    v49 = processCopy;
    v18 = +[NSUUID UUID];
    uUIDString = [v18 UUIDString];
    assetHandle = v17->_assetHandle;
    v17->_assetHandle = uUIDString;

    v51[0] = @"_type";
    +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [withCopy type]);
    v22 = v21 = participantCopy;
    v52[0] = v22;
    v51[1] = @"_lastUpdatedOSVersion";
    lastUpdateOSVersion = [withCopy lastUpdateOSVersion];
    v52[1] = lastUpdateOSVersion;
    v51[2] = @"_creationTime";
    [withCopy creationTime];
    v24 = [NSDate dateWithTimeIntervalSince1970:?];
    v52[2] = v24;
    v51[3] = @"_lastUpdatedTime";
    [withCopy lastUpdatedTime];
    v25 = [NSDate dateWithTimeIntervalSince1970:?];
    v51[4] = @"_syncOption";
    v52[3] = v25;
    v52[4] = &off_10011DAA8;
    v26 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:5];
    v27 = [NSMutableDictionary dictionaryWithDictionary:v26];

    participantCopy = v21;
    if (sessionCopy)
    {
      [v27 setObject:sessionCopy forKeyedSubscript:@"_sessionIdentifier"];
      [v27 setObject:v21 forKeyedSubscript:@"_participantIdentifier"];
    }

    if ([withCopy hasLabel])
    {
      label = [withCopy label];
      [v27 setObject:label forKeyedSubscript:@"_label"];
    }

    ownerCopy = v47;
    processCopy = v49;
    if ([withCopy hasLastUpdateAlgorithmVersion])
    {
      lastUpdateAlgorithmVersion = [withCopy lastUpdateAlgorithmVersion];
      [v27 setObject:lastUpdateAlgorithmVersion forKeyedSubscript:@"_lastUpdatedAlgorithmVersion"];
    }

    if ([withCopy assetState])
    {
      v30 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [withCopy assetState]);
      [v27 setObject:v30 forKeyedSubscript:@"_assetState"];
    }

    enrollmentIdentifier = [withCopy enrollmentIdentifier];

    if (enrollmentIdentifier)
    {
      enrollmentIdentifier2 = [withCopy enrollmentIdentifier];
      [v27 setObject:enrollmentIdentifier2 forKeyedSubscript:@"_enrollmentIdentifier"];
    }

    deviceIdentifier = [withCopy deviceIdentifier];

    if (deviceIdentifier)
    {
      deviceIdentifier2 = [withCopy deviceIdentifier];
      [v27 setObject:deviceIdentifier2 forKeyedSubscript:@"_deviceIdentifier"];
    }

    deviceName = [withCopy deviceName];

    if (deviceName)
    {
      deviceName2 = [withCopy deviceName];
      [v27 setObject:deviceName2 forKeyedSubscript:@"_deviceName"];
    }

    v17->_syncOption = 0;
    v37 = [[MASDAssetMetadata alloc] initAssetMetadataWithInfoDictionary:v27];
    assetMetadata = v17->_assetMetadata;
    v17->_assetMetadata = v37;

    assetData = [withCopy assetData];
    assetData = v17->_assetData;
    v17->_assetData = assetData;

    v17->_sharedPersistent = 0;
    objc_storeStrong(&v17->_assetOwner, obj);
    objc_storeStrong(&v17->_assetProcess, processCopy2);
    creatorAttest = [withCopy creatorAttest];
    creatorAttest = v17->_creatorAttest;
    v17->_creatorAttest = creatorAttest;

    serverAttest = [withCopy serverAttest];
    serverAttest = v17->_serverAttest;
    v17->_serverAttest = serverAttest;
  }

  return v17;
}

- (id)initAsset:(id)asset owner:(id)owner process:(id)process
{
  assetCopy = asset;
  ownerCopy = owner;
  processCopy = process;
  v40.receiver = self;
  v40.super_class = MASDAsset;
  v11 = [(MASDAsset *)&v40 init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    uUIDString = [v12 UUIDString];
    assetHandle = v11->_assetHandle;
    v11->_assetHandle = uUIDString;

    objc_storeStrong(&v11->_assetOwner, owner);
    objc_storeStrong(&v11->_assetProcess, process);
    v15 = +[NSMutableDictionary dictionary];
    v16 = +[NSDate now];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [assetCopy type]);
    [v15 setObject:v17 forKey:@"_type"];

    v18 = +[NSProcessInfo processInfo];
    operatingSystemVersionString = [v18 operatingSystemVersionString];
    [v15 setObject:operatingSystemVersionString forKey:@"_lastUpdatedOSVersion"];

    [v15 setObject:v16 forKey:@"_lastUpdatedTime"];
    [v15 setObject:v16 forKey:@"_creationTime"];
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [assetCopy syncOption]);
    [v15 setObject:v20 forKey:@"_syncOption"];

    [v15 setObject:&off_10011DAC0 forKey:@"_assetState"];
    label = [assetCopy label];

    if (label)
    {
      label2 = [assetCopy label];
      [v15 setObject:label2 forKey:@"_label"];
    }

    algorithmVersion = [assetCopy algorithmVersion];

    if (algorithmVersion)
    {
      algorithmVersion2 = [assetCopy algorithmVersion];
      [v15 setObject:algorithmVersion2 forKey:@"_lastUpdatedAlgorithmVersion"];
    }

    enrollmentIdentifier = [assetCopy enrollmentIdentifier];

    if (enrollmentIdentifier)
    {
      enrollmentIdentifier2 = [assetCopy enrollmentIdentifier];
      [v15 setObject:enrollmentIdentifier2 forKey:@"_enrollmentIdentifier"];
    }

    deviceIdentifier = [assetCopy deviceIdentifier];

    if (deviceIdentifier)
    {
      deviceIdentifier2 = [assetCopy deviceIdentifier];
      [v15 setObject:deviceIdentifier2 forKey:@"_deviceIdentifier"];
    }

    deviceName = [assetCopy deviceName];

    if (deviceName)
    {
      deviceName2 = [assetCopy deviceName];
      [v15 setObject:deviceName2 forKey:@"_deviceName"];
    }

    v31 = +[NSUUID UUID];
    uUIDString2 = [v31 UUIDString];
    [v15 setObject:uUIDString2 forKey:@"_ckrecordIdentifier"];

    v11->_syncOption = [assetCopy syncOption];
    v33 = [[MASDAssetMetadata alloc] initAssetMetadataWithInfoDictionary:v15];
    assetMetadata = v11->_assetMetadata;
    v11->_assetMetadata = v33;

    v11->_sharedPersistent = 0;
    creatorAttest = [assetCopy creatorAttest];
    creatorAttest = v11->_creatorAttest;
    v11->_creatorAttest = creatorAttest;

    serverAttest = [assetCopy serverAttest];
    serverAttest = v11->_serverAttest;
    v11->_serverAttest = serverAttest;
  }

  return v11;
}

- (id)description
{
  label = [(MASDAssetMetadata *)self->_assetMetadata label];
  type = [(MASDAssetMetadata *)self->_assetMetadata type];
  v3 = [(MASDUserProfile *)self->_assetOwner debugDescription];
  assetData = self->_assetData;
  creationTime = [(MASDAssetMetadata *)self->_assetMetadata creationTime];
  lastUpdatedTime = [(MASDAssetMetadata *)self->_assetMetadata lastUpdatedTime];
  lastUpdatedOSVersion = [(MASDAssetMetadata *)self->_assetMetadata lastUpdatedOSVersion];
  lastUpdatedAlgorithmVersion = [(MASDAssetMetadata *)self->_assetMetadata lastUpdatedAlgorithmVersion];
  sharedPersistent = self->_sharedPersistent;
  v15 = *&self->_syncOption;
  v14 = *&self->_recordAccount;
  serverAttest = self->_serverAttest;
  enrollmentIdentifier = [(MASDAssetMetadata *)self->_assetMetadata enrollmentIdentifier];
  v12 = [NSString stringWithFormat:@"MASDAsset: {Lable: %@, Type: %lu, Owner: %@, Data: %@, create: %@, lastUpdate: %@, OSVersion: %@, AlgorithmVersion: %@, sharedPersistent: %d, syncOption: %ld, record: %@, recordAccount: %@, creatorAttest: %@, serverAttest: %@, enrollmentIdentifier: %@, assetState: %lu}", label, type, v3, assetData, creationTime, lastUpdatedTime, lastUpdatedOSVersion, lastUpdatedAlgorithmVersion, sharedPersistent, v15, v14, serverAttest, enrollmentIdentifier, [(MASDAssetMetadata *)self->_assetMetadata assetState]];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MASDAsset *)self isEqualForAllFields:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualForAllFields:(id)fields
{
  fieldsCopy = fields;
  assetHandle = [(MASDAsset *)self assetHandle];
  assetHandle2 = [fieldsCopy assetHandle];
  v7 = [assetHandle isEqualToString:assetHandle2];

  if (v7)
  {
    assetOwner = [(MASDAsset *)self assetOwner];
    assetOwner2 = [fieldsCopy assetOwner];
    v10 = [assetOwner isEqual:assetOwner2];

    if (v10)
    {
      assetData = [(MASDAsset *)self assetData];
      assetData2 = [fieldsCopy assetData];
      v13 = [assetData isEqualToData:assetData2];

      if (v13)
      {
        assetProcess = [(MASDAsset *)self assetProcess];
        assetProcess2 = [fieldsCopy assetProcess];
        v16 = [assetProcess isEqualToString:assetProcess2];

        if (v16)
        {
          assetMetadata = [(MASDAsset *)self assetMetadata];
          assetMetadata2 = [fieldsCopy assetMetadata];
          v19 = [assetMetadata isEqual:assetMetadata2];

          if (v19)
          {
            sharedPersistent = [(MASDAsset *)self sharedPersistent];
            if (sharedPersistent == [fieldsCopy sharedPersistent])
            {
              syncOption = [(MASDAsset *)self syncOption];
              if (syncOption == [fieldsCopy syncOption])
              {
                recordAccount = [(MASDAsset *)self recordAccount];
                if (!recordAccount)
                {
                  assetMetadata2 = [fieldsCopy recordAccount];
                  if (!assetMetadata2)
                  {
LABEL_12:
                    record = [(MASDAsset *)self record];
                    if (record || ([fieldsCopy record], (assetMetadata2 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      record2 = [(MASDAsset *)self record];
                      record3 = [fieldsCopy record];
                      v29 = [record2 isEqual:record3];

                      if (record)
                      {
LABEL_21:

                        goto LABEL_18;
                      }
                    }

                    else
                    {
                      v29 = 1;
                    }

                    goto LABEL_21;
                  }
                }

                recordAccount2 = [(MASDAsset *)self recordAccount];
                recordAccount3 = [fieldsCopy recordAccount];
                v25 = [recordAccount2 isEqualToString:recordAccount3];

                if (recordAccount)
                {

                  if (v25)
                  {
                    goto LABEL_12;
                  }
                }

                else
                {

                  if (v25)
                  {
                    goto LABEL_12;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v29 = 0;
LABEL_18:

  return v29;
}

@end