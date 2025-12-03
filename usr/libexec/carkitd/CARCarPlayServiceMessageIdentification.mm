@interface CARCarPlayServiceMessageIdentification
- (CARCarPlayServiceMessageIdentification)initWithDictionaryRepresentation:(id)representation;
- (CARCarPlayServiceMessageIdentification)initWithDisplayName:(id)name modelName:(id)modelName PPID:(id)d authenticationSerialNumber:(id)number accessoryProtocols:(id)protocols supportsWiredCarPlay:(BOOL)play supportsWiredToWirelessPairing:(BOOL)pairing supportsEnhancedIntegration:(BOOL)self0 supportsThemeAssets:(BOOL)self1;
- (NSString)description;
- (id)dictionaryRepresentation;
@end

@implementation CARCarPlayServiceMessageIdentification

- (CARCarPlayServiceMessageIdentification)initWithDisplayName:(id)name modelName:(id)modelName PPID:(id)d authenticationSerialNumber:(id)number accessoryProtocols:(id)protocols supportsWiredCarPlay:(BOOL)play supportsWiredToWirelessPairing:(BOOL)pairing supportsEnhancedIntegration:(BOOL)self0 supportsThemeAssets:(BOOL)self1
{
  nameCopy = name;
  modelNameCopy = modelName;
  dCopy = d;
  numberCopy = number;
  protocolsCopy = protocols;
  v26.receiver = self;
  v26.super_class = CARCarPlayServiceMessageIdentification;
  v21 = [(CARCarPlayServiceMessageIdentification *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_displayName, name);
    objc_storeStrong(&v22->_modelName, modelName);
    objc_storeStrong(&v22->_PPID, d);
    objc_storeStrong(&v22->_authenticationSerialNumber, number);
    objc_storeStrong(&v22->_accessoryProtocols, protocols);
    v22->_supportsWiredCarPlay = play;
    v22->_supportsWiredToWirelessPairing = pairing;
    v22->_supportsEnhancedIntegration = integration;
    v22->_supportsThemeAssets = assets;
  }

  return v22;
}

- (NSString)description
{
  v15.receiver = self;
  v15.super_class = CARCarPlayServiceMessageIdentification;
  v14 = [(CARCarPlayServiceMessageIdentification *)&v15 description];
  displayName = [(CARCarPlayServiceMessageIdentification *)self displayName];
  modelName = [(CARCarPlayServiceMessageIdentification *)self modelName];
  pPID = [(CARCarPlayServiceMessageIdentification *)self PPID];
  authenticationSerialNumber = [(CARCarPlayServiceMessageIdentification *)self authenticationSerialNumber];
  accessoryProtocols = [(CARCarPlayServiceMessageIdentification *)self accessoryProtocols];
  if ([(CARCarPlayServiceMessageIdentification *)self supportsWiredCarPlay])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(CARCarPlayServiceMessageIdentification *)self supportsWiredToWirelessPairing])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(CARCarPlayServiceMessageIdentification *)self supportsEnhancedIntegration])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if ([(CARCarPlayServiceMessageIdentification *)self supportsThemeAssets])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = [NSString stringWithFormat:@"%@ {displayName: %@, modelName: %@, PPID: %@, authSerial: %@, protocols: %@, supportsWired: %@, supportsOOBPairing: %@, supportsEnhancedIntegration: %@, supportsThemeAssets: %@}", v14, displayName, modelName, pPID, authenticationSerialNumber, accessoryProtocols, v7, v8, v9, v10];

  return v11;
}

