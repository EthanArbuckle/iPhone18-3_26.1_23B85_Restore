@interface UARPSuperBinaryPayloadLayer3
- (BOOL)composePayload;
- (BOOL)composePersonalizedFTAB;
- (BOOL)composePersonalizedPayload;
- (BOOL)compressPayload;
- (BOOL)decompressPayload;
- (BOOL)expandPayloadDictionary:(id)dictionary;
- (BOOL)expandPayloadDictionaryData:(id)data;
- (BOOL)expandPayloadDictionaryKeyValuePayload;
- (BOOL)expandPayloadDictionaryPropertyListPayload:(id)payload;
- (BOOL)expandPayloadDictionaryTLVs:(id)vs;
- (BOOL)isFTAB;
- (BOOL)isPropertyListPayload;
- (BOOL)setCompressedDataBlock:(id)block offset:(unint64_t)offset;
- (BOOL)setDataBlock:(id)block offset:(unint64_t)offset;
- (BOOL)setDataBlockToURL:(id)l offset:(unint64_t)offset url:(id)url;
- (BOOL)writeComposedPayloadDataToFile:(id)file error:(id *)error;
- (BOOL)writeComposedPayloadToFile:(id)file error:(id *)error;
- (BOOL)writeComposedPayloadURLToFile:(id)file error:(id *)error;
- (UARPSuperBinaryPayloadLayer3)init;
- (UARPSuperBinaryPayloadLayer3)initWithPayload4cc:(id)payload4cc payloadVersion:(id)version payloadIndex:(unint64_t)index baseURL:(id)l;
- (UARPSuperBinaryPayloadLayer3)initWithPayloadData:(id)data payloadMetaData:(id)metaData payload4cc:(id)payload4cc payloadVersion:(id)version payloadIndex:(unint64_t)index;
- (UARPSuperBinaryPayloadLayer3)initWithPayloadDictionary:(id)dictionary payloadsURL:(id)l payloadIndex:(unint64_t)index useFilesystem:(BOOL)filesystem;
- (UARPSuperBinaryPayloadLayer3)initWithPayloadURL:(id)l payloadTlvs:(id)tlvs payload4cc:(id)payload4cc payloadVersion:(id)version payloadIndex:(unint64_t)index;
- (id)composeMetaData;
- (id)containsTLV:(Class)v;
- (id)description;
- (id)descriptionOfHeader;
- (id)ftabDescription;
- (id)generateHash:(int64_t)hash ftabSubfile:(id)subfile;
- (id)generatePayloadHash:(int64_t)hash;
- (id)getDataBlock:(unint64_t)block offset:(unint64_t)offset;
- (id)getDataRangeFromData:(_NSRange)data;
- (id)getDataRangeFromURL:(_NSRange)l;
- (id)payloadData;
- (id)payloadDataAsData;
- (id)payloadDataAsURL;
- (id)personalizedData;
- (id)preparePersonalizedURL;
- (id)setDataBlockToData:(id)data offset:(unint64_t)offset payloadData:(id)payloadData;
- (int64_t)determinePayloadHashAlgorithm;
- (unint64_t)payloadLength;
- (void)addTLV:(id)v;
- (void)addTLVs:(id)vs;
- (void)cachePayloadData;
- (void)hashPayload;
- (void)removeTLV:(id)v;
- (void)setPayloadData:(id)data;
- (void)setPayloadHeader:(UARPPayloadHeader2 *)header;
- (void)setPayloadURL:(id)l;
@end

@implementation UARPSuperBinaryPayloadLayer3

- (UARPSuperBinaryPayloadLayer3)init
{
  v8.receiver = self;
  v8.super_class = UARPSuperBinaryPayloadLayer3;
  v2 = [(UARPSuperBinaryPayloadLayer3 *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    tlvs = v2->_tlvs;
    v2->_tlvs = v3;

    v5 = os_log_create("com.apple.uarp.layer3", "superbinaryAsset");
    log = v2->_log;
    v2->_log = v5;
  }

  return v2;
}

- (UARPSuperBinaryPayloadLayer3)initWithPayloadData:(id)data payloadMetaData:(id)metaData payload4cc:(id)payload4cc payloadVersion:(id)version payloadIndex:(unint64_t)index
{
  dataCopy = data;
  metaDataCopy = metaData;
  payload4ccCopy = payload4cc;
  versionCopy = version;
  v16 = [(UARPSuperBinaryPayloadLayer3 *)self init];
  if (!v16)
  {
    goto LABEL_11;
  }

  if (dataCopy)
  {
    v17 = [dataCopy copy];
    payloadDataInternal = v16->_payloadDataInternal;
    v16->_payloadDataInternal = v17;
  }

  if (metaDataCopy)
  {
    v19 = [metaDataCopy copy];
    metaData = v16->_metaData;
    v16->_metaData = v19;

    v21 = UARPSuperBinaryProcessMetaData(metaDataCopy, v16->_log);
    v22 = [NSMutableArray arrayWithArray:v21];
    tlvs = v16->_tlvs;
    v16->_tlvs = v22;

    v16->_isFTABPayload = [(UARPSuperBinaryPayloadLayer3 *)v16 isFTAB];
  }

  else
  {
    v24 = objc_opt_new();
    v21 = v16->_metaData;
    v16->_metaData = v24;
  }

  v25 = [payload4ccCopy copy];
  payload4cc = v16->_payload4cc;
  v16->_payload4cc = v25;

  v27 = [versionCopy copy];
  payloadVersion = v16->_payloadVersion;
  v16->_payloadVersion = v27;

  v16->_index = index;
  if (![(UARPSuperBinaryPayloadLayer3 *)v16 decompressPayload])
  {
    log = v16->_log;
    if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
LABEL_15:
      v31 = 0;
      goto LABEL_16;
    }

    v33 = v16->_payload4cc;
    index = v16->_index;
    v39 = 136315650;
    v40 = "[UARPSuperBinaryPayloadLayer3 initWithPayloadData:payloadMetaData:payload4cc:payloadVersion:payloadIndex:]";
    v41 = 2112;
    v42 = v33;
    v43 = 2048;
    indexCopy = index;
    v35 = "%s: could not decompress payload %@, index %lu";
LABEL_14:
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, v35, &v39, 0x20u);
    goto LABEL_15;
  }

  if (v16->_isFTABPayload)
  {
    if (v16->_payloadDataInternal)
    {
      v29 = [[UARPRTKitFTAB alloc] initWithData:v16->_payloadDataInternal];
      ftab = v16->_ftab;
      v16->_ftab = v29;

      if (![(UARPRTKitFTAB *)v16->_ftab expandFileTable:0])
      {
        log = v16->_log;
        if (!os_log_type_enabled(log, OS_LOG_TYPE_INFO))
        {
          goto LABEL_15;
        }

        v37 = v16->_payload4cc;
        v38 = v16->_index;
        v39 = 136315650;
        v40 = "[UARPSuperBinaryPayloadLayer3 initWithPayloadData:payloadMetaData:payload4cc:payloadVersion:payloadIndex:]";
        v41 = 2112;
        v42 = v37;
        v43 = 2048;
        indexCopy = v38;
        v35 = "%s: could not expand FTAB for payload %@, index %lu";
        goto LABEL_14;
      }
    }
  }

