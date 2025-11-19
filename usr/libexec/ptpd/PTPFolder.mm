@interface PTPFolder
- (BOOL)fileExists:(id)a3;
- (PTPFolder)initWithName:(id)a3 captureTimeSpec:(timespec *)a4 parent:(id)a5 storage:(id)a6;
- (id)folderMatchingName:(id)a3;
- (id)objectMatchingAssetHandle:(id)a3;
- (id)parent;
- (id)storage;
- (timespec)captureTimeSpec;
- (unint64_t)appendObjectData:(id)a3 forObjectFormatCode:(unsigned __int16)a4 inAssociation:(unsigned int)a5 withContentType:(unsigned int)a6;
- (unsigned)storageID;
- (void)addFile:(id)a3;
- (void)addFolder:(id)a3;
- (void)deleteFile:(id)a3;
- (void)deleteFolder:(id)a3;
@end

@implementation PTPFolder

- (PTPFolder)initWithName:(id)a3 captureTimeSpec:(timespec *)a4 parent:(id)a5 storage:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(PTPFolder *)self initWithObjectHandle:sub_100004214()];
  v14 = v13;
  if (v13)
  {
    [(PTPFolder *)v13 setParent:v11];
    [(PTPFolder *)v14 setStorage:v12];
    if (a4)
    {
      v23 = [NSDate dateWithTimeIntervalSince1970:a4->tv_sec];
      v22 = +[NSCalendar currentCalendar];
      v15 = [v22 components:252 fromDate:v23];
      v24 = v12;
      v16 = v10;
      snprintf(__str, 0x14uLL, "%04d%02d%02dT%02d%02d%02d.0", [v15 year], objc_msgSend(v15, "month"), objc_msgSend(v15, "day"), objc_msgSend(v15, "hour"), objc_msgSend(v15, "minute"), objc_msgSend(v15, "second"));
      v17 = *(&v14->_folders + 4);
      v18 = [NSString stringWithFormat:@"%s", __str];
      [v17 setCaptureDate:v18];

      v10 = v16;
      v12 = v24;
      v19 = *(&v14->_folders + 4);
      v20 = [NSString stringWithFormat:@"%s", __str];
      [v19 setModificationDate:v20];

      *(&v14->_objectInfoDataset + 4) = *a4;
    }

    [*(&v14->_folders + 4) setStorageID:{-[PTPFolder storageID](v14, "storageID")}];
    [*(&v14->_folders + 4) setObjectFormat:12289];
    [*(&v14->_folders + 4) setProtectionStatus:0];
    [*(&v14->_folders + 4) setParentObject:{objc_msgSend(v11, "objectHandle")}];
    [*(&v14->_folders + 4) setAssociationType:1];
    [*(&v14->_folders + 4) setFilename:v10];
    [*(&v14->_folders + 4) setObjectHandle:{-[PTPItem objectHandle](v14, "objectHandle")}];
    ++dword_1000403AC;
  }

  return v14;
}

- (unsigned)storageID
{
  WeakRetained = objc_loadWeakRetained((&self->_parent + 4));
  v3 = [WeakRetained storageID];

  return v3;
}

- (id)objectMatchingAssetHandle:(id)a3
{
  v4 = a3;
  v5 = [*(&self->_fileNames + 4) lastIndex];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_7;
  }

  v6 = v5;
  while (1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [(PTPFolder *)self storage];
    v9 = [v8 cameraFileWithObjectID:v6];

    v6 = [*(&self->_fileNames + 4) indexLessThanIndex:v6];
    v10 = [v9 plAssetHandle];
    v11 = [v10 isEqual:v4];

    if (v11)
    {
      break;
    }

    objc_autoreleasePoolPop(v7);
    if (v6 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }
  }

  objc_autoreleasePoolPop(v7);
  if (!v9)
  {
LABEL_7:
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [*(&self->_fileIndices + 4) allValues];
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
LABEL_9:
      v16 = 0;
      while (1)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v21 + 1) + 8 * v16) unsignedIntValue];
        v18 = [(PTPFolder *)self storage];
        v19 = [v18 cameraFolderWithObjectID:v17];

        v9 = [v19 objectMatchingAssetHandle:v4];

        if (v9)
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v14)
          {
            goto LABEL_9;
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v9 = 0;
    }
  }

  return v9;
}

- (void)addFile:(id)a3
{
  v4 = a3;
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 objectHandle]);
  v5 = [v4 objectInfoDataset];
  v6 = [v5 filename];
  v7 = [v4 objectInfoDataset];
  v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%d", v6, [v7 sequenceNumber]);

  os_unfair_lock_lock(&self->super._objectHandle + 1);
  [*(&self->_size + 4) setObject:v10 forKeyedSubscript:v8];
  v9 = *(&self->_fileNames + 4);
  LODWORD(v6) = [v4 objectHandle];

  [v9 addIndex:v6];
  os_unfair_lock_unlock(&self->super._objectHandle + 1);
}

