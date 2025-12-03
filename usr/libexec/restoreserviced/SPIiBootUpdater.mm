@interface SPIiBootUpdater
+ (id)IOMatchingPropertyTable;
- (BOOL)updateBootFirmwareWithError:(id *)error;
- (id)_stitchFirmwareImage;
- (void)dealloc;
@end

@implementation SPIiBootUpdater

+ (id)IOMatchingPropertyTable
{
  v3 = @"IOProviderClass";
  v4 = @"AppleEmbeddedSimpleSPINORFlasherDriver";
  return [NSDictionary dictionaryWithObjects:&v4 forKeys:&v3 count:1];
}

- (BOOL)updateBootFirmwareWithError:(id *)error
{
  v57 = 0;
  if (![(IOServiceWriter *)[(SPIiBootUpdater *)self writer] isAvailable])
  {
    writer = [(SPIiBootUpdater *)self writer];
    iBU_LOG_real(@"SPIWriter %@ was unavailable at write-time", "[SPIiBootUpdater updateBootFirmwareWithError:]", v35, v36, v37, v38, v39, v40, writer);
    if (error)
    {
      writer2 = [(SPIiBootUpdater *)self writer];
      v46 = MSUBootFirmwareError(6, 0, @"SPIWriter %@ was unavailable at write-time", v41, v42, v43, v44, v45, writer2);
LABEL_15:
      v13 = 0;
      *error = v46;
      return v13;
    }

    return 0;
  }

  _stitchFirmwareImage = [(SPIiBootUpdater *)self _stitchFirmwareImage];
  [(IOServiceWriter *)[(SPIiBootUpdater *)self writer] setIsErase:[(MSUBootFirmwareUpdater *)self isErase]];
  [(IOServiceWriter *)[(SPIiBootUpdater *)self writer] setShouldCommit:[(MSUBootFirmwareUpdater *)self shouldCommit]];
  if (!_stitchFirmwareImage)
  {
    iBU_LOG_real(@"SPI writer firmware data was nil!", "[SPIiBootUpdater updateBootFirmwareWithError:]", v6, v7, v8, v9, v10, v11, v53);
    if (error)
    {
      v46 = MSUBootFirmwareError(6, 0, @"SPI writer firmware data was nil!", v47, v48, v49, v50, v51, v56);
      goto LABEL_15;
    }

    return 0;
  }

  iBU_LOG_real(@"Beginning write of iBoot data block to writer.", "[SPIiBootUpdater updateBootFirmwareWithError:]", v6, v7, v8, v9, v10, v11, v53);
  v12 = [(IOServiceWriter *)[(SPIiBootUpdater *)self writer] writeData:_stitchFirmwareImage withError:&v57];
  v13 = v12 == 0;
  if (v12)
  {
    writer3 = [(SPIiBootUpdater *)self writer];
    iBU_LOG_real(@"Updater %@ failed to write to SPI", "[SPIiBootUpdater updateBootFirmwareWithError:]", v15, v16, v17, v18, v19, v20, writer3);
    if (error)
    {
      v21 = v57;
      writer4 = [(SPIiBootUpdater *)self writer];
      *error = MSUBootFirmwareError(3, v21, @"Updater %@ failed to write to SPI", v23, v24, v25, v26, v27, writer4);
    }
  }

  if (![(IOServiceWriter *)[(SPIiBootUpdater *)self writer] finished])
  {
    iBU_LOG_real(@"Failed to clean up SPI iBoot writer.", "[SPIiBootUpdater updateBootFirmwareWithError:]", v28, v29, v30, v31, v32, v33, v54);
  }

  if (v12)
  {
    iBU_LOG_real(@"Failed to fully update iBoot firmware images", "[SPIiBootUpdater updateBootFirmwareWithError:]", v28, v29, v30, v31, v32, v33, v54);
  }

  return v13;
}

- (id)_stitchFirmwareImage
{
  llbData = [(MSUBootFirmwareUpdater *)self llbData];
  ibootData = [(MSUBootFirmwareUpdater *)self ibootData];
  ans2Data = [(MSUBootFirmwareUpdater *)self ans2Data];
  logoData = [(MSUBootFirmwareUpdater *)self logoData];
  _restoreInfoDictionary = [(MSUBootFirmwareUpdater *)self _restoreInfoDictionary];
  v8 = [(MSUBootFirmwareUpdater *)self _encodeFirmware:llbData withRestoreInfo:_restoreInfoDictionary];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [[NSMutableData alloc] initWithCapacity:{-[NSData length](ibootData, "length") + -[NSData length](llbData, "length") + 100}];
  [v10 appendData:v9];

  if (ibootData)
  {
    if (v10)
    {
      v11 = [(MSUBootFirmwareUpdater *)self _encodeFirmware:ibootData withRestoreInfo:_restoreInfoDictionary];
      if (v11)
      {
        v12 = v11;
        [v10 appendData:v11];
      }
    }
  }

  if (ans2Data)
  {
    if (v10)
    {
      v13 = [(MSUBootFirmwareUpdater *)self _encodeFirmware:ans2Data withRestoreInfo:_restoreInfoDictionary];
      if (v13)
      {
        v14 = v13;
        [v10 appendData:v13];
      }
    }
  }

  if (logoData)
  {
    if (v10)
    {
      v15 = [(MSUBootFirmwareUpdater *)self _encodeFirmware:logoData withRestoreInfo:_restoreInfoDictionary];
      if (v15)
      {
        v16 = v15;
        [v10 appendData:v15];
      }
    }
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SPIiBootUpdater;
  [(MSUBootFirmwareUpdater *)&v3 dealloc];
}

@end