__n128 sub_100063EB8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 60);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_100063F04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 244))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100063F24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 232) = 0;
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
    *(result + 240) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 244) = v3;
  return result;
}

uint64_t sub_100063FE8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 2176))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100064008(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 2168) = 0;
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
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 2176) = v3;
  return result;
}

uint64_t sub_1000642A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1001))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000642C4(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 1000) = 0;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 1001) = v3;
  return result;
}

uint64_t sub_100064428(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 3360))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 3088);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10006447C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 3352) = 0;
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
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 3360) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 3360) = 0;
    }

    if (a2)
    {
      *(result + 3088) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000648E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 2156))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100064904(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 2152) = 0;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 2156) = v3;
  return result;
}

uint64_t sub_100064B9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5576))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100064BC0(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5560) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 5576) = v3;
  return result;
}

uint64_t sub_100065248(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 3604))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100065268(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 3592) = 0;
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
    *(result + 3600) = 0;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 3604) = v3;
  return result;
}

uint64_t sub_100065680(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 248) = 0;
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
    *(result + 256) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 258) = v3;
  return result;
}

__n128 sub_100065718(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1000657D4(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t sub_100065840(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t sub_100065978(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

__n128 sub_1000659DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_1000659F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100065A34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 4024))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100065A88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4024) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4024) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100065F24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 3720))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100065F44(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3704) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 3720) = v3;
  return result;
}

__n128 sub_1000663C0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1000663F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 136))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100066414(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 136) = v3;
  return result;
}

__n128 sub_100066500(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_10006653C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 184))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006655C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 184) = v3;
  return result;
}

uint64_t sub_1000665E4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 400))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100066604(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 400) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for NANRoleChangeEvent(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_10006680C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_100066830(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100066850(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

uint64_t sub_1000668CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 288))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000668EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 288) = v3;
  return result;
}

__n128 sub_10006698C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 sub_1000669C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 sub_100066A4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for NANWiFiAwareSystemStatistics(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

__n128 sub_100066AEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_100066B00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 22))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100066B20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 22) = v3;
  return result;
}

__n128 sub_100066B78(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100066BB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 2080))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100066BD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 2072) = 0;
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
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 2080) = v3;
  return result;
}

uint64_t sub_100066F68(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_100066F7C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 10))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100066F9C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 10) = v3;
  return result;
}

uint64_t sub_100066FF8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 997))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100067018(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 984) = 0;
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
    *(result + 996) = 0;
    *(result + 992) = 0;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 997) = v3;
  return result;
}

__n128 sub_100067178(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10006719C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 72) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NonNANOperatingChannelInformation(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NonNANOperatingChannelInformation(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 0x1FFFFFF) >> 24)
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  else
  {
    v2 = *(a1 + 3);
    if (!*(a1 + 3))
    {
      return 0;
    }
  }

  return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 0xFFFFFF;
}

uint64_t storeEnumTagSinglePayload for NonNANOperatingChannelInformation(uint64_t result, int a2, int a3)
{
  if ((a3 + 0x1FFFFFF) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (!a3)
  {
    v3 = 0;
  }

  if (a2)
  {
    *result = a2 - 1;
    *(result + 2) = (a2 - 1) >> 16;
    if (v3)
    {
      v4 = ((a2 - 1) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else if (v3)
  {
    if (v3 == 2)
    {
      *(result + 3) = 0;
    }

    else
    {
      *(result + 3) = 0;
    }
  }

  return result;
}

uint64_t sub_100067350(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 3872))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000673A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 3864) = 0;
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
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 3872) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 3872) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_10006781C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 1624))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100067870(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 1624) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 1624) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100067A88(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_100067AC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 208))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 62);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100067B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 62) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100067BB8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100067BDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 74))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 62);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100067C30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 62) = a2 + 1;
    }
  }

  return result;
}

__n128 sub_100067D00(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100067D24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 68))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100067D44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 68) = v3;
  return result;
}

__n128 sub_100067E24(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

uint64_t sub_100067E70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 248))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100067E90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 248) = v3;
  return result;
}

uint64_t sub_100067F78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 468))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100067F98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 456) = 0;
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
    *(result + 464) = 0;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 468) = v3;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for IEEE80211Frame.Header(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 sub_1000680A4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000680D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000680F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 104) = v3;
  return result;
}

uint64_t sub_10006818C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 803))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000681AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 792) = 0;
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
    *(result + 802) = 0;
    *(result + 800) = 0;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 803) = v3;
  return result;
}

uint64_t sub_10006835C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 768))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006837C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 760) = 0;
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
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 768) = v3;
  return result;
}

Swift::Int sub_100068720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058B378, &unk_1004B4DA0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t *sub_100068888(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

__n128 sub_100068A04(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_100068A20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100068A7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_100068B18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_100068B74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for NANPeerServiceIdentifier(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NANPeerServiceIdentifier(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 7))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NANPeerServiceIdentifier(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 7) = v3;
  return result;
}

__n128 sub_100068E58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100068E8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 146))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100068EAC(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 144) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 146) = v3;
  return result;
}

uint64_t sub_100068F30(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1290))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100068F50(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 1288) = 0;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 1290) = v3;
  return result;
}

uint64_t sub_100069100(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1284))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100069120(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 1272) = 0;
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
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1280) = 0;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 1284) = v3;
  return result;
}

__n128 sub_1000692C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100069334(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[272])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100069388(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 264) = 0;
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
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100069440(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1026))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100069460(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 1016) = 0;
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
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 1024) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 1026) = v3;
  return result;
}

void *sub_100069614(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_100069628(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 13))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100069648(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 13) = v3;
  return result;
}

void *initializeBufferWithCopyOfBuffer for NANDataEstablishedEvent(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

__n128 sub_100069704(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_100069770(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 3816))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100069790(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 3784) = 0u;
    *(result + 3800) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 3816) = v3;
  return result;
}

__n128 sub_100069BFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100069C40(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 392))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100069C60(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 392) = v3;
  return result;
}

uint64_t sub_100069E14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_100069E4C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 272))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100069E6C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 264) = 0;
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
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 272) = v3;
  return result;
}

uint64_t sub_100069F84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 2050))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100069FA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 2040) = 0;
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
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 2048) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 2050) = v3;
  return result;
}

uint64_t sub_10006A2C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 962))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006A2E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 952) = 0;
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
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 960) = 0;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 962) = v3;
  return result;
}

uint64_t sub_10006A48C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 3840))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006A4AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 3832) = 0;
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
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 3840) = v3;
  return result;
}

uint64_t sub_10006A900(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1416))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006A920(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1400) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 1416) = v3;
  return result;
}

__n128 sub_10006AAE8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_10006AB2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[200])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_10006AB80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 184) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 200) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 200) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for NANAttribute.MasterIndication(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANAttribute.MasterIndication(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

uint64_t sub_10006AE44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 656))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006AE64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 648) = 0;
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
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 656) = v3;
  return result;
}

__n128 sub_10006B094(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

__n128 sub_10006B0E0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10006B0FC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006B11C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

uint64_t sub_10006B20C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 3600))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006B22C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 3592) = 0;
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
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 3600) = v3;
  return result;
}

uint64_t sub_10006B668(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 1200))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006B688(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 1192) = 0;
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
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 1200) = v3;
  return result;
}

__n128 sub_10006B818(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_10006B85C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 216))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006B87C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 216) = v3;
  return result;
}

__n128 sub_10006B954(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 62) = *(a2 + 62);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10006B978(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 70))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006B998(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 68) = 0;
    *(result + 64) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 70) = v3;
  return result;
}

uint64_t OffloadedServices.init()()
{
  sub_10006153C();
  v0 = Dictionary.init()();
  sub_10002B68C();
  Dictionary.init()();
  Dictionary.init()();
  return v0;
}

uint64_t sub_10006BBB8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Logger();
  v55 = *(v6 - 8);
  v56 = v6;
  v7 = *(v55 + 64);
  __chkstk_darwin();
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v49 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v49 - v17;
  (*(a2 + 64))(a1, a2);
  if ((*(v15 + 48))(v14, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v11 + 8))(v14, v10);
  }

  v20 = *(v15 + 32);
  v53 = v18;
  v20(v18, v14, AssociatedTypeWitness);
  v21 = *(a2 + 40);
  v21(a1, a2);

  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_10006153C();
  v22 = Dictionary.isEmpty.getter();

  if ((v22 & 1) == 0)
  {
    return (*(v15 + 8))(v53, AssociatedTypeWitness);
  }

  v21(a1, a2);
  v24 = v23;

  v25 = *(v24 + 16);

  if (v25)
  {
    return (*(v15 + 8))(v53, AssociatedTypeWitness);
  }

  v21(a1, a2);

  swift_getAssociatedTypeWitness();
  v26 = sub_10002B68C();
  v27 = Dictionary.isEmpty.getter();

  if ((v27 & 1) == 0)
  {
    return (*(v15 + 8))(v53, AssociatedTypeWitness);
  }

  v49 = v26;
  v50 = v21;
  *&v59 = v3;
  v28 = v54;
  (*(*(a2 + 8) + 8))(a1);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v29, v30, "Stopping all datapaths because client removed all other services", v31, 2u);
  }

  v51 = v3;

  (*(v55 + 8))(v28, v56);
  v50(a1, a2);
  v33 = v32;
  swift_getAssociatedTypeWitness();

  *&v59 = v33;
  type metadata accessor for Dictionary.Values();
  swift_getWitnessTable();
  *&v59 = Array.init<A>(_:)();
  __chkstk_darwin();
  *(&v49 - 4) = a1;
  *(&v49 - 3) = a2;
  *(&v49 - 2) = v53;
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();

  v34 = (*(a2 + 72))(a1, a2);
  v35 = v34;
  v36 = v34 + 64;
  v37 = 1 << *(v34 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v34 + 64);
  v40 = (v37 + 63) >> 6;

  for (i = 0; v39; i = v42)
  {
    v42 = i;
LABEL_15:
    v43 = __clz(__rbit64(v39)) | (v42 << 6);
    v44 = *(v35 + 48) + 6 * v43;
    v45 = *(v44 + 4);
    v46 = (*(v35 + 56) + 16 * v43);
    v48 = *v46;
    v47 = v46[1];
    LODWORD(v59) = *v44;
    WORD2(v59) = v45;
    *(&v59 + 1) = v48;
    v60 = v47;

    sub_10006C3E8(&v59, v51, a1, a2);
    v39 &= v39 - 1;
    v57 = v59;
    v58 = v60;
    sub_100016290(&v57, &qword_10058BB70, &qword_100480E98);
  }

  while (1)
  {
    v42 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v42 >= v40)
    {

      return (*(v15 + 8))(v53, AssociatedTypeWitness);
    }

    v39 = *(v36 + 8 * v42);
    ++i;
    if (v39)
    {
      goto LABEL_15;
    }
  }

  __break(1u);

  v57 = v59;
  v58 = v60;
  result = sub_100016290(&v57, &qword_10058BB70, &qword_100480E98);
  __break(1u);
  return result;
}

