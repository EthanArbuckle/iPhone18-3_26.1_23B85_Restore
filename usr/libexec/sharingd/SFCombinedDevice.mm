@interface SFCombinedDevice
- (BOOL)_canTransition:(int)a3;
- (BOOL)canTransition:(int)a3;
- (BOOL)isReady;
- (NSString)effectiveID;
- (NSString)name;
- (id)description;
- (void)resetTicks;
- (void)setNextState:(int)a3;
- (void)setState:(int)a3;
@end

@implementation SFCombinedDevice

- (NSString)name
{
  v3 = [(SFDevice *)self->_bleDevice name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(RPCompanionLinkDevice *)self->_clinkDevice name];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [(TURoute *)self->_route name];
    }

    v5 = v8;
  }

  return v5;
}

- (NSString)effectiveID
{
  if (self->_forced)
  {
    v2 = self->_forcedID;
  }

  else
  {
    v3 = [(RPCompanionLinkDevice *)self->_clinkDevice mediaRouteIdentifier];
    v2 = v3;
    if (!v3 || ![(NSString *)v3 length])
    {

      v2 = 0;
    }
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  v4 = [(SFCombinedDevice *)self name];
  [v3 appendFormat:@"SFCombinedDevice %@: ", v4];

  bleDevice = self->_bleDevice;
  if (bleDevice)
  {
    v6 = [(SFDevice *)bleDevice identifier];
    [v3 appendFormat:@", BLE %@", v6];
  }

  clinkDevice = self->_clinkDevice;
  if (clinkDevice)
  {
    v8 = [(RPCompanionLinkDevice *)clinkDevice effectiveIdentifier];
    [v3 appendFormat:@", CL %@", v8];
  }

  v9 = [(RPCompanionLinkDevice *)self->_clinkDevice mediaRouteIdentifier];
  v10 = v9;
  if (v9)
  {
    [v3 appendFormat:@", CL.MR %@", v9];
  }

  if (self->_notificationInfo)
  {
    [v3 appendString:{@", notif"}];
  }

  notificationType = self->_notificationType;
  if (notificationType <= 3)
  {
    if (notificationType > 1)
    {
      if (notificationType == 2)
      {
        v12 = @"HPMedia";
      }

      else
      {
        v12 = @"HPCall";
      }

      goto LABEL_28;
    }

    if (!notificationType)
    {
      goto LABEL_29;
    }

    if (notificationType == 1)
    {
      v12 = @"Unknown";
      goto LABEL_28;
    }

LABEL_27:
    v12 = @"?";
    goto LABEL_28;
  }

  if (notificationType <= 5)
  {
    if (notificationType == 4)
    {
      v12 = @"TVAutoFill";
    }

    else
    {
      v12 = @"TVKeyboard";
    }

    goto LABEL_28;
  }

  if (notificationType == 6)
  {
    v12 = @"WatchKeyboard";
    goto LABEL_28;
  }

  if (notificationType == 7)
  {
    v12 = @"VisionUnlockiOS";
    goto LABEL_28;
  }

  if (notificationType != 8)
  {
    goto LABEL_27;
  }

  v12 = @"VisionUnlockiOSError";
LABEL_28:
  [v3 appendFormat:@", %@", v12];
LABEL_29:
  if (self->_route)
  {
    [v3 appendString:{@", route"}];
  }

  if ([(SFCombinedDevice *)self isReady])
  {
    [v3 appendString:{@", ready"}];
  }

  v13 = sub_100035C98(self->_state);
  v14 = v13;
  if (v13)
  {
    [v3 appendFormat:@", %@", v13];
  }

  return v3;
}

- (BOOL)canTransition:(int)a3
{
  v5 = [(SFCombinedDevice *)self _canTransition:?];
  if (!v5 && dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F5BD8(self, a3);
  }

  return v5;
}

- (BOOL)_canTransition:(int)a3
{
  LOBYTE(v4) = 0;
  if (a3 <= 14)
  {
    if (a3 <= 11)
    {
      if (a3 == 10)
      {
        v5 = ((self->_state - 11) & 0xFFFFFFFB) == 0;
      }

      else
      {
        if (a3 != 11)
        {
          return v4 & 1;
        }

        v5 = self->_state == 10;
      }

      goto LABEL_32;
    }

    if (a3 != 12)
    {
      if (a3 == 13)
      {
        if ([(SFCombinedDevice *)self isReady])
        {
          v7 = (self->_state - 11) >= 2;
LABEL_23:
          LOBYTE(v4) = !v7;
          return v4 & 1;
        }
      }

      else if ([(SFCombinedDevice *)self isReady])
      {
        v5 = self->_state == 13;
        goto LABEL_32;
      }

      LOBYTE(v4) = 0;
      return v4 & 1;
    }

    v5 = self->_state == 11;
LABEL_32:
    LOBYTE(v4) = v5;
    return v4 & 1;
  }

  if (a3 <= 17)
  {
    if (a3 == 15)
    {
      state = self->_state;
      v5 = state == 14 || state == 20;
      goto LABEL_32;
    }

    if (a3 != 16)
    {
      v5 = self->_state == 16;
      goto LABEL_32;
    }

    v7 = (self->_state - 13) >= 3;
    goto LABEL_23;
  }

  if (a3 != 18)
  {
    if (a3 == 19)
    {
      v6 = self->_state;
    }

    else
    {
      if (a3 != 20)
      {
        return v4 & 1;
      }

      v6 = self->_state & 0xFFFFFFFE;
    }

    v5 = v6 == 18;
    goto LABEL_32;
  }

  v10 = self->_state;
  v7 = v10 >= 0x12;
  v4 = 0x34000u >> v10;
  if (v7)
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

- (BOOL)isReady
{
  notificationType = self->_notificationType;
  if (notificationType == 2)
  {
    if (self->_forced && self->_notificationInfo)
    {
      return 1;
    }

    v9 = [(RPCompanionLinkDevice *)self->_clinkDevice mediaRouteIdentifier];

    if (v9)
    {
      if (self->_bleDevice)
      {
        notificationInfo = self->_notificationInfo;
        if (notificationInfo)
        {
          return [(SFNotificationInfo *)notificationInfo notificationType]== 2;
        }
      }
    }

    return 0;
  }

  if (notificationType != 3)
  {
    return 0;
  }

  if (self->_forced && self->_notificationInfo)
  {
    return 1;
  }

  v4 = self->_clinkDevice;
  if (v4)
  {
    v5 = self->_route;
    if (v5)
    {
      v6 = self->_bleDevice;
      v8 = v6 && RPCompanionLinkDeviceIsEqualToSFDevice() && sub_1000EB004(v6, v5, v4) && (v7 = self->_notificationInfo) != 0 && [(SFNotificationInfo *)v7 notificationType]== 3;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)resetTicks
{
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F5CE4(self);
  }

  [(SFCombinedDevice *)self setNotificationDurationSecs:-1.0];
  [(SFCombinedDevice *)self setNotificationTicks:-1];
  [(SFCombinedDevice *)self setPendingContentDurationSecs:-1.0];
  [(SFCombinedDevice *)self setPendingContentTicks:-1];
  [(SFCombinedDevice *)self setTransferDoneDurationSecs:-1.0];
  [(SFCombinedDevice *)self setTransferDoneTicks:-1];
  [(SFCombinedDevice *)self setTransferPendingDurationSecs:-1.0];
  [(SFCombinedDevice *)self setTransferPendingStartTicks:-1];
  v3 = [(SFCombinedDevice *)self notificationBubble];
  [v3 reset];

  v4 = [(SFCombinedDevice *)self transferBubble];
  [v4 reset];
}

- (void)setNextState:(int)a3
{
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F5D40(self, a3);
  }

  self->_nextState = a3;
}

- (void)setState:(int)a3
{
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F5DC4(self, a3);
  }

  self->_state = a3;
}

@end