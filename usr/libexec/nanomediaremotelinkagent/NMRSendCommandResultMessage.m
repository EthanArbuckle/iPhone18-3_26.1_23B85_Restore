@interface NMRSendCommandResultMessage
- (NMRSendCommandResultMessage)initWithProtobufData:(id)a3;
- (NSArray)handlerReturnStatuses;
- (NSDate)serializationDate;
- (NSNumber)originIdentifier;
- (id)protobufData;
@end

@implementation NMRSendCommandResultMessage

- (NMRSendCommandResultMessage)initWithProtobufData:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = NMRSendCommandResultMessage;
  v5 = [(NMRSendCommandResultMessage *)&v10 init];
  if (v5)
  {
    v6 = [[_NMRSendCommandResultMessageProtobuf alloc] initWithData:v4];
    protobuf = v5->_protobuf;
    v5->_protobuf = v6;

    v8 = v5;
  }

  return v5;
}

- (NSArray)handlerReturnStatuses
{
  v3 = +[NSMutableArray array];
  if ([(_NMRSendCommandResultMessageProtobuf *)self->_protobuf handlerReturnStatusCount])
  {
    v4 = 0;
    do
    {
      v5 = [NSNumber numberWithUnsignedInt:[(_NMRSendCommandResultMessageProtobuf *)self->_protobuf handlerReturnStatusAtIndex:v4]];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(_NMRSendCommandResultMessageProtobuf *)self->_protobuf handlerReturnStatusCount]);
  }

  return v3;
}

- (NSNumber)originIdentifier
{
  if ([(_NMRSendCommandResultMessageProtobuf *)self->_protobuf hasOriginIdentifier])
  {
    v3 = [NSNumber numberWithInt:[(_NMRSendCommandResultMessageProtobuf *)self->_protobuf originIdentifier]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)protobufData
{
  protobuf = self->_protobuf;
  v4 = +[NSDate date];
  [v4 timeIntervalSinceReferenceDate];
  [(_NMRSendCommandResultMessageProtobuf *)protobuf setTimestamp:?];

  v5 = self->_protobuf;

  return [(_NMRSendCommandResultMessageProtobuf *)v5 data];
}

- (NSDate)serializationDate
{
  if ([(_NMRSendCommandResultMessageProtobuf *)self->_protobuf hasTimestamp])
  {
    [(_NMRSendCommandResultMessageProtobuf *)self->_protobuf timestamp];
    v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end