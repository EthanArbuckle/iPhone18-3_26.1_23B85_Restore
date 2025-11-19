@interface NRRemoteObjectMessage
- (NRRemoteObjectMessage)initWithProtobuf:(id)a3 andIDSBTUUID:(id)a4;
@end

@implementation NRRemoteObjectMessage

- (NRRemoteObjectMessage)initWithProtobuf:(id)a3 andIDSBTUUID:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NRRemoteObjectMessage;
  v9 = [(NRRemoteObjectMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_protobuf, a3);
    objc_storeStrong(&v10->_idsBTUUID, a4);
  }

  return v10;
}

@end