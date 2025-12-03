@interface SFNotificationProxy
- (SFNotificationProxy)init;
- (id)externalID;
- (void)_requestPostOrUpdate:(id)update info:(id)info mediumVariant:(BOOL)variant canPost:(BOOL)post;
- (void)handleNotificationWasDismissed:(id)dismissed reason:(int64_t)reason;
- (void)handleNotificationWasTapped:(id)tapped;
- (void)requestRemove:(id)remove withReason:(int64_t)reason;
- (void)requestRemoveAll;
- (void)reset;
@end

@implementation SFNotificationProxy

- (void)requestRemoveAll
{
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_100008BC8();
  }

  v3 = +[SDNotificationManager sharedManager];
  [v3 homePodHandoffRemoveAll];

  [(SFNotificationProxy *)self reset];
}

- (void)reset
{
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_100008BAC();
  }

  [(NSMutableArray *)self->_internalIDs removeAllObjects];
  internalIDs = self->_internalIDs;
  self->_internalIDs = 0;

  externalID = self->_externalID;
  self->_externalID = 0;

  self->_showingMedium = 0;
  triggeredID = self->_triggeredID;
  self->_triggeredID = 0;
}

- (SFNotificationProxy)init
{
  v6.receiver = self;
  v6.super_class = SFNotificationProxy;
  v2 = [(SFNotificationProxy *)&v6 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)_requestPostOrUpdate:(id)update info:(id)info mediumVariant:(BOOL)variant canPost:(BOOL)post
{
  postCopy = post;
  variantCopy = variant;
  updateCopy = update;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  externalID = self->_externalID;
  if (externalID)
  {
    v13 = !variantCopy;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
    {
      sub_1000F5EE0();
    }

    goto LABEL_29;
  }

  if (externalID)
  {
    internalIDs = self->_internalIDs;
    if (!internalIDs)
    {
      v15 = objc_alloc_init(NSMutableArray);
      v16 = self->_internalIDs;
      self->_internalIDs = v15;

      internalIDs = self->_internalIDs;
    }

    if (([(NSMutableArray *)internalIDs containsObject:updateCopy]& 1) == 0)
    {
      [(NSMutableArray *)self->_internalIDs addObject:updateCopy];
    }

    externalID = [(SFNotificationProxy *)self externalID];
    if (externalID)
    {
      v18 = externalID;
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F5EA0();
      }

      v19 = +[SDNotificationManager sharedManager];
      [v19 homePodHandoffUpdateIfNeeded:v18 info:infoCopy];
LABEL_28:

      self->_showingMedium = variantCopy;
      objc_storeStrong(&self->_triggeredID, update);
    }
  }

  else if (postCopy)
  {
    v20 = self->_internalIDs;
    if (!v20)
    {
      v21 = objc_alloc_init(NSMutableArray);
      v22 = self->_internalIDs;
      self->_internalIDs = v21;

      v20 = self->_internalIDs;
    }

    [(NSMutableArray *)v20 addObject:updateCopy];
    externalID2 = [(SFNotificationProxy *)self externalID];
    if (externalID2)
    {
      v18 = externalID2;
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F5E60();
      }

      v19 = +[SDNotificationManager sharedManager];
      [v19 homePodHandoffPostIfNeeded:v18 info:infoCopy];
      goto LABEL_28;
    }
  }

  else if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_29:
}

