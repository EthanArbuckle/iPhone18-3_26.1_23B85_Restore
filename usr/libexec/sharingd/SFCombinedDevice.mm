@interface SFCombinedDevice
- (BOOL)_canTransition:(int)transition;
- (BOOL)canTransition:(int)transition;
- (BOOL)isReady;
- (NSString)effectiveID;
- (NSString)name;
- (id)description;
- (void)resetTicks;
- (void)setNextState:(int)state;
- (void)setState:(int)state;
@end

@implementation SFCombinedDevice

- (NSString)name
{
  name = [(SFDevice *)self->_bleDevice name];
  v4 = name;
  if (name)
  {
    v5 = name;
  }

  else
  {
    name2 = [(RPCompanionLinkDevice *)self->_clinkDevice name];
    v7 = name2;
    if (name2)
    {
      name3 = name2;
    }

    else
    {
      name3 = [(TURoute *)self->_route name];
    }

    v5 = name3;
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
    mediaRouteIdentifier = [(RPCompanionLinkDevice *)self->_clinkDevice mediaRouteIdentifier];
    v2 = mediaRouteIdentifier;
    if (!mediaRouteIdentifier || ![(NSString *)mediaRouteIdentifier length])
    {

      v2 = 0;
    }
  }

  return v2;
}

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  name = [(SFCombinedDevice *)self name];
  [v3 appendFormat:@"SFCombinedDevice %@: ", name];

  bleDevice = self->_bleDevice;
  if (bleDevice)
  {
    identifier = [(SFDevice *)bleDevice identifier];
    [v3 appendFormat:@", BLE %@", identifier];
  }

  clinkDevice = self->_clinkDevice;
  if (clinkDevice)
  {
    effectiveIdentifier = [(RPCompanionLinkDevice *)clinkDevice effectiveIdentifier];
    [v3 appendFormat:@", CL %@", effectiveIdentifier];
  }

  mediaRouteIdentifier = [(RPCompanionLinkDevice *)self->_clinkDevice mediaRouteIdentifier];
  v10 = mediaRouteIdentifier;
  if (mediaRouteIdentifier)
  {
    [v3 appendFormat:@", CL.MR %@", mediaRouteIdentifier];
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

- (BOOL)canTransition:(int)transition
{
  v5 = [(SFCombinedDevice *)self _canTransition:?];
  if (!v5 && dword_1009708B0 <= 10 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F5BD8(self, transition);
  }

  return v5;
}

- (BOOL)_canTransition:(int)transition
{
  LOBYTE(v4) = 0;
  if (transition <= 14)
  {
    if (transition <= 11)
    {
      if (transition == 10)
      {
        v5 = ((self->_state - 11) & 0xFFFFFFFB) == 0;
      }

      else
      {
        if (transition != 11)
        {
          return v4 & 1;
        }

        v5 = self->_state == 10;
      }

      goto LABEL_32;
    }

    if (transition != 12)
    {
      if (transition == 13)
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

  if (transition <= 17)
  {
    if (transition == 15)
    {
      state = self->_state;
      v5 = state == 14 || state == 20;
      goto LABEL_32;
    }

    if (transition != 16)
    {
      v5 = self->_state == 16;
      goto LABEL_32;
    }

    v7 = (self->_state - 13) >= 3;
    goto LABEL_23;
  }

  if (transition != 18)
  {
    if (transition == 19)
    {
      v6 = self->_state;
    }

    else
    {
      if (transition != 20)
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

    mediaRouteIdentifier = [(RPCompanionLinkDevice *)self->_clinkDevice mediaRouteIdentifier];

    if (mediaRouteIdentifier)
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
  notificationBubble = [(SFCombinedDevice *)self notificationBubble];
  [notificationBubble reset];

  transferBubble = [(SFCombinedDevice *)self transferBubble];
  [transferBubble reset];
}

- (void)setNextState:(int)state
{
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F5D40(self, state);
  }

  self->_nextState = state;
}

- (void)setState:(int)state
{
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F5DC4(self, state);
  }

  self->_state = state;
}

@end