@interface DYEAGLCaptureAPISupport
- (DYEAGLCaptureAPISupport)initWithAPI:(unsigned int)a3;
- (id)_createContextInfo:(unint64_t)a3;
- (id)diagnosticsDylibPath;
- (id)graphicsAPIInfo;
- (id)interposeDylibPath;
@end

@implementation DYEAGLCaptureAPISupport

- (DYEAGLCaptureAPISupport)initWithAPI:(unsigned int)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DYEAGLCaptureAPISupport;
    self = [(DYEAGLCaptureAPISupport *)&v5 init];
    v3 = self;
  }

  return v3;
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

- (id)_createContextInfo:(unint64_t)a3
{
  v4 = [[EAGLContext alloc] initWithAPI:a3];
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

    if (a3 - 1 > 2)
    {
      v7 = 0;
    }

    else
    {
      v7 = dword_100008F78[a3 - 1];
    }

    v9 = [DYRendererInfo rendererInfoWithGLIContext:v5 dispatch:v6 api:v7];
    v10 = [[NSArray alloc] initWithObjects:{v9, 0}];
    v11 = [DYContextInfo alloc];
    v12 = [v4 sharegroup];
    v8 = [v11 initWithIdentifier:v4 sharegroupIdentifier:v12 renderers:v10 currentRendererIndex:0 api:v7];
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