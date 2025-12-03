@interface FSVolumeConnectorBridge
+ (id)newWithConnection:(id)connection errorHandler:(id)handler;
+ (id)newWithSyncConnection:(id)connection errorHandler:(id)handler;
- (FSVolumeConnectorBridge)initWithConnection:(id)connection errorHandler:(id)handler;
- (FSVolumeConnectorBridge)initWithSyncConnection:(id)connection errorHandler:(id)handler;
- (void)abortSearch:(id)search requestID:(unint64_t)d reply:(id)reply;
- (void)blockmapFile:(id)file range:(_NSRange)range flags:(unsigned int)flags operationID:(unint64_t)d reply:(id)reply;
- (void)checkAccessTo:(id)to requestedAccess:(unsigned int)access requestID:(unint64_t)d reply:(id)reply;
- (void)createIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)fetchVolumeMachPortLabeled:(id)labeled requestID:(unint64_t)d reply:(id)reply;
- (void)fileAttributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)getRootFileHandleWithError:(id)error;
- (void)listXattrsOf:(id)of requestID:(unint64_t)d reply:(id)reply;
- (void)makeDirectoryIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)makeLinkOf:(id)of named:(id)named inDirectory:(id)directory requestID:(unint64_t)d reply:(id)reply;
- (void)makeSymLinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply;
- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply;
- (void)parentsAndAttributesForItemsByID:(id)d requestID:(unint64_t)iD reply:(id)reply;
- (void)pathConfiguration:(id)configuration requestID:(unint64_t)d reply:(id)reply;
- (void)readDirectory:(id)directory intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readDirectory:(id)directory intoBuffer:(id)buffer requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply;
- (void)readFrom:(id)from atOffset:(unint64_t)offset intoBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
- (void)readLinkOf:(id)of requestID:(unint64_t)d reply:(id)reply;
- (void)reclaim:(id)reclaim requestID:(unint64_t)d reply:(id)reply;
- (void)renameItemIn:(id)in named:(id)named item:(id)item toDirectory:(id)directory newName:(id)name toItem:(id)toItem usingFlags:(unsigned int)flags requestID:(unint64_t)self0 reply:(id)self1;
- (void)setFileAttributesOf:(id)of to:(id)to requestID:(unint64_t)d reply:(id)reply;
- (void)setOtherAttributeOf:(id)of named:(id)named value:(id)value requestID:(unint64_t)d reply:(id)reply;
- (void)setXattrOf:(id)of named:(id)named value:(id)value how:(int)how requestID:(unint64_t)d reply:(id)reply;
- (void)volumeStatistics:(id)statistics requestID:(unint64_t)d reply:(id)reply;
- (void)writeTo:(id)to atOffset:(unint64_t)offset fromBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
- (void)writeTo:(id)to atOffset:(unint64_t)offset sharedBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply;
- (void)xattrOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply;
@end

@implementation FSVolumeConnectorBridge

