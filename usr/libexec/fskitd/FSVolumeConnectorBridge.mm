@interface FSVolumeConnectorBridge
+ (id)newWithConnection:(id)a3 errorHandler:(id)a4;
+ (id)newWithSyncConnection:(id)a3 errorHandler:(id)a4;
- (FSVolumeConnectorBridge)initWithConnection:(id)a3 errorHandler:(id)a4;
- (FSVolumeConnectorBridge)initWithSyncConnection:(id)a3 errorHandler:(id)a4;
- (void)abortSearch:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)blockmapFile:(id)a3 range:(_NSRange)a4 flags:(unsigned int)a5 operationID:(unint64_t)a6 reply:(id)a7;
- (void)checkAccessTo:(id)a3 requestedAccess:(unsigned int)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)createIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)fetchVolumeMachPortLabeled:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)fileAttributes:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)getRootFileHandleWithError:(id)a3;
- (void)listXattrsOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)makeDirectoryIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)makeLinkOf:(id)a3 named:(id)a4 inDirectory:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)makeSymLinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)parentsAndAttributesForItemsByID:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)pathConfiguration:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)readDirectory:(id)a3 intoBuffer:(id)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)readDirectory:(id)a3 intoBuffer:(id)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9;
- (void)readFrom:(id)a3 atOffset:(unint64_t)a4 intoBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)readLinkOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)reclaim:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)renameItemIn:(id)a3 named:(id)a4 item:(id)a5 toDirectory:(id)a6 newName:(id)a7 toItem:(id)a8 usingFlags:(unsigned int)a9 requestID:(unint64_t)a10 reply:(id)a11;
- (void)setFileAttributesOf:(id)a3 to:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
- (void)setOtherAttributeOf:(id)a3 named:(id)a4 value:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)setXattrOf:(id)a3 named:(id)a4 value:(id)a5 how:(int)a6 requestID:(unint64_t)a7 reply:(id)a8;
- (void)volumeStatistics:(id)a3 requestID:(unint64_t)a4 reply:(id)a5;
- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 fromBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 sharedBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7;
- (void)xattrOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6;
@end

@implementation FSVolumeConnectorBridge

- (FSVolumeConnectorBridge)initWithConnection:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v14.receiver = self;
    v14.super_class = FSVolumeConnectorBridge;
    v8 = [(FSVolumeConnectorBridge *)&v14 init];
    if (v8)
    {
      v9 = [v6 remoteObjectProxyWithErrorHandler:v7];
      proxy = v8->_proxy;
      v8->_proxy = v9;
    }

    if (!v8->_proxy)
    {

      v8 = 0;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v12 = fskit_std_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10000D658(v12);
    }

    v11 = 0;
  }

  return v11;
}

- (FSVolumeConnectorBridge)initWithSyncConnection:(id)a3 errorHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = FSVolumeConnectorBridge;
  v8 = [(FSVolumeConnectorBridge *)&v12 init];
  if (v8)
  {
    v9 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v7];
    proxy = v8->_proxy;
    v8->_proxy = v9;
  }

  if (!v8->_proxy)
  {

    v8 = 0;
  }

  return v8;
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

- (void)abortSearch:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000091B0;
  v11[3] = &unk_100060BB0;
  v12 = v8;
  v10 = v8;
  [(FSVolumeXPC *)proxy abortSearch:a3 requestID:a4 replyHandler:v11];
}

- (void)blockmapFile:(id)a3 range:(_NSRange)a4 flags:(unsigned int)a5 operationID:(unint64_t)a6 reply:(id)a7
{
  length = a4.length;
  location = a4.location;
  v13 = a7;
  proxy = self->_proxy;
  v15 = [a3 fsFileHandle];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000092B4;
  v17[3] = &unk_100060BD8;
  v18 = v13;
  v16 = v13;
  [(FSVolumeXPC *)proxy blockmapFile:v15 range:location flags:length operationID:a5 replyHandler:a6, v17];
}

- (void)checkAccessTo:(id)a3 requestedAccess:(unsigned int)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v10 = a6;
  proxy = self->_proxy;
  v12 = [a3 fsFileHandle];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000093A0;
  v14[3] = &unk_100060BB0;
  v15 = v10;
  v13 = v10;
  [(FSVolumeXPC *)proxy checkAccessTo:v12 requestedAccess:a4 requestID:a5 replyHandler:v14];
}