LABEL_11:
  v31 = v16;
LABEL_16:

  return v31;
}

- (UARPSuperBinaryPayloadLayer3)initWithPayloadURL:(id)l payloadTlvs:(id)tlvs payload4cc:(id)payload4cc payloadVersion:(id)version payloadIndex:(unint64_t)index
{
  lCopy = l;
  tlvsCopy = tlvs;
  payload4ccCopy = payload4cc;
  versionCopy = version;
  v16 = [(UARPSuperBinaryPayloadLayer3 *)self init];
  if (!v16)
  {
    goto LABEL_17;
  }

  v40 = lCopy;
  v17 = [lCopy copy];
  payloadURL = v16->_payloadURL;
  v16->_payloadURL = v17;

  v16->_useFilesystem = 1;
  log = v16->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v20 = v16->_payloadURL;
    v21 = log;
    path = [(NSURL *)v20 path];
    *buf = 136315650;
    v47 = "[UARPSuperBinaryPayloadLayer3 initWithPayloadURL:payloadTlvs:payload4cc:payloadVersion:payloadIndex:]";
    v48 = 2048;
    indexCopy = index;
    v50 = 2112;
    v51 = path;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "%s: setting up payload %lu with file %@", buf, 0x20u);
  }

  index = [NSMutableArray arrayWithArray:tlvsCopy, index];
  tlvs = v16->_tlvs;
  v16->_tlvs = index;

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v25 = v16->_tlvs;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v42;
    while (2)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v42 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v41 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16->_isFTABPayload = [v30 isFTABPayload] != 0;
          goto LABEL_14;
        }
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v41 objects:v45 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  lCopy = v40;
  if (!v16->_isFTABPayload || (v31 = [[UARPRTKitFTAB alloc] initWithURL:v16->_payloadURL], ftab = v16->_ftab, v16->_ftab = v31, ftab, v33 = 0, [(UARPRTKitFTAB *)v16->_ftab expandFileTable:0]))
  {
    v34 = [payload4ccCopy copy];
    payload4cc = v16->_payload4cc;
    v16->_payload4cc = v34;

    v36 = [versionCopy copy];
    payloadVersion = v16->_payloadVersion;
    v16->_payloadVersion = v36;

    v16->_index = v39;
LABEL_17:
    v33 = v16;
  }

  return v33;
}

- (UARPSuperBinaryPayloadLayer3)initWithPayloadDictionary:(id)dictionary payloadsURL:(id)l payloadIndex:(unint64_t)index useFilesystem:(BOOL)filesystem
{
  dictionaryCopy = dictionary;
  lCopy = l;
  v12 = [(UARPSuperBinaryPayloadLayer3 *)self init];
  v13 = v12;
  if (v12 && (v12->_index = index, v14 = [lCopy copy], payloadsURL = v13->_payloadsURL, v13->_payloadsURL = v14, payloadsURL, v13->_useFilesystem = filesystem, !-[UARPSuperBinaryPayloadLayer3 expandPayloadDictionary:](v13, "expandPayloadDictionary:", dictionaryCopy)))
  {
    v16 = 0;
  }

  else
  {
    v16 = v13;
  }

  return v16;
}

- (UARPSuperBinaryPayloadLayer3)initWithPayload4cc:(id)payload4cc payloadVersion:(id)version payloadIndex:(unint64_t)index baseURL:(id)l
{
  payload4ccCopy = payload4cc;
  versionCopy = version;
  lCopy = l;
  v13 = [(UARPSuperBinaryPayloadLayer3 *)self init];
  if (!v13)
  {
    goto LABEL_13;
  }

  if (lCopy)
  {
    index = [NSString stringWithFormat:@"payload.%lu", index];
    v15 = [NSURL fileURLWithPath:index isDirectory:0 relativeToURL:lCopy];
    payloadURL = v13->_payloadURL;
    v13->_payloadURL = v15;

    v17 = v13->_payloadURL;
    v30 = 0;
    v18 = [(UARPSuperBinaryPayloadLayer3 *)v13 cleanFileHandleForWriting:v17 error:&v30];
    v19 = v30;
    if (v18)
    {
      v29 = 0;
      v20 = [v18 closeAndReturnError:&v29];
      v21 = v29;
      v22 = v21;
      if (v20)
      {

        goto LABEL_6;
      }

      if (os_log_type_enabled(v13->_log, OS_LOG_TYPE_ERROR))
      {
        sub_1000858C0();
      }
    }

    else if (os_log_type_enabled(v13->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10008593C();
    }

LABEL_13:
    v27 = 0;
    goto LABEL_14;
  }

LABEL_6:
  v23 = [payload4ccCopy copy];
  payload4cc = v13->_payload4cc;
  v13->_payload4cc = v23;

  v25 = [versionCopy copy];
  payloadVersion = v13->_payloadVersion;
  v13->_payloadVersion = v25;

  v13->_index = index;
  v13->_useFilesystem = 1;
  v27 = v13;
LABEL_14:

  return v27;
}

- (void)setPayloadHeader:(UARPPayloadHeader2 *)header
{
  v3 = *&header->payloadHeaderLength;
  v4 = *&header->payloadVersion.release;
  *&self->_layer2PayloadHeader.payloadOffset = *&header->payloadOffset;
  *&self->_layer2PayloadHeader.payloadVersion.release = v4;
  *&self->_layer2PayloadHeader.payloadHeaderLength = v3;
}

- (id)description
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"Payload - 4cc <%@> - Version <%@> - TLVs - %@", self->_payload4cc, self->_payloadVersion, self->_tlvs];
  v4 = [NSString stringWithString:v3];

  return v4;
}

- (id)descriptionOfHeader
{
  v3 = objc_opt_new();
  [v3 appendString:@"----------------------------\n"];
  [v3 appendString:@"Payload Header\n"];
  [v3 appendString:@"----------------------------\n"];
  [v3 appendFormat:@"Header Length           : %lu\n", self->_layer2PayloadHeader.payloadHeaderLength];
  [v3 appendFormat:@"Payload Tag             : %c%c%c%c\n", self->_layer2PayloadHeader.payloadTag.char1, self->_layer2PayloadHeader.payloadTag.char2, self->_layer2PayloadHeader.payloadTag.char3, self->_layer2PayloadHeader.payloadTag.char4];
  [v3 appendFormat:@"Payload Version         : %lu.%lu.%lu.%lu\n", self->_layer2PayloadHeader.payloadVersion.major, self->_layer2PayloadHeader.payloadVersion.minor, self->_layer2PayloadHeader.payloadVersion.release, self->_layer2PayloadHeader.payloadVersion.build];
  [v3 appendFormat:@"Payload MetaData Offset : %lu\n", self->_layer2PayloadHeader.payloadMetadataOffset];
  [v3 appendFormat:@"Payload MetaData Length : %lu\n", self->_layer2PayloadHeader.payloadMetadataLength];
  [v3 appendFormat:@"Payload Data Offset     : %lu\n", self->_layer2PayloadHeader.payloadOffset];
  [v3 appendFormat:@"Payload Data Length     : %lu\n", self->_layer2PayloadHeader.payloadLength];
  v4 = [NSString stringWithString:v3];

  return v4;
}

