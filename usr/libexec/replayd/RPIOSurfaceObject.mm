@interface RPIOSurfaceObject
- (RPIOSurfaceObject)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setIOSurface:(__IOSurface *)surface;
@end

@implementation RPIOSurfaceObject

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    ioSurface = self->_ioSurface;
    if (ioSurface)
    {
      XPCObject = IOSurfaceCreateXPCObject(ioSurface);
      [coderCopy encodeXPCObject:XPCObject forKey:@"ioSurface"];
    }
  }
}

- (RPIOSurfaceObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RPIOSurfaceObject;
  v5 = [(RPIOSurfaceObject *)&v11 init];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [coderCopy decodeXPCObjectForKey:@"ioSurface"];
      v7 = v6;
      if (v6)
      {
        v8 = IOSurfaceLookupFromXPCObject(v6);
        [(RPIOSurfaceObject *)v5 setIOSurface:v8];
        CFRelease(v8);
      }
    }

    v9 = v5;
  }

  return v5;
}

- (void)setIOSurface:(__IOSurface *)surface
{
  ioSurface = self->_ioSurface;
  if (ioSurface != surface)
  {
    if (ioSurface)
    {
      CFRelease(ioSurface);
    }

    self->_ioSurface = surface;
    if (surface)
    {

      CFRetain(surface);
    }
  }
}

- (void)dealloc
{
  ioSurface = self->_ioSurface;
  if (ioSurface)
  {
    CFRelease(ioSurface);
  }

  v4.receiver = self;
  v4.super_class = RPIOSurfaceObject;
  [(RPIOSurfaceObject *)&v4 dealloc];
}

@end