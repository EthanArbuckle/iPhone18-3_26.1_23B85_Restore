@interface UARPSuperBinaryLayer3
- (BOOL)expandPropertyListPayload:(id)a3 payloadIndex:(unint64_t)a4;
- (BOOL)expandPropertyListPayloads:(id)a3;
- (BOOL)expandPropertyListTLVs:(id)a3;
- (BOOL)expandSuperBinaryHeader;
- (BOOL)expandSuperBinaryHeadersAndMetaData;
- (BOOL)expandSuperBinaryPlist;
- (BOOL)expandSuperBinaryPropertyList;
- (BOOL)isEqual:(id)a3;
- (BOOL)prepareComposedComponents:(id)a3 excludingTags:(id)a4 allHeaders:(id)a5 allMetaData:(id)a6 error:(id *)a7;
- (BOOL)processDeploymentRules:(id)a3;
- (BOOL)processPersonalizationTickets:(id)a3;
- (BOOL)setupTemporaryFolder;
- (BOOL)setupTemporaryFolderForExpand;
- (BOOL)updateIncomingAssetProperties:(id)a3;
- (BOOL)writeToFileHandle:(id)a3 includedPayloads:(id)a4 allHeaders:(id)a5 allMetaData:(id)a6 error:(id *)a7;
- (BOOL)writeToURL:(id)a3 excludeTags:(id)a4 error:(id *)a5;
- (UARPSuperBinaryLayer3)init;
- (UARPSuperBinaryLayer3)initWithData:(id)a3 assetUUID:(id)a4 tmpFolderPath:(id)a5;
- (UARPSuperBinaryLayer3)initWithFilePath:(id)a3 assetUUID:(id)a4 tmpFolderPath:(id)a5;
- (UARPSuperBinaryLayer3)initWithLayer2Context:(void *)a3 assetTag:(id)a4 tmpFolderPath:(id)a5;
- (UARPSuperBinaryLayer3)initWithPropertyList:(id)a3 payloadsURL:(id)a4 noMissingPayloads:(BOOL)a5 useFilesystem:(BOOL)a6;
- (UARPSuperBinaryLayer3)initWithURL:(id)a3 assetUUID:(id)a4 assetTag:(id)a5 tmpFolderPath:(id)a6;
- (id)addPayloadWith4cc:(id)a3 payloadVersion:(id)a4 payloadIndex:(unint64_t)a5;
- (id)composeMetaData;
- (id)composeToDataExcludingTags:(id)a3 error:(id *)a4;
- (id)containsTLV:(Class)a3;
- (id)countryRules;
- (id)description;
- (id)descriptionOfHeader;
- (id)expandPayloadWithHeader:(UARPPayloadHeader2 *)a3 payloadIndex:(unint64_t)a4;
- (id)expandPayloadWithHeaderAsData:(UARPPayloadHeader2 *)a3 payloadIndex:(unint64_t)a4 payload4cc:(id)a5 payloadVersion:(id)a6 payloadMetaData:(id)a7;
- (id)expandPayloadWithHeaderAsURL:(UARPPayloadHeader2 *)a3 payloadIndex:(unint64_t)a4 payload4cc:(id)a5 payloadVersion:(id)a6 payloadMetaData:(id)a7;
- (id)getDataBlock:(unint64_t)a3 offset:(unint64_t)a4;
- (id)getDataRangeFromData:(_NSRange)a3;
- (id)getDataRangeFromURL:(_NSRange)a3;
- (id)payloadWith4cc:(id)a3;
- (id)payloadWithMatchingIndex:(unint64_t)a3;
- (id)percentageRules;
- (id)requiredPersonalizationOptions;
- (id)requiredPersonalizationOptions:(id)a3;
- (id)tssRequests;
- (id)tssResponses;
- (unint64_t)hash;
- (void)expandPayloadHeadersAndMetaData:(unint64_t)a3 offset:(unint64_t)a4;
- (void)expandSuperBinaryMetaData:(unint64_t)a3 offset:(unint64_t)a4;
- (void)personalizationStateCompleted;
- (void)personalizationStatePrepare:(id)a3;
- (void)personalizationStatePrepare:(id)a3 endpoint:(id)a4;
- (void)processPMAP:(id)a3;
- (void)removePayloadsWithMatchingTag:(id)a3;
@end

@implementation UARPSuperBinaryLayer3

- (UARPSuperBinaryLayer3)init
{
  v14.receiver = self;
  v14.super_class = UARPSuperBinaryLayer3;
  v2 = [(UARPSuperBinaryLayer3 *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSUUID);
    uuid = v2->_uuid;
    v2->_uuid = v3;

    v5 = objc_opt_new();
    payloads = v2->_payloads;
    v2->_payloads = v5;

    v7 = objc_opt_new();
    tatsuTickets = v2->_tatsuTickets;
    v2->_tatsuTickets = v7;

    v9 = objc_opt_new();
    tlvs = v2->_tlvs;
    v2->_tlvs = v9;

    v2->_bytesTransferred = 0;
    v2->_personalizationStatus = 6;
    v2->_processingStatus = 0;
    v11 = os_log_create("com.apple.uarp.layer3", "superbinaryAsset");
    log = v2->_log;
    v2->_log = v11;
  }

  return v2;
}

- (UARPSuperBinaryLayer3)initWithLayer2Context:(void *)a3 assetTag:(id)a4 tmpFolderPath:(id)a5
{
  v8 = a5;
  v9 = [(UARPSuperBinaryLayer3 *)self init];
  v10 = v9;
  if (!v9)
  {
LABEL_5:
    v18 = v10;
    goto LABEL_9;
  }

  v9->_layer2Context = a3;
  objc_storeStrong(&v9->_tmpFolderPath, a5);
  [(UARPSuperBinaryLayer3 *)v10 setupTemporaryFolder];
  v11 = +[NSFileManager defaultManager];
  v12 = [(NSURL *)v10->_superbinaryURL path];
  v13 = [v11 createFileAtPath:v12 contents:0 attributes:0];

  log = v10->_log;
  if (v13)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      superbinaryURL = v10->_superbinaryURL;
      v16 = log;
      v17 = [(NSURL *)superbinaryURL path];
      v20 = 136315394;
      v21 = "[UARPSuperBinaryLayer3 initWithLayer2Context:assetTag:tmpFolderPath:]";
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s: created file at path  %@ ", &v20, 0x16u);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    sub_100082AF4(&v10->_superbinaryURL, log);
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (UARPSuperBinaryLayer3)initWithPropertyList:(id)a3 payloadsURL:(id)a4 noMissingPayloads:(BOOL)a5 useFilesystem:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(UARPSuperBinaryLayer3 *)self init];
  if (!v12)
  {
    goto LABEL_3;
  }

  v13 = [v10 copy];
  propertyList = v12->_propertyList;
  v12->_propertyList = v13;

  v15 = [v11 copy];
  payloadsURL = v12->_payloadsURL;
  v12->_payloadsURL = v15;

  v12->_noMissingPayloads = a5;
  v12->_useFilesystem = a6;
  if (![(UARPSuperBinaryLayer3 *)v12 expandSuperBinaryPropertyList])
  {
    v17 = 0;
  }

  else
  {
LABEL_3:
    v17 = v12;
  }

  return v17;
}

