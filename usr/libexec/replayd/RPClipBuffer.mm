@interface RPClipBuffer
- (BOOL)getSamplesForDuration:(double)a3 latestSeconds:(double)a4 withOutputArray:(id)a5;
- (RPClipBuffer)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForVideo:(BOOL)a3;
- (opaqueCMFormatDescription)getFormatDescription;
- (void)flushBuffer;
@end

@implementation RPClipBuffer

- (RPClipBuffer)init
{
  v6.receiver = self;
  v6.super_class = RPClipBuffer;
  v2 = [(RPClipBuffer *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableArray alloc] initWithCapacity:0];
    bufferArray = v2->_bufferArray;
    v2->_bufferArray = v3;

    v2->_oldestSeconds = 0.0;
    v2->_newestSeconds = 0.0;
    v2->_firstSampleReceived = 0;
  }

  return v2;
}

- (id)initForVideo:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = RPClipBuffer;
  v4 = [(RPClipBuffer *)&v8 init];
  if (v4)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:0];
    bufferArray = v4->_bufferArray;
    v4->_bufferArray = v5;

    v4->_isVideo = a3;
  }

  return v4;
}

- (opaqueCMFormatDescription)getFormatDescription
{
  v2 = [(NSMutableArray *)self->_bufferArray objectAtIndex:0];
  v3 = v2;
  if (v2)
  {
    FormatDescription = CMSampleBufferGetFormatDescription([v2 sampleBuffer]);
  }

  else
  {
    FormatDescription = 0;
  }

  return FormatDescription;
}

- (BOOL)getSamplesForDuration:(double)a3 latestSeconds:(double)a4 withOutputArray:(id)a5
{
  v8 = a5;
  v9 = a4 - a3;
  if ([(NSMutableArray *)self->_bufferArray count])
  {
    v10 = [(NSMutableArray *)self->_bufferArray objectAtIndex:0];
    v11 = [(NSMutableArray *)self->_bufferArray objectAtIndex:[(NSMutableArray *)self->_bufferArray count]- 1];
    v12 = v11;
    if (v10)
    {
      v13 = !v11 || dword_1000B6840 > 1;
      if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        [v12 seconds];
        v15 = v14;
        [v10 seconds];
        v17 = v16;
        v18 = [(NSMutableArray *)self->_bufferArray count];
        *buf = 136447746;
        *&buf[4] = "[RPClipBuffer getSamplesForDuration:latestSeconds:withOutputArray:]";
        *&buf[12] = 1024;
        *&buf[14] = 141;
        *&buf[18] = 2048;
        *&buf[20] = a4;
        v42 = 2048;
        v43 = v9;
        v44 = 2048;
        v45 = v15;
        v46 = 2048;
        v47 = v17;
        v48 = 2048;
        v49 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d current %f start %f newest %f oldest %f count %lu", buf, 0x44u);
      }
    }
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v19 = self->_bufferArray;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = 0;
    v23 = 0;
    v24 = *v37;
    do
    {
      for (i = 0; i != v21; i = i + 1)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v19);
        }

        v26 = *(*(&v36 + 1) + 8 * i);
        [v26 seconds];
        if (v27 <= v9)
        {
          if ([v26 isKeyFrame])
          {
            v28 = v26;

            if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              [v28 seconds];
              *buf = 136446722;
              *&buf[4] = "[RPClipBuffer getSamplesForDuration:latestSeconds:withOutputArray:]";
              *&buf[12] = 1024;
              *&buf[14] = 160;
              *&buf[18] = 2048;
              *&buf[20] = v29;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d latest idle sample:%f", buf, 0x1Cu);
            }

            v22 = v28;
          }
        }

        else if ((v23 & 1) != 0 || [v26 isKeyFrame])
        {
          [v8 addObject:{objc_msgSend(v26, "sampleBuffer")}];
          v23 = 1;
        }

        else
        {
          v23 = 0;
        }
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v21);

    v30 = 0;
    if (self->_isVideo && v22)
    {
      memset(&v35, 0, sizeof(v35));
      CMSampleBufferGetPresentationTimeStamp(&v35, [v22 sampleBuffer]);
      memset(&v34, 0, sizeof(v34));
      CMTimeMakeWithSeconds(&v34, v9, v35.timescale);
      v31 = [v22 sampleBuffer];
      *buf = v34;
      v32 = sub_100057350(v31, buf);
      if (dword_1000B6840 <= 1 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446978;
        *&buf[4] = "[RPClipBuffer getSamplesForDuration:latestSeconds:withOutputArray:]";
        *&buf[12] = 1024;
        *&buf[14] = 172;
        *&buf[18] = 2048;
        *&buf[20] = v32;
        v42 = 2048;
        v43 = v9;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, " [INFO] %{public}s:%d appending first sample %p at timestamp:%f", buf, 0x26u);
      }

      [v8 insertObject:v32 atIndex:0];

      v22 = 0;
      v30 = 1;
    }
  }

  else
  {

    v22 = 0;
    v30 = 0;
  }

  return v30;
}

- (void)flushBuffer
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_bufferArray;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v9 + 1) + 8 * v7) sampleBuffer];
        if (v8)
        {
          CFRelease(v8);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(NSMutableArray *)self->_bufferArray removeAllObjects];
  self->_oldestSeconds = 0.0;
  self->_newestSeconds = 0.0;
  self->_firstSampleReceived = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(RPClipBuffer);
  v5 = [[NSMutableArray alloc] initWithArray:self->_bufferArray];
  [(RPClipBuffer *)v4 setBufferArray:v5];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(RPClipBuffer *)v4 bufferArray];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        CFRetain([*(*(&v14 + 1) + 8 * v10) sampleBuffer]);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  *&v11 = self->_oldestSeconds;
  [(RPClipBuffer *)v4 setOldestSeconds:v11];
  *&v12 = self->_newestSeconds;
  [(RPClipBuffer *)v4 setNewestSeconds:v12];
  [(RPClipBuffer *)v4 setFirstSampleReceived:self->_firstSampleReceived];
  [(RPClipBuffer *)v4 setIsVideo:self->_isVideo];
  return v4;
}

@end