uint64_t sub_10006C328(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 120);
  v4 = swift_checkMetadataState();
  return v3(a1, v4, AssociatedConformanceWitness);
}

uint64_t sub_10006C3E8(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *a1 | (*(a1 + 1) << 16);

  v9 = WiFiAddress.ipv6LinkLocalAddress.getter(v8);
  v11 = v10;
  v12 = (*(a4 + 32))(a3, a4);
  if (v12)
  {
    v13 = v12;
    v31 = xmmword_100480A90;
    sub_100179C20(v6, v7, &v31);
    if (*(&v31 + 1) >> 62 == 2)
    {
      v15 = *(v31 + 24);
    }

    v16 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
    v29 = v16;
    v17 = sub_1000850C8();
    v30 = v17;
    LOBYTE(v27[0]) = -64;
    v25 = *sub_100029B34(v27, v16);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_100002A00(v27);
    if (*(&v31 + 1) >> 62 == 2)
    {
      v18 = *(v31 + 24);
    }

    v29 = v16;
    v30 = v17;
    LOBYTE(v27[0]) = 17;
    v26 = *sub_100029B34(v27, v16);
    Data._Representation.replaceSubrange(_:with:count:)();
    sub_100002A00(v27);
    sub_100179AB0(27, &v31, 1);
    v19 = v31;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v19, *(&v19 + 1));
    v27[0] = v9;
    v27[1] = v11;
    v21 = sub_10004F3B0(v27, &v28);
    v23 = v22;
    v24 = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v21, v23);
    [v13 handleEventType:3 keyData:isa valueData:v24];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

Swift::Void __swiftcall BonjourOffload.stopAllServices()()
{
  v3 = v1;
  v4 = v0;
  v5 = type metadata accessor for Logger();
  v53 = *(v5 - 8);
  v54 = v5;
  v6 = *(v53 + 64);
  __chkstk_darwin();
  v52 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v48 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = v48 - v16;
  (*(v3 + 64))(v4, v3);
  v18 = *(v14 + 48);
  v56 = AssociatedTypeWitness;
  if (v18(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v13, v9);
  }

  else
  {
    v49 = v14;
    (*(v14 + 32))(v17, v13, v56);
    v19 = *(v3 + 40);
    v19(v4, v3);
    v20 = v19;

    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v21 = swift_getAssociatedTypeWitness();
    v48[1] = sub_10006153C();
    v48[2] = v21;
    LOBYTE(v19) = Dictionary.isEmpty.getter();

    v22 = v2;
    v51 = v17;
    v23 = v4;
    if ((v19 & 1) == 0)
    {
      goto LABEL_7;
    }

    v20(v4, v3);
    v25 = v24;

    v26 = *(v25 + 16);

    if (v26)
    {
      goto LABEL_7;
    }

    v20(v4, v3);

    swift_getAssociatedTypeWitness();
    sub_10002B68C();
    v27 = Dictionary.isEmpty.getter();

    if ((v27 & 1) == 0 || (v20(v4, v3), , , , swift_getAssociatedTypeWitness(), v28 = Dictionary.isEmpty.getter(), , (v28 & 1) == 0))
    {
LABEL_7:
      v57[0] = v22;
      v29 = v52;
      (*(*(v3 + 8) + 8))(v4);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Clearing all services because client was invalidated", v32, 2u);
      }

      (*(v53 + 8))(v29, v54);
      v50 = (v3 + 40);
      v20(v4, v3);
      v34 = v33;
      v35 = swift_getAssociatedTypeWitness();
      v53 = sub_10002B68C();

      v57[0] = v34;
      type metadata accessor for Dictionary.Values();
      swift_getWitnessTable();
      v54 = v35;
      v57[0] = Array.init<A>(_:)();
      __chkstk_darwin();
      v48[-4] = v4;
      v48[-3] = v3;
      v36 = v51;
      v48[-2] = v51;
      type metadata accessor for Array();
      swift_getWitnessTable();
      Sequence.forEach(_:)();

      v37 = (v20)(v4, v3);

      v48[0] = v48;
      v57[0] = v37;
      __chkstk_darwin();
      v48[-4] = v4;
      v48[-3] = v3;
      v48[-2] = v36;
      v48[-1] = v22;
      type metadata accessor for Dictionary();
      v52 = &protocol conformance descriptor for [A : B];
      swift_getWitnessTable();
      Sequence.forEach(_:)();

      v20(v4, v3);
      v39 = v38;

      v50 = v48;
      v57[0] = v39;
      __chkstk_darwin();
      v48[-4] = v4;
      v48[-3] = v3;
      v48[-2] = v36;
      v48[-1] = v22;
      swift_getAssociatedTypeWitness();
      type metadata accessor for Dictionary();
      swift_getWitnessTable();
      Sequence.forEach(_:)();

      v40 = *(v3 + 56);
      v41 = v40(v57, v4, v3);
      Dictionary.removeAll(keepingCapacity:)(0);
      v41(v57, 0);
      v42 = v40(v57, v23, v3);
      Dictionary.removeAll(keepingCapacity:)(0);
      v42(v57, 0);
      v43 = v40(v57, v23, v3);
      type metadata accessor for Dictionary();
      Dictionary.removeAll(keepingCapacity:)(0);
      v43(v57, 0);
      v44 = v40(v57, v23, v3);
      v46 = v45;
      v47 = *(v45 + 8);

      *(v46 + 8) = &_swiftEmptyDictionarySingleton;
      v44(v57, 0);
    }

    (*(v49 + 8))(v51, v56);
  }
}

uint64_t sub_10006D088(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 112);
  v4 = swift_checkMetadataState();
  if (v3(a1, v4, AssociatedConformanceWitness))
  {
    type metadata accessor for BonjourResolver(0);
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v6 = *(v5 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_delegate);
      *(v5 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_delegate) = 0;
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  return (*(AssociatedConformanceWitness + 120))(a1, v4, AssociatedConformanceWitness);
}

uint64_t sub_10006D1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a3;
  v28[0] = a1;
  v28[1] = a2;
  swift_getAssociatedTypeWitness();
  v31 = a5;
  v29 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = *(TupleTypeMetadata2 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin();
  v14 = v28 - v13;
  v15 = *(v12 + 48);
  v16 = *(AssociatedConformanceWitness + 40);
  v17 = v28[0];
  v18 = swift_checkMetadataState();
  if (v16(v17 + v15, v18, AssociatedConformanceWitness))
  {
    type metadata accessor for BonjourBrowser(0);
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      v20 = v17;
      v21 = *(v19 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_delegate);
      *(v19 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_delegate) = 0;
      swift_unknownObjectRelease();
      v17 = v20;
    }

    swift_unknownObjectRelease();
  }

  (*(v10 + 16))(v14, v17, TupleTypeMetadata2);
  v22 = *v14;
  v23 = *(v14 + 1);
  v24 = v14[16];
  v25 = v14[17];
  v26 = *(TupleTypeMetadata2 + 48);
  v35 = &type metadata for DNSRecords.Identifier;
  v36 = &protocol witness table for DNSRecords.Identifier;
  v32[0] = v22;
  v32[1] = v23;
  v33 = v24;
  v34 = v25;
  BonjourOffload.stopBrowsing(record:)(v32, v29, v31);
  sub_100002A00(v32);
  return (*(*(AssociatedTypeWitness - 8) + 8))(&v14[v26], AssociatedTypeWitness);
}