- (UARPSuperBinaryLayer3)initWithData:(id)a3 assetUUID:(id)a4 tmpFolderPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(UARPSuperBinaryLayer3 *)self init];
  if (v11)
  {
    v12 = [v8 copy];
    data = v11->_data;
    v11->_data = v12;

    if (!v9)
    {
      v9 = +[NSUUID UUID];
    }

    v14 = [v9 copy];
    uuid = v11->_uuid;
    v11->_uuid = v14;

    v11->_assetLength = [(NSData *)v11->_data length];
    objc_storeStrong(&v11->_tmpFolderPath, a5);
    [(UARPSuperBinaryLayer3 *)v11 setupTemporaryFolder];
  }

  return v11;
}

- (UARPSuperBinaryLayer3)initWithFilePath:(id)a3 assetUUID:(id)a4 tmpFolderPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [NSURL fileURLWithPath:a3];
  v11 = [(UARPSuperBinaryLayer3 *)self initWithURL:v10 assetUUID:v9 tmpFolderPath:v8];

  return v11;
}

- (UARPSuperBinaryLayer3)initWithURL:(id)a3 assetUUID:(id)a4 assetTag:(id)a5 tmpFolderPath:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(UARPSuperBinaryLayer3 *)self init];
  if (v14)
  {
    v15 = [v10 copy];
    url = v14->_url;
    v14->_url = v15;

    if (!v11)
    {
      v11 = +[NSUUID UUID];
    }

    v17 = [v11 copy];
    uuid = v14->_uuid;
    v14->_uuid = v17;

    v19 = +[NSFileManager defaultManager];
    v20 = [(NSURL *)v14->_url path];
    v21 = [v19 attributesOfItemAtPath:v20 error:0];
    v14->_assetLength = [v21 fileSize];

    v22 = [v12 copy];
    asset4cc = v14->_asset4cc;
    v14->_asset4cc = v22;

    objc_storeStrong(&v14->_tmpFolderPath, a6);
    v14->_useFilesystem = 1;
    [(UARPSuperBinaryLayer3 *)v14 setupTemporaryFolderForExpand];
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_new();
  formatVersion = self->_formatVersion;
  v5 = [(UARPComponentVersion *)self->_assetVersion versionString];
  [v3 appendFormat:@"SuperBinary: Format Version: %lu, Asset Version %@\n", formatVersion, v5];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_payloads;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 payload4cc];
        v13 = [v11 payloadVersion];
        [v3 appendFormat:@"<Payload: %@, Version %@> ", v12, v13, v16];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  [v3 appendFormat:@"\n"];
  v14 = [NSString stringWithString:v3];

  return v14;
}

- (id)descriptionOfHeader
{
  v3 = objc_opt_new();
  [v3 appendString:@"----------------------------\n"];
  [v3 appendString:@"SuperBinary Header\n"];
  [v3 appendString:@"----------------------------\n"];
  [v3 appendFormat:@"Format Version              : %lu\n", self->_superbinaryHeader.superBinaryFormatVersion];
  [v3 appendFormat:@"Header Length               : %lu\n", self->_superbinaryHeader.superBinaryHeaderLength];
  [v3 appendFormat:@"Asset Length                : %lu\n", self->_superbinaryHeader.superBinaryLength];
  [v3 appendFormat:@"SuperBinary Version         : %lu.%lu.%lu.%lu\n", self->_superbinaryHeader.superBinaryVersion.major, self->_superbinaryHeader.superBinaryVersion.minor, self->_superbinaryHeader.superBinaryVersion.release, self->_superbinaryHeader.superBinaryVersion.build];
  [v3 appendFormat:@"SuperBinary MetaData Offset : %lu\n", self->_superbinaryHeader.superBinaryMetadataOffset];
  [v3 appendFormat:@"SuperBinary MetaData Length : %lu\n", self->_superbinaryHeader.superBinaryMetadataLength];
  [v3 appendFormat:@"Payload Headers Offset      : %lu\n", self->_superbinaryHeader.payloadHeadersOffset];
  [v3 appendFormat:@"Payload Headers Length      : %lu\n", self->_superbinaryHeader.payloadHeadersLength];
  v4 = [NSString stringWithString:v3];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(NSUUID *)self->_uuid UUIDString];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      uuid = self->_uuid;
      v6 = [(UARPSuperBinaryLayer3 *)v4 uuid];
      v7 = UARPLayer3MatchingUUIDs(uuid, v6);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)payloadWith4cc:(id)a3
{
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_payloads;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [v9 payload4cc];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)tssRequests
{
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_tatsuTickets;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 tatsuRequest];

        if (v10)
        {
          v11 = [v9 manifestLocation];
          v12 = [v11 componentTag];

          v13 = [v9 tatsuRequest];
          if (v12)
          {
            v14 = [v9 manifestLocation];
            v15 = [v14 componentTag];
            v16 = [v15 tagString];
            [v3 setObject:v13 forKeyedSubscript:v16];
          }

          else
          {
            [v3 setObject:v13 forKeyedSubscript:@"ROOT"];
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v17 = [NSDictionary dictionaryWithDictionary:v3];

  return v17;
}

- (id)tssResponses
{
  v3 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_tatsuTickets;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 tatsuResponse];

        if (v10)
        {
          v11 = [v9 manifestLocation];
          v12 = [v11 componentTag];

          v13 = [v9 tatsuResponse];
          if (v12)
          {
            v14 = [v9 manifestLocation];
            v15 = [v14 componentTag];
            v16 = [v15 tagString];
            [v3 setObject:v13 forKeyedSubscript:v16];
          }

          else
          {
            [v3 setObject:v13 forKeyedSubscript:@"ROOT"];
          }
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v17 = [NSDictionary dictionaryWithDictionary:v3];

  return v17;
}

- (id)composeMetaData
{
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_tlvs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      v8 = 0;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * v8) generateTLV];
        [v3 appendData:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v10 = [NSData dataWithData:v3];
  composedMetaData = self->_composedMetaData;
  self->_composedMetaData = v10;

  v12 = self->_composedMetaData;
  v13 = v12;

  return v12;
}

