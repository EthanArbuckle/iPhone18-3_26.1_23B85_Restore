@interface NearFieldSessionShim
- (id)getUnderlyingNFSession:(id *)session;
- (id)transceive:(id)transceive toOS:(int64_t)s outError:(id *)error;
- (id)transceiveSensitive:(id)sensitive outError:(id *)error;
- (unint64_t)validatePairing:(id *)pairing;
- (void)dealloc;
@end

@implementation NearFieldSessionShim

- (void)dealloc
{
  invalidated = self->_invalidated;
  (*(self->_onDealloc + 2))();
  v4.receiver = self;
  v4.super_class = NearFieldSessionShim;
  [(NearFieldSessionShim *)&v4 dealloc];
}

- (id)transceive:(id)transceive toOS:(int64_t)s outError:(id *)error
{
  transceiveCopy = transceive;
  if (self->_invalidated)
  {
    if (error)
    {
      v9 = sub_1000554DC();
      *error = SESCreateAndLogError();
    }

    v10 = 0;
  }

  else
  {
    session = self->_session;
    seid = self->_seid;
    v18 = 0;
    v10 = [(NFSecureElementManagerSession *)session transceive:transceiveCopy forSEID:seid toOS:s error:&v18];
    v13 = v18;
    v14 = v13;
    if (v10)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 0;
    }

    if (!v15)
    {
      if (error)
      {
        v16 = sub_1000554DC();
        *error = SESCreateAndLogError();
      }

      self->_invalidated = 1;
    }
  }

  return v10;
}

- (unint64_t)validatePairing:(id *)pairing
{
  if (self->_invalidated)
  {
    v4 = 4279897;
    if (pairing)
    {
      v5 = sub_1000554DC();
      *pairing = SESCreateAndLogError();
    }
  }

  else
  {
    v6 = [(NFSecureElementManagerSession *)self->_session validateSEPairings:0];
    if (v6)
    {
      if (v6 == 27)
      {
        return 0;
      }

      else
      {
        v4 = 4279897;
        if (pairing)
        {
          v7 = sub_1000554DC();
          *pairing = SESCreateAndLogError();
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return v4;
}

- (id)getUnderlyingNFSession:(id *)session
{
  if (self->_invalidated)
  {
    if (session)
    {
      v4 = sub_1000554DC();
      *session = SESCreateAndLogError();
    }

    v5 = 0;
  }

  else
  {
    v5 = self->_session;
  }

  return v5;
}

- (id)transceiveSensitive:(id)sensitive outError:(id *)error
{
  sensitiveCopy = sensitive;
  if (self->_invalidated)
  {
    if (error)
    {
      v7 = sub_1000554DC();
      *error = SESCreateAndLogError();

      error = 0;
    }
  }

  else
  {
    error = [(NFSecureElementManagerSession *)self->_session transceive:sensitiveCopy forSEID:self->_seid toOS:0 secureZeroOut:1 error:error];
  }

  return error;
}

@end