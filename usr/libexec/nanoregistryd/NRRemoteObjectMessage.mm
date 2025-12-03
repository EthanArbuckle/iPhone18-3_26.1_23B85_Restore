@interface NRRemoteObjectMessage
- (NRRemoteObjectMessage)initWithProtobuf:(id)protobuf andIDSBTUUID:(id)d;
@end

@implementation NRRemoteObjectMessage

- (NRRemoteObjectMessage)initWithProtobuf:(id)protobuf andIDSBTUUID:(id)d
{
  protobufCopy = protobuf;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = NRRemoteObjectMessage;
  v9 = [(NRRemoteObjectMessage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_protobuf, protobuf);
    objc_storeStrong(&v10->_idsBTUUID, d);
  }

  return v10;
}

@end