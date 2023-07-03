// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD8,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r0.w);
  r0.xyz = r1.xxx * r0.xyz;
  r0.w = sqrt(r0.w);
  r1.x = v7.x ? 1 : -1;
  r1.y = v3.x * cb0[17].x + cb0[17].z;
  r1.zw = v3.xy * cb0[18].xy + cb0[18].zw;
  r1.z = t0.Sample(s1_s, r1.zw).x;
  r1.z = -cb0[20].x + r1.z;
  r1.y = r1.z * cb0[19].x + r1.y;
  r1.y = frac(r1.y);
  r1.y = cb0[21].z + r1.y;
  r1.y = saturate(cb0[21].y * abs(r1.y) + cb0[21].x);
  r1.w = v3.x * cb0[22].x + cb0[22].z;
  r1.z = r1.z * cb0[19].x + r1.w;
  r1.z = frac(r1.z);
  r1.z = cb0[23].z + r1.z;
  r1.z = saturate(cb0[23].y * abs(r1.z) + cb0[23].x);
  r1.y = r1.y + r1.z;
  r1.y = min(1, r1.y);
  r1.zw = v3.xy * cb0[24].xy + cb0[24].zw;
  r2.xy = t0.Sample(s1_s, v3.xy).xy;
  r2.xy = -cb0[26].xy + r2.xy;
  r1.zw = r2.xy * cb0[25].xx + r1.zw;
  r1.z = t1.Sample(s1_s, r1.zw).x;
  r1.z = 1 + -r1.z;
  r1.z = max(0, r1.z);
  r1.z = log2(r1.z);
  r1.z = cb0[27].x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.z * cb0[28].x + cb0[29].x;
  r1.y = log2(r1.y);
  r1.y = r1.z * r1.y;
  r1.y = exp2(r1.y);
  r2.y = cb0[65].x;
  r2.x = 0;
  r2.xyzw = v3.xyxy + r2.yxxy;
  r1.zw = r2.xz * cb0[17].xx + cb0[17].zz;
  r3.xyzw = r2.xyzw * cb0[18].xyxy + cb0[18].zwzw;
  r3.x = t0.Sample(s1_s, r3.xy).x;
  r3.x = -cb0[20].x + r3.x;
  r1.z = r3.x * cb0[19].x + r1.z;
  r1.z = frac(r1.z);
  r1.z = cb0[21].z + r1.z;
  r1.z = saturate(cb0[21].y * abs(r1.z) + cb0[21].x);
  r4.xy = r2.xz * cb0[22].xx + cb0[22].zz;
  r3.x = r3.x * cb0[19].x + r4.x;
  r3.x = frac(r3.x);
  r3.x = cb0[23].z + r3.x;
  r3.x = saturate(cb0[23].y * abs(r3.x) + cb0[23].x);
  r1.z = r3.x + r1.z;
  r1.z = min(1, r1.z);
  r5.xyzw = r2.xyzw * cb0[24].xyxy + cb0[24].zwzw;
  r2.xy = t0.Sample(s1_s, r2.xy).xy;
  r2.xy = -cb0[26].xy + r2.xy;
  r2.xy = r2.xy * cb0[25].xx + r5.xy;
  r2.x = t1.Sample(s1_s, r2.xy).x;
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = log2(r2.x);
  r2.x = cb0[27].x * r2.x;
  r2.x = exp2(r2.x);
  r2.x = r2.x * cb0[28].x + cb0[29].x;
  r1.z = log2(r1.z);
  r1.z = r2.x * r1.z;
  r1.z = exp2(r1.z);
  r1.z = r1.y + -r1.z;
  r6.x = cb0[66].x * r1.z;
  r1.z = t0.Sample(s1_s, r3.zw).x;
  r1.z = -cb0[20].x + r1.z;
  r1.w = r1.z * cb0[19].x + r1.w;
  r1.w = frac(r1.w);
  r1.w = cb0[21].z + r1.w;
  r1.w = saturate(cb0[21].y * abs(r1.w) + cb0[21].x);
  r1.z = r1.z * cb0[19].x + r4.y;
  r1.z = frac(r1.z);
  r1.z = cb0[23].z + r1.z;
  r1.z = saturate(cb0[23].y * abs(r1.z) + cb0[23].x);
  r1.z = r1.w + r1.z;
  r1.z = min(1, r1.z);
  r2.xy = t0.Sample(s1_s, r2.zw).xy;
  r2.xy = -cb0[26].xy + r2.xy;
  r2.xy = r2.xy * cb0[25].xx + r5.zw;
  r1.w = t1.Sample(s1_s, r2.xy).x;
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[27].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = r1.w * cb0[28].x + cb0[29].x;
  r1.z = log2(r1.z);
  r1.z = r1.w * r1.z;
  r1.z = exp2(r1.z);
  r1.y = r1.y + -r1.z;
  r6.y = cb0[66].x * r1.y;
  r6.z = 1;
  r1.y = dot(r6.xyz, r6.xyz);
  r1.y = rsqrt(r1.y);
  r1.yzw = r6.xyz * r1.yyy;
  r2.x = min(cb0[67].x, 1);
  r2.yzw = v0.xyz * r1.xxx;
  r3.xyz = v2.xyz * r1.zzz;
  r1.xyz = v1.xyz * r1.yyy + r3.xyz;
  r1.xyz = r2.yzw * r1.www + r1.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.w = dot(r0.xyz, r2.yzw);
  r0.x = dot(r0.xyz, r1.xyz);
  r0.y = saturate(cb0[98].x);
  r0.z = r1.w * r1.w;
  r0.z = saturate(r0.z * cb0[30].x + cb0[30].y);
  r1.w = v7.x ? 0 : -r0.z;
  r0.z = r1.w + r0.z;
  r0.z = -1 + r0.z;
  r0.z = cb0[31].x * r0.z + 1;
  r0.w = saturate(r0.w * cb0[32].x + cb0[32].y);
  r1.w = cmp(0.000000 != cb0[34].x);
  if (r1.w != 0) {
    r2.yz = ddx_coarse(v3.xy);
    r1.w = dot(r2.yz, r2.yz);
    r1.w = sqrt(r1.w);
    r2.yz = ddy_coarse(v3.xy);
    r2.y = dot(r2.yz, r2.yz);
    r2.y = sqrt(r2.y);
    r1.w = max(r2.y, r1.w);
    r1.w = 1 / r1.w;
    r1.w = log2(r1.w);
    r2.y = floor(r1.w);
    r2.y = exp2(r2.y);
    r2.z = ceil(r1.w);
    r2.z = exp2(r2.z);
    r3.xy = v3.xy * r2.yy;
    r3.xy = floor(r3.xy);
    r2.y = dot(r3.xy, float2(17,0.100000001));
    r2.y = sin(r2.y);
    r2.y = 10000 * r2.y;
    r3.x = r3.y * 13 + r3.x;
    r3.x = sin(r3.x);
    r3.x = 0.100000001 + abs(r3.x);
    r2.y = r3.x * r2.y;
    r3.xy = v3.xy * r2.zz;
    r3.xy = floor(r3.xy);
    r2.z = dot(r3.xy, float2(17,0.100000001));
    r2.z = sin(r2.z);
    r2.z = 10000 * r2.z;
    r3.x = r3.y * 13 + r3.x;
    r3.x = sin(r3.x);
    r3.x = 0.100000001 + abs(r3.x);
    r2.z = r3.x * r2.z;
    r2.yz = frac(r2.yz);
    r1.w = frac(r1.w);
    r2.z = r2.z + -r2.y;
    r2.y = r1.w * r2.z + r2.y;
    r2.z = 1 + -r1.w;
    r1.w = min(r2.z, r1.w);
    r2.z = r2.y * r2.y;
    r3.x = r1.w + r1.w;
    r3.y = 1 + -r1.w;
    r3.x = r3.x * r3.y;
    r2.z = r2.z / r3.x;
    r3.z = -r1.w * 0.5 + r2.y;
    r3.w = 1 + -r2.y;
    r3.w = r3.w * r3.w;
    r3.xz = r3.wz / r3.xy;
    r3.x = 1 + -r3.x;
    r3.y = cmp(r2.y < r3.y);
    r1.w = cmp(r2.y < r1.w);
    r1.w = r1.w ? r2.z : r3.z;
    r1.w = r3.y ? r1.w : r3.x;
    r2.y = cmp(0.5 >= cb0[33].x);
    r2.z = cb0[33].x + cb0[33].x;
    r2.z = r1.w * -r2.z + r2.z;
    r3.x = cb0[33].x * 2 + -2;
    r1.w = r1.w * r3.x + 1;
    r1.w = r2.y ? r2.z : r1.w;
  } else {
    r1.w = cb0[33].x;
  }
  r0.z = r0.z * r0.w + -r1.w;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.z = max(0, r1.z);
  r0.z = log2(r0.z);
  r0.z = cb0[37].x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = cb0[38].x * r0.z;
  r0.w = max(0, r2.w);
  r0.w = log2(r0.w);
  r0.w = cb0[39].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb0[40].x * r0.w;
  r0.z = r0.z * cb0[41].x + r0.w;
  r0.z = cb0[42].x * r0.z;
  r0.z = cb0[43].x * r0.z;
  r0.w = max(0, -r1.z);
  r0.w = log2(r0.w);
  r0.w = cb0[25].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = cb0[45].x * r0.w;
  r1.w = max(0, -r2.w);
  r1.w = log2(r1.w);
  r1.w = cb0[46].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = cb0[47].x * r1.w;
  r0.w = r0.w * cb0[48].x + r1.w;
  r0.w = cb0[49].x * r0.w;
  r2.yzw = cb0[50].xyz * r0.www;
  r2.yzw = r0.zzz * cb0[44].xyz + r2.yzw;
  r0.x = r0.x * r0.x;
  r0.z = r0.x * cb0[51].x + cb0[51].y;
  r0.z = max(0, r0.z);
  r0.z = log2(r0.z);
  r0.w = cb0[52].x * r0.z;
  r0.w = exp2(r0.w);
  r0.z = cb0[53].x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.w * cb0[54].x + r0.z;
  r0.z = cb0[55].x * r0.z;
  r0.x = r0.x * cb0[57].x + cb0[57].y;
  r0.x = max(0, r0.x);
  r0.x = log2(r0.x);
  r0.x = cb0[58].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * cb0[59].x + r0.x;
  r0.x = cb0[60].x * r0.x;
  r3.xyz = cb0[61].xyz * r0.xxx;
  r0.xzw = r0.zzz * cb0[56].xyz + r3.xyz;
  r0.xzw = r2.yzw + r0.xzw;
  r1.w = v1.w * 0.5 + 0.5;
  r1.w = saturate(r1.w * cb0[62].x + cb0[62].y);
  r1.w = cb0[63].y * r1.w + cb0[63].x;
  r0.xzw = r1.www * r0.xzw;
  r2.yzw = cb0[64].xyz * r0.xzw;
  r1.w = max(r2.z, r2.w);
  r1.w = max(r2.y, r1.w);
  r0.xzw = r0.xzw * cb0[64].xyz + cb0[16].xyz;
  r0.z = max(r0.z, r0.w);
  r0.x = max(r0.x, r0.z);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r0.xzw = cb0[16].xyz * r0.xxx + r2.yzw;
  r2.y = max(r0.z, r0.w);
  r2.y = max(r2.y, r0.x);
  r2.y = max(1, r2.y);
  o0.xyz = r0.xzw / r2.yyy;
  r0.x = min(r0.y, r2.x);
  r0.x = r0.x * 0.125 + 0.375;
  o1.xyz = saturate(r1.xyz * r0.xxx + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r1.w;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r0.x = 1 + r0.x;
  o2.y = 0.5 * r0.x;
  o0.w = 0;
  o1.w = 0;
  o2.x = cb0[97].x;
  o2.z = 0;
  o2.w = v0.w;
  return;
}