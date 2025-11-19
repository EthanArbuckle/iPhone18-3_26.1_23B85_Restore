@interface ChainedInputStream
- (ChainedInputStream)init;
- (id).cxx_construct;
- (id)streamError;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (unint64_t)streamStatus;
- (void)addStream:(pair<NSInputStream *);
- (void)close;
@end

@implementation ChainedInputStream

- (ChainedInputStream)init
{
  v3.receiver = self;
  v3.super_class = ChainedInputStream;
  result = [(ChainedInputStream *)&v3 init];
  if (result)
  {
    result->fCurrentStream = 0;
    result->fDone = 0;
  }

  return result;
}

- (void)addStream:(pair<NSInputStream *)
{
  first = a3.first;
  p_fStreams = &self->fStreams;
  var0 = self->fStreams.var0;
  if (var0 >= self->fStreams.var1)
  {
    v7 = sub_100333A14(&self->fStreams, &a3.first->super.super.isa);
  }

  else
  {
    *var0 = a3.first->super.super.isa;
    v7 = (var0 + 1);
  }

  p_fStreams->var0 = v7;
  self->fLength += first[1].super.super.isa;
}

- (void)close
{
  begin = self->fStreams.__begin_;
  for (i = self->fStreams.var0; begin != i; ++begin)
  {
    v4 = *begin;
    [(__end_ *)v4 close];
  }
}

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  fCurrentStream = self->fCurrentStream;
  p_fStreams = &self->fStreams;
  begin = self->fStreams.__begin_;
  if (fCurrentStream < self->fStreams.var0 - begin && a4 != 0)
  {
    v11 = 0;
    while (1)
    {
      v12 = begin[fCurrentStream];
      if (![(__end_ *)v12 streamStatus])
      {
        [(__end_ *)v12 open];
      }

      v13 = [(__end_ *)v12 read:&a3[v11] maxLength:a4 - v11];
      if (v13 < 1)
      {
        if (v13)
        {
          NSLog(@"Error reading stream %zu", self->fCurrentStream);

          return -1;
        }

        [(__end_ *)v12 close];
        ++self->fCurrentStream;

        fCurrentStream = self->fCurrentStream;
        begin = p_fStreams->__begin_;
        if (fCurrentStream >= p_fStreams->var0 - p_fStreams->__begin_)
        {
LABEL_14:
          if (v11)
          {
            return v11;
          }

          break;
        }
      }

      else
      {
        v11 += v13;

        fCurrentStream = self->fCurrentStream;
        begin = p_fStreams->__begin_;
        if (fCurrentStream >= p_fStreams->var0 - p_fStreams->__begin_)
        {
          goto LABEL_14;
        }
      }

      if (v11 >= a4)
      {
        goto LABEL_14;
      }
    }
  }

  v11 = 0;
  self->fDone = 1;
  return v11;
}

- (id)streamError
{
  fCurrentStream = self->fCurrentStream;
  begin = self->fStreams.__begin_;
  var0 = self->fStreams.var0;
  v5 = var0 - begin;
  v6 = (var0 - 1);
  v7 = &begin[fCurrentStream];
  if (fCurrentStream >= v5 >> 3)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  v9 = [*v8 streamError];

  return v9;
}

- (unint64_t)streamStatus
{
  fCurrentStream = self->fCurrentStream;
  begin = self->fStreams.__begin_;
  var0 = self->fStreams.var0;
  v5 = var0 - begin;
  v6 = (var0 - 1);
  v7 = &begin[fCurrentStream];
  if (fCurrentStream >= v5 >> 3)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  return [*v8 streamStatus];
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 1) = 0;
  return self;
}

@end