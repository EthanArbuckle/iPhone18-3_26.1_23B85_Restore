@interface NSMultiPartInputStream
+ (id)pathMimeType:(const void *)type;
- (NSMultiPartInputStream)init;
- (id).cxx_construct;
- (id)createHeaderName:(id)name filename:(id)filename mimeType:(id)type;
- (id)streamError;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (unint64_t)streamStatus;
- (void)addMultiPart:(const void *)part withHeader:(const void *)header;
- (void)addPart:(id)part withData:(const void *)data andFilename:(id)filename;
- (void)addPart:(id)part withPath:(const void *)path;
- (void)addPart:(id)part withPath:(const void *)path andFilename:(id)filename;
- (void)close;
- (void)open;
@end

@implementation NSMultiPartInputStream

+ (id)pathMimeType:(const void *)type
{
  v3 = [NSString ps_stringWithSTL:type];
  pathExtension = [v3 pathExtension];
  PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(kUTTagClassFilenameExtension, pathExtension, 0);
  v6 = PreferredIdentifierForTag;
  if (PreferredIdentifierForTag)
  {
    v7 = UTTypeCopyPreferredTagWithClass(PreferredIdentifierForTag, kUTTagClassMIMEType);
    if (v7)
    {
      goto LABEL_6;
    }

    NSLog(@"Couldn't determine mime-type of %@.  Using default.", v3);
  }

  else
  {
    NSLog(@"Couldn't determine UTI of %@.  Using default.", v3);
  }

  v7 = @"application/octet-stream";
LABEL_6:

  return v7;
}

