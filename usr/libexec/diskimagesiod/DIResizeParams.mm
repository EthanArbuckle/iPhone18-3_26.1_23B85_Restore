@interface DIResizeParams
- (BOOL)resizeWithError:(id *)error;
- (DIResizeParams)initWithCoder:(id)coder;
- (DIResizeParams)initWithExistingParams:(id)params size:(unint64_t)size error:(id *)error;
- (DIResizeParams)initWithURL:(id)l size:(unint64_t)size error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIResizeParams

- (DIResizeParams)initWithURL:(id)l size:(unint64_t)size error:(id *)error
{
  v7.receiver = self;
  v7.super_class = DIResizeParams;
  result = [(DIBaseParams *)&v7 initWithURL:l error:error];
  if (result)
  {
    result->_size = size;
  }

  return result;
}

- (DIResizeParams)initWithExistingParams:(id)params size:(unint64_t)size error:(id *)error
{
  paramsCopy = params;
  inputURL = [paramsCopy inputURL];
  v18.receiver = self;
  v18.super_class = DIResizeParams;
  v10 = [(DIBaseParams *)&v18 initWithURL:inputURL error:error];

  if (!v10)
  {
    goto LABEL_3;
  }

  v10->_size = size;
  diskImageParamsXPC = [paramsCopy diskImageParamsXPC];
  [(DIBaseParams *)v10 setDiskImageParamsXPC:diskImageParamsXPC];

  shadowChain = [(DIBaseParams *)v10 shadowChain];
  shadowChain2 = [paramsCopy shadowChain];
  nodes = [shadowChain2 nodes];
  v15 = [shadowChain addShadowNodes:nodes error:error];

  if ((v15 & 1) == 0)
  {
    v16 = 0;
  }

  else
  {
LABEL_3:
    v16 = v10;
  }

  return v16;
}

- (DIResizeParams)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = DIResizeParams;
  v5 = [(DIBaseParams *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_size = [coderCopy decodeInt64ForKey:@"size"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = DIResizeParams;
  [(DIBaseParams *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:-[DIResizeParams size](self forKey:{"size"), @"size"}];
}

- (BOOL)resizeWithError:(id *)error
{
  if ([(DIResizeParams *)self openExistingImageWithError:?])
  {
    v5 = *__error();
    if (sub_1000E95F0())
    {
      v6 = sub_1000E957C();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      *buf = 68158210;
      *&buf[4] = 34;
      v37 = 2080;
      v38 = "[DIResizeParams resizeWithError:]";
      v39 = 2114;
      selfCopy2 = self;
      v7 = _os_log_send_and_compose_impl();

      if (v7)
      {
        fprintf(__stderrp, "%s\n", v7);
        free(v7);
      }
    }

    else
    {
      v9 = sub_1000E957C();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0x2204100302;
        v37 = 2080;
        v38 = "[DIResizeParams resizeWithError:]";
        v39 = 2114;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v5;
    v10 = objc_alloc_init(DIClient2Controller_XPCHandler);
    if (![(DIClient2Controller_XPCHandler *)v10 connectWithError:error]|| ![(DIBaseParams *)self prepareImageWithXpcHandler:v10 fileMode:1 error:error])
    {
      v8 = 0;
LABEL_29:

      return v8;
    }

    diskImageParamsXPC = [(DIBaseParams *)self diskImageParamsXPC];
    shadowChain = [(DIBaseParams *)self shadowChain];
    shouldValidate = [shadowChain shouldValidate];
    if (diskImageParamsXPC)
    {
      [diskImageParamsXPC createDiskImageWithCache:0 shadowValidation:shouldValidate];
      v14 = *buf;
    }

    else
    {
      v14 = 0;
    }

    *buf = 0;

    if ((*(*v14 + 40))(v14))
    {
      v15 = [(DIResizeParams *)self size];
      v16 = (*(*v14 + 24))(v14);
      v17 = (*(*v14 + 32))(v14);
      v18 = (v15 + v16 - 1) / v16 * v16;
      if ((*(*v14 + 24))(v14) * v17 == v18)
      {
        v19 = *__error();
        if (sub_1000E95F0())
        {
          v20 = sub_1000E957C();
          os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
          *buf = 68157954;
          *&buf[4] = 34;
          v37 = 2080;
          v38 = "[DIResizeParams resizeWithError:]";
          v21 = _os_log_send_and_compose_impl();

          if (v21)
          {
            fprintf(__stderrp, "%s\n", v21);
            free(v21);
          }
        }

        else
        {
          v25 = sub_1000E957C();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68157954;
            *&buf[4] = 34;
            v37 = 2080;
            v38 = "[DIResizeParams resizeWithError:]";
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%.*s: New disk image size is the same as previous", buf, 0x12u);
          }
        }

        *__error() = v19;
        v8 = 1;
        goto LABEL_28;
      }

      diskImageParamsXPC2 = [(DIBaseParams *)self diskImageParamsXPC];
      v24 = [diskImageParamsXPC2 setSizeWithDiskImage:v14 newSize:v18];

      if (!v24)
      {
        v27 = (*(*v14 + 32))(v14);
        [(DIResizeParams *)self setSize:(*(*v14 + 24))(v14) * v27];
        v28 = *__error();
        if (sub_1000E95F0())
        {
          v29 = sub_1000E957C();
          os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
          v30 = [(DIResizeParams *)self size];
          *buf = 68158210;
          *&buf[4] = 34;
          v37 = 2080;
          v38 = "[DIResizeParams resizeWithError:]";
          v39 = 2048;
          selfCopy2 = v30;
          v31 = _os_log_send_and_compose_impl();

          if (v31)
          {
            fprintf(__stderrp, "%s\n", v31);
            free(v31);
          }
        }

        else
        {
          v32 = sub_1000E957C();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33 = [(DIResizeParams *)self size];
            *buf = 68158210;
            *&buf[4] = 34;
            v37 = 2080;
            v38 = "[DIResizeParams resizeWithError:]";
            v39 = 2048;
            selfCopy2 = v33;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "%.*s: Disk image resized to %llu bytes", buf, 0x1Cu);
          }
        }

        *__error() = v28;
        v34 = (*(*v14 + 144))(v14);
        v35 = sub_10000FC18(v34);
        if (v35)
        {
          v8 = [DIError failWithPOSIXCode:v35 error:error];
        }

        else
        {
          v8 = 1;
        }

        if (v34)
        {
          (*(*v34 + 40))(v34);
        }

        goto LABEL_28;
      }

      v22 = [DIError failWithPOSIXCode:v24 verboseInfo:@"Failed to resize the image" error:error];
    }

    else
    {
      v22 = [DIError failWithPOSIXCode:45 verboseInfo:@"Image doesn't support resizing" error:error];
    }

    v8 = v22;
LABEL_28:
    (*(*v14 + 16))(v14);
    goto LABEL_29;
  }

  return 0;
}

@end