@interface LiveFSVolumeCore_FSFileNameBridge
+ (id)newWithConnection:(id)connection errorHandler:(id)handler;
+ (id)newWithProxy:(id)proxy;
+ (id)newWithSyncConnection:(id)connection errorHandler:(id)handler;
- (LiveFSVolumeCore_FSFileNameBridge)initWithConnection:(id)connection errorHandler:(id)handler;
- (LiveFSVolumeCore_FSFileNameBridge)initWithProxy:(id)proxy;
- (LiveFSVolumeCore_FSFileNameBridge)initWithSyncConnection:(id)connection errorHandler:(id)handler;
- (void)createIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)makeDirectoryIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)makeLinkOf:(id)of named:(id)named inDirectory:(id)directory requestID:(unint64_t)d reply:(id)reply;
- (void)makeSymLinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply;
- (void)readFrom:(id)from atOffset:(unint64_t)offset intoBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
- (void)readFrom:(id)from length:(unint64_t)length atOffset:(unint64_t)offset requestID:(unint64_t)d reply:(id)reply;
- (void)readLinkOf:(id)of requestID:(unint64_t)d reply:(id)reply;
- (void)renameItemIn:(id)in named:(id)named item:(id)item toDirectory:(id)directory newName:(id)name toItem:(id)toItem usingFlags:(unsigned int)flags requestID:(unint64_t)self0 reply:(id)self1;
- (void)setOtherAttributeOf:(id)of named:(id)named value:(id)value requestID:(unint64_t)d reply:(id)reply;
- (void)writeTo:(id)to atOffset:(unint64_t)offset fromBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
- (void)writeTo:(id)to atOffset:(unint64_t)offset sharedBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
- (void)xattrOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply;
@end

@implementation LiveFSVolumeCore_FSFileNameBridge

- (LiveFSVolumeCore_FSFileNameBridge)initWithConnection:(id)connection errorHandler:(id)handler
{
  v5 = [connection remoteObjectProxyWithErrorHandler:handler];
  v6 = [(LiveFSVolumeCore_FSFileNameBridge *)self initWithProxy:v5];

  return v6;
}

- (LiveFSVolumeCore_FSFileNameBridge)initWithSyncConnection:(id)connection errorHandler:(id)handler
{
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:handler];
  v6 = [(LiveFSVolumeCore_FSFileNameBridge *)self initWithProxy:v5];

  return v6;
}

- (LiveFSVolumeCore_FSFileNameBridge)initWithProxy:(id)proxy
{
  proxyCopy = proxy;
  v9.receiver = self;
  v9.super_class = LiveFSVolumeCore_FSFileNameBridge;
  v6 = [(LiveFSVolumeCore_FSFileNameBridge *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proxy, proxy);
  }

  if (!v7->_proxy)
  {

    v7 = 0;
  }

  return v7;
}

+ (id)newWithConnection:(id)connection errorHandler:(id)handler
{
  handlerCopy = handler;
  connectionCopy = connection;
  v8 = [[self alloc] initWithConnection:connectionCopy errorHandler:handlerCopy];

  return v8;
}

+ (id)newWithSyncConnection:(id)connection errorHandler:(id)handler
{
  handlerCopy = handler;
  connectionCopy = connection;
  v8 = [[self alloc] initWithSyncConnection:connectionCopy errorHandler:handlerCopy];

  return v8;
}

+ (id)newWithProxy:(id)proxy
{
  proxyCopy = proxy;
  v5 = [[self alloc] initWithProxy:proxyCopy];

  return v5;
}

- (void)createIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  proxy = self->_proxy;
  replyCopy = reply;
  attributesCopy = attributes;
  inCopy = in;
  string = [named string];
  [(LiveFSVolumeCore *)proxy createIn:inCopy named:string attributes:attributesCopy requestID:d reply:replyCopy];
}

- (void)makeDirectoryIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  proxy = self->_proxy;
  replyCopy = reply;
  attributesCopy = attributes;
  inCopy = in;
  string = [named string];
  [(LiveFSVolumeCore *)proxy makeDirectoryIn:inCopy named:string attributes:attributesCopy requestID:d reply:replyCopy];
}

