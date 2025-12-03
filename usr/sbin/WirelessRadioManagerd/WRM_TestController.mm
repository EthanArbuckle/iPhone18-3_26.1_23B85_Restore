@interface WRM_TestController
- (WRM_TestController)init;
- (id)getControllerForProcessId:(int64_t)id;
- (void)dealloc;
- (void)handleMessage:(id)message;
- (void)handleProcessRegistration:(id)registration;
@end

@implementation WRM_TestController

- (WRM_TestController)init
{
  v4.receiver = self;
  v4.super_class = WRM_TestController;
  v2 = [(WCM_Controller *)&v4 init];
  *(v2 + 20) = objc_alloc_init(NSMutableArray);
  *(v2 + 28) = objc_alloc_init(NSMutableArray);
  return v2;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = WRM_TestController;
  [(WCM_Controller *)&v2 dealloc];
}

- (id)getControllerForProcessId:(int64_t)id
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = *(&self->super.mProcessId + 1);
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v22 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v21 + 1) + 8 * v9);
      if ([v10 getProcessId] == id)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v10)
    {
      return v10;
    }
  }

LABEL_11:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(&self->existingControllersList + 4);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = *v18;
LABEL_13:
  v15 = 0;
  while (1)
  {
    if (*v18 != v14)
    {
      objc_enumerationMutation(v11);
    }

    v10 = *(*(&v17 + 1) + 8 * v15);
    if ([v10 getProcessId] == id)
    {
      return v10;
    }

    if (v13 == ++v15)
    {
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
      v10 = 0;
      if (v13)
      {
        goto LABEL_13;
      }

      return v10;
    }
  }
}

- (void)handleProcessRegistration:(id)registration
{
  uint64 = xpc_dictionary_get_uint64(registration, "kMessageArgs");
  [WCM_Logging logLevel:2 message:@"Registering Process %d", uint64];
  v5 = [+[WCM_Server singleton](WCM_Server "singleton")];
  if (v5)
  {
    getController = [v5 getController];
    if (getController)
    {
      v7 = getController;
      [WCM_Logging logLevel:3 message:@"Adding Controller %@ to existingList", getController];

      [(WRM_TestController *)self addConrollerToExisitngList:v7];
      return;
    }
  }

  v8 = [WCM_Controller newTestControllerForProcessId:uint64];
  v9 = v8;
  if (uint64 > 2)
  {
    if (uint64 != 3 && uint64 != 4)
    {
      if (uint64 == 7)
      {
        qword_1002B7C18 = v8;
        v9 = objc_opt_new();
        qword_1002B7C18 = v9;
        if (!v9)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      goto LABEL_27;
    }

    goto LABEL_14;
  }

  if (uint64 != 1)
  {
    if (uint64 != 2)
    {
LABEL_27:
      [WCM_Logging logLevel:0 message:@"Invalid ProcessId", uint64];
      if (!v9)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }

LABEL_14:
    v9 = objc_opt_new();
    if (!v9)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  qword_1002B7C20 = v8;
  v9 = objc_opt_new();
  qword_1002B7C20 = v9;
  if (v9)
  {
LABEL_17:
    [WCM_Logging logLevel:3 message:@"Adding Controller %@ to newList", v9];
    [v9 initWithConnection:0 processId:uint64];
    [(WRM_TestController *)self addConrollerToNewList:v9];
  }

LABEL_18:
  if (uint64 != 7)
  {
    [+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")];
  }

  if ([+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")] && uint64 <= 7 && ((1 << uint64) & 0xE2) != 0)
  {
    NSLog(@"WCM_TestController received registration message from process id=%d", uint64);
    v10 = +[WRM_HandoverManager WRM_HandoverManagerSingleton];

    [v10 updateControllerSession:v9 ofId:uint64];
  }
}

- (void)handleMessage:(id)message
{
  [WCM_Logging logLevel:2 message:@"WRM_TestController: Rx messages: %@", message];
  uint64 = xpc_dictionary_get_uint64(message, "kMessageId");
  [WCM_Logging logLevel:3 message:@"Received test messageId: %llu", uint64];
  if (uint64 - 400 >= 2)
  {
    if (uint64)
    {

      [WCM_Logging logLevel:3 message:@"Not handled"];
    }

    else
    {

      [(WRM_TestController *)self handleProcessRegistration:message];
    }
  }

  else
  {
    v6 = qword_1002B7C18;

    [v6 handleMessage:message];
  }
}

@end