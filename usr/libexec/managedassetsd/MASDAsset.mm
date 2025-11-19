@interface MASDAsset
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualForAllFields:(id)a3;
- (MASDAsset)initWithCoder:(id)a3;
- (id)description;
- (id)initAsset:(id)a3 owner:(id)a4 process:(id)a5;
- (id)initSharedAssetWith:(id)a3 owner:(id)a4 process:(id)a5 session:(id)a6 participant:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MASDAsset

- (void)encodeWithCoder:(id)a3
{
  assetHandle = self->_assetHandle;
  v5 = a3;
  [v5 encodeObject:assetHandle forKey:@"_assetHandle"];
  [v5 encodeObject:self->_assetOwner forKey:@"_assetOwner"];
  [v5 encodeObject:self->_assetProcess forKey:@"_assetProcess"];
  [v5 encodeObject:self->_assetMetadata forKey:@"_assetMetadata"];
  [v5 encodeObject:self->_assetData forKey:@"_assetData"];
  [v5 encodeBool:self->_sharedPersistent forKey:@"_sharedPersistent"];
  [v5 encodeObject:self->_creatorAttest forKey:@"_creatorAttest"];
  [v5 encodeObject:self->_serverAttest forKey:@"_serverAttest"];
}

- (MASDAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = MASDAsset;
  v5 = [(MASDAsset *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assetHandle"];
    assetHandle = v5->_assetHandle;
    v5->_assetHandle = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assetOwner"];
    assetOwner = v5->_assetOwner;
    v5->_assetOwner = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assetProcess"];
    assetProcess = v5->_assetProcess;
    v5->_assetProcess = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assetMetadata"];
    assetMetadata = v5->_assetMetadata;
    v5->_assetMetadata = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_assetData"];
    assetData = v5->_assetData;
    v5->_assetData = v14;

    v5->_sharedPersistent = [v4 decodeBoolForKey:@"_sharedPersistent"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_creatorAttest"];
    creatorAttest = v5->_creatorAttest;
    v5->_creatorAttest = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serverAttest"];
    serverAttest = v5->_serverAttest;
    v5->_serverAttest = v18;
  }

  return v5;
}

- (id)initSharedAssetWith:(id)a3 owner:(id)a4 process:(id)a5 session:(id)a6 participant:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v50.receiver = self;
  v50.super_class = MASDAsset;
  v17 = [(MASDAsset *)&v50 init];
  if (v17)
  {
    obj = a4;
    v47 = v13;
    v48 = a5;
    v49 = v14;
    v18 = +[NSUUID UUID];
    v19 = [v18 UUIDString];
    assetHandle = v17->_assetHandle;
    v17->_assetHandle = v19;

    v51[0] = @"_type";
    +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 type]);
    v22 = v21 = v16;
    v52[0] = v22;
    v51[1] = @"_lastUpdatedOSVersion";
    v23 = [v12 lastUpdateOSVersion];
    v52[1] = v23;
    v51[2] = @"_creationTime";
    [v12 creationTime];
    v24 = [NSDate dateWithTimeIntervalSince1970:?];
    v52[2] = v24;
    v51[3] = @"_lastUpdatedTime";
    [v12 lastUpdatedTime];
    v25 = [NSDate dateWithTimeIntervalSince1970:?];
    v51[4] = @"_syncOption";
    v52[3] = v25;
    v52[4] = &off_10011DAA8;
    v26 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:5];
    v27 = [NSMutableDictionary dictionaryWithDictionary:v26];

    v16 = v21;
    if (v15)
    {
      [v27 setObject:v15 forKeyedSubscript:@"_sessionIdentifier"];
      [v27 setObject:v21 forKeyedSubscript:@"_participantIdentifier"];
    }

    if ([v12 hasLabel])
    {
      v28 = [v12 label];
      [v27 setObject:v28 forKeyedSubscript:@"_label"];
    }

    v13 = v47;
    v14 = v49;
    if ([v12 hasLastUpdateAlgorithmVersion])
    {
      v29 = [v12 lastUpdateAlgorithmVersion];
      [v27 setObject:v29 forKeyedSubscript:@"_lastUpdatedAlgorithmVersion"];
    }

    if ([v12 assetState])
    {
      v30 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v12 assetState]);
      [v27 setObject:v30 forKeyedSubscript:@"_assetState"];
    }

    v31 = [v12 enrollmentIdentifier];

    if (v31)
    {
      v32 = [v12 enrollmentIdentifier];
      [v27 setObject:v32 forKeyedSubscript:@"_enrollmentIdentifier"];
    }

    v33 = [v12 deviceIdentifier];

    if (v33)
    {
      v34 = [v12 deviceIdentifier];
      [v27 setObject:v34 forKeyedSubscript:@"_deviceIdentifier"];
    }

    v35 = [v12 deviceName];

    if (v35)
    {
      v36 = [v12 deviceName];
      [v27 setObject:v36 forKeyedSubscript:@"_deviceName"];
    }

    v17->_syncOption = 0;
    v37 = [[MASDAssetMetadata alloc] initAssetMetadataWithInfoDictionary:v27];
    assetMetadata = v17->_assetMetadata;
    v17->_assetMetadata = v37;

    v39 = [v12 assetData];
    assetData = v17->_assetData;
    v17->_assetData = v39;

    v17->_sharedPersistent = 0;
    objc_storeStrong(&v17->_assetOwner, obj);
    objc_storeStrong(&v17->_assetProcess, v48);
    v41 = [v12 creatorAttest];
    creatorAttest = v17->_creatorAttest;
    v17->_creatorAttest = v41;

    v43 = [v12 serverAttest];
    serverAttest = v17->_serverAttest;
    v17->_serverAttest = v43;
  }

  return v17;
}

