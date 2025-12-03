@interface CLIndoorAvailabilityTileParams
- (CLIndoorAvailabilityTileParams)init;
- (CLIndoorAvailabilityTileParams)initWithAvailabilityTile:(void *)tile;
- (optional<proto::params::LocalizerParameters>)localizerParams;
@end

@implementation CLIndoorAvailabilityTileParams

- (CLIndoorAvailabilityTileParams)init
{
  v3.receiver = self;
  v3.super_class = CLIndoorAvailabilityTileParams;
  return [(CLIndoorAvailabilityTileParams *)&v3 init];
}

- (CLIndoorAvailabilityTileParams)initWithAvailabilityTile:(void *)tile
{
  v9.receiver = self;
  v9.super_class = CLIndoorAvailabilityTileParams;
  v4 = [(CLIndoorAvailabilityTileParams *)&v9 init];
  if (!v4)
  {
    return v4;
  }

  *(v4 + 50) = sub_100170290(tile);
  *(v4 + 84) = sub_100170714(tile);
  *(v4 + 85) = sub_100170624(tile);
  *(v4 + 86) = sub_10017038C(tile);
  *(v4 + 87) = sub_10017047C(tile);
  *(v4 + 88) = sub_10017029C(tile);
  v5 = sub_10017072C(tile);
  v4[328] = v5;
  if (v5)
  {
    sub_10017073C(tile, v10);
    v6 = v16;
    v4[329] = v16 & 1;
    if (v6)
    {
      *(v4 + 89) = v12;
      v4[330] = (v6 & 2) != 0;
      if ((v6 & 2) == 0)
      {
LABEL_5:
        v4[331] = (v6 & 4) != 0;
        if ((v6 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v4[330] = (v6 & 2) != 0;
      if ((v6 & 2) == 0)
      {
        goto LABEL_5;
      }
    }

    *(v4 + 90) = v13;
    v4[331] = (v6 & 4) != 0;
    if ((v6 & 4) == 0)
    {
LABEL_6:
      v4[332] = (v6 & 8) != 0;
      if ((v6 & 8) == 0)
      {
LABEL_8:
        sub_10013E6B8(v10);
        goto LABEL_10;
      }

LABEL_7:
      *(v4 + 92) = v15;
      goto LABEL_8;
    }

LABEL_17:
    *(v4 + 91) = v14;
    v4[332] = (v6 & 8) != 0;
    if ((v6 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  *(v4 + 329) = 0;
LABEL_10:
  *(v4 + 93) = sub_100170768(tile);
  v4[333] = sub_100170774(tile);
  *(v4 + 94) = sub_100170720(tile);
  *(v4 + 95) = sub_100170630(tile);
  *(v4 + 96) = sub_100170398(tile);
  *(v4 + 97) = sub_100170550(tile);
  *(v4 + 98) = sub_1001702A8(tile);
  sub_100170224(tile, v10);
  if (v4[8] == 1)
  {
    if (v10[0])
    {
      sub_10015511C((v4 + 16), &v11);
      goto LABEL_21;
    }

    sub_10014E2CC(v4 + 2);
    v7 = 0;
  }

  else
  {
    if (!v10[0])
    {
      goto LABEL_21;
    }

    sub_10014DE18((v4 + 16), &v11);
    v7 = 1;
  }

  v4[8] = v7;
LABEL_21:
  if (v10[0] == 1)
  {
    sub_10014E2CC(&v11);
  }

  return v4;
}

- (optional<proto::params::LocalizerParameters>)localizerParams
{
  *v2 = 0;
  if (self->_optionalParams.m_initialized)
  {
    v3 = v2;
    self = sub_10014DE18((v2 + 8), &self->_optionalParams.m_storage.dummy_.aligner_ + 7);
    *v3 = 1;
  }

  result.m_storage.dummy_.data[7] = a2;
  result.m_initialized = self;
  *result.m_storage.dummy_.data = *(&self + 1);
  *(&result.m_storage.dummy_.aligner_ + 2) = *(&self + 5);
  result.m_storage.dummy_.data[6] = HIBYTE(self);
  return result;
}

@end