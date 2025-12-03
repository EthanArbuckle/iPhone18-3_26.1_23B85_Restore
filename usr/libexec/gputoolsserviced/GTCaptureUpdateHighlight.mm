@interface GTCaptureUpdateHighlight
- (GTCaptureUpdateHighlight)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureUpdateHighlight

- (GTCaptureUpdateHighlight)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = GTCaptureUpdateHighlight;
  v5 = [(GTCaptureRequest *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_streamRef = [coderCopy decodeInt64ForKey:@"streamRef"];
    v5->_enable = [coderCopy decodeBoolForKey:@"enable"];
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = GTCaptureUpdateHighlight;
  coderCopy = coder;
  [(GTCaptureRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt64:self->_streamRef forKey:{@"streamRef", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_enable forKey:@"enable"];
}

@end