- (id)initAsset:(id)a3 owner:(id)a4 process:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v40.receiver = self;
  v40.super_class = MASDAsset;
  v11 = [(MASDAsset *)&v40 init];
  if (v11)
  {
    v12 = +[NSUUID UUID];
    v13 = [v12 UUIDString];
    assetHandle = v11->_assetHandle;
    v11->_assetHandle = v13;

    objc_storeStrong(&v11->_assetOwner, a4);
    objc_storeStrong(&v11->_assetProcess, a5);
    v15 = +[NSMutableDictionary dictionary];
    v16 = +[NSDate now];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 type]);
    [v15 setObject:v17 forKey:@"_type"];

    v18 = +[NSProcessInfo processInfo];
    v19 = [v18 operatingSystemVersionString];
    [v15 setObject:v19 forKey:@"_lastUpdatedOSVersion"];

    [v15 setObject:v16 forKey:@"_lastUpdatedTime"];
    [v15 setObject:v16 forKey:@"_creationTime"];
    v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 syncOption]);
    [v15 setObject:v20 forKey:@"_syncOption"];

    [v15 setObject:&off_10011DAC0 forKey:@"_assetState"];
    v21 = [v8 label];

    if (v21)
    {
      v22 = [v8 label];
      [v15 setObject:v22 forKey:@"_label"];
    }

    v23 = [v8 algorithmVersion];

    if (v23)
    {
      v24 = [v8 algorithmVersion];
      [v15 setObject:v24 forKey:@"_lastUpdatedAlgorithmVersion"];
    }

    v25 = [v8 enrollmentIdentifier];

    if (v25)
    {
      v26 = [v8 enrollmentIdentifier];
      [v15 setObject:v26 forKey:@"_enrollmentIdentifier"];
    }

    v27 = [v8 deviceIdentifier];

    if (v27)
    {
      v28 = [v8 deviceIdentifier];
      [v15 setObject:v28 forKey:@"_deviceIdentifier"];
    }

    v29 = [v8 deviceName];

    if (v29)
    {
      v30 = [v8 deviceName];
      [v15 setObject:v30 forKey:@"_deviceName"];
    }

    v31 = +[NSUUID UUID];
    v32 = [v31 UUIDString];
    [v15 setObject:v32 forKey:@"_ckrecordIdentifier"];

    v11->_syncOption = [v8 syncOption];
    v33 = [[MASDAssetMetadata alloc] initAssetMetadataWithInfoDictionary:v15];
    assetMetadata = v11->_assetMetadata;
    v11->_assetMetadata = v33;

    v11->_sharedPersistent = 0;
    v35 = [v8 creatorAttest];
    creatorAttest = v11->_creatorAttest;
    v11->_creatorAttest = v35;

    v37 = [v8 serverAttest];
    serverAttest = v11->_serverAttest;
    v11->_serverAttest = v37;
  }

  return v11;
}

