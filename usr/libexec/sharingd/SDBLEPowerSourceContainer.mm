@interface SDBLEPowerSourceContainer
- (BOOL)isEqual:(id)a3;
- (SDBLEPowerSourceContainer)initWithPowerSource:(id)a3;
- (id)description;
- (int)publish;
- (void)_invalidate;
- (void)dealloc;
- (void)invalidate;
- (void)setInvalidationHandler:(id)a3;
- (void)trigger;
@end

@implementation SDBLEPowerSourceContainer

- (SDBLEPowerSourceContainer)initWithPowerSource:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = SDBLEPowerSourceContainer;
  v6 = [(SDBLEPowerSourceContainer *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v21 = 0;
    v20 = 0;
    v13 = v6;
    ASPrintF();
    v7->_ucat = LogCategoryCreateEx();
    if (v21)
    {
      v7->_ucat = LogCategoryCreateEx();
    }

    if (v20)
    {
      free(v20);
    }

    objc_storeStrong(&v7->_powerSource, a3);
    v8 = objc_opt_new();
    powerSourceIdleCoalescer = v7->_powerSourceIdleCoalescer;
    v7->_powerSourceIdleCoalescer = v8;

    [(CUCoalescer *)v7->_powerSourceIdleCoalescer setMinDelay:30.0, v13];
    objc_initWeak(&location, v7);
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100088E24;
    v17[3] = &unk_1008CDD98;
    objc_copyWeak(&v18, &location);
    [(CUCoalescer *)v7->_powerSourceIdleCoalescer setActionHandler:v17];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100088EB4;
    v15[3] = &unk_1008CDD98;
    objc_copyWeak(&v16, &location);
    [(CUCoalescer *)v7->_powerSourceIdleCoalescer setInvalidationHandler:v15];
    var0 = v7->_ucat->var0;
    if (var0 > 10)
    {
      goto LABEL_10;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_10;
      }

      ucat = v7->_ucat;
    }

    powerSource = v7->_powerSource;
    LogPrintF();
LABEL_10:
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (void)dealloc
{
  var0 = self->_ucat->var0;
  if (var0 <= 10)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      v6 = self->_ucat;
    }

    [(SDBLEPowerSourceContainer *)self powerSource];
    v8 = v7 = "[SDBLEPowerSourceContainer dealloc]";
    LogPrintF();
  }

LABEL_5:
  [(SDBLEPowerSourceContainer *)self _invalidate:v7];
  v5 = self->_ucat;
  if (v5 && (v5->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v9.receiver = self;
  v9.super_class = SDBLEPowerSourceContainer;
  [(SDBLEPowerSourceContainer *)&v9 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(SDBLEPowerSourceContainer *)self powerSource];
    v6 = [v4 powerSource];
    v7 = v5;
    v8 = v6;
    v9 = v8;
    if (v7 == v8)
    {
      v10 = 1;
    }

    else if ((v7 != 0) == (v8 == 0))
    {
      v10 = 0;
    }

    else
    {
      v10 = [v7 isEqual:v8];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v6 = objc_opt_class();
  NSAppendPrintF();
  v8 = 0;
  v7 = [(SDBLEPowerSourceContainer *)self powerSource:v6];
  NSAppendPrintF();
  v3 = v8;

  NSAppendPrintF();
  v4 = v3;

  return v3;
}

- (void)setInvalidationHandler:(id)a3
{
  if (self->_invalidationHandler != a3)
  {
    v5 = [a3 copy];
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = v5;
  }
}

- (void)trigger
{
  if (self->_invalidateCalled)
  {
    return;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 10)
  {
    if (var0 == -1)
    {
      ucat = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      v7 = self->_ucat;
    }

    v8 = [(SDBLEPowerSourceContainer *)self powerSource];
    LogPrintF();
  }

LABEL_6:
  powerSourceIdleCoalescer = self->_powerSourceIdleCoalescer;

  [(CUCoalescer *)powerSourceIdleCoalescer trigger];
}

- (int)publish
{
  var0 = self->_ucat->var0;
  if (!self->_invalidateCalled)
  {
    if (var0 <= 10)
    {
      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        v10 = self->_ucat;
      }

      [(SDBLEPowerSourceContainer *)self powerSource];
      v12 = v11 = "[SDBLEPowerSourceContainer publish]";
      LogPrintF();
    }

LABEL_11:
    [(SDBLEPowerSourceContainer *)self trigger:v11];
    v4 = [(SDBLEPowerSourceContainer *)self powerSource];
    v5 = [v4 publish];
    goto LABEL_12;
  }

  if (var0 <= 90)
  {
    if (var0 != -1)
    {
LABEL_4:
      v4 = [(SDBLEPowerSourceContainer *)self powerSource];
      LogPrintF();
      v5 = -6703;
LABEL_12:

      return v5;
    }

    v6 = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v9 = self->_ucat;
      goto LABEL_4;
    }
  }

  return -6703;
}

- (void)invalidate
{
  var0 = self->_ucat->var0;
  if (var0 <= 10)
  {
    if (var0 != -1)
    {
LABEL_3:
      v6 = [(SDBLEPowerSourceContainer *)self powerSource];
      LogPrintF();

      goto LABEL_5;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v5 = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:

  [(SDBLEPowerSourceContainer *)self _invalidate];
}

- (void)_invalidate
{
  if (self->_invalidateCalled)
  {
    return;
  }

  self->_invalidateCalled = 1;
  var0 = self->_ucat->var0;
  if (var0 <= 10)
  {
    if (var0 != -1)
    {
LABEL_4:
      [(SDBLEPowerSourceContainer *)self powerSource];
      v11 = v10 = "[SDBLEPowerSourceContainer _invalidate]";
      LogPrintF();

      goto LABEL_6;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v9 = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  [(CUCoalescer *)self->_powerSourceIdleCoalescer setActionHandler:0, v10, v11];
  [(CUCoalescer *)self->_powerSourceIdleCoalescer setInvalidationHandler:0];
  [(CUCoalescer *)self->_powerSourceIdleCoalescer invalidate];
  powerSourceIdleCoalescer = self->_powerSourceIdleCoalescer;
  self->_powerSourceIdleCoalescer = 0;

  v6 = [(SDBLEPowerSourceContainer *)self powerSource];
  [v6 invalidate];

  v7 = [(SDBLEPowerSourceContainer *)self invalidationHandler];

  if (v7)
  {
    v8 = [(SDBLEPowerSourceContainer *)self invalidationHandler];
    v8[2]();

    [(SDBLEPowerSourceContainer *)self setInvalidationHandler:0];
  }
}

@end