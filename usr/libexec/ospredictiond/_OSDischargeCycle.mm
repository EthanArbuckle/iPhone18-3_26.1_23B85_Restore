@interface _OSDischargeCycle
- (_OSDischargeCycle)init;
- (id)findEventWithCurrentCapacity:(id)capacity;
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
  dischargeEvents = [(_OSDischargeCycle *)self dischargeEvents];
  lastObject = [dischargeEvents lastObject];

  return lastObject;
}

- (id)findEventWithCurrentCapacity:(id)capacity
{
  capacityCopy = capacity;
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
        currentCapacity = [v11 currentCapacity];
        v13 = [currentCapacity isEqualToNumber:capacityCopy];

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