- (id)ftabDescription
{
  v3 = objc_opt_new();
  [v3 appendFormat:@"%@\n", self->_ftab];
  v4 = [NSString stringWithString:v3];

  return v4;
}

- (BOOL)composePayload
{
  if (self->_manifest)
  {
    if (self->_isFTABPayload)
    {
      ftab = self->_ftab;
      if (ftab)
      {
        if (!self->_manifestAsTLV)
        {
          [(UARPRTKitFTAB *)ftab setManifest:?];
        }

        if (self->_ftabGeneration)
        {
          [(UARPRTKitFTAB *)self->_ftab setGeneration:?];
        }

        if (self->_nonceSeed)
        {
          [(UARPRTKitFTAB *)self->_ftab setBootNonce:?];
        }

        if (self->_payloadURL)
        {
          v4 = [NSString stringWithFormat:@"personalizedPayload.%lu", self->_index];
          uRLByDeletingLastPathComponent = [(NSURL *)self->_payloadURL URLByDeletingLastPathComponent];
          v6 = [NSURL fileURLWithPath:v4 isDirectory:0 relativeToURL:uRLByDeletingLastPathComponent];

          v13 = 0;
          v7 = [(UARPSuperBinaryPayloadLayer3 *)self cleanFileHandleForWriting:v6 error:&v13];
          v8 = v13;
          if (v7)
          {
            if ([(UARPRTKitFTAB *)self->_ftab writeToURL:v6])
            {
              objc_storeStrong(&self->_payloadURL, v6);
              v9 = [[UARPRTKitFTAB alloc] initWithURL:self->_payloadURL];
              v10 = self->_ftab;
              self->_ftab = v9;

              v11 = [(UARPRTKitFTAB *)self->_ftab expandFileTable:0];
LABEL_21:

              return v11;
            }

            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              sub_1000859B8();
            }
          }

          else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_100085A34();
          }

          v11 = 0;
          goto LABEL_21;
        }
      }
    }
  }

  return 1;
}

- (id)payloadData
{
  if (self->_useFilesystem)
  {
    [(UARPSuperBinaryPayloadLayer3 *)self payloadDataAsURL];
  }

  else
  {
    [(UARPSuperBinaryPayloadLayer3 *)self payloadDataAsData];
  }
  v2 = ;

  return v2;
}

