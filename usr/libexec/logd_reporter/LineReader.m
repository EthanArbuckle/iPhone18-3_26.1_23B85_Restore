@interface LineReader
- (BOOL)_readNextChunk;
- (LineReader)initWithFile:(id)a3 andReadingWindowSize:(unint64_t)a4;
- (id)nextLine;
- (void)dealloc;
@end

@implementation LineReader

- (id)nextLine
{
  while (![(NSMutableArray *)self->_lines count])
  {
    if (![(LineReader *)self _readNextChunk])
    {
      v3 = 0;
      goto LABEL_5;
    }
  }

  v3 = [(NSMutableArray *)self->_lines objectAtIndexedSubscript:0];
  [(NSMutableArray *)self->_lines removeObjectAtIndex:0];
LABEL_5:

  return v3;
}

- (BOOL)_readNextChunk
{
  handle = self->_handle;
  cursor = self->_cursor;
  v40 = 0;
  v5 = [(NSFileHandle *)handle seekToOffset:cursor error:&v40];
  v6 = v40;
  if (v5)
  {
    v7 = self->_handle;
    window = self->_window;
    v39 = 0;
    v9 = [(NSFileHandle *)v7 readDataUpToLength:window error:&v39];
    v10 = v39;

    if (v9)
    {
      if (![v9 length])
      {
        v25 = 0;
        goto LABEL_17;
      }

      self->_cursor += [v9 length];
      v11 = [[NSString alloc] initWithData:v9 encoding:4];
      v12 = v11;
      if (v11 && [v11 length])
      {
        v13 = [v12 componentsSeparatedByString:@"\n"];
        v14 = [v13 mutableCopy];
        lines = self->_lines;
        self->_lines = v14;

        if (self->_leftovers)
        {
          v16 = [(NSMutableArray *)self->_lines objectAtIndexedSubscript:0];

          if (v16)
          {
            leftovers = self->_leftovers;
            v18 = [(NSMutableArray *)self->_lines objectAtIndexedSubscript:0];
            v19 = [(NSString *)leftovers stringByAppendingString:v18];
            [(NSMutableArray *)self->_lines setObject:v19 atIndexedSubscript:0];
          }

          else
          {
            v18 = [NSString stringWithString:self->_leftovers];
            [(NSMutableArray *)self->_lines setObject:v18 atIndexedSubscript:0];
          }
        }

        v33 = self->_cursor;
        end = self->_end;
        v35 = [(NSMutableArray *)self->_lines lastObject];
        v36 = v35;
        if (v33 >= end)
        {
          v38 = [v35 length];

          if (v38)
          {
LABEL_24:
            v25 = 1;
            goto LABEL_15;
          }
        }

        else
        {
          v37 = self->_leftovers;
          self->_leftovers = v35;
        }

        [(NSMutableArray *)self->_lines removeLastObject];
        goto LABEL_24;
      }
    }

    else
    {
      v12 = sub_100001254();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v26 = [(NSString *)self->_path description];
        v27 = [v26 UTF8String];
        v29 = self->_window;
        v28 = self->_cursor;
        v30 = [v10 description];
        v31 = [v30 UTF8String];
        *buf = 136446978;
        v42 = v27;
        v43 = 2048;
        v44 = v28;
        v45 = 2048;
        v46 = v29;
        v47 = 2082;
        v48 = v31;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Error while reading data chunk, file: %{public}s, offset: %llu, window: %lu, error: %{public}s", buf, 0x2Au);
      }
    }

    v25 = 0;
LABEL_15:

    goto LABEL_17;
  }

  v9 = sub_100001254();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [(NSString *)self->_path description];
    v21 = [v20 UTF8String];
    v22 = self->_cursor;
    v23 = [v6 description];
    v24 = [v23 UTF8String];
    *buf = 136446722;
    v42 = v21;
    v43 = 2048;
    v44 = v22;
    v45 = 2082;
    v46 = v24;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Error seeking while reading file, file: %{public}s, offset: %llu, error: %{public}s", buf, 0x20u);
  }

  v25 = 0;
  v10 = v6;
LABEL_17:

  return v25;
}

- (void)dealloc
{
  [(NSFileHandle *)self->_handle closeFile];
  v3.receiver = self;
  v3.super_class = LineReader;
  [(LineReader *)&v3 dealloc];
}

- (LineReader)initWithFile:(id)a3 andReadingWindowSize:(unint64_t)a4
{
  v7 = a3;
  v31.receiver = self;
  v31.super_class = LineReader;
  v8 = [(LineReader *)&v31 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_path, a3);
    v10 = [NSURL fileURLWithPath:v9->_path];
    v30 = 0;
    v11 = [NSFileHandle fileHandleForReadingFromURL:v10 error:&v30];
    v12 = v30;
    handle = v9->_handle;
    v9->_handle = v11;

    if (v9->_handle)
    {
      v9->_window = a4;
      v9->_cursor = 0;

      v14 = v9->_handle;
      v29 = 0;
      v15 = [(NSFileHandle *)v14 seekToEndReturningOffset:&v9->_end error:&v29];
      v12 = v29;
      if (v15)
      {
        v16 = objc_opt_new();
        lines = v9->_lines;
        v9->_lines = v16;

        leftovers = v9->_leftovers;
        v9->_leftovers = &stru_100008550;

        v19 = v9;
LABEL_12:

        goto LABEL_13;
      }

      v20 = sub_100001254();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(NSString *)v9->_path description];
        v26 = [v21 UTF8String];
        v23 = [v12 description];
        v27 = [v23 UTF8String];
        *buf = 136446466;
        v33 = v26;
        v34 = 2082;
        v35 = v27;
        v25 = "Error trying to determine end of file, file: %{public}s, error: %{public}s";
        goto LABEL_10;
      }
    }

    else
    {
      v20 = sub_100001254();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [(NSString *)v9->_path description];
        v22 = [v21 UTF8String];
        v23 = [v12 description];
        v24 = [v23 UTF8String];
        *buf = 136446466;
        v33 = v22;
        v34 = 2082;
        v35 = v24;
        v25 = "Error getting filehandle, file: %{public}s, error: %{public}s";
LABEL_10:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v25, buf, 0x16u);
      }
    }

    v19 = 0;
    goto LABEL_12;
  }

  v19 = 0;
LABEL_13:

  return v19;
}

@end