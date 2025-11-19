@interface LiveFSVolumeCore_FSFileNameBridge
+ (id)newWithConnection:(id)a3 errorHandler:(id)a4;
+ (id)newWithProxy:(id)a3;
+ (id)newWithSyncConnection:(id)a3 errorHandler:(id)a4;
- (LiveFSVolumeCore_FSFileNameBridge)initWithConnection:(id)a3 errorHandler:(id)a4;
- (LiveFSVolumeCore_FSFileNameBridge)initWithProxy:(id)a3;
- (LiveFSVolumeCore_FSFileNameBridge)initWithSyncConnection:(id)a3 errorHandler:(id)a4;
- (void)createIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)makeDirectoryIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)makeLinkOf:(id)a3 named:(id)a4 inDirectory:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)makeSymLinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)readFrom:(id)a3 atOffset:(unint64_t)a4 intoBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)readFrom:(id)a3 length:(unint64_t)a4 atOffset:(unint64_t)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)readLinkOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)renameItemIn:(id)a3 named:(id)a4 item:(id)a5 toDirectory:(id)a6 newName:(id)a7 toItem:(id)a8 usingFlags:(unsigned int)a9 requestID:(unint64_t)a10 reply:(id)a11;
- (void)setOtherAttributeOf:(id)a3 named:(id)a4 value:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 fromBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 sharedBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)xattrOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
@end

@implementation LiveFSVolumeCore_FSFileNameBridge

- (LiveFSVolumeCore_FSFileNameBridge)initWithConnection:(id)a3 errorHandler:(id)a4
{
  v5 = [a3 remoteObjectProxyWithErrorHandler:a4];
  v6 = [(LiveFSVolumeCore_FSFileNameBridge *)self initWithProxy:v5];

  return v6;
}

- (LiveFSVolumeCore_FSFileNameBridge)initWithSyncConnection:(id)a3 errorHandler:(id)a4
{
  v5 = [a3 synchronousRemoteObjectProxyWithErrorHandler:a4];
  v6 = [(LiveFSVolumeCore_FSFileNameBridge *)self initWithProxy:v5];

  return v6;
}

- (LiveFSVolumeCore_FSFileNameBridge)initWithProxy:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LiveFSVolumeCore_FSFileNameBridge;
  v6 = [(LiveFSVolumeCore_FSFileNameBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxy, a3);
  }

  if (!v7->_proxy)
  {

    v7 = 0;
  }

  return v7;
}

+ (id)newWithConnection:(id)a3 errorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithConnection:v7 errorHandler:v6];

  return v8;
}

+ (id)newWithSyncConnection:(id)a3 errorHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithSyncConnection:v7 errorHandler:v6];

  return v8;
}

+ (id)newWithProxy:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithProxy:v4];

  return v5;
}

- (void)createIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  proxy = self->_proxy;
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = [a4 string];
  [(LiveFSVolumeCore *)proxy createIn:v14 named:v15 attributes:v13 requestID:a6 reply:v12];
}

- (void)makeDirectoryIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  proxy = self->_proxy;
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = [a4 string];
  [(LiveFSVolumeCore *)proxy makeDirectoryIn:v14 named:v15 attributes:v13 requestID:a6 reply:v12];
}

- (void)makeLinkOf:(id)a3 named:(id)a4 inDirectory:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  proxy = self->_proxy;
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = [a4 string];
  [(LiveFSVolumeCore *)proxy makeLinkOf:v14 named:v15 inDirectory:v13 requestID:a6 reply:v12];
}

- (void)makeSymLinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  proxy = self->_proxy;
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a3;
  v18 = [a4 string];
  [(LiveFSVolumeCore *)proxy makeSymLinkIn:v17 named:v18 contents:v16 attributes:v15 requestID:a7 reply:v14];
}

- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  proxy = self->_proxy;
  v10 = a6;
  v11 = a3;
  v12 = [a4 string];
  [(LiveFSVolumeCore *)proxy otherAttributeOf:v11 named:v12 requestID:a5 reply:v10];
}

- (void)readFrom:(id)a3 atOffset:(unint64_t)a4 intoBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  proxy = self->_proxy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000CC98;
  v15[3] = &unk_100060E80;
  v16 = v12;
  v14 = v12;
  [(LiveFSVolumeCore *)proxy readFrom:a3 atOffset:a4 intoBuffer:a5 requestID:a6 reply:v15];
}

- (void)readFrom:(id)a3 length:(unint64_t)a4 atOffset:(unint64_t)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  proxy = self->_proxy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000CD74;
  v15[3] = &unk_100060C28;
  v16 = v12;
  v14 = v12;
  [(LiveFSVolumeCore *)proxy readFrom:a3 length:a4 atOffset:a5 requestID:a6 reply:v15];
}

- (void)readLinkOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000CE38;
  v11[3] = &unk_100060EA8;
  v12 = v8;
  v10 = v8;
  [(LiveFSVolumeCore *)proxy readLinkOf:a3 requestID:a4 reply:v11];
}

- (void)renameItemIn:(id)a3 named:(id)a4 item:(id)a5 toDirectory:(id)a6 newName:(id)a7 toItem:(id)a8 usingFlags:(unsigned int)a9 requestID:(unint64_t)a10 reply:(id)a11
{
  v18 = a11;
  proxy = self->_proxy;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a3;
  v25 = [a4 string];
  v26 = [v21 string];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000D1C8;
  v29[3] = &unk_100060CF0;
  v30 = v18;
  v27 = v18;
  LODWORD(v28) = a9;
  [(LiveFSVolumeCore *)proxy renameItemIn:v24 named:v25 item:v23 toDirectory:v22 newName:v26 toItem:v20 usingFlags:v28 requestID:a10 reply:v29];
}

- (void)setOtherAttributeOf:(id)a3 named:(id)a4 value:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  proxy = self->_proxy;
  v14 = a5;
  v15 = a3;
  v16 = [a4 string];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D300;
  v18[3] = &unk_100060BD8;
  v19 = v12;
  v17 = v12;
  [(LiveFSVolumeCore *)proxy setOtherAttributeOf:v15 named:v16 value:v14 requestID:a6 reply:v18];
}

- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 fromBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  proxy = self->_proxy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D4B0;
  v15[3] = &unk_100060D90;
  v16 = v12;
  v14 = v12;
  [(LiveFSVolumeCore *)proxy writeTo:a3 atOffset:a4 fromBuffer:a5 requestID:a6 reply:v15];
}

- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 sharedBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  proxy = self->_proxy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D58C;
  v15[3] = &unk_100060D90;
  v16 = v12;
  v14 = v12;
  [(LiveFSVolumeCore *)proxy writeTo:a3 atOffset:a4 sharedBuffer:a5 requestID:a6 reply:v15];
}

- (void)xattrOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  proxy = self->_proxy;
  v10 = a6;
  v11 = a3;
  v12 = [a4 string];
  [(LiveFSVolumeCore *)proxy xattrOf:v11 named:v12 requestID:a5 reply:v10];
}

@end