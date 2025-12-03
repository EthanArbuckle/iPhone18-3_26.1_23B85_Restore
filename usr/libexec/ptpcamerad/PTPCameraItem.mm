@interface PTPCameraItem
+ (id)UTTypeWithFilenameExtension:(id)extension;
- (BOOL)locked;
- (BOOL)protectionStatus;
- (NSString)name;
- (NSUUID)relatedUUID;
- (PTPCameraItem)initWithObjectInfo:(id)info parent:(id)parent initiator:(id)initiator;
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
- (void)setCaptureDate:(unint64_t)date;
- (void)setModificationDate:(unint64_t)date;
- (void)setName:(id)name;
- (void)setSize:(unint64_t)size;
@end

@implementation PTPCameraItem

+ (id)UTTypeWithFilenameExtension:(id)extension
{
  extensionCopy = extension;
  v4 = extensionCopy;
  if (qword_1000338B0 == -1)
  {
    if (extensionCopy)
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
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  name = [cameraItemProxy name];

  return name;
}

- (void)setName:(id)name
{
  nameCopy = name;
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  [cameraItemProxy setName:nameCopy];
}

- (id)baseName
{
  name = [(PTPCameraItem *)self name];
  stringByDeletingPathExtension = [name stringByDeletingPathExtension];

  return stringByDeletingPathExtension;
}

- (unint64_t)size
{
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  v3 = [cameraItemProxy size];

  return v3;
}

- (void)setSize:(unint64_t)size
{
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  [cameraItemProxy setSize:size];
}

- (unsigned)objHandle
{
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  objectHandle = [cameraItemProxy objectHandle];

  return objectHandle;
}

- (unsigned)parentObject
{
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  parentObjectHandle = [cameraItemProxy parentObjectHandle];

  return parentObjectHandle;
}

- (unsigned)storageID
{
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  storageID = [cameraItemProxy storageID];

  return storageID;
}

- (BOOL)protectionStatus
{
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  readOnly = [cameraItemProxy readOnly];

  return readOnly;
}

- (unint64_t)captureDate
{
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  captureDate = [cameraItemProxy captureDate];

  return captureDate;
}

- (void)setCaptureDate:(unint64_t)date
{
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  [cameraItemProxy setCaptureDate:date];
}

- (unint64_t)modificationDate
{
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  modificationDate = [cameraItemProxy modificationDate];

  return modificationDate;
}

- (void)setModificationDate:(unint64_t)date
{
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  [cameraItemProxy setModificationDate:date];
}

- (NSUUID)relatedUUID
{
  cameraItemProxy = [(PTPCameraItem *)self cameraItemProxy];
  keywords = [cameraItemProxy keywords];
  v4 = [keywords objectForKeyedSubscript:@"relatedUUID"];

  return v4;
}

- (PTPCameraItem)initWithObjectInfo:(id)info parent:(id)parent initiator:(id)initiator
{
  infoCopy = info;
  parentCopy = parent;
  initiatorCopy = initiator;
  v19.receiver = self;
  v19.super_class = PTPCameraItem;
  v11 = [(PTPCameraItem *)&v19 init];
  if (v11)
  {
    v12 = objc_opt_new();
    [(PTPCameraItem *)v11 setCameraItemProxy:v12];

    if (infoCopy)
    {
      -[PTPCameraItem setObjectFormat:](v11, "setObjectFormat:", [infoCopy objectFormat]);
      -[PTPCameraItem setProtectionStatus:](v11, "setProtectionStatus:", [infoCopy protectionStatus] == 1);
      -[PTPCameraItem setParentObject:](v11, "setParentObject:", [infoCopy parentObject]);
      captureDate = [infoCopy captureDate];
      [(PTPCameraItem *)v11 setPtpCaptureDate:captureDate];

      ptpCaptureDate = [(PTPCameraItem *)v11 ptpCaptureDate];
      [(PTPCameraItem *)v11 setCaptureDate:ICTimeIntervalSince1970FromPTPString()];

      modificationDate = [infoCopy modificationDate];
      [(PTPCameraItem *)v11 setPtpModificationDate:modificationDate];

      ptpModificationDate = [(PTPCameraItem *)v11 ptpModificationDate];
      [(PTPCameraItem *)v11 setModificationDate:ICTimeIntervalSince1970FromPTPString()];

      filename = [infoCopy filename];
      [(PTPCameraItem *)v11 setName:filename];

      -[PTPCameraItem setStorageID:](v11, "setStorageID:", [infoCopy storageID]);
      -[PTPCameraItem setObjHandle:](v11, "setObjHandle:", [infoCopy objectHandle]);
      -[PTPCameraItem setSize:](v11, "setSize:", [infoCopy objectCompressedSize64]);
    }

    objc_storeWeak(&v11->_parent, parentCopy);
    v11->_type = 0;
    objc_storeWeak(&v11->_initiator, initiatorCopy);
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
  storage = [(PTPCameraItem *)self storage];
  if ([storage locked])
  {
    protectionStatus = 1;
  }

  else
  {
    protectionStatus = [(PTPCameraItem *)self protectionStatus];
  }

  return protectionStatus;
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