@interface UMAppleKeyStoreMock
- (BOOL)bootstrapVolumeWithMountPoint:(id)point user:(unsigned int)user error:(id *)error;
- (BOOL)changeSecretrForIdentityWithUUID:(id)d oldPasscode:(id)passcode newPasscode:(id)newPasscode existingSession:(unsigned int)session isACMCredential:(BOOL)credential error:(id *)error;
- (BOOL)createIdentityWithUUID:(id)d passcode:(id)passcode existingSession:(unsigned int)session existingSessionPasscode:(id)sessionPasscode isACMCredential:(BOOL)credential error:(id *)error;
- (BOOL)deleteIdentity:(id)identity error:(id *)error;
- (BOOL)loadIdentity:(id)identity intoSession:(unsigned int)session error:(id *)error;
- (BOOL)loginIdentity:(id)identity intoSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error;
- (BOOL)unloadIdentityFromSession:(unsigned int)session error:(id *)error;
- (BOOL)unlockIdentity:(unsigned int)identity passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error;
- (BOOL)unlockIdentityInSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error;
- (BOOL)unmapVolume:(id)volume error:(id *)error;
- (BOOL)verifyIdentityPasswordInSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error;
- (UMAppleKeyStoreMock)init;
- (id)dataUnwrappingDataWithDeviceClassF:(id)f error:(id *)error;
- (id)dataWrappingDataWithDeviceClassF:(id)f error:(id *)error;
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

- (BOOL)bootstrapVolumeWithMountPoint:(id)point user:(unsigned int)user error:(id *)error
{
  pointCopy = point;
  if (error)
  {
    *error = 0;
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

  if (error)
  {
    v9 = self->_bootstrapVolumeErrorOverride;
    v8 = 0;
    *error = v9;
  }

  else
  {
    v8 = 0;
  }

LABEL_10:

  return v8;
}

- (BOOL)unmapVolume:(id)volume error:(id *)error
{
  volumeCopy = volume;
  if (error)
  {
    *error = 0;
  }

  if ([(UMAppleKeyStoreMock *)self ignoreIdentityMethods])
  {
    goto LABEL_12;
  }

  if (!self || !self->_unmapVolumeErrorOverride)
  {
    if (self)
    {
      [(NSMutableDictionary *)self->_mappedVolumes setObject:0 forKeyedSubscript:volumeCopy];
      mappedVolumePersonas = self->_mappedVolumePersonas;
    }

    else
    {
      sub_100089A38(volumeCopy);
      mappedVolumePersonas = 0;
    }

    [(NSMutableDictionary *)mappedVolumePersonas setObject:0 forKeyedSubscript:volumeCopy];
LABEL_12:
    v8 = 1;
    goto LABEL_13;
  }

  if (error)
  {
    v7 = self->_unmapVolumeErrorOverride;
    v8 = 0;
    *error = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (id)dataWrappingDataWithDeviceClassF:(id)f error:(id *)error
{
  fCopy = f;
  v7 = fCopy;
  if (self && self->_dataWrappingDataErrorOverride)
  {
    if (error)
    {
      v8 = self->_dataWrappingDataErrorOverride;
      v9 = 0;
      *error = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (error)
    {
      *error = 0;
    }

    if (self && self->_dataWrappingDataReturnOverride)
    {
      v10 = self->_dataWrappingDataReturnOverride;
    }

    else
    {
      v10 = sub_100088E34(fCopy);
    }

    v9 = v10;
  }

  return v9;
}

- (id)dataUnwrappingDataWithDeviceClassF:(id)f error:(id *)error
{
  fCopy = f;
  v7 = fCopy;
  if (self && self->_dataUnwrappingDataErrorOverride)
  {
    if (error)
    {
      v8 = self->_dataUnwrappingDataErrorOverride;
      v9 = 0;
      *error = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (error)
    {
      *error = 0;
    }

    if (self && self->_dataUnwrappingDataReturnOverride)
    {
      v10 = self->_dataUnwrappingDataReturnOverride;
    }

    else
    {
      v10 = sub_100088EAC(fCopy);
    }

    v9 = v10;
  }

  return v9;
}

- (BOOL)createIdentityWithUUID:(id)d passcode:(id)passcode existingSession:(unsigned int)session existingSessionPasscode:(id)sessionPasscode isACMCredential:(BOOL)credential error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if (self)
  {
    createIdentityWithUUIDErrorOverride = self->_createIdentityWithUUIDErrorOverride;
    if (!error)
    {
      return sub_100017D50();
    }
  }

  else
  {
    createIdentityWithUUIDErrorOverride = 0;
    if (!error)
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

    *error = self;
  }

  return sub_100017D50();
}

- (BOOL)deleteIdentity:(id)identity error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if (self)
  {
    deleteIdentityErrorOverride = self->_deleteIdentityErrorOverride;
    if (!error)
    {
      return sub_100017D50();
    }
  }

  else
  {
    deleteIdentityErrorOverride = 0;
    if (!error)
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

    *error = self;
  }

  return sub_100017D50();
}

- (BOOL)changeSecretrForIdentityWithUUID:(id)d oldPasscode:(id)passcode newPasscode:(id)newPasscode existingSession:(unsigned int)session isACMCredential:(BOOL)credential error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if (self)
  {
    changeSecretrForIdentityErrorOverride = self->_changeSecretrForIdentityErrorOverride;
    if (!error)
    {
      return sub_100017D50();
    }
  }

  else
  {
    changeSecretrForIdentityErrorOverride = 0;
    if (!error)
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

    *error = self;
  }

  return sub_100017D50();
}

- (BOOL)loadIdentity:(id)identity intoSession:(unsigned int)session error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if (self)
  {
    loadIdentityErrorOverride = self->_loadIdentityErrorOverride;
    if (!error)
    {
      return sub_100017D50();
    }
  }

  else
  {
    loadIdentityErrorOverride = 0;
    if (!error)
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

    *error = self;
  }

  return sub_100017D50();
}

- (BOOL)unloadIdentityFromSession:(unsigned int)session error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if (self)
  {
    unloadIdentityErrorOverride = self->_unloadIdentityErrorOverride;
    if (!error)
    {
      return sub_100017D50();
    }
  }

  else
  {
    unloadIdentityErrorOverride = 0;
    if (!error)
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

    *error = self;
  }

  return sub_100017D50();
}

