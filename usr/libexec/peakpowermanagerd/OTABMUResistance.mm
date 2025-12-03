@interface OTABMUResistance
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDownstreamNorthResistance:(BOOL)resistance;
- (void)setHasResistanceCellTabToGG:(BOOL)g;
- (void)setHasResistanceGGToVcut:(BOOL)vcut;
- (void)setHasResistancePMUToVcut:(BOOL)vcut;
- (void)setHasResistanceVcutToPmax:(BOOL)pmax;
- (void)setHasSystemEquivalentResistance:(BOOL)resistance;
- (void)setHasTraceResistance25C:(BOOL)c;
- (void)setHasTraceResistanceTemperatureCoeff:(BOOL)coeff;
- (void)writeTo:(id)to;
@end

@implementation OTABMUResistance

- (void)setHasTraceResistance25C:(BOOL)c
{
  if (c)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasTraceResistanceTemperatureCoeff:(BOOL)coeff
{
  if (coeff)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasSystemEquivalentResistance:(BOOL)resistance
{
  if (resistance)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasDownstreamNorthResistance:(BOOL)resistance
{
  if (resistance)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasResistanceGGToVcut:(BOOL)vcut
{
  if (vcut)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasResistancePMUToVcut:(BOOL)vcut
{
  if (vcut)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasResistanceVcutToPmax:(BOOL)pmax
{
  if (pmax)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasResistanceCellTabToGG:(BOOL)g
{
  if (g)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = OTABMUResistance;
  v3 = [(OTABMUResistance *)&v7 description];
  dictionaryRepresentation = [(OTABMUResistance *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *&v4 = self->_traceResistance25C;
    v8 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v8 forKey:@"traceResistance25C"];

    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *&v4 = self->_traceResistanceTemperatureCoeff;
  v9 = [NSNumber numberWithFloat:v4];
  [v3 setObject:v9 forKey:@"traceResistanceTemperatureCoeff"];

  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *&v4 = self->_systemEquivalentResistance;
  v10 = [NSNumber numberWithFloat:v4];
  [v3 setObject:v10 forKey:@"systemEquivalentResistance"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *&v4 = self->_downstreamCommonResistance;
  v11 = [NSNumber numberWithFloat:v4];
  [v3 setObject:v11 forKey:@"downstreamCommonResistance"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  *&v4 = self->_downstreamNorthResistance;
  v12 = [NSNumber numberWithFloat:v4];
  [v3 setObject:v12 forKey:@"downstreamNorthResistance"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  *&v4 = self->_resistanceGGToVcut;
  v13 = [NSNumber numberWithFloat:v4];
  [v3 setObject:v13 forKey:@"resistanceGGToVcut"];

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  *&v4 = self->_resistancePMUToVcut;
  v14 = [NSNumber numberWithFloat:v4];
  [v3 setObject:v14 forKey:@"resistancePMUToVcut"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  *&v4 = self->_resistanceVcutToPmax;
  v15 = [NSNumber numberWithFloat:v4];
  [v3 setObject:v15 forKey:@"resistanceVcutToPmax"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    *&v4 = self->_resistanceCellTabToGG;
    v6 = [NSNumber numberWithFloat:v4];
    [v3 setObject:v6 forKey:@"resistanceCellTabToGG"];
  }

LABEL_11:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    traceResistance25C = self->_traceResistance25C;
    PBDataWriterWriteFloatField();
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  traceResistanceTemperatureCoeff = self->_traceResistanceTemperatureCoeff;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  systemEquivalentResistance = self->_systemEquivalentResistance;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  downstreamCommonResistance = self->_downstreamCommonResistance;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  downstreamNorthResistance = self->_downstreamNorthResistance;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  resistanceGGToVcut = self->_resistanceGGToVcut;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  resistancePMUToVcut = self->_resistancePMUToVcut;
  PBDataWriterWriteFloatField();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  resistanceVcutToPmax = self->_resistanceVcutToPmax;
  PBDataWriterWriteFloatField();
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    resistanceCellTabToGG = self->_resistanceCellTabToGG;
    PBDataWriterWriteFloatField();
  }

LABEL_11:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    toCopy[9] = LODWORD(self->_traceResistance25C);
    *(toCopy + 22) |= 0x80u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  toCopy[10] = LODWORD(self->_traceResistanceTemperatureCoeff);
  *(toCopy + 22) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  toCopy[8] = LODWORD(self->_systemEquivalentResistance);
  *(toCopy + 22) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  toCopy[2] = LODWORD(self->_downstreamCommonResistance);
  *(toCopy + 22) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  toCopy[3] = LODWORD(self->_downstreamNorthResistance);
  *(toCopy + 22) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  toCopy[5] = LODWORD(self->_resistanceGGToVcut);
  *(toCopy + 22) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  toCopy[6] = LODWORD(self->_resistancePMUToVcut);
  *(toCopy + 22) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  toCopy[7] = LODWORD(self->_resistanceVcutToPmax);
  *(toCopy + 22) |= 0x20u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_10:
    toCopy[4] = LODWORD(self->_resistanceCellTabToGG);
    *(toCopy + 22) |= 4u;
  }

LABEL_11:
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    *(result + 9) = LODWORD(self->_traceResistance25C);
    *(result + 22) |= 0x80u;
    has = self->_has;
    if ((has & 0x100) == 0)
    {
LABEL_3:
      if ((has & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_3;
  }

  *(result + 10) = LODWORD(self->_traceResistanceTemperatureCoeff);
  *(result + 22) |= 0x100u;
  has = self->_has;
  if ((has & 0x40) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(result + 8) = LODWORD(self->_systemEquivalentResistance);
  *(result + 22) |= 0x40u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_5:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  *(result + 2) = LODWORD(self->_downstreamCommonResistance);
  *(result + 22) |= 1u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(result + 3) = LODWORD(self->_downstreamNorthResistance);
  *(result + 22) |= 2u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_7:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(result + 5) = LODWORD(self->_resistanceGGToVcut);
  *(result + 22) |= 8u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(result + 6) = LODWORD(self->_resistancePMUToVcut);
  *(result + 22) |= 0x10u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 4) == 0)
    {
      return result;
    }

    goto LABEL_10;
  }

LABEL_19:
  *(result + 7) = LODWORD(self->_resistanceVcutToPmax);
  *(result + 22) |= 0x20u;
  if ((*&self->_has & 4) == 0)
  {
    return result;
  }

LABEL_10:
  *(result + 4) = LODWORD(self->_resistanceCellTabToGG);
  *(result + 22) |= 4u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_46;
  }

  has = self->_has;
  v6 = *(equalCopy + 22);
  if ((has & 0x80) != 0)
  {
    if ((v6 & 0x80) == 0 || self->_traceResistance25C != *(equalCopy + 9))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 0x80) != 0)
  {
LABEL_46:
    v7 = 0;
    goto LABEL_47;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    if ((*(equalCopy + 22) & 0x100) == 0 || self->_traceResistanceTemperatureCoeff != *(equalCopy + 10))
    {
      goto LABEL_46;
    }
  }

  else if ((*(equalCopy + 22) & 0x100) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 0x40) != 0)
  {
    if ((v6 & 0x40) == 0 || self->_systemEquivalentResistance != *(equalCopy + 8))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 0x40) != 0)
  {
    goto LABEL_46;
  }

  if (has)
  {
    if ((v6 & 1) == 0 || self->_downstreamCommonResistance != *(equalCopy + 2))
    {
      goto LABEL_46;
    }
  }

  else if (v6)
  {
    goto LABEL_46;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_downstreamNorthResistance != *(equalCopy + 3))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_resistanceGGToVcut != *(equalCopy + 5))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_resistancePMUToVcut != *(equalCopy + 6))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_46;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_resistanceVcutToPmax != *(equalCopy + 7))
    {
      goto LABEL_46;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_46;
  }

  v7 = (v6 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_resistanceCellTabToGG != *(equalCopy + 4))
    {
      goto LABEL_46;
    }

    v7 = 1;
  }

LABEL_47:

  return v7;
}

- (unint64_t)hash
{
  has = self->_has;
  if ((has & 0x80) != 0)
  {
    traceResistance25C = self->_traceResistance25C;
    if (traceResistance25C < 0.0)
    {
      traceResistance25C = -traceResistance25C;
    }

    *v2.i32 = floorf(traceResistance25C + 0.5);
    v7 = (traceResistance25C - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v8.i64[0] = 0x8000000080000000;
    v8.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v8, v3, v2);
    v5 = 2654435761u * *v2.i32;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabsf(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*&self->_has & 0x100) != 0)
  {
    traceResistanceTemperatureCoeff = self->_traceResistanceTemperatureCoeff;
    if (traceResistanceTemperatureCoeff < 0.0)
    {
      traceResistanceTemperatureCoeff = -traceResistanceTemperatureCoeff;
    }

    *v2.i32 = floorf(traceResistanceTemperatureCoeff + 0.5);
    v11 = (traceResistanceTemperatureCoeff - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v12.i64[0] = 0x8000000080000000;
    v12.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v12, v3, v2);
    v9 = 2654435761u * *v2.i32;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabsf(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  if ((has & 0x40) != 0)
  {
    systemEquivalentResistance = self->_systemEquivalentResistance;
    if (systemEquivalentResistance < 0.0)
    {
      systemEquivalentResistance = -systemEquivalentResistance;
    }

    *v2.i32 = floorf(systemEquivalentResistance + 0.5);
    v15 = (systemEquivalentResistance - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v16.i64[0] = 0x8000000080000000;
    v16.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v16, v3, v2);
    v13 = 2654435761u * *v2.i32;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabsf(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  if (has)
  {
    downstreamCommonResistance = self->_downstreamCommonResistance;
    if (downstreamCommonResistance < 0.0)
    {
      downstreamCommonResistance = -downstreamCommonResistance;
    }

    *v2.i32 = floorf(downstreamCommonResistance + 0.5);
    v19 = (downstreamCommonResistance - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v20.i64[0] = 0x8000000080000000;
    v20.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v20, v3, v2);
    v17 = 2654435761u * *v2.i32;
    if (v19 >= 0.0)
    {
      if (v19 > 0.0)
      {
        v17 += v19;
      }
    }

    else
    {
      v17 -= fabsf(v19);
    }
  }

  else
  {
    v17 = 0;
  }

  if ((has & 2) != 0)
  {
    downstreamNorthResistance = self->_downstreamNorthResistance;
    if (downstreamNorthResistance < 0.0)
    {
      downstreamNorthResistance = -downstreamNorthResistance;
    }

    *v2.i32 = floorf(downstreamNorthResistance + 0.5);
    v23 = (downstreamNorthResistance - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v24.i64[0] = 0x8000000080000000;
    v24.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v24, v3, v2);
    v21 = 2654435761u * *v2.i32;
    if (v23 >= 0.0)
    {
      if (v23 > 0.0)
      {
        v21 += v23;
      }
    }

    else
    {
      v21 -= fabsf(v23);
    }
  }

  else
  {
    v21 = 0;
  }

  if ((has & 8) != 0)
  {
    resistanceGGToVcut = self->_resistanceGGToVcut;
    if (resistanceGGToVcut < 0.0)
    {
      resistanceGGToVcut = -resistanceGGToVcut;
    }

    *v2.i32 = floorf(resistanceGGToVcut + 0.5);
    v27 = (resistanceGGToVcut - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v28.i64[0] = 0x8000000080000000;
    v28.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v28, v3, v2);
    v25 = 2654435761u * *v2.i32;
    if (v27 >= 0.0)
    {
      if (v27 > 0.0)
      {
        v25 += v27;
      }
    }

    else
    {
      v25 -= fabsf(v27);
    }
  }

  else
  {
    v25 = 0;
  }

  if ((has & 0x10) != 0)
  {
    resistancePMUToVcut = self->_resistancePMUToVcut;
    if (resistancePMUToVcut < 0.0)
    {
      resistancePMUToVcut = -resistancePMUToVcut;
    }

    *v2.i32 = floorf(resistancePMUToVcut + 0.5);
    v31 = (resistancePMUToVcut - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v32.i64[0] = 0x8000000080000000;
    v32.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v32, v3, v2);
    v29 = 2654435761u * *v2.i32;
    if (v31 >= 0.0)
    {
      if (v31 > 0.0)
      {
        v29 += v31;
      }
    }

    else
    {
      v29 -= fabsf(v31);
    }
  }

  else
  {
    v29 = 0;
  }

  if ((has & 0x20) != 0)
  {
    resistanceVcutToPmax = self->_resistanceVcutToPmax;
    if (resistanceVcutToPmax < 0.0)
    {
      resistanceVcutToPmax = -resistanceVcutToPmax;
    }

    *v2.i32 = floorf(resistanceVcutToPmax + 0.5);
    v35 = (resistanceVcutToPmax - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v36.i64[0] = 0x8000000080000000;
    v36.i64[1] = 0x8000000080000000;
    v2 = vbslq_s8(v36, v3, v2);
    v33 = 2654435761u * *v2.i32;
    if (v35 >= 0.0)
    {
      if (v35 > 0.0)
      {
        v33 += v35;
      }
    }

    else
    {
      v33 -= fabsf(v35);
    }
  }

  else
  {
    v33 = 0;
  }

  if ((has & 4) != 0)
  {
    resistanceCellTabToGG = self->_resistanceCellTabToGG;
    if (resistanceCellTabToGG < 0.0)
    {
      resistanceCellTabToGG = -resistanceCellTabToGG;
    }

    *v2.i32 = floorf(resistanceCellTabToGG + 0.5);
    v39 = (resistanceCellTabToGG - *v2.i32) * 1.8447e19;
    *v3.i32 = *v2.i32 - (truncf(*v2.i32 * 5.421e-20) * 1.8447e19);
    v40.i64[0] = 0x8000000080000000;
    v40.i64[1] = 0x8000000080000000;
    v37 = 2654435761u * *vbslq_s8(v40, v3, v2).i32;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v37 += v39;
      }
    }

    else
    {
      v37 -= fabsf(v39);
    }
  }

  else
  {
    v37 = 0;
  }

  return v9 ^ v5 ^ v13 ^ v17 ^ v21 ^ v25 ^ v29 ^ v33 ^ v37;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x80) != 0)
  {
    self->_traceResistance25C = *(fromCopy + 9);
    *&self->_has |= 0x80u;
    v5 = *(fromCopy + 22);
    if ((v5 & 0x100) == 0)
    {
LABEL_3:
      if ((v5 & 0x40) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(fromCopy + 22) & 0x100) == 0)
  {
    goto LABEL_3;
  }

  self->_traceResistanceTemperatureCoeff = *(fromCopy + 10);
  *&self->_has |= 0x100u;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x40) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  self->_systemEquivalentResistance = *(fromCopy + 8);
  *&self->_has |= 0x40u;
  v5 = *(fromCopy + 22);
  if ((v5 & 1) == 0)
  {
LABEL_5:
    if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  self->_downstreamCommonResistance = *(fromCopy + 2);
  *&self->_has |= 1u;
  v5 = *(fromCopy + 22);
  if ((v5 & 2) == 0)
  {
LABEL_6:
    if ((v5 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_19;
  }

LABEL_18:
  self->_downstreamNorthResistance = *(fromCopy + 3);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 22);
  if ((v5 & 8) == 0)
  {
LABEL_7:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

LABEL_19:
  self->_resistanceGGToVcut = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x10) == 0)
  {
LABEL_8:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_resistancePMUToVcut = *(fromCopy + 6);
  *&self->_has |= 0x10u;
  v5 = *(fromCopy + 22);
  if ((v5 & 0x20) == 0)
  {
LABEL_9:
    if ((v5 & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_21:
  self->_resistanceVcutToPmax = *(fromCopy + 7);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 22) & 4) != 0)
  {
LABEL_10:
    self->_resistanceCellTabToGG = *(fromCopy + 4);
    *&self->_has |= 4u;
  }

LABEL_11:
}

@end