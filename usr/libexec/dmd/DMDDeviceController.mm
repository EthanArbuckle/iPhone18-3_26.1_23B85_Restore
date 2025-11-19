@interface DMDDeviceController
+ (DMDDeviceController)shared;
- (DMFDevice)currentDevice;
- (id)deviceWithKeys:(id)a3;
@end

@implementation DMDDeviceController

+ (DMDDeviceController)shared
{
  if (qword_1000FF0D0 != -1)
  {
    sub_100081CD8();
  }

  v3 = qword_1000FF0C8;

  return v3;
}

- (DMFDevice)currentDevice
{
  v3 = +[DMFFetchDevicePropertiesRequest currentDevicePropertyKeys];
  v4 = [(DMDDeviceController *)self deviceWithKeys:v3];

  return v4;
}

- (id)deviceWithKeys:(id)a3
{
  v4 = a3;
  v16 = [[DMFDevice alloc] initPrivate];
  v5 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [DMFDevice propertyNameForKey:v11, v16];
        v17 = 0;
        v13 = [(DMDDeviceController *)self valueForKey:v12 error:&v17];
        v14 = v17;
        if (v14)
        {
          [v5 setObject:v14 forKeyedSubscript:v11];
        }

        else
        {
          [v16 setValue:v13 forKey:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  [v16 setErrorsForKeys:v5];

  return v16;
}

@end