- (void)addFolder:(id)a3
{
  v4 = a3;
  v8 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 objectHandle]);
  os_unfair_lock_lock(&self->super._objectHandle + 1);
  v5 = *(&self->_fileIndices + 4);
  v6 = [v4 objectInfoDataset];

  v7 = [v6 filename];
  [v5 setObject:v8 forKeyedSubscript:v7];

  os_unfair_lock_unlock(&self->super._objectHandle + 1);
}

- (void)deleteFile:(id)a3
{
  v4 = a3;
  v5 = [v4 objectInfoDataset];
  v6 = [v5 filename];
  v7 = [v4 objectInfoDataset];
  v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@.%d", v6, [v7 sequenceNumber]);

  os_unfair_lock_lock(&self->super._objectHandle + 1);
  [*(&self->_size + 4) removeObjectForKey:v9];
  [*(&self->_fileNames + 4) removeIndex:{objc_msgSend(v4, "objectHandle")}];
  v8 = [(PTPFolder *)self storage];
  LODWORD(v5) = [v4 objectHandle];

  [v8 removeCameraFileFromIndex:v5];
  os_unfair_lock_unlock(&self->super._objectHandle + 1);
}

- (void)deleteFolder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._objectHandle + 1);
  v5 = *(&self->_fileIndices + 4);
  v6 = [v4 objectInfoDataset];
  v7 = [v6 filename];
  [v5 removeObjectForKey:v7];

  v8 = [(PTPFolder *)self storage];
  LODWORD(v6) = [v4 objectHandle];

  [v8 removeCameraFolderFromIndex:v6];

  os_unfair_lock_unlock(&self->super._objectHandle + 1);
}

- (BOOL)fileExists:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._objectHandle + 1);
  v5 = [*(&self->_size + 4) objectForKeyedSubscript:v4];

  LODWORD(v4) = [v5 unsignedIntValue];
  os_unfair_lock_unlock(&self->super._objectHandle + 1);
  return v4 != 0;
}

- (id)folderMatchingName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->super._objectHandle + 1);
  v5 = [*(&self->_fileIndices + 4) objectForKeyedSubscript:v4];

  v6 = [v5 unsignedIntValue];
  os_unfair_lock_unlock(&self->super._objectHandle + 1);
  if (v6)
  {
    v7 = [(PTPFolder *)self storage];
    v8 = [v7 cameraFolderWithObjectID:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)appendObjectData:(id)a3 forObjectFormatCode:(unsigned __int16)a4 inAssociation:(unsigned int)a5 withContentType:(unsigned int)a6
{
  v6 = a4;
  v76 = a3;
  objc_opt_class();
  v74 = self;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = self;
    __ICOSLogCreate();
    v8 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v15 = [&stru_100038B48 substringWithRange:{0, 18}];
      v8 = [v15 stringByAppendingString:@".."];
    }

    v16 = [(PTPFolder *)v14 objectInfoDataset];
    v17 = [v16 filename];
    v18 = [v17 UTF8String];
    v19 = [*(&v14->_fileIndices + 4) count];
    v20 = *(&v14->_fileNames + 4);

    v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  [Folder: %8s] folders:[%5lu] files:[%5lu] \n", v18, v19, [v20 count]);

    v21 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v8;
      v23 = v21;
      *buf = 136446466;
      v86 = [(__CFString *)v8 UTF8String];
      v87 = 2114;
      v88 = v10;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

    self = v74;
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    __ICOSLogCreate();
    v8 = &stru_100038B48;
    if ([&stru_100038B48 length] >= 0x15)
    {
      v9 = [&stru_100038B48 substringWithRange:{0, 18}];
      v8 = [v9 stringByAppendingString:@".."];
    }

    v10 = [NSString stringWithFormat:@"[Storage: 0x%x] \n", [(PTPItem *)self objectHandle]];
    v11 = _gICOSLog;
    if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v8;
      v13 = v11;
      *buf = 136446466;
      v86 = [(__CFString *)v8 UTF8String];
      v87 = 2114;
      v88 = v10;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}20s | %{public}@", buf, 0x16u);
    }

