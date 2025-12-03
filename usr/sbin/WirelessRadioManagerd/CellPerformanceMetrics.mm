@interface CellPerformanceMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)dealloc;
- (void)writeTo:(id)to;
@end

@implementation CellPerformanceMetrics

- (id)description
{
  v3.receiver = self;
  v3.super_class = CellPerformanceMetrics;
  return [NSString stringWithFormat:@"%@ %@", [(CellPerformanceMetrics *)&v3 description], [(CellPerformanceMetrics *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  gci = self->_gci;
  if (gci)
  {
    [v3 setObject:gci forKey:@"gci"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_dlBandwidth), @"dl_bandwidth"}];
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_5:
      if ((has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nrFr1), @"nr_fr1"}];
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nrFr2), @"nr_fr2"}];
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nrRsrp), @"nr_rsrp"}];
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nrSinr), @"nr_sinr"}];
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nrBw), @"nr_bw"}];
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_stallRate), @"stall_rate"}];
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_latency), @"latency"}];
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_stCount), @"st_count"}];
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_count), @"count"}];
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_29:
    [v4 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_lteRsrpFr2), @"lte_rsrp_fr2"}];
    if ((*&self->_has & 0x200) == 0)
    {
      return v4;
    }

    goto LABEL_16;
  }

LABEL_28:
  [v4 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", self->_lteRsrpFr1), @"lte_rsrp_fr1"}];
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_29;
  }