uint64_t sub_10006E9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a3;
  v8 = *(*(sub_10005DC58(&unk_10058B750, &unk_100480AB0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v41 - v9;
  v11 = type metadata accessor for DNSRecords.SRV();
  v42 = *(v11 - 8);
  v12 = *(v42 + 64);
  __chkstk_darwin();
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  v45 = a5;
  v43 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v15 = *(swift_getTupleTypeMetadata2() + 48);
  v16 = *(AssociatedConformanceWitness + 72);
  v17 = swift_checkMetadataState();
  result = v16(a1 + v15, v17, AssociatedConformanceWitness);
  if (result)
  {
    v19 = result;
    type metadata accessor for BonjourAdvertiser(0);
    v20 = swift_dynamicCastClass();
    if (!v20)
    {
      return swift_unknownObjectRelease();
    }

    v21 = v20;
    v22 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_srvInfo;
    swift_beginAccess();
    sub_100012400(v21 + v22, v10, &unk_10058B750, &unk_100480AB0);
    if ((*(v42 + 48))(v10, 1, v11) == 1)
    {
      sub_100016290(v10, &unk_10058B750, &unk_100480AB0);
    }

    else
    {
      v23 = v41;
      sub_100038F84(v10, v41, type metadata accessor for DNSRecords.SRV);
      v49 = v11;
      v50 = &protocol witness table for DNSRecords.SRV;
      v24 = sub_1000297D4(v48);
      sub_100083B68(v23, v24);
      BonjourOffload.stopAdvertising(record:)(v48, v43, v45);
      sub_100083834(v23);
      sub_100002A00(v48);
    }

    v25 = (v21 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo);
    v26 = *(v21 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 8);
    if (v26)
    {
      v42 = v19;
      v28 = v25[5];
      v27 = v25[6];
      v30 = v25[3];
      v29 = v25[4];
      v31 = v25[2];
      v32 = *v25;
      v41 = v29 >> 8;
      v47[3] = &type metadata for DNSRecords.TXT;
      v47[4] = &protocol witness table for DNSRecords.TXT;
      v33 = swift_allocObject();
      v47[0] = v33;
      *(v33 + 16) = v32;
      *(v33 + 24) = v26;
      *(v33 + 32) = v31;
      *(v33 + 40) = v30;
      *(v33 + 48) = v29 & 1;
      *(v33 + 49) = v41;
      *(v33 + 56) = v28;
      *(v33 + 64) = v27;
      v48[0] = v32;
      v48[1] = v26;
      v48[2] = v31;
      v49 = v30;
      v50 = v29;
      v51 = v28;
      v52 = v27;
      sub_100083900(v32, v26, v31, v30, v29, v28, v27);
      sub_100083AB8(v48, v46);
      BonjourOffload.stopAdvertising(record:)(v47, v43, v45);
      sub_1000835CC(v32, v26, v31, v30, v29, v28, v27);
      sub_100002A00(v47);
    }

    v34 = v21 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service;
    v35 = *(v21 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 8);
    if (v35)
    {
      v36 = *(v34 + 32);
      v38 = *(v34 + 16);
      v37 = *(v34 + 24);
      v39 = *v34;
      v49 = &type metadata for DNSRecords.PTR;
      v50 = &protocol witness table for DNSRecords.PTR;
      v40 = swift_allocObject();
      v48[0] = v40;
      *(v40 + 16) = v39;
      *(v40 + 24) = v35;
      *(v40 + 32) = v38;
      *(v40 + 40) = v37;
      *(v40 + 48) = v36 & 1;
      *(v40 + 49) = HIBYTE(v36);

      BonjourOffload.stopAdvertising(record:)(v48, v43, v45);
      swift_unknownObjectRelease();
      return sub_100002A00(v48);
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t BonjourOffload.stopAdvertising(record:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v210 = a1;
  v203 = type metadata accessor for DNSRecords.SRV();
  v197 = *(v203 - 8);
  v6 = *(v197 + 64);
  __chkstk_darwin();
  v202 = &v180 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v204 = &v180 - v8;
  v9 = *(*(sub_10005DC58(&unk_10058B750, &unk_100480AB0) - 8) + 64);
  __chkstk_darwin();
  v189 = &v180 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v190 = &v180 - v11;
  __chkstk_darwin();
  v193 = &v180 - v12;
  v213 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedTypeWitness();
  v15 = type metadata accessor for Optional();
  v198 = *(v15 - 8);
  v199 = v15;
  v16 = *(v198 + 64);
  __chkstk_darwin();
  v191 = &v180 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = &v180 - v18;
  __chkstk_darwin();
  v200 = &v180 - v19;
  v208 = v14;
  v207 = *(v14 - 8);
  v20 = *(v207 + 64);
  __chkstk_darwin();
  v192 = &v180 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = &v180 - v22;
  __chkstk_darwin();
  v201 = &v180 - v23;
  v24 = type metadata accessor for Logger();
  v205 = *(v24 - 8);
  v206 = v24;
  v25 = *(v205 + 64);
  __chkstk_darwin();
  v188 = &v180 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v211 = &v180 - v27;
  v28 = type metadata accessor for Optional();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin();
  v32 = &v180 - v31;
  v33 = *(AssociatedTypeWitness - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin();
  v36 = &v180 - v35;
  v37 = v3;
  (*(a3 + 64))(v213, a3);
  v38 = v33;
  v39 = *(v33 + 48);
  v212 = AssociatedTypeWitness;
  if (v39(v32, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v29 + 8))(v32, v28);
  }

  (*(v33 + 32))(v36, v32, v212);
  v41 = v37;
  v223[0] = v37;
  v42 = a3;
  v43 = *(a3 + 8);
  v44 = *(v43 + 8);
  v45 = v38;
  v46 = v213;
  v185 = v43 + 8;
  v186 = v43;
  v184 = v44;
  (v44)(v213);
  v47 = v210;
  sub_10002B154(v210, &v224);
  swift_unknownObjectRetain_n();
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  v50 = os_log_type_enabled(v48, v49);
  v187 = v45;
  v196 = v36;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v182 = v49;
    v52 = v51;
    v183 = swift_slowAlloc();
    *&v216 = v183;
    *v52 = 136315650;
    sub_10002B154(&v224, &v219);
    sub_10005DC58(&unk_100595FD0, &qword_100486B50);
    v53 = String.init<A>(describing:)();
    v181 = v48;
    v54 = v53;
    v56 = v55;
    sub_100002A00(&v224);
    v57 = sub_100002320(v54, v56, &v216);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2048;
    v58 = *(a3 + 40);
    v58(v46, a3);

    swift_getAssociatedTypeWitness();
    sub_10006153C();
    v59 = Dictionary.count.getter();
    swift_unknownObjectRelease();

    *(v52 + 14) = v59;
    swift_unknownObjectRelease();
    *(v52 + 22) = 2048;
    v58(v46, a3);

    v47 = v210;

    sub_10002B68C();
    v60 = v208;
    v61 = Dictionary.count.getter();
    swift_unknownObjectRelease();

    *(v52 + 24) = v61;
    swift_unknownObjectRelease();
    v62 = v181;
    _os_log_impl(&_mh_execute_header, v181, v182, "Stopping advertise for %s (browses: %ld, advertises: %ld)", v52, 0x20u);
    sub_100002A00(v183);

    v63 = *(v205 + 8);
    v63(v211, v206);
  }

  else
  {

    swift_unknownObjectRelease_n();
    sub_100002A00(&v224);
    v63 = *(v205 + 8);
    v63(v211, v206);
    v60 = v208;
  }

  v64 = v204;
  sub_10002B154(v47, v223);
  sub_10005DC58(&unk_100595FD0, &qword_100486B50);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v75 = v64;
      v76 = v202;
      sub_100038F84(v75, v202, type metadata accessor for DNSRecords.SRV);
      v77 = *(v76 + 16);
      v228[0] = *v76;
      v224 = v228[0];
      v225 = v77;
      LOWORD(v226) = *(v76 + 32);
      v214 = v77;
      v215 = v226;
      v78 = *(v76 + 16);
      v219 = *v76;
      v220 = v78;
      LOWORD(v221) = *(v76 + 32);
      v79 = *(a3 + 56);
      sub_1000836D4(v228, &v216);
      sub_100083730(&v214, &v216);
      v80 = v79(&v216, v213, a3);
      sub_10002B68C();
      type metadata accessor for Dictionary();
      v81 = v194;
      Dictionary.removeValue(forKey:)();
      sub_10008378C(v228);
      sub_1000837E0(&v214);
      v80(&v216, 0);
      v82 = v207;
      if ((*(v207 + 48))(v81, 1, v60) == 1)
      {
        (*(v198 + 8))(v81, v199);
        (*(a3 + 40))(v213, a3);
        v84 = v83;
        if (*(v83 + 16) && (v85 = sub_10007CE78(&v224), (v86 & 1) != 0))
        {
          v87 = *(*(v84 + 56) + 8 * v85);
          sub_100083834(v202);

          v88 = v190;
          (*(v197 + 56))(v190, 1, 1, v203);
          v89 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_srvInfo;
          swift_beginAccess();
          sub_100083890(v88, v87 + v89);
          swift_endAccess();
        }

        else
        {

          sub_100083834(v202);
        }

        v73 = v212;
        v74 = v196;
      }

      else
      {
        v127 = *(v82 + 32);
        v128 = v195;
        v127(v195, v81, v60);
        v73 = v212;
        if ((*(AssociatedConformanceWitness + 72))(v128, v212))
        {
          type metadata accessor for BonjourAdvertiser(0);
          v129 = swift_dynamicCastClass();
          if (v129)
          {
            v130 = v190;
            (*(v197 + 56))(v190, 1, 1, v203);
            v131 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_srvInfo;
            swift_beginAccess();
            swift_unknownObjectRetain();
            sub_100083890(v130, &v129[v131]);
            swift_endAccess();
            swift_unknownObjectRelease();
            if (*&v129[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 8] || *&v129[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 8])
            {
              sub_1000836D4(v228, &v219);
              sub_100083730(&v214, &v219);
              swift_unknownObjectRetain();
              v132 = v79(&v219, v213, v42);
              v134 = v133;
              v135 = *(v133 + 8);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v216 = *(v134 + 8);
              *(v134 + 8) = 0x8000000000000000;
              sub_10007FF94(v129, &v224, isUniquelyReferenced_nonNull_native);
              sub_10008378C(v228);
              sub_1000837E0(&v214);
              *(v134 + 8) = v216;
              v132(&v219, 0);
            }

            v73 = v212;
            v60 = v208;
          }

          else
          {
            swift_unknownObjectRelease();
          }
        }

        else
        {
          v129 = 0;
        }

        v170 = v195;
        v74 = v196;
        (*(AssociatedConformanceWitness + 80))(v195, v73);

        (*(v207 + 8))(v170, v60);
        sub_100083834(v202);
      }

      goto LABEL_54;
    }

    if (!swift_dynamicCast())
    {
      v137 = swift_dynamicCast();
      v73 = v212;
      v74 = v196;
      if (v137)
      {
        v224 = v219;
        v225 = v220;
        v226 = v221;
        v227 = v222;
        (*(AssociatedConformanceWitness + 96))(&v224, v212);
        sub_100083578(&v224);
      }

      else if (swift_dynamicCast())
      {
      }

      else
      {
        *&v216 = v41;
        v158 = v188;
        v184(v213, v186);
        sub_10002B154(v47, &v224);
        v159 = Logger.logObject.getter();
        v160 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v159, v160))
        {
          v161 = v41;
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v211 = v161;
          v164 = v163;
          *&v214 = v163;
          *v162 = 136315138;
          sub_10002B154(&v224, &v219);
          v165 = String.init<A>(describing:)();
          v167 = v166;
          sub_100002A00(&v224);
          v168 = sub_100002320(v165, v167, &v214);

          *(v162 + 4) = v168;
          _os_log_impl(&_mh_execute_header, v159, v160, "Failed to stop advertising for record %s", v162, 0xCu);
          sub_100002A00(v164);

          v169 = v188;
        }

        else
        {

          sub_100002A00(&v224);
          v169 = v158;
        }

        v63(v169, v206);
        v73 = v212;
      }

      goto LABEL_54;
    }

    v107 = v41;
    v108 = *(&v225 + 1);
    v204 = *(&v226 + 1);
    v205 = v227;
    v219 = v224;
    v220 = v225;
    LOWORD(v221) = v226;
    v216 = v224;
    v217 = v225;
    v218 = v226;
    v109 = *(v42 + 56);

    v110 = v213;
    v201 = v109;
    v202 = v42 + 56;
    v111 = (v109)(&v214, v213, v42);
    sub_10002B68C();
    type metadata accessor for Dictionary();
    v112 = v191;
    Dictionary.removeValue(forKey:)();
    v210 = v108;

    v111(&v214, 0);
    v113 = v207;
    if ((*(v207 + 48))(v112, 1, v60) == 1)
    {
      (*(v198 + 8))(v112, v199);
      (*(v42 + 40))(v110, v42);
      v115 = v114;
      if (*(v114 + 16) && (v116 = sub_10007CE78(&v219), (v117 & 1) != 0))
      {
        v118 = *(*(v115 + 56) + 8 * v116);

        sub_1000124C8(v204, v205);

        v119 = &v118[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo];
        v120 = *&v118[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo];
        v121 = *&v118[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 8];
        v122 = *&v118[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 16];
        v123 = *&v118[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 24];
        v124 = *&v118[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 32];
        v125 = *&v118[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 40];
        v126 = *&v118[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 48];
        *v119 = 0u;
        *(v119 + 1) = 0u;
        *(v119 + 2) = 0u;
        *(v119 + 6) = 0;
        sub_1000835CC(v120, v121, v122, v123, v124, v125, v126);
      }

      else
      {

        sub_1000124C8(v204, v205);
      }

      v73 = v212;
      v74 = v196;
      goto LABEL_54;
    }

    v206 = v42;
    v211 = v107;
    v138 = v192;
    (*(v113 + 32))(v192, v112, v60);
    v73 = v212;
    if ((*(AssociatedConformanceWitness + 72))(v138, v212))
    {
      type metadata accessor for BonjourAdvertiser(0);
      v139 = swift_dynamicCastClass();
      if (v139)
      {
        v140 = v139;
        v141 = v139 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo;
        v142 = *(v139 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo);
        v143 = *(v139 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 8);
        v144 = *(v139 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 16);
        v145 = *(v139 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 24);
        v147 = *(v139 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 32);
        v146 = *(v139 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 40);
        v200 = *(v139 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 48);
        *v141 = 0u;
        *(v141 + 16) = 0u;
        *(v141 + 32) = 0u;
        *(v141 + 48) = 0;
        swift_unknownObjectRetain();
        sub_1000835CC(v142, v143, v144, v145, v147, v146, v200);
        v148 = *&v140[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service];
        v149 = *&v140[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 8];
        v151 = *&v140[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 16];
        v150 = *&v140[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 24];
        v152 = *&v140[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 32];
        sub_10008364C(v148, v149);
        swift_unknownObjectRelease();
        if (v149)
        {
          sub_100083690(v148, v149);
LABEL_64:

          v177 = v140;
          v178 = (v201)(&v216, v213, v206);
          sub_100072AC8(v140, &v219);
          v178(&v216, 0);
          v140 = v177;
          v73 = v212;
          v74 = v196;
          v113 = v207;
          goto LABEL_65;
        }

        v175 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_srvInfo;
        swift_beginAccess();
        v176 = &v140[v175];
        v174 = v189;
        sub_100012400(v176, v189, &unk_10058B750, &unk_100480AB0);
        if ((*(v197 + 48))(v174, 1, v203) != 1)
        {
          sub_100016290(v174, &unk_10058B750, &unk_100480AB0);
          goto LABEL_64;
        }

        v73 = v212;
        v113 = v207;
LABEL_60:
        sub_100016290(v174, &unk_10058B750, &unk_100480AB0);
        v74 = v196;
LABEL_65:
        v179 = v192;
        (*(AssociatedConformanceWitness + 80))(v192, v73);

        sub_1000124C8(v204, v205);

        (*(v113 + 8))(v179, v208);
        v42 = v206;
        goto LABEL_54;
      }

      swift_unknownObjectRelease();
    }

    v174 = v189;
    (*(v197 + 56))(v189, 1, 1, v203);
    v140 = 0;
    goto LABEL_60;
  }

  v224 = v219;
  v225 = v220;
  LOWORD(v226) = v221;
  v216 = v219;
  v217 = v220;
  v218 = v221;
  v65 = *(a3 + 56);
  v66 = v213;
  v67 = v65(&v214, v213, v42);
  sub_10002B68C();
  type metadata accessor for Dictionary();
  v68 = v41;
  v69 = v200;
  Dictionary.removeValue(forKey:)();
  v67(&v214, 0);
  v70 = v207;
  if ((*(v207 + 48))(v69, 1, v60) != 1)
  {
    v210 = v65;
    v90 = *(v70 + 32);
    v91 = v201;
    v90(v201, v69, v60);
    v74 = v196;
    v73 = v212;
    if ((*(AssociatedConformanceWitness + 72))(v91, v212))
    {
      type metadata accessor for BonjourAdvertiser(0);
      v92 = swift_dynamicCastClass();
      if (v92)
      {
        v93 = v92;
        v206 = v42;
        v211 = v68;
        v94 = v92 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service;
        v95 = *(v92 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service);
        v96 = *(v92 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 8);
        v97 = *(v92 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 16);
        v98 = *(v92 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 24);
        *v94 = 0u;
        *(v94 + 16) = 0u;
        v99 = *(v94 + 32);
        *(v94 + 32) = 0;
        swift_unknownObjectRetain();
        sub_100083690(v95, v96);
        v100 = *&v93[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo];
        v101 = *&v93[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 8];
        v102 = *&v93[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 16];
        v103 = *&v93[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 24];
        v104 = *&v93[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 32];
        v105 = *&v93[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 40];
        v205 = *&v93[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 48];
        sub_100083900(v100, v101, v102, v103, v104, v105, v205);
        swift_unknownObjectRelease();
        if (v101)
        {
          sub_1000835CC(v100, v101, v102, v103, v104, v105, v205);
          v106 = v210;
LABEL_52:
          v42 = v206;
          v154 = v208;
          v171 = v93;
          v172 = v106(&v216, v213, v42);
          sub_100072AC8(v93, &v224);
          v172(&v216, 0);
          v93 = v171;
          v73 = v212;
          v74 = v196;
          goto LABEL_53;
        }

        v155 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_srvInfo;
        swift_beginAccess();
        v156 = &v93[v155];
        v153 = v193;
        sub_100012400(v156, v193, &unk_10058B750, &unk_100480AB0);
        v157 = (*(v197 + 48))(v153, 1, v203);
        v106 = v210;
        if (v157 != 1)
        {
          sub_100016290(v153, &unk_10058B750, &unk_100480AB0);
          goto LABEL_52;
        }

        v228[0] = v224;
        sub_10008378C(v228);
        v216 = v225;
        LOWORD(v217) = v226;
        sub_1000837E0(&v216);
        v73 = v212;
        v42 = v206;
        v74 = v196;
LABEL_41:
        v154 = v208;
        sub_100016290(v153, &unk_10058B750, &unk_100480AB0);
LABEL_53:
        v173 = v201;
        (*(AssociatedConformanceWitness + 80))(v201, v73);

        (*(v207 + 8))(v173, v154);
        goto LABEL_54;
      }

      swift_unknownObjectRelease();
    }

    v214 = v224;
    sub_10008378C(&v214);
    v216 = v225;
    LOWORD(v217) = v226;
    sub_1000837E0(&v216);
    v153 = v193;
    (*(v197 + 56))(v193, 1, 1, v203);
    v93 = 0;
    goto LABEL_41;
  }

  (*(v198 + 8))(v69, v199);
  v71 = v65(&v216, v66, v42);
  v72 = sub_10007F6F0(&v224);
  v228[0] = v224;
  sub_10008378C(v228);
  v214 = v225;
  v215 = v226;
  sub_1000837E0(&v214);

  v71(&v216, 0);
  v73 = v212;
  v74 = v196;
LABEL_54:
  sub_100002A00(v223);
  sub_10006BBB8(v213, v42);
  return (*(v187 + 8))(v74, v73);
}

