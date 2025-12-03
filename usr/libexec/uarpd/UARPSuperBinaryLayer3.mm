@interface UARPSuperBinaryLayer3
- (BOOL)expandPropertyListPayload:(id)payload payloadIndex:(unint64_t)index;
- (BOOL)expandPropertyListPayloads:(id)payloads;
- (BOOL)expandPropertyListTLVs:(id)vs;
- (BOOL)expandSuperBinaryHeader;
- (BOOL)expandSuperBinaryHeadersAndMetaData;
- (BOOL)expandSuperBinaryPlist;
- (BOOL)expandSuperBinaryPropertyList;
- (BOOL)isEqual:(id)equal;
- (BOOL)prepareComposedComponents:(id)components excludingTags:(id)tags allHeaders:(id)headers allMetaData:(id)data error:(id *)error;
- (BOOL)processDeploymentRules:(id)rules;
- (BOOL)processPersonalizationTickets:(id)tickets;
- (BOOL)setupTemporaryFolder;
- (BOOL)setupTemporaryFolderForExpand;
- (BOOL)updateIncomingAssetProperties:(id)properties;
- (BOOL)writeToFileHandle:(id)handle includedPayloads:(id)payloads allHeaders:(id)headers allMetaData:(id)data error:(id *)error;
- (BOOL)writeToURL:(id)l excludeTags:(id)tags error:(id *)error;
- (UARPSuperBinaryLayer3)init;
- (UARPSuperBinaryLayer3)initWithData:(id)data assetUUID:(id)d tmpFolderPath:(id)path;
- (UARPSuperBinaryLayer3)initWithFilePath:(id)path assetUUID:(id)d tmpFolderPath:(id)folderPath;
- (UARPSuperBinaryLayer3)initWithLayer2Context:(void *)context assetTag:(id)tag tmpFolderPath:(id)path;
- (UARPSuperBinaryLayer3)initWithPropertyList:(id)list payloadsURL:(id)l noMissingPayloads:(BOOL)payloads useFilesystem:(BOOL)filesystem;
- (UARPSuperBinaryLayer3)initWithURL:(id)l assetUUID:(id)d assetTag:(id)tag tmpFolderPath:(id)path;
- (id)addPayloadWith4cc:(id)with4cc payloadVersion:(id)version payloadIndex:(unint64_t)index;
- (id)composeMetaData;
- (id)composeToDataExcludingTags:(id)tags error:(id *)error;
- (id)containsTLV:(Class)v;
- (id)countryRules;
- (id)description;
- (id)descriptionOfHeader;
- (id)expandPayloadWithHeader:(UARPPayloadHeader2 *)header payloadIndex:(unint64_t)index;
- (id)expandPayloadWithHeaderAsData:(UARPPayloadHeader2 *)data payloadIndex:(unint64_t)index payload4cc:(id)payload4cc payloadVersion:(id)version payloadMetaData:(id)metaData;
- (id)expandPayloadWithHeaderAsURL:(UARPPayloadHeader2 *)l payloadIndex:(unint64_t)index payload4cc:(id)payload4cc payloadVersion:(id)version payloadMetaData:(id)data;
- (id)getDataBlock:(unint64_t)block offset:(unint64_t)offset;
- (id)getDataRangeFromData:(_NSRange)data;
- (id)getDataRangeFromURL:(_NSRange)l;
- (id)payloadWith4cc:(id)with4cc;
- (id)payloadWithMatchingIndex:(unint64_t)index;
- (id)percentageRules;
- (id)requiredPersonalizationOptions;
- (id)requiredPersonalizationOptions:(id)options;
- (id)tssRequests;
- (id)tssResponses;
- (unint64_t)hash;
- (void)expandPayloadHeadersAndMetaData:(unint64_t)data offset:(unint64_t)offset;
- (void)expandSuperBinaryMetaData:(unint64_t)data offset:(unint64_t)offset;
- (void)personalizationStateCompleted;
- (void)personalizationStatePrepare:(id)prepare;
- (void)personalizationStatePrepare:(id)prepare endpoint:(id)endpoint;
- (void)processPMAP:(id)p;
- (void)removePayloadsWithMatchingTag:(id)tag;
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

