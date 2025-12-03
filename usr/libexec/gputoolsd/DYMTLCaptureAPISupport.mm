@interface DYMTLCaptureAPISupport
- (DYMTLCaptureAPISupport)initWithAPI:(unsigned int)i;
- (id)diagnosticsDylibPath;
- (id)graphicsAPIInfo;
- (id)interposeDylibPath;
@end

@implementation DYMTLCaptureAPISupport

- (DYMTLCaptureAPISupport)initWithAPI:(unsigned int)i
{
  if (i == 1)
  {
    v5.receiver = self;
    v5.super_class = DYMTLCaptureAPISupport;
    self = [(DYMTLCaptureAPISupport *)&v5 init];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
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