uint64_t BonjourOffload.record(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*(type metadata accessor for Logger() - 8) + 64);
  __chkstk_darwin();
  v4 = [a1 serviceKey];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = [a1 serviceValue];
  if (v8)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  static DNSRecords.createRecord(with:value:)(v5, v7, v10, v12, a2);
  sub_100017554(v10, v12);

  return sub_1000124C8(v5, v7);
}

uint64_t sub_1000729F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_100085188(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_10007FDF4(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    sub_10007F624(a2, a3, v10);

    return sub_100016290(v10, &qword_10058BA80, &qword_1004818C0);
  }

  return result;
}

uint64_t sub_100072AC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_10007FF94(a1, a2, isUniquelyReferenced_nonNull_native);
    v22 = *a2;
    sub_10008378C(&v22);
    v20 = *(a2 + 16);
    v21 = *(a2 + 32);
    result = sub_1000837E0(&v20);
    *v2 = v18;
  }

  else
  {
    v9 = *v2;
    v10 = sub_10007CE78(a2);
    LOBYTE(v9) = v11;
    v22 = *a2;
    sub_10008378C(&v22);
    v20 = *(a2 + 16);
    v21 = *(a2 + 32);
    result = sub_1000837E0(&v20);
    if (v9)
    {
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v19 = *v3;
      if (!v13)
      {
        sub_10019592C();
        v14 = v19;
      }

      v15 = *(v14 + 48) + 40 * v10;
      v16 = *(v15 + 8);
      v17 = *(v15 + 24);

      result = sub_100192AD8(v10, v14);
      *v3 = v14;
    }
  }

  return result;
}

