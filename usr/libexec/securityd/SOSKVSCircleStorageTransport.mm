@interface SOSKVSCircleStorageTransport
- (BOOL)expireRetirementRecords:(__CFDictionary *)a3 err:(__CFError *)a4;
- (BOOL)kvsAppendDebugKeyInterest:(__CFArray *)a3 firstUnlock:(__CFArray *)a4 unlocked:(__CFArray *)a5 err:(__CFError *)a6;
- (BOOL)kvsAppendKeyInterest:(__CFArray *)a3 firstUnlock:(__CFArray *)a4 unlocked:(__CFArray *)a5 err:(__CFError *)a6;
- (BOOL)kvsAppendRingKeyInterest:(__CFArray *)a3 firstUnlock:(__CFArray *)a4 unlocked:(__CFArray *)a5 err:(__CFError *)a6;
- (BOOL)kvsRingPostRing:(__CFString *)a3 ring:(__CFData *)a4 err:(__CFError *)a5;
- (BOOL)kvsSendOfficialDSID:(__CFString *)a3 err:(__CFError *)a4;
- (BOOL)kvsSendPendingChanges:(__CFError *)a3;
- (BOOL)kvssendDebugInfo:(__CFString *)a3 debug:(void *)a4 err:(__CFError *)a5;
- (BOOL)postCircle:(__CFString *)a3 circleData:(__CFData *)a4 err:(__CFError *)a5;
- (BOOL)postRetirement:(__CFString *)a3 peer:(__OpaqueSOSPeerInfo *)a4 err:(__CFError *)a5;
- (SOSKVSCircleStorageTransport)init;
- (SOSKVSCircleStorageTransport)initWithAccount:(id)a3 andCircleName:(id)a4;
- (__CFArray)handleCircleMessagesAndReturnHandledCopy:(__CFDictionary *)a3 err:(__CFError *)a4;
- (__CFDictionary)handleRetirementMessages:(__CFDictionary *)a3 err:(__CFError *)a4;
- (void)kvsAddToPendingChanges:(__CFString *)a3 data:(__CFData *)a4;
@end

@implementation SOSKVSCircleStorageTransport

- (BOOL)postRetirement:(__CFString *)a3 peer:(__OpaqueSOSPeerInfo *)a4 err:(__CFError *)a5
{
  v6 = SOSPeerInfoCopyEncodedData();
  if (v6)
  {
    v7 = v6;
    v8 = [(SOSKVSCircleStorageTransport *)self circleName];
    SOSPeerInfoGetPeerID();
    v9 = SOSRetirementKeyCreateWithCircleNameAndPeer();

    if (v9)
    {
      [(SOSKVSCircleStorageTransport *)self kvsAddToPendingChanges:v9 data:v7];
      CFRelease(v9);
    }

    CFRelease(v7);
  }

  return 1;
}

- (BOOL)kvsSendOfficialDSID:(__CFString *)a3 err:(__CFError *)a4
{
  if (a3)
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, a3, 0x8000100u, 0x3Fu);
    [(SOSKVSCircleStorageTransport *)self kvsAddToPendingChanges:kSOSKVSOfficialDSIDKey data:ExternalRepresentation];
    if (ExternalRepresentation)
    {
      CFRelease(ExternalRepresentation);
    }
  }

  return 1;
}

- (BOOL)kvsRingPostRing:(__CFString *)a3 ring:(__CFData *)a4 err:(__CFError *)a5
{
  v7 = SOSRingKeyCreateWithName();
  if (v7)
  {
    v8 = v7;
    [(SOSKVSCircleStorageTransport *)self kvsAddToPendingChanges:v7 data:a4];
    CFRelease(v8);
  }

  return 1;
}

- (BOOL)kvssendDebugInfo:(__CFString *)a3 debug:(void *)a4 err:(__CFError *)a5
{
  v6 = SOSDebugInfoKeyCreateWithTypeName();
  v9 = v6;
  v10 = a4;
  v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  if (v6)
  {
    CFRelease(v6);
  }

  sub_10023CB20();

  return 1;
}