- (id)payloadDataAsURL
{
  if (self->_payloadURL)
  {
    v3 = [NSData dataWithContentsOfURL:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)payloadDataAsData
{
  payloadDataInternal = self->_payloadDataInternal;
  if (payloadDataInternal)
  {
    payloadDataInternal = [(NSData *)payloadDataInternal copy];
    v2 = vars8;
  }

  return payloadDataInternal;
}

- (void)setPayloadData:(id)data
{
  v4 = [data copy];
  payloadDataInternal = self->_payloadDataInternal;
  self->_payloadDataInternal = v4;

  _objc_release_x1();
}

- (id)composeMetaData
{
  [(UARPSuperBinaryPayloadLayer3 *)self prepareComposeMetaData];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_tlvs;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        generateTLV = [*(*(&v13 + 1) + 8 * v8) generateTLV];
        [(NSMutableData *)v3 appendData:generateTLV];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  composedMetaData = self->_composedMetaData;
  self->_composedMetaData = v3;

  composedMetaData = [(UARPSuperBinaryPayloadLayer3 *)self composedMetaData];

  return composedMetaData;
}

- (void)hashPayload
{
  determinePayloadHashAlgorithm = [(UARPSuperBinaryPayloadLayer3 *)self determinePayloadHashAlgorithm];
  v4 = [[UARPMetaDataDevicePayloadHashAlgorithm alloc] initWithHashAlgorithm:determinePayloadHashAlgorithm];
  if (v4)
  {
    v7 = v4;
    v5 = [(UARPSuperBinaryPayloadLayer3 *)self generatePayloadHash:determinePayloadHashAlgorithm];
    if (v5)
    {
      v6 = [[UARPMetaDataDevicePayloadHash alloc] initWithPayloadHash:v5];
      if (v6)
      {
        [(UARPSuperBinaryPayloadLayer3 *)self addTLV:v7];
        [(UARPSuperBinaryPayloadLayer3 *)self addTLV:v6];
      }
    }

    v4 = v7;
  }
}

- (int64_t)determinePayloadHashAlgorithm
{
  v3 = [(UARPSuperBinaryPayloadLayer3 *)self containsTLV:objc_opt_class()];
  if (v3)
  {
    [(UARPSuperBinaryPayloadLayer3 *)self removeTLV:v3];
  }

  v4 = [(UARPSuperBinaryPayloadLayer3 *)self containsTLV:objc_opt_class()];
  if (v4)
  {
    [(UARPSuperBinaryPayloadLayer3 *)self removeTLV:v4];
    hashAlgorithm = [v4 hashAlgorithm];
  }

  else
  {
    v6 = [(UARPSuperBinaryPayloadLayer3 *)self containsTLV:objc_opt_class()];
    if (v6)
    {
      [(UARPSuperBinaryPayloadLayer3 *)self removeTLV:v6];
      hashAlgorithm = [v6 hashAlgorithm];
    }

    else
    {
      hashAlgorithm = 0;
    }
  }

  return hashAlgorithm;
}

- (void)addTLV:(id)v
{
  if (v)
  {
    [(NSMutableArray *)self->_tlvs addObject:?];
  }
}

- (void)addTLVs:(id)vs
{
  if (vs)
  {
    [(NSMutableArray *)self->_tlvs addObjectsFromArray:?];
  }
}

- (void)removeTLV:(id)v
{
  if (v)
  {
    [(NSMutableArray *)self->_tlvs removeObject:?];
  }
}

- (BOOL)isPropertyListPayload
{
  v2 = [(UARPSuperBinaryPayloadLayer3 *)self containsTLV:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isPropertyList] > 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isFTAB
{
  v2 = [(UARPSuperBinaryPayloadLayer3 *)self containsTLV:objc_opt_class()];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isFTABPayload] == 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
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

- (id)generatePayloadHash:(int64_t)hash
{
  v4 = [[UARPHashMachine alloc] initWithAlgorithm:hash];
  if (v4)
  {
    v5 = [(UARPSuperBinaryPayloadLayer3 *)self containsTLV:objc_opt_class()];
    if (v5)
    {
      hashValue = self->_uncompressedHash;
LABEL_4:
      v7 = hashValue;
    }

    else
    {
      v8 = 0;
      while (v8 < [(UARPSuperBinaryPayloadLayer3 *)self payloadLength])
      {
        payloadLength = v8 + 1024;
        if (v8 + 1024 <= [(UARPSuperBinaryPayloadLayer3 *)self payloadLength])
        {
          v10 = 1024;
        }

        else
        {
          payloadLength = [(UARPSuperBinaryPayloadLayer3 *)self payloadLength];
          v10 = payloadLength - v8;
        }

        v11 = objc_autoreleasePoolPush();
        v12 = [(UARPSuperBinaryPayloadLayer3 *)self getDataBlock:v10 offset:v8];
        v13 = [(UARPHashMachine *)v4 updateHash:v12];

        objc_autoreleasePoolPop(v11);
        v8 = payloadLength;
        if ((v13 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if ([(UARPHashMachine *)v4 finalizeHash])
      {
        hashValue = [(UARPHashMachine *)v4 hashValue];
        goto LABEL_4;
      }

LABEL_15:
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)generateHash:(int64_t)hash ftabSubfile:(id)subfile
{
  subfileCopy = subfile;
  if (!subfileCopy)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100085BB0();
    }

    goto LABEL_9;
  }

  ftab = self->_ftab;
  if (!ftab)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100085B30();
    }

LABEL_9:
    v10 = 0;
    goto LABEL_14;
  }

  v8 = [(UARPRTKitFTAB *)ftab subfileWithTag:subfileCopy];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 generateHash:hash];
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100085AB0(self);
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (id)getDataBlock:(unint64_t)block offset:(unint64_t)offset
{
  if (![(UARPSuperBinaryPayloadLayer3 *)self payloadLength])
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100085CEC();
    }

    goto LABEL_13;
  }

  if ([(UARPSuperBinaryPayloadLayer3 *)self payloadLength]<= offset)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_100085C30(offset, log, self);
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (offset + block > [(UARPSuperBinaryPayloadLayer3 *)self payloadLength])
  {
    block = [(UARPSuperBinaryPayloadLayer3 *)self payloadLength]- offset;
    v7 = self->_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v11 = 136315906;
      v12 = "[UARPSuperBinaryPayloadLayer3 getDataBlock:offset:]";
      v13 = 1024;
      blockCopy = block;
      v15 = 1024;
      offsetCopy = offset;
      v17 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s: Can only provide %d bytes from offset %d of payload %@", &v11, 0x22u);
    }
  }

  if (self->_useFilesystem)
  {
    [(UARPSuperBinaryPayloadLayer3 *)self getDataRangeFromURL:offset, block];
  }

  else
  {
    [(UARPSuperBinaryPayloadLayer3 *)self getDataRangeFromData:offset, block];
  }
  v8 = ;
LABEL_14:

  return v8;
}

- (id)getDataRangeFromData:(_NSRange)data
{
  payloadDataInternal = self->_payloadDataInternal;
  if (payloadDataInternal)
  {
    payloadDataInternal = [payloadDataInternal subdataWithRange:{data.location, data.length}];
    v3 = vars8;
  }

  return payloadDataInternal;
}

- (id)getDataRangeFromURL:(_NSRange)l
{
  location = l.location;
  p_payloadURL = &self->_payloadURL;
  l.location = self->_payloadURL;
  if (l.location)
  {
    length = l.length;
    v31 = 0;
    v7 = [NSFileHandle fileHandleForReadingFromURL:l.location error:&v31];
    v8 = v31;
    if (v7)
    {
      v30 = 0;
      v9 = [v7 seekToOffset:location error:&v30];
      v10 = v30;

      if (v9)
      {
        v29 = 0;
        v11 = [v7 readDataUpToLength:length error:&v29];
        v12 = v29;

        if (v11)
        {
          v28 = 0;
          v13 = [v7 closeAndReturnError:&v28];
          v8 = v28;

          if ((v13 & 1) == 0)
          {
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              sub_100085D6C(p_payloadURL, log, v8);
            }
          }

          v15 = v11;
        }

        else
        {
          v18 = self->_log;
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v24 = *p_payloadURL;
            v25 = v18;
            absoluteString = [v24 absoluteString];
            v27 = [v12 description];
            *buf = 136316162;
            v33 = "[UARPSuperBinaryPayloadLayer3 getDataRangeFromURL:]";
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

          v8 = v12;
        }
      }

      else
      {
        v17 = self->_log;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v20 = v17;
          payloadLength = [(UARPSuperBinaryPayloadLayer3 *)self payloadLength];
          absoluteString2 = [(NSURL *)self->_payloadURL absoluteString];
          v23 = [v10 description];
          *buf = 136316162;
          v33 = "[UARPSuperBinaryPayloadLayer3 getDataRangeFromURL:]";
          v34 = 2048;
          v35 = location;
          v36 = 2048;
          v37 = payloadLength;
          v38 = 2112;
          v39 = absoluteString2;
          v40 = 2112;
          v41 = v23;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "%s: cannot seek to offset %lu (file length %lu) from %@, error %@", buf, 0x34u);
        }

        v11 = 0;
        v8 = v10;
      }
    }

    else
    {
      v16 = self->_log;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_100085E30(p_payloadURL, v16, v8);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)payloadLength
{
  if (self->_useFilesystem)
  {
    if (self->_payloadURL)
    {
      v3 = +[NSFileManager defaultManager];
      path = [(NSURL *)self->_payloadURL path];
      v5 = [v3 attributesOfItemAtPath:path error:0];

      fileSize = [v5 fileSize];
      return fileSize;
    }

    return 0;
  }

  payloadDataInternal = self->_payloadDataInternal;
  if (!payloadDataInternal)
  {
    return 0;
  }

  return [(NSData *)payloadDataInternal length];
}

- (BOOL)setDataBlock:(id)block offset:(unint64_t)offset
{
  if (self->_useFilesystem)
  {
    payloadURL = self->_payloadURL;

    return [(UARPSuperBinaryPayloadLayer3 *)self setDataBlockToURL:block offset:offset url:payloadURL];
  }

  else
  {
    p_payloadDataInternal = &self->_payloadDataInternal;
    v8 = [(UARPSuperBinaryPayloadLayer3 *)self setDataBlockToData:block offset:offset payloadData:self->_payloadDataInternal];
    if (v8)
    {
      objc_storeStrong(p_payloadDataInternal, v8);
    }

    return v8 != 0;
  }
}