- (CARCarPlayServiceMessageIdentification)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  if (representationCopy)
  {
    objc_opt_class();
    v5 = [representationCopy objectForKey:@"displayName"];
    if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      objc_opt_class();
      v7 = [representationCopy objectForKey:@"modelName"];
      if (v7 && (objc_opt_isKindOfClass() & 1) != 0)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        objc_opt_class();
        v10 = [representationCopy objectForKey:@"PPID"];
        if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        if (v11)
        {
          objc_opt_class();
          v12 = [representationCopy objectForKey:@"authSerial"];
          if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v13 = v12;
          }

          else
          {
            v13 = 0;
          }

          if (v13)
          {
            objc_opt_class();
            v14 = [representationCopy objectForKey:@"accessoryProtocols"];
            if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
            {
              v15 = v14;
            }

            else
            {
              v15 = 0;
            }

            v39 = v13;

            if (v15)
            {
              v37 = v11;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v16 = v15;
              v17 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v41;
                while (2)
                {
                  for (i = 0; i != v18; i = i + 1)
                  {
                    if (*v41 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = *(*(&v40 + 1) + 8 * i);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {

                      selfCopy = 0;
                      v11 = v37;
                      v13 = v39;
                      goto LABEL_68;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v40 objects:v44 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v36 = v6;

              v11 = v37;
            }

            else
            {
              v36 = v6;
              v16 = &__NSArray0__struct;
            }

            objc_opt_class();
            v22 = [representationCopy objectForKey:@"supportsWired"];
            if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
            {
              v23 = v22;
            }

            else
            {
              v23 = 0;
            }

            objc_opt_class();
            v24 = [representationCopy objectForKey:@"supportsOOBPairing"];
            if (v24 && (objc_opt_isKindOfClass() & 1) != 0)
            {
              v34 = v24;
            }

            else
            {
              v34 = 0;
            }

            objc_opt_class();
            v25 = [representationCopy objectForKey:@"supportsEnhancedIntegration"];
            if (v25 && (objc_opt_isKindOfClass() & 1) != 0)
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }

            objc_opt_class();
            v27 = [representationCopy objectForKey:@"supportsThemeAssets"];
            if (v27 && (objc_opt_isKindOfClass() & 1) != 0)
            {
              v33 = v27;
            }

            else
            {
              v33 = 0;
            }

            bOOLValue = [v23 BOOLValue];
            v38 = v23;
            bOOLValue2 = [v34 BOOLValue];
            v29 = v26;
            bOOLValue3 = [v26 BOOLValue];
            BYTE2(v32) = [v33 BOOLValue];
            BYTE1(v32) = bOOLValue3;
            LOBYTE(v32) = bOOLValue2;
            v13 = v39;
            self = [CARCarPlayServiceMessageIdentification initWithDisplayName:"initWithDisplayName:modelName:PPID:authenticationSerialNumber:accessoryProtocols:supportsWiredCarPlay:supportsWiredToWirelessPairing:supportsEnhancedIntegration:supportsThemeAssets:" modelName:v36 PPID:v8 authenticationSerialNumber:v11 accessoryProtocols:v39 supportsWiredCarPlay:v16 supportsWiredToWirelessPairing:bOOLValue supportsEnhancedIntegration:v32 supportsThemeAssets:?];

            v6 = v36;
            selfCopy = self;
          }

          else
          {
            v16 = sub_100002A68(2uLL);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              sub_1000855A8();
            }

            selfCopy = 0;
          }

LABEL_68:
        }

        else
        {
          v13 = sub_100002A68(2uLL);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            sub_10008561C();
          }

          selfCopy = 0;
        }
      }

      else
      {
        v11 = sub_100002A68(2uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_100085690();
        }

        selfCopy = 0;
      }
    }

    else
    {
      v8 = sub_100002A68(2uLL);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_100085704();
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  displayName = [(CARCarPlayServiceMessageIdentification *)self displayName];
  [v3 cr_setSafeObject:displayName forKey:@"displayName"];

  modelName = [(CARCarPlayServiceMessageIdentification *)self modelName];
  [v3 cr_setSafeObject:modelName forKey:@"modelName"];

  pPID = [(CARCarPlayServiceMessageIdentification *)self PPID];
  [v3 cr_setSafeObject:pPID forKey:@"PPID"];

  authenticationSerialNumber = [(CARCarPlayServiceMessageIdentification *)self authenticationSerialNumber];
  [v3 cr_setSafeObject:authenticationSerialNumber forKey:@"authSerial"];

  accessoryProtocols = [(CARCarPlayServiceMessageIdentification *)self accessoryProtocols];
  [v3 cr_setSafeObject:accessoryProtocols forKey:@"accessoryProtocols"];

  v9 = [NSNumber numberWithBool:[(CARCarPlayServiceMessageIdentification *)self supportsWiredCarPlay]];
  [v3 cr_setSafeObject:v9 forKey:@"supportsWired"];

  v10 = [NSNumber numberWithBool:[(CARCarPlayServiceMessageIdentification *)self supportsWiredToWirelessPairing]];
  [v3 cr_setSafeObject:v10 forKey:@"supportsOOBPairing"];

  v11 = [NSNumber numberWithBool:[(CARCarPlayServiceMessageIdentification *)self supportsEnhancedIntegration]];
  [v3 cr_setSafeObject:v11 forKey:@"supportsEnhancedIntegration"];

  v12 = [NSNumber numberWithBool:[(CARCarPlayServiceMessageIdentification *)self supportsThemeAssets]];
  [v3 cr_setSafeObject:v12 forKey:@"supportsThemeAssets"];

  return v3;
}

@end