- (void)requestRemove:(id)remove withReason:(int64_t)reason
{
  removeCopy = remove;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([(NSMutableArray *)self->_internalIDs containsObject:removeCopy]& 1) != 0)
  {
    v6 = self->_externalID;
    if (!v6)
    {
      if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F5F98();
      }

      goto LABEL_46;
    }

    if (!self->_showingMedium)
    {
      triggeredID = self->_triggeredID;
      v8 = removeCopy;
      v9 = triggeredID;
      v10 = v9;
      if (v9 == v8)
      {
      }

      else
      {
        if ((v8 != 0) == (v9 == 0))
        {

          goto LABEL_23;
        }

        v11 = [(NSString *)v8 isEqual:v9];

        if ((v11 & 1) == 0)
        {
LABEL_23:
          if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
          {
            sub_1000F5F3C();
          }

          [(NSMutableArray *)self->_internalIDs removeObject:v8];
          v17 = objc_retainBlock(self->_dismissedHandler);
          v18 = v17;
          if (v17)
          {
            (*(v17 + 2))(v17, v8, reason);
          }

          goto LABEL_45;
        }
      }
    }

    if (!self->_showingMedium)
    {
      v12 = self->_triggeredID;
      v13 = removeCopy;
      v14 = v12;
      v15 = v14;
      if (v14 == v13)
      {

        goto LABEL_29;
      }

      if ((v13 != 0) != (v14 == 0))
      {
        v16 = [(NSString *)v13 isEqual:v14];

        if (!v16)
        {
          goto LABEL_34;
        }

LABEL_29:
        if (dword_1009708B0 > 30 || dword_1009708B0 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_44;
        }

        goto LABEL_32;
      }
    }

LABEL_34:
    if (!self->_showingMedium)
    {
      goto LABEL_46;
    }

    v19 = self->_triggeredID;
    v20 = removeCopy;
    v21 = v19;
    v22 = v21;
    if (v21 == v20)
    {
    }

    else
    {
      if ((v20 != 0) == (v21 == 0))
      {

        goto LABEL_46;
      }

      v23 = [(NSString *)v20 isEqual:v21];

      if (!v23)
      {
        goto LABEL_46;
      }
    }

    if ([(NSMutableArray *)self->_internalIDs count]!= 1)
    {
LABEL_46:

      goto LABEL_47;
    }

    if (dword_1009708B0 > 30 || dword_1009708B0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_44;
    }

LABEL_32:
    sub_1000F5F7C();
LABEL_44:
    v18 = +[SDNotificationManager sharedManager];
    [v18 homePodHandoffRemove:v6 reason:reason];
LABEL_45:

    goto LABEL_46;
  }

  if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F5EFC();
  }

LABEL_47:
}

- (void)handleNotificationWasTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = tappedCopy;
  externalID = self->_externalID;
  v14 = tappedCopy;
  if (externalID)
  {
    v7 = tappedCopy;
    v8 = externalID;
    v9 = v8;
    if (v8 == v7)
    {

      goto LABEL_7;
    }

    if (v7)
    {
      v10 = [(NSString *)v7 isEqual:v8];

      v5 = v14;
      if ((v10 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_7:
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F5FB4();
      }

      v11 = objc_retainBlock(self->_tappedHandler);
      if (v11)
      {
        v12 = [(NSMutableArray *)self->_internalIDs copy];
        v11[2](v11, v12);
      }

      [(SFNotificationProxy *)self reset];
      goto LABEL_13;
    }

    v5 = v14;
  }

LABEL_15:
  if (dword_1009708B0 <= 90)
  {
    if (dword_1009708B0 != -1 || (v13 = _LogCategory_Initialize(), v5 = v14, v13))
    {
      sub_1000F5FF4();
LABEL_13:
      v5 = v14;
    }
  }
}

- (void)handleNotificationWasDismissed:(id)dismissed reason:(int64_t)reason
{
  dismissedCopy = dismissed;
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F6034(reason);
  }

  v7 = objc_retainBlock(self->_dismissedHandler);
  if (v7)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_internalIDs;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v7[2](v7, *(*(&v13 + 1) + 8 * i), reason);
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }

  [(SFNotificationProxy *)self reset];
}

- (id)externalID
{
  externalID = self->_externalID;
  if (!externalID)
  {
    v4 = +[NSUUID UUID];
    uUIDString = [v4 UUIDString];
    v6 = self->_externalID;
    self->_externalID = uUIDString;

    externalID = self->_externalID;
  }

  return externalID;
}

@end