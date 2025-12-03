@interface SOSKVSCircleStorageTransport
- (BOOL)expireRetirementRecords:(__CFDictionary *)records err:(__CFError *)err;
- (BOOL)kvsAppendDebugKeyInterest:(__CFArray *)interest firstUnlock:(__CFArray *)unlock unlocked:(__CFArray *)unlocked err:(__CFError *)err;
- (BOOL)kvsAppendKeyInterest:(__CFArray *)interest firstUnlock:(__CFArray *)unlock unlocked:(__CFArray *)unlocked err:(__CFError *)err;
- (BOOL)kvsAppendRingKeyInterest:(__CFArray *)interest firstUnlock:(__CFArray *)unlock unlocked:(__CFArray *)unlocked err:(__CFError *)err;
- (BOOL)kvsRingPostRing:(__CFString *)ring ring:(__CFData *)a4 err:(__CFError *)err;
- (BOOL)kvsSendOfficialDSID:(__CFString *)d err:(__CFError *)err;
- (BOOL)kvsSendPendingChanges:(__CFError *)changes;
- (BOOL)kvssendDebugInfo:(__CFString *)info debug:(void *)debug err:(__CFError *)err;
- (BOOL)postCircle:(__CFString *)circle circleData:(__CFData *)data err:(__CFError *)err;
- (BOOL)postRetirement:(__CFString *)retirement peer:(__OpaqueSOSPeerInfo *)peer err:(__CFError *)err;
- (SOSKVSCircleStorageTransport)init;
- (SOSKVSCircleStorageTransport)initWithAccount:(id)account andCircleName:(id)name;
- (__CFArray)handleCircleMessagesAndReturnHandledCopy:(__CFDictionary *)copy err:(__CFError *)err;
- (__CFDictionary)handleRetirementMessages:(__CFDictionary *)messages err:(__CFError *)err;
- (void)kvsAddToPendingChanges:(__CFString *)changes data:(__CFData *)data;
@end

@implementation SOSKVSCircleStorageTransport

