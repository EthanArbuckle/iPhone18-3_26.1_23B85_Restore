@interface UMAppleKeyStoreMock
- (BOOL)bootstrapVolumeWithMountPoint:(id)a3 user:(unsigned int)a4 error:(id *)a5;
- (BOOL)changeSecretrForIdentityWithUUID:(id)a3 oldPasscode:(id)a4 newPasscode:(id)a5 existingSession:(unsigned int)a6 isACMCredential:(BOOL)a7 error:(id *)a8;
- (BOOL)createIdentityWithUUID:(id)a3 passcode:(id)a4 existingSession:(unsigned int)a5 existingSessionPasscode:(id)a6 isACMCredential:(BOOL)a7 error:(id *)a8;
- (BOOL)deleteIdentity:(id)a3 error:(id *)a4;
- (BOOL)loadIdentity:(id)a3 intoSession:(unsigned int)a4 error:(id *)a5;
- (BOOL)loginIdentity:(id)a3 intoSession:(unsigned int)a4 passcode:(id)a5 isACMCredential:(BOOL)a6 error:(id *)a7;
- (BOOL)unloadIdentityFromSession:(unsigned int)a3 error:(id *)a4;
- (BOOL)unlockIdentity:(unsigned int)a3 passcode:(id)a4 isACMCredential:(BOOL)a5 error:(id *)a6;
- (BOOL)unlockIdentityInSession:(unsigned int)a3 passcode:(id)a4 isACMCredential:(BOOL)a5 error:(id *)a6;
- (BOOL)unmapVolume:(id)a3 error:(id *)a4;
- (BOOL)verifyIdentityPasswordInSession:(unsigned int)a3 passcode:(id)a4 isACMCredential:(BOOL)a5 error:(id *)a6;
- (UMAppleKeyStoreMock)init;
- (id)dataUnwrappingDataWithDeviceClassF:(id)a3 error:(id *)a4;
- (id)dataWrappingDataWithDeviceClassF:(id)a3 error:(id *)a4;
@end

@implementation UMAppleKeyStoreMock

- (UMAppleKeyStoreMock)init
{
  v13.receiver = self;
  v13.super_class = UMAppleKeyStoreMock;
  v2 = [(UMAppleKeyStoreMock *)&v13 init];
  if (!v2)
  {
    sub_100088DDC();
  }

  v3 = v2;
  v4 = +[NSMutableDictionary dictionary];
  bootstrappedVolumes = v3->_bootstrappedVolumes;
  v3->_bootstrappedVolumes = v4;

  v6 = +[NSMutableDictionary dictionary];
  personas = v3->_personas;
  v3->_personas = v6;

  v8 = +[NSMutableDictionary dictionary];
  mappedVolumes = v3->_mappedVolumes;
  v3->_mappedVolumes = v8;

  v10 = +[NSMutableDictionary dictionary];
  mappedVolumePersonas = v3->_mappedVolumePersonas;
  v3->_mappedVolumePersonas = v10;

  return v3;
}

