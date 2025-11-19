@interface DYMTLCaptureAPISupport
- (DYMTLCaptureAPISupport)initWithAPI:(unsigned int)a3;
- (id)diagnosticsDylibPath;
- (id)graphicsAPIInfo;
- (id)interposeDylibPath;
@end

@implementation DYMTLCaptureAPISupport

- (DYMTLCaptureAPISupport)initWithAPI:(unsigned int)a3
{
  if (a3 == 1)
  {
    v5.receiver = self;
    v5.super_class = DYMTLCaptureAPISupport;
    self = [(DYMTLCaptureAPISupport *)&v5 init];
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)interposeDylibPath
{
  v2 = DYGetMTLInterposeDylibPath();

  return [NSString stringWithUTF8String:v2];
}

- (id)diagnosticsDylibPath
{
  v2 = DYGetMTLDiagnosticsDylibPath();

  return [NSString stringWithUTF8String:v2];
}

- (id)graphicsAPIInfo
{
  v2 = MTLCreateSystemDefaultDevice();
  if (v2)
  {
    v3 = [[DYMTLDeviceProfile alloc] initWithDevice:v2];
    v6 = v3;
    v4 = [NSArray arrayWithObjects:&v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end