- (BOOL)setDataBlockToURL:(id)l offset:(unint64_t)offset url:(id)url
{
  lCopy = l;
  urlCopy = url;
  if (urlCopy)
  {
    v10 = +[NSFileManager defaultManager];
    path = [urlCopy path];
    v12 = [v10 attributesOfItemAtPath:path error:0];

    fileSize = [v12 fileSize];
    if (fileSize == offset)
    {
      v14 = objc_autoreleasePoolPush();
      v32 = 0;
      v15 = [NSFileHandle fileHandleForWritingToURL:urlCopy error:&v32];
      v16 = v32;
      if (v15)
      {
        v31 = 0;
        v17 = [v15 seekToOffset:offset error:&v31];
        v18 = v31;
        if (v17)
        {
          v30 = 0;
          v19 = [v15 writeData:lCopy error:&v30];
          v20 = v30;
          v21 = v20;
          if (v19)
          {
            v28 = v20;
            v29 = 0;
            v22 = [v15 closeAndReturnError:&v29];
            v23 = v29;
            if ((v22 & 1) == 0 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              sub_100086074();
            }

            v21 = v28;
          }

          else
          {
            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              sub_100085FF8();
            }

            v22 = 0;
          }
        }

        else
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_100085F7C();
          }

          v22 = 0;
        }
      }

      else
      {
        log = self->_log;
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          sub_1000860F0(log);
        }

        v22 = 0;
      }

      objc_autoreleasePoolPop(v14);
    }

    else
    {
      v24 = fileSize;
      v25 = self->_log;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_100085EF4(offset, v24, v25);
      }

      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)setDataBlockToData:(id)data offset:(unint64_t)offset payloadData:(id)payloadData
{
  dataCopy = data;
  payloadDataCopy = payloadData;
  v10 = payloadDataCopy;
  if (payloadDataCopy)
  {
    if ([payloadDataCopy length] == offset)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [v10 mutableCopy];
      [v12 appendData:dataCopy];
      v13 = [v12 copy];

      objc_autoreleasePoolPop(v11);
      goto LABEL_7;
    }

    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      sub_1000861A8(log);
    }
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (BOOL)compressPayload
{
  v3 = [(UARPSuperBinaryPayloadLayer3 *)self containsTLV:objc_opt_class()];
  chunkSize = [v3 chunkSize];
  v5 = [(UARPSuperBinaryPayloadLayer3 *)self containsTLV:objc_opt_class()];
  compressionAlgorithm = [v5 compressionAlgorithm];
  if (v5)
  {
    v7 = compressionAlgorithm == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || v3 == 0 || chunkSize == 0)
  {
    [(UARPSuperBinaryPayloadLayer3 *)self removeTLV:v3];
    [(UARPSuperBinaryPayloadLayer3 *)self removeTLV:v5];
    v10 = 1;
  }

  else
  {
    if (self->_payloadDataInternal)
    {
      v11 = objc_opt_new();
      compressedPayloadDataInternal = self->_compressedPayloadDataInternal;
      self->_compressedPayloadDataInternal = v11;

      goto LABEL_15;
    }

    if (self->_payloadURL)
    {
      v15 = [NSString stringWithFormat:@"compressedPayload.%lu", self->_index];
      uRLByDeletingLastPathComponent = [(NSURL *)self->_payloadURL URLByDeletingLastPathComponent];
      v17 = [NSURL fileURLWithPath:v15 isDirectory:0 relativeToURL:uRLByDeletingLastPathComponent];
      compressedPayloadURL = self->_compressedPayloadURL;
      self->_compressedPayloadURL = v17;

      v19 = self->_compressedPayloadURL;
      v62 = 0;
      v20 = [(UARPSuperBinaryPayloadLayer3 *)self cleanFileHandleForWriting:v19 error:&v62];
      v21 = v62;
      if (v20)
      {
        v61 = 0;
        v22 = [v20 closeAndReturnError:&v61];
        v23 = v61;
        v24 = v23;
        if (v22)
        {

LABEL_15:
          v13 = [(UARPSuperBinaryPayloadLayer3 *)self containsTLV:objc_opt_class()];
          if (v13)
          {
            v14 = v13;
            v10 = 1;
LABEL_68:

            goto LABEL_69;
          }

          v25 = [NSNumber numberWithUnsignedInteger:[(UARPSuperBinaryPayloadLayer3 *)self payloadLength]];
          v14 = [[UARPMetaDataDeviceUncompressedPayloadLength alloc] initWithPropertyListValue:v25 relativeURL:0];
          if (v14)
          {
            [(NSMutableArray *)self->_tlvs addObject:v14];
            if ([v5 compressionAlgorithm] == 1)
            {
              v53 = v25;
              v54 = v14;
              location = &self->_payloadDataInternal;
              v26 = 1538;
              goto LABEL_40;
            }

            if ([v5 compressionAlgorithm] == 2)
            {
              v53 = v25;
              v54 = v14;
              location = &self->_payloadDataInternal;
              v26 = 1794;
              goto LABEL_40;
            }

            if ([v5 compressionAlgorithm] == 3)
            {
              v53 = v25;
              v54 = v14;
              location = &self->_payloadDataInternal;
              v26 = 256;
LABEL_40:
              algorithm = v26;
              determinePayloadHashAlgorithm = [(UARPSuperBinaryPayloadLayer3 *)self determinePayloadHashAlgorithm];
              v58 = [[UARPHashMachine alloc] initWithAlgorithm:determinePayloadHashAlgorithm];
              v52 = determinePayloadHashAlgorithm;
              v57 = [[UARPHashMachine alloc] initWithAlgorithm:determinePayloadHashAlgorithm];
              v55 = v3;
              chunkSize2 = [v3 chunkSize];
              if ([(UARPSuperBinaryPayloadLayer3 *)self payloadLength])
              {
                v29 = 0;
                v30 = 0;
                v31 = chunkSize2;
                do
                {
                  if (v31 + v30 > [(UARPSuperBinaryPayloadLayer3 *)self payloadLength])
                  {
                    v31 = [(UARPSuperBinaryPayloadLayer3 *)self payloadLength]- v30;
                  }

                  v60 = 0;
                  v59 = 0;
                  LOWORD(v59) = [v5 compressionAlgorithm];
                  *(&v59 + 2) = v30;
                  HIWORD(v59) = v31;
                  v60 = v31;
                  v32 = objc_autoreleasePoolPush();
                  v33 = [(UARPSuperBinaryPayloadLayer3 *)self getDataBlock:v31 offset:v30];
                  [(UARPHashMachine *)v58 updateHash:v33];
                  v34 = calloc(v31, 1uLL);
                  v35 = compression_encode_buffer(v34, v31, [v33 bytes], objc_msgSend(v33, "length"), 0, algorithm);
                  v60 = [v33 length];
                  HIWORD(v59) = v35;
                  log = self->_log;
                  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    v64 = "[UARPSuperBinaryPayloadLayer3 compressPayload]";
                    v65 = 2048;
                    v66 = *(&v59 + 2);
                    v67 = 2048;
                    v68 = v60;
                    v69 = 2048;
                    v70 = v35;
                    _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s: Compressed offset %lu from %lu bytes to %lu bytes", buf, 0x2Au);
                  }

                  if (HIWORD(v59) && v60 - 10 > HIWORD(v59))
                  {
                    v37 = [NSData dataWithBytes:v34 length:?];
                  }

                  else
                  {
                    v37 = v33;
                    LOWORD(v59) = 0;
                    HIWORD(v59) = [v37 length];
                    v38 = self->_log;
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315650;
                      v64 = "[UARPSuperBinaryPayloadLayer3 compressPayload]";
                      v65 = 2048;
                      v66 = v35;
                      v67 = 2048;
                      v68 = v31;
                      _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s: Compressed length (%lu) out of tolerance for uncompressed length (%lu)", buf, 0x20u);
                    }
                  }

                  v39 = self->_log;
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315906;
                    v64 = "[UARPSuperBinaryPayloadLayer3 compressPayload]";
                    v65 = 2048;
                    v66 = *(&v59 + 2);
                    v67 = 2048;
                    v68 = v60;
                    v69 = 2048;
                    v70 = HIWORD(v59);
                    _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%s: Compress offset %lu from %lu bytes to %lu bytes", buf, 0x2Au);
                  }

                  uarpCompressionHeaderEndianSwap(&v59, &v59);
                  v40 = [NSData dataWithBytes:&v59 length:10];
                  [(UARPHashMachine *)v57 updateHash:v40];
                  [(UARPSuperBinaryPayloadLayer3 *)self appendCompressedPayloadData:v40 offset:v29];
                  v41 = &v29[[v40 length]];
                  [(UARPHashMachine *)v57 updateHash:v37];
                  [(UARPSuperBinaryPayloadLayer3 *)self appendCompressedPayloadData:v37 offset:v41];
                  v29 = &v41[[v37 length]];

                  objc_autoreleasePoolPop(v32);
                  v30 += v31;
                }

                while (v30 < [(UARPSuperBinaryPayloadLayer3 *)self payloadLength]);
              }

              [(UARPHashMachine *)v58 finalizeHash];
              hashValue = [(UARPHashMachine *)v58 hashValue];
              uncompressedHash = self->_uncompressedHash;
              self->_uncompressedHash = hashValue;

              [(UARPHashMachine *)v57 finalizeHash];
              hashValue2 = [(UARPHashMachine *)v57 hashValue];
              compressedHash = self->_compressedHash;
              self->_compressedHash = hashValue2;

              v46 = [[UARPMetaDataDevicePayloadHashAlgorithm alloc] initWithHashAlgorithm:v52];
              if (!v46)
              {
                v10 = 0;
                v3 = v55;
                v25 = v53;
LABEL_66:

                v14 = v54;
                goto LABEL_67;
              }

              v47 = [[UARPMetaDataDevicePayloadHash alloc] initWithPayloadHash:self->_uncompressedHash];
              v25 = v53;
              if (!v47)
              {
                v10 = 0;
                v3 = v55;
LABEL_65:

                goto LABEL_66;
              }

              [(UARPSuperBinaryPayloadLayer3 *)self addTLV:v46];
              [(UARPSuperBinaryPayloadLayer3 *)self addTLV:v47];
              if (self->_useFilesystem)
              {
                v3 = v55;
                if (self->_payloadURL)
                {
                  v48 = self->_compressedPayloadURL;
                  payloadURL = self->_payloadURL;
                  self->_payloadURL = v48;
LABEL_63:

                  v10 = 1;
                  goto LABEL_65;
                }
              }

              else
              {
                v3 = v55;
                if (*location)
                {
                  objc_storeStrong(location, self->_compressedPayloadDataInternal);
                  payloadURL = self->_compressedPayloadDataInternal;
                  self->_compressedPayloadDataInternal = 0;
                  goto LABEL_63;
                }
              }

              v10 = 0;
              goto LABEL_65;
            }
          }

          else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_1000862DC();
          }

          v10 = 0;
LABEL_67:

          goto LABEL_68;
        }

        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100086260();
        }
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100086260();
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10008635C();
    }

    v10 = 0;
  }

