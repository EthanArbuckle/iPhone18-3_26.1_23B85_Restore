@interface IODualSPIWriter
- (BOOL)_crossingRegionChangeBoundary;
- (BOOL)_headerMatchesBootSFRManifestHash:(id)hash;
- (BOOL)headerIsInvalid:(id)invalid;
- (BOOL)verifyFirmwareAtIndex:(unint64_t)index againstData:(id)data;
- (BOOL)verifyHeadersAtIndex:(unint64_t)index;
- (id)_getSFRManifestHashForPayload:(id)payload;
- (id)_loadRegionLayout:(unsigned int)layout;
- (id)findHeaders;
- (id)readDataAtOffset:(unsigned int)offset ofLength:(unsigned int)length;
- (int)_commitHeader:(id)header withError:(id *)error;
- (int)_writeFirmware:(id)firmware toHeader:(id)header withError:(id *)error;
- (int)commitHeaderAtIndex:(unint64_t)index withError:(id *)error;
- (int)commitPreparedHeaderWithError:(id *)error;
- (int)openService;
- (int)writeData:(id)data withError:(id *)error;
- (int)writeFirstGenerationFirmware:(id)firmware withError:(id *)error;
- (int)writeNewerGenerationFirmware:(id)firmware withError:(id *)error;
- (unint64_t)findPreparedHeader;
- (unsigned)_findFirmwareInfoEntry;
- (unsigned)_maxExtendedRegionSize;
- (unsigned)_maxImageSize;
- (void)dealloc;
- (void)markHeaderAsInvalid:(id)invalid;
@end

@implementation IODualSPIWriter

- (unsigned)_findFirmwareInfoEntry
{
  v2 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/product/util");
  if (v2)
  {
    v3 = v2;
    if (sub_100005BBC(v2))
    {
      return v3;
    }

    IOObjectRelease(v3);
  }

  iterator = 0;
  v3 = 0;
  if (!IORegistryCreateIterator(kIOMasterPortDefault, "IODeviceTree", 1u, &iterator))
  {
    do
    {
      v4 = IOIteratorNext(iterator);
      v3 = v4;
    }

    while (v4 && !sub_100005BBC(v4));
    IOObjectRelease(iterator);
  }

  return v3;
}

