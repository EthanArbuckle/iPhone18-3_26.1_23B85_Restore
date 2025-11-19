@interface NearFieldSessionShim
- (id)getUnderlyingNFSession:(id *)a3;
- (id)transceive:(id)a3 toOS:(int64_t)a4 outError:(id *)a5;
- (id)transceiveSensitive:(id)a3 outError:(id *)a4;
- (unint64_t)validatePairing:(id *)a3;
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

- (id)transceive:(id)a3 toOS:(int64_t)a4 outError:(id *)a5
{
  v8 = a3;
  if (self->_invalidated)
  {
    if (a5)
    {
      v9 = sub_1000554DC();
      *a5 = SESCreateAndLogError();
    }

    v10 = 0;
  }

  else
  {
    session = self->_session;
    seid = self->_seid;
    v18 = 0;
    v10 = [(NFSecureElementManagerSession *)session transceive:v8 forSEID:seid toOS:a4 error:&v18];
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
      if (a5)
      {
        v16 = sub_1000554DC();
        *a5 = SESCreateAndLogError();
      }

      self->_invalidated = 1;
    }
  }

  return v10;
}

- (unint64_t)validatePairing:(id *)a3
{
  if (self->_invalidated)
  {
    v4 = 4279897;
    if (a3)
    {
      v5 = sub_1000554DC();
      *a3 = SESCreateAndLogError();
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
        if (a3)
        {
          v7 = sub_1000554DC();
          *a3 = SESCreateAndLogError();
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

- (id)getUnderlyingNFSession:(id *)a3
{
  if (self->_invalidated)
  {
    if (a3)
    {
      v4 = sub_1000554DC();
      *a3 = SESCreateAndLogError();
    }

    v5 = 0;
  }

  else
  {
    v5 = self->_session;
  }

  return v5;
}

- (id)transceiveSensitive:(id)a3 outError:(id *)a4
{
  v6 = a3;
  if (self->_invalidated)
  {
    if (a4)
    {
      v7 = sub_1000554DC();
      *a4 = SESCreateAndLogError();

      a4 = 0;
    }
  }

  else
  {
    a4 = [(NFSecureElementManagerSession *)self->_session transceive:v6 forSEID:self->_seid toOS:0 secureZeroOut:1 error:a4];
  }

  return a4;
}

@end