LABEL_69:

  return v10;
}

- (BOOL)setCompressedDataBlock:(id)block offset:(unint64_t)offset
{
  blockCopy = block;
  if (self->_useFilesystem)
  {
    if (self->_compressedPayloadURL)
    {
      v7 = [(UARPSuperBinaryPayloadLayer3 *)self setDataBlockToURL:blockCopy offset:offset url:?];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    p_compressedPayloadDataInternal = &self->_compressedPayloadDataInternal;
    v9 = [(UARPSuperBinaryPayloadLayer3 *)self setDataBlockToData:blockCopy offset:offset payloadData:self->_compressedPayloadDataInternal];
    v7 = v9 != 0;
    if (v9)
    {
      objc_storeStrong(p_compressedPayloadDataInternal, v9);
    }
  }

  return v7;
}

- (BOOL)decompressPayload
{
  v3 = [(UARPSuperBinaryPayloadLayer3 *)self containsTLV:objc_opt_class()];
  v4 = v3;
  if (v3 && [v3 chunkSize])
  {
    v5 = [(UARPSuperBinaryPayloadLayer3 *)self containsTLV:objc_opt_class()];
    v6 = v5;
    if (!v5 || ![v5 compressionAlgorithm])
    {
      v22 = 1;
LABEL_30:

      goto LABEL_31;
    }

    if (self->_payloadDataInternal)
    {
      v7 = objc_opt_new();
      if ([v6 compressionAlgorithm] == 1 || objc_msgSend(v6, "compressionAlgorithm") == 2 || objc_msgSend(v6, "compressionAlgorithm") == 3)
      {
        v8 = calloc([v4 chunkSize], 1uLL);
        if (v8)
        {
          v9 = v8;
          v32 = v4;
          v33 = v6;
          if ([(UARPSuperBinaryPayloadLayer3 *)self payloadLength])
          {
            v10 = 0;
            while (1)
            {
              v11 = objc_autoreleasePoolPush();
              LOWORD(__n) = 0;
              v34 = 0;
              v12 = [(UARPSuperBinaryPayloadLayer3 *)self getDataBlock:10 offset:v10];
              [v12 getBytes:&v34 length:10];
              uarpCompressionHeaderEndianSwap(&v34, &v34);
              v13 = v10 + 10;
              v14 = [(UARPSuperBinaryPayloadLayer3 *)self getDataBlock:HIWORD(v34) offset:v13];
              v15 = HIWORD(v34);
              v16 = v34;
              v17 = v9;
              bytes = [v14 bytes];
              v19 = [v14 length];
              v20 = bytes;
              v9 = v17;
              v21 = uarpPlatformDarwinDecompressBuffer(v16, v20, v19, v17, __n);
              if (v21)
              {
                break;
              }

              v10 = v13 + v15;
              [v7 appendBytes:v17 length:__n];

              objc_autoreleasePoolPop(v11);
              if (v10 >= [(UARPSuperBinaryPayloadLayer3 *)self payloadLength])
              {
                goto LABEL_27;
              }
            }

            v25 = v21;
            log = self->_log;
            if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
            {
              v30 = log;
              v31 = uarpStatusCodeToString(v25);
              *buf = 136315394;
              v37 = "[UARPSuperBinaryPayloadLayer3 decompressPayload]";
              v38 = 2080;
              v39 = v31;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%s: Failed to deompress buffer, status is %s", buf, 0x16u);

              v9 = v17;
            }

            objc_autoreleasePoolPop(v11);
          }

LABEL_27:
          free(v9);
          if (self->_payloadDataInternal)
          {
            v27 = [NSData dataWithData:v7];
            payloadDataInternal = self->_payloadDataInternal;
            self->_payloadDataInternal = v27;

            v22 = 1;
            v4 = v32;
            v6 = v33;
            goto LABEL_29;
          }

          v4 = v32;
          v6 = v33;
          if (self->_payloadURL && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_1000863DC();
          }
        }
      }
    }

    else
    {
      payloadURL = self->_payloadURL;
      v24 = os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR);
      if (payloadURL)
      {
        if (v24)
        {
          sub_1000863DC();
        }
      }

      else if (v24)
      {
        sub_10008645C();
      }

      v7 = 0;
    }

    v22 = 0;
LABEL_29:

    goto LABEL_30;
  }

  v22 = 1;
LABEL_31:

  return v22;
}

