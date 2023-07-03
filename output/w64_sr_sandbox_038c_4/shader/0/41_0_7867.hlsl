// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:53 2023
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[76];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r0.w);
  r0.xyz = r1.xxx * r0.xyz;
  r0.w = sqrt(r0.w);
  r1.xy = v3.xy * cb0[17].xy + cb0[17].zw;
  r1.zw = v3.xy * cb0[18].xy + cb0[18].zw;
  r2.xyzw = t0.Sample(s1_s, v3.xy).xyzw;
  r3.xyzw = t1.Sample(s1_s, v3.xy).zxyw;
  r1.xy = t2.Sample(s1_s, r1.xy).yw;
  r4.x = t3.Sample(s1_s, r1.zw).x;
  r4.yzw = t4.Sample(s1_s, v3.xy).xyz;
  r4.yz = r4.yz * cb0[22].xx + cb0[22].yy;
  r4.w = saturate(cb0[22].z + r4.w);
  r5.xyz = t5.Sample(s1_s, r1.zw).xyz;
  r1.z = 1 + -v5.y;
  r1.w = cmp(1 < v3.y);
  r5.w = r1.w ? 0 : 1;
  r5.w = r5.w * r3.w;
  r1.z = r5.w * r1.z;
  r6.xy = cb0[23].xy * r1.zz;
  r5.xy = r5.xy * r6.xx + r6.yy;
  r1.z = saturate(cb0[23].z + r5.z);
  r4.yz = r5.xy + r4.yz;
  r5.xy = v3.xy * cb0[24].xy + cb0[24].zw;
  r5.xyz = t6.Sample(s1_s, r5.xy).xyz;
  r5.w = saturate(-cb0[26].x + v5.x);
  r5.w = saturate(cb0[27].y * r5.w + cb0[27].x);
  r6.xy = v3.xy * cb0[25].xy + cb0[25].zw;
  r6.x = t7.Sample(s1_s, r6.xy).w;
  r6.y = -2 + r5.w;
  r6.y = r6.y * r5.w + 1;
  r6.y = 0.5 * r6.y;
  r6.y = r6.y / r6.x;
  r6.y = 3.29999995 + -r6.y;
  r6.z = r6.x * -4 + 4;
  r5.w = r5.w / r6.z;
  r6.x = r6.x * r6.x;
  r6.x = r6.x * 10 + r6.y;
  r5.w = r6.x * r5.w;
  r5.w = saturate(cb0[28].y * r5.w + cb0[28].x);
  r6.xy = cb0[29].xy * r5.ww;
  r5.xy = r5.xy * r6.xx + r6.yy;
  r5.z = saturate(cb0[29].z + r5.z);
  r4.yz = r5.xy + r4.yz;
  r5.x = dot(r4.yz, r4.yz);
  r5.x = 1 + -r5.x;
  r5.x = max(0, r5.x);
  r5.x = sqrt(r5.x);
  r1.z = min(r5.z, r1.z);
  r1.z = min(r4.w, r1.z);
  r5.yzw = v2.xyz * r4.zzz;
  r4.yzw = v1.xyz * r4.yyy + r5.yzw;
  r4.yzw = v0.xyz * r5.xxx + r4.yzw;
  r5.x = dot(r4.yzw, r4.yzw);
  r5.x = rsqrt(r5.x);
  r4.yzw = r5.xxx * r4.yzw;
  r0.x = dot(r0.xyz, r4.yzw);
  r0.y = cb0[0].y * r4.x + cb0[0].x;
  r5.xyz = r2.xyz * r0.yyy;
  r5.xyz = saturate(float3(4,4,4) * r5.xyz);
  r6.xyz = saturate(r2.xyz * r0.yyy + float3(-0.25,-0.25,-0.25));
  r5.xyz = cb0[20].xyz * r5.xyz + r6.xyz;
  r5.xyz = r5.xyz + -r2.xyz;
  r5.xyz = r3.www * r5.xyz + r2.xyz;
  r0.y = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r5.xyz = r5.xyz + -r0.yyy;
  r5.xyz = cb0[1].xxx * r5.xyz + r0.yyy;
  r6.xyz = cb0[19].xyz + -r2.xyz;
  r6.xyz = r2.www * r6.xyz + r2.xyz;
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * cb0[2].x + cb0[2].y);
  r0.y = saturate(r1.y * cb0[3].x + r0.x);
  r7.xyz = cb0[5].xyz * r0.yyy + cb0[4].xyz;
  r7.xyz = r7.xyz + -r5.xyz;
  r7.xyz = cb0[6].xxx * r7.xyz + r5.xyz;
  r6.xyz = r7.xyz * r6.xyz;
  r6.xyz = r6.xyz * r2.xyz;
  r6.xyz = float3(21.1120949,21.1120949,21.1120949) * r6.xyz;
  r5.xyz = r1.www ? r5.xyz : r6.xyz;
  r5.xyz = r5.xyz + -r2.xyz;
  r5.xyz = r3.www * r5.xyz + r2.xyz;
  r0.y = saturate(cb0[7].y * r3.y + cb0[7].x);
  r0.y = 1 + -r0.y;
  r6.xyz = cb0[21].xyz + -r5.xyz;
  r6.xyz = r0.yyy * r6.xyz + r5.xyz;
  r5.xyz = r1.www ? r5.xyz : r6.xyz;
  r0.y = cb0[9].y * v1.w + cb0[9].x;
  r0.z = max(cb0[10].x, r0.y);
  r0.z = min(cb0[11].x, r0.z);
  r6.xyz = cb0[8].xyz + -r5.xyz;
  r5.xyz = saturate(r0.zzz * r6.xyz + r5.xyz);
  r5.xyz = r5.xyz + -r2.xyz;
  r5.xyz = r3.www * r5.xyz + r2.xyz;
  r0.z = cb0[74].y * r3.z + cb0[74].x;
  r1.y = cb0[73].y * r3.z + cb0[73].x;
  r0.z = r1.w ? r0.z : r1.y;
  r0.z = r0.z + -r3.z;
  r0.z = saturate(r3.w * r0.z + r3.z);
  r1.y = cb0[75].y * r0.z + cb0[75].x;
  r1.y = r1.y + -r0.z;
  r1.y = r2.w * r1.y + r0.z;
  r0.z = r1.w ? r0.z : r1.y;
  r1.y = cb0[60].x + -r0.z;
  r0.y = saturate(r0.y * r1.y + r0.z);
  r0.z = cb0[70].y * r3.y + cb0[70].x;
  r1.y = cb0[69].y * r3.y + cb0[69].x;
  r1.x = r1.x * r1.y;
  r1.x = 4.59478998 * r1.x;
  r0.z = r1.w ? r0.z : r1.x;
  r0.z = r0.z + -r3.y;
  r0.z = saturate(r3.w * r0.z + r3.y);
  r0.x = cb0[71].y * r0.x + cb0[71].x;
  r0.x = r0.x + -r0.z;
  r0.x = cb0[72].x * r0.x + r0.z;
  r0.x = r1.w ? r0.z : r0.x;
  r0.x = r0.x + -r3.y;
  r0.x = r3.w * r0.x + r3.y;
  r0.x = r1.w ? r0.z : r0.x;
  r0.z = cb0[68].x + 128.5;
  r0.z = 0.00390625 * r0.z;
  r1.x = cmp(0.0500000007 >= r0.x);
  r5.w = r1.x ? r0.z : -1;
  r0.z = -v5.z * cb0[12].x + 1;
  r1.x = cmp(0.000000 != cb0[14].x);
  if (r1.x != 0) {
    r1.xy = ddx_coarse(v3.xy);
    r1.x = dot(r1.xy, r1.xy);
    r1.yw = ddy_coarse(v3.xy);
    r1.y = dot(r1.yw, r1.yw);
    r1.xy = sqrt(r1.xy);
    r1.x = max(r1.x, r1.y);
    r1.x = 1 / r1.x;
    r1.x = log2(r1.x);
    r1.y = floor(r1.x);
    r1.y = exp2(r1.y);
    r1.w = ceil(r1.x);
    r1.w = exp2(r1.w);
    r2.xy = v3.xy * r1.yy;
    r2.xy = floor(r2.xy);
    r1.y = dot(r2.xy, float2(17,0.100000001));
    r1.y = sin(r1.y);
    r1.y = 10000 * r1.y;
    r2.x = r2.y * 13 + r2.x;
    r2.x = sin(r2.x);
    r2.x = 0.100000001 + abs(r2.x);
    r1.y = r2.x * r1.y;
    r2.xy = v3.xy * r1.ww;
    r2.xy = floor(r2.xy);
    r1.w = dot(r2.xy, float2(17,0.100000001));
    r1.w = sin(r1.w);
    r1.w = 10000 * r1.w;
    r2.x = r2.y * 13 + r2.x;
    r2.x = sin(r2.x);
    r2.x = 0.100000001 + abs(r2.x);
    r1.w = r2.x * r1.w;
    r1.xyw = frac(r1.xyw);
    r1.w = r1.w + -r1.y;
    r1.y = r1.x * r1.w + r1.y;
    r1.w = 1 + -r1.x;
    r1.x = min(r1.x, r1.w);
    r1.w = r1.y * r1.y;
    r2.x = r1.x + r1.x;
    r2.yw = float2(1,1) + -r1.xy;
    r2.xw = r2.xw * r2.yw;
    r1.w = r1.w / r2.x;
    r2.z = -r1.x * 0.5 + r1.y;
    r2.xz = r2.wz / r2.xy;
    r2.x = 1 + -r2.x;
    r2.y = cmp(r1.y < r2.y);
    r1.x = cmp(r1.y < r1.x);
    r1.x = r1.x ? r1.w : r2.z;
    r1.x = r2.y ? r1.x : r2.x;
    r1.y = cmp(0.5 >= cb0[13].x);
    r1.w = cb0[13].x + cb0[13].x;
    r1.w = r1.x * -r1.w + r1.w;
    r2.x = cb0[13].x * 2 + -2;
    r1.x = r1.x * r2.x + 1;
    r1.x = r1.y ? r1.w : r1.x;
  } else {
    r1.x = cb0[13].x;
  }
  r0.z = -r1.x + r0.z;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.z = saturate(r0.w * cb0[59].x + cb0[59].y);
  r0.w = dot(v0.xyz, v0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyw = v0.xyz * r0.www;
  r0.w = dot(cb0[61].xyz, r1.xyw);
  r1.x = -cb0[60].x + cb0[26].x;
  r0.w = saturate(r0.w * r1.x + cb0[60].x);
  r1.x = v1.w * 0.5 + 0.5;
  r1.x = saturate(cb0[62].y * r1.x + cb0[62].x);
  r1.x = log2(r1.x);
  r1.x = cb0[63].x * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r1.x * r0.w;
  r0.z = r0.z * r0.w;
  r0.z = saturate(cb0[64].x * r0.z);
  r0.w = dot(r5.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = max(9.99999975e-005, r0.w);
  r0.w = log2(r0.w);
  r0.w = -cb0[65].x * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.w * r0.z;
  r0.w = saturate(cb0[66].x);
  o2.w = v0.w + r0.w;
  r0.y = min(r0.y, r1.z);
  r0.y = r0.y * 0.125 + 0.375;
  o1.xyz = saturate(r4.yzw * r0.yyy + float3(0.5,0.5,0.5));
  r0.y = cmp(0.5 < r5.w);
  o1.w = r0.y ? 0.330000 : 0;
  r0.y = r0.z * cb0[67].x + 0.0078125;
  r0.y = log2(r0.y);
  r0.y = saturate(r0.y * 0.0769230798 + 0.538461566);
  r3.x = saturate(r3.x);
  r0.y = r3.x + r0.y;
  o2.y = 0.5 * r0.y;
  o0.xyzw = r5.xyzw;
  o2.z = 0;
  o2.x = r0.x;
  return;
}