uint64_t sub_100072BFC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_100085188(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_10008024C(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = type metadata accessor for CodingUserInfoKey();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    sub_10007F798(a2, v10);
    v8 = type metadata accessor for CodingUserInfoKey();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_100016290(v10, &qword_10058BA80, &qword_1004818C0);
  }

  return result;
}

uint64_t sub_100072D18(uint64_t a1, uint64_t a2)
{
  v5 = *(*(sub_10005DC58(&qword_10058BAD0, &qword_100480E18) - 8) + 64);
  __chkstk_darwin();
  v7 = &v17 - v6;
  v8 = *(*(type metadata accessor for NANPairedDeviceSharedAssociation(0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1) == 1)
  {
    sub_100016290(a1, &qword_10058BAD0, &qword_100480E18);
    sub_10007FA08(a2, type metadata accessor for NANPairedDeviceSharedAssociation, type metadata accessor for NANPairedDeviceSharedAssociation, sub_100193868, sub_100196404, v7);
    v12 = type metadata accessor for UUID();
    (*(*(v12 - 8) + 8))(a2, v12);
    return sub_100016290(v7, &qword_10058BAD0, &qword_100480E18);
  }

  else
  {
    sub_100038F84(a1, v10, type metadata accessor for NANPairedDeviceSharedAssociation);
    v14 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_100080988(v10, a2, isUniquelyReferenced_nonNull_native);
    v16 = type metadata accessor for UUID();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_100072F88(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v8 = &v24 - v7;
  v9 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_100016290(a1, &qword_10058BB48, &unk_100483040);
    v14 = *v3;
    v15 = sub_10007CD10(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_100195C70();
        v20 = v25;
      }

      sub_100038F84(*(v20 + 56) + *(v10 + 72) * v17, v8, type metadata accessor for NANGenericServiceProtocol.Attribute);
      sub_100193BD0(v17, v20);
      *v3 = v20;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_100016290(v8, &qword_10058BB48, &unk_100483040);
  }

  else
  {
    sub_100038F84(a1, v13, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v21 = *v3;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    result = sub_100080B5C(v13, a2, v22);
    *v3 = v25;
  }

  return result;
}

uint64_t sub_10007332C(uint64_t a1, char a2, uint64_t (*a3)(_OWORD *, void, uint64_t), uint64_t (*a4)(void), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (*(a1 + 24))
  {
    sub_100085188(a1, v25);
    v10 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v6;
    result = a3(v25, a2 & 1, isUniquelyReferenced_nonNull_native);
    *v6 = v23;
  }

  else
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    v16 = *v6;
    v17 = a4(a2 & 1);
    if (v18)
    {
      v19 = v17;
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v24 = *v7;
      if (!v21)
      {
        a6();
        v22 = v24;
      }

      sub_100085188((*(v22 + 56) + 32 * v19), v25);
      a5(v19, v22);
      *v7 = v22;
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    return sub_100016290(v25, &qword_10058BA80, &qword_1004818C0);
  }

  return result;
}

_OWORD *sub_100073460(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100085188(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_100081160(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    v8 = *v2;
    v9 = sub_10007D54C(a2, sub_1001E0694, sub_1001E0694);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_100197B20();
        v14 = v16;
      }

      sub_100085188((*(v14 + 56) + 32 * v11), v17);
      sub_1001949AC(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_100016290(v17, &qword_10058BA80, &qword_1004818C0);
  }

  return result;
}

_OWORD *sub_10007358C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100085188(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1000812DC(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    v8 = *v2;
    v9 = sub_10007D4B0(a2, sub_1001E1B50, sub_10007E6AC);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_100197B34();
        v14 = v16;
      }

      sub_100085188((*(v14 + 56) + 32 * v11), v17);
      sub_1001949C4(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_100016290(v17, &qword_10058BA80, &qword_1004818C0);
  }

  return result;
}

_OWORD *sub_1000736B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100085188(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_100081458(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    v8 = *v2;
    v9 = sub_10007D54C(a2, sub_1001E1F4C, sub_1001E1F4C);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_100197B48();
        v14 = v16;
      }

      sub_100085188((*(v14 + 56) + 32 * v11), v17);
      sub_100194F1C(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_100016290(v17, &qword_10058BA80, &qword_1004818C0);
  }

  return result;
}

_OWORD *sub_1000737E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100085188(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1000815D4(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    v8 = *v2;
    v9 = sub_10007D54C(a2, sub_100219B9C, sub_100219B9C);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_100197B5C();
        v14 = v16;
      }

      sub_100085188((*(v14 + 56) + 32 * v11), v17);
      sub_100194F34(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_100016290(v17, &qword_10058BA80, &qword_1004818C0);
  }

  return result;
}

_OWORD *sub_100073910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100085188(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_1000818E4(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    v8 = *v2;
    v9 = sub_10007D54C(a2, sub_10021C248, sub_10021C248);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_100197B70();
        v14 = v16;
      }

      sub_100085188((*(v14 + 56) + 32 * v11), v17);
      sub_100194F4C(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_100016290(v17, &qword_10058BA80, &qword_1004818C0);
  }

  return result;
}

uint64_t sub_100073A90(uint64_t a1, uint64_t a2, uint64_t (*a3)(_OWORD *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t), void (*a5)(uint64_t, uint64_t), void (*a6)(void))
{
  v7 = v6;
  if (*(a1 + 24))
  {
    sub_100085188(a1, v25);
    v10 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v6;
    result = a3(v25, a2, isUniquelyReferenced_nonNull_native);
    *v6 = v23;
  }

  else
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    v16 = *v6;
    v17 = a4(a2);
    if (v18)
    {
      v19 = v17;
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v24 = *v7;
      if (!v21)
      {
        a6();
        v22 = v24;
      }

      sub_100085188((*(v22 + 56) + 32 * v19), v25);
      a5(v19, v22);
      *v7 = v22;
    }

    else
    {
      memset(v25, 0, sizeof(v25));
    }

    return sub_100016290(v25, &qword_10058BA80, &qword_1004818C0);
  }

  return result;
}

_OWORD *sub_100073BBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_100085188(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_100081B8C(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_100016290(a1, &qword_10058BA80, &qword_1004818C0);
    v8 = *v2;
    v9 = sub_10007D4B0(a2, sub_10021DF14, sub_10007F274);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_100197B98();
        v14 = v16;
      }

      sub_100085188((*(v14 + 56) + 32 * v11), v17);
      sub_100195414(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_100016290(v17, &qword_10058BA80, &qword_1004818C0);
  }

  return result;
}

uint64_t sub_100073CE8@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v30 = a5;
  v31 = a2;
  v32 = a1;
  v29 = *(a3 - 8);
  v10 = *(v29 + 64);
  v11 = (__chkstk_darwin)();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v26);
  if ((*(v16 + 48))(v24, 1, v15) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v16 + 32))(v20, v24, v15);
  v32(v20, v13);
  result = (*(v16 + 8))(v20, v15);
  if (v6)
  {
    return (*(v29 + 32))(v30, v13, a3);
  }

  return result;
}

uint64_t sub_100073F90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 40);
  v6 = swift_checkMetadataState();
  result = v5(a1, v6, AssociatedConformanceWitness);
  if (result)
  {
    type metadata accessor for BonjourBrowser(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      *a2 = result;
      return result;
    }

    result = swift_unknownObjectRelease();
  }

  *a2 = 0;
  return result;
}

_BYTE *sub_100074090@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a2 < 0 || 1 << *(a4 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a4 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a4 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a4 + 48) + 40 * a2;
  v8 = *v6;
  v7 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v11 = *(v6 + 32);
  LOBYTE(v6) = *(v6 + 33);
  v12 = *(a4 + 56) + 16 * a2;
  v13 = *v12;
  LOBYTE(v12) = *(v12 + 8);
  *result = v13;
  result[8] = v12;
  *a5 = v8;
  *(a5 + 8) = v7;
  *(a5 + 16) = v9;
  *(a5 + 24) = v10;
  *(a5 + 32) = v11;
  *(a5 + 33) = v6;

  return v13;
}

uint64_t sub_100074160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v17[-v11];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v23 = *(a2 + 8);
    v21 = *(a2 + 24);
    v22 = *(a2 + 40);
    v13 = *(a2 + 24);
    v18 = *(a2 + 8);
    v19 = v13;
    v20 = *(a2 + 40);
    v14 = *(a4 + 56);
    sub_1000836D4(&v23, v17);
    sub_100083730(&v21, v17);
    v15 = v14(v17, a3, a4);
    sub_10002B68C();
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    sub_10008378C(&v23);
    sub_1000837E0(&v21);
    (*(v9 + 8))(v12, v8);
    v15(v17, 0);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1000743F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a5;
  v22 = a4;
  v6 = *(*(sub_10005DC58(&unk_10058B750, &unk_100480AB0) - 8) + 64);
  __chkstk_darwin();
  v8 = &v22 - v7;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 112);
  v11 = swift_checkMetadataState();
  if (!v10(a1, v11, AssociatedConformanceWitness))
  {
    goto LABEL_5;
  }

  type metadata accessor for BonjourResolver(0);
  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v16 = 0;
    return v16 & 1;
  }

  v13 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_srv;
  v14 = v12;
  swift_beginAccess();
  sub_100012400(v14 + v13, v8, &unk_10058B750, &unk_100480AB0);
  swift_unknownObjectRelease();
  v15 = type metadata accessor for DNSRecords.SRV();
  if ((*(*(v15 - 8) + 48))(v8, 1, v15) == 1)
  {
    sub_100016290(v8, &unk_10058B750, &unk_100480AB0);
LABEL_5:
    v16 = 0;
    return v16 & 1;
  }

  v17 = &v8[*(v15 + 24)];
  v19 = *v17;
  v18 = *(v17 + 1);

  sub_100083834(v8);
  if (v19 == v22 && v18 == v23)
  {

    v16 = 1;
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v16 & 1;
}

