@interface SFNotificationProxy
- (SFNotificationProxy)init;
- (id)externalID;
- (void)_requestPostOrUpdate:(id)a3 info:(id)a4 mediumVariant:(BOOL)a5 canPost:(BOOL)a6;
- (void)handleNotificationWasDismissed:(id)a3 reason:(int64_t)a4;
- (void)handleNotificationWasTapped:(id)a3;
- (void)requestRemove:(id)a3 withReason:(int64_t)a4;
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

- (void)_requestPostOrUpdate:(id)a3 info:(id)a4 mediumVariant:(BOOL)a5 canPost:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v24 = a3;
  v11 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  externalID = self->_externalID;
  if (externalID)
  {
    v13 = !v7;
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

    if (([(NSMutableArray *)internalIDs containsObject:v24]& 1) == 0)
    {
      [(NSMutableArray *)self->_internalIDs addObject:v24];
    }

    v17 = [(SFNotificationProxy *)self externalID];
    if (v17)
    {
      v18 = v17;
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F5EA0();
      }

      v19 = +[SDNotificationManager sharedManager];
      [v19 homePodHandoffUpdateIfNeeded:v18 info:v11];
LABEL_28:

      self->_showingMedium = v7;
      objc_storeStrong(&self->_triggeredID, a3);
    }
  }

  else if (v6)
  {
    v20 = self->_internalIDs;
    if (!v20)
    {
      v21 = objc_alloc_init(NSMutableArray);
      v22 = self->_internalIDs;
      self->_internalIDs = v21;

      v20 = self->_internalIDs;
    }

    [(NSMutableArray *)v20 addObject:v24];
    v23 = [(SFNotificationProxy *)self externalID];
    if (v23)
    {
      v18 = v23;
      if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
      {
        sub_1000F5E60();
      }

      v19 = +[SDNotificationManager sharedManager];
      [v19 homePodHandoffPostIfNeeded:v18 info:v11];
      goto LABEL_28;
    }
  }

  else if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_29:
}

- (void)requestRemove:(id)a3 withReason:(int64_t)a4
{
  v24 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (([(NSMutableArray *)self->_internalIDs containsObject:v24]& 1) != 0)
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
      v8 = v24;
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
            (*(v17 + 2))(v17, v8, a4);
          }

          goto LABEL_45;
        }
      }
    }

    if (!self->_showingMedium)
    {
      v12 = self->_triggeredID;
      v13 = v24;
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
    v20 = v24;
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
    [v18 homePodHandoffRemove:v6 reason:a4];
LABEL_45:

    goto LABEL_46;
  }

  if (dword_1009708B0 <= 90 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F5EFC();
  }

LABEL_47:
}

- (void)handleNotificationWasTapped:(id)a3
{
  v4 = a3;
  v5 = v4;
  externalID = self->_externalID;
  v14 = v4;
  if (externalID)
  {
    v7 = v4;
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

- (void)handleNotificationWasDismissed:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  if (dword_1009708B0 <= 30 && (dword_1009708B0 != -1 || _LogCategory_Initialize()))
  {
    sub_1000F6034(a4);
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

          v7[2](v7, *(*(&v13 + 1) + 8 * i), a4);
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
    v5 = [v4 UUIDString];
    v6 = self->_externalID;
    self->_externalID = v5;

    externalID = self->_externalID;
  }

  return externalID;
}

@end