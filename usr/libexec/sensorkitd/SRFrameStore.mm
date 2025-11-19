@interface SRFrameStore
+ (void)initialize;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (void)dealloc;
@end

@implementation SRFrameStore

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_100071B50 = os_log_create("com.apple.SensorKit", "FrameStore");
  }
}

- (void)dealloc
{
  if (self)
  {
    header = self->_header;
    if (header && (start = header->_start) != 0)
    {
      v5 = *(start + 4);
    }

    else
    {
      frames = self->_frames;
      if (frames)
      {
        v5 = frames->_currentPosition - frames->_start + 56;
      }

      else
      {
        v5 = 56;
      }
    }

    v7 = qword_100071B50;
    if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_INFO))
    {
      Property = objc_getProperty(self, v8, 56, 1);
LABEL_9:
      *buf = 138543362;
      v17 = sub_100041968(Property);
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Tearing down frame store for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v7 = qword_100071B50;
    v5 = 0;
    if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_INFO))
    {
      Property = 0;
      goto LABEL_9;
    }
  }

  self->_header = 0;
  self->_frames = 0;
  if (self->_permission == 1)
  {
    v11 = qword_100071B50;
    if (os_log_type_enabled(qword_100071B50, OS_LOG_TYPE_INFO))
    {
      v13 = objc_getProperty(self, v12, 56, 1);
      v14 = sub_100041968(v13);
      *buf = 138543618;
      v17 = v14;
      v18 = 2050;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Finalizing %{public}@ to %{public}llu bytes", buf, 0x16u);
    }

    sub_1000424B4(self, v5);
  }

  objc_setProperty_atomic(self, v10, 0, 56);

  self->_segmentName = 0;
  v15.receiver = self;
  v15.super_class = SRFrameStore;
  [(SRFrameStore *)&v15 dealloc];
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  frames = self->_frames;
  if (frames)
  {
    v10 = 0;
    var0 = (frames->_start + a3->var0);
    while (var0 < frames->_currentPosition && v10 < a5)
    {
      if (sub_1000428C8(self, var0))
      {
        a4[v10++] = var0;
      }

      var0 = (var0 + var0[4] + 20);
      frames = self->_frames;
      if (!frames)
      {
        goto LABEL_12;
      }
    }

    frames = frames->_start;
  }

  else
  {
    v10 = 0;
    var0 = a3->var0;
  }

LABEL_12:
  a3->var0 = var0 - frames;
  a3->var1 = a4;
  a3->var2 = self;
  return v10;
}

@end