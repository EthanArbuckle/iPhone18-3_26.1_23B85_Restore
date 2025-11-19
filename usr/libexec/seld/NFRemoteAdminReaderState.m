@interface NFRemoteAdminReaderState
- (NFRemoteAdminReaderState)initWithCoder:(id)a3;
- (NFRemoteAdminReaderState)initWithDictionary:(id)a3 sourceURL:(id)a4 originator:(id)a5;
- (id)stateUpdateOnSessionEndedCallback;
- (void)encodeWithCoder:(id)a3;
- (void)setStateUpdateOnSessionEndedCallback:(id)a3;
@end

@implementation NFRemoteAdminReaderState

- (NFRemoteAdminReaderState)initWithDictionary:(id)a3 sourceURL:(id)a4 originator:(id)a5
{
  v6.receiver = self;
  v6.super_class = NFRemoteAdminReaderState;
  return [(NFRemoteAdminRedirectState *)&v6 initWithDictionary:a3 sourceURL:a4 originator:a5 initialStep:0];
}

- (id)stateUpdateOnSessionEndedCallback
{
  v2 = objc_retainBlock(self->_stateUpdateOnSessionEndedCallback);

  return v2;
}

- (void)setStateUpdateOnSessionEndedCallback:(id)a3
{
  v4 = [a3 copy];
  stateUpdateOnSessionEndedCallback = self->_stateUpdateOnSessionEndedCallback;
  self->_stateUpdateOnSessionEndedCallback = v4;

  _objc_release_x1();
}

- (NFRemoteAdminReaderState)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = NFRemoteAdminReaderState;
  return [(NFRemoteAdminRedirectState *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = NFRemoteAdminReaderState;
  [(NFRemoteAdminRedirectState *)&v3 encodeWithCoder:a3];
}

@end