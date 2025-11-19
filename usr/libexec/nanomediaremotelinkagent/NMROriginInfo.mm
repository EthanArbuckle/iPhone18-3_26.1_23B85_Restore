@interface NMROriginInfo
- (NMROriginInfo)init;
- (NMROriginInfo)initWithProtobuf:(id)a3;
- (NMROriginInfo)initWithProtobufData:(id)a3;
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
  v5 = [(_NMROriginProtobuf *)self->_protobuf uniqueIdentifier];
  v6 = [(_NMROriginProtobuf *)self->_protobuf displayName];
  v7 = [NSString stringWithFormat:@"<%@:%p identifier: %d, displayName: %@>", v4, self, v5, v6];

  return v7;
}

- (NMROriginInfo)initWithProtobuf:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NMROriginInfo;
  v5 = [(NMROriginInfo *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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

- (NMROriginInfo)initWithProtobufData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NMROriginInfo;
  v5 = [(NMROriginInfo *)&v9 init];
  if (v5)
  {
    v6 = [[_NMROriginProtobuf alloc] initWithData:v4];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;
  }

  return v5;
}

@end