- (UARPSuperBinaryLayer3)initWithLayer2Context:(void *)context assetTag:(id)tag tmpFolderPath:(id)path
{
  pathCopy = path;
  v9 = [(UARPSuperBinaryLayer3 *)self init];
  v10 = v9;
  if (!v9)
  {
LABEL_5:
    v18 = v10;
    goto LABEL_9;
  }

  v9->_layer2Context = context;
  objc_storeStrong(&v9->_tmpFolderPath, path);
  [(UARPSuperBinaryLayer3 *)v10 setupTemporaryFolder];
  v11 = +[NSFileManager defaultManager];
  path = [(NSURL *)v10->_superbinaryURL path];
  v13 = [v11 createFileAtPath:path contents:0 attributes:0];

  log = v10->_log;
  if (v13)
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      superbinaryURL = v10->_superbinaryURL;
      v16 = log;
      path2 = [(NSURL *)superbinaryURL path];
      v20 = 136315394;
      v21 = "[UARPSuperBinaryLayer3 initWithLayer2Context:assetTag:tmpFolderPath:]";
      v22 = 2112;
      v23 = path2;
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

- (UARPSuperBinaryLayer3)initWithPropertyList:(id)list payloadsURL:(id)l noMissingPayloads:(BOOL)payloads useFilesystem:(BOOL)filesystem
{
  listCopy = list;
  lCopy = l;
  v12 = [(UARPSuperBinaryLayer3 *)self init];
  if (!v12)
  {
    goto LABEL_3;
  }

  v13 = [listCopy copy];
  propertyList = v12->_propertyList;
  v12->_propertyList = v13;

  v15 = [lCopy copy];
  payloadsURL = v12->_payloadsURL;
  v12->_payloadsURL = v15;

  v12->_noMissingPayloads = payloads;
  v12->_useFilesystem = filesystem;
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

- (UARPSuperBinaryLayer3)initWithData:(id)data assetUUID:(id)d tmpFolderPath:(id)path
{
  dataCopy = data;
  dCopy = d;
  pathCopy = path;
  v11 = [(UARPSuperBinaryLayer3 *)self init];
  if (v11)
  {
    v12 = [dataCopy copy];
    data = v11->_data;
    v11->_data = v12;

    if (!dCopy)
    {
      dCopy = +[NSUUID UUID];
    }

    v14 = [dCopy copy];
    uuid = v11->_uuid;
    v11->_uuid = v14;

    v11->_assetLength = [(NSData *)v11->_data length];
    objc_storeStrong(&v11->_tmpFolderPath, path);
    [(UARPSuperBinaryLayer3 *)v11 setupTemporaryFolder];
  }

  return v11;
}

- (UARPSuperBinaryLayer3)initWithFilePath:(id)path assetUUID:(id)d tmpFolderPath:(id)folderPath
{
  folderPathCopy = folderPath;
  dCopy = d;
  v10 = [NSURL fileURLWithPath:path];
  v11 = [(UARPSuperBinaryLayer3 *)self initWithURL:v10 assetUUID:dCopy tmpFolderPath:folderPathCopy];

  return v11;
}

- (UARPSuperBinaryLayer3)initWithURL:(id)l assetUUID:(id)d assetTag:(id)tag tmpFolderPath:(id)path
{
  lCopy = l;
  dCopy = d;
  tagCopy = tag;
  pathCopy = path;
  v14 = [(UARPSuperBinaryLayer3 *)self init];
  if (v14)
  {
    v15 = [lCopy copy];
    url = v14->_url;
    v14->_url = v15;

    if (!dCopy)
    {
      dCopy = +[NSUUID UUID];
    }

    v17 = [dCopy copy];
    uuid = v14->_uuid;
    v14->_uuid = v17;

    v19 = +[NSFileManager defaultManager];
    path = [(NSURL *)v14->_url path];
    v21 = [v19 attributesOfItemAtPath:path error:0];
    v14->_assetLength = [v21 fileSize];

    v22 = [tagCopy copy];
    asset4cc = v14->_asset4cc;
    v14->_asset4cc = v22;

    objc_storeStrong(&v14->_tmpFolderPath, path);
    v14->_useFilesystem = 1;
    [(UARPSuperBinaryLayer3 *)v14 setupTemporaryFolderForExpand];
  }

  return v14;
}

- (id)description
{
  v3 = objc_opt_new();
  formatVersion = self->_formatVersion;
  versionString = [(UARPComponentVersion *)self->_assetVersion versionString];
  [v3 appendFormat:@"SuperBinary: Format Version: %lu, Asset Version %@\n", formatVersion, versionString];

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
        payload4cc = [v11 payload4cc];
        payloadVersion = [v11 payloadVersion];
        [v3 appendFormat:@"<Payload: %@, Version %@> ", payload4cc, payloadVersion, v16];
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
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v3 = [uUIDString hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == equalCopy)
    {
      v7 = 1;
    }

    else
    {
      uuid = self->_uuid;
      uuid = [(UARPSuperBinaryLayer3 *)equalCopy uuid];
      v7 = UARPLayer3MatchingUUIDs(uuid, uuid);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)payloadWith4cc:(id)with4cc
{
  with4ccCopy = with4cc;
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
        payload4cc = [v9 payload4cc];
        v11 = [payload4cc isEqual:with4ccCopy];

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
        tatsuRequest = [v9 tatsuRequest];

        if (tatsuRequest)
        {
          manifestLocation = [v9 manifestLocation];
          componentTag = [manifestLocation componentTag];

          tatsuRequest2 = [v9 tatsuRequest];
          if (componentTag)
          {
            manifestLocation2 = [v9 manifestLocation];
            componentTag2 = [manifestLocation2 componentTag];
            tagString = [componentTag2 tagString];
            [v3 setObject:tatsuRequest2 forKeyedSubscript:tagString];
          }

          else
          {
            [v3 setObject:tatsuRequest2 forKeyedSubscript:@"ROOT"];
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
        tatsuResponse = [v9 tatsuResponse];

        if (tatsuResponse)
        {
          manifestLocation = [v9 manifestLocation];
          componentTag = [manifestLocation componentTag];

          tatsuResponse2 = [v9 tatsuResponse];
          if (componentTag)
          {
            manifestLocation2 = [v9 manifestLocation];
            componentTag2 = [manifestLocation2 componentTag];
            tagString = [componentTag2 tagString];
            [v3 setObject:tatsuResponse2 forKeyedSubscript:tagString];
          }

          else
          {
            [v3 setObject:tatsuResponse2 forKeyedSubscript:@"ROOT"];
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

        generateTLV = [*(*(&v15 + 1) + 8 * v8) generateTLV];
        [v3 appendData:generateTLV];

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

- (id)containsTLV:(Class)v
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

- (id)addPayloadWith4cc:(id)with4cc payloadVersion:(id)version payloadIndex:(unint64_t)index
{
  with4ccCopy = with4cc;
  versionCopy = version;
  superbinaryURL = self->_superbinaryURL;
  if (superbinaryURL)
  {
    uRLByDeletingLastPathComponent = [(NSURL *)superbinaryURL URLByDeletingLastPathComponent];
  }

  else
  {
    uRLByDeletingLastPathComponent = 0;
  }

  v12 = [[UARPSuperBinaryPayloadLayer3 alloc] initWithPayload4cc:with4ccCopy payloadVersion:versionCopy payloadIndex:index baseURL:uRLByDeletingLastPathComponent];
  [(NSMutableArray *)self->_payloads addObject:v12];

  return v12;
}

- (void)removePayloadsWithMatchingTag:(id)tag
{
  tagCopy = tag;
  v4 = [(UARPSuperBinaryLayer3 *)self payloadWith4cc:?];
  if (v4)
  {
    v5 = v4;
    do
    {
      [(NSMutableArray *)self->_payloads removeObject:v5];
      v6 = [(UARPSuperBinaryLayer3 *)self payloadWith4cc:tagCopy];

      v5 = v6;
    }

    while (v6);
  }
}

- (id)payloadWithMatchingIndex:(unint64_t)index
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
        if ([v9 index] == index)
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
        manifestProperties = [v7 manifestProperties];
        v9 = [manifestProperties countByEnumeratingWithState:&v21 objects:v29 count:16];
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
                objc_enumerationMutation(manifestProperties);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              componentTag = [v13 componentTag];

              if (!componentTag)
              {
                propertyValue = [v13 propertyValue];

                if (!propertyValue)
                {
                  v16 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v13 infoProperty]);
                  [v3 addObject:v16];
                }
              }
            }

            v10 = [manifestProperties countByEnumeratingWithState:&v21 objects:v29 count:16];
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

- (id)requiredPersonalizationOptions:(id)options
{
  optionsCopy = options;
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
        manifestProperties = [v7 manifestProperties];
        v9 = [manifestProperties countByEnumeratingWithState:&v38 objects:v47 count:16];
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
                objc_enumerationMutation(manifestProperties);
              }

              v13 = *(*(&v38 + 1) + 8 * i);
              componentTag = [v13 componentTag];
              v15 = [componentTag isEqual:optionsCopy];

              if (v15)
              {
                propertyValue = [v13 propertyValue];

                if (!propertyValue)
                {
                  v17 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v13 infoProperty]);
                  [v5 addObject:v17];
                }
              }
            }

            v10 = [manifestProperties countByEnumeratingWithState:&v38 objects:v47 count:16];
          }

          while (v10);
        }

        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        ftabProperties = [v32 ftabProperties];
        v19 = [ftabProperties countByEnumeratingWithState:&v34 objects:v46 count:16];
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
                objc_enumerationMutation(ftabProperties);
              }

              v23 = *(*(&v34 + 1) + 8 * j);
              componentTag2 = [v23 componentTag];
              v25 = [componentTag2 isEqual:optionsCopy];

              if (v25)
              {
                v26 = +[NSNumber numberWithUnsignedLong:](NSNumber, "numberWithUnsignedLong:", [v23 infoProperty]);
                [v5 addObject:v26];
              }
            }

            v20 = [ftabProperties countByEnumeratingWithState:&v34 objects:v46 count:16];
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

