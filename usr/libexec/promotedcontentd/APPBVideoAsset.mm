@interface APPBVideoAsset
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation APPBVideoAsset

+ (id)options
{
  if (qword_1004E6AA0 != -1)
  {
    sub_100393FB8();
  }

  v3 = qword_1004E6A98;

  return v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBVideoAsset;
  v3 = [(APPBVideoAsset *)&v7 description];
  dictionaryRepresentation = [(APPBVideoAsset *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  videoFormat = self->_videoFormat;
  if (videoFormat)
  {
    [v3 setObject:videoFormat forKey:@"videoFormat"];
  }

  videoFileURL = self->_videoFileURL;
  if (videoFileURL)
  {
    [v4 setObject:videoFileURL forKey:@"videoFileURL"];
  }

  videoSoundCheckData = self->_videoSoundCheckData;
  if (videoSoundCheckData)
  {
    [v4 setObject:videoSoundCheckData forKey:@"videoSoundCheckData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_videoFormat)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_videoFileURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_videoSoundCheckData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_videoFormat)
  {
    [toCopy setVideoFormat:?];
    toCopy = v5;
  }

  if (self->_videoFileURL)
  {
    [v5 setVideoFileURL:?];
    toCopy = v5;
  }

  if (self->_videoSoundCheckData)
  {
    [v5 setVideoSoundCheckData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_videoFormat copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_videoFileURL copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_videoSoundCheckData copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((videoFormat = self->_videoFormat, !(videoFormat | equalCopy[2])) || -[NSString isEqual:](videoFormat, "isEqual:")) && ((videoFileURL = self->_videoFileURL, !(videoFileURL | equalCopy[1])) || -[NSString isEqual:](videoFileURL, "isEqual:")))
  {
    videoSoundCheckData = self->_videoSoundCheckData;
    if (videoSoundCheckData | equalCopy[3])
    {
      v8 = [(NSData *)videoSoundCheckData isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_videoFormat hash];
  v4 = [(NSString *)self->_videoFileURL hash]^ v3;
  return v4 ^ [(NSData *)self->_videoSoundCheckData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(APPBVideoAsset *)self setVideoFormat:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(APPBVideoAsset *)self setVideoFileURL:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(APPBVideoAsset *)self setVideoSoundCheckData:?];
    fromCopy = v5;
  }
}

@end