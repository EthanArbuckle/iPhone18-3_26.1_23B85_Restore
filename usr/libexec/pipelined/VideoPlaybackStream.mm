@interface VideoPlaybackStream
- (LocalizerInputEvent)readNextEvent;
- (VideoPlaybackStream)initWithDatarun:(const void *)datarun;
- (duration<long)getTimeStampFromSampleBuffer:(opaqueCMSampleBuffer *)buffer;
- (opaqueCMSampleBuffer)readNextSampleBuffer;
- (void)dealloc;
@end

@implementation VideoPlaybackStream

- (VideoPlaybackStream)initWithDatarun:(const void *)datarun
{
  v31.receiver = self;
  v31.super_class = VideoPlaybackStream;
  v4 = [(VideoPlaybackStream *)&v31 init];
  if (!v4)
  {
    v5 = 0;
    goto LABEL_23;
  }

  v4->_datarunStart.__rep_ = sub_10004F640(datarun);
  v4->_source = 0;
  v34 = 8;
  strcpy(v33, "back.mp4");
  if (*(datarun + 23) < 0)
  {
    sub_100003228(&__p, *datarun, *(datarun + 1));
  }

  else
  {
    __p = *datarun;
  }

  sub_1000032E4(&__p, v33);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v7 = [NSString stringWithUTF8String:p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_17:
    operator delete(v33[0]);
    goto LABEL_11;
  }

  if (v34 < 0)
  {
    goto LABEL_17;
  }

LABEL_11:
  v8 = [NSURL fileURLWithPath:v7];
  v9 = +[NSDictionary dictionary];
  v10 = [(objc_class *)off_10045C230() URLAssetWithURL:v8 options:v9];
  v11 = off_10045C240();
  v12 = [v10 tracksWithMediaType:v11];

  if ([v12 count] == 1)
  {
    v13 = [v12 objectAtIndex:0];
    track = v4->_track;
    v4->_track = v13;

    v15 = [NSNumber numberWithUnsignedInteger:1111970369];
    v16 = [NSDictionary dictionaryWithObject:v15 forKey:off_10045C290()];

    v17 = [(objc_class *)off_10045C238() assetReaderTrackOutputWithTrack:v4->_track outputSettings:v16];
    readerTrackOutput = v4->_readerTrackOutput;
    v4->_readerTrackOutput = v17;

    v30 = 0;
    v19 = [(objc_class *)off_10045C228() assetReaderWithAsset:v10 error:&v30];
    v20 = v30;
    p_reader = &v4->_reader;
    reader = v4->_reader;
    v4->_reader = v19;

    v23 = v4->_reader;
    v29 = @"Failed to open reader for ";
    v24 = v7;
    uTF8String = [v7 UTF8String];
    if (v20)
    {
      p_reader = [v20 description];
      v25 = p_reader;
      uTF8String2 = [p_reader UTF8String];
      if (!v23)
      {
LABEL_24:
        sub_100014A08(v33, "");
        sub_1002C5C50(&v29, &__p);
        sub_1002C60F8(&uTF8String, &v36);
        sub_100211508(": ", &v37);
        sub_1002C60F8(&uTF8String2, &v38);
        sub_1000E661C(v33, &__p, 4);
        if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v38.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_26:
            if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_27;
            }

            goto LABEL_32;
          }
        }

        else if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        operator delete(v37.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_27:
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_33;
        }

LABEL_32:
        operator delete(v36.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_28:
          if ((v34 & 0x80000000) == 0)
          {
            goto LABEL_29;
          }

LABEL_34:
          operator delete(v33[0]);
LABEL_29:
          sub_10003F5D0(&v32);
        }

LABEL_33:
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((v34 & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        goto LABEL_34;
      }
    }

    else
    {
      uTF8String2 = "<nil error>";
      if (!v23)
      {
        goto LABEL_24;
      }
    }

    if (v20)
    {
    }

    [(AVAssetReader *)v4->_reader addOutput:v4->_readerTrackOutput];
    [(AVAssetReader *)v4->_reader startReading];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

LABEL_23:
  return v5;
}

- (void)dealloc
{
  [(AVAssetReader *)self->_reader cancelReading];
  v3.receiver = self;
  v3.super_class = VideoPlaybackStream;
  [(VideoPlaybackStream *)&v3 dealloc];
}

- (LocalizerInputEvent)readNextEvent
{
  v4 = v2;
  readNextSampleBuffer = [(VideoPlaybackStream *)self readNextSampleBuffer];
  if (readNextSampleBuffer)
  {
    v7 = readNextSampleBuffer;
    [(VideoPlaybackStream *)self getTimeStampFromSampleBuffer:readNextSampleBuffer];
    sub_10032C9C0(v7);
    source = self->_source;
    operator new();
  }

  v8 = qword_100471CC0;
  *v4 = qword_100471CB8;
  v4[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  result.var0.var1 = v6;
  result.var0.var0 = readNextSampleBuffer;
  return result;
}

- (opaqueCMSampleBuffer)readNextSampleBuffer
{
  reader = self->_reader;
  if (!reader || [(AVAssetReader *)reader status]!= 1)
  {
    return 0;
  }

  readerTrackOutput = self->_readerTrackOutput;

  return [(AVAssetReaderTrackOutput *)readerTrackOutput copyNextSampleBuffer];
}

- (duration<long)getTimeStampFromSampleBuffer:(opaqueCMSampleBuffer *)buffer
{
  sub_10032C978(buffer);
  sub_10032C984(v6);
  return (self->_datarunStart.__rep_ + (v4 * 1000000000.0));
}

@end