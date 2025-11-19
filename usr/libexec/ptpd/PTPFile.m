@interface PTPFile
- (BOOL)hasThumbnail;
- (PTPDataSource)dataSource;
- (PTPFile)initWithPHPTPAsset:(id)a3 supportedFormats:(id)a4 andParent:(id)a5;
- (id)metadata;
- (id)parent;
- (id)thumbnailForMaxPixelSize:(unsigned int)a3 compressedSize:(unint64_t *)a4;
- (timespec)captureTimeSpec;
- (void)assignPTPObjectFormatCode:(id)a3 supportedFormats:(id)a4;
@end

@implementation PTPFile

- (PTPFile)initWithPHPTPAsset:(id)a3 supportedFormats:(id)a4 andParent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v72.receiver = self;
  v72.super_class = PTPFile;
  v11 = [(PTPFile *)&v72 init];
  if (v11)
  {
    v12 = [v8 filename];
    v13 = [v12 stringByDeletingPathExtension];
    v14 = [v13 copy];
    baseName = v11->_baseName;
    v11->_baseName = v14;

    v16 = [v8 objectCompressedSize];
    v11->_size = [v16 unsignedLongLongValue];

    v17 = [v10 storage];
    *&v11->_irisAsset = [v17 storageID];

    objc_storeWeak(&v11->_parent, v10);
    [(PTPItem *)v11 setObjectHandle:sub_100004214()];
    v18 = objc_alloc_init(PTPObjectInfoDataset);
    objectInfoDataset = v11->_objectInfoDataset;
    v11->_objectInfoDataset = v18;

    v11->_storageID = [v8 desiredOrientation];
    [(PTPFile *)v11 assignPTPObjectFormatCode:v8 supportedFormats:v9];
    [(PTPObjectInfoDataset *)v11->_objectInfoDataset setStorageID:*&v11->_irisAsset];
    [(PTPObjectInfoDataset *)v11->_objectInfoDataset setObjectCompressedSize:v11->_size];
    [(PTPObjectInfoDataset *)v11->_objectInfoDataset setProtectionStatus:0];
    -[PTPObjectInfoDataset setParentObject:](v11->_objectInfoDataset, "setParentObject:", [v10 objectHandle]);
    -[PTPObjectInfoDataset setSequenceNumber:](v11->_objectInfoDataset, "setSequenceNumber:", [v8 conversionGroup]);
    [(PTPObjectInfoDataset *)v11->_objectInfoDataset setFilename:v12];
    [(PTPObjectInfoDataset *)v11->_objectInfoDataset setObjectHandle:[(PTPItem *)v11 objectHandle]];
    v20 = v11->_objectInfoDataset;
    [v8 imagePixSize];
    [(PTPObjectInfoDataset *)v20 setImagePixWidth:v21];
    v22 = v11->_objectInfoDataset;
    [v8 imagePixSize];
    [(PTPObjectInfoDataset *)v22 setImagePixHeight:v23];
    v24 = v11->_objectInfoDataset;
    v25 = [v8 thumbOffset];
    -[PTPObjectInfoDataset setThumbOffset:](v24, "setThumbOffset:", [v25 unsignedIntValue]);

    v26 = [v8 thumbCompressedSize];
    v27 = [v26 unsignedIntValue];

    if (v27)
    {
      v28 = [v8 thumbOffset];
      v29 = [v28 unsignedIntValue];

      v30 = v11->_objectInfoDataset;
      if (v29)
      {
        [(PTPObjectInfoDataset *)v30 setThumbOffset:v29];
        v30 = v11->_objectInfoDataset;
        v31 = v27;
      }

      else
      {
        size = v11->_size;
        v31 = size >= 0x4000 ? 0x4000 : size;
      }

      [(PTPObjectInfoDataset *)v30 setThumbCompressedSize:v31];
      [(PTPObjectInfoDataset *)v11->_objectInfoDataset setThumbFormat:14344];
      [v8 thumbPixSize];
      v35 = v34;
      if (v33 != CGSizeZero.width || v34 != CGSizeZero.height)
      {
        [(PTPObjectInfoDataset *)v11->_objectInfoDataset setThumbPixWidth:v33];
        [(PTPObjectInfoDataset *)v11->_objectInfoDataset setThumbPixHeight:v35];
      }
    }

    v36 = [v8 captureDateString];
    if (v36)
    {
      [(PTPObjectInfoDataset *)v11->_objectInfoDataset setCaptureDate:v36];
    }

    v37 = [v8 modificationDateString];

    if (v37)
    {
      [(PTPObjectInfoDataset *)v11->_objectInfoDataset setModificationDate:v37];
    }

    v38 = [v8 assetHandle];
    plAssetHandle = v11->_plAssetHandle;
    v11->_plAssetHandle = v38;

    ++dword_1000403A4;
    if (v11->_size >= &_mh_execute_header)
    {
      ++dword_1000403A8;
    }

    v40 = [v8 groupUUID];
    *(&v11->super._objectHandle + 4) = v40 != 0;

    v41 = v11->_objectInfoDataset;
    v42 = [v8 createdFilename];
    [(PTPObjectInfoDataset *)v41 addCustomKeyword:v42 withIdentifier:@"CFN"];

    v43 = v11->_objectInfoDataset;
    v44 = [v8 fingerprint];
    [(PTPObjectInfoDataset *)v43 addCustomKeyword:v44 withIdentifier:@"FPRINT"];

    v45 = v11->_objectInfoDataset;
    v46 = [v8 durationString];
    [(PTPObjectInfoDataset *)v45 addCustomKeyword:v46 withIdentifier:@"D"];

    v47 = v11->_objectInfoDataset;
    v48 = [v8 groupUUID];
    [(PTPObjectInfoDataset *)v47 addCustomKeyword:v48 withIdentifier:@"GUUID"];

    v49 = v11->_objectInfoDataset;
    v50 = [v8 relatedUUID];
    [(PTPObjectInfoDataset *)v49 addCustomKeyword:v50 withIdentifier:@"RUUID"];

    v51 = v11->_objectInfoDataset;
    v52 = [v8 originatingAssetID];
    [(PTPObjectInfoDataset *)v51 addCustomKeyword:v52 withIdentifier:@"OAID"];

    v53 = v11->_objectInfoDataset;
    v54 = [v8 spatialOverCaptureGroupIdentifier];
    [(PTPObjectInfoDataset *)v53 addCustomKeyword:v54 withIdentifier:@"SOCGID"];

    v55 = v11->_objectInfoDataset;
    v56 = [v8 locationString];
    [(PTPObjectInfoDataset *)v55 addCustomKeyword:v56 withIdentifier:@"G"];

    if ([v8 isBurstFavorite])
    {
      v57 = v11->_objectInfoDataset;
      v58 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v8 isBurstFavorite]);
      [(PTPObjectInfoDataset *)v57 addCustomKeyword:v58 withIdentifier:@"BFAV"];
    }

    if ([v8 isBurstPicked])
    {
      v59 = v11->_objectInfoDataset;
      v60 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v8 isBurstPicked]);
      [(PTPObjectInfoDataset *)v59 addCustomKeyword:v60 withIdentifier:@"BPIK"];
    }

    if ([v8 isBurstFirstPicked])
    {
      v61 = v11->_objectInfoDataset;
      v62 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v8 isBurstFirstPicked]);
      [(PTPObjectInfoDataset *)v61 addCustomKeyword:v62 withIdentifier:@"FPIK"];
    }

    if ([v8 isHighFrameRateVideo])
    {
      v63 = v11->_objectInfoDataset;
      v64 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v8 isHighFrameRateVideo]);
      [(PTPObjectInfoDataset *)v63 addCustomKeyword:v64 withIdentifier:@"HFRV"];
    }

    if ([v8 isTimeLapseVideo])
    {
      v65 = v11->_objectInfoDataset;
      v66 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%d", [v8 isTimeLapseVideo]);
      [(PTPObjectInfoDataset *)v65 addCustomKeyword:v66 withIdentifier:@"TLV"];
    }

    v67 = v11->_objectInfoDataset;
    v68 = [v8 burstUUID];
    [(PTPObjectInfoDataset *)v67 addCustomKeyword:v68 withIdentifier:@"BUUID"];

    v69 = v11->_objectInfoDataset;
    v70 = [v8 originalFilename];
    [(PTPObjectInfoDataset *)v69 addCustomKeyword:v70 withIdentifier:@"ON"];
  }

  return v11;
}

