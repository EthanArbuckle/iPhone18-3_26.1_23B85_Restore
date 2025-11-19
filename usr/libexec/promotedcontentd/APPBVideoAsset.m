@interface APPBVideoAsset
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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
  v4 = [(APPBVideoAsset *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_videoFormat)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_videoFileURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_videoSoundCheckData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_videoFormat)
  {
    [v4 setVideoFormat:?];
    v4 = v5;
  }

  if (self->_videoFileURL)
  {
    [v5 setVideoFileURL:?];
    v4 = v5;
  }

  if (self->_videoSoundCheckData)
  {
    [v5 setVideoSoundCheckData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_videoFormat copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_videoFileURL copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_videoSoundCheckData copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((videoFormat = self->_videoFormat, !(videoFormat | v4[2])) || -[NSString isEqual:](videoFormat, "isEqual:")) && ((videoFileURL = self->_videoFileURL, !(videoFileURL | v4[1])) || -[NSString isEqual:](videoFileURL, "isEqual:")))
  {
    videoSoundCheckData = self->_videoSoundCheckData;
    if (videoSoundCheckData | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(APPBVideoAsset *)self setVideoFormat:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(APPBVideoAsset *)self setVideoFileURL:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(APPBVideoAsset *)self setVideoSoundCheckData:?];
    v4 = v5;
  }
}

@end