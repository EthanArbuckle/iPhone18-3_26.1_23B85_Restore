@interface SDSession
- (id)description;
@end

@implementation SDSession

- (id)description
{
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  if (self->_identifier)
  {
    v16 = v3;
    identifier = self->_identifier;
    NSAppendPrintF();
    v5 = v16;

    v4 = v5;
  }

  if (self->_peerIdentifier)
  {
    peerIdentifier = self->_peerIdentifier;
    NSAppendPrintF();
    v6 = v4;

    v4 = v6;
  }

  if (self->_clientSession)
  {
    clientSession = self->_clientSession;
    NSAppendPrintF();
    v7 = v4;

    v4 = v7;
  }

  if (self->_sessionCreated)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  v15 = v8;
  NSAppendPrintF();
  v9 = v4;

  if ([(NSMutableArray *)self->_sendDataQueue count])
  {
    [(NSMutableArray *)self->_sendDataQueue count];
    NSAppendPrintF();
    v10 = v9;

    v9 = v10;
  }

  return v9;
}

@end