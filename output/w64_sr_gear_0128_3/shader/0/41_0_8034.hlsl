// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:33 2023
Texture2D<float4> t28 : register(t28);

Texture2D<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

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

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[19];
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
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v5.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.x = dot(r2.xyz, v1.xyz);
  r3.y = dot(r2.xyz, v2.xyz);
  r4.xyz = t3.Sample(s5_s, v3.xy).xyz;
  r0.w = r4.y + -r4.z;
  r0.w = cmp(r0.w < 0.00470588217);
  r0.w = r0.w ? r4.y : r4.z;
  r5.xy = ddx_coarse(r4.xy);
  r5.z = ddx_coarse(r0.w);
  r6.xy = ddy_coarse(r4.xy);
  r6.z = ddy_coarse(r0.w);
  r3.zw = r5.xx * r5.yz;
  r4.zw = r6.xx * r6.yz;
  r5.xy = cmp(abs(r4.zw) < abs(r3.zw));
  r3.zw = r5.xy ? r3.zw : r4.zw;
  r1.w = -0.5 + r4.x;
  r1.w = cmp(abs(r1.w) < 0.00470588217);
  r2.w = r4.x + r4.y;
  r2.w = -1 + r2.w;
  r2.w = cmp(abs(r2.w) < 0.00588235306);
  r3.zw = cmp(r3.zw < float2(0,0));
  r2.w = r2.w ? r3.z : 0;
  r3.z = 1 + -r4.y;
  r2.w = r2.w ? r3.z : r4.x;
  r3.z = r2.w + r0.w;
  r3.z = -1 + r3.z;
  r3.z = cmp(abs(r3.z) < 0.00588235306);
  r3.z = r3.w ? r3.z : 0;
  r3.w = 1 + -r0.w;
  r2.w = r3.z ? r3.w : r2.w;
  r1.w = r1.w ? r2.w : r4.x;
  r0.w = cmp(r0.w >= 0.5);
  if (r0.w != 0) {
    r3.zw = v3.zw * cb7[7].xy + cb7[7].zw;
    r3.zw = t9.Sample(s1_s, r3.zw).xy;
    r3.zw = r3.zw * cb7[8].xx + cb7[8].yy;
    r0.w = 4;
  } else {
    r2.w = cmp(r4.y >= 0.5);
    if (r2.w != 0) {
      r4.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r4.xy = t7.Sample(s1_s, r4.xy).xy;
      r3.zw = r4.xy * cb7[5].xx + cb7[5].yy;
      r0.w = 2;
    } else {
      r4.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r4.xy = t5.Sample(s1_s, r4.xy).xy;
      r3.zw = r4.xy * cb7[2].xx + cb7[2].yy;
      r0.w = 0;
    }
  }
  r1.w = cmp(r1.w >= 0.5);
  r2.w = (int)r0.w + 1;
  r0.w = r1.w ? r2.w : r0.w;
  r0.w = (int)r0.w * 9;
  r1.w = saturate(cb7[r0.w+11].y);
  r2.w = saturate(cb7[r0.w+17].y);
  r4.xy = t1.Sample(s3_s, v3.xy).xy;
  r4.xy = r4.xy * cb0[4].xx + cb0[4].yy;
  r4.z = t2.Sample(s4_s, v3.xy).w;
  r4.w = cmp(r4.z >= 0.156862751);
  r4.w = r4.w ? 1.000000 : 0;
  r4.z = -0.188235298 + r4.z;
  r4.z = saturate(1.231884 * r4.z);
  r4.z = saturate(cb7[r0.w+15].y * r4.z + cb7[r0.w+15].x);
  r0.w = saturate(cb7[r0.w+15].w * r4.z + cb7[r0.w+15].z);
  r5.xy = r3.zw * r1.ww + r4.xy;
  r3.zw = r3.zw * r2.ww + r4.xy;
  r5.xy = r5.xy + -r3.zw;
  r3.zw = r0.ww * r5.xy + r3.zw;
  r3.zw = r3.zw + -r4.xy;
  r4.xy = r4.ww * r3.zw + r4.xy;
  r0.w = dot(r4.xy, r4.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r4.z = sqrt(r0.w);
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = v2.xyz * r4.yyy;
  r4.xyw = v1.xyz * r4.xxx + r5.xyz;
  r4.xyz = v0.xyz * r4.zzz + r4.xyw;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.w = dot(r2.xyz, r4.xyz);
  r1.w = dot(r2.xyz, v0.xyz);
  r2.xy = cb0[6].xx * r3.xy;
  r2.xy = r2.xy / r1.ww;
  r2.xy = v3.xy + -r2.xy;
  r0.w = r0.w * r0.w;
  r1.w = saturate(r0.w * cb0[7].x + cb0[7].y);
  r3.xyz = cb0[9].xyz * r1.www + cb0[8].xyz;
  r2.zw = r2.xy * cb0[10].xy + cb0[10].zw;
  r4.xy = r2.xy * cb0[11].xy + cb0[11].zw;
  r2.xy = r2.xy * cb0[12].xy + cb0[12].zw;
  r2.xy = t26.Sample(s2_s, r2.xy).xy;
  r2.xy = -cb0[14].xy + r2.xy;
  r2.xy = r2.xy * cb0[13].xx + r4.xy;
  r2.xy = t27.Sample(s2_s, r2.xy).xy;
  r2.xy = -cb0[16].xy + r2.xy;
  r2.xy = r2.xy * cb0[15].xx + r2.zw;
  r1.w = t28.Sample(s2_s, r2.xy).x;
  r2.xyz = r3.xyz * r1.www;
  r0.w = saturate(r0.w * cb0[17].x + cb0[17].y);
  r2.xyz = r2.xyz * r0.www;
  r2.w = 1;
  r2.xyzw = cb0[18].xxxx * r2.xyzw;
  r2.xyz = cb13[1].www * r2.xyz;
  r2.xyz = cb13[1].xxx * r2.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.015625 * r0.w;
  r0.w = min(1, r0.w);
  r0.z = sqrt(r0.w);
  r0.z = t21.SampleLevel(s6_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s6_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r0.yzw = cb8[7].xyz * r2.xyz;
  r0.x = r2.w * r0.x;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}