@interface UMDPersonaManifestPersona
- (BOOL)isEqual:(id)equal;
- (UMDPersonaManifestPersona)init;
- (unint64_t)hash;
@end

@implementation UMDPersonaManifestPersona

- (UMDPersonaManifestPersona)init
{
  v3.receiver = self;
  v3.super_class = UMDPersonaManifestPersona;
  result = [(UMDPersonaManifestPersona *)&v3 init];
  if (!result)
  {
    sub_100088DDC();
  }

  result->_type = 1000;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      sub_100096B5C(equalCopy, self, &v7);
      v5 = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (self)
  {
    type = self->_type;
    uuid = self->_uuid;
  }

  else
  {
    type = 0;
    uuid = 0;
  }

  v45 = uuid;
  v5 = [(NSUUID *)v45 hash]+ type;
  if (self)
  {
    v5 += self->_kernelID;
    nickname = self->_nickname;
  }

  else
  {
    nickname = 0;
  }

  v44 = nickname;
  v7 = &v5[[(NSString *)v44 hash]];
  if (self)
  {
    bundleIDs = self->_bundleIDs;
  }

  else
  {
    bundleIDs = 0;
  }

  v43 = bundleIDs;
  v9 = [(NSSet *)v43 hash]+ v7;
  if (self)
  {
    observers = self->_observers;
  }

  else
  {
    observers = 0;
  }

  v42 = observers;
  v11 = [(NSSet *)v42 hash]+ v9;
  if (self)
  {
    v11 += self->_isDeleting + self->_isDisabled;
    disablementReason = self->_disablementReason;
  }

  else
  {
    disablementReason = 0;
  }

  v41 = disablementReason;
  v13 = &v11[[(NSString *)v41 hash]];
  if (self)
  {
    displayName = self->_displayName;
  }

  else
  {
    displayName = 0;
  }

  v15 = displayName;
  v16 = [(NSString *)v15 hash]+ v13;
  if (self)
  {
    createTime = self->_createTime;
  }

  else
  {
    createTime = 0;
  }

  v18 = createTime;
  v19 = [(NSDate *)v18 hash]+ v16;
  if (self)
  {
    loginTime = self->_loginTime;
  }

  else
  {
    loginTime = 0;
  }

  v21 = loginTime;
  v22 = [(NSDate *)v21 hash]+ v19;
  if (self)
  {
    volumeUUID = self->_volumeUUID;
  }

  else
  {
    volumeUUID = 0;
  }

  v24 = volumeUUID;
  v25 = [(NSUUID *)v24 hash]+ v22;
  if (self)
  {
    homeUUID = self->_homeUUID;
  }

  else
  {
    homeUUID = 0;
  }

  v27 = homeUUID;
  v28 = [(NSUUID *)v27 hash]+ v25;
  if (self)
  {
    homeDir = self->_homeDir;
  }

  else
  {
    homeDir = 0;
  }

  v30 = homeDir;
  v31 = [(NSString *)v30 hash]+ v28;
  if (self)
  {
    deviceNode = self->_deviceNode;
  }

  else
  {
    deviceNode = 0;
  }

  v33 = deviceNode;
  v34 = [(NSString *)v33 hash]+ v31;
  if (self)
  {
    userUUID = self->_userUUID;
  }

  else
  {
    userUUID = 0;
  }

  v36 = userUUID;
  v37 = [(NSUUID *)v36 hash]+ v34;
  if (self)
  {
    v37 += self->_uid + self->_gid;
    encryptedVolumeKey = self->_encryptedVolumeKey;
  }

  else
  {
    encryptedVolumeKey = 0;
  }

  v39 = [(NSData *)encryptedVolumeKey hash];

  return &v37[v39];
}

@end