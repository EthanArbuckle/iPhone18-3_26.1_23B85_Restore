@interface DIGeocoder
- (CLGeocoder)geocoder;
- (void)geocodeAddressString:(id)string completionHandler:(id)handler;
@end

@implementation DIGeocoder

- (void)geocodeAddressString:(id)string completionHandler:(id)handler
{
  handlerCopy = handler;
  stringCopy = string;
  geocoder = [(DIGeocoder *)self geocoder];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100002B70;
  v10[3] = &unk_1007F8238;
  v11 = handlerCopy;
  v9 = handlerCopy;
  [geocoder geocodeAddressString:stringCopy completionHandler:v10];
}

- (CLGeocoder)geocoder
{
  geocoder = self->_geocoder;
  if (!geocoder)
  {
    v4 = objc_alloc_init(CLGeocoder);
    v5 = self->_geocoder;
    self->_geocoder = v4;

    geocoder = self->_geocoder;
  }

  return geocoder;
}

@end