- (id)containsTLV:(Class)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_tlvs;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)addPayloadWith4cc:(id)a3 payloadVersion:(id)a4 payloadIndex:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  superbinaryURL = self->_superbinaryURL;
  if (superbinaryURL)
  {
    v11 = [(NSURL *)superbinaryURL URLByDeletingLastPathComponent];
  }

  else
  {
    v11 = 0;
  }

  v12 = [[UARPSuperBinaryPayloadLayer3 alloc] initWithPayload4cc:v8 payloadVersion:v9 payloadIndex:a5 baseURL:v11];
  [(NSMutableArray *)self->_payloads addObject:v12];

  return v12;
}

- (void)removePayloadsWithMatchingTag:(id)a3
{
  v7 = a3;
  v4 = [(UARPSuperBinaryLayer3 *)self payloadWith4cc:?];
  if (v4)
  {
    v5 = v4;
    do
    {
      [(NSMutableArray *)self->_payloads removeObject:v5];
      v6 = [(UARPSuperBinaryLayer3 *)self payloadWith4cc:v7];

      v5 = v6;
    }

    while (v6);
  }
}

- (id)payloadWithMatchingIndex:(unint64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_payloads;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 index] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)requiredPersonalizationOptions
{
  v3 = objc_opt_new();
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_tatsuTickets;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v20 = *v26;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v7 manifestProperties];
        v9 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            for (j = 0; j != v10; j = j + 1)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              v14 = [v13 componentTag];

              if (!v14)
              {
                v15 = [v13 propertyValue];

                if (!v15)
                {
                  v16 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v13 infoProperty]);
                  [v3 addObject:v16];
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v5);
  }

  v17 = [NSArray arrayWithArray:v3];

  return v17;
}

- (id)requiredPersonalizationOptions:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = self->_tatsuTickets;
  v31 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v31)
  {
    v30 = *v43;
    do
    {
      v6 = 0;
      do
      {
        if (*v43 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v42 + 1) + 8 * v6);
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v32 = v7;
        v33 = v6;
        v8 = [v7 manifestProperties];
        v9 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v39;
          do
          {
            for (i = 0; i != v10; i = i + 1)
            {
              if (*v39 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v38 + 1) + 8 * i);
              v14 = [v13 componentTag];
              v15 = [v14 isEqual:v4];

              if (v15)
              {
                v16 = [v13 propertyValue];

                if (!v16)
                {
                  v17 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v13 infoProperty]);
                  [v5 addObject:v17];
                }
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v10);
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v18 = [v32 ftabProperties];
        v19 = [v18 countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v35;
          do
          {
            for (j = 0; j != v20; j = j + 1)
            {
              if (*v35 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v34 + 1) + 8 * j);
              v24 = [v23 componentTag];
              v25 = [v24 isEqual:v4];

              if (v25)
              {
                v26 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v23 infoProperty]);
                [v5 addObject:v26];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v34 objects:v46 count:16];
          }

          while (v20);
        }

        v6 = v33 + 1;
      }

      while ((v33 + 1) != v31);
      v31 = [(NSMutableArray *)obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v31);
  }

  v27 = [NSArray arrayWithArray:v5];

  return v27;
}

- (void)personalizationStatePrepare:(id)a3
{
  v4 = a3;
  manifest = self->_manifest;
  self->_manifest = 0;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_payloads;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        [v11 setManifest:{0, v14}];
        [v11 setFtabGeneration:0];
        [v11 setNonceSeed:0];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v4 copy];
  tssServerURL = self->_tssServerURL;
  self->_tssServerURL = v12;
}

- (void)personalizationStatePrepare:(id)a3 endpoint:(id)a4
{
  v6 = a4;
  [(UARPSuperBinaryLayer3 *)self personalizationStatePrepare:a3];
  layer3Endpoint = self->_layer3Endpoint;
  self->_layer3Endpoint = v6;
}

- (void)personalizationStateCompleted
{
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = self->_tatsuTickets;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v39 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v40;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v40 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v39 + 1) + 8 * i) tatsuResponse];

        if (v8)
        {

          self->_personalizationStatus = 2;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v9 = self->_tatsuTickets;
          v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v35 objects:v45 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v36;
            v34 = *v36;
            do
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v36 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v35 + 1) + 8 * j);
                v15 = [v14 tatsuResponse];
                v16 = [v14 ticketName];
                v17 = [v15 objectForKeyedSubscript:v16];

                if (v17)
                {
                  v18 = [v14 manifestLocation];
                  v19 = [v18 componentTag];

                  if (!v19)
                  {
                    goto LABEL_26;
                  }

                  v20 = [v14 manifestLocation];
                  v21 = [v20 componentTag];
                  v22 = [(UARPSuperBinaryLayer3 *)self payloadWith4cc:v21];

                  if (v22)
                  {
                    v23 = [v17 copy];
                    [v22 setManifest:v23];

                    v24 = [v14 manifestLocation];
                    [v22 setManifestAsTLV:{objc_msgSend(v24, "metaData")}];

                    if ([v22 manifestAsTLV])
                    {
                      v25 = v9;
                      v26 = [v22 manifest];
                      v27 = [v26 length];
                      v28 = [v22 manifest];
                      v29 = +[UARPMetaData tlvFromType:length:value:](UARPMetaData, "tlvFromType:length:value:", 2293403952, v27, [v28 bytes]);

                      if (v29)
                      {
                        [v22 addTLV:v29];
                      }

                      v9 = v25;
                      v12 = v34;
                    }

                    if (([v22 composePersonalizedPayload] & 1) == 0)
                    {
                      log = self->_log;
                      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                      {
                        sub_100082BA0(buf, &v44, log);
                      }
                    }

                    [v22 setManifest:0];
                    [v22 setFtabGeneration:0];
                    [v22 setNonceSeed:0];
                  }

                  else
                  {
LABEL_26:
                    v31 = [v17 copy];
                    manifest = self->_manifest;
                    self->_manifest = v31;

                    v22 = [UARPMetaData tlvFromType:2293403952 length:[(NSData *)self->_manifest length] value:[(NSData *)self->_manifest bytes]];
                    if (v22)
                    {
                      [(NSMutableArray *)self->_tlvs addObject:v22];
                    }

                    v33 = self->_manifest;
                    self->_manifest = 0;
                  }
                }
              }

              v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v35 objects:v45 count:16];
            }

            while (v11);
          }

          return;
        }
      }

      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  self->_personalizationStatus = 5;
}