uint64_t sub_100074654@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 112);
  v6 = swift_checkMetadataState();
  result = v5(a1, v6, AssociatedConformanceWitness);
  if (result)
  {
    type metadata accessor for BonjourResolver(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      *a2 = result;
      return result;
    }

    result = swift_unknownObjectRelease();
  }

  *a2 = 0;
  return result;
}

uint64_t BonjourOffload.startAdvertising(record:)(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v299 = a2;
  v292 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v285 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v285 + 64);
  __chkstk_darwin();
  v276 = &v262 - v7;
  v289 = v8;
  v9 = type metadata accessor for Optional();
  v274 = *(v9 - 1);
  v275 = v9;
  v10 = *(v274 + 64);
  __chkstk_darwin();
  v272 = &v262 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v277 = &v262 - v12;
  __chkstk_darwin();
  v278 = &v262 - v13;
  __chkstk_darwin();
  v281 = &v262 - v14;
  v15 = *(*(sub_10005DC58(&unk_10058B750, &unk_100480AB0) - 8) + 64);
  __chkstk_darwin();
  v270 = &v262 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v279 = &v262 - v17;
  __chkstk_darwin();
  v286 = (&v262 - v18);
  v296 = type metadata accessor for DNSRecords.SRV();
  v293 = *(v296 - 1);
  v19 = *(v293 + 64);
  __chkstk_darwin();
  v271 = &v262 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v288 = (&v262 - v21);
  __chkstk_darwin();
  v291 = &v262 - v22;
  __chkstk_darwin();
  v284 = &v262 - v23;
  v24 = type metadata accessor for Logger();
  v294 = *(v24 - 8);
  v295 = v24;
  v25 = *(v294 + 64);
  __chkstk_darwin();
  v273 = &v262 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v287 = &v262 - v27;
  __chkstk_darwin();
  v297 = &v262 - v28;
  v29 = type metadata accessor for Optional();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin();
  v33 = &v262 - v32;
  v34 = *(AssociatedTypeWitness - 8);
  v35 = *(v34 + 64);
  __chkstk_darwin();
  v37 = &v262 - v36;
  v38 = a3;
  v39 = *(a3 + 64);
  v40 = v299;
  v298 = v38;
  v39();
  if ((*(v34 + 48))(v33, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v30 + 8))(v33, v29);
  }

  (*(v34 + 32))(v37, v33, AssociatedTypeWitness);
  v42 = v3;
  *&v303 = v3;
  v43 = v298[1];
  v45 = *(v43 + 8);
  v44 = v43 + 8;
  v267 = v298[1];
  v268 = v45;
  (v45)(v40);
  v46 = v292;
  sub_10002B154(v292, &v318);
  swift_unknownObjectRetain_n();
  v47 = Logger.logObject.getter();
  v266 = static os_log_type_t.info.getter();
  v269 = v47;
  v48 = os_log_type_enabled(v47, v266);
  v282 = v37;
  v283 = v34;
  v49 = v42;
  v280 = AssociatedTypeWitness;
  if (v48)
  {
    v50 = swift_slowAlloc();
    v265 = v44;
    v51 = v50;
    v264 = swift_slowAlloc();
    v314[0] = v264;
    *v51 = 136315650;
    sub_10002B154(&v318, &v307);
    sub_10005DC58(&unk_100595FD0, &qword_100486B50);
    v52 = String.init<A>(describing:)();
    v54 = v53;
    sub_100002A00(&v318);
    v55 = sub_100002320(v52, v54, v314);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2048;
    v56 = v298;
    v263 = v298[5];
    v263(v40, v298);

    swift_getAssociatedTypeWitness();
    sub_10006153C();
    v57 = Dictionary.count.getter();
    swift_unknownObjectRelease();

    *(v51 + 14) = v57;
    swift_unknownObjectRelease();
    *(v51 + 22) = 2048;
    v263(v40, v56);
    v58 = v283;

    sub_10002B68C();
    v59 = Dictionary.count.getter();
    swift_unknownObjectRelease();

    *(v51 + 24) = v59;
    swift_unknownObjectRelease();
    v60 = v269;
    _os_log_impl(&_mh_execute_header, v269, v266, "Starting advertise for %s (browses: %ld, advertises: %ld)", v51, 0x20u);
    sub_100002A00(v264);

    v44 = v265;
    v46 = v292;
  }

  else
  {
    v58 = v34;

    swift_unknownObjectRelease_n();
    sub_100002A00(&v318);
  }

  v61 = *(v294 + 8);
  v61(v297, v295);
  v62 = v293;
  sub_10002B154(v46, v314);
  sub_10005DC58(&unk_100595FD0, &qword_100486B50);
  v63 = swift_dynamicCast();
  v64 = v291;
  if (!v63)
  {
    if (swift_dynamicCast())
    {
      v79 = v288;
      sub_100038F84(v64, v288, type metadata accessor for DNSRecords.SRV);
      v80 = v79[1];
      v307 = *v79;
      v308 = v80;
      LOWORD(v309) = *(v79 + 16);
      v81 = v299;
      v82 = v298[5];
      v297 = v49;
      v293 = v82(v299);
      v84 = v83;
      if (*(v83 + 16) && (v85 = sub_10007CE78(&v307), (v86 & 1) != 0))
      {
        v87 = *(*(v84 + 56) + 8 * v85);
        v88 = v296;
      }

      else
      {
        *&v318 = v297;
        v292 = v61;
        v136 = v287;
        v268(v81, v267);
        v137 = type metadata accessor for BonjourAdvertiser(0);
        v138 = objc_allocWithZone(v137);
        v139 = &v138[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service];
        *v139 = 0u;
        *(v139 + 1) = 0u;
        *(v139 + 16) = 0;
        v140 = &v138[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo];
        *(v140 + 6) = 0;
        *(v140 + 1) = 0u;
        *(v140 + 2) = 0u;
        *v140 = 0u;
        v88 = v296;
        (*(v62 + 56))(&v138[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_srvInfo], 1, 1, v296);
        v291 = v84;
        v141 = v295;
        (*(v294 + 16))(&v138[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_logger], v136, v295);
        v301.receiver = v138;
        v301.super_class = v137;
        v87 = objc_msgSendSuper2(&v301, "init");
        v292(v136, v141);
      }

      v142 = v279;
      sub_100083B68(v288, v279);
      (*(v62 + 56))(v142, 0, 1, v88);
      v143 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_srvInfo;
      swift_beginAccess();
      sub_100083890(v142, &v87[v143]);
      swift_endAccess();
      v144 = &v87[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service];
      v145 = *&v87[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 8];
      if (!v145)
      {
        goto LABEL_28;
      }

      v146 = *v144;
      v147 = *(v144 + 2);
      v148 = *(v144 + 3);
      v149 = *(v144 + 16);
      *&v303 = *v144;
      *(&v303 + 1) = v145;
      *&v304 = v147;
      *(&v304 + 1) = v148;
      v305 = v149 & 0xFF01;
      v150 = &v87[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo];
      v151 = *&v87[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 8];
      if (v151)
      {
        v153 = *(v150 + 2);
        v154 = *(v150 + 3);
        v155 = *(v150 + 4);
        v156 = *(v150 + 5);
        v157 = *(v150 + 6);
        *&v318 = *v150;
        v152 = v318;
        *(&v318 + 1) = v151;
        *&v319 = v153;
        *(&v319 + 1) = v154;
        LOWORD(v320) = v155 & 0xFF01;
        *(&v320 + 1) = v156;
        *&v321 = v157;
        v286 = v298[7];
        sub_10008364C(v146, v145);
        v295 = v153;
        v296 = v152;
        v287 = v151;
        v293 = v156;
        v294 = v154;
        v291 = v155;
        v292 = v157;
        v158 = v157;
        v159 = v286;
        sub_100083900(v152, v151, v153, v154, v155, v156, v158);
        v160 = v159(&v315, v299, v298);

        v160(&v315, 0);
        v161 = AssociatedConformanceWitness;
        v162 = *(AssociatedConformanceWitness + 56);
        v163 = v87;
        v162(&v303, &v318, v288, v163, v280, v161);
        v240 = v283;

        (*(v285 + 56))(v278, 0, 1, v289);
        v315 = v303;
        v316 = v304;
        v317 = v305;
        v241 = v159(&v311, v299, v298);
        sub_10002B68C();
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        v241(&v311, 0);
        sub_1000835CC(v296, v287, v295, v294, v291, v293, v292);
      }

      else
      {
LABEL_28:
        v311 = v307;
        v315 = v308;
        LOWORD(v316) = v309;
        v164 = v298;
        v165 = v298[7];
        v166 = v87;
        sub_1000836D4(&v311, &v318);
        sub_100083730(&v315, &v318);
        v167 = v165(&v318, v299, v164);
        v169 = v168;
        v170 = *(v168 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v302[0] = *(v169 + 8);
        *(v169 + 8) = 0x8000000000000000;
        sub_10007FF94(v166, &v307, isUniquelyReferenced_nonNull_native);
        sub_10008378C(&v311);
        sub_1000837E0(&v315);
        *(v169 + 8) = v302[0];
        v167(&v318, 0);

        v240 = v283;
      }

      (*(v240 + 8))(v282, v280);
      sub_100083834(v288);
      return sub_100002A00(v314);
    }

    v265 = v44;
    if (!swift_dynamicCast())
    {
      v172 = swift_dynamicCast();
      v173 = v280;
      v174 = v282;
      if (v172)
      {
        v318 = v307;
        v319 = v308;
        v320 = v309;
        v321 = v310;
        (*(AssociatedConformanceWitness + 88))(&v318, v280);
        sub_100083578(&v318);
        (*(v58 + 8))(v174, v173);
      }

      else if (swift_dynamicCast())
      {
        (*(v58 + 8))(v174, v173);
      }

      else
      {
        v242 = v58;
        *&v303 = v49;
        v243 = v273;
        v268(v299, v267);
        sub_10002B154(v46, &v318);
        v244 = Logger.logObject.getter();
        v245 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v244, v245))
        {
          v246 = swift_slowAlloc();
          v247 = swift_slowAlloc();
          *&v315 = v247;
          *v246 = 136315138;
          sub_10002B154(&v318, &v307);
          v248 = String.init<A>(describing:)();
          v249 = v173;
          v251 = v250;
          sub_100002A00(&v318);
          v252 = sub_100002320(v248, v251, &v315);

          *(v246 + 4) = v252;
          _os_log_impl(&_mh_execute_header, v244, v245, "Failed to start advertising for record %s", v246, 0xCu);
          sub_100002A00(v247);

          v61(v273, v295);
          (*(v242 + 8))(v282, v249);
        }

        else
        {

          sub_100002A00(&v318);
          v61(v243, v295);
          (*(v242 + 8))(v174, v173);
        }
      }

      return sub_100002A00(v314);
    }

    v318 = v307;
    v319 = v308;
    v320 = v309;
    v291 = *(&v309 + 1);
    v292 = v310;
    *&v321 = v310;
    v281 = *(&v307 + 1);
    v279 = v307;
    v286 = *(&v308 + 1);
    v284 = v308;
    v288 = v309;
    v317 = v309;
    v315 = v307;
    v316 = v308;
    v322 = v307;
    v323 = v308;
    v324 = v309;
    v110 = v298;
    v111 = v298[5];
    sub_1000836D4(&v322, &v303);
    sub_100083730(&v323, &v303);
    v278 = v111;
    (v111)(v299, v110);
    v303 = v315;
    v304 = v316;
    v305 = v317;
    v112 = sub_10002B68C();
    v113 = v277;
    v114 = v289;
    v273 = v112;
    Dictionary.subscript.getter();

    sub_10008378C(&v322);
    sub_1000837E0(&v323);
    v115 = v285;
    if ((*(v285 + 48))(v113, 1, v114) != 1)
    {
      v182 = v276;
      (*(v115 + 32))(v276, v113, v114);
      v183 = v282;
      v184 = v280;
      v185 = v114;
      if ((*(AssociatedConformanceWitness + 72))(v182, v280))
      {
        type metadata accessor for BonjourAdvertiser(0);
        v186 = swift_dynamicCastClass();
        if (v186)
        {
          v187 = (v186 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo);
          v188 = *(v186 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo);
          v189 = *(v186 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 8);
          v190 = *(v186 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 16);
          v191 = *(v186 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 24);
          v192 = v184;
          v193 = *(v186 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 32);
          v194 = *(v186 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 40);
          v195 = *(v186 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 48);
          v196 = v281;
          *v187 = v279;
          v187[1] = v196;
          v197 = v286;
          v187[2] = v284;
          v187[3] = v197;
          v199 = v291;
          v198 = v292;
          v187[4] = v288;
          v187[5] = v199;
          v187[6] = v198;
          sub_100083AB8(&v318, &v303);
          v200 = v188;
          v201 = v189;
          v182 = v276;
          v185 = v289;
          v202 = v190;
          v115 = v285;
          v203 = v193;
          v184 = v192;
          v183 = v282;
          sub_1000835CC(v200, v201, v202, v191, v203, v194, v195);
        }

        swift_unknownObjectRelease();
      }

      (*(AssociatedConformanceWitness + 64))(v182, &v318, v184);
      sub_100083B14(&v318);
      (*(v115 + 8))(v182, v185);
      (*(v283 + 8))(v183, v184);
      return sub_100002A00(v314);
    }

    (*(v274 + 8))(v113, v275);
    v297 = v49;
    (v278)(v299, v298);
    v117 = v116;
    v119 = v118;
    if (*(v116 + 16) && (v120 = sub_10007CE78(&v315), (v121 & 1) != 0))
    {
      v122 = *(*(v117 + 56) + 8 * v120);
    }

    else
    {
      *&v303 = v297;
      v278 = v119;
      v207 = v287;
      v268(v299, v267);
      v208 = type metadata accessor for BonjourAdvertiser(0);
      v209 = objc_allocWithZone(v208);
      v210 = &v209[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service];
      *v210 = 0u;
      *(v210 + 1) = 0u;
      *(v210 + 16) = 0;
      v211 = &v209[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo];
      *(v211 + 6) = 0;
      *(v211 + 1) = 0u;
      *(v211 + 2) = 0u;
      *v211 = 0u;
      (*(v293 + 56))(&v209[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_srvInfo], 1, 1, v296);
      v212 = v295;
      (*(v294 + 16))(&v209[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_logger], v207, v295);
      v306.receiver = v209;
      v306.super_class = v208;
      v122 = objc_msgSendSuper2(&v306, "init");
      v61(v207, v212);
    }

    v213 = &v122[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo];
    v214 = *&v122[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo];
    v215 = *&v122[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 8];
    v216 = *&v122[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 16];
    v217 = *&v122[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 24];
    v218 = *&v122[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 32];
    v219 = *&v122[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 40];
    v220 = *&v122[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 48];
    v221 = v281;
    *v213 = v279;
    *(v213 + 1) = v221;
    v222 = v286;
    *(v213 + 2) = v284;
    *(v213 + 3) = v222;
    v224 = v291;
    v223 = v292;
    *(v213 + 4) = v288;
    *(v213 + 5) = v224;
    *(v213 + 6) = v223;
    sub_100083AB8(&v318, &v303);
    sub_1000835CC(v214, v215, v216, v217, v218, v219, v220);
    v225 = &v122[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service];
    v226 = *&v122[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 8];
    v204 = v283;
    if (v226)
    {
      v227 = *(v225 + 16);
      v228 = *(v225 + 2);
      v229 = *(v225 + 3);
      *&v303 = *v225;
      *(&v303 + 1) = v226;
      *&v304 = v228;
      *(&v304 + 1) = v229;
      v305 = v227 & 0xFF01;
      v230 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_srvInfo;
      swift_beginAccess();
      v231 = v270;
      sub_100012400(&v122[v230], v270, &unk_10058B750, &unk_100480AB0);
      if ((*(v293 + 48))(v231, 1, v296) != 1)
      {
        v253 = v271;
        sub_100038F84(v231, v271, type metadata accessor for DNSRecords.SRV);
        v254 = v298;
        v255 = v298[7];

        v296 = v255;
        v256 = (v255)(&v311, v299, v254);

        v256(&v311, 0);
        v257 = AssociatedConformanceWitness;
        v258 = *(AssociatedConformanceWitness + 56);
        v259 = v122;
        v258(&v303, &v318, v253, v259, v280, v257);
        v260 = v289;

        (*(v285 + 56))(v272, 0, 1, v260);
        v311 = v303;
        v312 = v304;
        v313 = v305;
        v261 = (v296)(v302, v299, v298);
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();
        v261(v302, 0);

        sub_100083B14(&v318);
        v206 = v271;
LABEL_40:
        sub_100083834(v206);
LABEL_41:
        (*(v204 + 8))(v282, v280);
        return sub_100002A00(v314);
      }

      sub_100016290(v231, &unk_10058B750, &unk_100480AB0);
    }

    v232 = v298;
    v233 = v298[7];
    sub_1000836D4(&v322, &v311);
    sub_100083730(&v323, &v311);
    v234 = v122;
    v235 = v233(&v311, v299, v232);
    v237 = v236;
    v238 = *(v236 + 8);
    v239 = swift_isUniquelyReferenced_nonNull_native();
    v302[0] = *(v237 + 8);
    *(v237 + 8) = 0x8000000000000000;
    sub_10007FF94(v234, &v315, v239);
    sub_10008378C(&v322);
    sub_1000837E0(&v323);
    *(v237 + 8) = v302[0];
    v235(&v311, 0);
    sub_100083B14(&v318);

    goto LABEL_41;
  }

  v315 = v311;
  v316 = v312;
  v317 = v313;
  v65 = *(&v311 + 1);
  v66 = v311;
  v291 = v312;
  v292 = v61;
  v288 = *(&v312 + 1);
  v67 = v313;
  LODWORD(v68) = HIBYTE(v313);
  v69 = v298[5];
  v297 = v49;
  v69(v299);
  v277 = v72;
  v278 = v71;
  v73 = *(v70 + 16);
  v279 = v70;
  if (v73 && (v74 = v70, v75 = sub_10007CE78(&v315), (v76 & 1) != 0))
  {
    v77 = *(*(v74 + 56) + 8 * v75);
    v78 = v293;
  }

  else
  {
    *&v318 = v297;
    LODWORD(v276) = v68;
    v68 = v287;
    v268(v299, v267);
    v275 = type metadata accessor for BonjourAdvertiser(0);
    v89 = objc_allocWithZone(v275);
    v90 = &v89[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service];
    *v90 = 0u;
    *(v90 + 1) = 0u;
    *(v90 + 16) = 0;
    v91 = &v89[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo];
    *(v91 + 6) = 0;
    *(v91 + 1) = 0u;
    *(v91 + 2) = 0u;
    *v91 = 0u;
    v78 = v293;
    (*(v293 + 56))(&v89[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_srvInfo], 1, 1, v296);
    v92 = v67;
    v93 = v65;
    v94 = v66;
    v95 = v295;
    (*(v294 + 16))(&v89[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_logger], v68, v295);
    v300.receiver = v89;
    v300.super_class = v275;
    v77 = objc_msgSendSuper2(&v300, "init");
    v96 = v68;
    LOWORD(v68) = v276;
    v97 = v95;
    v66 = v94;
    v65 = v93;
    v67 = v92;
    v292(v96, v97);
  }

  v322 = v315;
  v323 = v316;
  v324 = v317;
  v98 = v67 | (v68 << 8);
  v99 = &v77[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service];
  v100 = *&v77[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service];
  v101 = *&v77[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 8];
  v102 = *&v77[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 16];
  v103 = *&v77[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_service + 24];
  *v99 = v66;
  *(v99 + 1) = v65;
  v104 = v288;
  *(v99 + 2) = v291;
  *(v99 + 3) = v104;
  v105 = *(v99 + 16);
  *(v99 + 16) = v98;
  sub_1000836D4(&v322, &v318);
  sub_100083730(&v323, &v318);
  sub_100083690(v100, v101);
  v106 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_srvInfo;
  swift_beginAccess();
  v107 = &v77[v106];
  v108 = v286;
  sub_100012400(v107, v286, &unk_10058B750, &unk_100480AB0);
  if ((*(v78 + 48))(v108, 1, v296) != 1)
  {
    v123 = v284;
    sub_100038F84(v108, v284, type metadata accessor for DNSRecords.SRV);
    v124 = &v77[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo];
    v125 = *&v77[OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB17BonjourAdvertiser_txtInfo + 8];
    v109 = v298;
    if (!v125)
    {
      sub_100083834(v123);
      goto LABEL_32;
    }

    v126 = *(v124 + 2);
    v127 = *(v124 + 3);
    v128 = *(v124 + 4);
    v129 = *(v124 + 5);
    v130 = *(v124 + 6);
    *&v318 = *v124;
    *(&v318 + 1) = v125;
    *&v319 = v126;
    *(&v319 + 1) = v127;
    LOWORD(v320) = v128 & 0xFF01;
    *(&v320 + 1) = v129;
    *&v321 = v130;
    v131 = v298[7];
    v294 = v126;
    v295 = v318;
    *&v307 = v318;
    *(&v307 + 1) = v125;
    *&v308 = v126;
    *(&v308 + 1) = v127;
    v292 = v129;
    v293 = v127;
    v296 = v128;
    *&v309 = v128;
    *(&v309 + 1) = v129;
    v291 = v130;
    *&v310 = v130;
    sub_100083AB8(&v307, &v303);
    v288 = v131;
    v132 = (v131)(&v303, v299, v109);

    v132(&v303, 0);
    v133 = AssociatedConformanceWitness;
    v134 = *(AssociatedConformanceWitness + 56);
    v135 = v77;
    v134(&v315, &v318, v123, v135, v280, v133);
    v204 = v283;

    (*(v285 + 56))(v281, 0, 1, v289);
    v303 = v315;
    v304 = v316;
    v305 = v317;
    v205 = (v288)(v302, v299, v298);
    sub_10002B68C();
    type metadata accessor for Dictionary();
    Dictionary.subscript.setter();
    v205(v302, 0);
    sub_1000835CC(v295, v125, v294, v293, v296, v292, v291);

    v206 = v284;
    goto LABEL_40;
  }

  sub_100016290(v108, &unk_10058B750, &unk_100480AB0);
  v109 = v298;