- (void)createIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  proxy = self->_proxy;
  v14 = a5;
  v15 = a4;
  v16 = [a3 fsFileHandle];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100009598;
  v18[3] = &unk_100060C00;
  v19 = v12;
  v17 = v12;
  [(FSVolumeXPC *)proxy createIn:v16 named:v15 type:1 attributes:v14 requestID:a6 replyHandler:v18];
}

- (void)fetchVolumeMachPortLabeled:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100009840;
  v11[3] = &unk_100060C50;
  v12 = v8;
  v10 = v8;
  [(FSVolumeXPC *)proxy fetchVolumeMachPortLabeled:a3 requestID:a4 replyHandler:v11];
}

- (void)fileAttributes:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v10 = [a3 fsFileHandle];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009920;
  v12[3] = &unk_100060C28;
  v13 = v8;
  v11 = v8;
  [(FSVolumeXPC *)proxy fileAttributes:v10 requestedAttributes:0x4000000000003FE7 requestID:a4 replyHandler:v12];
}

- (void)getRootFileHandleWithError:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  [(FSVolumeXPC *)proxy getRootFileHandle:v8];
}

- (void)listXattrsOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v10 = [a3 fsFileHandle];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100009CB0;
  v12[3] = &unk_100060CA0;
  v13 = v8;
  v11 = v8;
  [(FSVolumeXPC *)proxy listXattrsOf:v10 requestID:a4 replyHandler:v12];
}

- (void)makeDirectoryIn:(id)a3 named:(id)a4 attributes:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  proxy = self->_proxy;
  v14 = a5;
  v15 = a4;
  v16 = [a3 fsFileHandle];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000A21C;
  v18[3] = &unk_100060C00;
  v19 = v12;
  v17 = v12;
  [(FSVolumeXPC *)proxy createIn:v16 named:v15 type:2 attributes:v14 requestID:a6 replyHandler:v18];
}

- (void)makeLinkOf:(id)a3 named:(id)a4 inDirectory:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  proxy = self->_proxy;
  v14 = a5;
  v15 = a4;
  v16 = [a3 fsFileHandle];
  v17 = [v14 fsFileHandle];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000A4B8;
  v19[3] = &unk_100060CF0;
  v20 = v12;
  v18 = v12;
  [(FSVolumeXPC *)proxy makeLinkOf:v16 named:v15 inDirectory:v17 requestID:a6 replyHandler:v19];
}

- (void)makeSymLinkIn:(id)a3 named:(id)a4 contents:(id)a5 attributes:(id)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v14 = a8;
  proxy = self->_proxy;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = [a3 fsFileHandle];
  v20 = [v17 dataUsingEncoding:4];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000A5F4;
  v22[3] = &unk_100060C00;
  v23 = v14;
  v21 = v14;
  [(FSVolumeXPC *)proxy makeSymlinkIn:v19 named:v18 contents:v20 attributes:v16 requestID:a7 replyHandler:v22];
}

- (void)otherAttributeOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v10 = a6;
  proxy = self->_proxy;
  v12 = a4;
  v13 = [a3 fsFileHandle];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000A8A0;
  v15[3] = &unk_100060C28;
  v16 = v10;
  v14 = v10;
  [(FSVolumeXPC *)proxy otherAttributeOf:v13 named:v12 requestID:a5 replyHandler:v15];
}

- (void)parentsAndAttributesForItemsByID:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000A960;
  v11[3] = &unk_100060D18;
  v12 = v8;
  v10 = v8;
  [(FSVolumeXPC *)proxy parentsAndAttributesForItemsByID:a3 requestID:a4 replyHandler:v11];
}

