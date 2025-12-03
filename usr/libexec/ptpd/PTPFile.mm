@interface PTPFile
- (BOOL)hasThumbnail;
- (PTPDataSource)dataSource;
- (PTPFile)initWithPHPTPAsset:(id)asset supportedFormats:(id)formats andParent:(id)parent;
- (id)metadata;
- (id)parent;
- (id)thumbnailForMaxPixelSize:(unsigned int)size compressedSize:(unint64_t *)compressedSize;
- (timespec)captureTimeSpec;
- (void)assignPTPObjectFormatCode:(id)code supportedFormats:(id)formats;
@end

@implementation PTPFile

- (PTPFile)initWithPHPTPAsset:(id)asset supportedFormats:(id)formats andParent:(id)parent
{
  assetCopy = asset;
  formatsCopy = formats;
  parentCopy = parent;
  v72.receiver = self;
  v72.super_class = PTPFile;
  v11 = [(PTPFile *)&v72 init];
  if (v11)
  {
    filename = [assetCopy filename];
    stringByDeletingPathExtension = [filename stringByDeletingPathExtension];
    v14 = [stringByDeletingPathExtension copy];
    baseName = v11->_baseName;
    v11->_baseName = v14;

    objectCompressedSize = [assetCopy objectCompressedSize];
    v11->_size = [objectCompressedSize unsignedLongLongValue];

    storage = [parentCopy storage];
    *&v11->_irisAsset = [storage storageID];

    objc_storeWeak(&v11->_parent, parentCopy);
    [(PTPItem *)v11 setObjectHandle:sub_100004214()];
    v18 = objc_alloc_init(PTPObjectInfoDataset);
    objectInfoDataset = v11->_objectInfoDataset;
    v11->_objectInfoDataset = v18;

    v11->_storageID = [assetCopy desiredOrientation];
    [(PTPFile *)v11 assignPTPObjectFormatCode:assetCopy supportedFormats:formatsCopy];
    [(PTPObjectInfoDataset *)v11->_objectInfoDataset setStorageID:*&v11->_irisAsset];
    [(PTPObjectInfoDataset *)v11->_objectInfoDataset setObjectCompressedSize:v11->_size];
    [(PTPObjectInfoDataset *)v11->_objectInfoDataset setProtectionStatus:0];
    -[PTPObjectInfoDataset setParentObject:](v11->_objectInfoDataset, "setParentObject:", [parentCopy objectHandle]);
    -[PTPObjectInfoDataset setSequenceNumber:](v11->_objectInfoDataset, "setSequenceNumber:", [assetCopy conversionGroup]);
    [(PTPObjectInfoDataset *)v11->_objectInfoDataset setFilename:filename];
    [(PTPObjectInfoDataset *)v11->_objectInfoDataset setObjectHandle:[(PTPItem *)v11 objectHandle]];
    v20 = v11->_objectInfoDataset;
    [assetCopy imagePixSize];
    [(PTPObjectInfoDataset *)v20 setImagePixWidth:v21];
    v22 = v11->_objectInfoDataset;
    [assetCopy imagePixSize];
    [(PTPObjectInfoDataset *)v22 setImagePixHeight:v23];
    v24 = v11->_objectInfoDataset;
    thumbOffset = [assetCopy thumbOffset];
    -[PTPObjectInfoDataset setThumbOffset:](v24, "setThumbOffset:", [thumbOffset unsignedIntValue]);

    thumbCompressedSize = [assetCopy thumbCompressedSize];
    unsignedIntValue = [thumbCompressedSize unsignedIntValue];

    if (unsignedIntValue)
    {
      thumbOffset2 = [assetCopy thumbOffset];
      unsignedIntValue2 = [thumbOffset2 unsignedIntValue];

      v30 = v11->_objectInfoDataset;
      if (unsignedIntValue2)
      {
        [(PTPObjectInfoDataset *)v30 setThumbOffset:unsignedIntValue2];
        v30 = v11->_objectInfoDataset;
        v31 = unsignedIntValue;
      }

      else
      {
        size = v11->_size;
        v31 = size >= 0x4000 ? 0x4000 : size;
      }

      [(PTPObjectInfoDataset *)v30 setThumbCompressedSize:v31];
      [(PTPObjectInfoDataset *)v11->_objectInfoDataset setThumbFormat:14344];
      [assetCopy thumbPixSize];
      v35 = v34;
      if (v33 != CGSizeZero.width || v34 != CGSizeZero.height)
      {
        [(PTPObjectInfoDataset *)v11->_objectInfoDataset setThumbPixWidth:v33];
        [(PTPObjectInfoDataset *)v11->_objectInfoDataset setThumbPixHeight:v35];
      }
    }

    captureDateString = [assetCopy captureDateString];
    if (captureDateString)
    {
      [(PTPObjectInfoDataset *)v11->_objectInfoDataset setCaptureDate:captureDateString];
    }

    modificationDateString = [assetCopy modificationDateString];

    if (modificationDateString)
    {
      [(PTPObjectInfoDataset *)v11->_objectInfoDataset setModificationDate:modificationDateString];
    }

    assetHandle = [assetCopy assetHandle];
    plAssetHandle = v11->_plAssetHandle;
    v11->_plAssetHandle = assetHandle;

    ++dword_1000403A4;
    if (v11->_size >= &_mh_execute_header)
    {
      ++dword_1000403A8;
    }

    groupUUID = [assetCopy groupUUID];
    *(&v11->super._objectHandle + 4) = groupUUID != 0;

    v41 = v11->_objectInfoDataset;
    createdFilename = [assetCopy createdFilename];
    [(PTPObjectInfoDataset *)v41 addCustomKeyword:createdFilename withIdentifier:@"CFN"];

    v43 = v11->_objectInfoDataset;
    fingerprint = [assetCopy fingerprint];
    [(PTPObjectInfoDataset *)v43 addCustomKeyword:fingerprint withIdentifier:@"FPRINT"];

    v45 = v11->_objectInfoDataset;
    durationString = [assetCopy durationString];
    [(PTPObjectInfoDataset *)v45 addCustomKeyword:durationString withIdentifier:@"D"];

    v47 = v11->_objectInfoDataset;
    groupUUID2 = [assetCopy groupUUID];
    [(PTPObjectInfoDataset *)v47 addCustomKeyword:groupUUID2 withIdentifier:@"GUUID"];

    v49 = v11->_objectInfoDataset;
    relatedUUID = [assetCopy relatedUUID];
    [(PTPObjectInfoDataset *)v49 addCustomKeyword:relatedUUID withIdentifier:@"RUUID"];

    v51 = v11->_objectInfoDataset;
    originatingAssetID = [assetCopy originatingAssetID];
    [(PTPObjectInfoDataset *)v51 addCustomKeyword:originatingAssetID withIdentifier:@"OAID"];

    v53 = v11->_objectInfoDataset;
    spatialOverCaptureGroupIdentifier = [assetCopy spatialOverCaptureGroupIdentifier];
    [(PTPObjectInfoDataset *)v53 addCustomKeyword:spatialOverCaptureGroupIdentifier withIdentifier:@"SOCGID"];

    v55 = v11->_objectInfoDataset;
    locationString = [assetCopy locationString];
    [(PTPObjectInfoDataset *)v55 addCustomKeyword:locationString withIdentifier:@"G"];

    if ([assetCopy isBurstFavorite])
    {
      v57 = v11->_objectInfoDataset;
      v58 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [assetCopy isBurstFavorite]);
      [(PTPObjectInfoDataset *)v57 addCustomKeyword:v58 withIdentifier:@"BFAV"];
    }

    if ([assetCopy isBurstPicked])
    {
      v59 = v11->_objectInfoDataset;
      v60 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [assetCopy isBurstPicked]);
      [(PTPObjectInfoDataset *)v59 addCustomKeyword:v60 withIdentifier:@"BPIK"];
    }

    if ([assetCopy isBurstFirstPicked])
    {
      v61 = v11->_objectInfoDataset;
      v62 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [assetCopy isBurstFirstPicked]);
      [(PTPObjectInfoDataset *)v61 addCustomKeyword:v62 withIdentifier:@"FPIK"];
    }

    if ([assetCopy isHighFrameRateVideo])
    {
      v63 = v11->_objectInfoDataset;
      v64 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [assetCopy isHighFrameRateVideo]);
      [(PTPObjectInfoDataset *)v63 addCustomKeyword:v64 withIdentifier:@"HFRV"];
    }

    if ([assetCopy isTimeLapseVideo])
    {
      v65 = v11->_objectInfoDataset;
      v66 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [assetCopy isTimeLapseVideo]);
      [(PTPObjectInfoDataset *)v65 addCustomKeyword:v66 withIdentifier:@"TLV"];
    }

    v67 = v11->_objectInfoDataset;
    burstUUID = [assetCopy burstUUID];
    [(PTPObjectInfoDataset *)v67 addCustomKeyword:burstUUID withIdentifier:@"BUUID"];

    v69 = v11->_objectInfoDataset;
    originalFilename = [assetCopy originalFilename];
    [(PTPObjectInfoDataset *)v69 addCustomKeyword:originalFilename withIdentifier:@"ON"];
  }

  return v11;
}

