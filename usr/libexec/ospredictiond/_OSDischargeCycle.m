@interface _OSDischargeCycle
- (_OSDischargeCycle)init;
- (id)findEventWithCurrentCapacity:(id)a3;
- (id)getLastEvent;
@end

@implementation _OSDischargeCycle

- (_OSDischargeCycle)init
{
  v5.receiver = self;
  v5.super_class = _OSDischargeCycle;
  v2 = [(_OSDischargeCycle *)&v5 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(_OSDischargeCycle *)v2 setDischargeEvents:v3];
  }

  return v2;
}

- (id)getLastEvent
{
  v2 = [(_OSDischargeCycle *)self dischargeEvents];
  v3 = [v2 lastObject];

  return v3;
}

- (id)findEventWithCurrentCapacity:(id)a3
{
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_dischargeEvents;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 currentCapacity];
        v13 = [v12 isEqualToNumber:v4];

        if (v13)
        {
          v14 = v11;

          v8 = v14;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end