- (BOOL)postRetirement:(__CFString *)retirement peer:(__OpaqueSOSPeerInfo *)peer err:(__CFError *)err
{
  v6 = SOSPeerInfoCopyEncodedData();
  if (v6)
  {
    v7 = v6;
    circleName = [(SOSKVSCircleStorageTransport *)self circleName];
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

- (BOOL)kvsSendOfficialDSID:(__CFString *)d err:(__CFError *)err
{
  if (d)
  {
    ExternalRepresentation = CFStringCreateExternalRepresentation(kCFAllocatorDefault, d, 0x8000100u, 0x3Fu);
    [(SOSKVSCircleStorageTransport *)self kvsAddToPendingChanges:kSOSKVSOfficialDSIDKey data:ExternalRepresentation];
    if (ExternalRepresentation)
    {
      CFRelease(ExternalRepresentation);
    }
  }

  return 1;
}

- (BOOL)kvsRingPostRing:(__CFString *)ring ring:(__CFData *)a4 err:(__CFError *)err
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

- (BOOL)kvssendDebugInfo:(__CFString *)info debug:(void *)debug err:(__CFError *)err
{
  v6 = SOSDebugInfoKeyCreateWithTypeName();
  v9 = v6;
  debugCopy = debug;
  v7 = [NSDictionary dictionaryWithObjects:&debugCopy forKeys:&v9 count:1];
  if (v6)
  {
    CFRelease(v6);
  }

  sub_10023CB20();

  return 1;
}

- (BOOL)kvsAppendDebugKeyInterest:(__CFArray *)interest firstUnlock:(__CFArray *)unlock unlocked:(__CFArray *)unlocked err:(__CFError *)err
{
  v7 = SOSDebugInfoKeyCreateWithTypeName();
  CFArrayAppendValue(interest, v7);
  if (v7)
  {
    CFRelease(v7);
  }

  return 1;
}

- (BOOL)kvsAppendRingKeyInterest:(__CFArray *)interest firstUnlock:(__CFArray *)unlock unlocked:(__CFArray *)unlocked err:(__CFError *)err
{
  v8 = [(SOSCircleStorageTransport *)self account:interest];
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
    trust = [(SOSAccount *)account trust];
    if ([trust trustedCircle])
    {
      v12 = self->super.account;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v18 = sub_10023CE10;
      v19 = &unk_100346A98;
      unlockedCopy = unlocked;
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

- (BOOL)kvsAppendKeyInterest:(__CFArray *)interest firstUnlock:(__CFArray *)unlock unlocked:(__CFArray *)unlocked err:(__CFError *)err
{
  v8 = [(SOSCircleStorageTransport *)self account:interest];
  v9 = sub_100218428(v8);

  if (!v9)
  {
    goto LABEL_9;
  }

  circleName = [(SOSKVSCircleStorageTransport *)self circleName];

  if (!circleName)
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
      trust = [(SOSAccount *)account trust];
      if ([trust trustedCircle])
      {
        Name = SOSCircleGetName();
        if (Name)
        {
          if (CFEqual(circleName, Name))
          {
            SOSCircleForEachActivePeer();
            CFArrayAppendValue(unlocked, v12);
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

- (__CFArray)handleCircleMessagesAndReturnHandledCopy:(__CFDictionary *)copy err:(__CFError *)err
{
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10023D0E0;
  v8[3] = &unk_1003476F0;
  v8[4] = self;
  v8[5] = Mutable;
  CFDictionaryApplyFunction(copy, sub_10023D684, v8);
  return Mutable;
}

- (__CFDictionary)handleRetirementMessages:(__CFDictionary *)messages err:(__CFError *)err
{
  account = [(SOSCircleStorageTransport *)self account];
  trust = [account trust];
  [trust trustedCircle];
  Name = SOSCircleGetName();
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if ([trust trustedCircle] && (Value = CFDictionaryGetValue(messages, Name)) != 0 && (v18 = Value, v19 = CFGetTypeID(Value), v19 == CFDictionaryGetTypeID()))
  {
    context[0] = _NSConcreteStackBlock;
    context[1] = 3221225472;
    context[2] = sub_100220440;
    context[3] = &unk_100345A50;
    errCopy = err;
    v20 = trust;
    v38 = v20;
    v21 = account;
    v39 = v21;
    v41 = Mutable;
    CFDictionaryApplyFunction(v18, sub_10021FCB8, context);
    peerInfo = [v21 peerInfo];
    if (peerInfo)
    {
      v23 = peerInfo;
      retirees = [v20 retirees];
      LODWORD(v23) = [retirees containsObject:v23];

      if (v23)
      {
        trust2 = [v21 trust];
        [trust2 purgeIdentity];

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

- (BOOL)postCircle:(__CFString *)circle circleData:(__CFData *)data err:(__CFError *)err
{
  v7 = SOSCircleKeyCreateWithName();
  if (v7)
  {
    v8 = v7;
    [(SOSKVSCircleStorageTransport *)self kvsAddToPendingChanges:v7 data:data];
    CFRelease(v8);
  }

  return 1;
}

- (BOOL)expireRetirementRecords:(__CFDictionary *)records err:(__CFError *)err
{
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_10023D9E4;
  context[3] = &unk_1003469D0;
  context[4] = Mutable;
  CFDictionaryApplyFunction(records, sub_10023D684, context);
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

- (void)kvsAddToPendingChanges:(__CFString *)changes data:(__CFData *)data
{
  pending_changes = [(SOSKVSCircleStorageTransport *)self pending_changes];

  if (!pending_changes)
  {
    v8 = +[NSMutableDictionary dictionary];
    [(SOSKVSCircleStorageTransport *)self setPending_changes:v8];
  }

  pending_changes2 = [(SOSKVSCircleStorageTransport *)self pending_changes];
  v11 = pending_changes2;
  if (data)
  {
    [pending_changes2 setObject:data forKey:changes];
  }

  else
  {
    v10 = +[NSNull null];
    [v11 setObject:v10 forKey:changes];
  }
}

- (BOOL)kvsSendPendingChanges:(__CFError *)changes
{
  pending_changes = [(SOSKVSCircleStorageTransport *)self pending_changes];
  if (pending_changes)
  {
    v5 = pending_changes;
    pending_changes2 = [(SOSKVSCircleStorageTransport *)self pending_changes];
    v7 = [pending_changes2 count];

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

      pending_changes3 = [(SOSKVSCircleStorageTransport *)self pending_changes];
      [pending_changes3 setObject:v9 forKey:kSOSKVSRequiredKey];

      pending_changes4 = [(SOSKVSCircleStorageTransport *)self pending_changes];
      sub_10023CB20();

      pending_changes5 = [(SOSKVSCircleStorageTransport *)self pending_changes];
      [pending_changes5 removeAllObjects];
    }
  }

  return 1;
}

- (SOSKVSCircleStorageTransport)initWithAccount:(id)account andCircleName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = SOSKVSCircleStorageTransport;
  v8 = [(SOSCircleStorageTransport *)&v12 init];
  if (v8)
  {
    v9 = +[NSMutableDictionary dictionary];
    [(SOSKVSCircleStorageTransport *)v8 setPending_changes:v9];

    v10 = [[NSString alloc] initWithString:nameCopy];
    [(SOSKVSCircleStorageTransport *)v8 setCircleName:v10];

    [(SOSCircleStorageTransport *)v8 setAccount:accountCopy];
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