- (FSVolumeConnectorBridge)initWithConnection:(id)connection errorHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  if (connectionCopy)
  {
    v14.receiver = self;
    v14.super_class = FSVolumeConnectorBridge;
    v8 = [(FSVolumeConnectorBridge *)&v14 init];
    if (v8)
    {
      v9 = [connectionCopy remoteObjectProxyWithErrorHandler:handlerCopy];
      proxy = v8->_proxy;
      v8->_proxy = v9;
    }

    if (!v8->_proxy)
    {

      v8 = 0;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000D658(v12);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (FSVolumeConnectorBridge)initWithSyncConnection:(id)connection errorHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = FSVolumeConnectorBridge;
  v8 = [(FSVolumeConnectorBridge *)&v12 init];
  if (v8)
  {
    v9 = [connectionCopy synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];
    proxy = v8->_proxy;
    v8->_proxy = v9;
  }

  if (!v8->_proxy)
  {

    v8 = 0;
  }

  return v8;
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

- (void)abortSearch:(id)search requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000091B0;
  v11[3] = &unk_100060BB0;
  v12 = replyCopy;
  v10 = replyCopy;
  [(FSVolumeXPC *)proxy abortSearch:search requestID:d replyHandler:v11];
}

- (void)blockmapFile:(id)file range:(_NSRange)range flags:(unsigned int)flags operationID:(unint64_t)d reply:(id)reply
{
  length = range.length;
  location = range.location;
  replyCopy = reply;
  proxy = self->_proxy;
  fsFileHandle = [file fsFileHandle];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000092B4;
  v17[3] = &unk_100060BD8;
  v18 = replyCopy;
  v16 = replyCopy;
  [(FSVolumeXPC *)proxy blockmapFile:fsFileHandle range:location flags:length operationID:flags replyHandler:d, v17];
}

- (void)checkAccessTo:(id)to requestedAccess:(unsigned int)access requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  fsFileHandle = [to fsFileHandle];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000093A0;
  v14[3] = &unk_100060BB0;
  v15 = replyCopy;
  v13 = replyCopy;
  [(FSVolumeXPC *)proxy checkAccessTo:fsFileHandle requestedAccess:access requestID:d replyHandler:v14];
}

- (void)createIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  attributesCopy = attributes;
  namedCopy = named;
  fsFileHandle = [in fsFileHandle];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100009598;
  v18[3] = &unk_100060C00;
  v19 = replyCopy;
  v17 = replyCopy;
  [(FSVolumeXPC *)proxy createIn:fsFileHandle named:namedCopy type:1 attributes:attributesCopy requestID:d replyHandler:v18];
}

- (void)fetchVolumeMachPortLabeled:(id)labeled requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009840;
  v11[3] = &unk_100060C50;
  v12 = replyCopy;
  v10 = replyCopy;
  [(FSVolumeXPC *)proxy fetchVolumeMachPortLabeled:labeled requestID:d replyHandler:v11];
}

- (void)fileAttributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  fsFileHandle = [attributes fsFileHandle];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009920;
  v12[3] = &unk_100060C28;
  v13 = replyCopy;
  v11 = replyCopy;
  [(FSVolumeXPC *)proxy fileAttributes:fsFileHandle requestedAttributes:0x4000000000003FE7 requestID:d replyHandler:v12];
}

- (void)getRootFileHandleWithError:(id)error
{
  errorCopy = error;
  v5 = fskit_std_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v11 = "[FSVolumeConnectorBridge getRootFileHandleWithError:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s:start", buf, 0xCu);
  }

  proxy = self->_proxy;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100009A58;
  v8[3] = &unk_100060C78;
  v9 = errorCopy;
  v7 = errorCopy;
  [(FSVolumeXPC *)proxy getRootFileHandle:v8];
}

- (void)listXattrsOf:(id)of requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  fsFileHandle = [of fsFileHandle];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009CB0;
  v12[3] = &unk_100060CA0;
  v13 = replyCopy;
  v11 = replyCopy;
  [(FSVolumeXPC *)proxy listXattrsOf:fsFileHandle requestID:d replyHandler:v12];
}

- (void)makeDirectoryIn:(id)in named:(id)named attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  attributesCopy = attributes;
  namedCopy = named;
  fsFileHandle = [in fsFileHandle];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000A21C;
  v18[3] = &unk_100060C00;
  v19 = replyCopy;
  v17 = replyCopy;
  [(FSVolumeXPC *)proxy createIn:fsFileHandle named:namedCopy type:2 attributes:attributesCopy requestID:d replyHandler:v18];
}

- (void)makeLinkOf:(id)of named:(id)named inDirectory:(id)directory requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  directoryCopy = directory;
  namedCopy = named;
  fsFileHandle = [of fsFileHandle];
  fsFileHandle2 = [directoryCopy fsFileHandle];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000A4B8;
  v19[3] = &unk_100060CF0;
  v20 = replyCopy;
  v18 = replyCopy;
  [(FSVolumeXPC *)proxy makeLinkOf:fsFileHandle named:namedCopy inDirectory:fsFileHandle2 requestID:d replyHandler:v19];
}

