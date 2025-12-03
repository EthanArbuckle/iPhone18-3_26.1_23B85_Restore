@interface NMROriginInfo
- (NMROriginInfo)init;
- (NMROriginInfo)initWithProtobuf:(id)protobuf;
- (NMROriginInfo)initWithProtobufData:(id)data;
- (NSString)description;
- (id)protobuf;
@end

@implementation NMROriginInfo

- (NMROriginInfo)init
{
  v6.receiver = self;
  v6.super_class = NMROriginInfo;
  v2 = [(NMROriginInfo *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(_NMROriginProtobuf);
    protobuf = v2->_protobuf;
    v2->_protobuf = v3;
  }

  return v2;
}

- (NSString)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uniqueIdentifier = [(_NMROriginProtobuf *)self->_protobuf uniqueIdentifier];
  displayName = [(_NMROriginProtobuf *)self->_protobuf displayName];
  v7 = [NSString stringWithFormat:@"<%@:%p identifier: %d, displayName: %@>", v4, self, uniqueIdentifier, displayName];

  return v7;
}

- (NMROriginInfo)initWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v9.receiver = self;
  v9.super_class = NMROriginInfo;
  v5 = [(NMROriginInfo *)&v9 init];
  if (v5)
  {
    v6 = [protobufCopy copy];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;
  }

  return v5;
}

- (id)protobuf
{
  v2 = [(_NMROriginProtobuf *)self->_protobuf copy];

  return v2;
}

- (NMROriginInfo)initWithProtobufData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = NMROriginInfo;
  v5 = [(NMROriginInfo *)&v9 init];
  if (v5)
  {
    v6 = [[_NMROriginProtobuf alloc] initWithData:dataCopy];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;
  }

  return v5;
}

@end