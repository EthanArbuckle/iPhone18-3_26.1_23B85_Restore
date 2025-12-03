@interface _NMRPlaybackQueueResponseProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _NMRPlaybackQueueResponseProtobuf

- (id)description
{
  v7.receiver = self;
  v7.super_class = _NMRPlaybackQueueResponseProtobuf;
  v3 = [(_NMRPlaybackQueueResponseProtobuf *)&v7 description];
  dictionaryRepresentation = [(_NMRPlaybackQueueResponseProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  playbackQueue = self->_playbackQueue;
  if (playbackQueue)
  {
    [v3 setObject:playbackQueue forKey:@"playbackQueue"];
  }

  error = self->_error;
  if (error)
  {
    [v4 setObject:error forKey:@"error"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_playbackQueue)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_playbackQueue)
  {
    [toCopy setPlaybackQueue:?];
    toCopy = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_playbackQueue copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_error copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((playbackQueue = self->_playbackQueue, !(playbackQueue | equalCopy[2])) || -[NSData isEqual:](playbackQueue, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[1])
    {
      v7 = [(NSData *)error isEqual:?];
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
    [(_NMRPlaybackQueueResponseProtobuf *)self setPlaybackQueue:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(_NMRPlaybackQueueResponseProtobuf *)self setError:?];
    fromCopy = v5;
  }
}

@end