- (void)makeSymLinkIn:(id)in named:(id)named contents:(id)contents attributes:(id)attributes requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  attributesCopy = attributes;
  contentsCopy = contents;
  namedCopy = named;
  fsFileHandle = [in fsFileHandle];
  v20 = [contentsCopy dataUsingEncoding:4];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000A5F4;
  v22[3] = &unk_100060C00;
  v23 = replyCopy;
  v21 = replyCopy;
  [(FSVolumeXPC *)proxy makeSymlinkIn:fsFileHandle named:namedCopy contents:v20 attributes:attributesCopy requestID:d replyHandler:v22];
}

- (void)otherAttributeOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  namedCopy = named;
  fsFileHandle = [of fsFileHandle];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A8A0;
  v15[3] = &unk_100060C28;
  v16 = replyCopy;
  v14 = replyCopy;
  [(FSVolumeXPC *)proxy otherAttributeOf:fsFileHandle named:namedCopy requestID:d replyHandler:v15];
}

- (void)parentsAndAttributesForItemsByID:(id)d requestID:(unint64_t)iD reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A960;
  v11[3] = &unk_100060D18;
  v12 = replyCopy;
  v10 = replyCopy;
  [(FSVolumeXPC *)proxy parentsAndAttributesForItemsByID:d requestID:iD replyHandler:v11];
}

- (void)pathConfiguration:(id)configuration requestID:(unint64_t)d reply:(id)reply
{
  configurationCopy = configuration;
  replyCopy = reply;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3010000000;
  v37 = 0;
  v38 = 0;
  v36 = &unk_100055C71;
  proxy = self->_proxy;
  fsFileHandle = [configurationCopy fsFileHandle];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000AD80;
  v32[3] = &unk_100060D40;
  v32[4] = &v33;
  [(FSVolumeXPC *)proxy pathConfigurationOf:fsFileHandle propertyName:1 requestID:d replyHandler:v32];

  v12 = self->_proxy;
  fsFileHandle2 = [configurationCopy fsFileHandle];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000AD98;
  v31[3] = &unk_100060D40;
  v31[4] = &v33;
  [(FSVolumeXPC *)v12 pathConfigurationOf:fsFileHandle2 propertyName:4 requestID:d replyHandler:v31];

  v14 = self->_proxy;
  fsFileHandle3 = [configurationCopy fsFileHandle];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000ADB0;
  v30[3] = &unk_100060D40;
  v30[4] = &v33;
  [(FSVolumeXPC *)v14 pathConfigurationOf:fsFileHandle3 propertyName:7 requestID:d replyHandler:v30];

  v16 = self->_proxy;
  fsFileHandle4 = [configurationCopy fsFileHandle];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000ADD0;
  v29[3] = &unk_100060D40;
  v29[4] = &v33;
  [(FSVolumeXPC *)v16 pathConfigurationOf:fsFileHandle4 propertyName:8 requestID:d replyHandler:v29];

  v18 = self->_proxy;
  fsFileHandle5 = [configurationCopy fsFileHandle];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000ADF8;
  v28[3] = &unk_100060D40;
  v28[4] = &v33;
  [(FSVolumeXPC *)v18 pathConfigurationOf:fsFileHandle5 propertyName:11 requestID:d replyHandler:v28];

  v20 = self->_proxy;
  fsFileHandle6 = [configurationCopy fsFileHandle];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000AE24;
  v27[3] = &unk_100060D40;
  v27[4] = &v33;
  [(FSVolumeXPC *)v20 pathConfigurationOf:fsFileHandle6 propertyName:12 requestID:d replyHandler:v27];

  v22 = self->_proxy;
  fsFileHandle7 = [configurationCopy fsFileHandle];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000AE50;
  v26[3] = &unk_100060D40;
  v26[4] = &v33;
  [(FSVolumeXPC *)v22 pathConfigurationOf:fsFileHandle7 propertyName:18 requestID:d replyHandler:v26];

  v24 = [NSData dataWithBytes:v34 + 4 length:16];
  v25 = replyCopy[2];
  if (v24)
  {
    v25(replyCopy, 0, v24);
  }

  else
  {
    v25(replyCopy, 12, 0);
  }

  _Block_object_dispose(&v33, 8);
}

