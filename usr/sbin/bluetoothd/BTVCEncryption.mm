@interface BTVCEncryption
- (BOOL)calculation:(char *)calculation length:(unsigned __int16)length operation:(BOOL)operation mic:(unsigned int *)mic result:(char *)result;
- (BTVCEncryption)init;
- (BTVCEncryption)initWithParams:(BOOL)params iv:(char *)iv key:(BluetoothKey *)key;
- (int)_aesBlock:(char *)block key:(char *)key;
- (void)_generateBlockA:(BOOL)a blockIndex:(unsigned __int16)index output:(char *)output;
- (void)_generateBlockB0:(BOOL)b0 length:(unsigned __int16)length output:(char *)output;
- (void)_generateBlockB1:(char *)b1;
- (void)_generateBlockB:(unsigned __int16)b packet:(char *)packet length:(unsigned __int16)length output:(char *)output;
- (void)_xor16Bytes:(char *)bytes source1:(char *)source1 source2:(char *)source2;
- (void)_xor4Bytes:(char *)bytes source1:(char *)source1 source2:(char *)source2;
@end

@implementation BTVCEncryption

- (BTVCEncryption)init
{
  v3.receiver = self;
  v3.super_class = BTVCEncryption;
  return [(BTVCEncryption *)&v3 init];
}

- (BOOL)calculation:(char *)calculation length:(unsigned __int16)length operation:(BOOL)operation mic:(unsigned int *)mic result:(char *)result
{
  operationCopy = operation;
  lengthCopy = length;
  v23[0] = 0;
  v23[1] = 0;
  v22[0] = 0;
  v22[1] = 0;
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v12 = (length + 15) >> 4;
  v13 = malloc_type_malloc((length + 15) & 0x1FFF0, 0x100004077774924uLL);
  memcpy(v13, calculation, lengthCopy);
  v14 = 0;
  v15 = v12 + 2;
  if (!operationCopy)
  {
    calculation = v13;
  }

  v16 = -32;
  do
  {
    if (v14 == 1)
    {
      [(BTVCEncryption *)self _generateBlockA:operationCopy blockIndex:0 output:v21];
      [(BTVCEncryption *)self _aesBlock:v21 key:&self->_key];
      [(BTVCEncryption *)self _generateBlockB1:v22];
    }

    else if (v14)
    {
      [(BTVCEncryption *)self _generateBlockA:operationCopy blockIndex:(v14 - 1) output:v23];
      [(BTVCEncryption *)self _aesBlock:v23 key:&self->_key];
      [(BTVCEncryption *)self _xor16Bytes:&v13[v16 & 0xF0] source1:v23 source2:&v13[v16 & 0xF0]];
      [(BTVCEncryption *)self _generateBlockB:v14 packet:calculation length:lengthCopy output:v22];
    }

    else
    {
      [(BTVCEncryption *)self _generateBlockB0:operationCopy length:lengthCopy output:v22];
    }

    [(BTVCEncryption *)self _xor16Bytes:v20 source1:v22 source2:v20];
    [(BTVCEncryption *)self _aesBlock:v20 key:&self->_key];
    ++v14;
    v16 += 16;
  }

  while (v15 != v14);
  memcpy(result, v13, lengthCopy);
  free(v13);
  if (operationCopy)
  {
    [(BTVCEncryption *)self _xor4Bytes:mic source1:v21 source2:v20];
    ++self->_txPacketCounter;
    return 1;
  }

  else
  {
    v19 = 0;
    [(BTVCEncryption *)self _xor4Bytes:&v19 source1:v21 source2:v20];
    result = v19 == *mic;
    ++self->_rxPacketCounter;
  }

  return result;
}

- (void)_generateBlockA:(BOOL)a blockIndex:(unsigned __int16)index output:(char *)output
{
  if (a)
  {
    if (!self->_isPeripheral)
    {
LABEL_3:
      v5 = 0x80;
      goto LABEL_6;
    }
  }

  else if (self->_isPeripheral)
  {
    goto LABEL_3;
  }

  v5 = 0;
LABEL_6:
  v6 = 24;
  if (a)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  *output = 1;
  *(output + 1) = v7;
  output[5] = BYTE4(v7) & 0x7F | v5;
  *(output + 6) = *self->_iv;
  output[14] = HIBYTE(index);
  output[15] = index;
}

- (void)_generateBlockB0:(BOOL)b0 length:(unsigned __int16)length output:(char *)output
{
  if (b0)
  {
    if (!self->_isPeripheral)
    {
LABEL_3:
      v5 = 0x80;
      goto LABEL_6;
    }
  }

  else if (self->_isPeripheral)
  {
    goto LABEL_3;
  }

  v5 = 0;
LABEL_6:
  v6 = 24;
  if (b0)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  *output = 73;
  *(output + 1) = v7;
  output[5] = BYTE4(v7) & 0x7F | v5;
  *(output + 6) = *self->_iv;
  output[14] = HIBYTE(length);
  output[15] = length;
}

- (void)_generateBlockB1:(char *)b1
{
  *b1 = 256;
  b1[2] = 2;
  *(b1 + 3) = 0;
  *(b1 + 1) = 0;
}

- (void)_generateBlockB:(unsigned __int16)b packet:(char *)packet length:(unsigned __int16)length output:(char *)output
{
  v7 = 16 * b - 32;
  v8 = &packet[v7];
  v9 = length - v7;
  if (v9 > 0x10u)
  {
    v9 = 16;
  }

  v10 = v9;
  v11 = v9;
  memcpy(output, v8, v9);
  if (v10 <= 0xF)
  {

    bzero(&output[v11], (16 - v11));
  }
}

- (void)_xor16Bytes:(char *)bytes source1:(char *)source1 source2:(char *)source2
{
  for (i = 0; i != 16; ++i)
  {
    bytes[i] = source2[i] ^ source1[i];
  }
}

- (void)_xor4Bytes:(char *)bytes source1:(char *)source1 source2:(char *)source2
{
  for (i = 0; i != 4; ++i)
  {
    bytes[i] = source2[i] ^ source1[i];
  }
}

- (int)_aesBlock:(char *)block key:(char *)key
{
  v6 = 0uLL;
  result = sub_1003CE39C(key, block, &v6);
  if (!result)
  {
    *block = v6;
  }

  return result;
}

- (BTVCEncryption)initWithParams:(BOOL)params iv:(char *)iv key:(BluetoothKey *)key
{
  paramsCopy = params;
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v16 = "[BTVCEncryption initWithParams:iv:key:]";
    v17 = 1024;
    v18 = paramsCopy;
    v19 = 1040;
    v20 = 8;
    v21 = 2096;
    ivCopy = iv;
    v23 = 1040;
    v24 = 16;
    v25 = 2096;
    keyCopy = key;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s isPerapheral %d iv %.8P, key %.16P", buf, 0x32u);
  }

  v14.receiver = self;
  v14.super_class = BTVCEncryption;
  v10 = [(BTVCEncryption *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_isPeripheral = paramsCopy;
    *&v10->_txPacketCounter = vdupq_n_s64(1uLL);
    *v10->_iv = *iv;
    v10->_key = *key;
    v12 = v10;
  }

  return v11;
}

@end