- (void)assignPTPObjectFormatCode:(id)a3 supportedFormats:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [v14 filename];
  v8 = [v7 pathExtension];
  v9 = [v8 UTF8String];

  if (!strncasecmp(v9, "JPG", 3uLL) || !strncasecmp(v9, "JPEG", 4uLL))
  {
    v10 = 14337;
    goto LABEL_52;
  }

  if (!strncasecmp(v9, "AAE", 3uLL) || !strncasecmp(v9, "DBG", 3uLL))
  {
    goto LABEL_47;
  }

  if (!strncasecmp(v9, "HEIF", 4uLL) || !strncasecmp(v9, "AVCI", 4uLL))
  {
    v11 = [v6 containsObject:@"ptp.hevc"] == 0;
    v12 = 12301;
    v13 = -19423;
    goto LABEL_49;
  }

  if (!strncasecmp(v9, "HEIC", 4uLL))
  {
    v11 = [v6 containsObject:@"ptp.heic"] == 0;
    v12 = 14337;
    v13 = -19455;
    goto LABEL_49;
  }

  if (!strncasecmp(v9, "HEICS", 5uLL))
  {
    v11 = [v6 containsObject:@"ptp.heics"] == 0;
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

  if (!strncasecmp(v9, "MOV", 3uLL))
  {
    v10 = 12301;
    if ([v6 containsObject:@"ptp.hevc"])
    {
      if ([v14 videoCodec] == 1752589105)
      {
        v10 = -19423;
      }

      else
      {
        v10 = 12301;
      }
    }
  }

  else if (!strncasecmp(v9, "PNG", 3uLL))
  {
    v10 = 14347;
  }

  else if (!strncasecmp(v9, "QT", 2uLL) || !strncasecmp(v9, "MQV", 3uLL) || !strncasecmp(v9, "MP4", 3uLL) || !strncasecmp(v9, "M4V", 3uLL) || !strncasecmp(v9, "3GP", 3uLL) || !strncasecmp(v9, "3G2", 3uLL))
  {
    v10 = 12301;
  }

  else if (!strncasecmp(v9, "AVI", 3uLL))
  {
    v10 = 12298;
  }

  else if (!strncasecmp(v9, "WAV", 3uLL))
  {
    v10 = 12296;
  }

  else if (!strncasecmp(v9, "ASF", 3uLL))
  {
    v10 = 12300;
  }

  else if (!strncasecmp(v9, "AIF", 3uLL) || !strncasecmp(v9, "AIFF", 4uLL) || !strncasecmp(v9, "M4A", 3uLL) || !strncasecmp(v9, "M4B", 3uLL) || !strncasecmp(v9, "M4R", 3uLL))
  {
    v10 = 12295;
  }

  else if (!strncasecmp(v9, "MP3", 3uLL))
  {
    v10 = 12297;
  }

  else
  {
    if (strncasecmp(v9, "GIF", 3uLL))
    {
      if (strncasecmp(v9, "XMP", 3uLL))
      {
        if (!strncasecmp(v9, "XML", 3uLL))
        {
          v10 = 12302;
        }

        else if (!strncasecmp(v9, "BMP", 3uLL))
        {
          v10 = 14340;
        }

        else if (!strncasecmp(v9, "TIF", 3uLL) || !strncasecmp(v9, "TIFF", 4uLL))
        {
          v10 = 14349;
        }

        else if (!strncasecmp(v9, "TXT", 3uLL) || !strncasecmp(v9, "TEXT", 4uLL))
        {
          v10 = 12292;
        }

        else if (!strncasecmp(v9, "HTM", 3uLL) || !strncasecmp(v9, "HTML", 4uLL))
        {
          v10 = 12293;
        }

        else if (!strncasecmp(v9, "CIF", 3uLL) || !strncasecmp(v9, "CIFF", 4uLL))
        {
          v10 = 14341;
        }

        else if (!strncasecmp(v9, "PIC", 3uLL) || !strncasecmp(v9, "PICT", 4uLL))
        {
          v10 = 14346;
        }

        else if (!strncasecmp(v9, "JP2", 3uLL))
        {
          v10 = 14351;
        }

        else if (!strncasecmp(v9, "JPX", 3uLL))
        {
          v10 = 14352;
        }

        else if (!strncasecmp(v9, "PCD", 3uLL))
        {
          v10 = 14345;
        }

        else if (!strncasecmp(v9, "FPX", 3uLL))
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
  v2 = [(PTPFile *)self objectInfoDataset];
  if ([v2 thumbCompressedSize])
  {
    v3 = [v2 thumbFormat] == 14344;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)thumbnailForMaxPixelSize:(unsigned int)a3 compressedSize:(unint64_t *)a4
{
  v7 = objc_autoreleasePoolPush();
  v8 = [(PTPFile *)self plAssetHandle];
  v9 = sub_10000C470();
  if (a3 != 160 && a3)
  {
    v20 = [(PTPObjectInfoDataset *)self->_objectInfoDataset imagePixWidth];
    v21 = [(PTPObjectInfoDataset *)self->_objectInfoDataset imagePixHeight];
    if (v20)
    {
      v22 = v21 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      goto LABEL_21;
    }

    if (v20 < v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v20;
    }

    v24 = (v23 * 0.5);
    if (v23 * 0.5 >= a3)
    {
      v24 = a3;
    }

    v25 = v23 / v24;
    if (v25 == 0.0)
    {
LABEL_21:
      v28 = 160.0;
      v29 = 120.0;
    }

    else
    {
      v26 = v20 / v25;
      v27 = v21 / v25;
      v28 = fabsf(ceilf(v26));
      v29 = fabsf(ceilf(v27));
    }

    __ICOSLogCreate();
    v30 = [(PTPFile *)self baseName];
    if ([v30 length] >= 0x15)
    {
      v31 = [v30 substringWithRange:{0, 18}];
      v32 = [v31 stringByAppendingString:@".."];

      v30 = v32;
    }

    v33 = [NSString stringWithFormat:@"Requesting custom thumbnail of size: (%f x %f)", *&v28, *&v29];
    v34 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v35 = v30;
      v36 = v34;
      *buf = 136446466;
      v45 = [v30 UTF8String];
      v46 = 2114;
      v47 = v33;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    LODWORD(v37) = 1064514355;
    v19 = [v9 ptpThumbnailForAssetHandle:v8 size:v28 compressionQuality:{v29, v37}];
    *a4 = [v19 length];
    if (!v19)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v10 = [(PTPFile *)self objectInfoDataset];
    *a4 = [v10 thumbCompressedSize];

    if (!v9)
    {
      goto LABEL_27;
    }

    __ICOSLogCreate();
    v11 = [(PTPFile *)self baseName];
    if ([v11 length] >= 0x15)
    {
      v12 = [v11 substringWithRange:{0, 18}];
      v13 = [v12 stringByAppendingString:@".."];

      v11 = v13;
    }

    v14 = [NSString stringWithFormat:@"Requesting standard thumbnail of size: (%f x %f)", 0x4064000000000000, 0x405E000000000000];
    v15 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v11;
      v17 = v15;
      *buf = 136446466;
      v45 = [v11 UTF8String];
      v46 = 2114;
      v47 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    LODWORD(v18) = 1.0;
    v19 = [v9 ptpThumbnailForAssetHandle:v8 size:160.0 compressionQuality:{120.0, v18}];
    if (!v19)
    {
LABEL_27:
      __ICOSLogCreate();
      v38 = [(PTPFile *)self baseName];
      if ([v38 length] >= 0x15)
      {
        v39 = [v38 substringWithRange:{0, 18}];
        v40 = [v39 stringByAppendingString:@".."];

        v38 = v40;
      }

      v41 = [NSString stringWithFormat:@"Failed to retrieve a thumbnail from the Photo Library"];
      v42 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
      {
        sub_100024884(v38, v42);
      }

      v19 = 0;
    }
  }

  objc_autoreleasePoolPop(v7);

  return v19;
}

- (id)metadata
{
  v3 = [(PTPFile *)self plAssetHandle];
  v4 = sub_10000C470();
  v5 = v4;
  if (!v4 || ([v4 ptpImagePropertiesForAssetHandle:v3], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    __ICOSLogCreate();
    v7 = [(PTPFile *)self baseName];
    if ([v7 length] >= 0x15)
    {
      v8 = [v7 substringWithRange:{0, 18}];
      v9 = [v8 stringByAppendingString:@".."];

      v7 = v9;
    }

    v10 = [NSString stringWithFormat:@"Failed to retrieve metadata from the Photo Library"];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_ERROR))
    {
      sub_100024884(v7, v11);
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