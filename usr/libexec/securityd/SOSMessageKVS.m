@interface SOSMessageKVS
- (BOOL)SOSTransportMessageCleanupAfterPeerMessages:(id)a3 peers:(__CFDictionary *)a4 err:(__CFError *)a5;
- (BOOL)SOSTransportMessageKVSAppendKeyInterest:(id)a3 ak:(__CFArray *)a4 firstUnlock:(__CFArray *)a5 unlocked:(__CFArray *)a6 err:(__CFError *)a7;
- (BOOL)SOSTransportMessageSendMessages:(id)a3 pm:(__CFDictionary *)a4 err:(__CFError *)a5;
- (BOOL)SOSTransportMessageSyncWithPeers:(id)a3 p:(__CFSet *)a4 err:(__CFError *)a5;
- (SOSMessageKVS)initWithAccount:(id)a3 andName:(id)a4;
- (__CFDictionary)SOSTransportMessageHandlePeerMessageReturnsHandledCopy:(id)a3 peerMessages:(__CFDictionary *)a4 err:(__CFError *)a5;
- (__CFString)SOSTransportMessageGetCircleName;
- (void)SOSTransportMessageGetEngine;
- (void)dealloc;
@end

@implementation SOSMessageKVS

- (BOOL)SOSTransportMessageSendMessages:(id)a3 pm:(__CFDictionary *)a4 err:(__CFError *)a5
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 1;
  context[0] = _NSConcreteStackBlock;
  context[1] = 3221225472;
  context[2] = sub_10025B674;
  context[3] = &unk_100347740;
  v7 = a3;
  v11 = &v13;
  v12 = a5;
  v10 = v7;
  CFDictionaryApplyFunction(a4, sub_10025B7F4, context);
  LOBYTE(a5) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return a5;
}

- (BOOL)SOSTransportMessageSyncWithPeers:(id)a3 p:(__CFSet *)a4 err:(__CFError *)a5
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
  v7 = a3;
  v10 = v7;
  v12 = a5;
  CFSetApplyFunction(a4, sub_10025BAA4, context);
  LOBYTE(a5) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return a5;
}

- (__CFDictionary)SOSTransportMessageHandlePeerMessageReturnsHandledCopy:(id)a3 peerMessages:(__CFDictionary *)a4 err:(__CFError *)a5
{
  v6 = a3;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8 = [v6 circleName];
  Value = CFDictionaryGetValue(a4, v8);

  v10 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (Value)
  {
    v13 = _NSConcreteStackBlock;
    v14 = 3221225472;
    v15 = sub_10025BC10;
    v16 = &unk_1003476F0;
    v17 = v6;
    v18 = v10;
    CFDictionaryApplyFunction(Value, sub_10025B7F4, &v13);
  }

  v11 = [v6 circleName];
  CFDictionaryAddValue(Mutable, v11, v10);

  if (v10)
  {
    CFRelease(v10);
  }

  return Mutable;
}

- (BOOL)SOSTransportMessageCleanupAfterPeerMessages:(id)a3 peers:(__CFDictionary *)a4 err:(__CFError *)a5
{
  v7 = a3;
  v8 = [v7 SOSTransportMessageGetEngine];
  v9 = [OTSOSActualAdapter sosEnabled]_0();
  v10 = 0;
  if (v8 && v9)
  {
    v10 = v8[10];
  }

  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10025BE5C;
  v17 = &unk_1003476F0;
  v18 = v7;
  v19 = v10;
  v11 = v7;
  CFDictionaryApplyFunction(a4, sub_10025B7F4, &v14);
  v12 = [v11 SOSTransportMessageFlushChanges:v11 err:{a5, v14, v15, v16, v17}];

  return v12;
}

- (BOOL)SOSTransportMessageKVSAppendKeyInterest:(id)a3 ak:(__CFArray *)a4 firstUnlock:(__CFArray *)a5 unlocked:(__CFArray *)a6 err:(__CFError *)a7
{
  v10 = a3;
  v11 = [(SOSMessage *)self engine];
  if (v11)
  {
    v12 = [(SOSMessageKVS *)self SOSTransportMessageGetAccount];
    v13 = [v12 trust];
    [v13 fullPeerInfo];
    PeerInfo = SOSFullPeerInfoGetPeerInfo();
    if (PeerInfo)
    {
      PeerInfo = SOSPeerInfoGetPeerID();
    }

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_10021AB70;
    v25[3] = &unk_1003457A0;
    v26 = v12;
    v27 = PeerInfo;
    v15 = v12;
    v16 = sub_10021A908(v15, a7, v25);

    if (v16)
    {
      v17 = [(SOSMessage *)self account];
      v18 = [v17 peerID];

      context[0] = _NSConcreteStackBlock;
      context[1] = 3221225472;
      context[2] = sub_10025C378;
      context[3] = &unk_1003476C8;
      v22 = v10;
      v23 = v18;
      v24 = a6;
      v19 = v18;
      v28.length = CFArrayGetCount(v16);
      v28.location = 0;
      CFArrayApplyFunction(v16, v28, sub_10025BAA4, context);
      CFRelease(v16);
    }
  }

  return v11 != 0;
}

- (void)SOSTransportMessageGetEngine
{
  if (![(SOSMessage *)self engine])
  {
    v3 = [(SOSMessage *)self account];
    v4 = [v3 factory];
    v5 = [(SOSMessage *)self circleName];
    if (v4 && (v6 = v4[1](v4, v5, 0)) != 0)
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
  v2 = [(SOSMessage *)self circleName];

  return v2;
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

- (SOSMessageKVS)initWithAccount:(id)a3 andName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = SOSMessageKVS;
  v8 = [(SOSMessageKVS *)&v18 init];
  v9 = v8;
  if (v8)
  {
    [(SOSMessage *)v8 setAccount:v6];
    v10 = [[NSString alloc] initWithString:v7];
    [(SOSMessage *)v9 setCircleName:v10];

    v11 = [v6 factory];
    v12 = [(SOSMessage *)v9 circleName];
    if (v11 && (v13 = v11[1](v11, v12, 0)) != 0)
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