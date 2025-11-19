@interface ALCLNatalieFeatures
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)fEpochTypeAsString:(int)a3;
- (int)StringAsFEpochType:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ALCLNatalieFeatures

- (id)fEpochTypeAsString:(int)a3
{
  if (a3 >= 3)
  {
    return [NSString stringWithFormat:@"(unknown: %i)", *&a3];
  }

  else
  {
    return *(&off_102457238 + a3);
  }
}

- (int)StringAsFEpochType:(id)a3
{
  if ([a3 isEqualToString:@"kInvalidEpoch"])
  {
    return 0;
  }

  if ([a3 isEqualToString:@"K2560MsType"])
  {
    return 1;
  }

  if ([a3 isEqualToString:@"k10240MsType"])
  {
    return 2;
  }

  return 0;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALCLNatalieFeatures;
  return [NSString stringWithFormat:@"%@ %@", [(ALCLNatalieFeatures *)&v3 description], [(ALCLNatalieFeatures *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  *&v4 = self->_fVectorMagnitude;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v4), @"fVectorMagnitude"}];
  *&v5 = self->_fIQRX;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v5), @"fIQRX"}];
  *&v6 = self->_fIQRY;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v6), @"fIQRY"}];
  *&v7 = self->_fIQRZ;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v7), @"fIQRZ"}];
  *&v8 = self->_fMachineFrequency;
  [v3 setObject:+[NSNumber numberWithFloat:](NSNumber forKey:{"numberWithFloat:", v8), @"fMachineFrequency"}];
  fEpochType = self->_fEpochType;
  if (fEpochType >= 3)
  {
    v10 = [NSString stringWithFormat:@"(unknown: %i)", self->_fEpochType];
  }

  else
  {
    v10 = *(&off_102457238 + fEpochType);
  }

  [v3 setObject:v10 forKey:@"fEpochType"];
  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_fStanding), @"fStanding"}];
  return v3;
}

- (void)writeTo:(id)a3
{
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteFloatField();
  PBDataWriterWriteInt32Field();

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  *(a3 + 7) = LODWORD(self->_fVectorMagnitude);
  *(a3 + 3) = LODWORD(self->_fIQRX);
  *(a3 + 4) = LODWORD(self->_fIQRY);
  *(a3 + 5) = LODWORD(self->_fIQRZ);
  *(a3 + 6) = LODWORD(self->_fMachineFrequency);
  *(a3 + 2) = self->_fEpochType;
  *(a3 + 32) = self->_fStanding;
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 7) = LODWORD(self->_fVectorMagnitude);
  *(result + 3) = LODWORD(self->_fIQRX);
  *(result + 4) = LODWORD(self->_fIQRY);
  *(result + 5) = LODWORD(self->_fIQRZ);
  *(result + 6) = LODWORD(self->_fMachineFrequency);
  *(result + 2) = self->_fEpochType;
  *(result + 32) = self->_fStanding;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    LOBYTE(v5) = self->_fVectorMagnitude == *(a3 + 7) && self->_fIQRX == *(a3 + 3) && self->_fIQRY == *(a3 + 4) && self->_fIQRZ == *(a3 + 5) && self->_fMachineFrequency == *(a3 + 6) && self->_fEpochType == *(a3 + 2) && self->_fStanding == *(a3 + 32);
  }

  return v5;
}