- (void)readDirectory:(id)directory intoBuffer:(id)buffer cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  bufferCopy = buffer;
  directoryCopy = directory;
  v17 = [[FSMutableFileDataBuffer alloc] initProxyFrom:bufferCopy];

  proxy = self->_proxy;
  fsFileHandle = [directoryCopy fsFileHandle];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000AFB0;
  v21[3] = &unk_100060D68;
  v22 = replyCopy;
  v20 = replyCopy;
  [(FSVolumeXPC *)proxy readDirectory:fsFileHandle intoBuffer:v17 cookie:cookie verifier:verifier requestID:d replyHandler:v21];
}

- (void)readDirectory:(id)directory intoBuffer:(id)buffer requestedAttributes:(unint64_t)attributes cookie:(unint64_t)cookie verifier:(unint64_t)verifier requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  bufferCopy = buffer;
  directoryCopy = directory;
  v19 = [[FSMutableFileDataBuffer alloc] initProxyFrom:bufferCopy];

  proxy = self->_proxy;
  fsFileHandle = [directoryCopy fsFileHandle];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000B0FC;
  v23[3] = &unk_100060D68;
  v24 = replyCopy;
  v22 = replyCopy;
  [(FSVolumeXPC *)proxy readDirectory:fsFileHandle requestedAttributes:attributes intoBuffer:v19 cookie:cookie verifier:verifier requestID:d replyHandler:v23];
}

- (void)readFrom:(id)from atOffset:(unint64_t)offset intoBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  bufferCopy = buffer;
  fromCopy = from;
  v15 = [[FSMutableFileDataBuffer alloc] initProxyFrom:bufferCopy];

  proxy = self->_proxy;
  fsFileHandle = [fromCopy fsFileHandle];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000B22C;
  v19[3] = &unk_100060D90;
  v20 = replyCopy;
  v18 = replyCopy;
  [(FSVolumeXPC *)proxy readFrom:fsFileHandle atOffset:offset intoBuffer:v15 requestID:d replyHandler:v19];
}

- (void)readLinkOf:(id)of requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  fsFileHandle = [of fsFileHandle];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B304;
  v12[3] = &unk_100060BD8;
  v13 = replyCopy;
  v11 = replyCopy;
  [(FSVolumeXPC *)proxy readSymbolicLinkOf:fsFileHandle requestID:d replyHandler:v12];
}

- (void)reclaim:(id)reclaim requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  fsFileHandle = [reclaim fsFileHandle];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B3DC;
  v12[3] = &unk_100060C28;
  v13 = replyCopy;
  v11 = replyCopy;
  [(FSVolumeXPC *)proxy reclaim:fsFileHandle requestID:d replyHandler:v12];
}

- (void)renameItemIn:(id)in named:(id)named item:(id)item toDirectory:(id)directory newName:(id)name toItem:(id)toItem usingFlags:(unsigned int)flags requestID:(unint64_t)self0 reply:(id)self1
{
  inCopy = in;
  namedCopy = named;
  itemCopy = item;
  directoryCopy = directory;
  nameCopy = name;
  replyCopy = reply;
  if (toItem)
  {
    toItem = [toItem fsFileHandle];
  }

  proxy = self->_proxy;
  fsFileHandle = [inCopy fsFileHandle];
  [itemCopy fsFileHandle];
  v24 = v28 = inCopy;
  fsFileHandle2 = [directoryCopy fsFileHandle];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000B7EC;
  v30[3] = &unk_100060DB8;
  v31 = replyCopy;
  v26 = replyCopy;
  LODWORD(v27) = flags;
  [(FSVolumeXPC *)proxy renameItemIn:fsFileHandle named:namedCopy item:v24 toDirectory:fsFileHandle2 newName:nameCopy toItem:toItem usingFlags:v27 requestID:d replyHandler:v30];
}