- (BOOL)updateIncomingAssetProperties:(id)a3
{
  v4 = a3;
  v20 = 0uLL;
  uarpPlatformEndpointAssetQueryAssetVersion([v4 layer2Ctx], self->_layer2Context, &v20);
  if (v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100082BF0(log);
    }

    v7 = 0;
  }

  else
  {
    v8 = [UARPComponentVersion alloc];
    v9 = [(UARPComponentVersion *)v8 initWithMajorVersion:v20.n128_u32[0] minorVersion:v20.n128_u32[1] releaseVersion:v20.n128_u32[2] buildVersion:v20.n128_u32[3]];
    objc_storeStrong(&self->_assetVersion, v9);
    v19 = 0;
    if (uarpPlatformEndpointAssetQueryTag([v4 layer2Ctx], self->_layer2Context, &v19))
    {
      v10 = self->_log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_100082C84(v10);
      }

      v7 = 0;
    }

    else
    {
      v11 = [UARPComponentTag alloc];
      v12 = [(UARPComponentTag *)v11 initWithChar1:v19 char2:SBYTE1(v19) char3:SBYTE2(v19) char4:SHIBYTE(v19)];
      objc_storeStrong(&self->_asset4cc, v12);
      v18 = 0;
      if (uarpPlatformEndpointAssetQueryAssetLength([v4 layer2Ctx], self->_layer2Context, &v18))
      {
        v13 = self->_log;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          sub_100082BF0(v13);
        }

        v7 = 0;
      }

      else
      {
        self->_assetLength = v18;
        v17 = 0;
        v14 = uarpPlatformEndpointAssetQueryNumberOfPayloads([v4 layer2Ctx], self->_layer2Context, &v17);
        v7 = v14 == 0;
        if (v14)
        {
          v15 = self->_log;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100082D18(v15);
          }
        }

        else
        {
          self->_numPayloads = v17;
        }
      }
    }
  }

  return v7;
}

- (id)getDataBlock:(unint64_t)a3 offset:(unint64_t)a4
{
  assetLength = self->_assetLength;
  if (!assetLength)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100082E3C();
    }

    goto LABEL_13;
  }

  if (assetLength <= a4)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100082DAC();
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  v7 = a3;
  if (a4 + a3 > assetLength)
  {
    v7 = assetLength - a4;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315906;
      v12 = "[UARPSuperBinaryLayer3 getDataBlock:offset:]";
      v13 = 1024;
      v14 = v7;
      v15 = 1024;
      v16 = a4;
      v17 = 2112;
      v18 = self;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: Can only provide %d bytes from offset %d of asset %@", &v11, 0x22u);
    }
  }

  if (self->_useFilesystem)
  {
    [(UARPSuperBinaryLayer3 *)self getDataRangeFromURL:a4, v7];
  }

  else
  {
    [(UARPSuperBinaryLayer3 *)self getDataRangeFromData:a4, v7];
  }
  v9 = ;
LABEL_14:

  return v9;
}

- (id)getDataRangeFromData:(_NSRange)a3
{
  data = self->_data;
  if (data)
  {
    data = [data subdataWithRange:{a3.location, a3.length}];
    v3 = vars8;
  }

  return data;
}

- (id)getDataRangeFromURL:(_NSRange)a3
{
  location = a3.location;
  a3.location = self->_superbinaryURL;
  if (a3.location)
  {
    length = a3.length;
    v31 = 0;
    v6 = [NSFileHandle fileHandleForReadingFromURL:a3.location error:&v31];
    v7 = v31;
    if (v6)
    {
      v30 = 0;
      v8 = [v6 seekToOffset:location error:&v30];
      v9 = v30;

      if (v8)
      {
        v29 = 0;
        v10 = [v6 readDataUpToLength:length error:&v29];
        v11 = v29;

        if (v10)
        {
          v28 = 0;
          v12 = [v6 closeAndReturnError:&v28];
          v7 = v28;

          if ((v12 & 1) == 0)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              sub_100082EBC(&self->_superbinaryURL, log, v7);
            }
          }

          v14 = v10;
        }

        else
        {
          v17 = self->_log;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            superbinaryURL = self->_superbinaryURL;
            v25 = v17;
            v26 = [(NSURL *)superbinaryURL absoluteString];
            v27 = [v11 description];
            *buf = 136316162;
            v33 = "[UARPSuperBinaryLayer3 getDataRangeFromURL:]";
            v34 = 2048;
            v35 = location;
            v36 = 2048;
            v37 = length;
            v38 = 2112;
            v39 = v26;
            v40 = 2112;
            v41 = v27;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s: cannot read range (offset %lu, length %lu) from %@, error %@", buf, 0x34u);
          }

          v7 = v11;
        }
      }

      else
      {
        v16 = self->_log;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          assetLength = self->_assetLength;
          v20 = self->_superbinaryURL;
          v21 = v16;
          v22 = [(NSURL *)v20 absoluteString];
          v23 = [v9 description];
          *buf = 136316162;
          v33 = "[UARPSuperBinaryLayer3 getDataRangeFromURL:]";
          v34 = 2048;
          v35 = location;
          v36 = 2048;
          v37 = assetLength;
          v38 = 2112;
          v39 = v22;
          v40 = 2112;
          v41 = v23;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s: cannot seek to offset %lu (file length %lu) from %@, error %@", buf, 0x34u);
        }

        v10 = 0;
        v7 = v9;
      }
    }

    else
    {
      v15 = self->_log;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100082F88(&self->_superbinaryURL, v15, v7);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setupTemporaryFolder
{
  if (self->_tmpFolderPath)
  {
    v3 = +[NSDate now];
    v4 = objc_opt_new();
    [v4 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
    v24 = v3;
    v5 = [v4 stringFromDate:v3];
    v6 = objc_opt_new();
    [v6 addObject:self->_tmpFolderPath];
    [v6 addObject:@"assets"];
    [v6 addObject:v5];
    v7 = [NSString pathWithComponents:v6];
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v27 = "[UARPSuperBinaryLayer3 setupTemporaryFolder]";
      v28 = 2112;
      v29 = v7;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "%s: Full Temp Folder is %@", buf, 0x16u);
    }

    v9 = [NSURL fileURLWithPath:v7];
    expansionFolderURL = self->_expansionFolderURL;
    self->_expansionFolderURL = v9;

    v11 = [(NSUUID *)self->_uuid UUIDString];
    [v6 addObject:v11];

    v12 = [NSString pathWithComponents:v6];
    v13 = +[NSFileManager defaultManager];
    if (([v13 fileExistsAtPath:v12] & 1) == 0)
    {
      v25 = 0;
      v14 = [v13 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v25];
      v15 = v25;
      if ((v14 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100083054();
      }
    }

    [v6 addObject:@"superbinary.uarp"];
    v16 = [NSString pathWithComponents:v6];
    v17 = [NSURL fileURLWithPath:v16];
    superbinaryURL = self->_superbinaryURL;
    self->_superbinaryURL = v17;

    v19 = self->_log;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = self->_superbinaryURL;
      v21 = v19;
      v22 = [(NSURL *)v20 absoluteString];
      *buf = 136315394;
      v27 = "[UARPSuperBinaryLayer3 setupTemporaryFolder]";
      v28 = 2112;
      v29 = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s: File name for asset is %@", buf, 0x16u);
    }
  }

  return 1;
}