- (unint64_t)hash
{
  fVectorMagnitude = self->_fVectorMagnitude;
  v7 = -fVectorMagnitude;
  if (fVectorMagnitude >= 0.0)
  {
    v7 = self->_fVectorMagnitude;
  }

  *v3.i32 = floorf(v7 + 0.5);
  v8 = (v7 - *v3.i32) * 1.8447e19;
  *v4.i32 = *v3.i32 - (truncf(*v3.i32 * 5.421e-20) * 1.8447e19);
  v9.i64[0] = 0x8000000080000000;
  v9.i64[1] = 0x8000000080000000;
  v3.i32[0] = vbslq_s8(v9, v4, v3).i32[0];
  v10 = 2654435761u * *v3.i32;
  v11 = v10 + v8;
  if (v8 <= 0.0)
  {
    v11 = 2654435761u * *v3.i32;
  }

  v12 = v10 - fabsf(v8);
  if (v8 >= 0.0)
  {
    v12 = v11;
  }

  fIQRX = self->_fIQRX;
  if (fIQRX < 0.0)
  {
    fIQRX = -fIQRX;
  }

  *v4.i32 = floorf(fIQRX + 0.5);
  v14 = (fIQRX - *v4.i32) * 1.8447e19;
  *v5.i32 = *v4.i32 - (truncf(*v4.i32 * 5.421e-20) * 1.8447e19);
  v15 = vbslq_s8(v9, v5, v4);
  v16 = 2654435761u * *v15.i32;
  v17 = v16 + v14;
  if (v14 <= 0.0)
  {
    v17 = 2654435761u * *v15.i32;
  }

  v18 = v16 - fabsf(v14);
  if (v14 >= 0.0)
  {
    v18 = v17;
  }

  fIQRY = self->_fIQRY;
  if (fIQRY < 0.0)
  {
    fIQRY = -fIQRY;
  }

  *v15.i32 = floorf(fIQRY + 0.5);
  v20 = (fIQRY - *v15.i32) * 1.8447e19;
  *v5.i32 = *v15.i32 - (truncf(*v15.i32 * 5.421e-20) * 1.8447e19);
  v21 = vbslq_s8(v9, v5, v15);
  v22 = 2654435761u * *v21.i32;
  v23 = v22 + v20;
  if (v20 <= 0.0)
  {
    v23 = 2654435761u * *v21.i32;
  }

  v24 = v22 - fabsf(v20);
  if (v20 >= 0.0)
  {
    v24 = v23;
  }

  fIQRZ = self->_fIQRZ;
  if (fIQRZ < 0.0)
  {
    fIQRZ = -fIQRZ;
  }

  *v21.i32 = floorf(fIQRZ + 0.5);
  v26 = (fIQRZ - *v21.i32) * 1.8447e19;
  *v5.i32 = *v21.i32 - (truncf(*v21.i32 * 5.421e-20) * 1.8447e19);
  v27 = vbslq_s8(v9, v5, v21);
  v28 = 2654435761u * *v27.i32;
  v29 = v28 + v26;
  if (v26 <= 0.0)
  {
    v29 = 2654435761u * *v27.i32;
  }

  v30 = v28 - fabsf(v26);
  if (v26 >= 0.0)
  {
    v30 = v29;
  }

  fMachineFrequency = self->_fMachineFrequency;
  if (fMachineFrequency < 0.0)
  {
    fMachineFrequency = -fMachineFrequency;
  }

  *v2.i32 = floorf(fMachineFrequency + 0.5);
  v32 = (fMachineFrequency - *v2.i32) * 1.8447e19;
  *v27.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
  v2.i32[0] = vbslq_s8(v9, v27, v2).i32[0];
  v33 = 2654435761u * *v2.i32;
  v34 = v33 + v32;
  if (v32 <= 0.0)
  {
    v34 = 2654435761u * *v2.i32;
  }

  v35 = v33 - fabsf(v32);
  if (v32 >= 0.0)
  {
    v35 = v34;
  }

  return v18 ^ v12 ^ v24 ^ v30 ^ v35 ^ (2654435761 * self->_fEpochType) ^ (2654435761 * self->_fStanding);
}

- (void)mergeFrom:(id)a3
{
  self->_fVectorMagnitude = *(a3 + 7);
  self->_fIQRX = *(a3 + 3);
  self->_fIQRY = *(a3 + 4);
  self->_fIQRZ = *(a3 + 5);
  self->_fMachineFrequency = *(a3 + 6);
  self->_fEpochType = *(a3 + 2);
  self->_fStanding = *(a3 + 32);
}

@end