- (void)makeLinkOf:(id)of named:(id)named inDirectory:(id)directory requestID:(unint64_t)d reply:(id)reply
{
  proxy = self->_proxy;
  replyCopy = reply;
  directoryCopy = directory;
  ofCopy = of;
  string = [named string];
  [(LiveFSVolumeCore *)proxy makeLinkOf:ofCopy named:string inDirectory:directoryCopy requestID:d reply:replyCopy];
}

- (void)makeSymLinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  proxy = self->_proxy;
  replyCopy = reply;
  attributesCopy = attributes;
  contentsCopy = contents;
  inCopy = in;
  string = [named string];
  [(LiveFSVolumeCore *)proxy makeSymLinkIn:inCopy named:string contents:contentsCopy attributes:attributesCopy requestID:d reply:replyCopy];
}

- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply
{
  proxy = self->_proxy;
  replyCopy = reply;
  ofCopy = of;
  string = [named string];
  [(LiveFSVolumeCore *)proxy otherAttributeOf:ofCopy named:string requestID:d reply:replyCopy];
}

- (void)readFrom:(id)from atOffset:(unint64_t)offset intoBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000CC98;
  v15[3] = &unk_100060E80;
  v16 = replyCopy;
  v14 = replyCopy;
  [(LiveFSVolumeCore *)proxy readFrom:from atOffset:offset intoBuffer:buffer requestID:d reply:v15];
}

- (void)readFrom:(id)from length:(unint64_t)length atOffset:(unint64_t)offset requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000CD74;
  v15[3] = &unk_100060C28;
  v16 = replyCopy;
  v14 = replyCopy;
  [(LiveFSVolumeCore *)proxy readFrom:from length:length atOffset:offset requestID:d reply:v15];
}

- (void)readLinkOf:(id)of requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000CE38;
  v11[3] = &unk_100060EA8;
  v12 = replyCopy;
  v10 = replyCopy;
  [(LiveFSVolumeCore *)proxy readLinkOf:of requestID:d reply:v11];
}

- (void)renameItemIn:(id)in named:(id)named item:(id)item toDirectory:(id)directory newName:(id)name toItem:(id)toItem usingFlags:(unsigned int)flags requestID:(unint64_t)self0 reply:(id)self1
{
  replyCopy = reply;
  proxy = self->_proxy;
  toItemCopy = toItem;
  nameCopy = name;
  directoryCopy = directory;
  itemCopy = item;
  inCopy = in;
  string = [named string];
  string2 = [nameCopy string];

  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000D1C8;
  v29[3] = &unk_100060CF0;
  v30 = replyCopy;
  v27 = replyCopy;
  LODWORD(v28) = flags;
  [(LiveFSVolumeCore *)proxy renameItemIn:inCopy named:string item:itemCopy toDirectory:directoryCopy newName:string2 toItem:toItemCopy usingFlags:v28 requestID:d reply:v29];
}

- (void)setOtherAttributeOf:(id)of named:(id)named value:(id)value requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  valueCopy = value;
  ofCopy = of;
  string = [named string];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000D300;
  v18[3] = &unk_100060BD8;
  v19 = replyCopy;
  v17 = replyCopy;
  [(LiveFSVolumeCore *)proxy setOtherAttributeOf:ofCopy named:string value:valueCopy requestID:d reply:v18];
}

- (void)writeTo:(id)to atOffset:(unint64_t)offset fromBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D4B0;
  v15[3] = &unk_100060D90;
  v16 = replyCopy;
  v14 = replyCopy;
  [(LiveFSVolumeCore *)proxy writeTo:to atOffset:offset fromBuffer:buffer requestID:d reply:v15];
}

- (void)writeTo:(id)to atOffset:(unint64_t)offset sharedBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000D58C;
  v15[3] = &unk_100060D90;
  v16 = replyCopy;
  v14 = replyCopy;
  [(LiveFSVolumeCore *)proxy writeTo:to atOffset:offset sharedBuffer:buffer requestID:d reply:v15];
}

- (void)xattrOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply
{
  proxy = self->_proxy;
  replyCopy = reply;
  ofCopy = of;
  string = [named string];
  [(LiveFSVolumeCore *)proxy xattrOf:ofCopy named:string requestID:d reply:replyCopy];
}

@end