- (BOOL)setupTemporaryFolderForExpand
{
  if (self->_tmpFolderPath)
  {
    [(UARPSuperBinaryLayer3 *)self setupTemporaryFolder];
    v3 = +[NSFileManager defaultManager];
    v4 = [(NSURL *)self->_url path];
    v5 = [v3 fileExistsAtPath:v4];

    if (v5)
    {
      url = self->_url;
      superbinaryURL = self->_superbinaryURL;
      v34 = 0;
      v8 = [v3 copyItemAtURL:url toURL:superbinaryURL error:&v34];
      v9 = v34;
      if (v8)
      {
        v10 = +[NSDate now];
        v35 = NSFileModificationDate;
        v36 = v10;
        v11 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        v12 = +[NSFileManager defaultManager];
        v13 = [(NSURL *)self->_superbinaryURL path];
        v33 = 0;
        v14 = [v12 setAttributes:v11 ofItemAtPath:v13 error:&v33];
        v15 = v33;

        if ((v14 & 1) == 0)
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_1000830DC(&self->_superbinaryURL, log);
          }
        }

        v17 = self->_log;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = self->_url;
          v19 = v17;
          v20 = [(NSURL *)v18 absoluteString];
          v21 = [(NSURL *)self->_superbinaryURL absoluteString];
          *buf = 136315650;
          v38 = "[UARPSuperBinaryLayer3 setupTemporaryFolderForExpand]";
          v39 = 2112;
          v40 = v20;
          v41 = 2112;
          v42 = v21;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s: copied %@ to %@", buf, 0x20u);
        }
      }

      else
      {
        v26 = self->_log;
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v28 = self->_url;
          v29 = v26;
          v30 = [(NSURL *)v28 absoluteString];
          v31 = [(NSURL *)self->_superbinaryURL absoluteString];
          v32 = [v9 description];
          *buf = 136315906;
          v38 = "[UARPSuperBinaryLayer3 setupTemporaryFolderForExpand]";
          v39 = 2112;
          v40 = v30;
          v41 = 2112;
          v42 = v31;
          v43 = 2112;
          v44 = v32;
          _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%s: cannot copy %@ to %@, error %@", buf, 0x2Au);
        }

        v15 = self->_superbinaryURL;
        self->_superbinaryURL = 0;
      }
    }

    else
    {
      v22 = self->_log;
      v8 = 1;
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
LABEL_18:

        return v8;
      }

      v23 = self->_url;
      v9 = v22;
      v24 = [(NSURL *)v23 absoluteString];
      v25 = [(NSURL *)self->_superbinaryURL absoluteString];
      *buf = 136315650;
      v38 = "[UARPSuperBinaryLayer3 setupTemporaryFolderForExpand]";
      v39 = 2112;
      v40 = v24;
      v41 = 2112;
      v42 = v25;
      v8 = 1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s: skip copying %@ to %@; original file does not exist", buf, 0x20u);
    }

    goto LABEL_18;
  }

  return 1;
}

- (BOOL)expandSuperBinaryPropertyList
{
  v3 = [NSMutableDictionary dictionaryWithContentsOfURL:self->_propertyList];
  v4 = [v3 objectForKeyedSubscript:@"SuperBinary Format Version"];
  self->_formatVersion = [v4 unsignedIntValue];
  v5 = [v3 objectForKeyedSubscript:@"SuperBinary Firmware Version"];
  if (!v5)
  {
LABEL_15:
    v8 = 0;
    goto LABEL_16;
  }

  v6 = [[UARPComponentVersion alloc] initWithVersionString:v5];
  assetVersion = self->_assetVersion;
  self->_assetVersion = v6;

  if (![(UARPSuperBinaryLayer3 *)self expandPropertyListTLVs:v3])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100083194();
    }

    goto LABEL_15;
  }

  if (![(UARPSuperBinaryLayer3 *)self expandPropertyListPayloads:v3])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100083214();
    }

    goto LABEL_15;
  }

  if (![(UARPSuperBinaryLayer3 *)self processPersonalizationTickets:v3])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100083294();
    }

    goto LABEL_15;
  }

  if (![(UARPSuperBinaryLayer3 *)self processDeploymentRules:v3])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100083314();
    }

    goto LABEL_15;
  }

  v8 = 1;
LABEL_16:

  return v8;
}

- (BOOL)expandPropertyListTLVs:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"SuperBinary MetaData"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100083394();
    }

    v5 = 0;
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10005E774;
    v7[3] = &unk_1000B9638;
    v7[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = 1;
  }

  return v5;
}

- (BOOL)expandPropertyListPayloads:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"SuperBinary Payloads"];
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100083414();
      }

LABEL_13:
      v7 = 0;
      goto LABEL_14;
    }
  }

  if ([v4 count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
      if (![(UARPSuperBinaryLayer3 *)self expandPropertyListPayload:v6 payloadIndex:v5])
      {
        break;
      }

      if (++v5 >= [v4 count])
      {
        goto LABEL_7;
      }
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100083494();
    }

    goto LABEL_13;
  }

LABEL_7:
  v7 = 1;
LABEL_14:

  return v7;
}

- (BOOL)expandPropertyListPayload:(id)a3 payloadIndex:(unint64_t)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[UARPSuperBinaryPayloadLayer3 alloc] initWithPayloadDictionary:v6 payloadsURL:self->_payloadsURL payloadIndex:a4 useFilesystem:self->_useFilesystem];
    if (v7)
    {
      [(UARPSuperBinaryLayer3 *)self addPayload:v7];
    }

    else if (self->_noMissingPayloads)
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_10008358C();
      }

      v8 = 0;
      goto LABEL_12;
    }

    v8 = 1;
