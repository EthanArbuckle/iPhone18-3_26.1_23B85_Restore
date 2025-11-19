@interface ALMotionState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ALMotionState

- (void)dealloc
{
  [(ALMotionState *)self setMotion:0];
  [(ALMotionState *)self setNatalieFeatures:0];
  v3.receiver = self;
  v3.super_class = ALMotionState;
  [(ALMotionState *)&v3 dealloc];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = ALMotionState;
  return [NSString stringWithFormat:@"%@ %@", [(ALMotionState *)&v3 description], [(ALMotionState *)self dictionaryRepresentation]];
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  if (*&self->_has)
  {
    [v3 setObject:+[NSNumber numberWithDouble:](NSNumber forKey:{"numberWithDouble:", self->_timestamp), @"timestamp"}];
  }

  motion = self->_motion;
  if (motion)
  {
    [v3 setObject:-[ALCMMotionContextMotionState dictionaryRepresentation](motion forKey:{"dictionaryRepresentation"), @"motion"}];
  }

  natalieFeatures = self->_natalieFeatures;
  if (natalieFeatures)
  {
    [v3 setObject:-[ALCLNatalieFeatures dictionaryRepresentation](natalieFeatures forKey:{"dictionaryRepresentation"), @"natalieFeatures"}];
  }

  [v3 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", self->_regularEntry), @"regularEntry"}];
  return v3;
}

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (!self->_motion)
  {
    sub_1018912C4();
  }

  PBDataWriterWriteSubmessage();
  if (self->_natalieFeatures)
  {
    PBDataWriterWriteSubmessage();
  }

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 1) = *&self->_timestamp;
    *(a3 + 36) |= 1u;
  }

  [a3 setMotion:self->_motion];
  if (self->_natalieFeatures)
  {
    [a3 setNatalieFeatures:?];
  }

  *(a3 + 32) = self->_regularEntry;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    v5[1] = *&self->_timestamp;
    *(v5 + 36) |= 1u;
  }

  v6[2] = [(ALCMMotionContextMotionState *)self->_motion copyWithZone:a3];
  v6[3] = [(ALCLNatalieFeatures *)self->_natalieFeatures copyWithZone:a3];
  *(v6 + 32) = self->_regularEntry;
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(a3 + 36) & 1) == 0 || self->_timestamp != *(a3 + 1))
      {
        goto LABEL_12;
      }
    }

    else if (*(a3 + 36))
    {
LABEL_12:
      LOBYTE(v5) = 0;
      return v5;
    }

    motion = self->_motion;
    if (!(motion | *(a3 + 2)) || (v5 = [(ALCMMotionContextMotionState *)motion isEqual:?]) != 0)
    {
      natalieFeatures = self->_natalieFeatures;
      if (!(natalieFeatures | *(a3 + 3)) || (v5 = [(ALCLNatalieFeatures *)natalieFeatures isEqual:?]) != 0)
      {
        LOBYTE(v5) = self->_regularEntry == *(a3 + 32);
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v2.i64 = floor(timestamp + 0.5);
    v7 = (timestamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(ALCMMotionContextMotionState *)self->_motion hash]^ v5;
  return v9 ^ [(ALCLNatalieFeatures *)self->_natalieFeatures hash]^ (2654435761 * self->_regularEntry);
}

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 36))
  {
    self->_timestamp = *(a3 + 1);
    *&self->_has |= 1u;
  }

  motion = self->_motion;
  v6 = *(a3 + 2);
  if (motion)
  {
    if (v6)
    {
      [(ALCMMotionContextMotionState *)motion mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ALMotionState *)self setMotion:?];
  }

  natalieFeatures = self->_natalieFeatures;
  v8 = *(a3 + 3);
  if (natalieFeatures)
  {
    if (v8)
    {
      [(ALCLNatalieFeatures *)natalieFeatures mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(ALMotionState *)self setNatalieFeatures:?];
  }

  self->_regularEntry = *(a3 + 32);
}

@end