- (void)assignPTPObjectFormatCode:(id)code supportedFormats:(id)formats
{
  codeCopy = code;
  formatsCopy = formats;
  filename = [codeCopy filename];
  pathExtension = [filename pathExtension];
  uTF8String = [pathExtension UTF8String];

  if (!strncasecmp(uTF8String, "JPG", 3uLL) || !strncasecmp(uTF8String, "JPEG", 4uLL))
  {
    v10 = 14337;
    goto LABEL_52;
  }

  if (!strncasecmp(uTF8String, "AAE", 3uLL) || !strncasecmp(uTF8String, "DBG", 3uLL))
  {
    goto LABEL_47;
  }

  if (!strncasecmp(uTF8String, "HEIF", 4uLL) || !strncasecmp(uTF8String, "AVCI", 4uLL))
  {
    v11 = [formatsCopy containsObject:@"ptp.hevc"] == 0;
    v12 = 12301;
    v13 = -19423;
    goto LABEL_49;
  }

  if (!strncasecmp(uTF8String, "HEIC", 4uLL))
  {
    v11 = [formatsCopy containsObject:@"ptp.heic"] == 0;
    v12 = 14337;
    v13 = -19455;
    goto LABEL_49;
  }

  if (!strncasecmp(uTF8String, "HEICS", 5uLL))
  {
    v11 = [formatsCopy containsObject:@"ptp.heics"] == 0;
    v12 = 14337;
    v13 = -19454;
LABEL_49:
    if (v11)
    {
      v10 = v12;
    }

    else
    {
      v10 = v13;
    }

    goto LABEL_52;
  }

  if (!strncasecmp(uTF8String, "MOV", 3uLL))
  {
    v10 = 12301;
    if ([formatsCopy containsObject:@"ptp.hevc"])
    {
      if ([codeCopy videoCodec] == 1752589105)
      {
        v10 = -19423;
      }

      else
      {
        v10 = 12301;
      }
    }
  }

  else if (!strncasecmp(uTF8String, "PNG", 3uLL))
  {
    v10 = 14347;
  }

  else if (!strncasecmp(uTF8String, "QT", 2uLL) || !strncasecmp(uTF8String, "MQV", 3uLL) || !strncasecmp(uTF8String, "MP4", 3uLL) || !strncasecmp(uTF8String, "M4V", 3uLL) || !strncasecmp(uTF8String, "3GP", 3uLL) || !strncasecmp(uTF8String, "3G2", 3uLL))
  {
    v10 = 12301;
  }

  else if (!strncasecmp(uTF8String, "AVI", 3uLL))
  {
    v10 = 12298;
  }

  else if (!strncasecmp(uTF8String, "WAV", 3uLL))
  {
    v10 = 12296;
  }

  else if (!strncasecmp(uTF8String, "ASF", 3uLL))
  {
    v10 = 12300;
  }

  else if (!strncasecmp(uTF8String, "AIF", 3uLL) || !strncasecmp(uTF8String, "AIFF", 4uLL) || !strncasecmp(uTF8String, "M4A", 3uLL) || !strncasecmp(uTF8String, "M4B", 3uLL) || !strncasecmp(uTF8String, "M4R", 3uLL))
  {
    v10 = 12295;
  }

  else if (!strncasecmp(uTF8String, "MP3", 3uLL))
  {
    v10 = 12297;
  }

  else
  {
    if (strncasecmp(uTF8String, "GIF", 3uLL))
    {
      if (strncasecmp(uTF8String, "XMP", 3uLL))
      {
        if (!strncasecmp(uTF8String, "XML", 3uLL))
        {
          v10 = 12302;
        }

        else if (!strncasecmp(uTF8String, "BMP", 3uLL))
        {
          v10 = 14340;
        }

        else if (!strncasecmp(uTF8String, "TIF", 3uLL) || !strncasecmp(uTF8String, "TIFF", 4uLL))
        {
          v10 = 14349;
        }

        else if (!strncasecmp(uTF8String, "TXT", 3uLL) || !strncasecmp(uTF8String, "TEXT", 4uLL))
        {
          v10 = 12292;
        }

        else if (!strncasecmp(uTF8String, "HTM", 3uLL) || !strncasecmp(uTF8String, "HTML", 4uLL))
        {
          v10 = 12293;
        }

        else if (!strncasecmp(uTF8String, "CIF", 3uLL) || !strncasecmp(uTF8String, "CIFF", 4uLL))
        {
          v10 = 14341;
        }

        else if (!strncasecmp(uTF8String, "PIC", 3uLL) || !strncasecmp(uTF8String, "PICT", 4uLL))
        {
          v10 = 14346;
        }

        else if (!strncasecmp(uTF8String, "JP2", 3uLL))
        {
          v10 = 14351;
        }

        else if (!strncasecmp(uTF8String, "JPX", 3uLL))
        {
          v10 = 14352;
        }

        else if (!strncasecmp(uTF8String, "PCD", 3uLL))
        {
          v10 = 14345;
        }

        else if (!strncasecmp(uTF8String, "FPX", 3uLL))
        {
          v10 = 14339;
        }

        else
        {
          v10 = 12288;
        }

        goto LABEL_52;
      }

LABEL_47:
      v10 = 12288;
      goto LABEL_52;
    }

    v10 = 14343;
  }

LABEL_52:
  [(PTPObjectInfoDataset *)self->_objectInfoDataset setObjectFormat:v10];
}