LABEL_12:

    goto LABEL_13;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100083510();
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (BOOL)expandSuperBinaryHeader
{
  v3 = [(UARPSuperBinaryLayer3 *)self getDataBlock:44 offset:0];
  v4 = v3;
  if (v3)
  {
    uarpSuperBinaryHeaderEndianSwap([v3 bytes], &self->_superbinaryHeader.superBinaryFormatVersion);
    p_superBinaryHeaderLength = &self->_superbinaryHeader.superBinaryHeaderLength;
    if (self->_superbinaryHeader.superBinaryHeaderLength == 44)
    {
      if (self->_assetLength >= self->_superbinaryHeader.superBinaryLength)
      {
        self->_formatVersion = self->_superbinaryHeader.superBinaryFormatVersion;
        v8 = [[UARPComponentVersion alloc] initWithMajorVersion:self->_superbinaryHeader.superBinaryVersion.major minorVersion:self->_superbinaryHeader.superBinaryVersion.minor releaseVersion:self->_superbinaryHeader.superBinaryVersion.release buildVersion:self->_superbinaryHeader.superBinaryVersion.build];
        assetVersion = self->_assetVersion;
        self->_assetVersion = v8;

        v6 = 1;
        goto LABEL_11;
      }

      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100083694(&self->_assetLength, p_superBinaryHeaderLength);
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100083608(p_superBinaryHeaderLength);
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_10008372C();
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (BOOL)expandSuperBinaryHeadersAndMetaData
{
  v3 = [(UARPSuperBinaryLayer3 *)self expandSuperBinaryHeader];
  if (v3)
  {
    [(UARPSuperBinaryLayer3 *)self expandSuperBinaryMetaData:self->_superbinaryHeader.superBinaryMetadataLength offset:self->_superbinaryHeader.superBinaryMetadataOffset];
    [(UARPSuperBinaryLayer3 *)self expandPayloadHeadersAndMetaData:self->_superbinaryHeader.payloadHeadersLength offset:self->_superbinaryHeader.payloadHeadersOffset];
    v4 = [[UARPComponentTag alloc] initWithString:@"PMAP"];
    v5 = [(UARPSuperBinaryLayer3 *)self payloadWith4cc:v4];
    if (v5)
    {
      [(UARPSuperBinaryLayer3 *)self processPMAP:v5];
    }
  }

  return v3;
}

- (void)expandSuperBinaryMetaData:(unint64_t)a3 offset:(unint64_t)a4
{
  v5 = [(UARPSuperBinaryLayer3 *)self getDataBlock:a3 offset:a4];
  metaData = self->_metaData;
  self->_metaData = v5;

  v7 = UARPSuperBinaryProcessMetaData(self->_metaData, self->_log);
  [(NSMutableArray *)self->_tlvs addObjectsFromArray:v7];
}

- (void)expandPayloadHeadersAndMetaData:(unint64_t)a3 offset:(unint64_t)a4
{
  v5 = a3 / 0x28;
  if (a3 % 0x28)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000837AC();
    }
  }

  else
  {
    v7 = [UARPSuperBinaryLayer3 getDataBlock:"getDataBlock:offset:" offset:?];
    v8 = [v7 bytes];
    if (a3 >= 0x28)
    {
      v9 = v8;
      v10 = 0;
      do
      {
        v14 = 0;
        memset(v13, 0, sizeof(v13));
        uarpPayloadHeader2EndianSwap(v9, v13);
        v11 = [(UARPSuperBinaryLayer3 *)self expandPayloadWithHeader:v13 payloadIndex:v10];
        if (v11)
        {
          [(NSMutableArray *)self->_payloads addObject:v11];
        }

        else
        {
          log = self->_log;
          if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
          {
            sub_100083828(buf, &v16, log);
          }
        }

        ++v10;
        v9 += 10;
      }

      while (v5 != v10);
    }
  }
}

- (BOOL)expandSuperBinaryPlist
{
  v3 = [(UARPSuperBinaryLayer3 *)self getDataBlock:self->_assetLength - self->_superbinaryHeader.superBinaryLength offset:?];
  if (v3)
  {
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [NSSet setWithObjects:v4, v5, v6, objc_opt_class(), 0];
    v13 = 0;
    v8 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v7 fromData:v3 error:&v13];
    v9 = v13;
    v10 = [v8 copy];
    superBinaryPlist = self->_superBinaryPlist;
    self->_superBinaryPlist = v10;
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100083878();
  }

  return v3 != 0;
}

- (id)expandPayloadWithHeader:(UARPPayloadHeader2 *)a3 payloadIndex:(unint64_t)a4
{
  if (a3->payloadHeaderLength == 40)
  {
    v7 = [[UARPComponentTag alloc] initWithChar1:a3->payloadTag.char1 char2:a3->payloadTag.char2 char3:a3->payloadTag.char3 char4:a3->payloadTag.char4];
    v8 = [[UARPComponentVersion alloc] initWithMajorVersion:a3->payloadVersion.major minorVersion:a3->payloadVersion.minor releaseVersion:a3->payloadVersion.release buildVersion:a3->payloadVersion.build];
    payloadMetadataLength = a3->payloadMetadataLength;
    if (payloadMetadataLength)
    {
      v10 = [(UARPSuperBinaryLayer3 *)self getDataBlock:payloadMetadataLength offset:a3->payloadMetadataOffset];
    }

    else
    {
      v10 = 0;
    }

    if (self->_useFilesystem)
    {
      [(UARPSuperBinaryLayer3 *)self expandPayloadWithHeaderAsURL:a3 payloadIndex:a4 payload4cc:v7 payloadVersion:v8 payloadMetaData:v10];
    }

    else
    {
      [(UARPSuperBinaryLayer3 *)self expandPayloadWithHeaderAsData:a3 payloadIndex:a4 payload4cc:v7 payloadVersion:v8 payloadMetaData:v10];
    }
    v11 = ;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000838F8(a3);
    }

    v11 = 0;
  }

  return v11;
}

- (id)expandPayloadWithHeaderAsData:(UARPPayloadHeader2 *)a3 payloadIndex:(unint64_t)a4 payload4cc:(id)a5 payloadVersion:(id)a6 payloadMetaData:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (self->_data)
  {
    v15 = [(UARPSuperBinaryLayer3 *)self getDataBlock:a3->payloadLength offset:a3->payloadOffset];
    v16 = [[UARPSuperBinaryPayloadLayer3 alloc] initWithPayloadData:v15 payloadMetaData:v14 payload4cc:v12 payloadVersion:v13 payloadIndex:a4];
    [(UARPSuperBinaryPayloadLayer3 *)v16 setPayloadHeader:a3];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100083994();
    }

    v16 = 0;
  }

  return v16;
}

