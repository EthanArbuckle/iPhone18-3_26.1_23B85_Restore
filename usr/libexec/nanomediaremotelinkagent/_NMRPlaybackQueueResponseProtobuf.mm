@interface _NMRPlaybackQueueResponseProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMRPlaybackQueueResponseProtobuf

- (id)description
{
  v7.receiver = self;
  v7.super_class = _NMRPlaybackQueueResponseProtobuf;
  v3 = [(_NMRPlaybackQueueResponseProtobuf *)&v7 description];
  v4 = [(_NMRPlaybackQueueResponseProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_playbackQueue)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_error)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_playbackQueue)
  {
    [v4 setPlaybackQueue:?];
    v4 = v5;
  }

  if (self->_error)
  {
    [v5 setError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_playbackQueue copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_error copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((playbackQueue = self->_playbackQueue, !(playbackQueue | v4[2])) || -[NSData isEqual:](playbackQueue, "isEqual:")))
  {
    error = self->_error;
    if (error | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(_NMRPlaybackQueueResponseProtobuf *)self setPlaybackQueue:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(_NMRPlaybackQueueResponseProtobuf *)self setError:?];
    v4 = v5;
  }
}

@end