- (BOOL)bootstrapVolumeWithMountPoint:(id)a3 user:(unsigned int)a4 error:(id *)a5
{
  v7 = a3;
  if (a5)
  {
    *a5 = 0;
  }

  if ([(UMAppleKeyStoreMock *)self ignoreIdentityMethods])
  {
    goto LABEL_4;
  }

  if (!self || !self->_bootstrapVolumeErrorOverride)
  {
    sub_100089904();
LABEL_4:
    v8 = 1;
    goto LABEL_10;
  }

  if (a5)
  {
    v9 = self->_bootstrapVolumeErrorOverride;
    v8 = 0;
    *a5 = v9;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (BOOL)unmapVolume:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    *a4 = 0;
  }

  if ([(UMAppleKeyStoreMock *)self ignoreIdentityMethods])
  {
    goto LABEL_12;
  }

  if (!self || !self->_unmapVolumeErrorOverride)
  {
    if (self)
    {
      [(NSMutableDictionary *)self->_mappedVolumes setObject:0 forKeyedSubscript:v6];
      mappedVolumePersonas = self->_mappedVolumePersonas;
    }

    else
    {
      sub_100089A38(v6);
      mappedVolumePersonas = 0;
    }

    [(NSMutableDictionary *)mappedVolumePersonas setObject:0 forKeyedSubscript:v6];
LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  if (a4)
  {
    v7 = self->_unmapVolumeErrorOverride;
    v8 = 0;
    *a4 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (id)dataWrappingDataWithDeviceClassF:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (self && self->_dataWrappingDataErrorOverride)
  {
    if (a4)
    {
      v8 = self->_dataWrappingDataErrorOverride;
      v9 = 0;
      *a4 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    if (self && self->_dataWrappingDataReturnOverride)
    {
      v10 = self->_dataWrappingDataReturnOverride;
    }

    else
    {
      v10 = sub_100088E34(v6);
    }

    v9 = v10;
  }

  return v9;
}

- (id)dataUnwrappingDataWithDeviceClassF:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  if (self && self->_dataUnwrappingDataErrorOverride)
  {
    if (a4)
    {
      v8 = self->_dataUnwrappingDataErrorOverride;
      v9 = 0;
      *a4 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    if (self && self->_dataUnwrappingDataReturnOverride)
    {
      v10 = self->_dataUnwrappingDataReturnOverride;
    }

    else
    {
      v10 = sub_100088EAC(v6);
    }

    v9 = v10;
  }

  return v9;
}

- (BOOL)createIdentityWithUUID:(id)a3 passcode:(id)a4 existingSession:(unsigned int)a5 existingSessionPasscode:(id)a6 isACMCredential:(BOOL)a7 error:(id *)a8
{
  if (a8)
  {
    *a8 = 0;
  }

  if (self)
  {
    createIdentityWithUUIDErrorOverride = self->_createIdentityWithUUIDErrorOverride;
    if (!a8)
    {
      return sub_100017D50();
    }
  }

  else
  {
    createIdentityWithUUIDErrorOverride = 0;
    if (!a8)
    {
      return sub_100017D50();
    }
  }

  if (createIdentityWithUUIDErrorOverride)
  {
    if (self)
    {
      self = self->_createIdentityWithUUIDErrorOverride;
    }

    *a8 = self;
  }

  return sub_100017D50();
}

- (BOOL)deleteIdentity:(id)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  if (self)
  {
    deleteIdentityErrorOverride = self->_deleteIdentityErrorOverride;
    if (!a4)
    {
      return sub_100017D50();
    }
  }

  else
  {
    deleteIdentityErrorOverride = 0;
    if (!a4)
    {
      return sub_100017D50();
    }
  }

  if (deleteIdentityErrorOverride)
  {
    if (self)
    {
      self = self->_deleteIdentityErrorOverride;
    }

    *a4 = self;
  }

  return sub_100017D50();
}

- (BOOL)changeSecretrForIdentityWithUUID:(id)a3 oldPasscode:(id)a4 newPasscode:(id)a5 existingSession:(unsigned int)a6 isACMCredential:(BOOL)a7 error:(id *)a8
{
  if (a8)
  {
    *a8 = 0;
  }

  if (self)
  {
    changeSecretrForIdentityErrorOverride = self->_changeSecretrForIdentityErrorOverride;
    if (!a8)
    {
      return sub_100017D50();
    }
  }

  else
  {
    changeSecretrForIdentityErrorOverride = 0;
    if (!a8)
    {
      return sub_100017D50();
    }
  }

  if (changeSecretrForIdentityErrorOverride)
  {
    if (self)
    {
      self = self->_changeSecretrForIdentityErrorOverride;
    }

    *a8 = self;
  }

  return sub_100017D50();
}

- (BOOL)loadIdentity:(id)a3 intoSession:(unsigned int)a4 error:(id *)a5
{
  if (a5)
  {
    *a5 = 0;
  }

  if (self)
  {
    loadIdentityErrorOverride = self->_loadIdentityErrorOverride;
    if (!a5)
    {
      return sub_100017D50();
    }
  }

  else
  {
    loadIdentityErrorOverride = 0;
    if (!a5)
    {
      return sub_100017D50();
    }
  }

  if (loadIdentityErrorOverride)
  {
    if (self)
    {
      self = self->_loadIdentityErrorOverride;
    }

    *a5 = self;
  }

  return sub_100017D50();
}

- (BOOL)unloadIdentityFromSession:(unsigned int)a3 error:(id *)a4
{
  if (a4)
  {
    *a4 = 0;
  }

  if (self)
  {
    unloadIdentityErrorOverride = self->_unloadIdentityErrorOverride;
    if (!a4)
    {
      return sub_100017D50();
    }
  }

  else
  {
    unloadIdentityErrorOverride = 0;
    if (!a4)
    {
      return sub_100017D50();
    }
  }

  if (unloadIdentityErrorOverride)
  {
    if (self)
    {
      self = self->_unloadIdentityErrorOverride;
    }

    *a4 = self;
  }

  return sub_100017D50();
}

- (BOOL)unlockIdentity:(unsigned int)a3 passcode:(id)a4 isACMCredential:(BOOL)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  if (self)
  {
    unlockIdentityErrorOverride = self->_unlockIdentityErrorOverride;
    if (!a6)
    {
      return sub_100017D50();
    }
  }

  else
  {
    unlockIdentityErrorOverride = 0;
    if (!a6)
    {
      return sub_100017D50();
    }
  }

  if (unlockIdentityErrorOverride)
  {
    if (self)
    {
      self = self->_unlockIdentityErrorOverride;
    }

    *a6 = self;
  }

  return sub_100017D50();
}

- (BOOL)unlockIdentityInSession:(unsigned int)a3 passcode:(id)a4 isACMCredential:(BOOL)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  if (self)
  {
    unlockIdentityErrorOverride = self->_unlockIdentityErrorOverride;
    if (!a6)
    {
      return sub_100017D50();
    }
  }

  else
  {
    unlockIdentityErrorOverride = 0;
    if (!a6)
    {
      return sub_100017D50();
    }
  }

  if (unlockIdentityErrorOverride)
  {
    if (self)
    {
      self = self->_unlockIdentityErrorOverride;
    }

    *a6 = self;
  }

  return sub_100017D50();
}

