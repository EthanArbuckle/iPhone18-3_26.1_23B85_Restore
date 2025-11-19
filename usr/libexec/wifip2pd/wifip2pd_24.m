uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.isDFSProxyActive.setter(char a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 128)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.isHomeTheaterActive.setter(char a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 132)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.has2GInChannelSequence.setter(char a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 136)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.sidecarServiceTypesBitMap.setter(char a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 140)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.rtgID.getter()
{
  v1 = (v0 + *(type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0) + 144));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.rtgID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0) + 144));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.sameSSID.setter(char a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 148)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.skipSteeringCountRSSI.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 152)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.skipSteeringCountRefs.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 156)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.skipSteeringCountDiffSSID.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 160)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.skipSteeringCountChan.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 164)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.reducedAWDLBandwidth.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 168)) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Configuration.reducedBandwidthPercentSession.setter(double a1)
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  *(v1 + *(result + 172)) = a1;
  return result;
}

void AWDLStatistics.LowLatencyStatistics.Configuration.hash(into:)()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = (&v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher._combine(_:)(*v0);
  v6 = *(v0 + 2);
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  v7 = *(v0 + 32) | (*(v0 + 36) << 32);
  if ((v7 & 0xFF00000000) == 0x300000000)
  {
    v8 = 0;
LABEL_3:
    Hasher._combine(_:)(v8);
    goto LABEL_4;
  }

  v19 = v7 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(0x801004u >> ((v7 >> 29) & 0xF8));
  if ((v7 >> 40) <= 3)
  {
    if (v19 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v19 != 3)
      {
        goto LABEL_73;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v19)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        break;
      default:
LABEL_73:
        Hasher._combine(_:)(2uLL);
        v8 = BYTE5(v7) & 1;
        goto LABEL_3;
    }
  }

LABEL_4:
  v9 = *(v0 + 40) | (*(v0 + 44) << 32);
  if ((v9 & 0xFF00000000) == 0x300000000)
  {
    v10 = 0;
LABEL_6:
    Hasher._combine(_:)(v10);
    goto LABEL_7;
  }

  v20 = v9 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(0x801004u >> ((v9 >> 29) & 0xF8));
  if ((v9 >> 40) <= 3)
  {
    if (v20 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v20 != 3)
      {
        goto LABEL_74;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v20)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        break;
      default:
LABEL_74:
        Hasher._combine(_:)(2uLL);
        v10 = BYTE5(v9) & 1;
        goto LABEL_6;
    }
  }

LABEL_7:
  v11 = *(v0 + 48) | (*(v0 + 52) << 32);
  if ((v11 & 0xFF00000000) == 0x300000000)
  {
    v12 = 0;
LABEL_9:
    Hasher._combine(_:)(v12);
    goto LABEL_10;
  }

  v21 = v11 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(0x801004u >> ((v11 >> 29) & 0xF8));
  if ((v11 >> 40) <= 3)
  {
    if (v21 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v21 != 3)
      {
        goto LABEL_75;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v21)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        break;
      default:
LABEL_75:
        Hasher._combine(_:)(2uLL);
        v12 = BYTE5(v11) & 1;
        goto LABEL_9;
    }
  }

LABEL_10:
  v13 = *(v0 + 56) | (*(v0 + 60) << 32);
  if ((v13 & 0xFF00000000) == 0x300000000)
  {
    v14 = 0;
LABEL_12:
    Hasher._combine(_:)(v14);
    goto LABEL_13;
  }

  v22 = v13 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(0x801004u >> ((v13 >> 29) & 0xF8));
  if ((v13 >> 40) <= 3)
  {
    if (v22 == 2)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      if (v22 != 3)
      {
        goto LABEL_76;
      }

      Hasher._combine(_:)(1uLL);
    }
  }

  else
  {
    switch(v22)
    {
      case 4:
        Hasher._combine(_:)(3uLL);
        break;
      case 5:
        Hasher._combine(_:)(4uLL);
        break;
      case 6:
        Hasher._combine(_:)(5uLL);
        break;
      default:
LABEL_76:
        Hasher._combine(_:)(2uLL);
        v14 = BYTE5(v13) & 1;
        goto LABEL_12;
    }
  }

LABEL_13:
  Hasher._combine(_:)(*(v0 + 64));
  Hasher._combine(_:)(*(v0 + 72));
  Hasher._combine(_:)(*(v0 + 80));
  Hasher._combine(_:)(*(v0 + 88));
  Hasher._combine(_:)(*(v0 + 96));
  Hasher._combine(_:)(*(v0 + 104));
  Hasher._combine(_:)(*(v0 + 112));
  v15 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  (*(v2 + 16))(v5, v0 + v15[20], v1);
  v16 = (*(v2 + 88))(v5, v1);
  if (v16 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v17 = *v5;
    v18 = 1000000000;
LABEL_39:
    v23 = v17 * v18;
    v24 = (v17 * v18) >> 64 != (v17 * v18) >> 63;
    v25 = v17 <= 0;
    v26 = 0x7FFFFFFFFFFFFFFFLL;
    if (v25)
    {
      v26 = 0x8000000000000000;
    }

    if (v24)
    {
      v27 = v26;
    }

    else
    {
      v27 = v23;
    }

    goto LABEL_44;
  }

  if (v16 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v17 = *v5;
    v18 = 1000000;
    goto LABEL_39;
  }

  if (v16 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v17 = *v5;
    v18 = 1000;
    goto LABEL_39;
  }

  if (v16 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v27 = *v5;
  }

  else
  {
    if (v16 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v2 + 8))(v5, v1);
    }

    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_44:
  Hasher._combine(_:)(v27);
  Hasher._combine(_:)(*(v0 + v15[21]));
  Hasher._combine(_:)(*(v0 + v15[22]));
  Hasher._combine(_:)(*(v0 + v15[23]));
  Hasher._combine(_:)(*(v0 + v15[24]));
  Hasher._combine(_:)(*(v0 + v15[25]));
  Hasher._combine(_:)(*(v0 + v15[26]));
  Hasher._combine(_:)(*(v0 + v15[27]));
  Hasher._combine(_:)(*(v0 + v15[28]));
  Hasher._combine(_:)(*(v0 + v15[29]));
  Hasher._combine(_:)(*(v0 + v15[30]));
  Hasher._combine(_:)(*(v0 + v15[31]));
  Hasher._combine(_:)(*(v0 + v15[32]));
  Hasher._combine(_:)(*(v0 + v15[33]));
  Hasher._combine(_:)(*(v0 + v15[34]));
  Hasher._combine(_:)(*(v0 + v15[35]));
  v28 = (v0 + v15[36]);
  v29 = *v28;
  v30 = v28[1];
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + v15[37]));
  Hasher._combine(_:)(*(v0 + v15[38]));
  Hasher._combine(_:)(*(v0 + v15[39]));
  Hasher._combine(_:)(*(v0 + v15[40]));
  Hasher._combine(_:)(*(v0 + v15[41]));
  Hasher._combine(_:)(*(v0 + v15[42]));
  v31 = *(v0 + v15[43]);
  if (v31 == 0.0)
  {
    v31 = 0.0;
  }

  Hasher._combine(_:)(*&v31);
}

Swift::Int AWDLStatistics.LowLatencyStatistics.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLStatistics.LowLatencyStatistics.Configuration.hash(into:)();
  return Hasher._finalize()();
}

void AWDLStatistics.LowLatencyStatistics.Traffic.Counts.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v0[1]);
  Hasher._combine(_:)(v0[2]);
  Hasher._combine(_:)(v0[3]);
  Hasher._combine(_:)(v0[4]);
  Hasher._combine(_:)(v0[5]);
  Hasher._combine(_:)(v0[6]);
  Hasher._combine(_:)(v0[7]);
  Hasher._combine(_:)(v0[8]);
  Hasher._combine(_:)(v0[9]);
  Hasher._combine(_:)(v0[10]);
  Hasher._combine(_:)(v0[11]);
  Hasher._combine(_:)(v0[12]);
  Hasher._combine(_:)(v0[13]);
  Hasher._combine(_:)(v0[14]);
  Hasher._combine(_:)(v0[15]);
  Hasher._combine(_:)(v0[16]);
  Hasher._combine(_:)(v0[17]);
  Hasher._combine(_:)(v0[18]);
  Hasher._combine(_:)(v0[19]);
  Hasher._combine(_:)(v0[20]);
  Hasher._combine(_:)(v0[21]);
  Hasher._combine(_:)(v0[22]);
  Hasher._combine(_:)(v0[23]);
  Hasher._combine(_:)(v0[24]);
  Hasher._combine(_:)(v0[25]);
  Hasher._combine(_:)(v0[26]);
}

Swift::Int AWDLStatistics.LowLatencyStatistics.Traffic.Counts.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLStatistics.LowLatencyStatistics.Traffic.Counts.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001DCD14()
{
  Hasher.init(_seed:)();
  AWDLStatistics.LowLatencyStatistics.Traffic.Counts.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_1001DCD50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v15[10] = *(a1 + 160);
  v15[11] = v2;
  v15[12] = *(a1 + 192);
  v16 = *(a1 + 208);
  v3 = *(a1 + 112);
  v15[6] = *(a1 + 96);
  v15[7] = v3;
  v4 = *(a1 + 144);
  v15[8] = *(a1 + 128);
  v15[9] = v4;
  v5 = *(a1 + 48);
  v15[2] = *(a1 + 32);
  v15[3] = v5;
  v6 = *(a1 + 80);
  v15[4] = *(a1 + 64);
  v15[5] = v6;
  v7 = *(a1 + 16);
  v15[0] = *a1;
  v15[1] = v7;
  v8 = *(a2 + 176);
  v17[10] = *(a2 + 160);
  v17[11] = v8;
  v17[12] = *(a2 + 192);
  v18 = *(a2 + 208);
  v9 = *(a2 + 112);
  v17[6] = *(a2 + 96);
  v17[7] = v9;
  v10 = *(a2 + 144);
  v17[8] = *(a2 + 128);
  v17[9] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v12;
  v13 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v13;
  return _s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV6CountsV23__derived_struct_equalsySbAI_AItFZ_0(v15, v17);
}

uint64_t IEEE80211InformationElement.RSNCapability.pmkIDs.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.txDataRate.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.txLatencyMin.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.txLatencyMax.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

uint64_t NANCoreAnalyticsPerformanceStatistics.txLatencyMean.setter(uint64_t a1)
{
  v3 = *(v1 + 64);

  *(v1 + 64) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.txPacketExpiry.setter(uint64_t a1)
{
  v3 = *(v1 + 72);

  *(v1 + 72) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.txConsecutiveErrors.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.txCCA.setter(uint64_t a1)
{
  v3 = *(v1 + 88);

  *(v1 + 88) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.requeueCount.setter(uint64_t a1)
{
  v3 = *(v1 + 96);

  *(v1 + 96) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.rxTotalDelay.setter(uint64_t a1)
{
  v3 = *(v1 + 104);

  *(v1 + 104) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.rxIPCDelay.setter(uint64_t a1)
{
  v3 = *(v1 + 112);

  *(v1 + 112) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.rxFWDelay.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.rxDataRate.setter(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.rxRSSI.setter(uint64_t a1)
{
  v3 = *(v1 + 136);

  *(v1 + 136) = a1;
  return result;
}

void AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.hash(into:)(uint64_t a1)
{
  sub_1000DF4A4(a1, *v1);
  sub_1000DF4A4(a1, v1[1]);
  sub_1000DF4A4(a1, v1[2]);
  sub_1000DF4A4(a1, v1[3]);
  sub_1000DF4A4(a1, v1[4]);
  sub_1000DF4A4(a1, v1[5]);
  sub_1000DF4A4(a1, v1[6]);
  sub_1000DF4A4(a1, v1[7]);
  sub_1000DF4A4(a1, v1[8]);
  sub_1000DF4A4(a1, v1[9]);
  sub_1000DF4A4(a1, v1[10]);
  sub_1000DF4A4(a1, v1[11]);
  sub_1000DF4A4(a1, v1[12]);
  sub_1000DF4A4(a1, v1[13]);
  sub_1000DF4A4(a1, v1[14]);
  sub_1000DF4A4(a1, v1[15]);
  sub_1000DF4A4(a1, v1[16]);
  v3 = v1[17];

  sub_1000DF4A4(a1, v3);
}

Swift::Int AWDLStatistics.LowLatencyStatistics.Traffic.Histograms.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_1000DF4A4(v2, *v0);
  sub_1000DF4A4(v2, v0[1]);
  sub_1000DF4A4(v2, v0[2]);
  sub_1000DF4A4(v2, v0[3]);
  sub_1000DF4A4(v2, v0[4]);
  sub_1000DF4A4(v2, v0[5]);
  sub_1000DF4A4(v2, v0[6]);
  sub_1000DF4A4(v2, v0[7]);
  sub_1000DF4A4(v2, v0[8]);
  sub_1000DF4A4(v2, v0[9]);
  sub_1000DF4A4(v2, v0[10]);
  sub_1000DF4A4(v2, v0[11]);
  sub_1000DF4A4(v2, v0[12]);
  sub_1000DF4A4(v2, v0[13]);
  sub_1000DF4A4(v2, v0[14]);
  sub_1000DF4A4(v2, v0[15]);
  sub_1000DF4A4(v2, v0[16]);
  sub_1000DF4A4(v2, v0[17]);
  return Hasher._finalize()();
}

void sub_1001DD2F4(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v15 = v1[9];
  v16 = v1[10];
  v17 = v1[11];
  v18 = v1[12];
  v12 = v1[15];
  v19 = v1[13];
  v20 = v1[14];
  v13 = v1[16];
  v14 = v1[17];
  v21 = v12;
  v22 = v13;
  sub_1000DF4A4(a1, v3);
  sub_1000DF4A4(a1, v4);
  sub_1000DF4A4(a1, v5);
  sub_1000DF4A4(a1, v6);
  sub_1000DF4A4(a1, v7);
  sub_1000DF4A4(a1, v8);
  sub_1000DF4A4(a1, v9);
  sub_1000DF4A4(a1, v10);
  sub_1000DF4A4(a1, v11);
  sub_1000DF4A4(a1, v15);
  sub_1000DF4A4(a1, v16);
  sub_1000DF4A4(a1, v17);
  sub_1000DF4A4(a1, v18);
  sub_1000DF4A4(a1, v19);
  sub_1000DF4A4(a1, v20);
  sub_1000DF4A4(a1, v21);
  sub_1000DF4A4(a1, v22);

  sub_1000DF4A4(a1, v14);
}

Swift::Int sub_1001DD44C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[8];
  v14 = v0[9];
  v15 = v0[10];
  v16 = v0[11];
  v17 = v0[12];
  v10 = v0[15];
  v18 = v0[13];
  v19 = v0[14];
  v11 = v0[16];
  v12 = v0[17];
  v20 = v10;
  v21 = v11;
  Hasher.init(_seed:)();
  sub_1000DF4A4(v22, v1);
  sub_1000DF4A4(v22, v2);
  sub_1000DF4A4(v22, v3);
  sub_1000DF4A4(v22, v4);
  sub_1000DF4A4(v22, v5);
  sub_1000DF4A4(v22, v6);
  sub_1000DF4A4(v22, v7);
  sub_1000DF4A4(v22, v8);
  sub_1000DF4A4(v22, v9);
  sub_1000DF4A4(v22, v14);
  sub_1000DF4A4(v22, v15);
  sub_1000DF4A4(v22, v16);
  sub_1000DF4A4(v22, v17);
  sub_1000DF4A4(v22, v18);
  sub_1000DF4A4(v22, v19);
  sub_1000DF4A4(v22, v20);
  sub_1000DF4A4(v22, v21);
  sub_1000DF4A4(v22, v12);
  return Hasher._finalize()();
}

unint64_t sub_1001DD5AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[7];
  v11[6] = a1[6];
  v11[7] = v2;
  v11[8] = a1[8];
  v3 = a1[3];
  v11[2] = a1[2];
  v11[3] = v3;
  v4 = a1[5];
  v11[4] = a1[4];
  v11[5] = v4;
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[7];
  v12[6] = a2[6];
  v12[7] = v6;
  v12[8] = a2[8];
  v7 = a2[3];
  v12[2] = a2[2];
  v12[3] = v7;
  v8 = a2[5];
  v12[4] = a2[4];
  v12[5] = v8;
  v9 = a2[1];
  v12[0] = *a2;
  v12[1] = v9;
  return _s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV10HistogramsV23__derived_struct_equalsySbAI_AItFZ_0(v11, v12) & 1;
}

__n128 AWDLStatistics.LowLatencyStatistics.Traffic.counts.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *(a1 + 160) = *(v1 + 160);
  *(a1 + 176) = v2;
  *(a1 + 192) = *(v1 + 192);
  *(a1 + 208) = *(v1 + 208);
  v3 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v3;
  v4 = *(v1 + 144);
  *(a1 + 128) = *(v1 + 128);
  *(a1 + 144) = v4;
  v5 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v5;
  v6 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v6;
  result = *v1;
  v8 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v8;
  return result;
}

__n128 AWDLStatistics.LowLatencyStatistics.Traffic.counts.setter(uint64_t a1)
{
  v2 = *(a1 + 176);
  *(v1 + 160) = *(a1 + 160);
  *(v1 + 176) = v2;
  *(v1 + 192) = *(a1 + 192);
  *(v1 + 208) = *(a1 + 208);
  v3 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v3;
  v4 = *(a1 + 144);
  *(v1 + 128) = *(a1 + 128);
  *(v1 + 144) = v4;
  v5 = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = v5;
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  result = *a1;
  v8 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v8;
  return result;
}

uint64_t static AWDLStatistics.LowLatencyStatistics.Traffic.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 176);
  v35[10] = *(a1 + 160);
  v35[11] = v4;
  v35[12] = *(a1 + 192);
  v36 = *(a1 + 208);
  v5 = *(a1 + 112);
  v35[6] = *(a1 + 96);
  v35[7] = v5;
  v6 = *(a1 + 144);
  v35[8] = *(a1 + 128);
  v35[9] = v6;
  v7 = *(a1 + 48);
  v35[2] = *(a1 + 32);
  v35[3] = v7;
  v8 = *(a1 + 80);
  v35[4] = *(a1 + 64);
  v35[5] = v8;
  v9 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v9;
  v10 = *(a2 + 176);
  v33[10] = *(a2 + 160);
  v33[11] = v10;
  v33[12] = *(a2 + 192);
  v34 = *(a2 + 208);
  v11 = *(a2 + 112);
  v33[6] = *(a2 + 96);
  v33[7] = v11;
  v12 = *(a2 + 144);
  v33[8] = *(a2 + 128);
  v33[9] = v12;
  v13 = *(a2 + 48);
  v33[2] = *(a2 + 32);
  v33[3] = v13;
  v14 = *(a2 + 80);
  v33[4] = *(a2 + 64);
  v33[5] = v14;
  v15 = *(a2 + 16);
  v33[0] = *a2;
  v33[1] = v15;
  if (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV6CountsV23__derived_struct_equalsySbAI_AItFZ_0(v35, v33))
  {
    v16 = *(a1 + 232);
    v17 = *(a1 + 248);
    v32[0] = *(a1 + 216);
    v32[1] = v16;
    v18 = *(a1 + 296);
    v19 = *(a1 + 328);
    v20 = *(a1 + 344);
    v32[6] = *(a1 + 312);
    v32[7] = v19;
    v32[8] = v20;
    v21 = *(a1 + 264);
    v22 = *(a1 + 280);
    v32[2] = v17;
    v32[3] = v21;
    v32[4] = v22;
    v32[5] = v18;
    v23 = *(a2 + 296);
    v24 = *(a2 + 328);
    v25 = *(a2 + 344);
    v31[6] = *(a2 + 312);
    v31[7] = v24;
    v31[8] = v25;
    v26 = *(a2 + 264);
    v27 = *(a2 + 280);
    v31[2] = *(a2 + 248);
    v31[3] = v26;
    v28 = *(a2 + 232);
    v31[4] = v27;
    v31[5] = v23;
    v31[0] = *(a2 + 216);
    v31[1] = v28;
    v29 = _s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV10HistogramsV23__derived_struct_equalsySbAI_AItFZ_0(v32, v31);
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

void AWDLStatistics.LowLatencyStatistics.Traffic.hash(into:)(uint64_t a1)
{
  AWDLStatistics.LowLatencyStatistics.Traffic.Counts.hash(into:)();
  v3 = v1[27];
  v4 = v1[28];
  v5 = v1[29];
  v6 = v1[30];
  v7 = v1[31];
  v8 = v1[32];
  v9 = v1[33];
  v10 = v1[34];
  v11 = v1[35];
  v15 = v1[36];
  v16 = v1[37];
  v17 = v1[38];
  v18 = v1[39];
  v12 = v1[42];
  v19 = v1[40];
  v20 = v1[41];
  v13 = v1[43];
  v14 = v1[44];
  v21 = v12;
  v22 = v13;
  sub_1000DF4A4(a1, v3);
  sub_1000DF4A4(a1, v4);
  sub_1000DF4A4(a1, v5);
  sub_1000DF4A4(a1, v6);
  sub_1000DF4A4(a1, v7);
  sub_1000DF4A4(a1, v8);
  sub_1000DF4A4(a1, v9);
  sub_1000DF4A4(a1, v10);
  sub_1000DF4A4(a1, v11);
  sub_1000DF4A4(a1, v15);
  sub_1000DF4A4(a1, v16);
  sub_1000DF4A4(a1, v17);
  sub_1000DF4A4(a1, v18);
  sub_1000DF4A4(a1, v19);
  sub_1000DF4A4(a1, v20);
  sub_1000DF4A4(a1, v21);
  sub_1000DF4A4(a1, v22);

  sub_1000DF4A4(a1, v14);
}

Swift::Int AWDLStatistics.LowLatencyStatistics.Traffic.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLStatistics.LowLatencyStatistics.Traffic.Counts.hash(into:)();
  v1 = v0[27];
  v2 = v0[28];
  v3 = v0[29];
  v4 = v0[30];
  v5 = v0[31];
  v6 = v0[32];
  v7 = v0[33];
  v8 = v0[34];
  v9 = v0[35];
  v10 = v0[36];
  v14 = v0[37];
  v15 = v0[38];
  v16 = v0[39];
  v17 = v0[40];
  v18 = v0[41];
  v19 = v0[42];
  v11 = v0[43];
  v12 = v0[44];
  v20 = v11;
  sub_1000DF4A4(v21, v1);
  sub_1000DF4A4(v21, v2);
  sub_1000DF4A4(v21, v3);
  sub_1000DF4A4(v21, v4);
  sub_1000DF4A4(v21, v5);
  sub_1000DF4A4(v21, v6);
  sub_1000DF4A4(v21, v7);
  sub_1000DF4A4(v21, v8);
  sub_1000DF4A4(v21, v9);
  sub_1000DF4A4(v21, v10);
  sub_1000DF4A4(v21, v14);
  sub_1000DF4A4(v21, v15);
  sub_1000DF4A4(v21, v16);
  sub_1000DF4A4(v21, v17);
  sub_1000DF4A4(v21, v18);
  sub_1000DF4A4(v21, v19);
  sub_1000DF4A4(v21, v20);
  sub_1000DF4A4(v21, v12);
  return Hasher._finalize()();
}

Swift::Int sub_1001DDAF8()
{
  Hasher.init(_seed:)();
  AWDLStatistics.LowLatencyStatistics.Traffic.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1001DDB34(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 176);
  v30[10] = *(a1 + 160);
  v30[11] = v2;
  v30[12] = *(a1 + 192);
  v31 = *(a1 + 208);
  v3 = *(a1 + 112);
  v30[6] = *(a1 + 96);
  v30[7] = v3;
  v4 = *(a1 + 144);
  v30[8] = *(a1 + 128);
  v30[9] = v4;
  v5 = *(a1 + 48);
  v30[2] = *(a1 + 32);
  v30[3] = v5;
  v6 = *(a1 + 80);
  v30[4] = *(a1 + 64);
  v30[5] = v6;
  v7 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v7;
  v8 = *(a1 + 296);
  v9 = *(a1 + 328);
  v10 = *(a1 + 344);
  v28[6] = *(a1 + 312);
  v28[7] = v9;
  v28[8] = v10;
  v11 = *(a1 + 232);
  v12 = *(a1 + 264);
  v13 = *(a1 + 280);
  v28[2] = *(a1 + 248);
  v28[3] = v12;
  v28[4] = v13;
  v28[5] = v8;
  v28[0] = *(a1 + 216);
  v28[1] = v11;
  v14 = *(a2 + 176);
  v32[10] = *(a2 + 160);
  v32[11] = v14;
  v32[12] = *(a2 + 192);
  v33 = *(a2 + 208);
  v15 = *(a2 + 112);
  v32[6] = *(a2 + 96);
  v32[7] = v15;
  v16 = *(a2 + 144);
  v32[8] = *(a2 + 128);
  v32[9] = v16;
  v17 = *(a2 + 48);
  v32[2] = *(a2 + 32);
  v32[3] = v17;
  v18 = *(a2 + 80);
  v32[4] = *(a2 + 64);
  v32[5] = v18;
  v19 = *(a2 + 16);
  v32[0] = *a2;
  v32[1] = v19;
  v20 = *(a2 + 296);
  v21 = *(a2 + 328);
  v22 = *(a2 + 344);
  v29[6] = *(a2 + 312);
  v29[7] = v21;
  v29[8] = v22;
  v23 = *(a2 + 264);
  v24 = *(a2 + 280);
  v29[2] = *(a2 + 248);
  v29[3] = v23;
  v25 = *(a2 + 232);
  v29[4] = v24;
  v29[5] = v20;
  v29[0] = *(a2 + 216);
  v29[1] = v25;
  if (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV6CountsV23__derived_struct_equalsySbAI_AItFZ_0(v30, v32))
  {
    v26 = _s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV10HistogramsV23__derived_struct_equalsySbAI_AItFZ_0(v28, v29);
  }

  else
  {
    v26 = 0;
  }

  return v26 & 1;
}

uint64_t AWDLStatistics.LowLatencyStatistics.traffic.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AWDLStatistics.LowLatencyStatistics(0) + 20);

  return sub_1001E9CFC(v3, a1);
}