- (BOOL)unlockIdentity:(unsigned int)identity passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if (self)
  {
    unlockIdentityErrorOverride = self->_unlockIdentityErrorOverride;
    if (!error)
    {
      return sub_100017D50();
    }
  }

  else
  {
    unlockIdentityErrorOverride = 0;
    if (!error)
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

    *error = self;
  }

  return sub_100017D50();
}

- (BOOL)unlockIdentityInSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if (self)
  {
    unlockIdentityErrorOverride = self->_unlockIdentityErrorOverride;
    if (!error)
    {
      return sub_100017D50();
    }
  }

  else
  {
    unlockIdentityErrorOverride = 0;
    if (!error)
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

    *error = self;
  }

  return sub_100017D50();
}

- (BOOL)verifyIdentityPasswordInSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if (self)
  {
    verifyIdentityPasswordErrorOverride = self->_verifyIdentityPasswordErrorOverride;
    if (!error)
    {
      return sub_100017D50();
    }
  }

  else
  {
    verifyIdentityPasswordErrorOverride = 0;
    if (!error)
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

    *error = self;
  }

  return sub_100017D50();
}

- (BOOL)loginIdentity:(id)identity intoSession:(unsigned int)session passcode:(id)passcode isACMCredential:(BOOL)credential error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  if (self)
  {
    loginIdentityErrorOverride = self->_loginIdentityErrorOverride;
    if (!error)
    {
      return sub_100017D50();
    }
  }

  else
  {
    loginIdentityErrorOverride = 0;
    if (!error)
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

    *error = self;
  }

  return sub_100017D50();
}

@end