- (void)personalizationStatePrepare:(id)prepare
{
  prepareCopy = prepare;
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

  v12 = [prepareCopy copy];
  tssServerURL = self->_tssServerURL;
  self->_tssServerURL = v12;
}

- (void)personalizationStatePrepare:(id)prepare endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  [(UARPSuperBinaryLayer3 *)self personalizationStatePrepare:prepare];
  layer3Endpoint = self->_layer3Endpoint;
  self->_layer3Endpoint = endpointCopy;
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

        tatsuResponse = [*(*(&v39 + 1) + 8 * i) tatsuResponse];

        if (tatsuResponse)
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
                tatsuResponse2 = [v14 tatsuResponse];
                ticketName = [v14 ticketName];
                v17 = [tatsuResponse2 objectForKeyedSubscript:ticketName];

                if (v17)
                {
                  manifestLocation = [v14 manifestLocation];
                  componentTag = [manifestLocation componentTag];

                  if (!componentTag)
                  {
                    goto LABEL_26;
                  }

                  manifestLocation2 = [v14 manifestLocation];
                  componentTag2 = [manifestLocation2 componentTag];
                  v22 = [(UARPSuperBinaryLayer3 *)self payloadWith4cc:componentTag2];

                  if (v22)
                  {
                    v23 = [v17 copy];
                    [v22 setManifest:v23];

                    manifestLocation3 = [v14 manifestLocation];
                    [v22 setManifestAsTLV:{objc_msgSend(manifestLocation3, "metaData")}];

                    if ([v22 manifestAsTLV])
                    {
                      v25 = v9;
                      manifest = [v22 manifest];
                      v27 = [manifest length];
                      manifest2 = [v22 manifest];
                      v29 = +[UARPMetaData tlvFromType:length:value:](UARPMetaData, "tlvFromType:length:value:", 2293403952, v27, [manifest2 bytes]);

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

- (BOOL)updateIncomingAssetProperties:(id)properties
{
  propertiesCopy = properties;
  v20 = 0uLL;
  uarpPlatformEndpointAssetQueryAssetVersion([propertiesCopy layer2Ctx], self->_layer2Context, &v20);
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
    if (uarpPlatformEndpointAssetQueryTag([propertiesCopy layer2Ctx], self->_layer2Context, &v19))
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
      if (uarpPlatformEndpointAssetQueryAssetLength([propertiesCopy layer2Ctx], self->_layer2Context, &v18))
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
        v14 = uarpPlatformEndpointAssetQueryNumberOfPayloads([propertiesCopy layer2Ctx], self->_layer2Context, &v17);
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

- (id)getDataBlock:(unint64_t)block offset:(unint64_t)offset
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

  if (assetLength <= offset)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100082DAC();
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  blockCopy = block;
  if (offset + block > assetLength)
  {
    blockCopy = assetLength - offset;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315906;
      v12 = "[UARPSuperBinaryLayer3 getDataBlock:offset:]";
      v13 = 1024;
      v14 = blockCopy;
      v15 = 1024;
      offsetCopy = offset;
      v17 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "%s: Can only provide %d bytes from offset %d of asset %@", &v11, 0x22u);
    }
  }

  if (self->_useFilesystem)
  {
    [(UARPSuperBinaryLayer3 *)self getDataRangeFromURL:offset, blockCopy];
  }

  else
  {
    [(UARPSuperBinaryLayer3 *)self getDataRangeFromData:offset, blockCopy];
  }
  v9 = ;
LABEL_14:

  return v9;
}

- (id)getDataRangeFromData:(_NSRange)data
{
  data = self->_data;
  if (data)
  {
    data = [data subdataWithRange:{data.location, data.length}];
    v3 = vars8;
  }

  return data;
}

- (id)getDataRangeFromURL:(_NSRange)l
{
  location = l.location;
  l.location = self->_superbinaryURL;
  if (l.location)
  {
    length = l.length;
    v31 = 0;
    v6 = [NSFileHandle fileHandleForReadingFromURL:l.location error:&v31];
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
            absoluteString = [(NSURL *)superbinaryURL absoluteString];
            v27 = [v11 description];
            *buf = 136316162;
            v33 = "[UARPSuperBinaryLayer3 getDataRangeFromURL:]";
            v34 = 2048;
            v35 = location;
            v36 = 2048;
            v37 = length;
            v38 = 2112;
            v39 = absoluteString;
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
          absoluteString2 = [(NSURL *)v20 absoluteString];
          v23 = [v9 description];
          *buf = 136316162;
          v33 = "[UARPSuperBinaryLayer3 getDataRangeFromURL:]";
          v34 = 2048;
          v35 = location;
          v36 = 2048;
          v37 = assetLength;
          v38 = 2112;
          v39 = absoluteString2;
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

    uUIDString = [(NSUUID *)self->_uuid UUIDString];
    [v6 addObject:uUIDString];

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
      absoluteString = [(NSURL *)v20 absoluteString];
      *buf = 136315394;
      v27 = "[UARPSuperBinaryLayer3 setupTemporaryFolder]";
      v28 = 2112;
      v29 = absoluteString;
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
    path = [(NSURL *)self->_url path];
    v5 = [v3 fileExistsAtPath:path];

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
        path2 = [(NSURL *)self->_superbinaryURL path];
        v33 = 0;
        v14 = [v12 setAttributes:v11 ofItemAtPath:path2 error:&v33];
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
          absoluteString = [(NSURL *)v18 absoluteString];
          absoluteString2 = [(NSURL *)self->_superbinaryURL absoluteString];
          *buf = 136315650;
          v38 = "[UARPSuperBinaryLayer3 setupTemporaryFolderForExpand]";
          v39 = 2112;
          v40 = absoluteString;
          v41 = 2112;
          v42 = absoluteString2;
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
          absoluteString3 = [(NSURL *)v28 absoluteString];
          absoluteString4 = [(NSURL *)self->_superbinaryURL absoluteString];
          v32 = [v9 description];
          *buf = 136315906;
          v38 = "[UARPSuperBinaryLayer3 setupTemporaryFolderForExpand]";
          v39 = 2112;
          v40 = absoluteString3;
          v41 = 2112;
          v42 = absoluteString4;
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
      absoluteString5 = [(NSURL *)v23 absoluteString];
      absoluteString6 = [(NSURL *)self->_superbinaryURL absoluteString];
      *buf = 136315650;
      v38 = "[UARPSuperBinaryLayer3 setupTemporaryFolderForExpand]";
      v39 = 2112;
      v40 = absoluteString5;
      v41 = 2112;
      v42 = absoluteString6;
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

- (BOOL)expandPropertyListTLVs:(id)vs
{
  v4 = [vs objectForKeyedSubscript:@"SuperBinary MetaData"];
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

- (BOOL)expandPropertyListPayloads:(id)payloads
{
  v4 = [payloads objectForKeyedSubscript:@"SuperBinary Payloads"];
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

- (BOOL)expandPropertyListPayload:(id)payload payloadIndex:(unint64_t)index
{
  payloadCopy = payload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [[UARPSuperBinaryPayloadLayer3 alloc] initWithPayloadDictionary:payloadCopy payloadsURL:self->_payloadsURL payloadIndex:index useFilesystem:self->_useFilesystem];
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
  expandSuperBinaryHeader = [(UARPSuperBinaryLayer3 *)self expandSuperBinaryHeader];
  if (expandSuperBinaryHeader)
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

  return expandSuperBinaryHeader;
}

- (void)expandSuperBinaryMetaData:(unint64_t)data offset:(unint64_t)offset
{
  v5 = [(UARPSuperBinaryLayer3 *)self getDataBlock:data offset:offset];
  metaData = self->_metaData;
  self->_metaData = v5;

  v7 = UARPSuperBinaryProcessMetaData(self->_metaData, self->_log);
  [(NSMutableArray *)self->_tlvs addObjectsFromArray:v7];
}

- (void)expandPayloadHeadersAndMetaData:(unint64_t)data offset:(unint64_t)offset
{
  v5 = data / 0x28;
  if (data % 0x28)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000837AC();
    }
  }

  else
  {
    v7 = [UARPSuperBinaryLayer3 getDataBlock:"getDataBlock:offset:" offset:?];
    bytes = [v7 bytes];
    if (data >= 0x28)
    {
      v9 = bytes;
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

- (id)expandPayloadWithHeader:(UARPPayloadHeader2 *)header payloadIndex:(unint64_t)index
{
  if (header->payloadHeaderLength == 40)
  {
    v7 = [[UARPComponentTag alloc] initWithChar1:header->payloadTag.char1 char2:header->payloadTag.char2 char3:header->payloadTag.char3 char4:header->payloadTag.char4];
    v8 = [[UARPComponentVersion alloc] initWithMajorVersion:header->payloadVersion.major minorVersion:header->payloadVersion.minor releaseVersion:header->payloadVersion.release buildVersion:header->payloadVersion.build];
    payloadMetadataLength = header->payloadMetadataLength;
    if (payloadMetadataLength)
    {
      v10 = [(UARPSuperBinaryLayer3 *)self getDataBlock:payloadMetadataLength offset:header->payloadMetadataOffset];
    }

    else
    {
      v10 = 0;
    }

    if (self->_useFilesystem)
    {
      [(UARPSuperBinaryLayer3 *)self expandPayloadWithHeaderAsURL:header payloadIndex:index payload4cc:v7 payloadVersion:v8 payloadMetaData:v10];
    }

    else
    {
      [(UARPSuperBinaryLayer3 *)self expandPayloadWithHeaderAsData:header payloadIndex:index payload4cc:v7 payloadVersion:v8 payloadMetaData:v10];
    }
    v11 = ;
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000838F8(header);
    }

    v11 = 0;
  }

  return v11;
}

- (id)expandPayloadWithHeaderAsData:(UARPPayloadHeader2 *)data payloadIndex:(unint64_t)index payload4cc:(id)payload4cc payloadVersion:(id)version payloadMetaData:(id)metaData
{
  payload4ccCopy = payload4cc;
  versionCopy = version;
  metaDataCopy = metaData;
  if (self->_data)
  {
    v15 = [(UARPSuperBinaryLayer3 *)self getDataBlock:data->payloadLength offset:data->payloadOffset];
    v16 = [[UARPSuperBinaryPayloadLayer3 alloc] initWithPayloadData:v15 payloadMetaData:metaDataCopy payload4cc:payload4ccCopy payloadVersion:versionCopy payloadIndex:index];
    [(UARPSuperBinaryPayloadLayer3 *)v16 setPayloadHeader:data];
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

- (id)expandPayloadWithHeaderAsURL:(UARPPayloadHeader2 *)l payloadIndex:(unint64_t)index payload4cc:(id)payload4cc payloadVersion:(id)version payloadMetaData:(id)data
{
  payload4ccCopy = payload4cc;
  versionCopy = version;
  dataCopy = data;
  if (self->_superbinaryURL)
  {
    index = [NSString stringWithFormat:@"payload.%lu", index];
    uRLByDeletingLastPathComponent = [(NSURL *)self->_superbinaryURL URLByDeletingLastPathComponent];
    v17 = [NSURL fileURLWithPath:index isDirectory:0 relativeToURL:uRLByDeletingLastPathComponent];

    v35 = 0;
    v18 = [(UARPSuperBinaryLayer3 *)self cleanFileHandleForWriting:v17 error:&v35];
    v32 = v35;
    if (v18)
    {
      v28 = index;
      v29 = versionCopy;
      v30 = payload4ccCopy;
      lCopy = l;
      payloadLength = l->payloadLength;
      if (payloadLength)
      {
        payloadOffset = l->payloadOffset;
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
      if (dataCopy)
      {
        v24 = UARPSuperBinaryProcessMetaData(dataCopy, self->_log);
      }

      else
      {
        v24 = 0;
      }

      versionCopy = v29;
      payload4ccCopy = v30;
      index = v28;
      v25 = [[UARPSuperBinaryPayloadLayer3 alloc] initWithPayloadURL:v17 payloadTlvs:v24 payload4cc:v30 payloadVersion:v29 payloadIndex:index];
      [(UARPSuperBinaryPayloadLayer3 *)v25 setPayloadHeader:lCopy];
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

- (BOOL)processPersonalizationTickets:(id)tickets
{
  v4 = [tickets objectForKeyedSubscript:@"Personalization Tickets"];
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
      generateTLV = [(UARPMetaData *)v8 generateTLV];
      v10 = [[UARPComponentTag alloc] initWithString:@"PMAP"];
      v11 = [[UARPComponentVersion alloc] initWithVersionString:@"0.0.0.0"];
      v12 = [[UARPSuperBinaryPayloadLayer3 alloc] initWithPayloadData:v6 payloadMetaData:generateTLV payload4cc:v10 payloadVersion:v11 payloadIndex:[(NSMutableArray *)self->_payloads count]];
      [(UARPSuperBinaryLayer3 *)self addPayload:v12];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)processDeploymentRules:(id)rules
{
  v4 = [rules objectForKeyedSubscript:@"Deployment Rules"];
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
        percentageRules = [(UARPDeploymentRules *)v5 percentageRules];
        [(NSMutableArray *)tlvs addObjectsFromArray:percentageRules];

        v10 = self->_tlvs;
        countryRules = [(UARPDeploymentRules *)v6 countryRules];
        [(NSMutableArray *)v10 addObjectsFromArray:countryRules];
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

- (void)processPMAP:(id)p
{
  pCopy = p;
  v5 = objc_autoreleasePoolPush();
  payloadData = [pCopy payloadData];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [NSSet setWithObjects:v7, v8, v9, v10, objc_opt_class(), 0];
  v12 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v11 fromData:payloadData error:0];
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
      v22 = payloadData;
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
            payloadData = v22;
            goto LABEL_13;
          }

          v21 = v20;
          [(NSMutableArray *)self->_tatsuTickets addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v24 objects:v28 count:16];
        payloadData = v22;
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

- (BOOL)writeToURL:(id)l excludeTags:(id)tags error:(id *)error
{
  lCopy = l;
  tagsCopy = tags;
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = [(UARPSuperBinaryLayer3 *)self prepareComposedComponents:v10 excludingTags:tagsCopy allHeaders:v11 allMetaData:v12 error:error];

  if (v13)
  {
    v14 = [(UARPSuperBinaryLayer3 *)self cleanFileHandleForWriting:lCopy error:error];
    if (v14)
    {
      v15 = [(UARPSuperBinaryLayer3 *)self writeToFileHandle:v14 includedPayloads:v10 allHeaders:v11 allMetaData:v12 error:error];
      v16 = [v14 closeAndReturnError:error] & v15;
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

- (BOOL)writeToFileHandle:(id)handle includedPayloads:(id)payloads allHeaders:(id)headers allMetaData:(id)data error:(id *)error
{
  handleCopy = handle;
  payloadsCopy = payloads;
  dataCopy = data;
  if ([handleCopy writeData:headers error:error] && objc_msgSend(handleCopy, "writeData:error:", dataCopy, error))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v15 = payloadsCopy;
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

          if (![*(*(&v23 + 1) + 8 * i) writeComposedPayloadToFile:handleCopy error:{error, v23}])
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
    v20 = [NSKeyedArchiver archivedDataWithRootObject:v15 requiringSecureCoding:0 error:error];
    v21 = [handleCopy writeData:v20 error:error];

LABEL_14:
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)composeToDataExcludingTags:(id)tags error:(id *)error
{
  tagsCopy = tags;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  v9 = objc_opt_new();
  if ([(UARPSuperBinaryLayer3 *)self prepareComposedComponents:v7 excludingTags:tagsCopy allHeaders:v8 allMetaData:v9 error:error])
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

          payloadData = [*(*(&v20 + 1) + 8 * i) payloadData];
          if (!payloadData)
          {

            v18 = 0;
            goto LABEL_13;
          }

          v17 = payloadData;
          [v10 appendData:payloadData];
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

- (BOOL)prepareComposedComponents:(id)components excludingTags:(id)tags allHeaders:(id)headers allMetaData:(id)data error:(id *)error
{
  componentsCopy = components;
  tagsCopy = tags;
  headersCopy = headers;
  dataCopy = data;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  selfCopy = self;
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
        v16 = tagsCopy;
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
              payload4cc = [v15 payload4cc];
              LOBYTE(v21) = [payload4cc isEqual:v21];

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

        [componentsCopy addObject:v15];
LABEL_16:
        ;
      }

      v12 = [(NSMutableArray *)obj countByEnumeratingWithState:&v106 objects:v117 count:16];
    }

    while (v12);
  }

  formatVersion = selfCopy->_formatVersion;
  v91 = formatVersion;
  v92 = 44;
  majorVersion = [(UARPComponentVersion *)selfCopy->_assetVersion majorVersion];
  v94 = majorVersion;
  minorVersion = [(UARPComponentVersion *)selfCopy->_assetVersion minorVersion];
  v95 = minorVersion;
  releaseVersion = [(UARPComponentVersion *)selfCopy->_assetVersion releaseVersion];
  v96 = releaseVersion;
  buildVersion = [(UARPComponentVersion *)selfCopy->_assetVersion buildVersion];
  v97 = buildVersion;
  v100 = 44;
  v23 = 40 * [componentsCopy count];
  v101 = v23;
  v24 = v23 + 44;
  v25 = malloc(v23);
  obja = v23;
  bzero(v25, v23);
  composeMetaData = [(UARPSuperBinaryLayer3 *)selfCopy composeMetaData];
  v98 = v24;
  v27 = [composeMetaData length];
  v68 = v24;
  v28 = v24 + v27;
  v67 = v27;
  v99 = v27;
  v93 = v24 + v27;
  v74 = composeMetaData;
  [dataCopy appendData:composeMetaData];
  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v29 = componentsCopy;
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
        composeMetaData2 = [v34 composeMetaData];
        *v25 = 40;
        payload4cc2 = [v34 payload4cc];
        *(v25 + 4) = [payload4cc2 char1];

        payload4cc3 = [v34 payload4cc];
        *(v25 + 5) = [payload4cc3 char2];

        payload4cc4 = [v34 payload4cc];
        *(v25 + 6) = [payload4cc4 char3];

        payload4cc5 = [v34 payload4cc];
        *(v25 + 7) = [payload4cc5 char4];

        payloadVersion = [v34 payloadVersion];
        v25[2] = [payloadVersion majorVersion];

        payloadVersion2 = [v34 payloadVersion];
        v25[3] = [payloadVersion2 minorVersion];

        payloadVersion3 = [v34 payloadVersion];
        v25[4] = [payloadVersion3 releaseVersion];

        payloadVersion4 = [v34 payloadVersion];
        v25[5] = [payloadVersion4 buildVersion];

        v25[6] = v28;
        v44 = [composeMetaData2 length];
        v25[7] = v44;
        v28 += v44;
        v93 = v28;
        if (composeMetaData2)
        {
          [dataCopy appendData:composeMetaData2];
        }

        v25 += 10;
      }

      v31 = [v29 countByEnumeratingWithState:&v87 objects:v115 count:16];
    }

    while (v31);
  }

  log = selfCopy->_log;
  v46 = dataCopy;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v47 = log;
    v48 = [dataCopy length];
    *buf = 136315394;
    v112 = "[UARPSuperBinaryLayer3 prepareComposedComponents:excludingTags:allHeaders:allMetaData:error:]";
    v113 = 2048;
    v114 = v48;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "%s: metadata length is %lu", buf, 0x16u);
  }

  if (([dataCopy length] & 0x3FF) != 0)
  {
    v49 = [dataCopy length] & 0x3FF;
    v28 += 1024 - v49;
    v93 = v28;
    v50 = selfCopy->_log;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v112 = "[UARPSuperBinaryLayer3 prepareComposedComponents:excludingTags:allHeaders:allMetaData:error:]";
      v113 = 2048;
      v114 = 1024 - v49;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_INFO, "%s: metadata padding is %lu", buf, 0x16u);
    }

    v51 = *&v49 | 0xFFFFFFFFFFFFFC00;
    v46 = dataCopy;
    do
    {
      buf[0] = 0;
      [dataCopy appendBytes:buf length:1];
    }

    while (!__CFADD__(v51++, 1));
  }

  v53 = selfCopy->_log;
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
        composedPayloadLength = [v62 composedPayloadLength];
        v60[9] = composedPayloadLength;
        v28 += composedPayloadLength;
        v60 += 10;
      }

      v58 = [v56 countByEnumeratingWithState:&v83 objects:v110 count:16];
    }

    while (v58);
  }

  v91 = uarpHtonl(formatVersion);
  v92 = uarpHtonl(0x2Cu);
  v93 = uarpHtonl(v28);
  v94 = uarpHtonl(majorVersion);
  v95 = uarpHtonl(minorVersion);
  v97 = uarpHtonl(buildVersion);
  v96 = uarpHtonl(releaseVersion);
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

  [headersCopy appendBytes:&v91 length:44];
  [headersCopy appendBytes:v75 length:obja];
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