- (BOOL)verifyIdentityPasswordInSession:(unsigned int)a3 passcode:(id)a4 isACMCredential:(BOOL)a5 error:(id *)a6
{
  if (a6)
  {
    *a6 = 0;
  }

  if (self)
  {
    verifyIdentityPasswordErrorOverride = self->_verifyIdentityPasswordErrorOverride;
    if (!a6)
    {
      return sub_100017D50();
    }
  }

  else
  {
    verifyIdentityPasswordErrorOverride = 0;
    if (!a6)
    {
      return sub_100017D50();
    }
  }

  if (verifyIdentityPasswordErrorOverride)
  {
    if (self)
    {
      self = self->_verifyIdentityPasswordErrorOverride;
    }

    *a6 = self;
  }

  return sub_100017D50();
}

- (BOOL)loginIdentity:(id)a3 intoSession:(unsigned int)a4 passcode:(id)a5 isACMCredential:(BOOL)a6 error:(id *)a7
{
  if (a7)
  {
    *a7 = 0;
  }

  if (self)
  {
    loginIdentityErrorOverride = self->_loginIdentityErrorOverride;
    if (!a7)
    {
      return sub_100017D50();
    }
  }

  else
  {
    loginIdentityErrorOverride = 0;
    if (!a7)
    {
      return sub_100017D50();
    }
  }

  if (loginIdentityErrorOverride)
  {
    if (self)
    {
      self = self->_loginIdentityErrorOverride;
    }

    *a7 = self;
  }

  return sub_100017D50();
}

@end