LABEL_15:
  if ((has & 0x200) != 0)
  {
LABEL_16:
    [v4 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", self->_nrSabw), @"nr_sabw"}];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_gci)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    dlBandwidth = self->_dlBandwidth;
    PBDataWriterWriteUint32Field();
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_5:
      if ((has & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_5;
  }

  nrFr1 = self->_nrFr1;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_6:
    if ((has & 0x100) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  nrFr2 = self->_nrFr2;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_7:
    if ((has & 0x400) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  nrRsrp = self->_nrRsrp;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_8:
    if ((has & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  nrSinr = self->_nrSinr;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_9:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  nrBw = self->_nrBw;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_10:
    if ((has & 4) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  stallRate = self->_stallRate;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_11:
    if ((has & 0x800) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  latency = self->_latency;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_12:
    if ((has & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_26;
  }

LABEL_25:
  stCount = self->_stCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_13:
    if ((has & 8) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_27;
  }

LABEL_26:
  count = self->_count;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_14:
    if ((has & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_28:
    lteRsrpFr2 = self->_lteRsrpFr2;
    PBDataWriterWriteSint32Field();
    if ((*&self->_has & 0x200) == 0)
    {
      return;
    }

    goto LABEL_29;
  }

LABEL_27:
  lteRsrpFr1 = self->_lteRsrpFr1;
  PBDataWriterWriteSint32Field();
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_15:
  if ((has & 0x200) == 0)
  {
    return;
  }

LABEL_29:
  nrSabw = self->_nrSabw;

  PBDataWriterWriteUint32Field();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[2] = [(NSString *)self->_gci copyWithZone:zone];
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 3) = self->_dlBandwidth;
    *(v5 + 34) |= 2u;
    has = self->_has;
    if ((has & 0x40) == 0)
    {
LABEL_3:
      if ((has & 0x80) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else if ((has & 0x40) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 10) = self->_nrFr1;
  *(v5 + 34) |= 0x40u;
  has = self->_has;
  if ((has & 0x80) == 0)
  {
LABEL_4:
    if ((has & 0x100) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  *(v5 + 11) = self->_nrFr2;
  *(v5 + 34) |= 0x80u;
  has = self->_has;
  if ((has & 0x100) == 0)
  {
LABEL_5:
    if ((has & 0x400) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  *(v5 + 12) = self->_nrRsrp;
  *(v5 + 34) |= 0x100u;
  has = self->_has;
  if ((has & 0x400) == 0)
  {
LABEL_6:
    if ((has & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(v5 + 14) = self->_nrSinr;
  *(v5 + 34) |= 0x400u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_7:
    if ((has & 0x1000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(v5 + 9) = self->_nrBw;
  *(v5 + 34) |= 0x20u;
  has = self->_has;
  if ((has & 0x1000) == 0)
  {
LABEL_8:
    if ((has & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v5 + 16) = self->_stallRate;
  *(v5 + 34) |= 0x1000u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_9:
    if ((has & 0x800) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v5 + 6) = self->_latency;
  *(v5 + 34) |= 4u;
  has = self->_has;
  if ((has & 0x800) == 0)
  {
LABEL_10:
    if ((has & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v5 + 15) = self->_stCount;
  *(v5 + 34) |= 0x800u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_11:
    if ((has & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 2) = self->_count;
  *(v5 + 34) |= 1u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_12:
    if ((has & 0x10) == 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    *(v5 + 8) = self->_lteRsrpFr2;
    *(v5 + 34) |= 0x10u;
    if ((*&self->_has & 0x200) == 0)
    {
      return v5;
    }

    goto LABEL_14;
  }

LABEL_26:
  *(v5 + 7) = self->_lteRsrpFr1;
  *(v5 + 34) |= 8u;
  has = self->_has;
  if ((has & 0x10) != 0)
  {
    goto LABEL_27;
  }

LABEL_13:
  if ((has & 0x200) != 0)
  {
LABEL_14:
    *(v5 + 13) = self->_nrSabw;
    *(v5 + 34) |= 0x200u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    gci = self->_gci;
    if (!(gci | *(equal + 2)) || (v5 = [(NSString *)gci isEqual:?]) != 0)
    {
      has = self->_has;
      v8 = *(equal + 34);
      if ((has & 2) != 0)
      {
        if ((v8 & 2) == 0 || self->_dlBandwidth != *(equal + 3))
        {
          goto LABEL_68;
        }
      }

      else if ((v8 & 2) != 0)
      {
LABEL_68:
        LOBYTE(v5) = 0;
        return v5;
      }

      if ((has & 0x40) != 0)
      {
        if ((v8 & 0x40) == 0 || self->_nrFr1 != *(equal + 10))
        {
          goto LABEL_68;
        }
      }

      else if ((v8 & 0x40) != 0)
      {
        goto LABEL_68;
      }

      if ((has & 0x80) != 0)
      {
        if ((v8 & 0x80) == 0 || self->_nrFr2 != *(equal + 11))
        {
          goto LABEL_68;
        }
      }

      else if ((v8 & 0x80) != 0)
      {
        goto LABEL_68;
      }

      if ((*&self->_has & 0x100) != 0)
      {
        if ((*(equal + 34) & 0x100) == 0 || self->_nrRsrp != *(equal + 12))
        {
          goto LABEL_68;
        }
      }

      else if ((*(equal + 34) & 0x100) != 0)
      {
        goto LABEL_68;
      }

      if ((*&self->_has & 0x400) != 0)
      {
        if ((*(equal + 34) & 0x400) == 0 || self->_nrSinr != *(equal + 14))
        {
          goto LABEL_68;
        }
      }

      else if ((*(equal + 34) & 0x400) != 0)
      {
        goto LABEL_68;
      }

      if ((has & 0x20) != 0)
      {
        if ((v8 & 0x20) == 0 || self->_nrBw != *(equal + 9))
        {
          goto LABEL_68;
        }
      }

      else if ((v8 & 0x20) != 0)
      {
        goto LABEL_68;
      }

      if ((*&self->_has & 0x1000) != 0)
      {
        if ((*(equal + 34) & 0x1000) == 0 || self->_stallRate != *(equal + 16))
        {
          goto LABEL_68;
        }
      }

      else if ((*(equal + 34) & 0x1000) != 0)
      {
        goto LABEL_68;
      }

      if ((has & 4) != 0)
      {
        if ((v8 & 4) == 0 || self->_latency != *(equal + 6))
        {
          goto LABEL_68;
        }
      }

      else if ((v8 & 4) != 0)
      {
        goto LABEL_68;
      }

      if ((*&self->_has & 0x800) != 0)
      {
        if ((*(equal + 34) & 0x800) == 0 || self->_stCount != *(equal + 15))
        {
          goto LABEL_68;
        }
      }

      else if ((*(equal + 34) & 0x800) != 0)
      {
        goto LABEL_68;
      }

      if (has)
      {
        if ((v8 & 1) == 0 || self->_count != *(equal + 2))
        {
          goto LABEL_68;
        }
      }

      else if (v8)
      {
        goto LABEL_68;
      }

      if ((has & 8) != 0)
      {
        if ((v8 & 8) == 0 || self->_lteRsrpFr1 != *(equal + 7))
        {
          goto LABEL_68;
        }
      }

      else if ((v8 & 8) != 0)
      {
        goto LABEL_68;
      }

      if ((has & 0x10) != 0)
      {
        if ((v8 & 0x10) == 0 || self->_lteRsrpFr2 != *(equal + 8))
        {
          goto LABEL_68;
        }
      }

      else if ((v8 & 0x10) != 0)
      {
        goto LABEL_68;
      }

      LOBYTE(v5) = (v8 & 0x200) == 0;
      if ((*&self->_has & 0x200) != 0)
      {
        if ((*(equal + 34) & 0x200) == 0 || self->_nrSabw != *(equal + 13))
        {
          goto LABEL_68;
        }

        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_gci hash];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = 2654435761 * self->_dlBandwidth;
    if ((has & 0x40) != 0)
    {
LABEL_3:
      v6 = 2654435761 * self->_nrFr1;
      if ((has & 0x80) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    if ((has & 0x40) != 0)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
  if ((has & 0x80) != 0)
  {
LABEL_4:
    v7 = 2654435761 * self->_nrFr2;
    if ((*&self->_has & 0x100) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  if ((*&self->_has & 0x100) != 0)
  {
LABEL_5:
    v8 = 2654435761 * self->_nrRsrp;
    if ((*&self->_has & 0x400) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

LABEL_18:
  v8 = 0;
  if ((*&self->_has & 0x400) != 0)
  {
LABEL_6:
    v9 = 2654435761 * self->_nrSinr;
    if ((has & 0x20) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_19:
  v9 = 0;
  if ((has & 0x20) != 0)
  {
LABEL_7:
    v10 = 2654435761 * self->_nrBw;
    if ((*&self->_has & 0x1000) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_21;
  }

LABEL_20:
  v10 = 0;
  if ((*&self->_has & 0x1000) != 0)
  {
LABEL_8:
    v11 = 2654435761 * self->_stallRate;
    if ((has & 4) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

LABEL_21:
  v11 = 0;
  if ((has & 4) != 0)
  {
LABEL_9:
    v12 = 2654435761 * self->_latency;
    if ((*&self->_has & 0x800) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

LABEL_22:
  v12 = 0;
  if ((*&self->_has & 0x800) != 0)
  {
LABEL_10:
    v13 = 2654435761 * self->_stCount;
    if (has)
    {
      goto LABEL_11;
    }

    goto LABEL_24;
  }

LABEL_23:
  v13 = 0;
  if (has)
  {
LABEL_11:
    v14 = 2654435761 * self->_count;
    if ((has & 8) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }

LABEL_24:
  v14 = 0;
  if ((has & 8) != 0)
  {
LABEL_12:
    v15 = 2654435761 * self->_lteRsrpFr1;
    if ((has & 0x10) != 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    v16 = 0;
    if ((*&self->_has & 0x200) != 0)
    {
      goto LABEL_14;
    }

LABEL_27:
    v17 = 0;
    return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
  }

LABEL_25:
  v15 = 0;
  if ((has & 0x10) == 0)
  {
    goto LABEL_26;
  }

LABEL_13:
  v16 = 2654435761 * self->_lteRsrpFr2;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = 2654435761 * self->_nrSabw;
  return v5 ^ v3 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17;
}

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_nonatomic(self, a2, 0, 16);
  }

  v3.receiver = self;
  v3.super_class = CellPerformanceMetrics;
  [(CellPerformanceMetrics *)&v3 dealloc];
}

@end