- (id)_loadRegionLayout:(unsigned int)layout
{
  _findFirmwareInfoEntry = [(IODualSPIWriter *)self _findFirmwareInfoEntry];
  if (_findFirmwareInfoEntry)
  {
    v5 = _findFirmwareInfoEntry;
    v6 = IORegistryEntryCreateCFProperty(_findFirmwareInfoEntry, @"fw-regions", 0, 0);
    IOObjectRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  if (![v6 length])
  {
    v6 = IORegistryEntrySearchCFProperty(layout, "IOService", @"reg", 0, 3u);
    if (![v6 length])
    {
      iBU_LOG_real(@"Found none of the required DT Properties (looked for 'low-level-fw-device-info' and 'reg')", "[IODualSPIWriter _loadRegionLayout:]", v7, v8, v9, v10, v11, v12, v14);
      return 0;
    }
  }

  return v6;
}

- (int)writeData:(id)data withError:(id *)error
{
  if ([(IOServiceWriter *)self isErase])
  {

    return [(IODualSPIWriter *)self writeFirstGenerationFirmware:data withError:error];
  }

  else
  {

    return [(IODualSPIWriter *)self writeNewerGenerationFirmware:data withError:error];
  }
}

- (int)openService
{
  v3 = IORegistryEntryCopyPath([(IOServiceWriter *)self service], "IOService");
  if (*&self->_usesAFUH)
  {
    return 0;
  }

  v11 = v3;
  if (v3)
  {
    iBU_LOG_real(@"Matched service is: %@", "[IODualSPIWriter openService]", v4, v5, v6, v7, v8, v9, v3);
    CFRelease(v11);
  }

  if (!*(&self->_regStruct + 4))
  {
    return -536870160;
  }

  service = [(IOServiceWriter *)self service];
  v13 = IOServiceOpen(service, mach_task_self_, 0, &self->_usesAFUH);
  *(&self->_regSize + 1) = [*(&self->_regStruct + 4) bytes];
  *(&self->_regBuffer + 4) = [*(&self->_regStruct + 4) bytes];
  v14 = [*(&self->_regStruct + 4) length];
  self->_spiDriverConnect = v14;
  iBU_LOG_real(@"RegSize is: %d", "[IODualSPIWriter openService]", v15, v16, v17, v18, v19, v20, v14);
  return v13;
}

- (unsigned)_maxImageSize
{
  spiDriverConnect = self->_spiDriverConnect;
  if (spiDriverConnect != 40)
  {
    if (spiDriverConnect == 32)
    {
      return 0x200000;
    }

    if (spiDriverConnect != 24)
    {
      v9 = 0x200000;
      iBU_LOG_real(@"Unknown reg region size of %d. Returning the default iBootMaxPayloadSize of 0x%x", "[IODualSPIWriter _maxImageSize]", v2, v3, v4, v5, v6, v7, self->_spiDriverConnect);
      return v9;
    }
  }

  return (*(&self->_regBuffer + 4))[3];
}

- (unsigned)_maxExtendedRegionSize
{
  if (self->_spiDriverConnect == 40)
  {
    return (*(&self->_regBuffer + 4))[7];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_crossingRegionChangeBoundary
{
  spiDriverConnect = self->_spiDriverConnect;
  v3 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen");
  CFProperty = IORegistryEntryCreateCFProperty(v3, @"board-id", kCFAllocatorDefault, 0);
  v5 = IORegistryEntryCreateCFProperty(v3, @"chip-id", kCFAllocatorDefault, 0);
  v6 = *CFDataGetBytePtr(CFProperty);
  v7 = *CFDataGetBytePtr(v5);
  v14[0] = [NSNumber numberWithInt:8];
  v14[1] = [NSNumber numberWithInt:9];
  v14[2] = [NSNumber numberWithInt:10];
  v14[3] = [NSNumber numberWithInt:11];
  v14[4] = [NSNumber numberWithInt:12];
  v14[5] = [NSNumber numberWithInt:13];
  v14[6] = [NSNumber numberWithInt:15];
  v14[7] = [NSNumber numberWithInt:4];
  v14[8] = [NSNumber numberWithInt:5];
  v14[9] = [NSNumber numberWithInt:16];
  v8 = [NSArray arrayWithObjects:v14 count:10];
  v13[1] = [NSNumber numberWithInt:24577, [NSNumber numberWithInt:24576]];
  v13[2] = [NSNumber numberWithInt:24578];
  v9 = [NSArray arrayWithObjects:v13 count:3];
  v10 = [(NSArray *)v8 containsObject:[NSNumber numberWithUnsignedInt:v6]];
  v11 = 0;
  if (v10)
  {
    v11 = [(NSArray *)v9 containsObject:[NSNumber numberWithUnsignedInt:v7]];
  }

  if (CFProperty)
  {
    CFRelease(CFProperty);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {
    IOObjectRelease(v3);
  }

  if (spiDriverConnect == 24)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

- (id)_getSFRManifestHashForPayload:(id)payload
{
  v5 = objc_alloc_init(NSMutableData);
  v6 = objc_autoreleasePoolPush();
  [v5 appendData:{-[IODualSPIWriter readDataAtOffset:ofLength:](self, "readDataAtOffset:ofLength:", objc_msgSend(payload, "imageAddress"), -[IODualSPIWriter _maxImageSize](self, "_maxImageSize"))}];
  if ([(IODualSPIWriter *)self _usesExtendediBootRegion])
  {
    [v5 appendData:{-[IODualSPIWriter readDataAtOffset:ofLength:](self, "readDataAtOffset:ofLength:", objc_msgSend(payload, "secondaryPayloadOffset"), -[IODualSPIWriter _maxExtendedRegionSize](self, "_maxExtendedRegionSize"))}];
  }

  objc_autoreleasePoolPop(v6);
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *md = 0u;
  if (!v5 || ([v5 bytes], -[IODualSPIWriter _maxImageSize](self, "_maxImageSize"), Img4DecodeParseLengthFromBuffer()) || (objc_msgSend(v5, "bytes"), Img4DecodeInit()))
  {
    v7 = 0;
  }

  else
  {
    Img4DecodeGetManifest();
    CC_SHA384(0, 0, md);
    v7 = [NSData dataWithBytes:md length:48];
  }

  return v7;
}

- (BOOL)_headerMatchesBootSFRManifestHash:(id)hash
{
  v5 = objc_autoreleasePoolPush();
  v6 = [(IODualSPIWriter *)self _getSFRManifestHashForPayload:hash];
  v7 = IORegistryEntryFromPath(kIOMasterPortDefault, "IODeviceTree:/chosen/secure-boot-hashes");
  LOBYTE(v6) = [v6 isEqualToData:{IORegistryEntryCreateCFProperty(v7, @"sfr-manifest-hash", kCFAllocatorDefault, 0)}];
  objc_autoreleasePoolPop(v5);
  return v6;
}

- (int)writeNewerGenerationFirmware:(id)firmware withError:(id *)error
{
  findHeaders = 0;
  v7 = 1;
  do
  {
    if (findHeaders)
    {
    }

    findHeaders = [(IODualSPIWriter *)self findHeaders];
    if ([findHeaders count] <= 1)
    {
      if (error)
      {
        v112 = [findHeaders count];
        *error = MSUBootFirmwareError(-536870167, 0, @"writeNewerGenerationFirmware: couldn't find enough headers (only found %d of %d)", v113, v114, v115, v116, v117, v112);
      }

      v111 = -536870167;
      goto LABEL_54;
    }

    v8 = [findHeaders objectAtIndex:0];
    v9 = [findHeaders objectAtIndex:1];
    headerGeneration = [v8 headerGeneration];
    if (headerGeneration >= [v9 headerGeneration])
    {
      v17 = v9;
    }

    else
    {
      v17 = v8;
    }

    if (v8 == v17)
    {
      v18 = v9;
    }

    else
    {
      v18 = v8;
    }

    v122 = 0;
    iBU_LOG_real(@"Older header: %@", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v11, v12, v13, v14, v15, v16, v17);
    iBU_LOG_real(@"Newer header: %@", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v19, v20, v21, v22, v23, v24, v18);
    isValid = [v17 isValid];
    isValid2 = [v18 isValid];
    v33 = isValid2 ^ 1;
    if (((isValid ^ 1) & 1) == 0 && (v33 & 1) == 0)
    {
      iBU_LOG_real(@"Both headers are valid. Checking to see which one we're booted from.", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v27, v28, v29, v30, v31, v32, v119);
      if (![(IODualSPIWriter *)self usesAFUH])
      {
        [v18 headerGeneration];
        iBU_LOG_real(@"Both headers are valid. Selecting older header %@ (vs gc=0x%x).", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v46, v47, v48, v49, v50, v51, v17);
        goto LABEL_26;
      }

      if ([(IODualSPIWriter *)self _headerMatchesBootSFRManifestHash:v18])
      {
        iBU_LOG_real(@"Overwriting older header %@ because we're booted from the newer header.", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v34, v35, v36, v37, v38, v39, v17);
LABEL_26:
        v8 = v17;
        goto LABEL_27;
      }

      if (![(IODualSPIWriter *)self _headerMatchesBootSFRManifestHash:v17])
      {
        [v18 headerGeneration];
        iBU_LOG_real(@"Both headers are valid and we're not booted from either? Selecting older header %@ (vs gc=0x%x).", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v58, v59, v60, v61, v62, v63, v17);
        goto LABEL_26;
      }

      iBU_LOG_real(@"Overwriting newer header %@ because we're booted from the older header.", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v52, v53, v54, v55, v56, v57, v18);
      goto LABEL_20;
    }

    if (((isValid ^ 1 | isValid2) & 1) == 0)
    {
      iBU_LOG_real(@"Older header is valid, newer is not. Selecting newer header %@", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v27, v28, v29, v30, v31, v32, v18);
LABEL_20:
      v8 = v18;
      v18 = v17;
      goto LABEL_27;
    }

    if (((isValid | v33) & 1) == 0)
    {
      iBU_LOG_real(@"Newer header is valid, older is not. Selecting older header %@", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v27, v28, v29, v30, v31, v32, v17);
      goto LABEL_26;
    }

    [v8 setHeaderGeneration:0];
    iBU_LOG_real(@"Neither header is valid. Setting header0 to gen0.", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v40, v41, v42, v43, v44, v45, v119);
    v18 = v9;
LABEL_27:
    if ([v8 headerGeneration] == -1 && objc_msgSend(v18, "headerGeneration") == -1)
    {
      headerGeneration3 = 0;
    }

    else
    {
      headerGeneration2 = [v8 headerGeneration];
      headerGeneration3 = [v18 headerGeneration];
      if (headerGeneration2 != -1)
      {
        headerGeneration4 = [v8 headerGeneration];
        v67 = headerGeneration4;
        if (headerGeneration3 == -1)
        {
          headerGeneration3 = headerGeneration4;
        }

        else
        {
          headerGeneration5 = [v18 headerGeneration];
          if (v67 <= headerGeneration5)
          {
            headerGeneration3 = headerGeneration5;
          }

          else
          {
            headerGeneration3 = v67;
          }
        }
      }
    }

    [v8 setHeaderGeneration:headerGeneration3];
    [v8 bumpGeneration];
    [v8 invalidate];
    if ([(IODualSPIWriter *)self _usesExtendediBootRegion]&& [(IODualSPIWriter *)self _crossingRegionChangeBoundary])
    {
      self->_spiDriverConnect = 40;
      *(&self->_regBuffer + 4) = &unk_100017B6C;
      [v8 setImageAddress:0x20000];
      [v8 setSecondaryPayloadOffset:0x400000];
    }

    iBU_LOG_real(@"Writing updated header and images.", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v69, v70, v71, v72, v73, v74, v120);
    v75 = [(IODualSPIWriter *)self _writeFirmware:firmware toHeader:v8 withError:&v122];
    headerGeneration6 = [v8 headerGeneration];
    [v8 startLocation];
    if (v75)
    {
      iBU_LOG_real(@"Failed to write newer-generation firmware images to update header with generation 0x%x at offset 0x%x. Invalidating this header, then trying again with a different header.", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v77, v78, v79, v80, v81, v82, headerGeneration6);
    }

    else
    {
      iBU_LOG_real(@"Successfully wrote newer-generation firmware images to update header with generation 0x%x at offset 0x%x.", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v77, v78, v79, v80, v81, v82, headerGeneration6);
      if (![(IOServiceWriter *)self shouldCommit])
      {
        goto LABEL_53;
      }

      headerGeneration7 = [v8 headerGeneration];
      iBU_LOG_real(@"Committing updated header with newer-generation 0x%x", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v90, v91, v92, v93, v94, v95, headerGeneration7);
      v96 = [(IODualSPIWriter *)self _commitHeader:v8 withError:&v122];
      headerGeneration8 = [v8 headerGeneration];
      [v8 startLocation];
      if (!v96)
      {
        iBU_LOG_real(@"Successfully committed header with newer-generation 0x%x at offset 0x%x.", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v98, v99, v100, v101, v102, v103, headerGeneration8);
LABEL_53:
        iBU_LOG_real(@"Successfully wrote newer-generation firmware after %d retries.", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v83, v84, v85, v86, v87, v88, v7);
        v111 = 0;
        if (!findHeaders)
        {
          return v111;
        }

LABEL_54:

        return v111;
      }

      iBU_LOG_real(@"Failed to commit header with newer-generation 0x%x at offset 0x%x. Invalidating this header, then trying again with a different header.", "[IODualSPIWriter writeNewerGenerationFirmware:withError:]", v98, v99, v100, v101, v102, v103, headerGeneration8);
    }

    [(IODualSPIWriter *)self markHeaderAsInvalid:v8];
    v109 = v7 + 1;
    v110 = v7 - 1;
    v7 = (v7 + 1);
  }

  while (v110 < 0x1F);
  v111 = -536870167;
  if (error)
  {
    *error = MSUBootFirmwareError(-536870167, 0, @"writeNewerGenerationFirmware: couldn't find enough headers after %d retries.", v104, v105, v106, v107, v108, (v109 - 1));
  }

  if (findHeaders)
  {
    goto LABEL_54;
  }

  return v111;
}

- (int)writeFirstGenerationFirmware:(id)firmware withError:(id *)error
{
  firmwareCopy2 = firmware;
  findHeaders = 0;
  v7 = @"Invalidated header0 in memory. %@";
  v8 = @"Invalidated header1 in memory. %@";
  v9 = @"Resetting header0 to Generation 1.";
  v10 = 1;
  while (1)
  {
    if (findHeaders)
    {
    }

    findHeaders = [(IODualSPIWriter *)self findHeaders];
    if ([findHeaders count] <= 1)
    {
      errorCopy2 = error;
      if (error)
      {
        v77 = (v10 - 1);
        v78 = [findHeaders count];
        *error = MSUBootFirmwareError(-536870167, 0, @"writeFirstGenerationFirmware: couldn't find enough headers (only found %d of %d)", v79, v80, v81, v82, v83, v78);
LABEL_18:
        v84 = -536870167;
        *errorCopy2 = MSUBootFirmwareError(-536870167, 0, @"writeFirstGenerationFirmware: couldn't find enough headers after %d retries.", v69, v70, v71, v72, v73, v77);
        if (!findHeaders)
        {
          return v84;
        }

        goto LABEL_21;
      }

LABEL_20:
      v84 = -536870167;
      if (!findHeaders)
      {
        return v84;
      }

      goto LABEL_21;
    }

    v11 = [findHeaders objectAtIndex:0];
    v12 = [findHeaders objectAtIndex:1];
    v91 = 0;
    [v11 invalidate];
    iBU_LOG_real(v7, "[IODualSPIWriter writeFirstGenerationFirmware:withError:]", v13, v14, v15, v16, v17, v18, v11);
    [v12 invalidate];
    iBU_LOG_real(v8, "[IODualSPIWriter writeFirstGenerationFirmware:withError:]", v19, v20, v21, v22, v23, v24, v12);
    iBU_LOG_real(v9, "[IODualSPIWriter writeFirstGenerationFirmware:withError:]", v25, v26, v27, v28, v29, v30, v86);
    [v11 setAsFirstGeneration];
    if (![(IODualSPIWriter *)self _writeFirmware:firmwareCopy2 toHeader:v11 withError:&v91])
    {
      break;
    }

    startLocation = [v11 startLocation];
    iBU_LOG_real(@"Failed to write firmware images to header0 at offset 0x%x. Invalidating this header, then trying again with a different header.", "[IODualSPIWriter writeFirstGenerationFirmware:withError:]", v38, v39, v40, v41, v42, v43, startLocation);
LABEL_13:
    [(IODualSPIWriter *)self markHeaderAsInvalid:v12];
    v74 = v10 + 1;
    v75 = v10 - 1;
    v10 = (v10 + 1);
    if (v75 >= 0x1F)
    {
      errorCopy2 = error;
      if (error)
      {
        v77 = (v74 - 1);
        goto LABEL_18;
      }

      goto LABEL_20;
    }
  }

  v44 = v9;
  v45 = v8;
  v46 = v7;
  iBU_LOG_real(@"Erasing header1.", "[IODualSPIWriter writeFirstGenerationFirmware:withError:]", v31, v32, v33, v34, v35, v36, v87);
  v47 = -[IODualSPIWriter eraseBytes:ofLength:withError:](self, "eraseBytes:ofLength:withError:", [v12 startLocation], objc_msgSend(v12, "length"), &v91);
  startLocation2 = [v12 startLocation];
  if (v47)
  {
    iBU_LOG_real(@"Failed to erase header1 at offset 0x%x. Invalidating this header, then trying again with a different header.", "[IODualSPIWriter writeFirstGenerationFirmware:withError:]", v49, v50, v51, v52, v53, v54, startLocation2);
LABEL_12:
    v7 = v46;
    v8 = v45;
    v9 = v44;
    firmwareCopy2 = firmware;
    goto LABEL_13;
  }

  iBU_LOG_real(@"Successfully wrote header1 at offset 0x%x.", "[IODualSPIWriter writeFirstGenerationFirmware:withError:]", v49, v50, v51, v52, v53, v54, startLocation2);
  if (![(IOServiceWriter *)self shouldCommit])
  {
    goto LABEL_24;
  }

  iBU_LOG_real(@"Committing header0 to the first partition.", "[IODualSPIWriter writeFirstGenerationFirmware:withError:]", v55, v56, v57, v58, v59, v60, v88);
  v61 = [(IODualSPIWriter *)self _commitHeader:v11 withError:&v91];
  startLocation3 = [v11 startLocation];
  if (v61)
  {
    iBU_LOG_real(@"Failed to commit header0 at offset 0x%x to the first partition. Invalidating this header, then trying again with a different header.", "[IODualSPIWriter writeFirstGenerationFirmware:withError:]", v63, v64, v65, v66, v67, v68, startLocation3);
    v12 = v11;
    goto LABEL_12;
  }

  iBU_LOG_real(@"Successfully committed header0 at offset 0x%x.", "[IODualSPIWriter writeFirstGenerationFirmware:withError:]", v63, v64, v65, v66, v67, v68, startLocation3);
LABEL_24:
  iBU_LOG_real(@"Successfully wrote firmware after %d retries.", "[IODualSPIWriter writeFirstGenerationFirmware:withError:]", v55, v56, v57, v58, v59, v60, v10);
  v84 = 0;
  if (findHeaders)
  {
LABEL_21:
  }

  return v84;
}

- (void)markHeaderAsInvalid:(id)invalid
{
  iBU_LOG_real(@"Marking header as invalid: %@", "[IODualSPIWriter markHeaderAsInvalid:]", invalid, v3, v4, v5, v6, v7, invalid);
  invalidHeaders = [(IODualSPIWriter *)self invalidHeaders];

  [(NSMutableArray *)invalidHeaders addObject:invalid];
}

- (BOOL)headerIsInvalid:(id)invalid
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  invalidHeaders = [(IODualSPIWriter *)self invalidHeaders];
  v5 = [(NSMutableArray *)invalidHeaders countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(invalidHeaders);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        startLocation = [invalid startLocation];
        if (startLocation == [v9 startLocation])
        {
          LOBYTE(v5) = 1;
          return v5;
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v5 = [(NSMutableArray *)invalidHeaders countByEnumeratingWithState:&v12 objects:v16 count:16];
      v6 = v5;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  return v5;
}

- (int)commitHeaderAtIndex:(unint64_t)index withError:(id *)error
{
  findHeaders = [(IODualSPIWriter *)self findHeaders];
  if ([findHeaders count] >= index + 1)
  {
    v8 = -[IODualSPIWriter _commitHeader:withError:](self, "_commitHeader:withError:", [findHeaders objectAtIndex:index], error);
  }

  else
  {
    v8 = -536870212;
    if (error)
    {
      v9 = [findHeaders count];
      *error = MSUBootFirmwareError(-536870212, 0, @"commitHeaderAtIndex: couldn't find enough headers (only found %d of %d)", v10, v11, v12, v13, v14, v9);
    }
  }

  return v8;
}

- (int)commitPreparedHeaderWithError:(id *)error
{
  findPreparedHeader = [(IODualSPIWriter *)self findPreparedHeader];
  if (findPreparedHeader == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      *error = MSUBootFirmwareError(-536870212, 0, @"commitPreparedHeader: couldn't find valid preparedHeader", v6, v7, v8, v9, v10, v12);
    }

    return -536870212;
  }

  else
  {

    return [(IODualSPIWriter *)self commitHeaderAtIndex:findPreparedHeader withError:error];
  }
}

- (unint64_t)findPreparedHeader
{
  findHeaders = [(IODualSPIWriter *)self findHeaders];
  if ([findHeaders count] > 1)
  {
    v11 = [findHeaders objectAtIndexedSubscript:0];
    v12 = [findHeaders objectAtIndexedSubscript:1];
    v13 = [v11 compareTo:v12];
    iBU_LOG_real(@"Header0: %@", "[IODualSPIWriter findPreparedHeader]", v14, v15, v16, v17, v18, v19, v11);
    iBU_LOG_real(@"Header1: %@", "[IODualSPIWriter findPreparedHeader]", v20, v21, v22, v23, v24, v25, v12);
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    if (v13 == 1)
    {
      v26 = 0;
    }

    if (v13 == -1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v26;
    }
  }

  else
  {
    v3 = [findHeaders count];
    iBU_LOG_real(@"Error: findPreparedHeader: couldn't find enough headers (found %d of 2)", "[IODualSPIWriter findPreparedHeader]", v4, v5, v6, v7, v8, v9, v3);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (id)findHeaders
{
  if ([(IODualSPIWriter *)self usesAFUH])
  {
    [(IODualSPIWriter *)self _maxImageSize];
    v79[0] = [NSNumber numberWithUnsignedInt:0x20000];
    v79[1] = [NSNumber numberWithUnsignedInt:[(IODualSPIWriter *)self _maxImageSize]+ 0x20000];
    v9 = [NSArray arrayWithObjects:v79 count:2];
    v10 = [(NSArray *)v9 mutableCopy];
    _usesExtendediBootRegion = [(IODualSPIWriter *)self _usesExtendediBootRegion];
    if (_usesExtendediBootRegion)
    {
      v78[0] = [NSNumber numberWithUnsignedInt:(*(&self->_regBuffer + 4))[6]];
      v78[1] = [NSNumber numberWithUnsignedInt:(*(&self->_regBuffer + 4))[8]];
      v77 = [+[NSArray arrayWithObjects:count:](NSArray mutableCopy:v78];
    }

    else
    {
      v77 = 0;
    }

    v32 = [(NSArray *)v9 count];
    v33 = [NSMutableArray arrayWithCapacity:32];
    v34 = 0;
    v35 = 0;
    do
    {
      v36 = [[MSUiBootHeaderV2 alloc] initWithIOServiceWriter:self];
      [(MSUiBootHeaderV2 *)v36 loadHeaderAtOffset:v34];
      if ([(MSUiBootHeaderV2 *)v36 validHeaderSignature]&& [(NSArray *)v9 containsObject:[NSNumber numberWithUnsignedInt:[(MSUiBootHeader *)v36 imageAddress]]]&& ![(IODualSPIWriter *)self headerIsInvalid:v36])
      {
        [v10 removeObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", -[MSUiBootHeader imageAddress](v36, "imageAddress"))}];
        [v77 removeObject:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", -[MSUiBootHeaderV2 secondaryPayloadOffset](v36, "secondaryPayloadOffset"))}];
        [(NSMutableArray *)v33 insertObject:v36 atIndex:v35++];
      }

      else
      {
        [(MSUiBootHeader *)v36 setImageAddress:0];
        [(MSUiBootHeaderV2 *)v36 setSecondaryPayloadOffset:0];
        [(NSMutableArray *)v33 addObject:v36];
      }

      if (v35 >= v32)
      {
        break;
      }

      v37 = v34 == 126976;
      v34 += 4096;
    }

    while (!v37);
    [(NSMutableArray *)v33 removeObjectsInRange:v32, [(NSMutableArray *)v33 count]- v32];
    if ([(NSMutableArray *)v33 count]< v32)
    {
      v44 = [(NSMutableArray *)v33 count];
      iBU_LOG_real(@"Fatal error: Only found %d of the required %d AFUH-style headers.", "[IODualSPIWriter findHeaders]", v45, v46, v47, v48, v49, v50, v44);
      return objc_alloc_init(NSArray);
    }

    iBU_LOG_real(@"AFUH style header", "[IODualSPIWriter findHeaders]", v38, v39, v40, v41, v42, v43, v74);
    if ([(NSMutableArray *)v33 count])
    {
      for (i = 0; i < [(NSMutableArray *)v33 count]; ++i)
      {
        v52 = [(NSMutableArray *)v33 objectAtIndexedSubscript:i];
        [v52 startLocation];
        iBU_LOG_real(@"iBootHeader%lu loaded from offset: 0x%08lx (slot %lu)", "[IODualSPIWriter findHeaders]", v53, v54, v55, v56, v57, v58, i);
        if (![v52 imageAddress] || objc_msgSend(v52, "imageAddress") == -1)
        {
          v59 = [objc_msgSend(v10 objectAtIndexedSubscript:{0), "unsignedIntegerValue"}];
          [v10 removeObjectAtIndex:0];
          [v52 setImageAddress:v59];
          iBU_LOG_real(@"iBootHeader%lu payload is missing; using next available: 0x%08lx", "[IODualSPIWriter findHeaders]", v60, v61, v62, v63, v64, v65, i);
        }

        if ([v52 secondaryPayloadOffset])
        {
          if ([v52 secondaryPayloadOffset] == -1)
          {
            v66 = _usesExtendediBootRegion;
          }

          else
          {
            v66 = 0;
          }

          if ((v66 & 1) == 0)
          {
            continue;
          }
        }

        else if (!_usesExtendediBootRegion)
        {
          continue;
        }

        v67 = [objc_msgSend(v77 objectAtIndexedSubscript:{0), "unsignedIntegerValue"}];
        [v77 removeObjectAtIndex:0];
        [-[NSMutableArray objectAtIndexedSubscript:](v33 objectAtIndexedSubscript:{i), "setSecondaryPayloadOffset:", v67}];
        iBU_LOG_real(@"iBootHeader%lu secondary payload is missing, using next available: 0x%08lx", "[IODualSPIWriter findHeaders]", v68, v69, v70, v71, v72, v73, i);
      }
    }

    return [(NSMutableArray *)v33 copy];
  }

  else
  {
    iBU_LOG_real(@"Old style header", "[IODualSPIWriter findHeaders]", v3, v4, v5, v6, v7, v8, v74);
    v11 = *(&self->_regSize + 1);
    v12 = *v11;
    v13 = v11[2];
    v14 = v11[4];
    v15 = v11[6];
    v16 = [[MSUiBootHeaderV1 alloc] initWithIOServiceWriter:self];
    v17 = [[MSUiBootHeaderV1 alloc] initWithIOServiceWriter:self];
    if (![(MSUiBootHeaderV1 *)v16 loadHeaderAtOffset:v14])
    {
      iBU_LOG_real(@"Reading iBoot0 failed?!", "[IODualSPIWriter findHeaders]", v18, v19, v20, v21, v22, v23, v75);
    }

    [(MSUiBootHeader *)v16 setImageAddress:v12];
    if (![(MSUiBootHeaderV1 *)v17 loadHeaderAtOffset:v15])
    {
      iBU_LOG_real(@"Reading iBoot1 failed?!", "[IODualSPIWriter findHeaders]", v24, v25, v26, v27, v28, v29, v75);
    }

    [(MSUiBootHeader *)v17 setImageAddress:v13];
    v30 = [[NSArray alloc] initWithObjects:{v16, v17, 0}];

    return v30;
  }
}

- (id)readDataAtOffset:(unsigned int)offset ofLength:(unsigned int)length
{
  offsetCopy = offset;
  v7 = offset & 0xFFFFF000;
  v8 = ((offset + length + 4095) & 0xFFFFF000) - v7;
  v9 = malloc(v8);
  if ([(IODualSPIWriter *)self readDataAtOffset:v7 ofLength:v8 intoBuffer:v9])
  {
    v10 = 0;
  }

  else
  {
    v10 = [NSData dataWithBytes:&v9[offsetCopy & 0xFFF] length:length];
  }

  free(v9);
  return v10;
}

- (BOOL)verifyHeadersAtIndex:(unint64_t)index
{
  findHeaders = [(IODualSPIWriter *)self findHeaders];
  if ([findHeaders count] <= 1)
  {
    v23 = [findHeaders count];
    iBU_LOG_real(@"Only %d of 2 headers found, cannot verify", "[IODualSPIWriter verifyHeadersAtIndex:]", v5, v6, v7, v8, v9, v10, v23);
LABEL_3:
    v11 = 0;
    goto LABEL_9;
  }

  v12 = [findHeaders objectAtIndexedSubscript:0];
  v11 = 1;
  v13 = [findHeaders objectAtIndexedSubscript:1];
  v14 = [findHeaders objectAtIndexedSubscript:index];
  if (v14 == v12)
  {
    v12 = v13;
  }

  if ([v12 isValid])
  {
    headerGeneration = [v14 headerGeneration];
    if (headerGeneration > [v12 headerGeneration])
    {
      v11 = 1;
      goto LABEL_9;
    }

    [v12 headerGeneration];
    [v14 headerGeneration];
    iBU_LOG_real(@"Header at partition %lu does not have a larger generation count than existing valid header (%d !> %d)", "[IODualSPIWriter verifyHeadersAtIndex:]", v17, v18, v19, v20, v21, v22, index);
    goto LABEL_3;
  }

LABEL_9:

  return v11;
}

- (BOOL)verifyFirmwareAtIndex:(unint64_t)index againstData:(id)data
{
  findHeaders = [(IODualSPIWriter *)self findHeaders];
  if ([findHeaders count] >= index + 1)
  {
    v16 = [findHeaders objectAtIndexedSubscript:index];
    v17 = objc_autoreleasePoolPush();
    v15 = [-[IODualSPIWriter readDataAtOffset:ofLength:](self readDataAtOffset:objc_msgSend(v16 ofLength:{"imageAddress"), objc_msgSend(data, "length")), "isEqual:", data}];
    if ((v15 & 1) == 0)
    {
      iBU_LOG_real(@"Header %lu firmware image did not match reference firmware image (Stored %@ != Reference %@)", "[IODualSPIWriter verifyFirmwareAtIndex:againstData:]", v18, v19, v20, v21, v22, v23, index);
    }

    objc_autoreleasePoolPop(v17);
  }

  else
  {
    v8 = [findHeaders count];
    iBU_LOG_real(@"Only %d of %d necessary headers found, cannot verify", "[IODualSPIWriter verifyFirmwareAtIndex:againstData:]", v9, v10, v11, v12, v13, v14, v8);
    v15 = 0;
  }

  return v15;
}

- (int)_writeFirmware:(id)firmware toHeader:(id)header withError:(id *)error
{
  packStructure = [header packStructure];
  v10 = [[NSMutableData alloc] initWithData:firmware];
  bytes = [packStructure bytes];
  v112 = 0;
  _usesExtendediBootRegion = [(IODualSPIWriter *)self _usesExtendediBootRegion];
  _maxImageSize = [(IODualSPIWriter *)self _maxImageSize];
  v13 = [(IODualSPIWriter *)self _maxExtendedRegionSize]+ _maxImageSize;
  _maxImageSize2 = [(IODualSPIWriter *)self _maxImageSize];
  [(IODualSPIWriter *)self _maxExtendedRegionSize];
  if (![(IODualSPIWriter *)self usesAFUH])
  {
    goto LABEL_8;
  }

  if ([(IODualSPIWriter *)self _usesExtendediBootRegion])
  {
    iBU_LOG_real(@"Using iBoot extended region. iBootRegionSize (%d) + ExtendedRegionSize (%d) == maxImageSize (%d)", "[IODualSPIWriter _writeFirmware:toHeader:withError:]", v15, v16, v17, v18, v19, v20, _maxImageSize2);
  }

  v21 = [firmware length];
  v22 = [firmware length];
  if (v21 <= v13)
  {
    iBU_LOG_real(@"Increasing firmware payload length by %lu in order to zero-out remaining segment.", "[IODualSPIWriter _writeFirmware:toHeader:withError:]", v23, v24, v25, v26, v27, v28, v13 - v22);
    v36 = [firmware length];
    iBU_LOG_real(@"Old firmware payload size: %lu. New size: %d", "[IODualSPIWriter _writeFirmware:toHeader:withError:]", v37, v38, v39, v40, v41, v42, v36);
    [v10 increaseLengthBy:{v13 - objc_msgSend(firmware, "length")}];
LABEL_8:
    v43 = [v10 length];
    if (_maxImageSize2 >= v43)
    {
      v50 = v43;
    }

    else
    {
      v50 = _maxImageSize2;
    }

    iBU_LOG_real(@"Writing %d bytes (out of a possible %d) of the header payload: %@.", "[IODualSPIWriter _writeFirmware:toHeader:withError:]", v44, v45, v46, v47, v48, v49, v50);
    bytes2 = [v10 bytes];
    imageAddress = [header imageAddress];
    v53 = [v10 length];
    if (_maxImageSize2 >= v53)
    {
      v54 = v53;
    }

    else
    {
      v54 = _maxImageSize2;
    }

    v55 = [(IODualSPIWriter *)self _writeBytes:bytes2 atOffset:imageAddress ofLength:v54 withError:&v112];
    if (v55)
    {
      v29 = v55;
      imageAddress2 = [header imageAddress];
      iBU_LOG_real(@"Failed to write firmware images to offset 0x%x with error %d", "[IODualSPIWriter _writeFirmware:toHeader:withError:]", v57, v58, v59, v60, v61, v62, imageAddress2);
      if (!error)
      {
        return v29;
      }

      v63 = v112;
      imageAddress3 = [header imageAddress];
      v69 = @"Failed to write firmware images to offset 0x%x with error %d";
    }

    else
    {
      v71 = _maxImageSize2;
      v72 = ([v10 length] > _maxImageSize2) & _usesExtendediBootRegion;
      v73 = [v10 length];
      if (v72 == 1)
      {
        v80 = (v73 - _maxImageSize2);
        iBU_LOG_real(@"Writing remaining %d bytes of the header payload to the secondary offset: %@.", "[IODualSPIWriter _writeFirmware:toHeader:withError:]", v74, v75, v76, v77, v78, v79, v80);
        v81 = -[IODualSPIWriter _writeBytes:atOffset:ofLength:withError:](self, "_writeBytes:atOffset:ofLength:withError:", [v10 bytes] + v71, objc_msgSend(header, "secondaryPayloadOffset"), v80, &v112);
        if (v81)
        {
          v29 = v81;
          [header secondaryPayloadOffset];
          iBU_LOG_real(@"Failed to write remaining %d bytes of firmware images to offset 0x%x with error %d", "[IODualSPIWriter _writeFirmware:toHeader:withError:]", v82, v83, v84, v85, v86, v87, v80);
          if (!error)
          {
            return v29;
          }

          v63 = v112;
          [header secondaryPayloadOffset];
          imageAddress3 = v80;
          v69 = @"Failed to write reamining %d bytes firmware images to offset 0x%x with error %d";
          goto LABEL_17;
        }
      }

      else if (!((v73 <= _maxImageSize2) | _usesExtendediBootRegion & 1))
      {
        v29 = -536870212;
        v95 = [v10 length];
        iBU_LOG_real(@"State inconsistency detected. Firmware data length (%d) >? iBootRegionSize (%d) and usesIBootExtendedRegion is %d", "[IODualSPIWriter _writeFirmware:toHeader:withError:]", v96, v97, v98, v99, v100, v101, v95);
        if (!error)
        {
          return v29;
        }

        v102 = v112;
        v110 = [v10 length];
        v35 = MSUBootFirmwareError(3, v102, @"State inconsistency detected. Firmware data length (%d) >? iBootRegionSize (%d) and usesIBootExtendedRegion is %d", v103, v104, v105, v106, v107, v110);
        goto LABEL_18;
      }

      iBU_LOG_real(@"Writing header structure: %@.", "[IODualSPIWriter _writeFirmware:toHeader:withError:]", v74, v75, v76, v77, v78, v79, header);
      v29 = -[IODualSPIWriter _writeBytes:atOffset:ofLength:withError:](self, "_writeBytes:atOffset:ofLength:withError:", bytes, [header startLocation], objc_msgSend(packStructure, "length"), &v112);
      if (!v29)
      {

        return v29;
      }

      startLocation = [header startLocation];
      iBU_LOG_real(@"Failed to write header structure to offset 0x%x with error %d", "[IODualSPIWriter _writeFirmware:toHeader:withError:]", v89, v90, v91, v92, v93, v94, startLocation);
      if (!error)
      {
        return v29;
      }

      v63 = v112;
      imageAddress3 = [header startLocation];
      v69 = @"Failed to write header structure to offset 0x%x with error %d";
    }

LABEL_17:
    v35 = MSUBootFirmwareError(3, v63, v69, v64, v65, v66, v67, v68, imageAddress3);
    goto LABEL_18;
  }

  v29 = -536870212;
  iBU_LOG_real(@"Firmware payload %lul is larger than maximum payload size %d", "[IODualSPIWriter _writeFirmware:toHeader:withError:]", v23, v24, v25, v26, v27, v28, v22);
  if (error)
  {
    v108 = [firmware length];
    v35 = MSUBootFirmwareError(3, 0, @"Firmware payload %lul is larger than maximum payload size %d", v30, v31, v32, v33, v34, v108);
LABEL_18:
    *error = v35;
  }

  return v29;
}

- (int)_commitHeader:(id)header withError:(id *)error
{
  if ([header isValid])
  {
    if (error)
    {
      *error = MSUBootFirmwareError(4, 0, @"Header wasn't prepared / invalid at time of commit: %@", v7, v8, v9, v10, v11, header);
    }

    return -536870212;
  }

  else
  {
    [header makeValid];
    packStructure = [header packStructure];
    bytes = [packStructure bytes];
    iBU_LOG_real(@"Committing valid header via flash as: %@", "[IODualSPIWriter _commitHeader:withError:]", v15, v16, v17, v18, v19, v20, header);
    startLocation = [header startLocation];
    v22 = [packStructure length];

    return [(IODualSPIWriter *)self _writeBytes:bytes atOffset:startLocation ofLength:v22 withError:error];
  }
}

- (void)dealloc
{
  v3 = *&self->_usesAFUH;
  if (v3)
  {
    IOServiceClose(v3);
  }

  v4.receiver = self;
  v4.super_class = IODualSPIWriter;
  [(IOServiceWriter *)&v4 dealloc];
}

@end