- (void)setFileAttributesOf:(id)of to:(id)to requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  toCopy = to;
  fsFileHandle = [of fsFileHandle];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000BB04;
  v15[3] = &unk_100060DE0;
  v16 = replyCopy;
  v14 = replyCopy;
  [(FSVolumeXPC *)proxy setFileAttributesOf:fsFileHandle to:toCopy requestID:d replyHandler:v15];
}

- (void)setOtherAttributeOf:(id)of named:(id)named value:(id)value requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  valueCopy = value;
  namedCopy = named;
  fsFileHandle = [of fsFileHandle];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000BC10;
  v18[3] = &unk_100060CF0;
  v19 = replyCopy;
  v17 = replyCopy;
  [(FSVolumeXPC *)proxy setOtherAttributeOf:fsFileHandle named:namedCopy value:valueCopy requestID:d replyHandler:v18];
}

- (void)setXattrOf:(id)of named:(id)named value:(id)value how:(int)how requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  valueCopy = value;
  namedCopy = named;
  fsFileHandle = [of fsFileHandle];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000BE14;
  v20[3] = &unk_100060BB0;
  v21 = replyCopy;
  v19 = replyCopy;
  [(FSVolumeXPC *)proxy setXattrOf:fsFileHandle named:namedCopy value:valueCopy how:how requestID:d replyHandler:v20];
}

- (void)volumeStatistics:(id)statistics requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  fsFileHandle = [statistics fsFileHandle];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000BF04;
  v12[3] = &unk_100060E30;
  v13 = replyCopy;
  v11 = replyCopy;
  [(FSVolumeXPC *)proxy volumeStatistics:fsFileHandle requestID:d replyHandler:v12];
}

- (void)writeTo:(id)to atOffset:(unint64_t)offset fromBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  bufferCopy = buffer;
  fsFileHandle = [to fsFileHandle];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000C0C8;
  v17[3] = &unk_100060E58;
  v18 = replyCopy;
  v16 = replyCopy;
  [(FSVolumeXPC *)proxy writeTo:fsFileHandle atOffset:offset fromBuffer:bufferCopy requestID:d replyHandler:v17];
}

- (void)writeTo:(id)to atOffset:(unint64_t)offset sharedBuffer:(id)buffer requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  bufferCopy = buffer;
  toCopy = to;
  v15 = [NSData alloc];
  mutableBytes = [bufferCopy mutableBytes];
  v17 = [bufferCopy length];

  v18 = [v15 initWithBytesNoCopy:mutableBytes length:v17 freeWhenDone:0];
  proxy = self->_proxy;
  fsFileHandle = [toCopy fsFileHandle];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000C228;
  v22[3] = &unk_100060E58;
  v23 = replyCopy;
  v21 = replyCopy;
  [(FSVolumeXPC *)proxy writeTo:fsFileHandle atOffset:offset fromBuffer:v18 requestID:d replyHandler:v22];
}

- (void)xattrOf:(id)of named:(id)named requestID:(unint64_t)d reply:(id)reply
{
  replyCopy = reply;
  proxy = self->_proxy;
  namedCopy = named;
  fsFileHandle = [of fsFileHandle];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C31C;
  v15[3] = &unk_100060C28;
  v16 = replyCopy;
  v14 = replyCopy;
  [(FSVolumeXPC *)proxy xattrOf:fsFileHandle named:namedCopy requestID:d replyHandler:v15];
}

@end