- (BOOL)hasThumbnail
{
  objectInfoDataset = [(PTPFile *)self objectInfoDataset];
  if ([objectInfoDataset thumbCompressedSize])
  {
    v3 = [objectInfoDataset thumbFormat] == 14344;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)thumbnailForMaxPixelSize:(unsigned int)size compressedSize:(unint64_t *)compressedSize
{
  v7 = objc_autoreleasePoolPush();
  plAssetHandle = [(PTPFile *)self plAssetHandle];
  v9 = sub_10000C470();
  if (size != 160 && size)
  {
    imagePixWidth = [(PTPObjectInfoDataset *)self->_objectInfoDataset imagePixWidth];
    imagePixHeight = [(PTPObjectInfoDataset *)self->_objectInfoDataset imagePixHeight];
    if (imagePixWidth)
    {
      v22 = imagePixHeight == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_21;
    }

    if (imagePixWidth < imagePixHeight)
    {
      v23 = imagePixHeight;
    }

    else
    {
      v23 = imagePixWidth;
    }

    sizeCopy = (v23 * 0.5);
    if (v23 * 0.5 >= size)
    {
      sizeCopy = size;
    }

    v25 = v23 / sizeCopy;
    if (v25 == 0.0)
    {
LABEL_21:
      v28 = 160.0;
      v29 = 120.0;
    }

    else
    {
      v26 = imagePixWidth / v25;
      v27 = imagePixHeight / v25;
      v28 = fabsf(ceilf(v26));
      v29 = fabsf(ceilf(v27));
    }

    __ICOSLogCreate();
    baseName = [(PTPFile *)self baseName];
    if ([baseName length] >= 0x15)
    {
      v31 = [baseName substringWithRange:{0, 18}];
      v32 = [v31 stringByAppendingString:@".."];

      baseName = v32;
    }

    v33 = [NSString stringWithFormat:@"Requesting custom thumbnail of size: (%f x %f)", *&v28, *&v29];
    v34 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v35 = baseName;
      v36 = v34;
      *buf = 136446466;
      uTF8String = [baseName UTF8String];
      v46 = 2114;
      v47 = v33;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    LODWORD(v37) = 1064514355;
    v19 = [v9 ptpThumbnailForAssetHandle:plAssetHandle size:v28 compressionQuality:{v29, v37}];
    *compressedSize = [v19 length];
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  else
  {
    objectInfoDataset = [(PTPFile *)self objectInfoDataset];
    *compressedSize = [objectInfoDataset thumbCompressedSize];

    if (!v9)
    {
      goto LABEL_27;
    }

    __ICOSLogCreate();
    baseName2 = [(PTPFile *)self baseName];
    if ([baseName2 length] >= 0x15)
    {
      v12 = [baseName2 substringWithRange:{0, 18}];
      v13 = [v12 stringByAppendingString:@".."];

      baseName2 = v13;
    }

    0x405E000000000000 = [NSString stringWithFormat:@"Requesting standard thumbnail of size: (%f x %f)", 0x4064000000000000, 0x405E000000000000];
    v15 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = baseName2;
      v17 = v15;
      *buf = 136446466;
      uTF8String = [baseName2 UTF8String];
      v46 = 2114;
      v47 = 0x405E000000000000;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    LODWORD(v18) = 1.0;
    v19 = [v9 ptpThumbnailForAssetHandle:plAssetHandle size:160.0 compressionQuality:{120.0, v18}];
    if (!v19)
    {
LABEL_27:
      __ICOSLogCreate();
      baseName3 = [(PTPFile *)self baseName];
      if ([baseName3 length] >= 0x15)
      {
        v39 = [baseName3 substringWithRange:{0, 18}];
        v40 = [v39 stringByAppendingString:@".."];

        baseName3 = v40;
      }

      v41 = [NSString stringWithFormat:@"Failed to retrieve a thumbnail from the Photo Library"];
      v42 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
      {
        sub_100024884(baseName3, v42);
      }

      v19 = 0;
    }
  }

  objc_autoreleasePoolPop(v7);

  return v19;
}

- (id)metadata
{
  plAssetHandle = [(PTPFile *)self plAssetHandle];
  v4 = sub_10000C470();
  v5 = v4;
  if (!v4 || ([v4 ptpImagePropertiesForAssetHandle:plAssetHandle], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    __ICOSLogCreate();
    baseName = [(PTPFile *)self baseName];
    if ([baseName length] >= 0x15)
    {
      v8 = [baseName substringWithRange:{0, 18}];
      v9 = [v8 stringByAppendingString:@".."];

      baseName = v9;
    }

    v10 = [NSString stringWithFormat:@"Failed to retrieve metadata from the Photo Library"];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_100024884(baseName, v11);
    }

    v6 = 0;
  }

  return v6;
}

- (PTPDataSource)dataSource
{
  dataSource = self->_dataSource;
  if (!dataSource)
  {
    v4 = [PTPDataSource alloc];
    plAssetHandle = self->_plAssetHandle;
    size = self->_size;
    v7 = [NSString stringWithFormat:@"com.apple.ptpd-%@", self->_baseName];
    v8 = [(PTPDataSource *)v4 initWithAssetHandle:plAssetHandle assetSize:size andQueueName:v7];
    v9 = self->_dataSource;
    self->_dataSource = v8;

    dataSource = self->_dataSource;
  }

  return dataSource;
}

- (timespec)captureTimeSpec
{
  p_captureTimeSpec = &self->_captureTimeSpec;
  tv_sec = self->_captureTimeSpec.tv_sec;
  tv_nsec = p_captureTimeSpec->tv_nsec;
  result.tv_nsec = tv_nsec;
  result.tv_sec = tv_sec;
  return result;
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end