uint64_t AWDLStatistics.LowLatencyStatistics.traffic.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for AWDLStatistics.LowLatencyStatistics(0) + 20);

  return sub_1001E9D34(a1, v3);
}

uint64_t sub_1001DDD44(uint64_t result, unsigned __int8 a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  v6 = 0;
  v7 = result + 32;
  v30 = a2;
  while (1)
  {
    if (a2 > 0x10u)
    {
      if (v6 >= 4)
      {
        return result;
      }
    }

    else if (v6 >= qword_100494DC0[v30])
    {
      return result;
    }

    v11 = *(v7 + 8 * v6);
    *&v33 = sub_1001E195C(a2);
    *(&v33 + 1) = v12;
    v13._countAndFlagsBits = 1852400223;
    v13._object = 0xE400000000000000;
    String.append(_:)(v13);
    *&v32[0] = v6;
    v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v14);

    v15 = v33;
    v34 = &type metadata for Double;
    *&v33 = v11;
    sub_100085188(&v33, v32);
    v16 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *a3;
    v31 = *a3;
    v19 = sub_1000102E8(v15, *(&v15 + 1));
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v18[3] < v24)
    {
      sub_10018D424(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1000102E8(v15, *(&v15 + 1));
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_22;
      }

LABEL_14:
      if (v25)
      {
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v29 = v19;
    sub_100195788();
    v19 = v29;
    if (v25)
    {
LABEL_3:
      v8 = v19;

      v9 = v31;
      v10 = (v31[7] + 32 * v8);
      sub_100002A00(v10);
      result = sub_100085188(v32, v10);
      goto LABEL_4;
    }

LABEL_15:
    v9 = v31;
    v31[(v19 >> 6) + 8] |= 1 << v19;
    *(v31[6] + 16 * v19) = v15;
    result = sub_100085188(v32, (v31[7] + 32 * v19));
    v27 = v31[2];
    v23 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v23)
    {
      goto LABEL_21;
    }

    v31[2] = v28;
LABEL_4:
    ++v6;
    *a3 = v9;
    if (v3 == v6)
    {
      return result;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AWDLStatistics.LowLatencyStatistics.eventPayload.getter()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v88 = &_swiftEmptyDictionarySingleton;
  v89 = &_swiftEmptyDictionarySingleton;
  v3 = *v0;
  v87 = &type metadata for Bool;
  LOBYTE(v85) = v3;
  sub_100073460(&v85, 0);
  v4 = *(v0 + 1);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100483520;
  *(v5 + 32) = v4;
  v85 = v5;
  static String.Encoding.utf8.getter();
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_1001E9D6C();
  v6 = String.init<A>(bytes:encoding:)();
  v8 = v7;

  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0xE000000000000000;
  v87 = &type metadata for String;
  if (v8)
  {
    v10 = v8;
  }

  v85 = v9;
  v86 = v10;
  sub_100073460(&v85, 1);
  v11 = *(v0 + 1);
  v87 = &type metadata for Int;
  v85 = v11;
  sub_100073460(&v85, 2);
  v12 = *(v0 + 2);
  v87 = &type metadata for Int;
  v85 = v12;
  sub_100073460(&v85, 3);
  v13 = *(v0 + 3);
  v87 = &type metadata for Int;
  v85 = v13;
  sub_100073460(&v85, 4);
  v14 = *(v0 + 8) | (*(v0 + 18) << 32);
  v87 = &type metadata for UInt32;
  if ((v14 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v14) = 0;
  }

  LODWORD(v85) = v14;
  sub_100073460(&v85, 5);
  v15 = *(v0 + 10) | (*(v0 + 22) << 32);
  v87 = &type metadata for UInt32;
  if ((v15 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v15) = 0;
  }

  LODWORD(v85) = v15;
  sub_100073460(&v85, 6);
  v16 = *(v0 + 12) | (*(v0 + 26) << 32);
  v87 = &type metadata for UInt32;
  if ((v16 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v16) = 0;
  }

  LODWORD(v85) = v16;
  sub_100073460(&v85, 7);
  v17 = *(v0 + 14) | (*(v0 + 30) << 32);
  v87 = &type metadata for UInt32;
  if ((v17 & 0xFF00000000) == 0x300000000)
  {
    LODWORD(v17) = 0;
  }

  LODWORD(v85) = v17;
  sub_100073460(&v85, 8);
  v18 = *(v0 + 8);
  v87 = &type metadata for Int;
  v85 = v18;
  sub_100073460(&v85, 9);
  v19 = *(v0 + 9);
  v87 = &type metadata for Int;
  v85 = v19;
  sub_100073460(&v85, 10);
  v20 = *(v0 + 10);
  v87 = &type metadata for Int;
  v85 = v20;
  sub_100073460(&v85, 11);
  v21 = *(v0 + 11);
  v87 = &type metadata for Int;
  v85 = v21;
  sub_100073460(&v85, 12);
  v22 = *(v0 + 12);
  v87 = &type metadata for Int;
  v85 = v22;
  sub_100073460(&v85, 13);
  v23 = *(v0 + 13);
  v87 = &type metadata for Int;
  v85 = v23;
  sub_100073460(&v85, 14);
  v24 = v0[112];
  v87 = &type metadata for Bool;
  LOBYTE(v85) = v24;
  sub_100073460(&v85, 15);
  v25 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  v26 = &v0[v25[20]];
  v27 = DispatchTimeInterval.rawSeconds.getter();
  v87 = &type metadata for Int;
  v85 = v27;
  sub_100073460(&v85, 16);
  v28 = *&v1[v25[21]];
  v87 = &type metadata for Int;
  v85 = v28;
  sub_100073460(&v85, 17);
  v29 = *&v1[v25[22]];
  v87 = &type metadata for Int;
  v85 = v29;
  sub_100073460(&v85, 18);
  v30 = *&v1[v25[23]];
  v87 = &type metadata for Int;
  v85 = v30;
  sub_100073460(&v85, 19);
  v31 = *&v1[v25[24]];
  v87 = &type metadata for Int;
  v85 = v31;
  sub_100073460(&v85, 20);
  v32 = *&v1[v25[25]];
  v87 = &type metadata for Int;
  v85 = v32;
  sub_100073460(&v85, 21);
  v33 = *&v1[v25[26]];
  v87 = &type metadata for Int;
  v85 = v33;
  sub_100073460(&v85, 22);
  v34 = *&v1[v25[27]];
  v87 = &type metadata for Int;
  v85 = v34;
  sub_100073460(&v85, 23);
  v35 = *&v1[v25[28]];
  v87 = &type metadata for Int;
  v85 = v35;
  sub_100073460(&v85, 24);
  v36 = *&v1[v25[29]];
  v87 = &type metadata for UInt32;
  LODWORD(v85) = v36;
  sub_100073460(&v85, 25);
  v37 = v1[v25[30]];
  v87 = &type metadata for Bool;
  LOBYTE(v85) = v37;
  sub_100073460(&v85, 26);
  v38 = v1[v25[31]];
  v87 = &type metadata for Bool;
  LOBYTE(v85) = v38;
  sub_100073460(&v85, 27);
  v39 = v1[v25[32]];
  v87 = &type metadata for Bool;
  LOBYTE(v85) = v39;
  sub_100073460(&v85, 28);
  v40 = v1[v25[33]];
  v87 = &type metadata for Bool;
  LOBYTE(v85) = v40;
  sub_100073460(&v85, 29);
  v41 = v1[v25[34]];
  v87 = &type metadata for Bool;
  LOBYTE(v85) = v41;
  sub_100073460(&v85, 30);
  v42 = v1[v25[35]];
  v87 = &type metadata for UInt8;
  LOBYTE(v85) = v42;
  sub_100073460(&v85, 31);
  v43 = &v1[v25[36]];
  v45 = *v43;
  v44 = v43[1];
  v87 = &type metadata for String;
  v85 = v45;
  v86 = v44;

  sub_100073460(&v85, 32);
  v46 = v1[v25[37]];
  v87 = &type metadata for Bool;
  LOBYTE(v85) = v46;
  sub_100073460(&v85, 33);
  v47 = *&v1[v25[38]];
  v87 = &type metadata for Int;
  v85 = v47;
  sub_100073460(&v85, 34);
  v48 = *&v1[v25[39]];
  v87 = &type metadata for Int;
  v85 = v48;
  sub_100073460(&v85, 35);
  v49 = *&v1[v25[40]];
  v87 = &type metadata for Int;
  v85 = v49;
  sub_100073460(&v85, 36);
  v50 = *&v1[v25[41]];
  v87 = &type metadata for Int;
  v85 = v50;
  sub_100073460(&v85, 37);
  v51 = *&v1[v25[42]];
  v87 = &type metadata for UInt64;
  v85 = v51;
  sub_100073460(&v85, 38);
  v52 = *&v1[v25[43]];
  v87 = &type metadata for Double;
  v85 = v52;
  sub_100073460(&v85, 39);
  v53 = &v1[*(type metadata accessor for AWDLStatistics.LowLatencyStatistics(0) + 20)];
  v54 = *v53;
  v87 = &type metadata for Int;
  v85 = v54;
  sub_100073460(&v85, 40);
  v55 = v53[1];
  v87 = &type metadata for Int;
  v85 = v55;
  sub_100073460(&v85, 41);
  v56 = v53[2];
  v87 = &type metadata for Int;
  v85 = v56;
  sub_100073460(&v85, 42);
  v57 = v53[3];
  v87 = &type metadata for Int;
  v85 = v57;
  sub_100073460(&v85, 43);
  v58 = v53[4];
  v87 = &type metadata for Int;
  v85 = v58;
  sub_100073460(&v85, 44);
  v59 = v53[5];
  v87 = &type metadata for Int;
  v85 = v59;
  sub_100073460(&v85, 45);
  v60 = v53[6];
  v87 = &type metadata for Int;
  v85 = v60;
  sub_100073460(&v85, 46);
  v61 = v53[7];
  v87 = &type metadata for Int;
  v85 = v61;
  sub_100073460(&v85, 47);
  v62 = v53[8];
  v87 = &type metadata for Int;
  v85 = v62;
  sub_100073460(&v85, 48);
  v63 = v53[9];
  v87 = &type metadata for Int;
  v85 = v63;
  sub_100073460(&v85, 49);
  v64 = v53[10];
  v87 = &type metadata for Int;
  v85 = v64;
  sub_100073460(&v85, 50);
  v65 = v53[11];
  v87 = &type metadata for Int;
  v85 = v65;
  sub_100073460(&v85, 51);
  v66 = v53[12];
  v87 = &type metadata for Int;
  v85 = v66;
  sub_100073460(&v85, 52);
  v67 = v53[13];
  v87 = &type metadata for Int;
  v85 = v67;
  sub_100073460(&v85, 53);
  v68 = v53[14];
  v87 = &type metadata for Int;
  v85 = v68;
  sub_100073460(&v85, 54);
  v69 = v53[15];
  v87 = &type metadata for Int;
  v85 = v69;
  sub_100073460(&v85, 55);
  v70 = v53[16];
  v87 = &type metadata for Int;
  v85 = v70;
  sub_100073460(&v85, 56);
  v71 = v53[17];
  v87 = &type metadata for Int;
  v85 = v71;
  sub_100073460(&v85, 57);
  v72 = v53[18];
  v87 = &type metadata for Int;
  v85 = v72;
  sub_100073460(&v85, 58);
  v73 = v53[19];
  v87 = &type metadata for Int;
  v85 = v73;
  sub_100073460(&v85, 59);
  v74 = v53[20];
  v87 = &type metadata for Int;
  v85 = v74;
  sub_100073460(&v85, 60);
  v75 = v53[21];
  v87 = &type metadata for Int;
  v85 = v75;
  sub_100073460(&v85, 61);
  v76 = v53[22];
  v87 = &type metadata for Int;
  v85 = v76;
  sub_100073460(&v85, 62);
  v77 = v53[23];
  v87 = &type metadata for Int;
  v85 = v77;
  sub_100073460(&v85, 63);
  v78 = v53[24];
  v87 = &type metadata for Int;
  v85 = v78;
  sub_100073460(&v85, 64);
  v79 = v53[25];
  v87 = &type metadata for Int;
  v85 = v79;
  sub_100073460(&v85, 65);
  v80 = v53[26];
  v87 = &type metadata for Int;
  v85 = v80;
  sub_100073460(&v85, 66);
  sub_1001DDD44(v53[27], 0, &v88);
  sub_1001DDD44(v53[28], 1u, &v88);
  sub_1001DDD44(v53[29], 2u, &v88);
  sub_1001DDD44(v53[30], 3u, &v88);
  sub_1001DDD44(v53[31], 4u, &v88);
  sub_1001DDD44(v53[32], 5u, &v88);
  sub_1001DDD44(v53[33], 6u, &v88);
  sub_1001DDD44(v53[34], 7u, &v88);
  sub_1001DDD44(v53[35], 8u, &v88);
  sub_1001DDD44(v53[36], 9u, &v88);
  sub_1001DDD44(v53[37], 0xAu, &v88);
  sub_1001DDD44(v53[38], 0xBu, &v88);
  sub_1001DDD44(v53[39], 0xCu, &v88);
  sub_1001DDD44(v53[40], 0xDu, &v88);
  sub_1001DDD44(v53[41], 0xEu, &v88);
  sub_1001DDD44(v53[42], 0xFu, &v88);
  sub_1001DDD44(v53[43], 0x10u, &v88);
  sub_1001DDD44(v53[44], 0x11u, &v88);
  v81 = sub_1001D9864(v89, &qword_100590B90, &qword_100494928, sub_1001E0694);
  v82 = sub_1001DE9F4(v88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v85 = v81;
  sub_1001EA09C(v82, sub_1001E874C, 0, isUniquelyReferenced_nonNull_native, &v85);

  return v85;
}

uint64_t sub_1001DE9F4(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = v10 | (v7 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100002B30(*(a1 + 56) + 32 * v11, v28);
    *&v27 = v14;
    *(&v27 + 1) = v13;
    sub_100012400(&v27, &v25, &qword_100590B70, &qword_100494908);

    sub_1000840B4();
    if (swift_dynamicCast())
    {
      v25 = v27;
      v26[0] = v28[0];
      v26[1] = v28[1];
      v15 = v27;
      sub_100002A00(v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_100117A50(0, v8[2] + 1, 1, v8);
      }

      v17 = v8[2];
      v16 = v8[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100117A50((v16 > 1), v17 + 1, 1, v8);
        v18 = v17 + 1;
        v8 = v20;
      }

      v8[2] = v18;
      v19 = &v8[3 * v17];
      *(v19 + 2) = v15;
      v19[6] = v24;
    }

    else
    {
      sub_100016290(&v27, &qword_100590B70, &qword_100494908);
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    if (v7 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v7);
    ++v9;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  if (v8[2])
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v21 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v21 = &_swiftEmptyDictionarySingleton;
  }

  *&v27 = v21;

  sub_100236478(v22, 1, &v27);

  return v27;
}

void AWDLStatistics.LowLatencyStatistics.hash(into:)(uint64_t a1)
{
  AWDLStatistics.LowLatencyStatistics.Configuration.hash(into:)();
  v3 = (v1 + *(type metadata accessor for AWDLStatistics.LowLatencyStatistics(0) + 20));
  v32 = v3[10];
  v33 = v3[11];
  v34 = v3[12];
  v4 = *(v3 + 27);
  v35 = *(v3 + 26);
  v28 = v3[6];
  v29 = v3[7];
  v30 = v3[8];
  v31 = v3[9];
  v24 = v3[2];
  v25 = v3[3];
  v26 = v3[4];
  v27 = v3[5];
  v22 = *v3;
  v23 = v3[1];
  v5 = *(v3 + 28);
  v6 = *(v3 + 29);
  v7 = *(v3 + 30);
  v8 = *(v3 + 31);
  v10 = *(v3 + 32);
  v9 = *(v3 + 33);
  v11 = *(v3 + 34);
  v12 = *(v3 + 35);
  v13 = *(v3 + 36);
  v14 = *(v3 + 37);
  v15 = *(v3 + 38);
  v16 = *(v3 + 39);
  v17 = *(v3 + 40);
  v18 = *(v3 + 41);
  v19 = *(v3 + 42);
  v20 = *(v3 + 43);
  v21 = *(v3 + 44);
  AWDLStatistics.LowLatencyStatistics.Traffic.Counts.hash(into:)();
  sub_1000DF4A4(a1, v4);
  sub_1000DF4A4(a1, v5);
  sub_1000DF4A4(a1, v6);
  sub_1000DF4A4(a1, v7);
  sub_1000DF4A4(a1, v8);
  sub_1000DF4A4(a1, v10);
  sub_1000DF4A4(a1, v9);
  sub_1000DF4A4(a1, v11);
  sub_1000DF4A4(a1, v12);
  sub_1000DF4A4(a1, v13);
  sub_1000DF4A4(a1, v14);
  sub_1000DF4A4(a1, v15);
  sub_1000DF4A4(a1, v16);
  sub_1000DF4A4(a1, v17);
  sub_1000DF4A4(a1, v18);
  sub_1000DF4A4(a1, v19);
  sub_1000DF4A4(a1, v20);

  sub_1000DF4A4(a1, v21);
}

Swift::Int AWDLStatistics.LowLatencyStatistics.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLStatistics.LowLatencyStatistics.Configuration.hash(into:)();
  v1 = (v0 + *(type metadata accessor for AWDLStatistics.LowLatencyStatistics(0) + 20));
  v2 = v1[11];
  v38 = v1[10];
  v39 = v2;
  v40 = v1[12];
  v3 = *(v1 + 27);
  v41 = *(v1 + 26);
  v4 = v1[7];
  v34 = v1[6];
  v35 = v4;
  v5 = v1[9];
  v36 = v1[8];
  v37 = v5;
  v6 = v1[3];
  v30 = v1[2];
  v31 = v6;
  v7 = v1[5];
  v32 = v1[4];
  v33 = v7;
  v8 = v1[1];
  v28 = *v1;
  v29 = v8;
  v9 = *(v1 + 28);
  v10 = *(v1 + 29);
  v11 = *(v1 + 30);
  v12 = *(v1 + 31);
  v13 = *(v1 + 32);
  v14 = *(v1 + 33);
  v15 = *(v1 + 34);
  v16 = *(v1 + 35);
  v18 = *(v1 + 36);
  v19 = *(v1 + 37);
  v20 = *(v1 + 38);
  v21 = *(v1 + 39);
  v22 = *(v1 + 40);
  v23 = *(v1 + 41);
  v24 = *(v1 + 42);
  v25 = *(v1 + 43);
  v26 = *(v1 + 44);
  AWDLStatistics.LowLatencyStatistics.Traffic.Counts.hash(into:)();
  sub_1000DF4A4(v27, v3);
  sub_1000DF4A4(v27, v9);
  sub_1000DF4A4(v27, v10);
  sub_1000DF4A4(v27, v11);
  sub_1000DF4A4(v27, v12);
  sub_1000DF4A4(v27, v13);
  sub_1000DF4A4(v27, v14);
  sub_1000DF4A4(v27, v15);
  sub_1000DF4A4(v27, v16);
  sub_1000DF4A4(v27, v18);
  sub_1000DF4A4(v27, v19);
  sub_1000DF4A4(v27, v20);
  sub_1000DF4A4(v27, v21);
  sub_1000DF4A4(v27, v22);
  sub_1000DF4A4(v27, v23);
  sub_1000DF4A4(v27, v24);
  sub_1000DF4A4(v27, v25);
  sub_1000DF4A4(v27, v26);
  return Hasher._finalize()();
}

Swift::Int sub_1001DF048(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

BOOL sub_1001DF08C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (!_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(a1, a2))
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *&a1[v6 + 176];
  v35[10] = *&a1[v6 + 160];
  v35[11] = v7;
  v35[12] = *&a1[v6 + 192];
  v36 = *&a1[v6 + 208];
  v8 = *&a1[v6 + 112];
  v35[6] = *&a1[v6 + 96];
  v35[7] = v8;
  v9 = *&a1[v6 + 144];
  v35[8] = *&a1[v6 + 128];
  v35[9] = v9;
  v10 = *&a1[v6 + 48];
  v35[2] = *&a1[v6 + 32];
  v35[3] = v10;
  v11 = *&a1[v6 + 80];
  v35[4] = *&a1[v6 + 64];
  v35[5] = v11;
  v12 = *&a1[v6 + 16];
  v35[0] = *&a1[v6];
  v35[1] = v12;
  v13 = *&a1[v6 + 296];
  v14 = *&a1[v6 + 328];
  v15 = *&a1[v6 + 344];
  v33[6] = *&a1[v6 + 312];
  v33[7] = v14;
  v33[8] = v15;
  v16 = *&a1[v6 + 232];
  v17 = *&a1[v6 + 264];
  v18 = *&a1[v6 + 280];
  v33[2] = *&a1[v6 + 248];
  v33[3] = v17;
  v33[4] = v18;
  v33[5] = v13;
  v33[0] = *&a1[v6 + 216];
  v33[1] = v16;
  v19 = &a2[v6];
  v20 = *(v19 + 11);
  v37[10] = *(v19 + 10);
  v37[11] = v20;
  v37[12] = *(v19 + 12);
  v38 = *(v19 + 26);
  v21 = *(v19 + 7);
  v37[6] = *(v19 + 6);
  v37[7] = v21;
  v22 = *(v19 + 9);
  v37[8] = *(v19 + 8);
  v37[9] = v22;
  v23 = *(v19 + 3);
  v37[2] = *(v19 + 2);
  v37[3] = v23;
  v24 = *(v19 + 5);
  v37[4] = *(v19 + 4);
  v37[5] = v24;
  v25 = *(v19 + 1);
  v37[0] = *v19;
  v37[1] = v25;
  v26 = *(v19 + 296);
  v27 = *(v19 + 328);
  v28 = *(v19 + 344);
  v34[6] = *(v19 + 312);
  v34[7] = v27;
  v34[8] = v28;
  v29 = *(v19 + 264);
  v30 = *(v19 + 280);
  v34[2] = *(v19 + 248);
  v34[3] = v29;
  v31 = *(v19 + 232);
  v34[4] = v30;
  v34[5] = v26;
  v34[0] = *(v19 + 216);
  v34[1] = v31;
  if (!_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV6CountsV23__derived_struct_equalsySbAI_AItFZ_0(v35, v37))
  {
    return 0;
  }

  return (_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV10HistogramsV23__derived_struct_equalsySbAI_AItFZ_0(v33, v34) & 1) != 0;
}

void AWDLStatistics.AirPlayStatistics.Histograms.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 16);
  Hasher._combine(_:)(v9);
  if (v9)
  {
    v10 = (a2 + 32);
    do
    {
      v11 = *v10++;
      Hasher._combine(_:)(v11);
      --v9;
    }

    while (v9);
  }

  v12 = *(a3 + 16);
  Hasher._combine(_:)(v12);
  if (v12)
  {
    v13 = (a3 + 32);
    do
    {
      v14 = *v13++;
      Hasher._combine(_:)(v14);
      --v12;
    }

    while (v12);
  }

  v15 = *(a4 + 16);
  Hasher._combine(_:)(v15);
  if (v15)
  {
    v16 = (a4 + 32);
    do
    {
      v17 = *v16++;
      Hasher._combine(_:)(v17);
      --v15;
    }

    while (v15);
  }

  v18 = *(a5 + 16);
  Hasher._combine(_:)(v18);
  if (v18)
  {
    v19 = (a5 + 32);
    do
    {
      v20 = *v19++;
      Hasher._combine(_:)(v20);
      --v18;
    }

    while (v18);
  }
}