LABEL_12:
  }

  v83 = 0;
  if (a6 == 3 && ![v76 length])
  {
    __ICOSLogCreate();
    v24 = [NSString stringWithFormat:@"Append Initial PTP11 Array, Object Count [%d]\n", v83];
    if (__ICLogTypeEnabled())
    {
      v25 = _gICOSLog;
      if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v86 = v24;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      }
    }

    [v76 appendBytes:&v83 length:8];
  }

  v26 = sub_1000041DC();
  v77 = v6;
  if (a5 + 1 < 2 || [(PTPItem *)self objectHandle]== a5)
  {
    os_unfair_lock_lock(&self->super._objectHandle + 1);
    v27 = [*(&self->_fileNames + 4) lastIndex];
    if (v27 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = v27;
      while (1)
      {
        v29 = objc_autoreleasePoolPush();
        v30 = [(PTPFolder *)self storage];
        v31 = [v30 cameraFileWithObjectID:v28];

        v28 = [*(&self->_fileNames + 4) indexLessThanIndex:v28];
        v32 = [v31 objectInfoDataset];
        v33 = ([v32 objectCompressedSize64] >> 32 == 0) | v26;

        if ((v33 & 1) == 0)
        {
          break;
        }

        if (!v77)
        {
          goto LABEL_40;
        }

        __ICOSLogCreate();
        v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Object Format Code Is Non-Zero\n", [v31 objectHandle]);
        if (__ICLogTypeEnabled())
        {
          v35 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v86 = v34;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        v36 = [v31 objectInfoDataset];
        v37 = [v36 objectFormat];
        v38 = v37;
        if (v77 == 0xFFFF)
        {
          v41 = ~v37 & 0x3800;

          if (v41)
          {
LABEL_40:
            v42 = v29;
            v43 = v28;
            v44 = v26;
            __ICOSLogCreate();
            v45 = [v31 objectHandle];
            v46 = [v31 objectInfoDataset];
            v47 = [v46 filename];
            v48 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" +[0x%x]%s] ", v45, [v47 UTF8String]);

            if (__ICLogTypeEnabled())
            {
              v49 = _gICOSLog;
              if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v86 = v48;
                _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
              }
            }

            v50 = [v31 objectInfoDataset];
            v39 = [v50 content:a6];

            [v76 appendData:v39];
            ++v83;
            v26 = v44;
            v28 = v43;
            v29 = v42;
            goto LABEL_44;
          }

          __ICOSLogCreate();
          v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Object Has Been Excluded\n", [v31 objectHandle]);
          if (__ICLogTypeEnabled())
          {
            v40 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_35;
            }
          }
        }

        else
        {

          if (v38 == v77)
          {
            goto LABEL_40;
          }

          __ICOSLogCreate();
          v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Object Format Code Does Not Match\n", [v31 objectHandle]);
          if (__ICLogTypeEnabled())
          {
            v40 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_35;
            }
          }
        }

LABEL_44:

        objc_autoreleasePoolPop(v29);
        self = v74;
        if (v28 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_45;
        }
      }

      __ICOSLogCreate();
      v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"[0x%x] Large File Support Disabled, Large File Cannot Be Added Index\n", [v31 objectHandle]);
      if (!__ICLogTypeEnabled())
      {
        goto LABEL_44;
      }

      v40 = _gICOSLog;
      if (!os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_44;
      }

LABEL_35:
      *buf = 138543362;
      v86 = v39;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
      goto LABEL_44;
    }

LABEL_45:
    os_unfair_lock_unlock(&self->super._objectHandle + 1);
    v6 = v77;
  }

  os_unfair_lock_lock(&self->super._objectHandle + 1);
  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v51 = [*(&self->_fileIndices + 4) allValues];
  v52 = [v51 countByEnumeratingWithState:&v79 objects:v84 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v80;
    do
    {
      for (i = 0; i != v53; i = i + 1)
      {
        if (*v80 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v79 + 1) + 8 * i);
        v57 = [(PTPFolder *)self storage];
        v58 = [v57 cameraFolderWithObjectID:{objc_msgSend(v56, "unsignedIntValue")}];

        if (v6)
        {
          goto LABEL_58;
        }

        if (a5 + 1 < 2 || [(PTPItem *)self objectHandle]== a5)
        {
          __ICOSLogCreate();
          v59 = [v58 objectHandle];
          v60 = [v58 objectInfoDataset];
          v61 = [v60 filename];
          v62 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" +[0x%x]%s] \n", v59, [v61 UTF8String]);

          if (__ICLogTypeEnabled())
          {
            v63 = _gICOSLog;
            if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v86 = v62;
              _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
            }
          }

          v64 = [v58 objectInfoDataset];
          v65 = [v64 content:a6];

          [v76 appendData:v65];
          ++v83;

          v6 = v77;
LABEL_58:
          if (a5 == -1)
          {
            goto LABEL_63;
          }
        }

        __ICOSLogCreate();
        v66 = [v58 objectHandle];
        v67 = [v58 objectInfoDataset];
        v68 = [v67 filename];
        v69 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"->[0x%x]%s] \n", v66, [v68 UTF8String]);

        if (__ICLogTypeEnabled())
        {
          v70 = _gICOSLog;
          if (os_log_type_enabled(_gICOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v86 = v69;
            _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }
        }

        v6 = v77;
        v71 = [v58 appendObjectData:v76 forObjectFormatCode:v77 inAssociation:a5 withContentType:a6];
        v83 += v71;
        self = v74;
LABEL_63:
      }

      v53 = [v51 countByEnumeratingWithState:&v79 objects:v84 count:16];
    }

    while (v53);
  }

  os_unfair_lock_unlock(&self->super._objectHandle + 1);
  v72 = v83;

  return v72;
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained((&self->_folderLock + 1));

  return WeakRetained;
}

- (id)storage
{
  WeakRetained = objc_loadWeakRetained((&self->_parent + 4));

  return WeakRetained;
}

- (timespec)captureTimeSpec
{
  v2 = &self->_objectInfoDataset + 4;
  v3 = *(&self->_objectInfoDataset + 4);
  v4 = *(v2 + 1);
  result.tv_nsec = v4;
  result.tv_sec = v3;
  return result;
}

@end