- (BOOL)writeComposedPayloadToFile:(id)file error:(id *)error
{
  if (self->_useFilesystem)
  {
    return [(UARPSuperBinaryPayloadLayer3 *)self writeComposedPayloadURLToFile:file error:error];
  }

  else
  {
    return [(UARPSuperBinaryPayloadLayer3 *)self writeComposedPayloadDataToFile:file error:error];
  }
}

- (BOOL)writeComposedPayloadDataToFile:(id)file error:(id *)error
{
  payloadDataInternal = self->_payloadDataInternal;
  if (payloadDataInternal)
  {
    return [file writeData:payloadDataInternal error:error];
  }

  else
  {
    return 0;
  }
}

- (BOOL)writeComposedPayloadURLToFile:(id)file error:(id *)error
{
  fileCopy = file;
  if (self->_payloadURL)
  {
    v7 = +[NSFileManager defaultManager];
    path = [(NSURL *)self->_payloadURL path];
    v9 = [v7 fileExistsAtPath:path];

    if (v9)
    {
      v10 = [NSFileHandle fileHandleForReadingFromURL:self->_payloadURL error:error];
      if (v10)
      {
        composedPayloadLength = [(UARPSuperBinaryPayloadLayer3 *)self composedPayloadLength];
        while (1)
        {
          v12 = objc_autoreleasePoolPush();
          v13 = [v10 readDataUpToLength:1024 error:error];
          v14 = [v13 length];
          v15 = composedPayloadLength >= v14;
          composedPayloadLength -= v14;
          if (!v15)
          {
            break;
          }

          v17 = [fileCopy writeData:v13 error:error];

          objc_autoreleasePoolPop(v12);
          if (!v17 || !composedPayloadLength)
          {
            goto LABEL_13;
          }
        }

        objc_autoreleasePoolPop(v12);
        v17 = 0;
LABEL_13:
        v16 = v17 & [v10 closeAndReturnError:error];
      }

      else
      {
        LOBYTE(v16) = 0;
      }
    }

    else
    {
      LOBYTE(v16) = 1;
    }
  }

  else
  {
    LOBYTE(v16) = 0;
  }

  return v16;
}

- (BOOL)expandPayloadDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Payload 4CC"];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [[UARPComponentTag alloc] initWithString:v5];
    payload4cc = self->_payload4cc;
    self->_payload4cc = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"Payload Version"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10008655C();
        }

        goto LABEL_28;
      }
    }

    v9 = [[UARPComponentVersion alloc] initWithVersionString:v8];
    payloadVersion = self->_payloadVersion;
    self->_payloadVersion = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"Payload Filepath"];
    p_filepath = &self->_filepath;
    filepath = self->_filepath;
    self->_filepath = v11;

    if (self->_filepath)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_1000865DC();
        }

        goto LABEL_26;
      }

      v14 = *p_filepath;
    }

    else
    {
      v14 = 0;
    }

    v16 = [(NSURL *)self->_payloadsURL URLByAppendingPathComponent:v14];
    payloadURL = self->_payloadURL;
    self->_payloadURL = v16;

    v18 = +[NSFileManager defaultManager];
    path = [(NSURL *)self->_payloadURL path];
    v20 = [v18 fileExistsAtPath:path];

    if (v20)
    {
      v21 = [dictionaryCopy objectForKeyedSubscript:@"Payload Long Name"];
      longname = self->_longname;
      self->_longname = v21;

      if (!self->_longname || (v23 = *p_filepath, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v24 = [dictionaryCopy objectForKeyedSubscript:@"Property List Path"];
        propertyListPath = self->_propertyListPath;
        self->_propertyListPath = v24;

        if (!self->_propertyListPath || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v26 = [dictionaryCopy objectForKeyedSubscript:@"Property List Version Path"];
          if (v26)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v27 = [v26 copy];
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_38;
              }

              v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", [v26 unsignedIntegerValue]);
            }

            propertyListVersion = self->_propertyListVersion;
            self->_propertyListVersion = v27;
          }

          if ([(UARPSuperBinaryPayloadLayer3 *)self expandPayloadDictionaryTLVs:dictionaryCopy])
          {
            v15 = [(UARPSuperBinaryPayloadLayer3 *)self expandPayloadDictionaryData:dictionaryCopy];
LABEL_39:

            goto LABEL_29;
          }

          v31 = *p_filepath;
          *p_filepath = 0;

LABEL_38:
          v15 = 0;
          goto LABEL_39;
        }

        v28 = self->_propertyListPath;
        self->_propertyListPath = 0;
        goto LABEL_27;
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10008665C(p_filepath);
    }

LABEL_26:
    v28 = *p_filepath;
    *p_filepath = 0;
LABEL_27:

LABEL_28:
    v15 = 0;
LABEL_29:

    goto LABEL_30;
  }

  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_1000864DC();
  }

  v15 = 0;
LABEL_30:

  return v15;
}

- (BOOL)expandPayloadDictionaryTLVs:(id)vs
{
  v4 = [vs objectForKeyedSubscript:@"Payload MetaData"];
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000866DC();
    }

    v5 = 0;
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100078970;
    v7[3] = &unk_1000B9638;
    v7[4] = self;
    [v4 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = 1;
  }

  return v5;
}

- (BOOL)expandPayloadDictionaryData:(id)data
{
  dataCopy = data;
  if (![(UARPSuperBinaryPayloadLayer3 *)self isPropertyListPayload])
  {
    if (self->_propertyListPath)
    {
      expandPayloadDictionaryKeyValuePayload = [(UARPSuperBinaryPayloadLayer3 *)self expandPayloadDictionaryKeyValuePayload];
      goto LABEL_5;
    }

    v8 = [NSData dataWithContentsOfURL:self->_payloadURL];
    if (v8)
    {
      if (!self->_isFTABPayload || (v9 = [[UARPRTKitFTAB alloc] initWithData:v8], ftab = self->_ftab, self->_ftab = v9, ftab, [(UARPRTKitFTAB *)self->_ftab expandFileTable:0]))
      {
        v11 = [v8 copy];
        payloadDataInternal = self->_payloadDataInternal;
        self->_payloadDataInternal = v11;

        if ([(UARPSuperBinaryPayloadLayer3 *)self compressPayload])
        {
          v6 = 1;
LABEL_15:

          goto LABEL_6;
        }

        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_10008675C(&self->_payloadURL);
        }
      }
    }

    v6 = 0;
    goto LABEL_15;
  }

  expandPayloadDictionaryKeyValuePayload = [(UARPSuperBinaryPayloadLayer3 *)self expandPayloadDictionaryPropertyListPayload:dataCopy];