Swift::Int AWDLStatistics.AirPlayStatistics.Histograms.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  AWDLStatistics.AirPlayStatistics.Histograms.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_1001DF320()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  AWDLStatistics.AirPlayStatistics.Histograms.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

Swift::Int sub_1001DF38C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  AWDLStatistics.AirPlayStatistics.Histograms.hash(into:)(v6, v1, v2, v4, v3);
  return Hasher._finalize()();
}

uint64_t AWDLStatistics.AirPlayStatistics.histograms.getter()
{
  v1 = v0[10];
  v2 = v0[11];
  v4 = v0[12];
  v3 = v0[13];

  return v1;
}

uint64_t AWDLStatistics.AirPlayStatistics.histograms.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v4[10];

  v10 = v4[11];

  v11 = v4[12];

  v12 = v4[13];

  v4[10] = a1;
  v4[11] = a2;
  v4[12] = a3;
  v4[13] = a4;
  return result;
}

uint64_t AWDLStatistics.AirPlayStatistics.eventPayload.getter()
{
  v1 = v0;
  v43 = &_swiftEmptyDictionarySingleton;
  v42 = &_swiftEmptyDictionarySingleton;
  v2 = *v0;
  v41 = &type metadata for UInt64;
  v40[0] = v2;
  sub_10007358C(v40, 0);
  v3 = *(v0 + 8);
  v41 = &type metadata for UInt64;
  v40[0] = v3;
  sub_10007358C(v40, 1);
  v4 = *(v0 + 16);
  v41 = &type metadata for UInt32;
  LODWORD(v40[0]) = v4;
  sub_10007358C(v40, 2);
  v5 = *(v0 + 20);
  v41 = &type metadata for UInt32;
  LODWORD(v40[0]) = v5;
  sub_10007358C(v40, 3);
  v6 = *(v0 + 24);
  v41 = &type metadata for UInt32;
  LODWORD(v40[0]) = v6;
  sub_10007358C(v40, 4);
  v7 = *(v0 + 28);
  v41 = &type metadata for UInt32;
  LODWORD(v40[0]) = v7;
  sub_10007358C(v40, 5);
  v8 = *(v0 + 32);
  v41 = &type metadata for UInt16;
  LOWORD(v40[0]) = v8;
  sub_10007358C(v40, 6);
  v9 = *(v0 + 34);
  v41 = &type metadata for UInt16;
  LOWORD(v40[0]) = v9;
  sub_10007358C(v40, 7);
  v10 = *(v0 + 36);
  v41 = &type metadata for UInt16;
  LOWORD(v40[0]) = v10;
  sub_10007358C(v40, 8);
  v11 = *(v0 + 38);
  v41 = &type metadata for UInt16;
  LOWORD(v40[0]) = v11;
  sub_10007358C(v40, 9);
  v12 = *(v0 + 40);
  v41 = &type metadata for UInt16;
  LOWORD(v40[0]) = v12;
  sub_10007358C(v40, 10);
  v13 = *(v0 + 42);
  v41 = &type metadata for UInt8;
  LOBYTE(v40[0]) = v13;
  sub_10007358C(v40, 11);
  v14 = *(v0 + 43);
  v41 = &type metadata for UInt8;
  LOBYTE(v40[0]) = v14;
  sub_10007358C(v40, 12);
  v15 = *(v0 + 44);
  v41 = &type metadata for UInt8;
  LOBYTE(v40[0]) = v15;
  sub_10007358C(v40, 13);
  v16 = *(v0 + 48);
  v41 = &type metadata for UInt32;
  LODWORD(v40[0]) = v16;
  sub_10007358C(v40, 14);
  v17 = *(v0 + 52);
  v41 = &type metadata for UInt8;
  LOBYTE(v40[0]) = v17;
  sub_10007358C(v40, 15);
  v18 = *(v0 + 56);
  v41 = &type metadata for UInt32;
  LODWORD(v40[0]) = v18;
  sub_10007358C(v40, 16);
  v19 = *(v0 + 60);
  v41 = &type metadata for UInt8;
  LOBYTE(v40[0]) = v19;
  sub_10007358C(v40, 17);
  v20 = *(v0 + 61);
  v41 = &type metadata for Int8;
  LOBYTE(v40[0]) = v20;
  sub_10007358C(v40, 18);
  v21 = *(v0 + 62);
  v41 = &type metadata for Bool;
  LOBYTE(v40[0]) = v21;
  sub_10007358C(v40, 19);
  v22 = *(v0 + 63);
  v41 = &type metadata for Bool;
  LOBYTE(v40[0]) = v22;
  sub_10007358C(v40, 20);
  v23 = *(v0 + 64);
  v41 = &type metadata for Bool;
  LOBYTE(v40[0]) = v23;
  sub_10007358C(v40, 21);
  v24 = *(v0 + 65);
  v41 = &type metadata for Bool;
  LOBYTE(v40[0]) = v24;
  sub_10007358C(v40, 22);
  v25 = *(v0 + 66);
  v41 = &type metadata for Bool;
  LOBYTE(v40[0]) = v25;
  sub_10007358C(v40, 23);
  v26 = *(v0 + 67);
  v41 = &type metadata for Bool;
  LOBYTE(v40[0]) = v26;
  sub_10007358C(v40, 24);
  v27 = *(v0 + 68);
  v41 = &type metadata for UInt8;
  LOBYTE(v40[0]) = v27;
  sub_10007358C(v40, 25);
  v28 = *(v0 + 69);
  v41 = &type metadata for UInt8;
  LOBYTE(v40[0]) = v28;
  sub_10007358C(v40, 26);
  v29 = *(v0 + 70);
  v41 = &type metadata for UInt8;
  LOBYTE(v40[0]) = v29;
  sub_10007358C(v40, 27);
  v30 = *(v0 + 71);
  v41 = &type metadata for UInt8;
  LOBYTE(v40[0]) = v30;
  sub_10007358C(v40, 28);
  v31 = *(v0 + 72);
  v41 = &type metadata for UInt8;
  LOBYTE(v40[0]) = v31;
  sub_10007358C(v40, 29);
  v32 = *(v0 + 80);
  v33 = *(v0 + 88);
  v35 = *(v1 + 96);
  v34 = *(v1 + 104);
  sub_1001E9DD0(v32, 0, &v42);
  sub_1001E9DD0(v34, 3, &v42);
  sub_1001E9DD0(v35, 2, &v42);
  sub_1001E9DD0(v33, 1, &v42);
  v36 = sub_1001D91C8(v43);
  v37 = sub_1001DE9F4(v42);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40[0] = v36;
  sub_1001EA09C(v37, sub_1001E874C, 0, isUniquelyReferenced_nonNull_native, v40);

  return v40[0];
}

void AWDLStatistics.AirPlayStatistics.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(*(v2 + 8));
  Hasher._combine(_:)(*(v2 + 16));
  Hasher._combine(_:)(*(v2 + 20));
  Hasher._combine(_:)(*(v2 + 24));
  Hasher._combine(_:)(*(v2 + 28));
  Hasher._combine(_:)(*(v2 + 32));
  Hasher._combine(_:)(*(v2 + 34));
  Hasher._combine(_:)(*(v2 + 36));
  Hasher._combine(_:)(*(v2 + 38));
  Hasher._combine(_:)(*(v2 + 40));
  Hasher._combine(_:)(*(v2 + 42));
  Hasher._combine(_:)(*(v2 + 43));
  Hasher._combine(_:)(*(v2 + 44));
  Hasher._combine(_:)(*(v2 + 48));
  Hasher._combine(_:)(*(v2 + 52));
  Hasher._combine(_:)(*(v2 + 56));
  Hasher._combine(_:)(*(v2 + 60));
  Hasher._combine(_:)(*(v2 + 61));
  Hasher._combine(_:)(*(v2 + 62) & 1);
  Hasher._combine(_:)(*(v2 + 63) & 1);
  Hasher._combine(_:)(*(v2 + 64) & 1);
  Hasher._combine(_:)(*(v2 + 65) & 1);
  Hasher._combine(_:)(*(v2 + 66) & 1);
  Hasher._combine(_:)(*(v2 + 67) & 1);
  Hasher._combine(_:)(*(v2 + 68));
  Hasher._combine(_:)(*(v2 + 69));
  Hasher._combine(_:)(*(v2 + 70));
  Hasher._combine(_:)(*(v2 + 71));
  Hasher._combine(_:)(*(v2 + 72));
  v4 = *(v2 + 80);
  v5 = *(v2 + 88);
  v6 = *(v2 + 96);
  v7 = *(v2 + 104);

  AWDLStatistics.AirPlayStatistics.Histograms.hash(into:)(a1, v4, v5, v6, v7);
}

Swift::Int AWDLStatistics.AirPlayStatistics.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLStatistics.AirPlayStatistics.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001DFD1C()
{
  Hasher.init(_seed:)();
  AWDLStatistics.AirPlayStatistics.hash(into:)(v1);
  return Hasher._finalize()();
}

BOOL sub_1001DFD58(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[6];
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v13[6] = v3;
  v14[0] = v6;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[6];
  v14[5] = a2[5];
  v14[6] = v10;
  v11 = a2[4];
  v14[3] = v9;
  v14[4] = v11;
  v14[1] = v7;
  v14[2] = v8;
  return _s7CoreP2P14AWDLStatisticsO17AirPlayStatisticsV23__derived_struct_equalsySbAE_AEtFZ_0(v13, v14);
}

uint64_t AWDLStatistics.RtgStatistics.eventPayload.getter()
{
  v48 = &_swiftEmptyDictionarySingleton;
  v1 = *v0;
  v47 = &type metadata for UInt16;
  v46[0] = v1;
  sub_1000736B8(v46, 0);
  v2 = v0[1];
  v47 = &type metadata for UInt16;
  v46[0] = v2;
  sub_1000736B8(v46, 1);
  v3 = v0[2];
  v47 = &type metadata for UInt16;
  v46[0] = v3;
  sub_1000736B8(v46, 2);
  v4 = v0[3];
  v47 = &type metadata for UInt16;
  v46[0] = v4;
  sub_1000736B8(v46, 3);
  v5 = v0[4];
  v47 = &type metadata for UInt16;
  v46[0] = v5;
  sub_1000736B8(v46, 4);
  v6 = v0[5];
  v47 = &type metadata for UInt16;
  v46[0] = v6;
  sub_1000736B8(v46, 5);
  v7 = v0[6];
  v47 = &type metadata for UInt16;
  v46[0] = v7;
  sub_1000736B8(v46, 6);
  v8 = v0[7];
  v47 = &type metadata for UInt16;
  v46[0] = v8;
  sub_1000736B8(v46, 7);
  v9 = v0[8];
  v47 = &type metadata for UInt16;
  v46[0] = v9;
  sub_1000736B8(v46, 8);
  v10 = v0[9];
  v47 = &type metadata for UInt16;
  v46[0] = v10;
  sub_1000736B8(v46, 9);
  v11 = v0[10];
  v47 = &type metadata for UInt16;
  v46[0] = v11;
  sub_1000736B8(v46, 10);
  v12 = v0[11];
  v47 = &type metadata for UInt16;
  v46[0] = v12;
  sub_1000736B8(v46, 11);
  v13 = v0[12];
  v47 = &type metadata for UInt16;
  v46[0] = v13;
  sub_1000736B8(v46, 12);
  v14 = v0[13];
  v47 = &type metadata for UInt16;
  v46[0] = v14;
  sub_1000736B8(v46, 13);
  v15 = v0[14];
  v47 = &type metadata for UInt16;
  v46[0] = v15;
  sub_1000736B8(v46, 14);
  v16 = v0[15];
  v47 = &type metadata for UInt16;
  v46[0] = v16;
  sub_1000736B8(v46, 15);
  v17 = v0[16];
  v47 = &type metadata for UInt16;
  v46[0] = v17;
  sub_1000736B8(v46, 16);
  v18 = v0[17];
  v47 = &type metadata for UInt16;
  v46[0] = v18;
  sub_1000736B8(v46, 17);
  v19 = v0[18];
  v47 = &type metadata for UInt16;
  v46[0] = v19;
  sub_1000736B8(v46, 18);
  v20 = v0[19];
  v47 = &type metadata for UInt16;
  v46[0] = v20;
  sub_1000736B8(v46, 19);
  v21 = v0[20];
  v47 = &type metadata for UInt16;
  v46[0] = v21;
  sub_1000736B8(v46, 20);
  v22 = v0[21];
  v47 = &type metadata for UInt16;
  v46[0] = v22;
  sub_1000736B8(v46, 21);
  v23 = v0[22];
  v47 = &type metadata for UInt16;
  v46[0] = v23;
  sub_1000736B8(v46, 22);
  v24 = v0[23];
  v47 = &type metadata for UInt16;
  v46[0] = v24;
  sub_1000736B8(v46, 23);
  v25 = v0[24];
  v47 = &type metadata for UInt16;
  v46[0] = v25;
  sub_1000736B8(v46, 24);
  v26 = v0[25];
  v47 = &type metadata for UInt16;
  v46[0] = v26;
  sub_1000736B8(v46, 25);
  v27 = v0[26];
  v47 = &type metadata for UInt16;
  v46[0] = v27;
  sub_1000736B8(v46, 26);
  v28 = v0[27];
  v47 = &type metadata for UInt16;
  v46[0] = v28;
  sub_1000736B8(v46, 27);
  v29 = v0[28];
  v47 = &type metadata for UInt16;
  v46[0] = v29;
  sub_1000736B8(v46, 28);
  v30 = v0[29];
  v47 = &type metadata for UInt16;
  v46[0] = v30;
  sub_1000736B8(v46, 29);
  v31 = v0[30];
  v47 = &type metadata for UInt16;
  v46[0] = v31;
  sub_1000736B8(v46, 30);
  v32 = *(v0 + 62);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v32;
  sub_1000736B8(v46, 31);
  v33 = *(v0 + 63);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v33;
  sub_1000736B8(v46, 32);
  v34 = *(v0 + 64);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v34;
  sub_1000736B8(v46, 33);
  v35 = *(v0 + 65);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v35;
  sub_1000736B8(v46, 34);
  v36 = *(v0 + 66);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v36;
  sub_1000736B8(v46, 35);
  v37 = *(v0 + 67);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v37;
  sub_1000736B8(v46, 36);
  v38 = *(v0 + 68);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v38;
  sub_1000736B8(v46, 37);
  v39 = *(v0 + 69);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v39;
  sub_1000736B8(v46, 38);
  v40 = *(v0 + 70);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v40;
  sub_1000736B8(v46, 39);
  v41 = *(v0 + 71);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v41;
  sub_1000736B8(v46, 40);
  v42 = *(v0 + 72);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v42;
  sub_1000736B8(v46, 41);
  v43 = *(v0 + 73);
  v47 = &type metadata for Bool;
  LOBYTE(v46[0]) = v43;
  sub_1000736B8(v46, 42);
  v44 = sub_1001D9864(v48, &qword_100590B80, &qword_100494918, sub_1001E1F4C);

  return v44;
}

void AWDLStatistics.RtgStatistics.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(*(v0 + 4));
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(*(v0 + 10));
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(*(v0 + 14));
  Hasher._combine(_:)(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 18));
  Hasher._combine(_:)(*(v0 + 20));
  Hasher._combine(_:)(*(v0 + 22));
  Hasher._combine(_:)(*(v0 + 24));
  Hasher._combine(_:)(*(v0 + 26));
  Hasher._combine(_:)(*(v0 + 28));
  Hasher._combine(_:)(*(v0 + 30));
  Hasher._combine(_:)(*(v0 + 32));
  Hasher._combine(_:)(*(v0 + 34));
  Hasher._combine(_:)(*(v0 + 36));
  Hasher._combine(_:)(*(v0 + 38));
  Hasher._combine(_:)(*(v0 + 40));
  Hasher._combine(_:)(*(v0 + 42));
  Hasher._combine(_:)(*(v0 + 44));
  Hasher._combine(_:)(*(v0 + 46));
  Hasher._combine(_:)(*(v0 + 48));
  Hasher._combine(_:)(*(v0 + 50));
  Hasher._combine(_:)(*(v0 + 52));
  Hasher._combine(_:)(*(v0 + 54));
  Hasher._combine(_:)(*(v0 + 56));
  Hasher._combine(_:)(*(v0 + 58));
  Hasher._combine(_:)(*(v0 + 60));
  Hasher._combine(_:)(*(v0 + 62) & 1);
  Hasher._combine(_:)(*(v0 + 63) & 1);
  Hasher._combine(_:)(*(v0 + 64) & 1);
  Hasher._combine(_:)(*(v0 + 65) & 1);
  Hasher._combine(_:)(*(v0 + 66) & 1);
  Hasher._combine(_:)(*(v0 + 67) & 1);
  Hasher._combine(_:)(*(v0 + 68) & 1);
  Hasher._combine(_:)(*(v0 + 69) & 1);
  Hasher._combine(_:)(*(v0 + 70) & 1);
  Hasher._combine(_:)(*(v0 + 71) & 1);
  Hasher._combine(_:)(*(v0 + 72) & 1);
  Hasher._combine(_:)(*(v0 + 73) & 1);
}