- (void)pathConfiguration:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a5;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3010000000;
  v37 = 0;
  v38 = 0;
  v36 = &unk_100055C71;
  proxy = self->_proxy;
  v11 = [v8 fsFileHandle];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_10000AD80;
  v32[3] = &unk_100060D40;
  v32[4] = &v33;
  [(FSVolumeXPC *)proxy pathConfigurationOf:v11 propertyName:1 requestID:a4 replyHandler:v32];

  v12 = self->_proxy;
  v13 = [v8 fsFileHandle];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10000AD98;
  v31[3] = &unk_100060D40;
  v31[4] = &v33;
  [(FSVolumeXPC *)v12 pathConfigurationOf:v13 propertyName:4 requestID:a4 replyHandler:v31];

  v14 = self->_proxy;
  v15 = [v8 fsFileHandle];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000ADB0;
  v30[3] = &unk_100060D40;
  v30[4] = &v33;
  [(FSVolumeXPC *)v14 pathConfigurationOf:v15 propertyName:7 requestID:a4 replyHandler:v30];

  v16 = self->_proxy;
  v17 = [v8 fsFileHandle];
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_10000ADD0;
  v29[3] = &unk_100060D40;
  v29[4] = &v33;
  [(FSVolumeXPC *)v16 pathConfigurationOf:v17 propertyName:8 requestID:a4 replyHandler:v29];

  v18 = self->_proxy;
  v19 = [v8 fsFileHandle];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_10000ADF8;
  v28[3] = &unk_100060D40;
  v28[4] = &v33;
  [(FSVolumeXPC *)v18 pathConfigurationOf:v19 propertyName:11 requestID:a4 replyHandler:v28];

  v20 = self->_proxy;
  v21 = [v8 fsFileHandle];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10000AE24;
  v27[3] = &unk_100060D40;
  v27[4] = &v33;
  [(FSVolumeXPC *)v20 pathConfigurationOf:v21 propertyName:12 requestID:a4 replyHandler:v27];

  v22 = self->_proxy;
  v23 = [v8 fsFileHandle];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10000AE50;
  v26[3] = &unk_100060D40;
  v26[4] = &v33;
  [(FSVolumeXPC *)v22 pathConfigurationOf:v23 propertyName:18 requestID:a4 replyHandler:v26];

  v24 = [NSData dataWithBytes:v34 + 4 length:16];
  v25 = v9[2];
  if (v24)
  {
    v25(v9, 0, v24);
  }

  else
  {
    v25(v9, 12, 0);
  }

  _Block_object_dispose(&v33, 8);
}

- (void)readDirectory:(id)a3 intoBuffer:(id)a4 cookie:(unint64_t)a5 verifier:(unint64_t)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v14 = a8;
  v15 = a4;
  v16 = a3;
  v17 = [[FSMutableFileDataBuffer alloc] initProxyFrom:v15];

  proxy = self->_proxy;
  v19 = [v16 fsFileHandle];

  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_10000AFB0;
  v21[3] = &unk_100060D68;
  v22 = v14;
  v20 = v14;
  [(FSVolumeXPC *)proxy readDirectory:v19 intoBuffer:v17 cookie:a5 verifier:a6 requestID:a7 replyHandler:v21];
}

- (void)readDirectory:(id)a3 intoBuffer:(id)a4 requestedAttributes:(unint64_t)a5 cookie:(unint64_t)a6 verifier:(unint64_t)a7 requestID:(unint64_t)a8 reply:(id)a9
{
  v16 = a9;
  v17 = a4;
  v18 = a3;
  v19 = [[FSMutableFileDataBuffer alloc] initProxyFrom:v17];

  proxy = self->_proxy;
  v21 = [v18 fsFileHandle];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000B0FC;
  v23[3] = &unk_100060D68;
  v24 = v16;
  v22 = v16;
  [(FSVolumeXPC *)proxy readDirectory:v21 requestedAttributes:a5 intoBuffer:v19 cookie:a6 verifier:a7 requestID:a8 replyHandler:v23];
}

- (void)readFrom:(id)a3 atOffset:(unint64_t)a4 intoBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = [[FSMutableFileDataBuffer alloc] initProxyFrom:v13];

  proxy = self->_proxy;
  v17 = [v14 fsFileHandle];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10000B22C;
  v19[3] = &unk_100060D90;
  v20 = v12;
  v18 = v12;
  [(FSVolumeXPC *)proxy readFrom:v17 atOffset:a4 intoBuffer:v15 requestID:a6 replyHandler:v19];
}

- (void)readLinkOf:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v10 = [a3 fsFileHandle];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B304;
  v12[3] = &unk_100060BD8;
  v13 = v8;
  v11 = v8;
  [(FSVolumeXPC *)proxy readSymbolicLinkOf:v10 requestID:a4 replyHandler:v12];
}

- (void)reclaim:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v10 = [a3 fsFileHandle];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000B3DC;
  v12[3] = &unk_100060C28;
  v13 = v8;
  v11 = v8;
  [(FSVolumeXPC *)proxy reclaim:v10 requestID:a4 replyHandler:v12];
}