- (NSMultiPartInputStream)init
{
  v13.receiver = self;
  v13.super_class = NSMultiPartInputStream;
  v2 = [(NSMultiPartInputStream *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->fCurrentPart = 0;
    v4 = +[NSProcessInfo processInfo];
    globallyUniqueString = [v4 globallyUniqueString];
    fMultiPartBoundary = v3->fMultiPartBoundary;
    v3->fMultiPartBoundary = globallyUniqueString;

    v3->fNumBytesRead = 0;
    v3->fLength = 0;
    v7 = [NSString stringWithFormat:@"\r\n--%@--\r\n", v3->fMultiPartBoundary];
    [NSInputStream ps_inputStreamWithString:v7];
    v8 = v11;
    v11 = 0;
    first = v3->fEpilogueBoundary.first;
    v3->fEpilogueBoundary.first = v8;

    v3->fEpilogueBoundary.second = v12;
  }

  return v3;
}

- (void)addPart:(id)part withPath:(const void *)path
{
  partCopy = part;
  sub_10001B178(path, __p);
  v7 = [NSString ps_stringWithSTL:__p];
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  [(NSMultiPartInputStream *)self addPart:partCopy withPath:path andFilename:v7];
}

- (void)addPart:(id)part withPath:(const void *)path andFilename:(id)filename
{
  partCopy = part;
  filenameCopy = filename;
  [NSMultiPartInputStream pathMimeType:path];
  [(NSMultiPartInputStream *)self createHeaderName:partCopy filename:filenameCopy mimeType:objc_claimAutoreleasedReturnValue()];
  objc_claimAutoreleasedReturnValue();
  [NSInputStream ps_inputStreamWithFileAtPath:path];
  memset(__p, 0, 24);
  __p[3] = __p;
  v11 = 0;
  operator new();
}

- (id)createHeaderName:(id)name filename:(id)filename mimeType:(id)type
{
  type = [NSString stringWithFormat:@"Content-Disposition: form-data name=%@; filename=%@\r\nContent-Type: %@\r\n\r\n", name, filename, type];;

  return type;
}

- (void)addPart:(id)part withData:(const void *)data andFilename:(id)filename
{
  v7 = [(NSMultiPartInputStream *)self createHeaderName:part filename:filename mimeType:@"application/octet-stream"];
  [NSInputStream ps_inputStreamWithString:v7];
  [(NSMultiPartInputStream *)self addMultiPart:data withHeader:v8];
}

- (void)addMultiPart:(const void *)part withHeader:(const void *)header
{
  v7 = [NSString stringWithFormat:@"--%@\r\n", self->fMultiPartBoundary];
  [NSInputStream ps_inputStreamWithString:v7];
  var0 = self->fParts.var0;
  if (var0 >= self->fParts.var1)
  {
    v9 = sub_100333A14(&self->fParts, v14);
    self->fParts.var0 = v9;
    if (v9 < self->fParts.var1)
    {
LABEL_3:
      *v9 = *header;
      v10 = v9 + 1;
      self->fParts.var0 = v10;
      v11 = *part;
      v12 = *(part + 1);
      if (*part != v12)
      {
        goto LABEL_4;
      }

LABEL_11:
      v13 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    *var0 = v14[0];
    v9 = (var0 + 1);
    self->fParts.var0 = v9;
    if (v9 < self->fParts.var1)
    {
      goto LABEL_3;
    }
  }

  v10 = sub_100333A14(&self->fParts, header);
  self->fParts.var0 = v10;
  v11 = *part;
  v12 = *(part + 1);
  if (*part == v12)
  {
    goto LABEL_11;
  }

LABEL_4:
  v13 = 0;
  do
  {
    if (v10 < self->fParts.var1)
    {
      *v10++ = *v11;
    }

    else
    {
      v10 = sub_100333A14(&self->fParts, v11);
    }

    self->fParts.var0 = v10;
    v13 += *(v11 + 8);
    v11 += 16;
  }

  while (v11 != v12);
LABEL_12:
  [(NSMultiPartInputStream *)self addLength:v14[1] + *(header + 1) + v13];
}

- (void)open
{
  p_fParts = &self->fParts;
  p_fEpilogueBoundary = &self->fEpilogueBoundary;
  var0 = self->fParts.var0;
  if (var0 >= self->fParts.var1)
  {
    v6 = sub_100333A14(&self->fParts, &p_fEpilogueBoundary->first);
  }

  else
  {
    *var0 = p_fEpilogueBoundary->first;
    v6 = (var0 + 1);
  }

  p_fParts->var0 = v6;
  [(NSMultiPartInputStream *)self addLength:p_fEpilogueBoundary->second];
  first = p_fEpilogueBoundary->first;
  p_fEpilogueBoundary->first = 0;

  p_fEpilogueBoundary->second = 0;
  fCurrentPart = self->fCurrentPart;
  if (fCurrentPart >= p_fParts->var0 - p_fParts->__begin_)
  {
    sub_1000BFF58();
  }

  v9 = p_fParts->__begin_[fCurrentPart];

  [(__end_ *)v9 open];
}

- (void)close
{
  begin = self->fParts.__begin_;
  for (i = self->fParts.var0; begin != i; ++begin)
  {
    v4 = *begin;
    [(__end_ *)v4 close];
  }
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  p_fParts = &self->fParts;
  begin = self->fParts.__begin_;
  var0 = self->fParts.var0;
  v10 = [(NSMultiPartInputStream *)self length];
  p_fNumBytesRead = &self->fNumBytesRead;
  if (self->fNumBytesRead >= v10 || length == 0)
  {
    return 0;
  }

  v13 = v10;
  v14 = 0;
  v15 = var0 - begin;
  p_fCurrentPart = &self->fCurrentPart;
  do
  {
    v17 = *p_fCurrentPart;
    if (*p_fCurrentPart >= v15)
    {
      break;
    }

    if (v17 >= p_fParts->var0 - p_fParts->__begin_)
    {
      sub_1000BFF58();
    }

    v18 = p_fParts->__begin_[v17];
    if (![(__end_ *)v18 streamStatus])
    {
      [(__end_ *)v18 open];
    }

    v19 = [(__end_ *)v18 read:&read[v14] maxLength:length - v14];
    if (v19 < 0)
    {
      v14 = v19;
      NSLog(@"Failed to read part %zu", *p_fCurrentPart);

      return v14;
    }

    if (v19)
    {
      v14 += v19;
      v20 = p_fNumBytesRead;
    }

    else
    {
      [(__end_ *)v18 close];
      v20 = p_fCurrentPart;
      v19 = 1;
    }

    *v20 += v19;
  }

  while (*p_fNumBytesRead < v13 && v14 < length);
  return v14;
}

- (id)streamError
{
  fCurrentPart = self->fCurrentPart;
  begin = self->fParts.__begin_;
  var0 = self->fParts.var0;
  v5 = var0 - begin;
  v6 = (var0 - 1);
  v7 = &begin[fCurrentPart];
  if (fCurrentPart >= v5 >> 3)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  streamError = [*v8 streamError];

  return streamError;
}

- (unint64_t)streamStatus
{
  fCurrentPart = self->fCurrentPart;
  begin = self->fParts.__begin_;
  var0 = self->fParts.var0;
  v5 = var0 - begin;
  v6 = (var0 - 1);
  v7 = &begin[fCurrentPart];
  if (fCurrentPart >= v5 >> 3)
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
  *(self + 6) = 0;
  *(self + 7) = 0;
  return self;
}

@end