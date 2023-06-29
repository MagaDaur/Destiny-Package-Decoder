// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
Texture2D<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[61];
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
  float4 cb0[30];
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
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v6.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xyz = t3.Sample(s4_s, v3.xy).xyz;
  r0.w = r3.y + -r3.z;
  r0.w = cmp(r0.w < 0.00470588217);
  r0.w = r0.w ? r3.y : r3.z;
  r4.xy = ddx_coarse(r3.xy);
  r4.z = ddx_coarse(r0.w);
  r5.xy = ddy_coarse(r3.xy);
  r5.z = ddy_coarse(r0.w);
  r3.zw = r4.xx * r4.yz;
  r4.xy = r5.xx * r5.yz;
  r4.zw = cmp(abs(r4.xy) < abs(r3.zw));
  r3.zw = r4.zw ? r3.zw : r4.xy;
  r1.w = -0.5 + r3.x;
  r1.w = cmp(abs(r1.w) < 0.00470588217);
  r2.w = r3.x + r3.y;
  r2.w = -1 + r2.w;
  r2.w = cmp(abs(r2.w) < 0.00588235306);
  r3.zw = cmp(r3.zw < float2(0,0));
  r2.w = r2.w ? r3.z : 0;
  r3.z = 1 + -r3.y;
  r2.w = r2.w ? r3.z : r3.x;
  r3.z = r2.w + r0.w;
  r3.z = -1 + r3.z;
  r3.z = cmp(abs(r3.z) < 0.00588235306);
  r3.z = r3.w ? r3.z : 0;
  r3.w = 1 + -r0.w;
  r2.w = r3.z ? r3.w : r2.w;
  r1.w = r1.w ? r2.w : r3.x;
  r0.w = cmp(r0.w >= 0.5);
  if (r0.w != 0) {
    r0.w = 4;
  } else {
    r2.w = cmp(r3.y >= 0.5);
    if (r2.w != 0) {
      r0.w = 2;
    } else {
      r0.w = 0;
    }
  }
  r1.w = cmp(r1.w >= 0.5);
  r2.w = (int)r0.w + 1;
  r0.w = r1.w ? r2.w : r0.w;
  r0.w = (int)r0.w * 9;
  r3.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r4.xy = t2.Sample(s3_s, v3.xy).zw;
  r1.w = cmp(r4.y >= 0.156862751);
  r1.w = r1.w ? 1.000000 : 0;
  r4.xy = float2(-0.188235298,-0.156862751) + r4.yx;
  r4.xy = saturate(float2(1.231884,1.18604648) * r4.xy);
  r2.w = saturate(cb7[r0.w+15].y * r4.x + cb7[r0.w+15].x);
  r2.w = saturate(cb7[r0.w+15].w * r2.w + cb7[r0.w+15].z);
  r4.xzw = saturate(float3(4,4,4) * r3.xyz);
  r5.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r6.xyz = saturate(cb7[r0.w+9].xyz * r4.xzw + r5.xyz);
  r4.xzw = saturate(cb7[r0.w+14].xyz * r4.xzw + r5.xyz);
  r5.xyz = r6.xyz + -r4.xzw;
  r4.xzw = r2.www * r5.xyz + r4.xzw;
  r4.xzw = r4.xzw * cb0[7].xyz + -r3.xyz;
  r3.xyz = r1.www * r4.xzw + r3.xyz;
  r3.w = cmp(0 != cb7[r0.w+10].w);
  r4.xzw = r3.www ? cb7[r0.w+10].xyz : 0;
  r3.w = saturate(cb0[4].x + v5.z);
  r3.w = cb0[5].x * r3.w;
  r5.x = cb0[6].x * r4.y;
  r3.w = r5.x * r3.w;
  r4.xzw = r3.www * r4.xzw;
  r4.xzw = r4.xzw * r1.www;
  r5.xyz = r4.xzw * r2.www;
  r4.xzw = r4.xzw * r2.www + r3.xyz;
  r2.w = max(r4.x, r4.z);
  r2.w = max(r2.w, r4.w);
  r2.w = saturate(-1 + r2.w);
  r2.w = 1 + -r2.w;
  r3.xyz = r3.xyz * r2.www + r5.xyz;
  r2.w = max(r3.x, r3.y);
  r2.w = max(r2.w, r3.z);
  r2.w = max(1, r2.w);
  r3.xyz = r3.xyz / r2.www;
  r2.x = dot(r2.xyz, v0.xyz);
  r2.yzw = saturate(float3(4,4,4) * r3.xyz);
  r3.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r2.yzw = cb7[r0.w+9].xyz * r2.yzw + r3.xyz;
  r2.yzw = -cb0[10].xyz + r2.yzw;
  r2.yzw = r1.www * r2.yzw + cb0[10].xyz;
  r0.w = r2.x * r2.x;
  r0.w = saturate(r0.w * cb0[11].x + cb0[11].y);
  r0.w = cb0[12].y * r0.w + cb0[12].x;
  r0.w = r0.w * r4.y;
  r2.x = dot(cb0[13].xy, v3.xy);
  r3.x = cb0[13].z + r2.x;
  r2.x = dot(cb0[14].xy, v3.xy);
  r3.y = cb0[14].z + r2.x;
  r3.xy = r3.xy * cb0[15].xy + cb0[15].zw;
  r2.x = t26.Sample(s1_s, r3.xy).x;
  r2.x = saturate(r2.x * cb0[16].x + cb0[16].y);
  r3.xy = v3.xy * cb0[17].xy + cb0[17].zw;
  r3.x = t27.Sample(s1_s, r3.xy).x;
  r2.x = r3.x + r2.x;
  r0.w = r2.x * r0.w;
  r0.w = cb0[18].x * r0.w;
  r0.w = cb0[19].x * r0.w;
  r2.x = cb0[20].x + v5.y;
  r2.x = cb0[21].w * r2.x + cb0[21].z;
  r2.x = 0.25 + r2.x;
  r3.x = round(r2.x);
  r2.x = -r3.x + r2.x;
  r3.x = abs(r2.x) * -16 + 8;
  r2.x = r3.x * r2.x;
  r3.x = abs(r2.x) * 0.224999994 + 0.774999976;
  r2.x = r3.x * r2.x;
  r2.x = cb0[21].x * r2.x + cb0[21].y;
  r2.x = -cb0[22].x + r2.x;
  r3.xy = cb0[23].zw * r2.xx + cb0[23].xy;
  r2.x = saturate(min(r3.x, r3.y));
  r3.x = saturate(cb0[24].x + v5.x);
  r3.x = log2(r3.x);
  r3.x = cb0[25].x * r3.x;
  r3.x = exp2(r3.x);
  r3.y = max(0, v5.y);
  r3.y = log2(r3.y);
  r3.y = cb0[26].x * r3.y;
  r3.y = exp2(r3.y);
  r3.x = r3.x * r3.y;
  r2.x = r3.x * r2.x;
  r2.x = cb0[27].x * r2.x;
  r0.w = r2.x * r0.w;
  r0.w = max(cb0[28].x, r0.w);
  r0.w = min(cb0[29].x, r0.w);
  r0.w = -cb0[10].w + r0.w;
  r0.w = r1.w * r0.w + cb0[10].w;
  r2.xyz = cb13[1].www * r2.yzw;
  r2.xyz = cb13[1].xxx * r2.xyz;
  r1.x = dot(-r1.xyz, -r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r0.z = sqrt(r1.x);
  r0.z = t21.SampleLevel(s5_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s5_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r1.xyz = cb8[7].xyz * r2.xyz;
  r0.x = r0.w * r0.x;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}