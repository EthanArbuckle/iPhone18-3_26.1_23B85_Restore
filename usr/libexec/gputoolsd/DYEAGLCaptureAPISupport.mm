@interface DYEAGLCaptureAPISupport
- (DYEAGLCaptureAPISupport)initWithAPI:(unsigned int)i;
- (id)_createContextInfo:(unint64_t)info;
- (id)diagnosticsDylibPath;
- (id)graphicsAPIInfo;
- (id)interposeDylibPath;
@end

@implementation DYEAGLCaptureAPISupport

- (DYEAGLCaptureAPISupport)initWithAPI:(unsigned int)i
{
  if (i)
  {
    selfCopy = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DYEAGLCaptureAPISupport;
    self = [(DYEAGLCaptureAPISupport *)&v5 init];
    selfCopy = self;
  }

  return selfCopy;
}

- (id)interposeDylibPath
{
  v2 = DYGetGLInterposeDylibPath();

  return [NSString stringWithUTF8String:v2];
}

- (id)diagnosticsDylibPath
{
  v2 = DYGetMTLDiagnosticsDylibPath();

  return [NSString stringWithUTF8String:v2];
}

- (id)_createContextInfo:(unint64_t)info
{
  v4 = [[EAGLContext alloc] initWithAPI:info];
  if (v4)
  {
    v5 = GLIContextFromEAGLContext();
    if (!v5)
    {
      __assert_rtn("[DYEAGLCaptureAPISupport _createContextInfo:]", ", 0, "gli_ctx"");
    }

    v6 = GLCFrontDispatch();
    if (!v6)
    {
      __assert_rtn("[DYEAGLCaptureAPISupport _createContextInfo:]", ", 0, "dispatch"");
    }

    if (info - 1 > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = dword_100008F78[info - 1];
    }

    v9 = [DYRendererInfo rendererInfoWithGLIContext:v5 dispatch:v6 api:v7];
    v10 = [[NSArray alloc] initWithObjects:{v9, 0}];
    v11 = [DYContextInfo alloc];
    sharegroup = [v4 sharegroup];
    v8 = [v11 initWithIdentifier:v4 sharegroupIdentifier:sharegroup renderers:v10 currentRendererIndex:0 api:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)graphicsAPIInfo
{
  v3 = objc_opt_new();
  v4 = [(DYEAGLCaptureAPISupport *)self _createContextInfo:1];
  if (v4)
  {
    [v3 addObject:v4];
  }

  v5 = [(DYEAGLCaptureAPISupport *)self _createContextInfo:2];

  if (v5)
  {
    [v3 addObject:v5];
  }

  v6 = [(DYEAGLCaptureAPISupport *)self _createContextInfo:3];

  if (v6)
  {
    [v3 addObject:v6];
  }

  return v3;
}

@end