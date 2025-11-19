@interface BTVCEncryption
- (BOOL)calculation:(char *)a3 length:(unsigned __int16)a4 operation:(BOOL)a5 mic:(unsigned int *)a6 result:(char *)a7;
- (BTVCEncryption)init;
- (BTVCEncryption)initWithParams:(BOOL)a3 iv:(char *)a4 key:(BluetoothKey *)a5;
- (int)_aesBlock:(char *)a3 key:(char *)a4;
- (void)_generateBlockA:(BOOL)a3 blockIndex:(unsigned __int16)a4 output:(char *)a5;
- (void)_generateBlockB0:(BOOL)a3 length:(unsigned __int16)a4 output:(char *)a5;
- (void)_generateBlockB1:(char *)a3;
- (void)_generateBlockB:(unsigned __int16)a3 packet:(char *)a4 length:(unsigned __int16)a5 output:(char *)a6;
- (void)_xor16Bytes:(char *)a3 source1:(char *)a4 source2:(char *)a5;
- (void)_xor4Bytes:(char *)a3 source1:(char *)a4 source2:(char *)a5;
@end

@implementation BTVCEncryption

- (BTVCEncryption)init
{
  v3.receiver = self;
  v3.super_class = BTVCEncryption;
  return [(BTVCEncryption *)&v3 init];
}

- (BOOL)calculation:(char *)a3 length:(unsigned __int16)a4 operation:(BOOL)a5 mic:(unsigned int *)a6 result:(char *)a7
{
  v8 = a5;
  v9 = a4;
  v23[0] = 0;
  v23[1] = 0;
  v22[0] = 0;
  v22[1] = 0;
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v12 = (a4 + 15) >> 4;
  v13 = malloc_type_malloc((a4 + 15) & 0x1FFF0, 0x100004077774924uLL);
  memcpy(v13, a3, v9);
  v14 = 0;
  v15 = v12 + 2;
  if (!v8)
  {
    a3 = v13;
  }

  v16 = -32;
  do
  {
    if (v14 == 1)
    {
      [(BTVCEncryption *)self _generateBlockA:v8 blockIndex:0 output:v21];
      [(BTVCEncryption *)self _aesBlock:v21 key:&self->_key];
      [(BTVCEncryption *)self _generateBlockB1:v22];
    }

    else if (v14)
    {
      [(BTVCEncryption *)self _generateBlockA:v8 blockIndex:(v14 - 1) output:v23];
      [(BTVCEncryption *)self _aesBlock:v23 key:&self->_key];
      [(BTVCEncryption *)self _xor16Bytes:&v13[v16 & 0xF0] source1:v23 source2:&v13[v16 & 0xF0]];
      [(BTVCEncryption *)self _generateBlockB:v14 packet:a3 length:v9 output:v22];
    }

    else
    {
      [(BTVCEncryption *)self _generateBlockB0:v8 length:v9 output:v22];
    }

    [(BTVCEncryption *)self _xor16Bytes:v20 source1:v22 source2:v20];
    [(BTVCEncryption *)self _aesBlock:v20 key:&self->_key];
    ++v14;
    v16 += 16;
  }

  while (v15 != v14);
  memcpy(a7, v13, v9);
  free(v13);
  if (v8)
  {
    [(BTVCEncryption *)self _xor4Bytes:a6 source1:v21 source2:v20];
    ++self->_txPacketCounter;
    return 1;
  }

  else
  {
    v19 = 0;
    [(BTVCEncryption *)self _xor4Bytes:&v19 source1:v21 source2:v20];
    result = v19 == *a6;
    ++self->_rxPacketCounter;
  }

  return result;
}

- (void)_generateBlockA:(BOOL)a3 blockIndex:(unsigned __int16)a4 output:(char *)a5
{
  if (a3)
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
  if (a3)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  *a5 = 1;
  *(a5 + 1) = v7;
  a5[5] = BYTE4(v7) & 0x7F | v5;
  *(a5 + 6) = *self->_iv;
  a5[14] = HIBYTE(a4);
  a5[15] = a4;
}

- (void)_generateBlockB0:(BOOL)a3 length:(unsigned __int16)a4 output:(char *)a5
{
  if (a3)
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
  if (a3)
  {
    v6 = 16;
  }

  v7 = *(&self->super.isa + v6);
  *a5 = 73;
  *(a5 + 1) = v7;
  a5[5] = BYTE4(v7) & 0x7F | v5;
  *(a5 + 6) = *self->_iv;
  a5[14] = HIBYTE(a4);
  a5[15] = a4;
}

- (void)_generateBlockB1:(char *)a3
{
  *a3 = 256;
  a3[2] = 2;
  *(a3 + 3) = 0;
  *(a3 + 1) = 0;
}

- (void)_generateBlockB:(unsigned __int16)a3 packet:(char *)a4 length:(unsigned __int16)a5 output:(char *)a6
{
  v7 = 16 * a3 - 32;
  v8 = &a4[v7];
  v9 = a5 - v7;
  if (v9 > 0x10u)
  {
    v9 = 16;
  }

  v10 = v9;
  v11 = v9;
  memcpy(a6, v8, v9);
  if (v10 <= 0xF)
  {

    bzero(&a6[v11], (16 - v11));
  }
}

- (void)_xor16Bytes:(char *)a3 source1:(char *)a4 source2:(char *)a5
{
  for (i = 0; i != 16; ++i)
  {
    a3[i] = a5[i] ^ a4[i];
  }
}

- (void)_xor4Bytes:(char *)a3 source1:(char *)a4 source2:(char *)a5
{
  for (i = 0; i != 4; ++i)
  {
    a3[i] = a5[i] ^ a4[i];
  }
}

- (int)_aesBlock:(char *)a3 key:(char *)a4
{
  v6 = 0uLL;
  result = sub_1003CE39C(a4, a3, &v6);
  if (!result)
  {
    *a3 = v6;
  }

  return result;
}

- (BTVCEncryption)initWithParams:(BOOL)a3 iv:(char *)a4 key:(BluetoothKey *)a5
{
  v7 = a3;
  v9 = qword_100BCEA70;
  if (os_log_type_enabled(qword_100BCEA70, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316418;
    v16 = "[BTVCEncryption initWithParams:iv:key:]";
    v17 = 1024;
    v18 = v7;
    v19 = 1040;
    v20 = 8;
    v21 = 2096;
    v22 = a4;
    v23 = 1040;
    v24 = 16;
    v25 = 2096;
    v26 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s isPerapheral %d iv %.8P, key %.16P", buf, 0x32u);
  }

  v14.receiver = self;
  v14.super_class = BTVCEncryption;
  v10 = [(BTVCEncryption *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_isPeripheral = v7;
    *&v10->_txPacketCounter = vdupq_n_s64(1uLL);
    *v10->_iv = *a4;
    v10->_key = *a5;
    v12 = v10;
  }

  return v11;
}

@end