- (void)renameItemIn:(id)a3 named:(id)a4 item:(id)a5 toDirectory:(id)a6 newName:(id)a7 toItem:(id)a8 usingFlags:(unsigned int)a9 requestID:(unint64_t)a10 reply:(id)a11
{
  v17 = a3;
  v29 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a11;
  if (a8)
  {
    a8 = [a8 fsFileHandle];
  }

  proxy = self->_proxy;
  v23 = [v17 fsFileHandle];
  [v18 fsFileHandle];
  v24 = v28 = v17;
  v25 = [v19 fsFileHandle];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10000B7EC;
  v30[3] = &unk_100060DB8;
  v31 = v21;
  v26 = v21;
  LODWORD(v27) = a9;
  [(FSVolumeXPC *)proxy renameItemIn:v23 named:v29 item:v24 toDirectory:v25 newName:v20 toItem:a8 usingFlags:v27 requestID:a10 replyHandler:v30];
}

- (void)setFileAttributesOf:(id)a3 to:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v10 = a6;
  proxy = self->_proxy;
  v12 = a4;
  v13 = [a3 fsFileHandle];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000BB04;
  v15[3] = &unk_100060DE0;
  v16 = v10;
  v14 = v10;
  [(FSVolumeXPC *)proxy setFileAttributesOf:v13 to:v12 requestID:a5 replyHandler:v15];
}

- (void)setOtherAttributeOf:(id)a3 named:(id)a4 value:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  proxy = self->_proxy;
  v14 = a5;
  v15 = a4;
  v16 = [a3 fsFileHandle];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10000BC10;
  v18[3] = &unk_100060CF0;
  v19 = v12;
  v17 = v12;
  [(FSVolumeXPC *)proxy setOtherAttributeOf:v16 named:v15 value:v14 requestID:a6 replyHandler:v18];
}

- (void)setXattrOf:(id)a3 named:(id)a4 value:(id)a5 how:(int)a6 requestID:(unint64_t)a7 reply:(id)a8
{
  v14 = a8;
  proxy = self->_proxy;
  v16 = a5;
  v17 = a4;
  v18 = [a3 fsFileHandle];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10000BE14;
  v20[3] = &unk_100060BB0;
  v21 = v14;
  v19 = v14;
  [(FSVolumeXPC *)proxy setXattrOf:v18 named:v17 value:v16 how:a6 requestID:a7 replyHandler:v20];
}

- (void)volumeStatistics:(id)a3 requestID:(unint64_t)a4 reply:(id)a5
{
  v8 = a5;
  proxy = self->_proxy;
  v10 = [a3 fsFileHandle];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10000BF04;
  v12[3] = &unk_100060E30;
  v13 = v8;
  v11 = v8;
  [(FSVolumeXPC *)proxy volumeStatistics:v10 requestID:a4 replyHandler:v12];
}

- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 fromBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  proxy = self->_proxy;
  v14 = a5;
  v15 = [a3 fsFileHandle];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10000C0C8;
  v17[3] = &unk_100060E58;
  v18 = v12;
  v16 = v12;
  [(FSVolumeXPC *)proxy writeTo:v15 atOffset:a4 fromBuffer:v14 requestID:a6 replyHandler:v17];
}

- (void)writeTo:(id)a3 atOffset:(unint64_t)a4 sharedBuffer:(id)a5 requestID:(unint64_t)a6 reply:(id)a7
{
  v12 = a7;
  v13 = a5;
  v14 = a3;
  v15 = [NSData alloc];
  v16 = [v13 mutableBytes];
  v17 = [v13 length];

  v18 = [v15 initWithBytesNoCopy:v16 length:v17 freeWhenDone:0];
  proxy = self->_proxy;
  v20 = [v14 fsFileHandle];

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_10000C228;
  v22[3] = &unk_100060E58;
  v23 = v12;
  v21 = v12;
  [(FSVolumeXPC *)proxy writeTo:v20 atOffset:a4 fromBuffer:v18 requestID:a6 replyHandler:v22];
}

- (void)xattrOf:(id)a3 named:(id)a4 requestID:(unint64_t)a5 reply:(id)a6
{
  v10 = a6;
  proxy = self->_proxy;
  v12 = a4;
  v13 = [a3 fsFileHandle];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000C31C;
  v15[3] = &unk_100060C28;
  v16 = v10;
  v14 = v10;
  [(FSVolumeXPC *)proxy xattrOf:v13 named:v12 requestID:a5 replyHandler:v15];
}

@end