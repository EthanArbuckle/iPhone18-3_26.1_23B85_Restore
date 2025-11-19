@interface MTPObjectProperty
- (MTPObjectProperty)initWithPropertyCode:(unsigned __int16)a3 andDataType:(unsigned __int16)a4;
- (void)dealloc;
- (void)objectPropertyDescriptionDataset:(id)a3;
- (void)objectValue:(id)a3 withObject:(id)a4 andHandle:(unsigned int)a5;
@end

@implementation MTPObjectProperty

- (MTPObjectProperty)initWithPropertyCode:(unsigned __int16)a3 andDataType:(unsigned __int16)a4
{
  v7.receiver = self;
  v7.super_class = MTPObjectProperty;
  result = [(MTPObjectProperty *)&v7 init];
  if (result)
  {
    result->_propertyCode = a3;
    result->_dataType = a4;
    *&result->_writableSet = 0;
    result->_groupCode = 0;
  }

  return result;
}

- (void)objectValue:(id)a3 withObject:(id)a4 andHandle:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  propertyCode = self->_propertyCode;
  if (propertyCode > 0xDC07)
  {
    if (self->_propertyCode <= 0xDC0Au)
    {
      if (propertyCode == 56328)
      {
        v30 = [v9 objectInfoDataset];
        v31 = [v30 captureDate];
        v32 = [v31 length];

        v19 = 2 * v32;
        __chkstk_darwin();
        v21 = &v38 - v33;
        v40 = &v38 - v33;
        v22 = [v10 objectInfoDataset];
        v23 = [v22 captureDate];
      }

      else
      {
        if (propertyCode != 56329)
        {
          goto LABEL_24;
        }

        v16 = [v9 objectInfoDataset];
        v17 = [v16 modificationDate];
        v18 = [v17 length];

        v19 = 2 * v18;
        __chkstk_darwin();
        v21 = &v38 - v20;
        v40 = &v38 - v20;
        v22 = [v10 objectInfoDataset];
        v23 = [v22 modificationDate];
      }

LABEL_18:
      v34 = v23;
      WriteUnicodeStringWithLengthByteToBuffer();

      [v8 appendBytes:v21 length:v19 + 3];
      goto LABEL_24;
    }

    if (propertyCode == 56331)
    {
      v28 = [v9 objectInfoDataset];
      v29 = [v28 parentObject];
      goto LABEL_22;
    }

    if (propertyCode != 56385)
    {
      goto LABEL_24;
    }

    v39 = a5;
    v40 = a5;
    [v8 appendBytes:&v39 length:8];
LABEL_20:
    v14 = v8;
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

      v24 = [v9 objectInfoDataset];
      v25 = [v24 filename];
      v26 = [v25 length];

      v19 = 2 * v26;
      __chkstk_darwin();
      v21 = &v38 - v27;
      v40 = &v38 - v27;
      v22 = [v10 objectInfoDataset];
      v23 = [v22 filename];
      goto LABEL_18;
    }

    v35 = [v9 objectInfoDataset];
    v36 = [v35 objectCompressedSize64];

    v40 = v36;
    goto LABEL_20;
  }

  if (propertyCode == 56321)
  {
    v28 = [v9 objectInfoDataset];
    v29 = [v28 storageID];
LABEL_22:
    v37 = v29;

    LODWORD(v40) = v37;
    v14 = v8;
    v15 = 4;
    goto LABEL_23;
  }

  if (propertyCode == 56322)
  {
    v12 = [v9 objectInfoDataset];
    v13 = [v12 objectFormat];

    LOWORD(v40) = v13;
    v14 = v8;
    v15 = 2;
LABEL_23:
    [v14 appendBytes:&v40 length:v15];
  }

LABEL_24:
}

- (void)objectPropertyDescriptionDataset:(id)a3
{
  v4 = a3;
  propertyCode = self->_propertyCode;
  [v4 appendBytes:&propertyCode length:2];
  dataType = self->_dataType;
  [v4 appendBytes:&dataType length:2];
  [v4 appendBytes:&self->_writableSet length:1];
  v5 = self->_dataType;
  if (v5 > 7)
  {
    if (v5 == 8)
    {
      v8 = 0;
      v6 = v4;
      v7 = 8;
    }

    else
    {
      if (v5 == 10)
      {
        v8 = 0;
        [v4 appendBytes:&v8 length:8];
        [v4 appendBytes:&v8 length:8];
      }

      else if (v5 != 0xFFFF)
      {
        goto LABEL_14;
      }

      LOBYTE(v8) = 0;
      v6 = v4;
      v7 = 1;
    }

    goto LABEL_13;
  }

  if (v5 == 4)
  {
    LOWORD(v8) = 0;
    v6 = v4;
    v7 = 2;
    goto LABEL_13;
  }

  if (v5 == 6)
  {
    LODWORD(v8) = 0;
    v6 = v4;
    v7 = 4;
LABEL_13:
    [v6 appendBytes:&v8 length:{v7, v8}];
  }

LABEL_14:
  LODWORD(v8) = 0;
  [v4 appendBytes:&v8 length:4];
  [v4 appendBytes:&self->_formFlag length:1];
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