- (id)expandPayloadWithHeaderAsURL:(UARPPayloadHeader2 *)a3 payloadIndex:(unint64_t)a4 payload4cc:(id)a5 payloadVersion:(id)a6 payloadMetaData:(id)a7
{
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (self->_superbinaryURL)
  {
    v15 = [NSString stringWithFormat:@"payload.%lu", a4];
    v16 = [(NSURL *)self->_superbinaryURL URLByDeletingLastPathComponent];
    v17 = [NSURL fileURLWithPath:v15 isDirectory:0 relativeToURL:v16];

    v35 = 0;
    v18 = [(UARPSuperBinaryLayer3 *)self cleanFileHandleForWriting:v17 error:&v35];
    v32 = v35;
    if (v18)
    {
      v28 = v15;
      v29 = v13;
      v30 = v12;
      v31 = a3;
      payloadLength = a3->payloadLength;
      if (payloadLength)
      {
        payloadOffset = a3->payloadOffset;
        v21 = 4096;
        do
        {
          v22 = objc_autoreleasePoolPush();
          if (payloadLength < v21)
          {
            v21 = payloadLength;
          }

          v23 = [(UARPSuperBinaryLayer3 *)self getDataBlock:v21 offset:payloadOffset];
          payloadOffset += v21;
          payloadLength -= v21;
          v34 = 0;
          [v18 writeData:v23 error:&v34];

          objc_autoreleasePoolPop(v22);
        }

        while (payloadLength);
      }

      v33 = 0;
      [v18 closeAndReturnError:&v33];
      if (v14)
      {
        v24 = UARPSuperBinaryProcessMetaData(v14, self->_log);
      }

      else
      {
        v24 = 0;
      }

      v13 = v29;
      v12 = v30;
      v15 = v28;
      v25 = [[UARPSuperBinaryPayloadLayer3 alloc] initWithPayloadURL:v17 payloadTlvs:v24 payload4cc:v30 payloadVersion:v29 payloadIndex:a4];
      [(UARPSuperBinaryPayloadLayer3 *)v25 setPayloadHeader:v31];
    }

    else
    {
      if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        v26 = v32;
        sub_100083A14();
        v25 = 0;
        goto LABEL_18;
      }

      v25 = 0;
    }

    v26 = v32;
LABEL_18:

    goto LABEL_19;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100083A94();
  }

  v25 = 0;
LABEL_19:

  return v25;
}

- (BOOL)processPersonalizationTickets:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"Personalization Tickets"];
  if (v4)
  {
    v5 = objc_opt_new();
    [v5 setObject:v4 forKeyedSubscript:@"Personalization Tickets"];
    v6 = [NSKeyedArchiver archivedDataWithRootObject:v5 requiringSecureCoding:0 error:0];
    v7 = v6 != 0;
    if (v6)
    {
      v14 = 1;
      v8 = [[UARPMetaDataComposePropertyListPayload alloc] initWithLength:1 value:&v14];
      v9 = [(UARPMetaData *)v8 generateTLV];
      v10 = [[UARPComponentTag alloc] initWithString:@"PMAP"];
      v11 = [[UARPComponentVersion alloc] initWithVersionString:@"0.0.0.0"];
      v12 = [[UARPSuperBinaryPayloadLayer3 alloc] initWithPayloadData:v6 payloadMetaData:v9 payload4cc:v10 payloadVersion:v11 payloadIndex:[(NSMutableArray *)self->_payloads count]];
      [(UARPSuperBinaryLayer3 *)self addPayload:v12];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processDeploymentRules:(id)a3
{
  v4 = [a3 objectForKeyedSubscript:@"Deployment Rules"];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [[UARPDeploymentRules alloc] initWithRulesDictionary:v4];
      v6 = v5;
      v7 = v5 != 0;
      if (v5)
      {
        tlvs = self->_tlvs;
        v9 = [(UARPDeploymentRules *)v5 percentageRules];
        [(NSMutableArray *)tlvs addObjectsFromArray:v9];

        v10 = self->_tlvs;
        v11 = [(UARPDeploymentRules *)v6 countryRules];
        [(NSMutableArray *)v10 addObjectsFromArray:v11];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)processPMAP:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 payloadData];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v7, v8, v9, v10, objc_opt_class(), 0];
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:v6 error:0];
  v13 = [v12 objectForKeyedSubscript:@"Personalization Tickets"];
  v14 = v13;
  if (v13)
  {
    v23 = v5;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v25;
      v22 = v6;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v25 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [[UARPTatsuTicket alloc] initWithTicketDictionary:*(*(&v24 + 1) + 8 * i)];
          if (!v20)
          {

            v5 = v23;
            v6 = v22;
            goto LABEL_13;
          }

          v21 = v20;
          [(NSMutableArray *)self->_tatsuTickets addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
        v6 = v22;
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v5 = v23;
    if ([(NSMutableArray *)self->_tatsuTickets count])
    {
      self->_personalizationStatus = 0;
      self->_needsHostPersonalization = 1;
    }
  }

LABEL_13:

  objc_autoreleasePoolPop(v5);
}

