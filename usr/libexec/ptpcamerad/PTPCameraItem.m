@interface PTPCameraItem
+ (id)UTTypeWithFilenameExtension:(id)a3;
- (BOOL)locked;
- (BOOL)protectionStatus;
- (NSString)name;
- (NSUUID)relatedUUID;
- (PTPCameraItem)initWithObjectInfo:(id)a3 parent:(id)a4 initiator:(id)a5;
- (PTPCameraStorage)storage;
- (PTPInitiator)initiator;
- (id)baseName;
- (id)parent;
- (unint64_t)captureDate;
- (unint64_t)modificationDate;
- (unint64_t)size;
- (unsigned)objHandle;
- (unsigned)parentObject;
- (unsigned)storageID;
- (void)setCaptureDate:(unint64_t)a3;
- (void)setModificationDate:(unint64_t)a3;
- (void)setName:(id)a3;
- (void)setSize:(unint64_t)a3;
@end

@implementation PTPCameraItem

+ (id)UTTypeWithFilenameExtension:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_1000338B0 == -1)
  {
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  sub_10001D324();
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  os_unfair_lock_lock(&unk_1000338A8);
  v5 = [qword_1000338A0 objectForKeyedSubscript:v4];
  if (!v5)
  {
    v5 = [UTType typeWithFilenameExtension:v4];
    if (v5)
    {
      [qword_1000338A0 setObject:v5 forKeyedSubscript:v4];
    }
  }

  os_unfair_lock_unlock(&unk_1000338A8);
LABEL_9:

  return v5;
}

- (NSString)name
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 name];

  return v3;
}

- (void)setName:(id)a3
{
  v4 = a3;
  v5 = [(PTPCameraItem *)self cameraItemProxy];
  [v5 setName:v4];
}

- (id)baseName
{
  v2 = [(PTPCameraItem *)self name];
  v3 = [v2 stringByDeletingPathExtension];

  return v3;
}

- (unint64_t)size
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 size];

  return v3;
}

- (void)setSize:(unint64_t)a3
{
  v4 = [(PTPCameraItem *)self cameraItemProxy];
  [v4 setSize:a3];
}

- (unsigned)objHandle
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 objectHandle];

  return v3;
}

- (unsigned)parentObject
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 parentObjectHandle];

  return v3;
}

- (unsigned)storageID
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 storageID];

  return v3;
}

- (BOOL)protectionStatus
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 readOnly];

  return v3;
}

- (unint64_t)captureDate
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 captureDate];

  return v3;
}

- (void)setCaptureDate:(unint64_t)a3
{
  v4 = [(PTPCameraItem *)self cameraItemProxy];
  [v4 setCaptureDate:a3];
}

- (unint64_t)modificationDate
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 modificationDate];

  return v3;
}

- (void)setModificationDate:(unint64_t)a3
{
  v4 = [(PTPCameraItem *)self cameraItemProxy];
  [v4 setModificationDate:a3];
}

- (NSUUID)relatedUUID
{
  v2 = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [v2 keywords];
  v4 = [v3 objectForKeyedSubscript:@"relatedUUID"];

  return v4;
}

- (PTPCameraItem)initWithObjectInfo:(id)a3 parent:(id)a4 initiator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = PTPCameraItem;
  v11 = [(PTPCameraItem *)&v19 init];
  if (v11)
  {
    v12 = objc_opt_new();
    [(PTPCameraItem *)v11 setCameraItemProxy:v12];

    if (v8)
    {
      -[PTPCameraItem setObjectFormat:](v11, "setObjectFormat:", [v8 objectFormat]);
      -[PTPCameraItem setProtectionStatus:](v11, "setProtectionStatus:", [v8 protectionStatus] == 1);
      -[PTPCameraItem setParentObject:](v11, "setParentObject:", [v8 parentObject]);
      v13 = [v8 captureDate];
      [(PTPCameraItem *)v11 setPtpCaptureDate:v13];

      v14 = [(PTPCameraItem *)v11 ptpCaptureDate];
      [(PTPCameraItem *)v11 setCaptureDate:ICTimeIntervalSince1970FromPTPString()];

      v15 = [v8 modificationDate];
      [(PTPCameraItem *)v11 setPtpModificationDate:v15];

      v16 = [(PTPCameraItem *)v11 ptpModificationDate];
      [(PTPCameraItem *)v11 setModificationDate:ICTimeIntervalSince1970FromPTPString()];

      v17 = [v8 filename];
      [(PTPCameraItem *)v11 setName:v17];

      -[PTPCameraItem setStorageID:](v11, "setStorageID:", [v8 storageID]);
      -[PTPCameraItem setObjHandle:](v11, "setObjHandle:", [v8 objectHandle]);
      -[PTPCameraItem setSize:](v11, "setSize:", [v8 objectCompressedSize64]);
    }

    objc_storeWeak(&v11->_parent, v9);
    v11->_type = 0;
    objc_storeWeak(&v11->_initiator, v10);
  }

  return v11;
}

- (PTPCameraStorage)storage
{
  WeakRetained = objc_loadWeakRetained(&self->_initiator);
  v4 = [WeakRetained storageForStorageID:{-[PTPCameraItem storageID](self, "storageID")}];

  return v4;
}

- (BOOL)locked
{
  v3 = [(PTPCameraItem *)self storage];
  if ([v3 locked])
  {
    v4 = 1;
  }

  else
  {
    v4 = [(PTPCameraItem *)self protectionStatus];
  }

  return v4;
}

- (id)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (PTPInitiator)initiator
{
  WeakRetained = objc_loadWeakRetained(&self->_initiator);

  return WeakRetained;
}

@end