Swift::Int AWDLStatistics.RtgStatistics.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLStatistics.RtgStatistics.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001E0694(char a1)
{
  result = 0x4244537369;
  switch(a1)
  {
    case 1:
      return 0x437972746E756F63;
    case 2:
    case 3:
      return 0x6973735272656570;
    case 4:
      return 0x6163437874;
    case 5:
    case 7:
    case 67:
      return 0xD000000000000018;
    case 6:
    case 8:
    case 31:
    case 36:
    case 52:
      return 0xD000000000000019;
    case 9:
      return 0xD000000000000017;
    case 10:
      return 0xD000000000000017;
    case 11:
      return 0xD000000000000017;
    case 12:
      return 0xD000000000000017;
    case 13:
    case 39:
      return 0xD00000000000001ELL;
    case 14:
      return 0xD00000000000001DLL;
    case 15:
    case 23:
    case 29:
    case 49:
    case 58:
      return 0xD000000000000013;
    case 16:
      return 0x446E6F6973736573;
    case 17:
    case 22:
    case 34:
    case 35:
    case 37:
      return 0xD000000000000015;
    case 18:
      v5 = 1668184435;
      return v5 | 0x6F72724500000000;
    case 19:
      return 0xD00000000000001CLL;
    case 20:
      return 0xD000000000000017;
    case 21:
      return 0xD000000000000017;
    case 24:
      return 0xD000000000000017;
    case 25:
    case 26:
    case 27:
    case 38:
    case 48:
    case 50:
      return 0xD000000000000014;
    case 28:
    case 65:
    case 66:
      return 0xD000000000000010;
    case 30:
      return 0xD000000000000016;
    case 32:
      return 0x4449677472;
    case 33:
      return 0x44495353656D6173;
    case 40:
      return 0x7365636375537874;
    case 41:
      return 0x6572697078457874;
    case 42:
      return 0x666675426F4E7874;
    case 43:
      return 0x434B43416F4E7874;
    case 44:
      v4 = 0x6C6961467874;
      goto LABEL_25;
    case 45:
    case 64:
      return 0xD000000000000012;
    case 46:
      v5 = 1330215028;
      return v5 | 0x6F72724500000000;
    case 47:
      return 0x65657246424D7874;
    case 51:
      return 0x6570706F72447874;
    case 53:
      return 0xD000000000000011;
    case 54:
      return 0xD00000000000001BLL;
    case 55:
      return 0x43726F7272457874;
    case 56:
      v3 = 0x47356E4F7872;
      return (v3 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000) + 2;
    case 57:
      v3 = 0x47326E4F7872;
      return (v3 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000) + 2;
    case 59:
      return 0x6E756F43414E7874;
    case 60:
      return 0x756F43746B507872;
    case 61:
      v4 = 0x47356E4F7872;
      goto LABEL_25;
    case 62:
      v4 = 0x47326E4F7872;
LABEL_25:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x6F43000000000000;
      break;
    case 63:
      result = 0x7565757165527874;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_1001E0C98()
{
  Hasher.init(_seed:)();
  AWDLStatistics.RtgStatistics.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001E0CD4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v8[0] = v2;
  *(v8 + 10) = *(a1 + 58);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v10[0] = v4;
  *(v10 + 10) = *(a2 + 58);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s7CoreP2P14AWDLStatisticsO13RtgStatisticsV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v9) & 1;
}

uint64_t sub_1001E0D30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64657463656A6572;
  }

  else
  {
    v4 = 0x6553657669746361;
  }

  if (v3)
  {
    v5 = 0xED00006563697672;
  }

  else
  {
    v5 = 0xEF65636976726553;
  }

  if (*a2)
  {
    v6 = 0x64657463656A6572;
  }

  else
  {
    v6 = 0x6553657669746361;
  }

  if (*a2)
  {
    v7 = 0xEF65636976726553;
  }

  else
  {
    v7 = 0xED00006563697672;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1001E0DF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001E0E8C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001E0F14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1001E0FB8(uint64_t *a1@<X8>)
{
  v2 = 0x6553657669746361;
  if (*v1)
  {
    v2 = 0x64657463656A6572;
  }

  v3 = 0xED00006563697672;
  if (*v1)
  {
    v3 = 0xEF65636976726553;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001E1028()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1001E1144@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E9B0C(*a1);
  *a2 = result;
  return result;
}

void sub_1001E1174(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x65636976726573;
  v5 = 0x80000001004B5FF0;
  v6 = 0xD000000000000011;
  if (v2 != 5)
  {
    v6 = 0x44495353656D6173;
    v5 = 0xE800000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x424453796DLL;
  if (v2 != 3)
  {
    v8 = 0x42445372656570;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x6172666E49796DLL;
  if (v2 != 1)
  {
    v10 = 0x72666E4972656570;
    v9 = 0xE900000000000061;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_1001E1258(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x616974696E497369;
  v4 = 0xEB00000000726F74;
  if (v2 != 1)
  {
    v3 = 0x6E6F697461727564;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65636976726573;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x616974696E497369;
  v8 = 0xEB00000000726F74;
  if (*a2 != 1)
  {
    v7 = 0x6E6F697461727564;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x65636976726573;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1001E136C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001E1418()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001E14B0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001E1558@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001E9AC0(*a1);
  *a2 = result;
  return result;
}

void sub_1001E1588(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB00000000726F74;
  v5 = 0x616974696E497369;
  if (v2 != 1)
  {
    v5 = 0x6E6F697461727564;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65636976726573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1001E15F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6F73616572;
  }

  else
  {
    v4 = 0x65636976726573;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6E6F73616572;
  }

  else
  {
    v6 = 0x65636976726573;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1001E1694()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001E1714()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1001E1780()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001E1808@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1001E1864(uint64_t *a1@<X8>)
{
  v2 = 0x65636976726573;
  if (*v1)
  {
    v2 = 0x6E6F73616572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1001E1900@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1001E9A6C();
  *a2 = result;
  return result;
}

uint64_t sub_1001E1930@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001E0694(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001E195C(char a1)
{
  result = 0x446C61746F547874;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0x6C65444350497874;
      break;
    case 3:
      result = 0x616C654457467874;
      break;
    case 4:
      v3 = 1464367220;
      goto LABEL_12;
    case 5:
      result = 0x6152617461447874;
      break;
    case 6:
      result = 0x6569727465527874;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x74656B6361507874;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0x6163437874;
      break;
    case 12:
      result = 0x4365756575716572;
      break;
    case 13:
      result = 0x446C61746F547872;
      break;
    case 14:
      result = 0x6C65444350497872;
      break;
    case 15:
      v3 = 1464236146;
LABEL_12:
      result = v3 | 0x616C654400000000;
      break;
    case 16:
      result = 0x6152617461447872;
      break;
    case 17:
      result = 0x495353527872;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001E1B50(char a1)
{
  result = 0x73657479427874;
  switch(a1)
  {
    case 1:
      result = 0x73657479427872;
      break;
    case 2:
      result = 0x7275446C61746F74;
      break;
    case 3:
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
    case 7:
    case 21:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x6565506C61746F74;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0x6C62616E45667370;
      break;
    case 11:
      result = 0x737265566C647761;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
    case 15:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0x6C507265646E6573;
      break;
    case 18:
      result = 0x676E697472617473;
      break;
    case 19:
      result = 0x4D6F727465526E69;
      break;
    case 20:
      result = 0x7366446F54617363;
      break;
    case 22:
      result = 0x79786F7250736664;
      break;
    case 23:
      v3 = 1718379891;
      goto LABEL_24;
    case 24:
      v3 = 1919247728;
LABEL_24:
      result = v3 | 0x4453734900000000;
      break;
    case 25:
      result = 0xD000000000000013;
      break;
    case 26:
      result = 0xD000000000000015;
      break;
    case 27:
      result = 0xD000000000000015;
      break;
    case 28:
      result = 0xD000000000000017;
      break;
    case 29:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1001E1EF0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1001E9A18();
  *a2 = result;
  return result;
}

uint64_t sub_1001E1F20@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001E1B50(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1001E1F4C(char a1)
{
  result = 0x7372656550677472;
  switch(a1)
  {
    case 1:
    case 3:
    case 6:
      return 0xD000000000000020;
    case 2:
      v3 = 10;
      goto LABEL_12;
    case 4:
    case 7:
      return 0xD000000000000023;
    case 5:
    case 8:
      return 0xD000000000000021;
    case 9:
      return result;
    case 10:
      return 0xD000000000000011;
    case 11:
      return 0x6C62616E45667370;
    case 12:
    case 38:
      return 0xD000000000000016;
    case 13:
    case 21:
    case 24:
    case 29:
      return 0xD000000000000017;
    case 14:
    case 17:
    case 26:
      return 0xD000000000000010;
    case 15:
      return 0xD000000000000014;
    case 16:
    case 19:
      return 0xD000000000000019;
    case 18:
      return 0xD000000000000014;
    case 20:
      return 0xD000000000000014;
    case 22:
    case 25:
      return 0xD000000000000015;
    case 23:
      return 0xD000000000000014;
    case 27:
    case 28:
      return 0xD000000000000012;
    case 30:
    case 41:
      return 0xD000000000000018;
    case 31:
      return 0x4D6F727465526E69;
    case 32:
      return 0x446F546173436E69;
    case 33:
      return 0xD000000000000013;
    case 34:
      return 0x6F72507366446E69;
    case 35:
      v4 = 0x666C65537369;
      goto LABEL_6;
    case 36:
      v4 = 0x726565507369;
LABEL_6:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x4453000000000000;
      break;
    case 37:
      result = 0xD000000000000014;
      break;
    case 39:
      result = 0xD000000000000014;
      break;
    case 40:
      result = 0x6143656469537369;
      break;
    case 42:
      result = 0x616C507269417369;
      break;
    default:
      v3 = 9;
LABEL_12:
      result = v3 | 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1001E238C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

Swift::Int sub_1001E2438(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001E24BC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_1001E252C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001E2594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1001E99C4();
  *a2 = result;
  return result;
}

uint64_t sub_1001E25C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1001E1F4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t apple80211_p2p_airplay_ext_stats.eventPayload()()
{
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v1 = swift_allocObject();
  *(v1 + 32) = 0xD00000000000001DLL;
  *(v1 + 16) = xmmword_1004940D0;
  *(v1 + 40) = 0x80000001004BAFC0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = v0[6];
  v4 = v0[7];
  v7 = v0[8];
  v6 = v0[9];
  v8 = *(v0 + 20);
  v9 = *(v0 + 21);
  v10 = *(v0 + 22);
  v11 = *(v0 + 23);
  v12 = *(v0 + 24);
  v13 = *(v0 + 50);
  v14 = *(v0 + 51);
  v15 = *(v0 + 52);
  v16 = *(v0 + 60);
  v17 = *(v0 + 68);
  v18 = *(v0 + 69);
  v19 = *(v0 + 71);
  v20 = *(v0 + 72);
  v21 = *(v0 + 73);
  v22 = *(v0 + 74);
  v23 = *(v0 + 75);
  v24 = *(v0 + 33);
  v40 = *(v0 + 29);
  v41 = v24;
  v25 = *(v0 + 41);
  v38 = *(v0 + 37);
  v39 = v25;
  v26 = *(v0 + 45);
  v27 = *(v0 + 49);
  *(v1 + 48) = v15;
  v36 = v26;
  v37 = v27;
  *(v1 + 72) = &type metadata for UInt8;
  *(v1 + 80) = 0xD00000000000001DLL;
  *(v1 + 88) = 0x80000001004BAFE0;
  *(v1 + 96) = v16;
  *(v1 + 120) = &type metadata for UInt8;
  *(v1 + 128) = 0xD000000000000012;
  *(v1 + 136) = 0x80000001004BAF60;
  *(v1 + 144) = v3;
  *(v1 + 168) = &type metadata for UInt64;
  *(v1 + 176) = 0xD000000000000012;
  *(v1 + 184) = 0x80000001004BAF80;
  *(v1 + 192) = v2;
  *(v1 + 216) = &type metadata for UInt64;
  *(v1 + 224) = 0xD000000000000029;
  *(v1 + 232) = 0x80000001004BB840;
  *(v1 + 240) = v5;
  *(v1 + 264) = &type metadata for UInt32;
  *(v1 + 272) = 0xD000000000000033;
  *(v1 + 280) = 0x80000001004BB870;
  *(v1 + 288) = v17;
  *(v1 + 312) = &type metadata for UInt8;
  *(v1 + 320) = 0xD000000000000014;
  *(v1 + 328) = 0x80000001004BB8B0;
  *(v1 + 336) = v13;
  *(v1 + 360) = &type metadata for UInt8;
  *(v1 + 368) = 0xD00000000000002FLL;
  *(v1 + 376) = 0x80000001004BB8D0;
  *(v1 + 384) = v4;
  *(v1 + 408) = &type metadata for UInt32;
  *(v1 + 416) = 0xD00000000000002FLL;
  *(v1 + 424) = 0x80000001004BB900;
  *(v1 + 432) = v7;
  *(v1 + 456) = &type metadata for UInt32;
  *(v1 + 464) = 0xD00000000000002ELL;
  *(v1 + 472) = 0x80000001004BB930;
  *(v1 + 480) = v6;
  *(v1 + 504) = &type metadata for UInt32;
  *(v1 + 512) = 0xD00000000000002DLL;
  *(v1 + 520) = 0x80000001004BB960;
  *(v1 + 552) = &type metadata for Int8;
  *(v1 + 528) = v18;
  *(v1 + 560) = 0xD00000000000002BLL;
  *(v1 + 568) = 0x80000001004BB990;
  *(v1 + 600) = &type metadata for UInt16;
  *(v1 + 576) = v8;
  *(v1 + 608) = 0xD000000000000033;
  *(v1 + 616) = 0x80000001004BB9C0;
  *(v1 + 648) = &type metadata for UInt8;
  *(v1 + 624) = v14;
  *(v1 + 656) = 0xD000000000000034;
  *(v1 + 664) = 0x80000001004BBA00;
  *(v1 + 696) = &type metadata for UInt16;
  *(v1 + 672) = v10;
  *(v1 + 704) = 0xD000000000000037;
  *(v1 + 712) = 0x80000001004BBA40;
  *(v1 + 744) = &type metadata for UInt16;
  *(v1 + 720) = v11;
  *(v1 + 752) = 0xD00000000000002CLL;
  *(v1 + 760) = 0x80000001004BBA80;
  *(v1 + 792) = &type metadata for UInt16;
  *(v1 + 768) = v12;
  *(v1 + 800) = 0xD00000000000002ELL;
  *(v1 + 808) = 0x80000001004BBAB0;
  *(v1 + 840) = &type metadata for UInt16;
  *(v1 + 816) = v9;
  *(v1 + 848) = 0xD000000000000025;
  *(v1 + 856) = 0x80000001004BBAE0;
  *(v1 + 888) = &type metadata for Bool;
  *(v1 + 864) = v19;
  *(v1 + 896) = 0xD00000000000002FLL;
  *(v1 + 904) = 0x80000001004BBB10;
  *(v1 + 936) = &type metadata for Bool;
  *(v1 + 912) = v20;
  *(v1 + 944) = 0xD000000000000029;
  *(v1 + 952) = 0x80000001004BBB40;
  *(v1 + 984) = &type metadata for Bool;
  *(v1 + 960) = v21;
  *(v1 + 992) = 0xD000000000000029;
  *(v1 + 1000) = 0x80000001004BBB70;
  *(v1 + 1032) = &type metadata for Bool;
  *(v1 + 1008) = v22;
  *(v1 + 1040) = 0xD000000000000029;
  *(v1 + 1048) = 0x80000001004BBBA0;
  *(v1 + 1080) = &type metadata for Bool;
  *(v1 + 1056) = v23;
  *(v1 + 1088) = 0xD000000000000022;
  *(v1 + 1096) = 0x80000001004BBBD0;
  v28 = *v0;
  *(v1 + 1128) = &type metadata for UInt32;
  *(v1 + 1104) = v28;
  *(v1 + 1136) = 0xD000000000000024;
  *(v1 + 1144) = 0x80000001004BBC00;
  v29 = *(v0 + 25);
  __dst[0] = *(v0 + 21);
  __dst[1] = v29;
  v30 = sub_10005DC58(&qword_1005908A8, &unk_100494120);
  *(v1 + 1176) = v30;
  *(v1 + 1152) = sub_1001EA720(__dst, &__dst[2]);
  *(v1 + 1184) = 0xD00000000000002DLL;
  *(v1 + 1192) = 0x80000001004BBC30;
  *(v1 + 1224) = v30;
  __dst[0] = v40;
  __dst[1] = v41;
  *(v1 + 1200) = sub_1001EA720(__dst, &__dst[2]);
  *(v1 + 1232) = 0xD000000000000031;
  *(v1 + 1240) = 0x80000001004BBC60;
  *(v1 + 1272) = v30;
  __dst[0] = v38;
  __dst[1] = v39;
  *(v1 + 1248) = sub_1001EA720(__dst, &__dst[2]);
  *(v1 + 1280) = 0xD000000000000031;
  *(v1 + 1288) = 0x80000001004BBCA0;
  *(v1 + 1320) = v30;
  __dst[0] = v36;
  __dst[1] = v37;
  *(v1 + 1296) = sub_1001EA720(__dst, &__dst[2]);
  v31 = sub_1000827F8(v1);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BB40, &unk_100480E70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  memcpy(__dst, v0 + 54, 0xEE8uLL);
  v32 = sub_1001E58E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = v31;
  sub_1001EAAA4(v32, sub_1001E8450, 0, isUniquelyReferenced_nonNull_native, &v35);

  return v35;
}

unint64_t sub_1001E58E4()
{
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v1 = swift_allocObject();
  *(v1 + 32) = 0xD000000000000017;
  *(v1 + 16) = xmmword_1004940E0;
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  *(v1 + 40) = 0x80000001004BC980;
  *(v1 + 48) = v2;
  *(v1 + 88) = 0x80000001004BC9A0;
  *(v1 + 96) = v3;
  v6 = v0[4];
  v7 = v0[5];
  *(v1 + 136) = 0x80000001004BC9C0;
  *(v1 + 144) = v4;
  *(v1 + 184) = 0x80000001004BC9E0;
  *(v1 + 192) = v5;
  v8 = v0[6];
  v9 = v0[7];
  *(v1 + 232) = 0x80000001004BCA00;
  *(v1 + 240) = v6;
  *(v1 + 280) = 0x80000001004BCA20;
  *(v1 + 288) = v7;
  v10 = v0[8];
  v11 = v0[9];
  *(v1 + 328) = 0x80000001004BCA40;
  *(v1 + 336) = v8;
  *(v1 + 376) = 0x80000001004BCA60;
  *(v1 + 384) = v9;
  *(v1 + 264) = &type metadata for UInt64;
  *(v1 + 272) = 0xD00000000000001BLL;
  *(v1 + 408) = &type metadata for UInt64;
  *(v1 + 416) = 0xD00000000000001BLL;
  *(v1 + 424) = 0x80000001004BCA80;
  *(v1 + 432) = v10;
  v12 = v0[10];
  v13 = v0[11];
  *(v1 + 472) = 0x80000001004BCAA0;
  *(v1 + 480) = v11;
  *(v1 + 520) = 0x80000001004BCAC0;
  v14 = v0[12];
  v15 = v0[13];
  *(v1 + 528) = v12;
  *(v1 + 568) = 0x80000001004BCAE0;
  *(v1 + 576) = v13;
  *(v1 + 616) = 0x80000001004BCB00;
  v16 = v0[14];
  v17 = v0[15];
  *(v1 + 624) = v14;
  *(v1 + 656) = 0xD00000000000001ALL;
  *(v1 + 664) = 0x80000001004BCB20;
  *(v1 + 672) = v15;
  *(v1 + 704) = 0xD000000000000024;
  *(v1 + 712) = 0x80000001004BCB40;
  v18 = v0[16];
  v19 = v0[17];
  *(v1 + 720) = v16;
  *(v1 + 760) = 0x80000001004BCB70;
  *(v1 + 768) = v17;
  *(v1 + 808) = 0x80000001004BCB90;
  v20 = v0[18];
  v21 = v0[19];
  *(v1 + 816) = v18;
  *(v1 + 856) = 0x80000001004BCBB0;
  *(v1 + 864) = v19;
  *(v1 + 896) = 0xD000000000000020;
  *(v1 + 904) = 0x80000001004BCBD0;
  v22 = v0[20];
  v23 = v0[21];
  *(v1 + 912) = v20;
  *(v1 + 952) = 0x80000001004BCC00;
  *(v1 + 960) = v21;
  *(v1 + 992) = 0xD000000000000018;
  *(v1 + 1000) = 0x80000001004BCC20;
  v24 = v0[22];
  v25 = v0[23];
  *(v1 + 1008) = v22;
  *(v1 + 1048) = 0x80000001004BCC40;
  *(v1 + 1056) = v23;
  *(v1 + 1096) = 0x80000001004BCC60;
  v26 = v0[24];
  v27 = v0[25];
  *(v1 + 1104) = v24;
  *(v1 + 608) = 0xD000000000000019;
  *(v1 + 1136) = 0xD000000000000019;
  *(v1 + 1144) = 0x80000001004BCC80;
  v28 = v0[26];
  *(v1 + 72) = &type metadata for UInt64;
  *(v1 + 80) = 0xD000000000000017;
  *(v1 + 1152) = v25;
  *(v1 + 1184) = 0xD00000000000001ELL;
  *(v1 + 1192) = 0x80000001004BCCA0;
  *(v1 + 1200) = v26;
  *(v1 + 120) = &type metadata for UInt64;
  *(v1 + 128) = 0xD000000000000016;
  *(v1 + 1240) = 0x80000001004BCCC0;
  *(v1 + 168) = &type metadata for UInt64;
  *(v1 + 176) = 0xD000000000000015;
  *(v1 + 1248) = v27;
  *(v1 + 456) = &type metadata for UInt64;
  *(v1 + 464) = 0xD00000000000001CLL;
  *(v1 + 1232) = 0xD00000000000001CLL;
  *(v1 + 1280) = 0xD00000000000001CLL;
  *(v1 + 1288) = 0x80000001004BCCE0;
  *(v1 + 216) = &type metadata for UInt64;
  *(v1 + 224) = 0xD000000000000014;
  *(v1 + 312) = &type metadata for UInt64;
  *(v1 + 320) = 0xD000000000000017;
  *(v1 + 360) = &type metadata for UInt64;
  *(v1 + 368) = 0xD000000000000016;
  *(v1 + 504) = &type metadata for UInt64;
  *(v1 + 512) = 0xD000000000000017;
  *(v1 + 552) = &type metadata for UInt64;
  *(v1 + 600) = &type metadata for UInt64;
  *(v1 + 648) = &type metadata for UInt64;
  *(v1 + 696) = &type metadata for UInt64;
  *(v1 + 744) = &type metadata for UInt64;
  *(v1 + 792) = &type metadata for UInt64;
  *(v1 + 840) = &type metadata for UInt64;
  *(v1 + 888) = &type metadata for UInt64;
  *(v1 + 936) = &type metadata for UInt64;
  *(v1 + 984) = &type metadata for UInt64;
  *(v1 + 1032) = &type metadata for UInt64;
  *(v1 + 1080) = &type metadata for UInt64;
  *(v1 + 1128) = &type metadata for UInt64;
  *(v1 + 1176) = &type metadata for UInt64;
  *(v1 + 1224) = &type metadata for UInt64;
  *(v1 + 1272) = &type metadata for UInt64;
  *(v1 + 1320) = &type metadata for UInt64;
  *(v1 + 560) = 0xD000000000000013;
  *(v1 + 752) = 0xD000000000000015;
  *(v1 + 800) = 0xD000000000000017;
  *(v1 + 848) = 0xD000000000000017;
  *(v1 + 944) = 0xD000000000000014;
  *(v1 + 1040) = 0xD000000000000017;
  *(v1 + 1296) = v28;
  *(v1 + 1088) = 0xD000000000000017;
  *(v1 + 1336) = 0x80000001004BCD00;
  *(v1 + 1328) = 0xD000000000000017;
  memcpy(__dst, v0 + 27, sizeof(__dst));
  v29 = v0[209];
  v30 = v0[212];
  v31 = v0[215];
  v32 = v0[218];
  v33 = v0[221];
  v34 = v0[224];
  v35 = *(v0 + 247);
  v295 = *(v0 + 245);
  v296 = v35;
  v297 = *(v0 + 249);
  v298 = v0[251];
  v36 = *(v0 + 239);
  v291 = *(v0 + 237);
  v292 = v36;
  v37 = *(v0 + 243);
  v293 = *(v0 + 241);
  v294 = v37;
  v38 = *(v0 + 231);
  v287 = *(v0 + 229);
  v288 = v38;
  v39 = *(v0 + 235);
  v289 = *(v0 + 233);
  v290 = v39;
  v40 = *(v0 + 227);
  v285 = *(v0 + 225);
  v286 = v40;
  v281 = *(v0 + 136);
  v282 = *(v0 + 137);
  v283 = *(v0 + 138);
  v284 = v0[278];
  v277 = *(v0 + 132);
  v278 = *(v0 + 133);
  v279 = *(v0 + 134);
  v280 = *(v0 + 135);
  v273 = *(v0 + 128);
  v274 = *(v0 + 129);
  v275 = *(v0 + 130);
  v276 = *(v0 + 131);
  v271 = *(v0 + 126);
  v272 = *(v0 + 127);
  v41 = v0[281];
  v213 = v0[284];
  v214 = v0[287];
  v215 = v0[290];
  v216 = v0[293];
  v217 = v0[296];
  v218 = v0[299];
  v219 = v0[302];
  v220 = v0[305];
  v267 = *(v0 + 164);
  v268 = *(v0 + 165);
  v269 = *(v0 + 166);
  v270 = *(v0 + 167);
  v263 = *(v0 + 160);
  v264 = *(v0 + 161);
  v265 = *(v0 + 162);
  v266 = *(v0 + 163);
  v259 = *(v0 + 156);
  v260 = *(v0 + 157);
  v261 = *(v0 + 158);
  v262 = *(v0 + 159);
  v256 = *(v0 + 153);
  v257 = *(v0 + 154);
  v258 = *(v0 + 155);
  v221 = v0[338];
  v222 = v0[341];
  v223 = v0[344];
  v42 = *(v0 + 365);
  v255[11] = *(v0 + 367);
  v43 = *(v0 + 371);
  v255[12] = *(v0 + 369);
  v255[13] = v43;
  v255[14] = *(v0 + 373);
  v44 = *(v0 + 357);
  v255[7] = *(v0 + 359);
  v45 = *(v0 + 363);
  v255[8] = *(v0 + 361);
  v255[9] = v45;
  v255[10] = v42;
  v46 = *(v0 + 353);
  v255[5] = *(v0 + 355);
  v255[6] = v44;
  v47 = *(v0 + 347);
  v255[0] = *(v0 + 345);
  v255[1] = v47;
  v48 = *(v0 + 349);
  v255[3] = *(v0 + 351);
  v255[4] = v46;
  v255[2] = v48;
  v49 = *(v0 + 399);
  v50 = *(v0 + 401);
  v51 = *(v0 + 395);
  v254[11] = *(v0 + 397);
  v254[12] = v49;
  v52 = *(v0 + 403);
  v254[13] = v50;
  v254[14] = v52;
  v53 = *(v0 + 391);
  v54 = *(v0 + 393);
  v55 = *(v0 + 387);
  v254[7] = *(v0 + 389);
  v254[8] = v53;
  v254[9] = v54;
  v254[10] = v51;
  v56 = *(v0 + 383);
  v57 = *(v0 + 385);
  v58 = *(v0 + 379);
  v254[3] = *(v0 + 381);
  v254[4] = v56;
  v254[5] = v57;
  v254[6] = v55;
  v59 = *(v0 + 375);
  v254[1] = *(v0 + 377);
  v254[2] = v58;
  v60 = *(v0 + 431);
  v253[12] = *(v0 + 429);
  v253[13] = v60;
  v253[14] = *(v0 + 433);
  v254[0] = v59;
  v61 = *(v0 + 423);
  v253[8] = *(v0 + 421);
  v253[9] = v61;
  v62 = *(v0 + 427);
  v253[10] = *(v0 + 425);
  v253[11] = v62;
  v63 = *(v0 + 415);
  v253[4] = *(v0 + 413);
  v253[5] = v63;
  v64 = *(v0 + 419);
  v253[6] = *(v0 + 417);
  v253[7] = v64;
  v65 = *(v0 + 407);
  v253[0] = *(v0 + 405);
  v253[1] = v65;
  v66 = *(v0 + 411);
  v253[2] = *(v0 + 409);
  v253[3] = v66;
  v67 = *(v0 + 459);
  v68 = *(v0 + 461);
  v69 = *(v0 + 455);
  v252[11] = *(v0 + 457);
  v252[12] = v67;
  v70 = *(v0 + 463);
  v252[13] = v68;
  v252[14] = v70;
  v71 = *(v0 + 451);
  v72 = *(v0 + 453);
  v73 = *(v0 + 447);
  v252[7] = *(v0 + 449);
  v252[8] = v71;
  v252[9] = v72;
  v252[10] = v69;
  v74 = *(v0 + 443);
  v75 = *(v0 + 445);
  v76 = *(v0 + 439);
  v252[3] = *(v0 + 441);
  v252[4] = v74;
  v252[5] = v75;
  v252[6] = v73;
  v77 = *(v0 + 435);
  v252[1] = *(v0 + 437);
  v252[2] = v76;
  v224 = v0[467];
  v225 = v0[470];
  v227 = v0[473];
  v78 = *(v0 + 49);
  v79 = *(v0 + 53);
  v80 = *(v0 + 55);
  v249 = *(v0 + 51);
  v250 = v79;
  v251 = v80;
  v252[0] = v77;
  v81 = *(v0 + 41);
  v82 = *(v0 + 45);
  v83 = *(v0 + 47);
  v245 = *(v0 + 43);
  v246 = v82;
  v247 = v83;
  v248 = v78;
  v84 = *(v0 + 33);
  v85 = *(v0 + 37);
  v86 = *(v0 + 39);
  v241 = *(v0 + 35);
  v242 = v85;
  v226 = v0[476];
  v243 = v86;
  v244 = v81;
  v87 = *(v0 + 29);
  v237 = *(v0 + 27);
  v238 = v87;
  v239 = *(v0 + 31);
  v240 = v84;
  v88 = sub_10005DC58(&qword_100590B78, &qword_100494910);
  *(v1 + 1368) = v88;
  sub_1000C05E4(0, 10, 0);
  v89 = _swiftEmptyArrayStorage;
  v90 = _swiftEmptyArrayStorage[2];
  for (i = 16; i != 256; i += 24)
  {
    v92 = *(&v237 + i);
    v228 = v89;
    v93 = v89[3];
    if (v90 >= v93 >> 1)
    {
      sub_1000C05E4((v93 > 1), v90 + 1, 1);
      v89 = v228;
    }

    v89[2] = v90 + 1;
    v89[v90++ + 4] = v92;
  }

  *(v1 + 1344) = v89;
  *(v1 + 1376) = 0xD00000000000001CLL;
  *(v1 + 1384) = 0x80000001004BCD20;
  v249 = __dst[27];
  v250 = __dst[28];
  v251 = __dst[29];
  v245 = __dst[23];
  v246 = __dst[24];
  v247 = __dst[25];
  v248 = __dst[26];
  v241 = __dst[19];
  v242 = __dst[20];
  v243 = __dst[21];
  v244 = __dst[22];
  v237 = __dst[15];
  v238 = __dst[16];
  v239 = __dst[17];
  v240 = __dst[18];
  *(v1 + 1416) = v88;
  sub_1000C05E4(0, 10, 0);
  v94 = _swiftEmptyArrayStorage;
  v95 = _swiftEmptyArrayStorage[2];
  for (j = 16; j != 256; j += 24)
  {
    v97 = *(&v237 + j);
    v229 = v94;
    v98 = v94[3];
    if (v95 >= v98 >> 1)
    {
      sub_1000C05E4((v98 > 1), v95 + 1, 1);
      v94 = v229;
    }

    v94[2] = v95 + 1;
    v94[v95++ + 4] = v97;
  }

  *(v1 + 1392) = v94;
  *(v1 + 1424) = 0xD000000000000016;
  *(v1 + 1432) = 0x80000001004BCD40;
  v249 = __dst[42];
  v250 = __dst[43];
  v251 = __dst[44];
  v245 = __dst[38];
  v246 = __dst[39];
  v247 = __dst[40];
  v248 = __dst[41];
  v241 = __dst[34];
  v242 = __dst[35];
  v243 = __dst[36];
  v244 = __dst[37];
  v237 = __dst[30];
  v238 = __dst[31];
  v239 = __dst[32];
  v240 = __dst[33];
  *(v1 + 1464) = v88;
  sub_1000C05E4(0, 10, 0);
  v99 = _swiftEmptyArrayStorage;
  v100 = _swiftEmptyArrayStorage[2];
  for (k = 16; k != 256; k += 24)
  {
    v102 = *(&v237 + k);
    v230 = v99;
    v103 = v99[3];
    if (v100 >= v103 >> 1)
    {
      sub_1000C05E4((v103 > 1), v100 + 1, 1);
      v99 = v230;
    }

    v99[2] = v100 + 1;
    v99[v100++ + 4] = v102;
  }

  *(v1 + 1440) = v99;
  *(v1 + 1472) = 0xD000000000000014;
  *(v1 + 1480) = 0x80000001004BCD60;
  v249 = __dst[57];
  v250 = __dst[58];
  v251 = __dst[59];
  v245 = __dst[53];
  v246 = __dst[54];
  v247 = __dst[55];
  v248 = __dst[56];
  v241 = __dst[49];
  v242 = __dst[50];
  v243 = __dst[51];
  v244 = __dst[52];
  v237 = __dst[45];
  v238 = __dst[46];
  v239 = __dst[47];
  v240 = __dst[48];
  *(v1 + 1512) = v88;
  sub_1000C05E4(0, 10, 0);
  v104 = _swiftEmptyArrayStorage;
  v105 = _swiftEmptyArrayStorage[2];
  for (m = 16; m != 256; m += 24)
  {
    v107 = *(&v237 + m);
    v231 = v104;
    v108 = v104[3];
    if (v105 >= v108 >> 1)
    {
      sub_1000C05E4((v108 > 1), v105 + 1, 1);
      v104 = v231;
    }

    v104[2] = v105 + 1;
    v104[v105++ + 4] = v107;
  }

  *(v1 + 1488) = v104;
  *(v1 + 1520) = 0xD000000000000014;
  *(v1 + 1528) = 0x80000001004BCD80;
  v249 = __dst[72];
  v250 = __dst[73];
  v251 = __dst[74];
  v245 = __dst[68];
  v246 = __dst[69];
  v247 = __dst[70];
  v248 = __dst[71];
  v241 = __dst[64];
  v242 = __dst[65];
  v243 = __dst[66];
  v244 = __dst[67];
  v237 = __dst[60];
  v238 = __dst[61];
  v239 = __dst[62];
  v240 = __dst[63];
  *(v1 + 1560) = v88;
  sub_1000C05E4(0, 10, 0);
  v109 = _swiftEmptyArrayStorage;
  v110 = _swiftEmptyArrayStorage[2];
  for (n = 16; n != 256; n += 24)
  {
    v112 = *(&v237 + n);
    v232 = v109;
    v113 = v109[3];
    if (v110 >= v113 >> 1)
    {
      sub_1000C05E4((v113 > 1), v110 + 1, 1);
      v109 = v232;
    }

    v109[2] = v110 + 1;
    v109[v110++ + 4] = v112;
  }

  *(v1 + 1536) = v109;
  *(v1 + 1568) = 0xD000000000000015;
  *(v1 + 1576) = 0x80000001004BCDA0;
  v249 = __dst[87];
  v250 = __dst[88];
  v251 = __dst[89];
  v245 = __dst[83];
  v246 = __dst[84];
  v247 = __dst[85];
  v248 = __dst[86];
  v241 = __dst[79];
  v242 = __dst[80];
  v243 = __dst[81];
  v244 = __dst[82];
  v237 = __dst[75];
  v238 = __dst[76];
  v239 = __dst[77];
  v240 = __dst[78];
  *(v1 + 1608) = v88;
  sub_1000C05E4(0, 10, 0);
  v114 = _swiftEmptyArrayStorage;
  v115 = _swiftEmptyArrayStorage[2];
  for (ii = 16; ii != 256; ii += 24)
  {
    v117 = *(&v237 + ii);
    v233 = v114;
    v118 = v114[3];
    if (v115 >= v118 >> 1)
    {
      sub_1000C05E4((v118 > 1), v115 + 1, 1);
      v114 = v233;
    }

    v114[2] = v115 + 1;
    v114[v115++ + 4] = v117;
  }

  *(v1 + 1584) = v114;
  *(v1 + 1616) = 0xD000000000000013;
  *(v1 + 1624) = 0x80000001004BCDC0;
  *(v1 + 1656) = v88;
  *&v237 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 6, 0);
  v119 = v237;
  v121 = *(v237 + 16);
  v120 = *(v237 + 24);
  v122 = v120 >> 1;
  v123 = v121 + 1;
  if (v120 >> 1 <= v121)
  {
    sub_1000C05E4((v120 > 1), v121 + 1, 1);
    v119 = v237;
    v120 = *(v237 + 24);
    v122 = v120 >> 1;
  }

  *(v119 + 16) = v123;
  *(v119 + 8 * v121 + 32) = v29;
  *&v237 = v119;
  v124 = v121 + 2;
  if (v122 <= v123)
  {
    sub_1000C05E4((v120 > 1), v124, 1);
    v119 = v237;
  }

  *(v119 + 16) = v124;
  *(v119 + 8 * v123 + 32) = v30;
  *&v237 = v119;
  v126 = *(v119 + 16);
  v125 = *(v119 + 24);
  v127 = v125 >> 1;
  v128 = v126 + 1;
  if (v125 >> 1 <= v126)
  {
    sub_1000C05E4((v125 > 1), v126 + 1, 1);
    v119 = v237;
    v125 = *(v237 + 24);
    v127 = v125 >> 1;
  }

  *(v119 + 16) = v128;
  *(v119 + 8 * v126 + 32) = v31;
  *&v237 = v119;
  v129 = v126 + 2;
  if (v127 <= v128)
  {
    sub_1000C05E4((v125 > 1), v129, 1);
    v119 = v237;
  }

  *(v119 + 16) = v129;
  *(v119 + 8 * v128 + 32) = v32;
  *&v237 = v119;
  v131 = *(v119 + 16);
  v130 = *(v119 + 24);
  v132 = v130 >> 1;
  v133 = v131 + 1;
  if (v130 >> 1 <= v131)
  {
    sub_1000C05E4((v130 > 1), v131 + 1, 1);
    v119 = v237;
    v130 = *(v237 + 24);
    v132 = v130 >> 1;
  }

  *(v119 + 16) = v133;
  *(v119 + 8 * v131 + 32) = v33;
  *&v237 = v119;
  v134 = v131 + 2;
  if (v132 <= v133)
  {
    sub_1000C05E4((v130 > 1), v134, 1);
    v119 = v237;
  }

  *(v119 + 16) = v134;
  *(v119 + 8 * v133 + 32) = v34;
  *(v1 + 1632) = v119;
  *(v1 + 1664) = 0xD00000000000001DLL;
  *(v1 + 1672) = 0x80000001004BCDE0;
  v247 = v295;
  v248 = v296;
  v249 = v297;
  *&v250 = v298;
  v243 = v291;
  v244 = v292;
  v245 = v293;
  v246 = v294;
  v239 = v287;
  v240 = v288;
  v241 = v289;
  v242 = v290;
  v237 = v285;
  v238 = v286;
  *(v1 + 1704) = v88;
  sub_1000C05E4(0, 9, 0);
  v135 = _swiftEmptyArrayStorage;
  v136 = _swiftEmptyArrayStorage[2];
  for (jj = 16; jj != 232; jj += 24)
  {
    v138 = *(&v237 + jj);
    v234 = v135;
    v139 = v135[3];
    if (v136 >= v139 >> 1)
    {
      sub_1000C05E4((v139 > 1), v136 + 1, 1);
      v135 = v234;
    }

    v135[2] = v136 + 1;
    v135[v136++ + 4] = v138;
  }

  *(v1 + 1680) = v135;
  *(v1 + 1712) = 0xD000000000000021;
  *(v1 + 1720) = 0x80000001004BCE00;
  v247 = v281;
  v248 = v282;
  v249 = v283;
  *&v250 = v284;
  v243 = v277;
  v244 = v278;
  v245 = v279;
  v246 = v280;
  v239 = v273;
  v240 = v274;
  v241 = v275;
  v242 = v276;
  v237 = v271;
  v238 = v272;
  *(v1 + 1752) = v88;
  sub_1000C05E4(0, 9, 0);
  v140 = _swiftEmptyArrayStorage;
  v141 = _swiftEmptyArrayStorage[2];
  for (kk = 16; kk != 232; kk += 24)
  {
    v143 = *(&v237 + kk);
    v235 = v140;
    v144 = v140[3];
    if (v141 >= v144 >> 1)
    {
      sub_1000C05E4((v144 > 1), v141 + 1, 1);
      v140 = v235;
    }

    v140[2] = v141 + 1;
    v140[v141++ + 4] = v143;
  }

  *(v1 + 1728) = v140;
  *(v1 + 1760) = 0xD000000000000019;
  *(v1 + 1768) = 0x80000001004BCE30;
  *(v1 + 1800) = v88;
  *&v237 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 4, 0);
  v145 = v237;
  v147 = *(v237 + 16);
  v146 = *(v237 + 24);
  v148 = v146 >> 1;
  v149 = v147 + 1;
  if (v146 >> 1 <= v147)
  {
    sub_1000C05E4((v146 > 1), v147 + 1, 1);
    v145 = v237;
    v146 = *(v237 + 24);
    v148 = v146 >> 1;
  }

  *(v145 + 16) = v149;
  *(v145 + 8 * v147 + 32) = v41;
  *&v237 = v145;
  v150 = v147 + 2;
  if (v148 <= v149)
  {
    sub_1000C05E4((v146 > 1), v150, 1);
    v145 = v237;
  }

  *(v145 + 16) = v150;
  *(v145 + 8 * v149 + 32) = v213;
  *&v237 = v145;
  v152 = *(v145 + 16);
  v151 = *(v145 + 24);
  v153 = v151 >> 1;
  v154 = v152 + 1;
  if (v151 >> 1 <= v152)
  {
    sub_1000C05E4((v151 > 1), v152 + 1, 1);
    v145 = v237;
    v151 = *(v237 + 24);
    v153 = v151 >> 1;
  }

  *(v145 + 16) = v154;
  *(v145 + 8 * v152 + 32) = v214;
  *&v237 = v145;
  v155 = v152 + 2;
  if (v153 <= v154)
  {
    sub_1000C05E4((v151 > 1), v155, 1);
    v145 = v237;
  }

  *(v145 + 16) = v155;
  *(v145 + 8 * v154 + 32) = v215;
  *(v1 + 1776) = v145;
  *(v1 + 1808) = 0xD00000000000001ELL;
  *(v1 + 1816) = 0x80000001004BCE50;
  *(v1 + 1848) = v88;
  *&v237 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 5, 0);
  v156 = v237;
  v158 = *(v237 + 16);
  v157 = *(v237 + 24);
  v159 = v157 >> 1;
  v160 = v158 + 1;
  if (v157 >> 1 <= v158)
  {
    sub_1000C05E4((v157 > 1), v158 + 1, 1);
    v156 = v237;
    v157 = *(v237 + 24);
    v159 = v157 >> 1;
  }

  *(v156 + 16) = v160;
  *(v156 + 8 * v158 + 32) = v216;
  *&v237 = v156;
  v161 = v158 + 2;
  if (v159 <= v160)
  {
    sub_1000C05E4((v157 > 1), v161, 1);
    v156 = v237;
  }

  *(v156 + 16) = v161;
  *(v156 + 8 * v160 + 32) = v217;
  *&v237 = v156;
  v163 = *(v156 + 16);
  v162 = *(v156 + 24);
  v164 = v162 >> 1;
  v165 = v163 + 1;
  if (v162 >> 1 <= v163)
  {
    sub_1000C05E4((v162 > 1), v163 + 1, 1);
    v156 = v237;
    v162 = *(v237 + 24);
    v164 = v162 >> 1;
  }

  *(v156 + 16) = v165;
  *(v156 + 8 * v163 + 32) = v218;
  *&v237 = v156;
  v166 = v163 + 2;
  if (v164 <= v165)
  {
    sub_1000C05E4((v162 > 1), v166, 1);
    v156 = v237;
  }

  *(v156 + 16) = v166;
  *(v156 + 8 * v165 + 32) = v219;
  *&v237 = v156;
  v168 = *(v156 + 16);
  v167 = *(v156 + 24);
  if (v168 >= v167 >> 1)
  {
    sub_1000C05E4((v167 > 1), v168 + 1, 1);
    v156 = v237;
  }

  *(v156 + 16) = v168 + 1;
  *(v156 + 8 * v168 + 32) = v220;
  *(v1 + 1824) = v156;
  *(v1 + 1856) = 0x53544154535F4C4CLL;
  *(v1 + 1864) = 0xEF4143435F58545FLL;
  v249 = v268;
  v250 = v269;
  v251 = v270;
  v245 = v264;
  v246 = v265;
  v247 = v266;
  v248 = v267;
  v241 = v260;
  v242 = v261;
  v243 = v262;
  v244 = v263;
  v237 = v256;
  v238 = v257;
  v239 = v258;
  v240 = v259;
  *(v1 + 1896) = v88;
  sub_1000C05E4(0, 10, 0);
  v169 = _swiftEmptyArrayStorage;
  v170 = _swiftEmptyArrayStorage[2];
  for (mm = 16; mm != 256; mm += 24)
  {
    v172 = *(&v237 + mm);
    v236 = v169;
    v173 = v169[3];
    if (v170 >= v173 >> 1)
    {
      sub_1000C05E4((v173 > 1), v170 + 1, 1);
      v169 = v236;
    }

    v169[2] = v170 + 1;
    v169[v170++ + 4] = v172;
  }

  *(v1 + 1872) = v169;
  *(v1 + 1904) = 0xD000000000000016;
  *(v1 + 1912) = 0x80000001004BCE70;
  *(v1 + 1944) = v88;
  *&v237 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 3, 0);
  v174 = v237;
  v176 = *(v237 + 16);
  v175 = *(v237 + 24);
  v177 = v175 >> 1;
  v178 = v176 + 1;
  if (v175 >> 1 <= v176)
  {
    sub_1000C05E4((v175 > 1), v176 + 1, 1);
    v174 = v237;
    v175 = *(v237 + 24);
    v177 = v175 >> 1;
  }

  *(v174 + 16) = v178;
  *(v174 + 8 * v176 + 32) = v221;
  *&v237 = v174;
  v179 = v176 + 2;
  if (v177 <= v178)
  {
    sub_1000C05E4((v175 > 1), v179, 1);
    v174 = v237;
  }

  *(v174 + 16) = v179;
  *(v174 + 8 * v178 + 32) = v222;
  *&v237 = v174;
  v181 = *(v174 + 16);
  v180 = *(v174 + 24);
  if (v181 >= v180 >> 1)
  {
    sub_1000C05E4((v180 > 1), v181 + 1, 1);
    v174 = v237;
  }

  *(v174 + 16) = v181 + 1;
  *(v174 + 8 * v181 + 32) = v223;
  *(v1 + 1920) = v174;
  *(v1 + 1952) = 0xD000000000000017;
  *(v1 + 1960) = 0x80000001004BCE90;
  *(v1 + 1992) = v88;
  *&v237 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 10, 0);
  v182 = v237;
  v183 = *(v237 + 16);
  for (nn = 16; nn != 256; nn += 24)
  {
    v185 = *(v255 + nn);
    *&v237 = v182;
    v186 = *(v182 + 24);
    if (v183 >= v186 >> 1)
    {
      sub_1000C05E4((v186 > 1), v183 + 1, 1);
      v182 = v237;
    }

    *(v182 + 16) = v183 + 1;
    *(v182 + 8 * v183++ + 32) = v185;
  }

  *(v1 + 1968) = v182;
  *(v1 + 2000) = 0xD000000000000015;
  *(v1 + 2008) = 0x80000001004BCEB0;
  *(v1 + 2040) = v88;
  *&v237 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 10, 0);
  v187 = v237;
  v188 = *(v237 + 16);
  for (i1 = 16; i1 != 256; i1 += 24)
  {
    v190 = *(v254 + i1);
    *&v237 = v187;
    v191 = *(v187 + 24);
    if (v188 >= v191 >> 1)
    {
      sub_1000C05E4((v191 > 1), v188 + 1, 1);
      v187 = v237;
    }

    *(v187 + 16) = v188 + 1;
    *(v187 + 8 * v188++ + 32) = v190;
  }

  *(v1 + 2016) = v187;
  *(v1 + 2048) = 0xD000000000000014;
  *(v1 + 2056) = 0x80000001004BCED0;
  *(v1 + 2088) = v88;
  *&v237 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 10, 0);
  v192 = v237;
  v193 = *(v237 + 16);
  for (i2 = 16; i2 != 256; i2 += 24)
  {
    v195 = *(v253 + i2);
    *&v237 = v192;
    v196 = *(v192 + 24);
    if (v193 >= v196 >> 1)
    {
      sub_1000C05E4((v196 > 1), v193 + 1, 1);
      v192 = v237;
    }

    *(v192 + 16) = v193 + 1;
    *(v192 + 8 * v193++ + 32) = v195;
  }

  *(v1 + 2064) = v192;
  *(v1 + 2096) = 0xD000000000000015;
  *(v1 + 2104) = 0x80000001004BCEF0;
  *(v1 + 2136) = v88;
  *&v237 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 10, 0);
  v197 = v237;
  v198 = *(v237 + 16);
  for (i3 = 16; i3 != 256; i3 += 24)
  {
    v200 = *(v252 + i3);
    *&v237 = v197;
    v201 = *(v197 + 24);
    if (v198 >= v201 >> 1)
    {
      sub_1000C05E4((v201 > 1), v198 + 1, 1);
      v197 = v237;
    }

    *(v197 + 16) = v198 + 1;
    *(v197 + 8 * v198++ + 32) = v200;
  }

  *(v1 + 2112) = v197;
  *(v1 + 2144) = 0xD000000000000010;
  *(v1 + 2152) = 0x80000001004BCF10;
  *(v1 + 2184) = v88;
  *&v237 = _swiftEmptyArrayStorage;
  sub_1000C05E4(0, 4, 0);
  v202 = v237;
  v204 = *(v237 + 16);
  v203 = *(v237 + 24);
  v205 = v203 >> 1;
  v206 = v204 + 1;
  if (v203 >> 1 <= v204)
  {
    sub_1000C05E4((v203 > 1), v204 + 1, 1);
    v202 = v237;
    v203 = *(v237 + 24);
    v205 = v203 >> 1;
  }

  *(v202 + 16) = v206;
  *(v202 + 8 * v204 + 32) = v224;
  *&v237 = v202;
  if (v205 <= v206)
  {
    sub_1000C05E4((v203 > 1), v204 + 2, 1);
    v202 = v237;
  }

  *(v202 + 16) = v204 + 2;
  *(v202 + 8 * v206 + 32) = v225;
  *&v237 = v202;
  v208 = *(v202 + 16);
  v207 = *(v202 + 24);
  v209 = v207 >> 1;
  v210 = v208 + 1;
  if (v207 >> 1 <= v208)
  {
    sub_1000C05E4((v207 > 1), v208 + 1, 1);
    v202 = v237;
    v207 = *(v237 + 24);
    v209 = v207 >> 1;
  }

  *(v202 + 16) = v210;
  *(v202 + 8 * v208 + 32) = v227;
  *&v237 = v202;
  if (v209 <= v210)
  {
    sub_1000C05E4((v207 > 1), v208 + 2, 1);
    v202 = v237;
  }

  *(v202 + 16) = v208 + 2;
  *(v202 + 8 * v210 + 32) = v226;
  *(v1 + 2160) = v202;
  v211 = sub_1000827F8(v1);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BB40, &unk_100480E70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v211;
}

unint64_t apple80211_awdl_rtg_ext_stats.eventPayload()()
{
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v1 = swift_allocObject();
  *(v1 + 32) = 0xD000000000000029;
  *(v1 + 40) = 0x80000001004BBCE0;
  *(v1 + 48) = *v0;
  *(v1 + 80) = 0xD000000000000028;
  *(v1 + 88) = 0x80000001004BBD10;
  *(v1 + 96) = *(v0 + 2);
  *(v1 + 136) = 0x80000001004BBD40;
  *(v1 + 144) = *(v0 + 4);
  v2 = *(v0 + 6);
  *(v1 + 184) = 0x80000001004BBCE0;
  v3 = *(v0 + 8);
  *(v1 + 192) = v2;
  *(v1 + 232) = 0x80000001004BBD70;
  v4 = *(v0 + 10);
  *(v1 + 240) = v3;
  *(v1 + 280) = 0x80000001004BBDA0;
  v5 = *(v0 + 12);
  *(v1 + 288) = v4;
  *(v1 + 328) = 0x80000001004BBDD0;
  v6 = *(v0 + 14);
  *(v1 + 336) = v5;
  *(v1 + 224) = 0xD00000000000002CLL;
  *(v1 + 368) = 0xD00000000000002CLL;
  *(v1 + 376) = 0x80000001004BBE00;
  v7 = *(v0 + 16);
  *(v1 + 384) = v6;
  *(v1 + 424) = 0x80000001004BBE30;
  v8 = *(v0 + 18);
  *(v1 + 432) = v7;
  *(v1 + 464) = 0xD000000000000013;
  *(v1 + 472) = 0x80000001004BBE60;
  *(v1 + 480) = v8;
  v9 = *(v0 + 20);
  *(v1 + 520) = 0x80000001004BBE80;
  v10 = *(v0 + 22);
  *(v1 + 528) = v9;
  *(v1 + 560) = 0xD000000000000020;
  *(v1 + 568) = 0x80000001004BBEA0;
  v11 = *(v0 + 24);
  *(v1 + 576) = v10;
  *(v1 + 616) = 0x80000001004BBED0;
  v12 = *(v0 + 26);
  *(v1 + 624) = v11;
  *(v1 + 272) = 0xD00000000000002ALL;
  *(v1 + 416) = 0xD00000000000002ALL;
  *(v1 + 656) = 0xD00000000000002ALL;
  *(v1 + 664) = 0x80000001004BBF00;
  v13 = *(v0 + 28);
  *(v1 + 672) = v12;
  *(v1 + 712) = 0x80000001004BBF30;
  v14 = *(v0 + 30);
  *(v1 + 720) = v13;
  *(v1 + 760) = 0x80000001004BBF60;
  *(v1 + 768) = v14;
  v15 = *(v0 + 32);
  *(v1 + 808) = 0x80000001004BBF90;
  v16 = *(v0 + 34);
  *(v1 + 816) = v15;
  *(v1 + 704) = 0xD000000000000021;
  *(v1 + 848) = 0xD000000000000021;
  *(v1 + 856) = 0x80000001004BBFC0;
  v17 = *(v0 + 36);
  *(v1 + 864) = v16;
  *(v1 + 904) = 0x80000001004BBFF0;
  *(v1 + 912) = v17;
  v18 = *(v0 + 38);
  *(v1 + 952) = 0x80000001004BC020;
  v19 = *(v0 + 40);
  *(v1 + 960) = v18;
  *(v1 + 1000) = 0x80000001004BC050;
  v20 = *(v0 + 42);
  *(v1 + 1008) = v19;
  *(v1 + 1048) = 0x80000001004BC070;
  v21 = *(v0 + 44);
  *(v1 + 1056) = v20;
  *(v1 + 1096) = 0x80000001004BC090;
  v22 = *(v0 + 46);
  *(v1 + 1104) = v21;
  *(v1 + 992) = 0xD00000000000001ALL;
  *(v1 + 1136) = 0xD00000000000001ALL;
  *(v1 + 1144) = 0x80000001004BC0B0;
  v23 = *(v0 + 48);
  *(v1 + 1152) = v22;
  *(v1 + 1192) = 0x80000001004BC0D0;
  *(v1 + 1088) = 0xD00000000000001BLL;
  *(v1 + 1200) = v23;
  *(v1 + 1232) = 0xD00000000000001BLL;
  v24 = *(v0 + 50);
  *(v1 + 1240) = 0x80000001004BC0F0;
  v25 = *(v0 + 52);
  *(v1 + 1248) = v24;
  *(v1 + 1288) = 0x80000001004BC110;
  v26 = *(v0 + 54);
  *(v1 + 1296) = v25;
  *(v1 + 1328) = 0xD00000000000002ELL;
  *(v1 + 1336) = 0x80000001004BC140;
  v27 = *(v0 + 56);
  *(v1 + 1344) = v26;
  *(v1 + 800) = 0xD00000000000002BLL;
  *(v1 + 944) = 0xD00000000000002BLL;
  *(v1 + 1376) = 0xD00000000000002BLL;
  *(v1 + 1384) = 0x80000001004BC170;
  *(v1 + 608) = 0xD000000000000027;
  *(v1 + 1392) = v27;
  *(v1 + 1424) = 0xD000000000000027;
  *(v1 + 1432) = 0x80000001004BC1A0;
  *(v1 + 1440) = *(v0 + 58);
  v28 = *(v0 + 60);
  *(v1 + 176) = 0xD000000000000029;
  *(v1 + 320) = 0xD000000000000029;
  *(v1 + 1472) = 0xD000000000000029;
  *(v1 + 1480) = 0x80000001004BC1D0;
  v29 = *(v0 + 62);
  *(v1 + 1488) = v28;
  *(v1 + 512) = 0xD00000000000001CLL;
  *(v1 + 1520) = 0xD00000000000001CLL;
  *(v1 + 1528) = 0x80000001004BC200;
  *(v1 + 1536) = v29;
  *(v1 + 1568) = 0xD000000000000019;
  LOBYTE(v28) = *(v0 + 63);
  *(v1 + 1576) = 0x80000001004BC220;
  v30 = *(v0 + 64);
  *(v1 + 1584) = v28;
  *(v1 + 1616) = 0xD000000000000023;
  *(v1 + 1624) = 0x80000001004BC240;
  LOBYTE(v28) = *(v0 + 65);
  *(v1 + 1632) = v30;
  *(v1 + 1672) = 0x80000001004BC270;
  v31 = *(v0 + 66);
  *(v1 + 1680) = v28;
  *(v1 + 1720) = 0x80000001004BC290;
  LOBYTE(v28) = *(v0 + 67);
  *(v1 + 1728) = v31;
  *(v1 + 1712) = 0xD000000000000017;
  *(v1 + 1760) = 0xD000000000000017;
  *(v1 + 1768) = 0x80000001004BC2B0;
  v32 = *(v0 + 71);
  *(v1 + 1776) = v28;
  *(v1 + 1816) = 0x80000001004BC2D0;
  LOBYTE(v28) = *(v0 + 72);
  *(v1 + 1824) = v32;
  *(v1 + 1864) = 0x80000001004BC2F0;
  *(v1 + 1872) = v28;
  LOBYTE(v28) = *(v0 + 68);
  *(v1 + 1912) = 0x80000001004BC310;
  v33 = *(v0 + 70);
  *(v1 + 1920) = v28;
  *(v1 + 1952) = 0xD000000000000024;
  *(v1 + 1960) = 0x80000001004BC340;
  *(v1 + 1904) = 0xD000000000000022;
  *(v1 + 1968) = v33;
  *(v1 + 2000) = 0xD000000000000022;
  *(v1 + 2008) = 0x80000001004BC370;
  *(v1 + 2016) = *(v0 + 69);
  *(v1 + 72) = &type metadata for UInt16;
  *(v1 + 168) = &type metadata for UInt16;
  *(v1 + 216) = &type metadata for UInt16;
  *(v1 + 264) = &type metadata for UInt16;
  *(v1 + 312) = &type metadata for UInt16;
  *(v1 + 360) = &type metadata for UInt16;
  *(v1 + 408) = &type metadata for UInt16;
  *(v1 + 456) = &type metadata for UInt16;
  *(v1 + 504) = &type metadata for UInt16;
  *(v1 + 1040) = 0xD00000000000001DLL;
  *(v1 + 1184) = 0xD00000000000001DLL;
  *(v1 + 1664) = 0xD00000000000001DLL;
  *(v1 + 1808) = 0xD00000000000001DLL;
  *(v1 + 1856) = 0xD00000000000001DLL;
  *(v1 + 552) = &type metadata for UInt16;
  *(v1 + 600) = &type metadata for UInt16;
  *(v1 + 648) = &type metadata for UInt16;
  *(v1 + 696) = &type metadata for UInt16;
  *(v1 + 744) = &type metadata for UInt16;
  *(v1 + 792) = &type metadata for UInt16;
  *(v1 + 840) = &type metadata for UInt16;
  *(v1 + 888) = &type metadata for UInt16;
  *(v1 + 936) = &type metadata for UInt16;
  *(v1 + 984) = &type metadata for UInt16;
  *(v1 + 1032) = &type metadata for UInt16;
  *(v1 + 1080) = &type metadata for UInt16;
  *(v1 + 1128) = &type metadata for UInt16;
  *(v1 + 1176) = &type metadata for UInt16;
  *(v1 + 1224) = &type metadata for UInt16;
  *(v1 + 1272) = &type metadata for UInt16;
  *(v1 + 1320) = &type metadata for UInt16;
  *(v1 + 1368) = &type metadata for UInt16;
  *(v1 + 1416) = &type metadata for UInt16;
  *(v1 + 1464) = &type metadata for UInt16;
  *(v1 + 1512) = &type metadata for UInt16;
  *(v1 + 120) = &type metadata for UInt16;
  *(v1 + 128) = 0xD000000000000026;
  *(v1 + 752) = 0xD000000000000026;
  *(v1 + 896) = 0xD000000000000026;
  *(v1 + 1280) = 0xD000000000000026;
  *(v1 + 2048) = 0xD000000000000026;
  *(v1 + 2056) = 0x80000001004BC3A0;
  *(v1 + 1560) = &type metadata for Bool;
  *(v1 + 1608) = &type metadata for Bool;
  *(v1 + 1656) = &type metadata for Bool;
  *(v1 + 1704) = &type metadata for Bool;
  *(v1 + 1752) = &type metadata for Bool;
  *(v1 + 1800) = &type metadata for Bool;
  *(v1 + 1848) = &type metadata for Bool;
  *(v1 + 1896) = &type metadata for Bool;
  *(v1 + 1944) = &type metadata for Bool;
  *(v1 + 1992) = &type metadata for Bool;
  *(v1 + 2040) = &type metadata for Bool;
  *(v1 + 2088) = &type metadata for Bool;
  *(v1 + 2064) = *(v0 + 73);
  *(v1 + 16) = xmmword_1004940F0;
  v34 = sub_1000827F8(v1);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BB40, &unk_100480E70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v34;
}

uint64_t apple80211_awdl_low_latency_statistics.eventPayload()()
{
  v1 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  sub_10005DC58(qword_10058C850, &unk_100486F10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100494100;
  strcpy((v2 + 32), "LL_STATS_ISSDB");
  *(v2 + 47) = -18;
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 24);
  v6 = *(v0 + 28);
  v20 = *(v0 + 36);
  v21 = *(v0 + 60);
  v22 = *(v0 + 48);
  v23 = *(v0 + 72);
  v24 = *(v0 + 80);
  v25 = *(v0 + 84);
  v26 = *(v0 + 88);
  v27 = *(v0 + 92);
  v28 = *(v0 + 96);
  v29 = *(v0 + 100);
  v30 = *(v0 + 104);
  v31 = *(v0 + 112);
  v32 = *(v0 + 120);
  v33 = *(v0 + 124);
  v34 = *(v0 + 128);
  v35 = *(v0 + 132);
  v37 = *(v0 + 136);
  v40 = *(v0 + 140);
  v42 = *(v0 + 144);
  v43 = *(v0 + 148);
  *(v2 + 48) = *(v0 + 8);
  *(v2 + 72) = &type metadata for Bool;
  *(v2 + 80) = 0xD000000000000015;
  v36 = *(v0 + 152);
  *(v2 + 88) = 0x80000001004BC3D0;
  v7 = *(v0 + 200);
  v38 = *(v0 + 156);
  v39 = *(v0 + 157);
  v41 = *(v0 + 159);
  v44 = *(v0 + 160);
  v46 = *(v0 + 161);
  v47 = *(v0 + 164);
  v48 = *(v0 + 168);
  v49 = *(v0 + 172);
  v50 = *(v0 + 176);
  v51 = *(v0 + 180);
  v52 = *(v0 + 184);
  v53 = *(v0 + 192);
  v45 = *(v0 + 162);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100483520;
  *(v8 + 32) = v3;
  v55[0] = v8;
  static String.Encoding.utf8.getter();
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_1001E9D6C();
  v9 = String.init<A>(bytes:encoding:)();
  v11 = v10;

  *(v2 + 144) = v4;
  *(v2 + 192) = v5;
  *(v2 + 240) = v6;
  v12 = 0xE000000000000000;
  if (v11)
  {
    v12 = v11;
    v13 = v9;
  }

  else
  {
    v13 = 0;
  }

  *(v2 + 96) = v13;
  *(v2 + 104) = v12;
  *(v2 + 128) = 0xD000000000000014;
  *(v2 + 136) = 0x80000001004BC3F0;
  *(v2 + 184) = 0x80000001004BC410;
  *(v2 + 216) = &type metadata for Int32;
  *(v2 + 168) = &type metadata for Int32;
  *(v2 + 120) = &type metadata for String;
  *(v2 + 176) = 0xD000000000000013;
  *(v2 + 224) = 0xD000000000000013;
  *(v2 + 232) = 0x80000001004BC430;
  *(v2 + 280) = 0x80000001004BC450;
  *(v2 + 288) = v20;
  *(v2 + 264) = &type metadata for UInt32;
  *(v2 + 272) = 0xD00000000000001DLL;
  *(v2 + 312) = &type metadata for UInt32;
  *(v2 + 320) = 0xD00000000000001DLL;
  *(v2 + 328) = 0x80000001004BC470;
  *(v2 + 336) = v21;
  *(v2 + 360) = &type metadata for UInt32;
  *(v2 + 368) = 0xD00000000000001ELL;
  *(v2 + 376) = 0x80000001004BC490;
  *(v2 + 384) = v22;
  *(v2 + 408) = &type metadata for UInt32;
  *(v2 + 416) = 0xD00000000000001ELL;
  *(v2 + 424) = 0x80000001004BC4B0;
  *(v2 + 432) = v23;
  *(v2 + 456) = &type metadata for UInt32;
  *(v2 + 464) = 0xD000000000000022;
  *(v2 + 472) = 0x80000001004BC4D0;
  *(v2 + 480) = v24;
  *(v2 + 504) = &type metadata for UInt32;
  *(v2 + 512) = 0xD000000000000022;
  *(v2 + 520) = 0x80000001004BC500;
  *(v2 + 552) = &type metadata for UInt32;
  *(v2 + 528) = v25;
  *(v2 + 560) = 0xD000000000000022;
  *(v2 + 568) = 0x80000001004BC530;
  *(v2 + 600) = &type metadata for UInt32;
  *(v2 + 576) = v26;
  *(v2 + 608) = 0xD000000000000022;
  *(v2 + 616) = 0x80000001004BC560;
  *(v2 + 648) = &type metadata for UInt32;
  *(v2 + 624) = v27;
  *(v2 + 656) = 0xD000000000000028;
  *(v2 + 664) = 0x80000001004BC590;
  *(v2 + 696) = &type metadata for UInt32;
  *(v2 + 672) = v28;
  *(v2 + 704) = 0xD000000000000029;
  *(v2 + 712) = 0x80000001004BC5C0;
  *(v2 + 744) = &type metadata for UInt32;
  *(v2 + 720) = v29;
  *(v2 + 752) = 0xD00000000000001CLL;
  *(v2 + 760) = 0x80000001004BC5F0;
  *(v2 + 792) = &type metadata for Bool;
  *(v2 + 768) = v30;
  *(v2 + 800) = 0xD000000000000019;
  *(v2 + 808) = 0x80000001004BC610;
  *(v2 + 840) = &type metadata for UInt64;
  *(v2 + 816) = v31;
  *(v2 + 848) = 0xD000000000000019;
  *(v2 + 856) = 0x80000001004BC630;
  *(v2 + 888) = &type metadata for UInt32;
  *(v2 + 864) = v32;
  *(v2 + 896) = 0xD00000000000001ALL;
  *(v2 + 904) = 0x80000001004BC650;
  *(v2 + 936) = &type metadata for UInt32;
  *(v2 + 912) = v33;
  *(v2 + 944) = 0xD000000000000023;
  *(v2 + 952) = 0x80000001004BC670;
  *(v2 + 984) = &type metadata for UInt32;
  *(v2 + 960) = v34;
  *(v2 + 992) = 0xD00000000000001BLL;
  *(v2 + 1000) = 0x80000001004BC6A0;
  *(v2 + 1032) = &type metadata for UInt32;
  *(v2 + 1008) = v35;
  *(v2 + 1040) = 0xD00000000000001BLL;
  *(v2 + 1048) = 0x80000001004BC6C0;
  *(v2 + 1080) = &type metadata for UInt32;
  *(v2 + 1056) = v37;
  *(v2 + 1088) = 0xD000000000000021;
  *(v2 + 1096) = 0x80000001004BC6E0;
  *(v2 + 1128) = &type metadata for UInt32;
  *(v2 + 1104) = v40;
  *(v2 + 1136) = 0xD00000000000001FLL;
  *(v2 + 1144) = 0x80000001004BC710;
  *(v2 + 1176) = &type metadata for UInt32;
  *(v2 + 1152) = v42;
  *(v2 + 1184) = 0xD000000000000023;
  *(v2 + 1192) = 0x80000001004BC730;
  *(v2 + 1224) = &type metadata for UInt32;
  *(v2 + 1200) = v43;
  *(v2 + 1232) = 0xD00000000000001FLL;
  *(v2 + 1240) = 0x80000001004BC760;
  *(v2 + 1272) = &type metadata for UInt32;
  *(v2 + 1248) = v36;
  *(v2 + 1280) = 0xD00000000000001DLL;
  *(v2 + 1288) = 0x80000001004BC780;
  *(v2 + 1320) = &type metadata for Bool;
  *(v2 + 1296) = v38;
  *(v2 + 1328) = 0xD00000000000001DLL;
  *(v2 + 1336) = 0x80000001004BC7A0;
  *(v2 + 1368) = &type metadata for Bool;
  *(v2 + 1344) = v39;
  *(v2 + 1376) = 0xD000000000000018;
  *(v2 + 1384) = 0x80000001004BC7C0;
  *(v2 + 1416) = &type metadata for Bool;
  *(v2 + 1392) = v41;
  *(v2 + 1424) = 0xD000000000000017;
  *(v2 + 1432) = 0x80000001004BC7E0;
  *(v2 + 1464) = &type metadata for Bool;
  *(v2 + 1440) = v44;
  *(v2 + 1472) = 0xD000000000000021;
  *(v2 + 1480) = 0x80000001004BC800;
  *(v2 + 1512) = &type metadata for UInt8;
  *(v2 + 1488) = v46;
  *(v2 + 1520) = 0x53544154535F4C4CLL;
  *(v2 + 1528) = 0xEF44495F4754525FLL;
  v14 = WiFiAddress.description.getter(v45 | (v47 << 16));
  *(v2 + 1560) = &type metadata for String;
  *(v2 + 1536) = v14;
  *(v2 + 1544) = v15;
  *(v2 + 1568) = 0xD000000000000012;
  *(v2 + 1576) = 0x80000001004BC830;
  *(v2 + 1608) = &type metadata for Bool;
  *(v2 + 1584) = v48;
  *(v2 + 1616) = 0xD000000000000021;
  *(v2 + 1624) = 0x80000001004BC850;
  *(v2 + 1656) = &type metadata for UInt32;
  *(v2 + 1632) = v49;
  *(v2 + 1664) = 0xD000000000000021;
  *(v2 + 1672) = 0x80000001004BC880;
  *(v2 + 1704) = &type metadata for UInt32;
  *(v2 + 1680) = v50;
  *(v2 + 1712) = 0xD000000000000025;
  *(v2 + 1720) = 0x80000001004BC8B0;
  *(v2 + 1752) = &type metadata for UInt32;
  *(v2 + 1728) = v51;
  *(v2 + 1760) = 0xD000000000000021;
  *(v2 + 1768) = 0x80000001004BC8E0;
  *(v2 + 1800) = &type metadata for UInt32;
  *(v2 + 1776) = v52;
  *(v2 + 1808) = 0xD000000000000018;
  *(v2 + 1816) = 0x80000001004BC910;
  *(v2 + 1848) = &type metadata for UInt64;
  *(v2 + 1824) = v53;
  *(v2 + 1856) = 0xD000000000000023;
  *(v2 + 1864) = 0x80000001004BC930;
  *(v2 + 1896) = &type metadata for Double;
  *(v2 + 1872) = v7;
  v16 = sub_1000827F8(v2);
  swift_setDeallocating();
  sub_10005DC58(&qword_10058BB40, &unk_100480E70);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  memcpy(v55, (v0 + 208), sizeof(v55));
  v17 = sub_1001E58E4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v16;
  sub_1001EAAA4(v17, sub_1001E8450, 0, isUniquelyReferenced_nonNull_native, &v54);

  return v54;
}

uint64_t sub_1001E8450@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_100002B30((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

id sub_1001E849C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_100002B30(*(v3 + 56) + 32 * v13, &v19);
    *&v22[0] = v14;
    sub_100085188(&v19, (v22 + 8));
    result = v14;
    v16 = *&v22[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19 = v16;
      v20 = *(v22 + 8);
      v21 = *(&v22[1] + 8);
      v18(&v19);
      return sub_100016290(&v19, &qword_100590BB8, &qword_100494950);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v22, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1001E85EC@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100002B30(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_100085188(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_100016290(v22, &qword_100590B70, &qword_100494908);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1001E874C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

BOOL _s7CoreP2P14AWDLStatisticsO17AirPlayStatisticsV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 34) != *(a2 + 34) || *(a1 + 36) != *(a2 + 36) || *(a1 + 38) != *(a2 + 38) || *(a1 + 40) != *(a2 + 40) || *(a1 + 42) != *(a2 + 42) || *(a1 + 43) != *(a2 + 43) || *(a1 + 44) != *(a2 + 44) || *(a1 + 48) != *(a2 + 48) || *(a1 + 52) != *(a2 + 52) || *(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60) || *(a1 + 61) != *(a2 + 61) || ((*(a1 + 62) ^ *(a2 + 62)) & 1) != 0 || ((*(a1 + 63) ^ *(a2 + 63)) & 1) != 0 || ((*(a1 + 64) ^ *(a2 + 64)) & 1) != 0 || ((*(a1 + 65) ^ *(a2 + 65)) & 1) != 0 || ((*(a1 + 66) ^ *(a2 + 66)) & 1) != 0 || ((*(a1 + 67) ^ *(a2 + 67)) & 1) != 0 || *(a1 + 68) != *(a2 + 68) || *(a1 + 69) != *(a2 + 69) || *(a1 + 70) != *(a2 + 70) || *(a1 + 71) != *(a2 + 71) || *(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  v2 = *(a1 + 88);
  v4 = *(a1 + 96);
  v3 = *(a1 + 104);
  v5 = *(a2 + 88);
  v7 = *(a2 + 96);
  v6 = *(a2 + 104);
  return (sub_1000BC518(*(a1 + 80), *(a2 + 80)) & 1) != 0 && (sub_1000BC518(v2, v5) & 1) != 0 && (sub_1000BC518(v4, v7) & 1) != 0 && (sub_1000BC518(v3, v6) & 1) != 0;
}

uint64_t _s7CoreP2P14AWDLStatisticsO13RtgStatisticsV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4] && a1[5] == a2[5] && a1[6] == a2[6] && a1[7] == a2[7] && a1[8] == a2[8] && a1[9] == a2[9] && a1[10] == a2[10] && a1[11] == a2[11] && a1[12] == a2[12] && a1[13] == a2[13] && a1[14] == a2[14] && a1[15] == a2[15] && a1[16] == a2[16] && a1[17] == a2[17] && a1[18] == a2[18] && a1[19] == a2[19] && a1[20] == a2[20] && a1[21] == a2[21] && a1[22] == a2[22] && a1[23] == a2[23] && a1[24] == a2[24] && a1[25] == a2[25] && a1[26] == a2[26] && a1[27] == a2[27] && a1[28] == a2[28] && a1[29] == a2[29] && a1[30] == a2[30] && ((*(a1 + 62) ^ *(a2 + 62)) & 1) == 0 && ((*(a1 + 63) ^ *(a2 + 63)) & 1) == 0 && ((*(a1 + 64) ^ *(a2 + 64)) & 1) == 0 && ((*(a1 + 65) ^ *(a2 + 65)) & 1) == 0 && ((*(a1 + 66) ^ *(a2 + 66)) & 1) == 0 && ((*(a1 + 67) ^ *(a2 + 67)) & 1) == 0 && ((*(a1 + 68) ^ *(a2 + 68)) & 1) == 0 && ((*(a1 + 69) ^ *(a2 + 69)) & 1) == 0 && ((*(a1 + 70) ^ *(a2 + 70)) & 1) == 0 && ((*(a1 + 71) ^ *(a2 + 71)) & 1) == 0 && ((*(a1 + 72) ^ *(a2 + 72)) & 1) == 0)
  {
    return (*(a1 + 73) ^ *(a2 + 73) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL _s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV13ConfigurationV23__derived_struct_equalsySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v2 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || *(a1 + 3) != *(a2 + 3))
  {
    return 0;
  }

  v3 = *(a1 + 8) | (*(a1 + 18) << 32);
  v4 = *(a2 + 8) | (*(a2 + 18) << 32);
  v5 = v4 & 0xFF00000000;
  if ((v3 & 0xFF00000000) != 0x300000000)
  {
    if (v5 == 0x300000000)
    {
      return 0;
    }

    *(a1 + 18);
    *(a2 + 18);
    if (*(a1 + 8) != *(a2 + 8) || ((0x801004u >> ((v3 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v4 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v24 = v3 >> 40;
    v25 = v4 >> 40;
    if (v24 <= 3)
    {
      if (v24 == 2)
      {
        if (v25 != 2)
        {
          return 0;
        }

        goto LABEL_12;
      }

      if (v24 == 3)
      {
        if (v25 != 3)
        {
          return 0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      switch(v24)
      {
        case 4:
          if (v25 != 4)
          {
            return 0;
          }

          goto LABEL_12;
        case 5:
          if (v25 != 5)
          {
            return 0;
          }

          goto LABEL_12;
        case 6:
          if (v25 != 6)
          {
            return 0;
          }

          goto LABEL_12;
      }
    }

    if (v25 - 2) < 5 || ((v25 ^ v24))
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (v5 != 0x300000000)
  {
    return 0;
  }

LABEL_12:
  v6 = *(a1 + 10) | (*(a1 + 22) << 32);
  v7 = *(a2 + 10) | (*(a2 + 22) << 32);
  v8 = v7 & 0xFF00000000;
  if ((v6 & 0xFF00000000) != 0x300000000)
  {
    if (v8 == 0x300000000)
    {
      return 0;
    }

    *(a1 + 22);
    *(a2 + 22);
    if (*(a1 + 10) != *(a2 + 10) || ((0x801004u >> ((v6 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v7 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v26 = v6 >> 40;
    v27 = v7 >> 40;
    if (v26 <= 3)
    {
      if (v26 == 2)
      {
        if (v27 != 2)
        {
          return 0;
        }

        goto LABEL_14;
      }

      if (v26 == 3)
      {
        if (v27 != 3)
        {
          return 0;
        }

        goto LABEL_14;
      }
    }

    else
    {
      switch(v26)
      {
        case 4:
          if (v27 != 4)
          {
            return 0;
          }

          goto LABEL_14;
        case 5:
          if (v27 != 5)
          {
            return 0;
          }

          goto LABEL_14;
        case 6:
          if (v27 != 6)
          {
            return 0;
          }

          goto LABEL_14;
      }
    }

    if (v27 - 2) < 5 || ((v27 ^ v26))
    {
      return 0;
    }

    goto LABEL_14;
  }

  if (v8 != 0x300000000)
  {
    return 0;
  }

LABEL_14:
  v9 = *(a1 + 12) | (*(a1 + 26) << 32);
  v10 = *(a2 + 12) | (*(a2 + 26) << 32);
  v11 = v10 & 0xFF00000000;
  if ((v9 & 0xFF00000000) != 0x300000000)
  {
    if (v11 == 0x300000000)
    {
      return 0;
    }

    *(a1 + 26);
    *(a2 + 26);
    if (*(a1 + 12) != *(a2 + 12) || ((0x801004u >> ((v9 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v10 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v28 = v9 >> 40;
    v29 = v10 >> 40;
    if (v28 <= 3)
    {
      if (v28 == 2)
      {
        if (v29 != 2)
        {
          return 0;
        }

        goto LABEL_16;
      }

      if (v28 == 3)
      {
        if (v29 != 3)
        {
          return 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      switch(v28)
      {
        case 4:
          if (v29 != 4)
          {
            return 0;
          }

          goto LABEL_16;
        case 5:
          if (v29 != 5)
          {
            return 0;
          }

          goto LABEL_16;
        case 6:
          if (v29 != 6)
          {
            return 0;
          }

          goto LABEL_16;
      }
    }

    if (v29 - 2) < 5 || ((v29 ^ v28))
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v11 != 0x300000000)
  {
    return 0;
  }

LABEL_16:
  v12 = *(a1 + 14) | (*(a1 + 30) << 32);
  v13 = *(a2 + 14) | (*(a2 + 30) << 32);
  v14 = v13 & 0xFF00000000;
  if ((v12 & 0xFF00000000) == 0x300000000)
  {
    if (v14 == 0x300000000)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (v14 == 0x300000000)
  {
    return 0;
  }

  *(a1 + 30);
  *(a2 + 30);
  if (*(a1 + 14) != *(a2 + 14) || ((0x801004u >> ((v12 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v13 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  v30 = v12 >> 40;
  v31 = v13 >> 40;
  if (v30 <= 3)
  {
    if (v30 == 2)
    {
      if (v31 == 2)
      {
        goto LABEL_18;
      }

      return 0;
    }

    if (v30 == 3)
    {
      if (v31 == 3)
      {
        goto LABEL_18;
      }

      return 0;
    }
  }

  else
  {
    switch(v30)
    {
      case 4:
        if (v31 == 4)
        {
          goto LABEL_18;
        }

        return 0;
      case 5:
        if (v31 == 5)
        {
          goto LABEL_18;
        }

        return 0;
      case 6:
        if (v31 == 6)
        {
          goto LABEL_18;
        }

        return 0;
    }
  }

  if (v31 - 2) < 5 || ((v31 ^ v30))
  {
    return 0;
  }

LABEL_18:
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10))
  {
    return 0;
  }

  if (*(a1 + 11) == *(a2 + 11) && *(a1 + 12) == *(a2 + 12) && *(a1 + 13) == *(a2 + 13) && a1[112] == a2[112] && (v17 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0), v18 = v17[20], (static DispatchTimeInterval.== infix(_:_:)() & 1) != 0) && *&a1[v17[21]] == *&a2[v17[21]] && *&a1[v17[22]] == *&a2[v17[22]] && *&a1[v17[23]] == *&a2[v17[23]] && *&a1[v17[24]] == *&a2[v17[24]] && *&a1[v17[25]] == *&a2[v17[25]] && *&a1[v17[26]] == *&a2[v17[26]] && *&a1[v17[27]] == *&a2[v17[27]] && *&a1[v17[28]] == *&a2[v17[28]] && *&a1[v17[29]] == *&a2[v17[29]] && a1[v17[30]] == a2[v17[30]] && a1[v17[31]] == a2[v17[31]] && a1[v17[32]] == a2[v17[32]] && a1[v17[33]] == a2[v17[33]] && a1[v17[34]] == a2[v17[34]] && a1[v17[35]] == a2[v17[35]] && ((v19 = v17[36], v20 = *&a1[v19], v21 = *&a1[v19 + 8], v22 = &a2[v19], v20 == *v22) && v21 == *(v22 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && a1[v17[37]] == a2[v17[37]] && *&a1[v17[38]] == *&a2[v17[38]] && *&a1[v17[39]] == *&a2[v17[39]] && *&a1[v17[40]] == *&a2[v17[40]] && *&a1[v17[41]] == *&a2[v17[41]] && *&a1[v17[42]] == *&a2[v17[42]])
  {
    return *&a1[v17[43]] == *&a2[v17[43]];
  }

  else
  {
    return 0;
  }
}

uint64_t *_s7CoreP2P14AWDLStatisticsO20LowLatencyStatisticsV7TrafficV10HistogramsV23__derived_struct_equalsySbAI_AItFZ_0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  v6 = result;
  if (v4)
  {
    v7 = v2 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
LABEL_10:
    if (sub_1000BEA94(result[1], a2[1]) & 1) != 0 && (sub_1000BEA94(v6[2], a2[2]) & 1) != 0 && (sub_1000BEA94(v6[3], a2[3]) & 1) != 0 && (sub_1000BEA94(v6[4], a2[4]) & 1) != 0 && (sub_1000BEA94(v6[5], a2[5]) & 1) != 0 && (sub_1000BEA94(v6[6], a2[6]) & 1) != 0 && (sub_1000BEA94(v6[7], a2[7]) & 1) != 0 && (sub_1000BEA94(v6[8], a2[8]) & 1) != 0 && (sub_1000BEA94(v6[9], a2[9]) & 1) != 0 && (sub_1000BEA94(v6[10], a2[10]) & 1) != 0 && (sub_1000BEA94(v6[11], a2[11]) & 1) != 0 && (sub_1000BEA94(v6[12], a2[12]) & 1) != 0 && (sub_1000BEA94(v6[13], a2[13]) & 1) != 0 && (sub_1000BEA94(v6[14], a2[14]) & 1) != 0 && (sub_1000BEA94(v6[15], a2[15]) & 1) != 0 && (sub_1000BEA94(v6[16], a2[16]))
    {
      v10 = v6[17];
      v11 = a2[17];

      return sub_1000BEA94(v10, v11);
    }

    return 0;
  }

  v8 = (v2 + 32);
  v9 = (v3 + 32);
  while (v4)
  {
    if (*v8 != *v9)
    {
      return 0;
    }

    ++v8;
    ++v9;
    if (!--v4)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreP2P14AWDLStatisticsO7FailureV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v11 = 0;
    if ((v10 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = 0xEC0000006F727465;
  v13 = 0x526E496B63757473;
  if (!a2)
  {
    v14 = 0x526E496B63757473;
    v15 = 0xEC0000006F727465;
    v16 = a4;
    if (!a4)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  if (a2 == 1)
  {
    v14 = 0x536E496B63757473;
  }

  else
  {
    v14 = 0xD000000000000014;
  }

  if (a2 == 1)
  {
    v15 = 0xEB000000006E6163;
  }

  else
  {
    v15 = 0x80000001004B6030;
  }

  v16 = a4;
  if (a4)
  {
LABEL_13:
    if (v16 == 1)
    {
      v13 = 0x536E496B63757473;
    }

    else
    {
      v13 = 0xD000000000000014;
    }

    if (v16 == 1)
    {
      v12 = 0xEB000000006E6163;
    }

    else
    {
      v12 = 0x80000001004B6030;
    }
  }

LABEL_19:
  if (v14 == v13 && v15 == v12)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

uint64_t _s7CoreP2P14AWDLStatisticsO17AirPlayStatisticsV10HistogramsV23__derived_struct_equalsySbAG_AGtFZ_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 16);
  if (v8 != *(a5 + 16))
  {
    return 0;
  }

  if (v8)
  {
    v13 = result == a5;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_10:
    if (sub_1000BC518(a2, a6) & 1) != 0 && (sub_1000BC518(a3, a7))
    {

      return sub_1000BC518(a4, a8);
    }

    return 0;
  }

  v14 = (result + 32);
  v15 = (a5 + 32);
  while (v8)
  {
    if (*v14 != *v15)
    {
      return 0;
    }

    ++v14;
    ++v15;
    if (!--v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1001E99C4()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x2B)
  {
    return 43;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1001E9A18()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x1E)
  {
    return 30;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1001E9A6C()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x44)
  {
    return 68;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1001E9AC0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1005548B0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1001E9B0C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100554918, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t _s7CoreP2P14AWDLStatisticsO7FailureV6ReasonO8rawValueAGSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100554A30, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001E9C34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001E9C98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001E9D6C()
{
  result = qword_10058D470;
  if (!qword_10058D470)
  {
    sub_10005DD04(&qword_10058D358, &unk_100486960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D470);
  }

  return result;
}

uint64_t sub_1001EA09C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v43 = v6;
  while (v9)
  {
    v46 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v50[0] = *v18;
    v50[1] = v19;
    v50[2] = v20;

    v21 = v20;
    a2(&v47, v50);

    v22 = v47;
    v23 = v48;
    v24 = v49;
    v25 = *v51;
    v27 = sub_1000102E8(v47, v48);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v46 & 1) == 0)
      {
        sub_1001977F8();
      }
    }

    else
    {
      v32 = v51;
      sub_100190E74(v30, v46 & 1);
      v33 = *v32;
      v34 = sub_1000102E8(v22, v23);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v9 &= v9 - 1;
    v36 = *v51;
    if (v31)
    {
      v12 = *(v36[7] + 8 * v27);

      v13 = v36[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v22;
      v37[1] = v23;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v11 = v15;
    v6 = v43;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_1000E290C();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v46 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t sub_1001EA338(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a2 - a1;
  v3 = _swiftEmptyArrayStorage;
  if ((a2 - a1 + 23) < 0x2F)
  {
    return v3;
  }

  v5 = v2 / 24;
  v47 = _swiftEmptyArrayStorage;
  result = sub_1000C07D0(0, (v2 / 24) & ~((v2 / 24) >> 63), 0);
  if (v2 >= -23)
  {
    v3 = v47;
    sub_10005DC58(&qword_1005952E0, &unk_1004B1850);
    for (i = (a1 + 16); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v44[0] = 0xD00000000000001ELL;
      v44[1] = 0x80000001004BCF30;
      if (v8 <= -0.1)
      {
        v11 = v8;
      }

      else
      {
        v11 = -0.1;
      }

      if (v8 > 0.1)
      {
        v12 = v8;
      }

      else
      {
        v12 = 0.1;
      }

      if (v8 >= 0.0)
      {
        v13 = v12;
      }

      else
      {
        v13 = v11;
      }

      *&v44[2] = v13;
      v44[5] = &type metadata for Double;
      v45[0] = 0xD00000000000001CLL;
      v45[1] = 0x80000001004BCF50;
      if (v9 <= -0.1)
      {
        v14 = v9;
      }

      else
      {
        v14 = -0.1;
      }

      if (v9 > 0.1)
      {
        v15 = v9;
      }

      else
      {
        v15 = 0.1;
      }

      if (v9 >= 0.0)
      {
        v14 = v15;
      }

      *&v45[2] = v14;
      v45[5] = &type metadata for Double;
      v46[0] = 0xD00000000000001ELL;
      v46[1] = 0x80000001004BCF70;
      if (v10 <= -0.1)
      {
        v16 = v10;
      }

      else
      {
        v16 = -0.1;
      }

      if (v10 > 0.1)
      {
        v17 = v10;
      }

      else
      {
        v17 = 0.1;
      }

      if (v10 >= 0.0)
      {
        v16 = v17;
      }

      v46[5] = &type metadata for Double;
      *&v46[2] = v16;
      v18 = static _DictionaryStorage.allocate(capacity:)();
      sub_100012400(v44, &v41, &qword_10058BB40, &unk_100480E70);
      v19 = v41;
      v20 = v42;

      result = sub_1000102E8(v19, v20);
      if (v21)
      {
        break;
      }

      v22 = v18 + 8;
      *(v18 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v23 = (v18[6] + 16 * result);
      *v23 = v19;
      v23[1] = v20;
      result = sub_100085188(v43, (v18[7] + 32 * result));
      v24 = v18[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_43;
      }

      v18[2] = v26;
      sub_100012400(v45, &v41, &qword_10058BB40, &unk_100480E70);
      v27 = v41;
      v28 = v42;
      result = sub_1000102E8(v41, v42);
      if (v29)
      {
        goto LABEL_44;
      }

      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v30 = (v18[6] + 16 * result);
      *v30 = v27;
      v30[1] = v28;
      result = sub_100085188(v43, (v18[7] + 32 * result));
      v31 = v18[2];
      v25 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v25)
      {
        goto LABEL_45;
      }

      v18[2] = v32;
      sub_100012400(v46, &v41, &qword_10058BB40, &unk_100480E70);
      v33 = v41;
      v34 = v42;
      result = sub_1000102E8(v41, v42);
      if (v35)
      {
        goto LABEL_46;
      }

      *(v22 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v36 = (v18[6] + 16 * result);
      *v36 = v33;
      v36[1] = v34;
      result = sub_100085188(v43, (v18[7] + 32 * result));
      v37 = v18[2];
      v25 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v25)
      {
        goto LABEL_47;
      }

      v18[2] = v38;

      sub_10005DC58(&qword_10058BB40, &unk_100480E70);
      swift_arrayDestroy();
      v47 = v3;
      v40 = v3[2];
      v39 = v3[3];
      if (v40 >= v39 >> 1)
      {
        sub_1000C07D0((v39 > 1), v40 + 1, 1);
        v3 = v47;
      }

      v3[2] = v40 + 1;
      v3[v40 + 4] = v18;
      if (!--v5)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1001EA720(char *a1, uint64_t a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = a1;
  v3 = a2 - a1;
  if (a2 - a1 >= 0)
  {
    v4 = a2 - a1;
  }

  else
  {
    v4 = a2 - a1 + 7;
  }

  v5 = _swiftEmptyArrayStorage;
  if ((a2 - a1 + 7) < 0xF)
  {
    return v5;
  }

  v6 = v4 >> 3;
  v46 = _swiftEmptyArrayStorage;
  result = sub_1000C07D0(0, (v4 >> 3) & ~(v4 >> 63), 0);
  if (v3 >= -7)
  {
    v5 = v46;
    sub_10005DC58(&qword_1005952E0, &unk_1004B1850);
    while (1)
    {
      v8 = *v2;
      v9 = v2[1];
      v10 = *(v2 + 1);
      v37[0] = 0xD00000000000001ELL;
      v37[1] = 0x80000001004BCF30;
      v38 = v8;
      v39 = &type metadata for Int8;
      v40[0] = 0xD00000000000001CLL;
      v40[1] = 0x80000001004BCF50;
      v41 = v9;
      v42 = &type metadata for Int8;
      v43[0] = 0xD00000000000001ELL;
      v43[1] = 0x80000001004BCF70;
      v45 = &type metadata for UInt32;
      v44 = v10;
      v11 = static _DictionaryStorage.allocate(capacity:)();
      sub_100012400(v37, &v34, &qword_10058BB40, &unk_100480E70);
      v12 = v34;
      v13 = v35;

      result = sub_1000102E8(v12, v13);
      if (v14)
      {
        break;
      }

      v15 = v11 + 8;
      *(v11 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v11[6] + 16 * result);
      *v16 = v12;
      v16[1] = v13;
      result = sub_100085188(v36, (v11[7] + 32 * result));
      v17 = v11[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_21;
      }

      v11[2] = v19;
      sub_100012400(v40, &v34, &qword_10058BB40, &unk_100480E70);
      v20 = v34;
      v21 = v35;
      result = sub_1000102E8(v34, v35);
      if (v22)
      {
        goto LABEL_22;
      }

      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v23 = (v11[6] + 16 * result);
      *v23 = v20;
      v23[1] = v21;
      result = sub_100085188(v36, (v11[7] + 32 * result));
      v24 = v11[2];
      v18 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v18)
      {
        goto LABEL_23;
      }

      v11[2] = v25;
      sub_100012400(v43, &v34, &qword_10058BB40, &unk_100480E70);
      v26 = v34;
      v27 = v35;
      result = sub_1000102E8(v34, v35);
      if (v28)
      {
        goto LABEL_24;
      }

      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v29 = (v11[6] + 16 * result);
      *v29 = v26;
      v29[1] = v27;
      result = sub_100085188(v36, (v11[7] + 32 * result));
      v30 = v11[2];
      v18 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v18)
      {
        goto LABEL_25;
      }

      v11[2] = v31;

      sub_10005DC58(&qword_10058BB40, &unk_100480E70);
      swift_arrayDestroy();
      v46 = v5;
      v33 = v5[2];
      v32 = v5[3];
      if (v33 >= v32 >> 1)
      {
        sub_1000C07D0((v32 > 1), v33 + 1, 1);
        v5 = v46;
      }

      v2 += 8;
      v5[2] = v33 + 1;
      v5[v33 + 4] = v11;
      if (!--v6)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1001EAAA4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_1001E85EC(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_100085188(v49, v47);
  v14 = *a5;
  result = sub_1000102E8(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_10018D424(v20, a4 & 1);
    v22 = *a5;
    result = sub_1000102E8(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_100195788();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_100002B30(*(*a5 + 56) + 32 * result, v46);
    sub_100002A00(v47);

    v26 = *(v24 + 56);
    sub_100002A00((v26 + v25));
    sub_100085188(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_100085188(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_1001E85EC(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_100085188(v49, v47);
        v35 = *a5;
        result = sub_1000102E8(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_10018D424(v39, 1);
          v40 = *a5;
          result = sub_1000102E8(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_100002B30(*(*a5 + 56) + 32 * result, v46);
          sub_100002A00(v47);

          v34 = *(v32 + 56);
          sub_100002A00((v34 + v33));
          sub_100085188(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_100085188(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_1001E85EC(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_1000E290C();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1001EADE4()
{
  result = qword_1005908B8;
  if (!qword_1005908B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005908B8);
  }

  return result;
}

unint64_t sub_1001EAE3C()
{
  result = qword_1005908C0;
  if (!qword_1005908C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005908C0);
  }

  return result;
}

unint64_t sub_1001EAEDC()
{
  result = qword_1005908D0;
  if (!qword_1005908D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005908D0);
  }

  return result;
}

unint64_t sub_1001EAF34()
{
  result = qword_1005908D8;
  if (!qword_1005908D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005908D8);
  }

  return result;
}

unint64_t sub_1001EAF8C()
{
  result = qword_1005908E0;
  if (!qword_1005908E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005908E0);
  }

  return result;
}

uint64_t sub_1001EB028(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001EB074()
{
  result = qword_1005908F0;
  if (!qword_1005908F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005908F0);
  }

  return result;
}

unint64_t sub_1001EB0CC()
{
  result = qword_1005908F8;
  if (!qword_1005908F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005908F8);
  }

  return result;
}

unint64_t sub_1001EB124()
{
  result = qword_100590900;
  if (!qword_100590900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590900);
  }

  return result;
}

__n128 sub_1001EB198(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1001EB1AC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001EB1F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1001EB270()
{
  type metadata accessor for AWDLTrafficRegistrationService(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DispatchTimeInterval();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1001EB344()
{
  result = type metadata accessor for AWDLStatistics.LowLatencyStatistics.Configuration(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1001EB3E0()
{
  sub_1001EB514();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DispatchTimeInterval();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001EB514()
{
  if (!qword_10058E808)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10058E808);
    }
  }
}

uint64_t sub_1001EB56C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 360))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 216);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001EB5B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 216) = (a2 - 1);
      return result;
    }

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001EB670(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001EB6B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001EB72C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1001EB750(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1001EB798(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AWDLStatistics.LowLatencyStatistics.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xBD)
  {
    goto LABEL_17;
  }

  if (a2 + 67 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 67) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 67;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 67;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 67;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x44;
  v8 = v6 - 68;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLStatistics.LowLatencyStatistics.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 67 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 67) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xBD)
  {
    v4 = 0;
  }

  if (a2 > 0xBC)
  {
    v5 = ((a2 - 189) >> 8) + 1;
    *result = a2 + 67;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 67;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AWDLStatistics.AirPlayStatistics.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLStatistics.AirPlayStatistics.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AWDLStatistics.RtgStatistics.Key(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD6)
  {
    goto LABEL_17;
  }

  if (a2 + 42 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 42) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 42;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 42;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2B;
  v8 = v6 - 43;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLStatistics.RtgStatistics.Key(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 42 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 42) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD6)
  {
    v4 = 0;
  }

  if (a2 > 0xD5)
  {
    v5 = ((a2 - 214) >> 8) + 1;
    *result = a2 + 42;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 42;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001EBC58()
{
  result = qword_100590BC0;
  if (!qword_100590BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590BC0);
  }

  return result;
}

unint64_t sub_1001EBCB0()
{
  result = qword_100590BC8;
  if (!qword_100590BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590BC8);
  }

  return result;
}

unint64_t sub_1001EBD08()
{
  result = qword_100590BD0;
  if (!qword_100590BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590BD0);
  }

  return result;
}

unint64_t sub_1001EBD60()
{
  result = qword_100590BD8;
  if (!qword_100590BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590BD8);
  }

  return result;
}

unint64_t sub_1001EBDB8()
{
  result = qword_100590BE0;
  if (!qword_100590BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590BE0);
  }

  return result;
}

unint64_t sub_1001EBE10()
{
  result = qword_100590BE8;
  if (!qword_100590BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590BE8);
  }

  return result;
}

unint64_t sub_1001EBE68()
{
  result = qword_100590BF0;
  if (!qword_100590BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590BF0);
  }

  return result;
}

uint64_t NANTimeUnit.init<A>(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) + 16);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v27 - v12;
  (*(v8 + 16))(v27 - v12, a1, a2);
  if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v14 = *(*(a3 + 32) + 8), v15 = dispatch thunk of static Comparable.>= infix(_:_:)(), result = (*(v8 + 8))(v11, a2), (v15))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 63)
    {
      goto LABEL_13;
    }

    v27[0] = a1;
    v27[1] = -1;
    v17 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v18 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v17)
    {
      if (v18 <= 64)
      {
        goto LABEL_11;
      }

      sub_1001EC2EC();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v19 = *(*(a3 + 32) + 8);
      v20 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v8 + 8))(v11, a2);
      a1 = v27[0];
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      a1 = v27[0];
      if (v18 < 65)
      {
LABEL_12:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_13;
      }

      sub_1001EC2EC();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v21 = *(*(a3 + 32) + 8);
      v22 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v8 + 8))(v11, a2);
      if ((v22 & 1) == 0)
      {
LABEL_13:
        v25 = dispatch thunk of BinaryInteger._lowWord.getter();
        v26 = *(v8 + 8);
        v26(a1, a2);
        v26(v13, a2);
        return v25;
      }
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v23 = *(*(a3 + 32) + 8);
    v24 = dispatch thunk of static Comparable.> infix(_:_:)();
    (*(v8 + 8))(v11, a2);
    a1 = v27[0];
    if (v24)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_1001EC2EC()
{
  result = qword_100590BF8;
  if (!qword_100590BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590BF8);
  }

  return result;
}

unint64_t static NANTimeUnit.* infix(_:_:)(unint64_t result, unint64_t a2)
{
  if (is_mul_ok(result, a2))
  {
    result *= a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t static NANTimeUnit./ infix(_:_:)(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    result /= a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static NANTimeUnit.+ infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = __CFADD__(a1, a2);
  result = a1 + a2;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t static NANTimeUnit.- infix(_:_:)(unint64_t a1, unint64_t a2)
{
  v2 = a1 >= a2;
  result = a1 - a2;
  if (!v2)
  {
    __break(1u);
  }

  return result;
}

unint64_t NANTimeUnit.microseconds.getter(unint64_t result)
{
  if (result >> 54)
  {
    __break(1u);
  }

  else
  {
    result <<= 10;
  }

  return result;
}

unint64_t NANTimeUnit.duration.getter@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (result >> 54)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((result << 10) & 0x8000000000000000) != 0)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  *a2 = result << 10;
  v3 = enum case for DispatchTimeInterval.microseconds(_:);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

void NANTimeUnit.description.getter(unint64_t a1)
{
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11[1] = a1;
  v11[2] = dispatch thunk of CustomStringConvertible.description.getter();
  v11[3] = v7;
  v8._countAndFlagsBits = 0x282073555420;
  v8._object = 0xE600000000000000;
  String.append(_:)(v8);
  if (a1 >> 54)
  {
    __break(1u);
  }

  else if (((a1 << 10) & 0x8000000000000000) == 0)
  {
    *v6 = a1 << 10;
    (*(v3 + 104))(v6, enum case for DispatchTimeInterval.microseconds(_:), v2);
    v9._countAndFlagsBits = DispatchTimeInterval.description.getter();
    String.append(_:)(v9);

    (*(v3 + 8))(v6, v2);
    v10._countAndFlagsBits = 41;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    return;
  }

  __break(1u);
}

uint64_t NANTimeUnit.customMirror.getter(uint64_t a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = v12 - v8;
  v12[1] = a1;
  v12[0] = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1001EC814()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = v11 - v7;
  v11[1] = *v0;
  v11[0] = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

CoreP2P::NANTimeUnit::SchedulePeriod_optional __swiftcall NANTimeUnit.SchedulePeriod.init(duration:)(CoreP2P::NANTimeUnit duration)
{
  if (duration.rawValue <= 1023)
  {
    switch(duration.rawValue)
    {
      case 0x80uLL:
        v1 = 1;
        break;
      case 0x100uLL:
        v1 = 2;
        break;
      case 0x200uLL:
        v1 = 3;
        break;
      default:
        return 0;
    }

LABEL_17:
    result.value = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v1);
    if (result.value != CoreP2P_NANTimeUnit_SchedulePeriod_unknownDefault)
    {
      return result;
    }

    return 0;
  }

  if (duration.rawValue > 4095)
  {
    if (duration.rawValue == 4096)
    {
      v1 = 6;
    }

    else
    {
      if (duration.rawValue != 0x2000)
      {
        return 0;
      }

      v1 = 7;
    }

    goto LABEL_17;
  }

  if (duration.rawValue == 1024)
  {
    v1 = 4;
    goto LABEL_17;
  }

  if (duration.rawValue == 2048)
  {
    v1 = 5;
    goto LABEL_17;
  }

  return 0;
}

uint64_t sub_1001ECADC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t NANTimeSynchronizationFunction.discoveryWindow.getter(unint64_t a1)
{
  v1 = a1 >= (a1 & 0x7FFFF);
  result = a1 - (a1 & 0x7FFFF);
  if (!v1)
  {
    __break(1u);
  }

  return result;
}

unint64_t NANTimeSynchronizationFunction.discoveryWindow0.getter(unint64_t a1)
{
  v1 = a1 >= (a1 & 0x7FFFFF);
  result = a1 - (a1 & 0x7FFFFF);
  if (!v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t NANTimeSynchronizationFunction.description.getter(uint64_t a1)
{
  sub_10005DC58(&qword_100599FF0, &qword_100486D20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100480F40;
  *(v2 + 56) = &type metadata for UInt64;
  *(v2 + 64) = &protocol witness table for UInt64;
  *(v2 + 32) = a1;

  return String.init(format:_:)();
}

uint64_t sub_1001ECBD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1001ECC54(uint64_t a1)
{
  v2 = sub_10003D750();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001ECC90(uint64_t a1)
{
  v2 = sub_10003D750();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANTimeSynchronizationFunction.encode(to:)(void *a1)
{
  v2 = sub_10005DC58(&qword_100590C00, &qword_100494E90);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003D750();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int _s7CoreP2P11NANTimeUnitV9hashValueSivg_0(Swift::UInt64 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t NANTimeSynchronizationFunction.init(from:)(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100590C10, &qword_100494E98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_10003D750();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002A00(a1);
  return v9;
}

Swift::Int sub_1001ECF98()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001ECFE0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1001ED024()
{
  v1 = *v0;
  sub_10005DC58(&qword_100599FF0, &qword_100486D20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100480F40;
  *(v2 + 56) = &type metadata for UInt64;
  *(v2 + 64) = &protocol witness table for UInt64;
  *(v2 + 32) = v1;

  return String.init(format:_:)();
}

uint64_t sub_1001ED0A8(void *a1)
{
  v3 = sub_10005DC58(&qword_100590C00, &qword_100494E90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003D750();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1001ED1E0()
{
  result = qword_100590C18;
  if (!qword_100590C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C18);
  }

  return result;
}

unint64_t sub_1001ED240()
{
  result = qword_100590C20;
  if (!qword_100590C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C20);
  }

  return result;
}

unint64_t sub_1001ED298()
{
  result = qword_100590C28;
  if (!qword_100590C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C28);
  }

  return result;
}

unint64_t sub_1001ED330()
{
  result = qword_100590C30;
  if (!qword_100590C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C30);
  }

  return result;
}

unint64_t sub_1001ED388()
{
  result = qword_100590C38;
  if (!qword_100590C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C38);
  }

  return result;
}

unint64_t sub_1001ED3E0()
{
  result = qword_100590C40;
  if (!qword_100590C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C40);
  }

  return result;
}

uint64_t IEEE80211Frame.Management.Authentication.PASNRequest.init(rsnCapability:extendedRSNCapability:preAssociationSecurityNegotiationParameters:nanIE:wrappedData:)(__int16 *a1, uint64_t a2, __int128 *a3, _OWORD *a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 2);
  v11 = a1[12];
  v12 = *(a1 + 4);
  v13 = *(a1 + 40);
  sub_10005DC58(&qword_10058D640, &unk_100488520);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100480F30;
  *(v14 + 32) = v9;
  *(v14 + 34) = v10;
  *(v14 + 40) = *(a1 + 4);
  *(v14 + 56) = v11;
  *(v14 + 64) = v12;
  *(v14 + 72) = v13;
  *(v14 + 88) = 0;
  v15 = a4[1];
  *(v14 + 96) = *a4;
  *(v14 + 112) = v15;
  *(v14 + 128) = a4[2];
  *(v14 + 137) = *(a4 + 41);
  *(v14 + 160) = a2;
  *(v14 + 216) = 1;
  v16 = *(a5 + 56);
  if (v16 == 255)
  {
    sub_1000C2DC8(a4, v26);
  }

  else
  {
    v17 = *(a5 + 16);
    v27 = *a5;
    v28 = v17;
    v29 = *(a5 + 32);
    v30 = *(a5 + 48);
    sub_1000C2DC8(a4, v26);
    sub_1001ED724(a5, v26);
    v14 = sub_10011727C(1, 4, 1, v14);
    *(v14 + 16) = 4;
    v18 = v28;
    *(v14 + 224) = v27;
    *(v14 + 240) = v18;
    *(v14 + 256) = v29;
    *(v14 + 272) = v30;
    *(v14 + 280) = v16;
  }

  inited = swift_initStackObject();
  v20 = *a3;
  v21 = a3[1];
  *(inited + 16) = xmmword_100480F40;
  *(inited + 32) = v20;
  v22 = a3[2];
  *(inited + 48) = v21;
  *(inited + 64) = v22;
  *(inited + 80) = *(a3 + 6);
  *(inited + 88) = 6;
  v26[0] = v14;

  sub_1002353A8(inited);
  sub_1001ED6BC(a5);
  sub_1000C2E24(a4);
  v23 = v26[0];

  return v23;
}

uint64_t IEEE80211Frame.Management.Authentication.PASNConfirm.init(preAssociationSecurityNegotiationParameters:elements:)(__int128 *a1, uint64_t a2)
{
  sub_10005DC58(&qword_10058D640, &unk_100488520);
  v4 = swift_allocObject();
  v5 = *a1;
  v6 = a1[1];
  *(v4 + 16) = xmmword_100480F40;
  *(v4 + 32) = v5;
  v7 = a1[2];
  *(v4 + 48) = v6;
  *(v4 + 64) = v7;
  *(v4 + 80) = *(a1 + 6);
  *(v4 + 88) = 6;
  v9 = v4;
  sub_1002353A8(a2);
  return v9;
}

uint64_t sub_1001ED6BC(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058DF90, &unk_100488560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001ED724(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_10058DF90, &unk_100488560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static IEEE80211Frame.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s7CoreP2P14IEEE80211FrameV6HeaderV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)))
  {
    v4 = *(a1 + 40);
    v10[0] = *(a1 + 24);
    v10[1] = v4;
    v11 = *(a1 + 56);
    v5 = *(a2 + 40);
    v8[0] = *(a2 + 24);
    v8[1] = v5;
    v9 = *(a2 + 56);
    v6 = _s7CoreP2P14IEEE80211FrameV8ContentsO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v8);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1001ED85C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P14IEEE80211FrameV0D4TypeO010ManagementE0O8rawValueAGSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1001ED8A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_100497B36[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1001ED928()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_100497B36[v1]);
  return Hasher._finalize()();
}

unint64_t IEEE80211Frame.Header.FrameControl.frameType.getter(__int16 a1)
{
  result = sub_1000E5540(2uLL, 2uLL, a1);
  if (result > 3u)
  {
    sub_10000B02C();
    swift_allocError();
    *v2 = xmmword_10047CE70;
    *(v2 + 16) = 2;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t IEEE80211Frame.Header.FrameControl.managementSubtype.getter(__int16 a1)
{
  v2 = sub_1000E5540(2uLL, 2uLL, a1);
  if ((v2 - 1) < 3)
  {
    return 14;
  }

  if (v2)
  {
    sub_10000B02C();
    swift_allocError();
    *v5 = xmmword_10047CE70;
    *(v5 + 16) = 2;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v4 = sub_1000E5540(4uLL, 4uLL, a1);
    result = _s7CoreP2P14IEEE80211FrameV0D4TypeO010ManagementE0O8rawValueAGSgs5UInt8V_tcfC_0(v4);
    if (result == 14)
    {
      return 14;
    }
  }

  return result;
}

uint64_t IEEE80211Frame.Header.receiverAddress.getter(uint64_t a1, uint64_t a2)
{
  *(&v2 + 1) = a2;
  *&v2 = a1;
  return (v2 >> 32) & 0xFFFFFFFFFFFFLL;
}

uint64_t IEEE80211Frame.Header.receiverAddress.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 6) = BYTE2(result);
  *(v1 + 7) = BYTE3(result);
  *(v1 + 8) = BYTE4(result);
  *(v1 + 9) = BYTE5(result);
  return result;
}

uint64_t IEEE80211Frame.Header.transmitterAddress.setter(uint64_t result)
{
  *(v1 + 10) = result;
  *(v1 + 12) = BYTE2(result);
  *(v1 + 13) = BYTE3(result);
  *(v1 + 14) = BYTE4(result);
  *(v1 + 15) = BYTE5(result);
  return result;
}

uint64_t IEEE80211Frame.Header.destinationAddress.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 18) = BYTE2(result);
  *(v1 + 19) = BYTE3(result);
  *(v1 + 20) = BYTE4(result);
  *(v1 + 21) = BYTE5(result);
  return result;
}

unint64_t sub_1001EDD58()
{
  v1 = *v0;
  v2 = 0x6E6F43656D617266;
  v3 = 0xD000000000000012;
  v4 = 0xD000000000000012;
  if (v1 != 4)
  {
    v4 = 0x65636E6575716573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461727564;
  if (v1 != 1)
  {
    v5 = 0x7265766965636572;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1001EDE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001F7574(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001EDE64(uint64_t a1)
{
  v2 = sub_1001F4184();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EDEA0(uint64_t a1)
{
  v2 = sub_1001F4184();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211Frame.Header.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v8 = sub_10005DC58(&qword_100590C48, &qword_100495340);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001F4184();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = a2;
  v23 = 0;
  sub_1001F41D8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = a3;
    v16 = v18;
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = BYTE4(a2);
    HIBYTE(v19) = BYTE5(a2);
    v20 = BYTE6(a2);
    v21 = HIBYTE(a2);
    v22 = v15;
    v23 = 2;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = BYTE2(v15);
    HIBYTE(v19) = BYTE3(v15);
    v20 = BYTE4(v15);
    v21 = BYTE5(v15);
    LOBYTE(v22) = BYTE6(v15);
    HIBYTE(v22) = HIBYTE(v15);
    v23 = 3;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v19 = v16;
    v20 = BYTE2(v16);
    v21 = BYTE3(v16);
    LOBYTE(v22) = BYTE4(v16);
    HIBYTE(v22) = BYTE5(v16);
    v23 = 4;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v19) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

void IEEE80211Frame.Header.hash(into:)(int a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 >> 16;
  v7 = HIDWORD(a2);
  v8 = a2 >> 40;
  v9 = HIWORD(a2);
  v10 = HIBYTE(a2);
  v11 = a3 >> 8;
  v12 = a3 >> 16;
  *v13 = a3 >> 24;
  *v14 = HIDWORD(a3);
  *v15 = a3 >> 40;
  *v16 = HIWORD(a3);
  *v17 = HIBYTE(a3);
  *v18 = a4 >> 8;
  *v19 = a4 >> 16;
  *v20 = a4 >> 24;
  *v21 = HIDWORD(a4);
  *v22 = a4 >> 40;
  *v23 = HIWORD(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13[0]);
  Hasher._combine(_:)(v14[0]);
  Hasher._combine(_:)(v15[0]);
  Hasher._combine(_:)(v16[0]);
  Hasher._combine(_:)(v17[0]);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v18[0]);
  Hasher._combine(_:)(v19[0]);
  Hasher._combine(_:)(v20[0]);
  Hasher._combine(_:)(v21[0]);
  Hasher._combine(_:)(v22[0]);
  Hasher._combine(_:)(v23[0]);
}

Swift::Int IEEE80211Frame.Header.hashValue.getter(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = a1 >> 16;
  v7 = HIDWORD(a1);
  v8 = a1 >> 40;
  v9 = HIWORD(a1);
  v10 = HIBYTE(a1);
  v11 = a2 >> 8;
  *v13 = a2 >> 16;
  *v14 = a2 >> 24;
  *v15 = HIDWORD(a2);
  *v16 = a2 >> 40;
  *v17 = HIWORD(a2);
  *v18 = HIBYTE(a2);
  *v19 = a3 >> 8;
  *v20 = a3 >> 16;
  *v21 = a3 >> 24;
  *v22 = HIDWORD(a3);
  *v23 = a3 >> 40;
  *v24 = HIWORD(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v13[0]);
  Hasher._combine(_:)(v14[0]);
  Hasher._combine(_:)(v15[0]);
  Hasher._combine(_:)(v16[0]);
  Hasher._combine(_:)(v17[0]);
  Hasher._combine(_:)(v18[0]);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v19[0]);
  Hasher._combine(_:)(v20[0]);
  Hasher._combine(_:)(v21[0]);
  Hasher._combine(_:)(v22[0]);
  Hasher._combine(_:)(v23[0]);
  Hasher._combine(_:)(v24[0]);
  return Hasher._finalize()();
}

unint64_t IEEE80211Frame.Header.init(from:)(uint64_t *a1)
{
  result = sub_1001F4A00(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

unint64_t sub_1001EE528@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1001F4A00(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

Swift::Int sub_1001EE624()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  IEEE80211Frame.Header.hash(into:)(&v5, v2, v1, v3);
  return Hasher._finalize()();
}

void IEEE80211Frame.Contents.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 32);
  switch(v3)
  {
    case 253:
      v4 = 3;
      goto LABEL_7;
    case 254:
      v4 = 2;
      goto LABEL_7;
    case 255:
      v4 = 1;
LABEL_7:
      Hasher._combine(_:)(v4);
      return;
  }

  v5 = *v1;
  v6 = v1[1];
  Hasher._combine(_:)(0);
  IEEE80211Frame.Management.hash(into:)(a1);
}

Swift::Int IEEE80211Frame.Contents.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 32);
  switch(v1)
  {
    case 253:
      v2 = 3;
      break;
    case 254:
      v2 = 2;
      break;
    case 255:
      v2 = 1;
      break;
    default:
      v3 = *(v0 + 16);
      *&v5[9] = *v0;
      *&v5[11] = v3;
      v6 = v1;
      Hasher._combine(_:)(0);
      IEEE80211Frame.Management.hash(into:)(v5);
      return Hasher._finalize()();
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1001EE7C4()
{
  v4 = *v0;
  v5 = v0[1];
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 253:
      v2 = 3;
      break;
    case 254:
      v2 = 2;
      break;
    case 255:
      v2 = 1;
      break;
    default:
      *&v6[9] = v4;
      *&v6[11] = v5;
      v7 = v1;
      Hasher._combine(_:)(0);
      IEEE80211Frame.Management.hash(into:)(v6);
      return Hasher._finalize()();
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_1001EE870()
{
  v4 = *v0;
  v5 = v0[1];
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 253:
      v2 = 3;
      break;
    case 254:
      v2 = 2;
      break;
    case 255:
      v2 = 1;
      break;
    default:
      *&v6[9] = v4;
      *&v6[11] = v5;
      v7 = v1;
      Hasher._combine(_:)(0);
      IEEE80211Frame.Management.hash(into:)(v6);
      return Hasher._finalize()();
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1001EE918(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7CoreP2P14IEEE80211FrameV8ContentsO21__derived_enum_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

uint64_t IEEE80211Frame.header.getter()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  return result;
}

uint64_t sub_1001EE98C()
{
  v1 = 0x6D617473656D6974;
  v2 = 0x696C696261706163;
  if (*v0 != 2)
  {
    v2 = 0x73746E656D656C65;
  }

  if (*v0)
  {
    v1 = 0x6E496E6F63616562;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1001EEA20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1001F7794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001EEA48(uint64_t a1)
{
  v2 = sub_1001F4DDC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EEA84(uint64_t a1)
{
  v2 = sub_1001F4DDC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static IEEE80211Frame.Management.Beacon.__derived_struct_equals(_:_:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v6 = 0;
  if (a1 == a4 && a2 == a5)
  {
    v7 = *(a3 + 16);
    if (v7 == *(a6 + 16))
    {
      if (!v7 || a3 == a6)
      {
        v6 = 1;
      }

      else
      {
        v8 = (a3 + 32);
        v9 = (a6 + 32);
        do
        {
          v10 = v8[1];
          v14[0] = *v8;
          v14[1] = v10;
          v15[0] = v8[2];
          *(v15 + 9) = *(v8 + 41);
          v11 = v9[1];
          v16[0] = *v9;
          v16[1] = v11;
          v17[0] = v9[2];
          *(v17 + 9) = *(v9 + 41);
          sub_1000C2DC8(v14, v13);
          sub_1000C2DC8(v16, v13);
          v6 = _s7CoreP2P27IEEE80211InformationElementO21__derived_enum_equalsySbAC_ACtFZ_0(v14, v16);
          sub_1000C2E24(v16);
          sub_1000C2E24(v14);
          if ((v6 & 1) == 0)
          {
            break;
          }

          v8 += 4;
          v9 += 4;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6 & 1;
}

uint64_t IEEE80211Frame.Management.Beacon.encode(to:)(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v15 = a3;
  v7 = sub_10005DC58(&qword_100590C60, &qword_100495348);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001F4DDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14[1] = a4;
    v16 = 3;
    sub_10005DC58(&unk_100597510, &qword_100495350);
    sub_1001F7DF8(&qword_100590C70, sub_1001F4E30);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void IEEE80211Frame.Management.Beacon.hash(into:)(__int128 *a1, Swift::UInt64 a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  v7 = HIWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v7);

  _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(a1, a4);
}

Swift::Int IEEE80211Frame.Management.Beacon.hashValue.getter(Swift::UInt64 a1, unsigned int a2, uint64_t a3)
{
  v4 = a2;
  v6 = HIWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(v8, a3);
  return Hasher._finalize()();
}

uint64_t IEEE80211Frame.Management.Beacon.init(from:)(uint64_t *a1)
{
  result = sub_1001F47A0(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

Swift::Int sub_1001EEF30()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 8);
  v4 = *(v0 + 10);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(v6, v2);
  return Hasher._finalize()();
}

void sub_1001EEFB8(__int128 *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 8);
  v5 = *(v1 + 10);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);

  _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(a1, v3);
}

Swift::Int sub_1001EF028()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 8);
  v4 = *(v0 + 10);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(v6, v2);
  return Hasher._finalize()();
}

uint64_t sub_1001EF0AC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001F47A0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1001EF10C(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 10) == *(a2 + 10))
  {
    return sub_1000BED14(*(a1 + 16), *(a2 + 16));
  }

  else
  {
    return 0;
  }
}

CoreP2P::IEEE80211Frame::Management::Authentication::FiniteCyclicGroup_optional __swiftcall IEEE80211Frame.Management.Authentication.FiniteCyclicGroup.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue == 20)
  {
    v1.value = CoreP2P_IEEE80211Frame_Management_Authentication_FiniteCyclicGroup_random384BitECPGroup;
  }

  else
  {
    v1.value = CoreP2P_IEEE80211Frame_Management_Authentication_FiniteCyclicGroup_unknownDefault;
  }

  if (rawValue == 19)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

unsigned __int16 *sub_1001EF170@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 20)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 19)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_1001EF190(__int16 *a1@<X8>)
{
  if (*v1)
  {
    v2 = 20;
  }

  else
  {
    v2 = 19;
  }

  *a1 = v2;
}

Swift::Int sub_1001EF1A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 20;
  }

  else
  {
    v2 = 19;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1001EF1F8()
{
  if (*v0)
  {
    v1 = 20;
  }

  else
  {
    v1 = 19;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1001EF230()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 20;
  }

  else
  {
    v2 = 19;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1001EF330@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO0F9AlgorithmO8rawValueAISgs6UInt16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1001EF368()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001EF3DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

CoreP2P::IEEE80211Frame::Management::Authentication::SimulatenousAuthenticationOfEquals::MessageType_optional __swiftcall IEEE80211Frame.Management.Authentication.SimulatenousAuthenticationOfEquals.MessageType.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue == 2)
  {
    v1.value = CoreP2P_IEEE80211Frame_Management_Authentication_SimulatenousAuthenticationOfEquals_MessageType_confirm;
  }

  else
  {
    v1.value = CoreP2P_IEEE80211Frame_Management_Authentication_SimulatenousAuthenticationOfEquals_MessageType_unknownDefault;
  }

  if (rawValue == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

unsigned __int16 *sub_1001EF4F8@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_1001EF518(__int16 *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

Swift::Int sub_1001EF530()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1001EF580()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1001EF5B8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unint64_t sub_1001EF6C0()
{
  if (*v0)
  {
    result = 0x74696D6D6F63;
  }

  else
  {
    result = 0xD000000000000011;
  }

  *v0;
  return result;
}

uint64_t sub_1001EF6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001004BD130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74696D6D6F63 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1001EF7E0(uint64_t a1)
{
  v2 = sub_1001F4E84();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EF81C(uint64_t a1)
{
  v2 = sub_1001F4E84();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static IEEE80211Frame.Management.Authentication.SimulatenousAuthenticationOfEquals.Commit.__derived_struct_equals(_:_:)(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if ((a1 ^ a4))
  {
    return 0;
  }

  else
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, a5, a6);
  }
}

uint64_t IEEE80211Frame.Management.Authentication.SimulatenousAuthenticationOfEquals.Commit.encode(to:)(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v16 = a4;
  v8 = sub_10005DC58(&qword_100590C80, &qword_100495358);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001F4E84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = a2 & 1;
  v19 = 0;
  sub_1001F4ED8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = a3;
    v18 = v16;
    v19 = 1;
    sub_10000AB0C(a3, v16);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v17, v18);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t IEEE80211Frame.Management.Authentication.SimulatenousAuthenticationOfEquals.Commit.hash(into:)(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 20;
  }

  else
  {
    v2 = 19;
  }

  Hasher._combine(_:)(v2);

  return Data.hash(into:)();
}

Swift::Int IEEE80211Frame.Management.Authentication.SimulatenousAuthenticationOfEquals.Commit.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  if (a1)
  {
    v2 = 20;
  }

  else
  {
    v2 = 19;
  }

  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001EFB24()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  if (v1)
  {
    v4 = 20;
  }

  else
  {
    v4 = 19;
  }

  Hasher._combine(_:)(v4);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001EFB90()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*v0)
  {
    v3 = 20;
  }

  else
  {
    v3 = 19;
  }

  Hasher._combine(_:)(v3);

  return Data.hash(into:)();
}

Swift::Int sub_1001EFBF0()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  Hasher.init(_seed:)();
  if (v1)
  {
    v4 = 20;
  }

  else
  {
    v4 = 19;
  }

  Hasher._combine(_:)(v4);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001EFC58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001F4240(a1);
  if (!v2)
  {
    *a2 = result & 1;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1001EFCAC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001EFCD0()
{
  if (*v0)
  {
    result = 0x6D7269666E6F63;
  }

  else
  {
    result = 0x666E6F43646E6573;
  }

  *v0;
  return result;
}

uint64_t sub_1001EFD14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x666E6F43646E6573 && a2 == 0xEB000000006D7269;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D7269666E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1001EFDF4(uint64_t a1)
{
  v2 = sub_1001F4F2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001EFE30(uint64_t a1)
{
  v2 = sub_1001F4F2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211Frame.Management.Authentication.SimulatenousAuthenticationOfEquals.Confirm.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = sub_10005DC58(&qword_100590C98, &qword_100495360);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001F4F2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_10000AB0C(a3, v15);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1001F002C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001F4418(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t static IEEE80211Frame.Management.Authentication.SimulatenousAuthenticationOfEquals.__derived_enum_equals(_:_:)(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    if (a6 & 0x2000000000000000) != 0 && a1 == a4 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3 & 0xDFFFFFFFFFFFFFFFLL, a5, a6 & 0xDFFFFFFFFFFFFFFFLL))
    {
      return 1;
    }
  }

  else if (a6 & 0x2000000000000000) == 0 && ((a4 ^ a1) & 1) == 0 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, a5, a6))
  {
    return 1;
  }

  return 0;
}

uint64_t IEEE80211Frame.Management.Authentication.SimulatenousAuthenticationOfEquals.hash(into:)(uint64_t a1, Swift::UInt16 a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    a2 = (a2 & 1) + 19;
  }

  Hasher._combine(_:)(a2);

  return Data.hash(into:)();
}

Swift::Int IEEE80211Frame.Management.Authentication.SimulatenousAuthenticationOfEquals.hashValue.getter(Swift::UInt16 a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  if ((a3 & 0x2000000000000000) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    a1 = (a1 & 1) + 19;
  }

  Hasher._combine(_:)(a1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1001F0204()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  Hasher.init(_seed:)();
  if ((v2 & 0x2000000000000000) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    v3 = (v3 & 1) + 19;
  }

  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1001F0294()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  if ((*(v0 + 16) & 0x2000000000000000) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    v2 = (v2 & 1) + 19;
  }

  Hasher._combine(_:)(v2);

  return Data.hash(into:)();
}

Swift::Int sub_1001F0320()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  Hasher.init(_seed:)();
  if ((v2 & 0x2000000000000000) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    v3 = (v3 & 1) + 19;
  }

  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}