- (BOOL)writeToURL:(id)a3 excludeTags:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = [(UARPSuperBinaryLayer3 *)self prepareComposedComponents:v10 excludingTags:v9 allHeaders:v11 allMetaData:v12 error:a5];

  if (v13)
  {
    v14 = [(UARPSuperBinaryLayer3 *)self cleanFileHandleForWriting:v8 error:a5];
    if (v14)
    {
      v15 = [(UARPSuperBinaryLayer3 *)self writeToFileHandle:v14 includedPayloads:v10 allHeaders:v11 allMetaData:v12 error:a5];
      v16 = [v14 closeAndReturnError:a5] & v15;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)writeToFileHandle:(id)a3 includedPayloads:(id)a4 allHeaders:(id)a5 allMetaData:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if ([v12 writeData:a5 error:a7] && objc_msgSend(v12, "writeData:error:", v14, a7))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      while (2)
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if (![*(*(&v23 + 1) + 8 * i) writeComposedPayloadToFile:v12 error:{a7, v23}])
          {
            v21 = 0;
            goto LABEL_14;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    v15 = [NSMutableDictionary dictionaryWithContentsOfURL:self->_propertyList];
    v20 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:0 error:a7];
    v21 = [v12 writeData:v20 error:a7];

LABEL_14:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)composeToDataExcludingTags:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  if ([(UARPSuperBinaryLayer3 *)self prepareComposedComponents:v7 excludingTags:v6 allHeaders:v8 allMetaData:v9 error:a4])
  {
    v10 = objc_opt_new();
    [v10 appendData:v8];
    [v10 appendData:v9];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v20 + 1) + 8 * i) payloadData];
          if (!v16)
          {

            v18 = 0;
            goto LABEL_13;
          }

          v17 = v16;
          [v10 appendData:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    v18 = [NSData dataWithData:v10];
LABEL_13:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)prepareComposedComponents:(id)a3 excludingTags:(id)a4 allHeaders:(id)a5 allMetaData:(id)a6 error:(id *)a7
{
  v78 = a3;
  v82 = a4;
  v76 = a5;
  v81 = a6;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v77 = self;
  obj = self->_payloads;
  v11 = [(NSMutableArray *)obj countByEnumeratingWithState:&v106 objects:v117 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v107;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v107 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v106 + 1) + 8 * i);
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v16 = v82;
        v17 = [v16 countByEnumeratingWithState:&v102 objects:v116 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v103;
          while (2)
          {
            for (j = 0; j != v18; j = j + 1)
            {
              if (*v103 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v102 + 1) + 8 * j);
              v22 = [v15 payload4cc];
              LOBYTE(v21) = [v22 isEqual:v21];

              if (v21)
              {

                goto LABEL_16;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v102 objects:v116 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        [v78 addObject:v15];
LABEL_16:
        ;
      }

      v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v106 objects:v117 count:16];
    }

    while (v12);
  }

  formatVersion = v77->_formatVersion;
  v91 = formatVersion;
  v92 = 44;
  v72 = [(UARPComponentVersion *)v77->_assetVersion majorVersion];
  v94 = v72;
  v71 = [(UARPComponentVersion *)v77->_assetVersion minorVersion];
  v95 = v71;
  v73 = [(UARPComponentVersion *)v77->_assetVersion releaseVersion];
  v96 = v73;
  v69 = [(UARPComponentVersion *)v77->_assetVersion buildVersion];
  v97 = v69;
  v100 = 44;
  v23 = 40 * [v78 count];
  v101 = v23;
  v24 = v23 + 44;
  v25 = malloc(v23);
  obja = v23;
  bzero(v25, v23);
  v26 = [(UARPSuperBinaryLayer3 *)v77 composeMetaData];
  v98 = v24;
  v27 = [v26 length];
  v68 = v24;
  v28 = v24 + v27;
  v67 = v27;
  v99 = v27;
  v93 = v24 + v27;
  v74 = v26;
  [v81 appendData:v26];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v29 = v78;
  v30 = [v29 countByEnumeratingWithState:&v87 objects:v115 count:16];
  v75 = v25;
  if (v30)
  {
    v31 = v30;
    v32 = *v88;
    do
    {
      for (k = 0; k != v31; k = k + 1)
      {
        if (*v88 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v87 + 1) + 8 * k);
        v35 = [v34 composeMetaData];
        *v25 = 40;
        v36 = [v34 payload4cc];
        *(v25 + 4) = [v36 char1];

        v37 = [v34 payload4cc];
        *(v25 + 5) = [v37 char2];

        v38 = [v34 payload4cc];
        *(v25 + 6) = [v38 char3];

        v39 = [v34 payload4cc];
        *(v25 + 7) = [v39 char4];

        v40 = [v34 payloadVersion];
        v25[2] = [v40 majorVersion];

        v41 = [v34 payloadVersion];
        v25[3] = [v41 minorVersion];

        v42 = [v34 payloadVersion];
        v25[4] = [v42 releaseVersion];

        v43 = [v34 payloadVersion];
        v25[5] = [v43 buildVersion];

        v25[6] = v28;
        v44 = [v35 length];
        v25[7] = v44;
        v28 += v44;
        v93 = v28;
        if (v35)
        {
          [v81 appendData:v35];
        }

        v25 += 10;
      }

      v31 = [v29 countByEnumeratingWithState:&v87 objects:v115 count:16];
    }

    while (v31);
  }

  log = v77->_log;
  v46 = v81;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v47 = log;
    v48 = [v81 length];
    *buf = 136315394;
    v112 = "[UARPSuperBinaryLayer3 prepareComposedComponents:excludingTags:allHeaders:allMetaData:error:]";
    v113 = 2048;
    v114 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s: metadata length is %lu", buf, 0x16u);
  }

  if (([v81 length] & 0x3FF) != 0)
  {
    v49 = [v81 length] & 0x3FF;
    v28 += 1024 - v49;
    v93 = v28;
    v50 = v77->_log;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v112 = "[UARPSuperBinaryLayer3 prepareComposedComponents:excludingTags:allHeaders:allMetaData:error:]";
      v113 = 2048;
      v114 = 1024 - v49;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s: metadata padding is %lu", buf, 0x16u);
    }

    v51 = *&v49 | 0xFFFFFFFFFFFFFC00;
    v46 = v81;
    do
    {
      buf[0] = 0;
      [v81 appendBytes:buf length:1];
    }

    while (!__CFADD__(v51++, 1));
  }

  v53 = v77->_log;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = v53;
    v55 = [v46 length];
    *buf = 136315394;
    v112 = "[UARPSuperBinaryLayer3 prepareComposedComponents:excludingTags:allHeaders:allMetaData:error:]";
    v113 = 2048;
    v114 = v55;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_INFO, "%s: metadata padded length is %lu", buf, 0x16u);
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v56 = v29;
  v57 = [v56 countByEnumeratingWithState:&v83 objects:v110 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v84;
    v60 = v75;
    do
    {
      for (m = 0; m != v58; m = m + 1)
      {
        if (*v84 != v59)
        {
          objc_enumerationMutation(v56);
        }

        v62 = *(*(&v83 + 1) + 8 * m);
        v60[8] = v28;
        v63 = [v62 composedPayloadLength];
        v60[9] = v63;
        v28 += v63;
        v60 += 10;
      }

      v58 = [v56 countByEnumeratingWithState:&v83 objects:v110 count:16];
    }

    while (v58);
  }

  v91 = uarpHtonl(formatVersion);
  v92 = uarpHtonl(0x2Cu);
  v93 = uarpHtonl(v28);
  v94 = uarpHtonl(v72);
  v95 = uarpHtonl(v71);
  v97 = uarpHtonl(v69);
  v96 = uarpHtonl(v73);
  v98 = uarpHtonl(v68);
  v99 = uarpHtonl(v67);
  v100 = uarpHtonl(0x2Cu);
  v101 = uarpHtonl(obja);
  if ([v56 count])
  {
    v64 = 0;
    v65 = v75 + 5;
    do
    {
      *(v65 - 5) = uarpHtonl(*(v65 - 5));
      *(v65 - 3) = uarpHtonl(*(v65 - 3));
      *(v65 - 2) = uarpHtonl(*(v65 - 2));
      *v65 = uarpHtonl(*v65);
      *(v65 - 1) = uarpHtonl(*(v65 - 1));
      v65[1] = uarpHtonl(v65[1]);
      v65[2] = uarpHtonl(v65[2]);
      v65[3] = uarpHtonl(v65[3]);
      v65[4] = uarpHtonl(v65[4]);
      ++v64;
      v65 += 10;
    }

    while (v64 < [v56 count]);
  }

  [v76 appendBytes:&v91 length:44];
  [v76 appendBytes:v75 length:obja];
  free(v75);

  return 1;
}

- (id)percentageRules
{
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_tlvs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v11}];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)countryRules
{
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_tlvs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v11}];
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

@end