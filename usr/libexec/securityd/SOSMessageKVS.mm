@interface SOSMessageKVS
- (BOOL)SOSTransportMessageCleanupAfterPeerMessages:(id)messages peers:(__CFDictionary *)peers err:(__CFError *)err;
- (BOOL)SOSTransportMessageKVSAppendKeyInterest:(id)interest ak:(__CFArray *)ak firstUnlock:(__CFArray *)unlock unlocked:(__CFArray *)unlocked err:(__CFError *)err;
- (BOOL)SOSTransportMessageSendMessages:(id)messages pm:(__CFDictionary *)pm err:(__CFError *)err;
- (BOOL)SOSTransportMessageSyncWithPeers:(id)peers p:(__CFSet *)p err:(__CFError *)err;
- (SOSMessageKVS)initWithAccount:(id)account andName:(id)name;
- (__CFDictionary)SOSTransportMessageHandlePeerMessageReturnsHandledCopy:(id)copy peerMessages:(__CFDictionary *)messages err:(__CFError *)err;
- (__CFString)SOSTransportMessageGetCircleName;
- (void)SOSTransportMessageGetEngine;
- (void)dealloc;
@end

@implementation SOSMessageKVS

- (BOOL)SOSTransportMessageSendMessages:(id)messages pm:(__CFDictionary *)pm err:(__CFError *)err
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_10025B674;
  context[3] = &unk_100347740;
  messagesCopy = messages;
  v11 = &v13;
  errCopy = err;
  v10 = messagesCopy;
  CFDictionaryApplyFunction(pm, sub_10025B7F4, context);
  LOBYTE(err) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return err;
}

- (BOOL)SOSTransportMessageSyncWithPeers:(id)peers p:(__CFSet *)p err:(__CFError *)err
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_10025B9C4;
  context[3] = &unk_100347718;
  v11 = &v13;
  peersCopy = peers;
  v10 = peersCopy;
  errCopy = err;
  CFSetApplyFunction(p, sub_10025BAA4, context);
  LOBYTE(err) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return err;
}

- (__CFDictionary)SOSTransportMessageHandlePeerMessageReturnsHandledCopy:(id)copy peerMessages:(__CFDictionary *)messages err:(__CFError *)err
{
  copyCopy = copy;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  circleName = [copyCopy circleName];
  Value = CFDictionaryGetValue(messages, circleName);

  v10 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Value)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10025BC10;
    v16 = &unk_1003476F0;
    v17 = copyCopy;
    v18 = v10;
    CFDictionaryApplyFunction(Value, sub_10025B7F4, &v13);
  }

  circleName2 = [copyCopy circleName];
  CFDictionaryAddValue(Mutable, circleName2, v10);

  if (v10)
  {
    CFRelease(v10);
  }

  return Mutable;
}

- (BOOL)SOSTransportMessageCleanupAfterPeerMessages:(id)messages peers:(__CFDictionary *)peers err:(__CFError *)err
{
  messagesCopy = messages;
  sOSTransportMessageGetEngine = [messagesCopy SOSTransportMessageGetEngine];
  v9 = [OTSOSActualAdapter sosEnabled]_0();
  v10 = 0;
  if (sOSTransportMessageGetEngine && v9)
  {
    v10 = sOSTransportMessageGetEngine[10];
  }

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10025BE5C;
  v17 = &unk_1003476F0;
  v18 = messagesCopy;
  v19 = v10;
  v11 = messagesCopy;
  CFDictionaryApplyFunction(peers, sub_10025B7F4, &v14);
  v12 = [v11 SOSTransportMessageFlushChanges:v11 err:{err, v14, v15, v16, v17}];

  return v12;
}

- (BOOL)SOSTransportMessageKVSAppendKeyInterest:(id)interest ak:(__CFArray *)ak firstUnlock:(__CFArray *)unlock unlocked:(__CFArray *)unlocked err:(__CFError *)err
{
  interestCopy = interest;
  engine = [(SOSMessage *)self engine];
  if (engine)
  {
    sOSTransportMessageGetAccount = [(SOSMessageKVS *)self SOSTransportMessageGetAccount];
    trust = [sOSTransportMessageGetAccount trust];
    [trust fullPeerInfo];
    PeerInfo = SOSFullPeerInfoGetPeerInfo();
    if (PeerInfo)
    {
      PeerInfo = SOSPeerInfoGetPeerID();
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10021AB70;
    v25[3] = &unk_1003457A0;
    v26 = sOSTransportMessageGetAccount;
    v27 = PeerInfo;
    v15 = sOSTransportMessageGetAccount;
    v16 = sub_10021A908(v15, err, v25);

    if (v16)
    {
      account = [(SOSMessage *)self account];
      peerID = [account peerID];

      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_10025C378;
      context[3] = &unk_1003476C8;
      v22 = interestCopy;
      v23 = peerID;
      unlockedCopy = unlocked;
      v19 = peerID;
      v28.length = CFArrayGetCount(v16);
      v28.location = 0;
      CFArrayApplyFunction(v16, v28, sub_10025BAA4, context);
      CFRelease(v16);
    }
  }

  return engine != 0;
}

- (void)SOSTransportMessageGetEngine
{
  if (![(SOSMessage *)self engine])
  {
    account = [(SOSMessage *)self account];
    factory = [account factory];
    circleName = [(SOSMessage *)self circleName];
    if (factory && (v6 = factory[1](factory, circleName, 0)) != 0)
    {
      v7 = *v6;
      (*(v6 + 72))(v6, 0);

      if (v7)
      {
        CFRetain(v7);
      }
    }

    else
    {

      v7 = 0;
    }

    [(SOSMessage *)self setEngine:v7];
  }

  return [(SOSMessage *)self engine];
}

- (__CFString)SOSTransportMessageGetCircleName
{
  circleName = [(SOSMessage *)self circleName];

  return circleName;
}

- (void)dealloc
{
  pending_changes = self->_pending_changes;
  if (pending_changes)
  {
    self->_pending_changes = 0;
    CFRelease(pending_changes);
  }

  v4.receiver = self;
  v4.super_class = SOSMessageKVS;
  [(SOSMessage *)&v4 dealloc];
}

- (SOSMessageKVS)initWithAccount:(id)account andName:(id)name
{
  accountCopy = account;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = SOSMessageKVS;
  v8 = [(SOSMessageKVS *)&v18 init];
  v9 = v8;
  if (v8)
  {
    [(SOSMessage *)v8 setAccount:accountCopy];
    v10 = [[NSString alloc] initWithString:nameCopy];
    [(SOSMessage *)v9 setCircleName:v10];

    factory = [accountCopy factory];
    circleName = [(SOSMessage *)v9 circleName];
    if (factory && (v13 = factory[1](factory, circleName, 0)) != 0)
    {
      v14 = *v13;
      (*(v13 + 72))(v13, 0);

      if (v14)
      {
        CFRetain(v14);
      }
    }

    else
    {

      v14 = 0;
    }

    [(SOSMessage *)v9 setEngine:v14];
    v9->_pending_changes = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v15 = v9;
    v16 = sub_100235D90();
    CFArrayAppendValue(v16, v15);
  }

  return v9;
}

@end