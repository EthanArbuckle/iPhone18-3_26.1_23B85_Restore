@interface SRSensorDescriptionEnumerator
- (id)nextObject;
- (void)dealloc;
@end

@implementation SRSensorDescriptionEnumerator

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 24);
  }

  v3.receiver = self;
  v3.super_class = SRSensorDescriptionEnumerator;
  [(SRSensorDescriptionEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  currentSensorDirectoryIndex = self->_currentSensorDirectoryIndex;
  sensorsCache = self->_sensorsCache;
  if (sensorsCache)
  {
    sensorsCache = objc_getProperty(sensorsCache, a2, 16, 1);
  }

  if (currentSensorDirectoryIndex < [sensorsCache count])
  {
    if (self->_descriptionFileEnumerator)
    {
      v6 = NSURLIsDirectoryKey;
    }

    else
    {
      Property = self->_sensorsCache;
      if (Property)
      {
        Property = objc_getProperty(Property, v5, 16, 1);
      }

      v10 = [Property objectAtIndexedSubscript:self->_currentSensorDirectoryIndex];
      v6 = NSURLIsDirectoryKey;
      v28 = NSURLIsDirectoryKey;
      v11 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:v10 options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 4, 0];
      objc_setProperty_atomic(self, v12, v11, 24);
    }

    while (1)
    {
      nextObject = [(NSDirectoryEnumerator *)self->_descriptionFileEnumerator nextObject];
      v27[0] = 0;
      [nextObject getResourceValue:v27 forKey:v6 error:0];
      if ([v27[0] BOOLValue])
      {
        goto LABEL_12;
      }

      if (!nextObject)
      {
        v15 = self->_currentSensorDirectoryIndex + 1;
        self->_currentSensorDirectoryIndex = v15;
        v16 = self->_sensorsCache;
        if (v16)
        {
          v16 = objc_getProperty(v16, v14, 16, 1);
        }

        if (v15 >= [v16 count])
        {
          goto LABEL_28;
        }

        v18 = self->_sensorsCache;
        if (v18)
        {
          v18 = objc_getProperty(v18, v17, 16, 1);
        }

        v19 = -[NSFileManager enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:", [v18 objectAtIndexedSubscript:self->_currentSensorDirectoryIndex], 0, 4, 0);
        objc_setProperty_atomic(self, v20, v19, 24);
        nextObject = [(NSDirectoryEnumerator *)self->_descriptionFileEnumerator nextObject];
        if (!nextObject)
        {
LABEL_28:
          objc_setProperty_atomic(self, v17, 0, 24);
          return 0;
        }
      }

      v21 = [objc_msgSend(nextObject "URLByDeletingPathExtension")];
      v22 = self->_sensorsCache;
      if (!v22)
      {
LABEL_12:
        v8 = 0;
      }

      else
      {
        v23 = v21;
        sr_sensorByDeletingDeletionRecord = [v21 sr_sensorByDeletingDeletionRecord];
        v25 = [(NSURL *)sr_sensorByDeletingDeletionRecord isEqualToString:v23];
        v8 = [(NSCache *)v22->_sensorsCache objectForKey:sr_sensorByDeletingDeletionRecord];
        if (v8)
        {
          if ((v25 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

        else
        {
          v8 = sub_100019470(v22, sr_sensorByDeletingDeletionRecord);
          if (!((v8 == 0) | v25 & 1))
          {
LABEL_27:
            v8 = [SRSensorDescription sensorDescriptionForDeletionRecordFromDescription:v8];
          }
        }
      }

      if (v8)
      {
        return v8;
      }
    }
  }

  v7 = qword_100071A10;
  if (os_log_type_enabled(qword_100071A10, OS_LOG_TYPE_FAULT))
  {
    LOWORD(v27[0]) = 0;
    _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Unexpectedly trying to iterate beyond the maximum number of directories", v27, 2u);
  }

  return 0;
}

@end