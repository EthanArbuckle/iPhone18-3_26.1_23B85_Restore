@interface RMConnectionHandlerInternal
- (BOOL)isEqual:(id)a3;
@end

@implementation RMConnectionHandlerInternal

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    msgHandler = self->_msgHandler;
    if (v4)
    {
      v6 = *(v4 + 1);
      if (msgHandler != v6)
      {
LABEL_4:
        v7 = 0;
LABEL_8:

        goto LABEL_9;
      }

      v8 = *(v4 + 2);
    }

    else
    {
      v6 = 0;
      if (msgHandler)
      {
        goto LABEL_4;
      }

      v8 = 0;
    }

    v7 = self->_endpoint == v8;
    goto LABEL_8;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

@end