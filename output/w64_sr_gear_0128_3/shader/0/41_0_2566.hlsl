// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:50 2023
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[63];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[24];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float3 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r0.w);
  r0.xyz = r1.xxx * r0.xyz;
  r0.w = sqrt(r0.w);
  r1.x = dot(r0.xyz, v1.xyz);
  r1.y = dot(r0.xyz, v2.xyz);
  r0.x = dot(r0.xyz, v0.xyz);
  r2.xyz = t3.Sample(s6_s, v3.xy).xyz;
  r0.y = r2.y + -r2.z;
  r0.y = cmp(r0.y < 0.00470588217);
  r0.y = r0.y ? r2.y : r2.z;
  r3.xy = ddx_coarse(r2.xy);
  r3.z = ddx_coarse(r0.y);
  r4.xy = ddy_coarse(r2.xy);
  r4.z = ddy_coarse(r0.y);
  r1.zw = r3.xx * r3.yz;
  r2.zw = r4.xx * r4.yz;
  r3.xy = cmp(abs(r2.zw) < abs(r1.zw));
  r1.zw = r3.xy ? r1.zw : r2.zw;
  r0.z = -0.5 + r2.x;
  r0.z = cmp(abs(r0.z) < 0.00470588217);
  r2.z = r2.x + r2.y;
  r2.z = -1 + r2.z;
  r2.z = cmp(abs(r2.z) < 0.00588235306);
  r1.zw = cmp(r1.zw < float2(0,0));
  r1.z = r1.z ? r2.z : 0;
  r2.z = 1 + -r2.y;
  r1.z = r1.z ? r2.z : r2.x;
  r2.z = r1.z + r0.y;
  r2.z = -1 + r2.z;
  r2.z = cmp(abs(r2.z) < 0.00588235306);
  r1.w = r1.w ? r2.z : 0;
  r2.z = 1 + -r0.y;
  r1.z = r1.w ? r2.z : r1.z;
  r0.z = r0.z ? r1.z : r2.x;
  r0.y = cmp(r0.y >= 0.5);
  if (r0.y != 0) {
    r1.zw = v3.zw * cb7[7].xy + cb7[7].zw;
    r0.y = t9.Sample(s1_s, r1.zw).z;
    r0.y = saturate(cb7[8].z + r0.y);
    r1.z = 4;
  } else {
    r1.w = cmp(r2.y >= 0.5);
    if (r1.w != 0) {
      r2.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r1.w = t7.Sample(s1_s, r2.xy).z;
      r0.y = saturate(cb7[5].z + r1.w);
      r1.z = 2;
    } else {
      r2.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r1.w = t5.Sample(s1_s, r2.xy).z;
      r0.y = saturate(cb7[2].z + r1.w);
      r1.z = 0;
    }
  }
  r0.z = cmp(r0.z >= 0.5);
  r1.w = (int)r1.z + 1;
  r0.z = r0.z ? r1.w : r1.z;
  r0.z = (int)r0.z * 9;
  r1.zw = saturate(cb7[r0.z+11].yw);
  r2.xy = saturate(cb7[r0.z+12].yz);
  r2.z = saturate(cb7[r0.z+17].w);
  r3.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r4.xy = t1.Sample(s4_s, v3.xy).xy;
  r4.xy = r4.xy * cb0[23].xx + cb0[23].yy;
  r5.xyzw = t2.Sample(s5_s, v3.xy).xyzw;
  r2.w = cmp(r5.w >= 0.156862751);
  r3.w = r2.w ? 1.000000 : 0;
  r4.zw = float2(-0.188235298,-0.156862751) + r5.wz;
  r4.zw = saturate(float2(1.231884,1.18604648) * r4.zw);
  r4.z = saturate(cb7[r0.z+15].y * r4.z + cb7[r0.z+15].x);
  r4.z = saturate(cb7[r0.z+15].w * r4.z + cb7[r0.z+15].z);
  r6.y = saturate(7.96875 * r5.w);
  r5.z = cb0[2].x + 128.5;
  r5.z = 0.00390625 * r5.z;
  r5.w = cmp(0.0500000007 >= r6.y);
  r5.z = r5.w ? r5.z : -1;
  r5.w = saturate(cb7[r0.z+13].y * r5.y + cb7[r0.z+13].x);
  r5.w = saturate(cb7[r0.z+13].w * r5.w + cb7[r0.z+13].z);
  r7.xyz = saturate(float3(4,4,4) * r3.xyz);
  r8.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r9.xyz = saturate(cb7[r0.z+9].xyz * r7.xyz + r8.xyz);
  r0.y = -1 + r0.y;
  r0.y = r1.z * r0.y;
  r7.xyz = saturate(cb7[r0.z+14].xyz * r7.xyz + r8.xyz);
  r8.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r4.zzz * r8.xyz + r7.xyz;
  r6.x = r5.y;
  r1.z = -r6.x + r5.w;
  r1.z = r4.z * r1.z + r5.y;
  r5.y = -r2.z + r1.w;
  r8.y = r4.z * r5.y + r2.z;
  r0.y = r4.z * r0.y + 1;
  r0.z = cb7[r0.z+12].x + 128.5;
  r0.z = 0.00390625 * r0.z;
  r1.w = cmp(0.0500000007 >= r1.w);
  r0.z = r1.w ? r0.z : -1;
  r0.y = min(r1.z, r0.y);
  r1.z = cmp(9.99999975e-005 < r2.x);
  r1.w = -2 * r2.x;
  r2.x = r2.x * -2 + -0.200000003;
  r2.x = r2.x * r0.y;
  r1.w = r2.x * -5.00250101 + r1.w;
  r1.w = min(r1.w, r0.y);
  r8.x = r1.z ? r1.w : r0.y;
  r7.xyz = r7.xyz + -r3.xyz;
  r3.xyz = r3.www * r7.xyz + r3.xyz;
  r1.zw = r4.zz * r4.xy + -r4.xy;
  r4.xy = r3.ww * r1.zw + r4.xy;
  r1.zw = r8.xy + -r6.xy;
  r1.zw = r3.ww * r1.zw + r6.xy;
  r0.y = r3.w * r2.y;
  o0.w = r2.w ? r0.z : r5.z;
  r0.z = v3.x + -v3.y;
  r0.z = cb0[19].z + r0.z;
  r0.z = saturate(cb0[19].y * abs(r0.z) + cb0[19].x);
  r2.x = dot(cb0[20].xy, v3.xy);
  r2.x = cb0[20].z + r2.x;
  r2.z = dot(cb0[21].xy, v3.xy);
  r2.y = cb0[21].z + r2.z;
  r2.x = t11.Sample(s2_s, r2.xy).x;
  r0.z = r2.x * r0.z;
  r0.z = r0.z * cb0[22].x + cb0[22].y;
  r2.xyz = cb0[15].xyz * r4.www;
  r2.xyz = cb0[14].xyz * r2.xyz;
  r1.xy = cb0[16].xx * r1.xy;
  r1.xy = r1.xy / r0.xx;
  r1.xy = v3.xy + -r1.xy;
  r0.x = dot(cb0[17].xy, r1.xy);
  r6.x = cb0[17].z + r0.x;
  r0.x = dot(cb0[18].xy, r1.xy);
  r6.y = cb0[18].z + r0.x;
  r5.yzw = t10.Sample(s2_s, r6.xy).xyz;
  r2.xyz = r5.yzw * r2.xyz;
  r0.x = 4.59478998 * r0.z;
  r5.yzw = r0.xxx * r2.xyz;
  r2.xyz = r0.xxx * r2.xyz + r3.xyz;
  r0.x = max(r2.x, r2.y);
  r0.x = max(r0.x, r2.z);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r2.xyz = r3.xyz * r0.xxx + r5.yzw;
  r0.x = max(r2.x, r2.y);
  r0.x = max(r0.x, r2.z);
  r0.x = max(1, r0.x);
  r2.xyz = r2.xyz / r0.xxx;
  r0.x = max(r5.y, r5.z);
  r0.x = max(r0.x, r5.w);
  r0.z = dot(r4.xy, r4.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r4.z = sqrt(r0.z);
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r4.xyz * r0.zzz;
  r4.xyz = v2.xyz * r3.yyy;
  r3.xyw = v1.xyz * r3.xxx + r4.xyz;
  r3.xyz = v0.xyz * r3.zzz + r3.xyw;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r3.xyz * r0.zzz;
  r0.z = saturate(cb0[12].x);
  r1.x = dot(v0.xyz, v0.xyz);
  r1.x = rsqrt(r1.x);
  r4.xyz = v0.xyz * r1.xxx;
  r1.x = dot(cb0[5].xyz, r4.xyz);
  r1.y = cb0[4].x + -cb0[3].x;
  r1.x = saturate(r1.x * r1.y + cb0[3].x);
  r1.y = -cb0[6].z + v4.z;
  r1.y = cb0[7].x * r1.y;
  r1.y = max(0, r1.y);
  r1.y = log2(r1.y);
  r1.y = cb0[8].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = saturate(cb0[9].x * r1.y);
  r1.x = r1.x * r1.y;
  r0.w = saturate(r0.w * cb0[10].x + cb0[10].y);
  r0.w = r1.x * r0.w;
  r1.x = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.x = max(9.99999975e-005, r1.x);
  r1.x = log2(r1.x);
  r1.x = -cb0[11].x * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r1.x * r0.w;
  o2.w = v0.w + r0.z;
  r0.x = r0.w * cb0[13].x + r0.x;
  r0.z = r1.z * 0.125 + 0.375;
  o1.xyz = saturate(r3.xyz * r0.zzz + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r5.x = saturate(r5.x);
  r0.x = r5.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xy;
  o0.xyz = r2.xyz;
  o1.w = 0;
  o2.x = r1.w;
  return;
}