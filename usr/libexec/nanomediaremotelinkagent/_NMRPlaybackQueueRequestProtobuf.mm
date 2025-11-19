@interface _NMRPlaybackQueueRequestProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _NMRPlaybackQueueRequestProtobuf

- (id)description
{
  v7.receiver = self;
  v7.super_class = _NMRPlaybackQueueRequestProtobuf;
  v3 = [(_NMRPlaybackQueueRequestProtobuf *)&v7 description];
  v4 = [(_NMRPlaybackQueueRequestProtobuf *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_request)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_playerPath)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_request)
  {
    [v4 setRequest:?];
    v4 = v5;
  }

  if (self->_playerPath)
  {
    [v5 setPlayerPath:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_request copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_playerPath copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((request = self->_request, !(request | v4[2])) || -[NSData isEqual:](request, "isEqual:")))
  {
    playerPath = self->_playerPath;
    if (playerPath | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(_NMRPlaybackQueueRequestProtobuf *)self setRequest:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(_NMRPlaybackQueueRequestProtobuf *)self setPlayerPath:?];
    v4 = v5;
  }
}

@end