- (BOOL)kvsAppendDebugKeyInterest:(__CFArray *)a3 firstUnlock:(__CFArray *)a4 unlocked:(__CFArray *)a5 err:(__CFError *)a6
{
  v7 = SOSDebugInfoKeyCreateWithTypeName();
  CFArrayAppendValue(a3, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  return 1;
}

- (BOOL)kvsAppendRingKeyInterest:(__CFArray *)a3 firstUnlock:(__CFArray *)a4 unlocked:(__CFArray *)a5 err:(__CFError *)a6
{
  v8 = [(SOSCircleStorageTransport *)self account:a3];
  v9 = sub_100218428(v8);

  if (!v9)
  {
LABEL_9:
    LOBYTE(account) = 1;
    return account;
  }

  account = self->super.account;
  if (account)
  {
    v11 = [(SOSAccount *)account trust];
    if ([v11 trustedCircle])
    {
      v12 = self->super.account;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v18 = sub_10023CE10;
      v19 = &unk_100346A98;
      v20 = a5;
      v13 = v17;
      if ([(SOSAccount *)v12 peerInfo])
      {
        v14 = SOSViewCopyViewSet();
        context[0] = _NSConcreteStackBlock;
        context[1] = 3221225472;
        context[2] = sub_1002134DC;
        context[3] = &unk_1003456B0;
        v15 = v13;
        v22 = v15;
        CFSetApplyFunction(v14, sub_1002134C4, context);
        if (v14)
        {
          CFRelease(v14);
        }

        (v18)(v15, @"RecoveryRing");
      }

      goto LABEL_9;
    }

    LOBYTE(account) = 0;
  }

  return account;
}

- (BOOL)kvsAppendKeyInterest:(__CFArray *)a3 firstUnlock:(__CFArray *)a4 unlocked:(__CFArray *)a5 err:(__CFError *)a6
{
  v8 = [(SOSCircleStorageTransport *)self account:a3];
  v9 = sub_100218428(v8);

  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = [(SOSKVSCircleStorageTransport *)self circleName];

  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = SOSCircleKeyCreateWithName();
  if (v11)
  {
    v12 = v11;
    account = self->super.account;
    if (account)
    {
      v14 = [(SOSAccount *)account trust];
      if ([v14 trustedCircle])
      {
        Name = SOSCircleGetName();
        if (Name)
        {
          if (CFEqual(v10, Name))
          {
            SOSCircleForEachActivePeer();
            CFArrayAppendValue(a5, v12);
            CFRelease(v12);

LABEL_9:
            LOBYTE(v11) = 1;
            return v11;
          }
        }
      }
    }

    CFRelease(v12);
LABEL_12:
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (__CFArray)handleCircleMessagesAndReturnHandledCopy:(__CFDictionary *)a3 err:(__CFError *)a4
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10023D0E0;
  v8[3] = &unk_1003476F0;
  v8[4] = self;
  v8[5] = Mutable;
  CFDictionaryApplyFunction(a3, sub_10023D684, v8);
  return Mutable;
}

- (__CFDictionary)handleRetirementMessages:(__CFDictionary *)a3 err:(__CFError *)a4
{
  v6 = [(SOSCircleStorageTransport *)self account];
  v7 = [v6 trust];
  [v7 trustedCircle];
  Name = SOSCircleGetName();
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if ([v7 trustedCircle] && (Value = CFDictionaryGetValue(a3, Name)) != 0 && (v18 = Value, v19 = CFGetTypeID(Value), v19 == CFDictionaryGetTypeID()))
  {
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_100220440;
    context[3] = &unk_100345A50;
    v40 = a4;
    v20 = v7;
    v38 = v20;
    v21 = v6;
    v39 = v21;
    v41 = Mutable;
    CFDictionaryApplyFunction(v18, sub_10021FCB8, context);
    v22 = [v21 peerInfo];
    if (v22)
    {
      v23 = v22;
      v24 = [v20 retirees];
      LODWORD(v23) = [v24 containsObject:v23];

      if (v23)
      {
        v25 = [v21 trust];
        [v25 purgeIdentity];

        [v20 setDepartureCode:6];
      }
    }

    if (CFArrayGetCount(Mutable))
    {
      v33 = sub_10001104C(kCFAllocatorDefault, v26, v27, v28, v29, v30, v31, v32, Name, Mutable);
    }

    else
    {
      v33 = sub_10001104C(kCFAllocatorDefault, v26, v27, v28, v29, v30, v31, v32, 0, v36);
    }

    v34 = v33;
    if (Mutable)
    {
      CFRelease(Mutable);
    }
  }

  else
  {
    v34 = sub_10001104C(kCFAllocatorDefault, v10, v11, v12, v13, v14, v15, v16, 0, v36);
  }

  return v34;
}

- (BOOL)postCircle:(__CFString *)a3 circleData:(__CFData *)a4 err:(__CFError *)a5
{
  v7 = SOSCircleKeyCreateWithName();
  if (v7)
  {
    v8 = v7;
    [(SOSKVSCircleStorageTransport *)self kvsAddToPendingChanges:v7 data:a4];
    CFRelease(v8);
  }

  return 1;
}

- (BOOL)expireRetirementRecords:(__CFDictionary *)a3 err:(__CFError *)a4
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_10023D9E4;
  context[3] = &unk_1003469D0;
  context[4] = Mutable;
  CFDictionaryApplyFunction(a3, sub_10023D684, context);
  if (CFDictionaryGetCount(Mutable))
  {
    sub_10023CB20();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 1;
}

- (void)kvsAddToPendingChanges:(__CFString *)a3 data:(__CFData *)a4
{
  v7 = [(SOSKVSCircleStorageTransport *)self pending_changes];

  if (!v7)
  {
    v8 = +[NSMutableDictionary dictionary];
    [(SOSKVSCircleStorageTransport *)self setPending_changes:v8];
  }

  v9 = [(SOSKVSCircleStorageTransport *)self pending_changes];
  v11 = v9;
  if (a4)
  {
    [v9 setObject:a4 forKey:a3];
  }

  else
  {
    v10 = +[NSNull null];
    [v11 setObject:v10 forKey:a3];
  }
}

- (BOOL)kvsSendPendingChanges:(__CFError *)a3
{
  v4 = [(SOSKVSCircleStorageTransport *)self pending_changes];
  if (v4)
  {
    v5 = v4;
    v6 = [(SOSKVSCircleStorageTransport *)self pending_changes];
    v7 = [v6 count];

    if (v7)
    {
      v8 = sub_10020E324(self->super.account);
      if (v8)
      {
        v9 = v8;
      }

      else
      {
        v9 = kCFNull;
      }

      v10 = [(SOSKVSCircleStorageTransport *)self pending_changes];
      [v10 setObject:v9 forKey:kSOSKVSRequiredKey];

      v11 = [(SOSKVSCircleStorageTransport *)self pending_changes];
      sub_10023CB20();

      v12 = [(SOSKVSCircleStorageTransport *)self pending_changes];
      [v12 removeAllObjects];
    }
  }

  return 1;
}

- (SOSKVSCircleStorageTransport)initWithAccount:(id)a3 andCircleName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SOSKVSCircleStorageTransport;
  v8 = [(SOSCircleStorageTransport *)&v12 init];
  if (v8)
  {
    v9 = +[NSMutableDictionary dictionary];
    [(SOSKVSCircleStorageTransport *)v8 setPending_changes:v9];

    v10 = [[NSString alloc] initWithString:v7];
    [(SOSKVSCircleStorageTransport *)v8 setCircleName:v10];

    [(SOSCircleStorageTransport *)v8 setAccount:v6];
    sub_1002360B4(v8);
  }

  return v8;
}

- (SOSKVSCircleStorageTransport)init
{
  v3.receiver = self;
  v3.super_class = SOSKVSCircleStorageTransport;
  return [(SOSCircleStorageTransport *)&v3 init];
}

@end