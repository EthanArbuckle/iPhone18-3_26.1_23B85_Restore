@interface _NMRPlaybackQueueRequestProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _NMRPlaybackQueueRequestProtobuf

- (id)description
{
  v7.receiver = self;
  v7.super_class = _NMRPlaybackQueueRequestProtobuf;
  v3 = [(_NMRPlaybackQueueRequestProtobuf *)&v7 description];
  dictionaryRepresentation = [(_NMRPlaybackQueueRequestProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  request = self->_request;
  if (request)
  {
    [v3 setObject:request forKey:@"request"];
  }

  playerPath = self->_playerPath;
  if (playerPath)
  {
    [v4 setObject:playerPath forKey:@"playerPath"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_request)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_request)
  {
    [toCopy setRequest:?];
    toCopy = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_request copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_playerPath copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((request = self->_request, !(request | equalCopy[2])) || -[NSData isEqual:](request, "isEqual:")))
  {
    playerPath = self->_playerPath;
    if (playerPath | equalCopy[1])
    {
      v7 = [(NSData *)playerPath isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(_NMRPlaybackQueueRequestProtobuf *)self setRequest:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(_NMRPlaybackQueueRequestProtobuf *)self setPlayerPath:?];
    fromCopy = v5;
  }
}

@end