LABEL_5:
  v6 = expandPayloadDictionaryKeyValuePayload;
LABEL_6:

  return v6;
}

- (BOOL)expandPayloadDictionaryPropertyListPayload:(id)payload
{
  v4 = [NSMutableDictionary dictionaryWithContentsOfURL:self->_payloadURL];
  if (v4)
  {
    v5 = [NSKeyedArchiver archivedDataWithRootObject:v4 requiringSecureCoding:0 error:0];
    v6 = v5;
    v7 = v5 != 0;
    if (v5)
    {
      v8 = [v5 copy];
      payloadDataInternal = self->_payloadDataInternal;
      self->_payloadDataInternal = v8;
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000867DC();
    }
  }

  else
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10008685C();
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)expandPayloadDictionaryKeyValuePayload
{
  v3 = [NSDictionary dictionaryWithContentsOfURL:self->_payloadURL];
  if (!v3)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_10008695C();
    }

    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_1000868DC();
    }

LABEL_19:
    v16 = 0;
    goto LABEL_31;
  }

  if (self->_propertyListPath)
  {
    v25 = [NSCharacterSet characterSetWithCharactersInString:@"/"];
    v4 = [(NSString *)self->_propertyListPath componentsSeparatedByCharactersInSet:?];
    v5 = [NSMutableArray arrayWithArray:v4];
    v6 = v3;
    v7 = v6;
    if ([v5 count])
    {
      v7 = v6;
      do
      {
        v8 = v7;
        firstObject = [v5 firstObject];
        [v5 removeObjectAtIndex:0];
        v7 = [v7 objectForKeyedSubscript:firstObject];
      }

      while ([v5 count]);
      if (!v7)
      {
        v16 = 0;
LABEL_30:

        goto LABEL_31;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v7 copy];
      payloadDataInternal = self->_payloadDataInternal;
      self->_payloadDataInternal = v10;
    }

    if (!self->_propertyListVersion)
    {
LABEL_29:
      v16 = 1;
      goto LABEL_30;
    }

    v24 = [NSCharacterSet characterSetWithCharactersInString:@"/"];
    v23 = [(NSString *)self->_propertyListVersion componentsSeparatedByCharactersInSet:?];
    v12 = [NSMutableArray arrayWithArray:?];
    v13 = v6;
    if ([v12 count])
    {
      do
      {
        firstObject2 = [v12 firstObject];
        [v12 removeObjectAtIndex:0];
        v15 = [v13 objectForKeyedSubscript:firstObject2];

        v13 = v15;
      }

      while ([v12 count]);
      if (!v15)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v15 = v13;
      if (!v13)
      {
        goto LABEL_28;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v15;
      v18 = [[UARPComponentVersion alloc] initWithVersionString:v17];

      payloadVersion = self->_payloadVersion;
      self->_payloadVersion = v18;
LABEL_27:

      goto LABEL_28;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      payloadVersion = [NSString stringWithFormat:@"%@", v15];
      v20 = [[UARPComponentVersion alloc] initWithVersionString:payloadVersion];
      v21 = self->_payloadVersion;
      self->_payloadVersion = v20;

      goto LABEL_27;
    }

LABEL_28:

    goto LABEL_29;
  }

  v16 = 1;
LABEL_31:

  return v16;
}

- (BOOL)composePersonalizedPayload
{
  if (self->_isFTABPayload)
  {
    return [(UARPSuperBinaryPayloadLayer3 *)self composePersonalizedFTAB];
  }

  else
  {
    return 1;
  }
}

- (BOOL)composePersonalizedFTAB
{
  if (self->_isFTABPayload)
  {
    ftab = self->_ftab;
    if (ftab)
    {
      if (!self->_manifestAsTLV)
      {
        [(UARPRTKitFTAB *)ftab setManifest:self->_manifest];
      }

      if (self->_ftabGeneration)
      {
        [(UARPRTKitFTAB *)self->_ftab setGeneration:?];
      }

      if (self->_nonceSeed)
      {
        [(UARPRTKitFTAB *)self->_ftab setBootNonce:?];
      }

      if (self->_useFilesystem)
      {
        if (self->_payloadURL)
        {
          preparePersonalizedURL = [(UARPSuperBinaryPayloadLayer3 *)self preparePersonalizedURL];
          if (preparePersonalizedURL)
          {
            if ([(UARPRTKitFTAB *)self->_ftab writeToURL:preparePersonalizedURL])
            {
              objc_storeStrong(&self->_payloadURL, preparePersonalizedURL);
              v5 = [[UARPRTKitFTAB alloc] initWithURL:self->_payloadURL];
              v6 = self->_ftab;
              self->_ftab = v5;

              v7 = [(UARPRTKitFTAB *)self->_ftab expandFileTable:0];
LABEL_29:

              return v7;
            }

            if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
            {
              sub_1000869DC();
            }
          }

          else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_100086A58(self);
          }

          v7 = 0;
          goto LABEL_29;
        }

        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100086AD4(self);
        }
      }

      else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
      {
        sub_100086B50(self);
      }
    }

    else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      sub_100086BCC(self);
    }
  }

  else if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100086C48(self);
  }

  return 0;
}

- (id)preparePersonalizedURL
{
  v3 = [NSString stringWithFormat:@"personalizedPayload.%lu", self->_index];
  if (v3)
  {
    uRLByDeletingLastPathComponent = [(NSURL *)self->_payloadURL URLByDeletingLastPathComponent];
    v5 = [NSURL fileURLWithPath:v3 isDirectory:0 relativeToURL:uRLByDeletingLastPathComponent];

    if (v5)
    {
      v13 = 0;
      v6 = [(UARPSuperBinaryPayloadLayer3 *)self cleanFileHandleForWriting:v5 error:&v13];
      v7 = v13;
      if (v6)
      {
        v12 = 0;
        v8 = [v6 closeAndReturnError:&v12];
        v9 = v12;
        if (v8)
        {
          v10 = v5;
        }

        else
        {
          if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
          {
            sub_100086CC4();
          }

          v10 = 0;
        }
      }

      else
      {
        if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
        {
          sub_100086D40();
        }

        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)personalizedData
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100086DBC();
  }

  return 0;
}

- (void)cachePayloadData
{
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100086E3C();
  }
}

- (void)setPayloadURL:(id)l
{
  lCopy = l;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    sub_100086EBC();
  }
}

@end