LABEL_32:
  v175 = v109[7];
  v176 = v77;
  v177 = v175(&v318, v299, v109);
  v179 = v178;
  v180 = *(v178 + 8);
  v181 = swift_isUniquelyReferenced_nonNull_native();
  *&v307 = *(v179 + 8);
  *(v179 + 8) = 0x8000000000000000;
  sub_10007FF94(v176, &v315, v181);
  sub_10008378C(&v322);
  sub_1000837E0(&v323);
  *(v179 + 8) = v307;
  v177(&v318, 0);

  (*(v283 + 8))(v282, v280);
  return sub_100002A00(v314);
}

uint64_t sub_1000778CC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v16[-v11];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v13 = a2[1];
    v17 = *a2;
    v18 = v13;
    v19 = *(a2 + 16);
    v14 = (*(a4 + 56))(v16, a3, a4);
    sub_10002B68C();
    type metadata accessor for Dictionary();
    Dictionary.removeValue(forKey:)();
    (*(v9 + 8))(v12, v8);
    v14(v16, 0);
    return swift_unknownObjectRelease();
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v12, 1, 1, AssociatedTypeWitness);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t BonjourOffload.stopResolving(record:)(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, char *))
{
  v102 = a1;
  v6 = *(*(sub_10005DC58(&unk_10058B750, &unk_100480AB0) - 8) + 64);
  __chkstk_darwin();
  v90 = &v84 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v93 = type metadata accessor for Optional();
  v92 = *(v93 - 8);
  v10 = *(v92 + 64);
  __chkstk_darwin();
  v88 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v97 = &v84 - v12;
  v100 = v9;
  v99 = *(v9 - 8);
  v13 = *(v99 + 64);
  __chkstk_darwin();
  v96 = &v84 - v14;
  v15 = type metadata accessor for Logger();
  v103 = *(v15 - 8);
  v104 = v15;
  v16 = *(v103 + 64);
  __chkstk_darwin();
  v98 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v101 = &v84 - v18;
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin();
  v23 = &v84 - v22;
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin();
  v27 = &v84 - v26;
  a3[8](a2, a3);
  if ((*(v24 + 48))(v23, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v20 + 8))(v23, v19);
  }

  v87 = v24;
  v29 = *(v24 + 32);
  v94 = v27;
  v95 = AssociatedTypeWitness;
  v29(v27, v23, AssociatedTypeWitness);
  v106 = v3;
  v30 = a3[1];
  v31 = *(v30 + 1);
  v32 = v101;
  v89 = a2;
  v86 = v30;
  v85 = v31;
  v31(a2);
  v33 = v102;
  sub_10002B154(v102, &v113);
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();
  v36 = a3;
  if (os_log_type_enabled(v34, v35))
  {
    v37 = swift_slowAlloc();
    v38 = v3;
    v39 = v36;
    v40 = swift_slowAlloc();
    v112 = v40;
    *v37 = 136315138;
    sub_10002B154(&v113, v109);
    sub_10005DC58(&unk_100595FD0, &qword_100486B50);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    sub_100002A00(&v113);
    v44 = sub_100002320(v41, v43, &v112);

    *(v37 + 4) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "Stopping resolve for %s", v37, 0xCu);
    sub_100002A00(v40);
    v36 = v39;
    v3 = v38;

    v33 = v102;
  }

  else
  {

    sub_100002A00(&v113);
  }

  v45 = *(v103 + 8);
  v45(v32, v104);
  sub_10002B154(v33, &v113);
  sub_10005DC58(&unk_100595FD0, &qword_100486B50);
  if (!swift_dynamicCast())
  {
    v112 = v3;
    v56 = v98;
    v85(v89, v86);
    sub_10002B154(v33, &v113);
    sub_10002B154(v33, v109);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v57, v58))
    {

      sub_100002A00(&v113);
      v45(v56, v104);
      (*(v87 + 8))(v94, v95);
      return sub_100002A00(v109);
    }

    v59 = swift_slowAlloc();
    v60 = v56;
    v108 = swift_slowAlloc();
    *v59 = 136315394;
    sub_10002B154(&v113, &v106);
    v61 = String.init<A>(describing:)();
    v63 = v62;
    sub_100002A00(&v113);
    v64 = sub_100002320(v61, v63, &v108);

    *(v59 + 4) = v64;
    *(v59 + 12) = 2080;
    v65 = v110;
    v66 = v111;
    sub_100029B34(v109, v110);
    LOBYTE(v65) = (*(v66 + 24))(v65, v66);
    v106 = 39;
    v107 = 0xE100000000000000;
    v67._countAndFlagsBits = sub_100177788(v65);
    String.append(_:)(v67);

    v68._countAndFlagsBits = 91;
    v68._object = 0xE100000000000000;
    String.append(_:)(v68);
    v105 = word_100480EAA[v65];
    v69._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v69);

    v70._countAndFlagsBits = 10077;
    v70._object = 0xE200000000000000;
    String.append(_:)(v70);
    v71 = v106;
    v72 = v107;
    sub_100002A00(v109);
    v73 = sub_100002320(v71, v72, &v108);

    *(v59 + 14) = v73;
    _os_log_impl(&_mh_execute_header, v57, v58, "Cannot stop resolve for record: %s [%s]", v59, 0x16u);
    swift_arrayDestroy();

    v45(v60, v104);
    return (*(v87 + 8))(v94, v95);
  }

  v47 = v109[0];
  v46 = v109[1];
  v48 = v110;
  v103 = v109[2];
  v49 = v111;
  v50 = BYTE1(v111);
  v51 = *(v36 + 5);

  v102 = v3;
  v101 = v36;
  v104 = v51(v89, v36);
  v98 = v47;
  v113 = v47;
  v114 = v46;
  v52 = v103;
  v115 = v103;
  v116 = v48;
  LODWORD(v86) = v49;
  v117 = v49;
  LODWORD(v85) = v50;
  v118 = v50;
  sub_10002B68C();
  v53 = v97;
  v54 = v100;
  Dictionary.subscript.getter();

  v55 = v99;
  if ((*(v99 + 48))(v53, 1, v54) == 1)
  {
    (*(v87 + 8))(v94, v95);

    return (*(v92 + 8))(v53, v93);
  }

  v74 = v96;
  (*(v55 + 32))(v96, v53, v54);
  if (!(*(AssociatedConformanceWitness + 112))(v74, v95))
  {

LABEL_18:
    (*(v55 + 8))(v74, v54);
    return (*(v87 + 8))(v94, v95);
  }

  type metadata accessor for BonjourResolver(0);
  v75 = swift_dynamicCastClass();
  if (!v75)
  {

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  v76 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_srv;
  v77 = v75;
  swift_beginAccess();
  v78 = v77 + v76;
  v79 = v90;
  sub_100012400(v78, v90, &unk_10058B750, &unk_100480AB0);
  v80 = type metadata accessor for DNSRecords.SRV();
  if ((*(*(v80 - 8) + 48))(v79, 1, v80) != 1)
  {

    swift_unknownObjectRelease();
    (*(v55 + 8))(v96, v54);
    (*(v87 + 8))(v94, v95);
    return sub_100016290(v79, &unk_10058B750, &unk_100480AB0);
  }

  sub_100016290(v79, &unk_10058B750, &unk_100480AB0);
  (*(AssociatedConformanceWitness + 120))(v96, v95);
  v113 = v98;
  v114 = v46;
  v115 = v52;
  v116 = v48;
  v117 = v86;
  v118 = v85;
  v81 = v101;
  v82 = v89;
  v104 = (*(v101 + 7))(v109, v89, v101);
  type metadata accessor for Dictionary();
  v83 = v88;
  Dictionary.removeValue(forKey:)();
  (*(v92 + 8))(v83, v93);
  v104(v109, 0);

  sub_10006BBB8(v82, v81);
  swift_unknownObjectRelease();
  (*(v55 + 8))(v96, v100);
  return (*(v87 + 8))(v94, v95);
}