- (id)description
{
  v17 = [(MASDAssetMetadata *)self->_assetMetadata label];
  v16 = [(MASDAssetMetadata *)self->_assetMetadata type];
  v3 = [(MASDUserProfile *)self->_assetOwner debugDescription];
  assetData = self->_assetData;
  v5 = [(MASDAssetMetadata *)self->_assetMetadata creationTime];
  v6 = [(MASDAssetMetadata *)self->_assetMetadata lastUpdatedTime];
  v7 = [(MASDAssetMetadata *)self->_assetMetadata lastUpdatedOSVersion];
  v8 = [(MASDAssetMetadata *)self->_assetMetadata lastUpdatedAlgorithmVersion];
  sharedPersistent = self->_sharedPersistent;
  v15 = *&self->_syncOption;
  v14 = *&self->_recordAccount;
  serverAttest = self->_serverAttest;
  v11 = [(MASDAssetMetadata *)self->_assetMetadata enrollmentIdentifier];
  v12 = [NSString stringWithFormat:@"MASDAsset: {Lable: %@, Type: %lu, Owner: %@, Data: %@, create: %@, lastUpdate: %@, OSVersion: %@, AlgorithmVersion: %@, sharedPersistent: %d, syncOption: %ld, record: %@, recordAccount: %@, creatorAttest: %@, serverAttest: %@, enrollmentIdentifier: %@, assetState: %lu}", v17, v16, v3, assetData, v5, v6, v7, v8, sharedPersistent, v15, v14, serverAttest, v11, [(MASDAssetMetadata *)self->_assetMetadata assetState]];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(MASDAsset *)self isEqualForAllFields:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqualForAllFields:(id)a3
{
  v4 = a3;
  v5 = [(MASDAsset *)self assetHandle];
  v6 = [v4 assetHandle];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = [(MASDAsset *)self assetOwner];
    v9 = [v4 assetOwner];
    v10 = [v8 isEqual:v9];

    if (v10)
    {
      v11 = [(MASDAsset *)self assetData];
      v12 = [v4 assetData];
      v13 = [v11 isEqualToData:v12];

      if (v13)
      {
        v14 = [(MASDAsset *)self assetProcess];
        v15 = [v4 assetProcess];
        v16 = [v14 isEqualToString:v15];

        if (v16)
        {
          v17 = [(MASDAsset *)self assetMetadata];
          v18 = [v4 assetMetadata];
          v19 = [v17 isEqual:v18];

          if (v19)
          {
            v20 = [(MASDAsset *)self sharedPersistent];
            if (v20 == [v4 sharedPersistent])
            {
              v21 = [(MASDAsset *)self syncOption];
              if (v21 == [v4 syncOption])
              {
                v22 = [(MASDAsset *)self recordAccount];
                if (!v22)
                {
                  v18 = [v4 recordAccount];
                  if (!v18)
                  {
LABEL_12:
                    v26 = [(MASDAsset *)self record];
                    if (v26 || ([v4 record], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
                    {
                      v27 = [(MASDAsset *)self record];
                      v28 = [v4 record];
                      v29 = [v27 isEqual:v28];

                      if (v26)
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

                v23 = [(MASDAsset *)self recordAccount];
                v24 = [v4 recordAccount];
                v25 = [v23 isEqualToString:v24];

                if (v22)
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