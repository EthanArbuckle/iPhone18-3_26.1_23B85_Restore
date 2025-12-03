@interface MTPObjectProperty
- (MTPObjectProperty)initWithPropertyCode:(unsigned __int16)code andDataType:(unsigned __int16)type;
- (void)dealloc;
- (void)objectPropertyDescriptionDataset:(id)dataset;
- (void)objectValue:(id)value withObject:(id)object andHandle:(unsigned int)handle;
@end

@implementation MTPObjectProperty

- (MTPObjectProperty)initWithPropertyCode:(unsigned __int16)code andDataType:(unsigned __int16)type
{
  v7.receiver = self;
  v7.super_class = MTPObjectProperty;
  result = [(MTPObjectProperty *)&v7 init];
  if (result)
  {
    result->_propertyCode = code;
    result->_dataType = type;
    *&result->_writableSet = 0;
    result->_groupCode = 0;
  }

  return result;
}

- (void)objectValue:(id)value withObject:(id)object andHandle:(unsigned int)handle
{
  valueCopy = value;
  objectCopy = object;
  v10 = objectCopy;
  propertyCode = self->_propertyCode;
  if (propertyCode > 0xDC07)
  {
    if (self->_propertyCode <= 0xDC0Au)
    {
      if (propertyCode == 56328)
      {
        objectInfoDataset = [objectCopy objectInfoDataset];
        captureDate = [objectInfoDataset captureDate];
        v32 = [captureDate length];

        v19 = 2 * v32;
        __chkstk_darwin();
        v21 = &v38 - v33;
        handleCopy2 = &v38 - v33;
        objectInfoDataset2 = [v10 objectInfoDataset];
        captureDate2 = [objectInfoDataset2 captureDate];
      }

      else
      {
        if (propertyCode != 56329)
        {
          goto LABEL_24;
        }

        objectInfoDataset3 = [objectCopy objectInfoDataset];
        modificationDate = [objectInfoDataset3 modificationDate];
        v18 = [modificationDate length];

        v19 = 2 * v18;
        __chkstk_darwin();
        v21 = &v38 - v20;
        handleCopy2 = &v38 - v20;
        objectInfoDataset2 = [v10 objectInfoDataset];
        captureDate2 = [objectInfoDataset2 modificationDate];
      }

LABEL_18:
      v34 = captureDate2;
      WriteUnicodeStringWithLengthByteToBuffer();

      [valueCopy appendBytes:v21 length:v19 + 3];
      goto LABEL_24;
    }

    if (propertyCode == 56331)
    {
      objectInfoDataset4 = [objectCopy objectInfoDataset];
      parentObject = [objectInfoDataset4 parentObject];
      goto LABEL_22;
    }

    if (propertyCode != 56385)
    {
      goto LABEL_24;
    }

    handleCopy = handle;
    handleCopy2 = handle;
    [valueCopy appendBytes:&handleCopy length:8];
LABEL_20:
    v14 = valueCopy;
    v15 = 8;
    goto LABEL_23;
  }

  if (self->_propertyCode > 0xDC03u)
  {
    if (propertyCode != 56324)
    {
      if (propertyCode != 56327)
      {
        goto LABEL_24;
      }

      objectInfoDataset5 = [objectCopy objectInfoDataset];
      filename = [objectInfoDataset5 filename];
      v26 = [filename length];

      v19 = 2 * v26;
      __chkstk_darwin();
      v21 = &v38 - v27;
      handleCopy2 = &v38 - v27;
      objectInfoDataset2 = [v10 objectInfoDataset];
      captureDate2 = [objectInfoDataset2 filename];
      goto LABEL_18;
    }

    objectInfoDataset6 = [objectCopy objectInfoDataset];
    objectCompressedSize64 = [objectInfoDataset6 objectCompressedSize64];

    handleCopy2 = objectCompressedSize64;
    goto LABEL_20;
  }

  if (propertyCode == 56321)
  {
    objectInfoDataset4 = [objectCopy objectInfoDataset];
    parentObject = [objectInfoDataset4 storageID];
LABEL_22:
    v37 = parentObject;

    LODWORD(handleCopy2) = v37;
    v14 = valueCopy;
    v15 = 4;
    goto LABEL_23;
  }

  if (propertyCode == 56322)
  {
    objectInfoDataset7 = [objectCopy objectInfoDataset];
    objectFormat = [objectInfoDataset7 objectFormat];

    LOWORD(handleCopy2) = objectFormat;
    v14 = valueCopy;
    v15 = 2;
LABEL_23:
    [v14 appendBytes:&handleCopy2 length:v15];
  }

LABEL_24:
}

- (void)objectPropertyDescriptionDataset:(id)dataset
{
  datasetCopy = dataset;
  propertyCode = self->_propertyCode;
  [datasetCopy appendBytes:&propertyCode length:2];
  dataType = self->_dataType;
  [datasetCopy appendBytes:&dataType length:2];
  [datasetCopy appendBytes:&self->_writableSet length:1];
  v5 = self->_dataType;
  if (v5 > 7)
  {
    if (v5 == 8)
    {
      v8 = 0;
      v6 = datasetCopy;
      v7 = 8;
    }

    else
    {
      if (v5 == 10)
      {
        v8 = 0;
        [datasetCopy appendBytes:&v8 length:8];
        [datasetCopy appendBytes:&v8 length:8];
      }

      else if (v5 != 0xFFFF)
      {
        goto LABEL_14;
      }

      LOBYTE(v8) = 0;
      v6 = datasetCopy;
      v7 = 1;
    }

    goto LABEL_13;
  }

  if (v5 == 4)
  {
    LOWORD(v8) = 0;
    v6 = datasetCopy;
    v7 = 2;
    goto LABEL_13;
  }

  if (v5 == 6)
  {
    LODWORD(v8) = 0;
    v6 = datasetCopy;
    v7 = 4;
LABEL_13:
    [v6 appendBytes:&v8 length:{v7, v8}];
  }

LABEL_14:
  LODWORD(v8) = 0;
  [datasetCopy appendBytes:&v8 length:4];
  [datasetCopy appendBytes:&self->_formFlag length:1];
}

- (void)dealloc
{
  dataValue = self->_dataValue;
  if (dataValue)
  {
    free(dataValue);
  }

  v4.receiver = self;
  v4.super_class = MTPObjectProperty;
  [(MTPObjectProperty *)&v4 dealloc];
}

@end