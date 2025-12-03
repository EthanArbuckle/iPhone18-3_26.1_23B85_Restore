@interface NFRemoteAdminReaderState
- (NFRemoteAdminReaderState)initWithCoder:(id)coder;
- (NFRemoteAdminReaderState)initWithDictionary:(id)dictionary sourceURL:(id)l originator:(id)originator;
- (id)stateUpdateOnSessionEndedCallback;
- (void)encodeWithCoder:(id)coder;
- (void)setStateUpdateOnSessionEndedCallback:(id)callback;
@end

@implementation NFRemoteAdminReaderState

- (NFRemoteAdminReaderState)initWithDictionary:(id)dictionary sourceURL:(id)l originator:(id)originator
{
  v6.receiver = self;
  v6.super_class = NFRemoteAdminReaderState;
  return [(NFRemoteAdminRedirectState *)&v6 initWithDictionary:dictionary sourceURL:l originator:originator initialStep:0];
}

- (id)stateUpdateOnSessionEndedCallback
{
  v2 = objc_retainBlock(self->_stateUpdateOnSessionEndedCallback);

  return v2;
}

- (void)setStateUpdateOnSessionEndedCallback:(id)callback
{
  v4 = [callback copy];
  stateUpdateOnSessionEndedCallback = self->_stateUpdateOnSessionEndedCallback;
  self->_stateUpdateOnSessionEndedCallback = v4;

  _objc_release_x1();
}

- (NFRemoteAdminReaderState)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = NFRemoteAdminReaderState;
  return [(NFRemoteAdminRedirectState *)&v4 initWithCoder:coder];
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = NFRemoteAdminReaderState;
  [(NFRemoteAdminRedirectState *)&v3 encodeWithCoder:coder];
}

@end