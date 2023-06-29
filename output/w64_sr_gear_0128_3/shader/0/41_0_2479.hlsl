// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:50 2023
Texture2D<float4> t26 : register(t26);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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
  float4 cb0[13];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v5.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r2.xyz = t3.Sample(s5_s, v3.xy).xyz;
  r0.w = r2.y + -r2.z;
  r0.w = cmp(r0.w < 0.00470588217);
  r0.w = r0.w ? r2.y : r2.z;
  r3.xy = ddx_coarse(r2.xy);
  r3.z = ddx_coarse(r0.w);
  r4.xy = ddy_coarse(r2.xy);
  r4.z = ddy_coarse(r0.w);
  r2.zw = r3.xx * r3.yz;
  r3.xy = r4.xx * r4.yz;
  r3.zw = cmp(abs(r3.xy) < abs(r2.zw));
  r2.zw = r3.zw ? r2.zw : r3.xy;
  r1.w = -0.5 + r2.x;
  r1.w = cmp(abs(r1.w) < 0.00470588217);
  r3.x = r2.x + r2.y;
  r3.x = -1 + r3.x;
  r3.x = cmp(abs(r3.x) < 0.00588235306);
  r2.zw = cmp(r2.zw < float2(0,0));
  r2.z = r2.z ? r3.x : 0;
  r3.x = 1 + -r2.y;
  r2.z = r2.z ? r3.x : r2.x;
  r3.x = r2.z + r0.w;
  r3.x = -1 + r3.x;
  r3.x = cmp(abs(r3.x) < 0.00588235306);
  r2.w = r2.w ? r3.x : 0;
  r3.x = 1 + -r0.w;
  r2.z = r2.w ? r3.x : r2.z;
  r1.w = r1.w ? r2.z : r2.x;
  r0.w = cmp(r0.w >= 0.5);
  if (r0.w != 0) {
    r2.xz = v3.zw * cb7[6].xy + cb7[6].zw;
    r2.xzw = t8.Sample(s1_s, r2.xz).xyz;
    r0.w = 4;
  } else {
    r2.y = cmp(r2.y >= 0.5);
    if (r2.y != 0) {
      r3.xy = v3.zw * cb7[3].xy + cb7[3].zw;
      r2.xzw = t6.Sample(s1_s, r3.xy).xyz;
      r0.w = 2;
    } else {
      r3.xy = v3.zw * cb7[0].xy + cb7[0].zw;
      r2.xzw = t4.Sample(s1_s, r3.xy).xyz;
      r0.w = 0;
    }
  }
  r1.w = cmp(r1.w >= 0.5);
  r2.y = (int)r0.w + 1;
  r0.w = r1.w ? r2.y : r0.w;
  r0.w = (int)r0.w * 9;
  r1.w = saturate(cb7[r0.w+11].x);
  r2.y = saturate(cb7[r0.w+17].x);
  r3.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r4.xy = t2.Sample(s4_s, v3.xy).zw;
  r3.w = cmp(r4.y >= 0.156862751);
  r3.w = r3.w ? 1.000000 : 0;
  r4.xy = float2(-0.188235298,-0.156862751) + r4.yx;
  r4.xy = saturate(float2(1.231884,1.18604648) * r4.xy);
  r4.x = saturate(cb7[r0.w+15].y * r4.x + cb7[r0.w+15].x);
  r4.x = saturate(cb7[r0.w+15].w * r4.x + cb7[r0.w+15].z);
  r5.xyz = saturate(float3(4,4,4) * r2.xzw);
  r2.xzw = saturate(float3(-0.25,-0.25,-0.25) + r2.xzw);
  r6.xyz = saturate(cb7[r0.w+9].xyz * r5.xyz + r2.xzw);
  r6.xyz = -cb7[r0.w+9].xyz + r6.xyz;
  r6.xyz = r1.www * r6.xyz + cb7[r0.w+9].xyz;
  r7.xyz = saturate(float3(4,4,4) * r3.xyz);
  r8.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r6.xyz = saturate(r6.xyz * r7.xyz + r8.xyz);
  r2.xzw = saturate(cb7[r0.w+14].xyz * r5.xyz + r2.xzw);
  r2.xzw = -cb7[r0.w+14].xyz + r2.xzw;
  r2.xyz = r2.yyy * r2.xzw + cb7[r0.w+14].xyz;
  r2.xyz = saturate(r2.xyz * r7.xyz + r8.xyz);
  r5.xyz = r6.xyz + -r2.xyz;
  r2.xyz = r4.xxx * r5.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r3.xyz;
  r2.xyz = r3.www * r2.xyz + r3.xyz;
  r1.w = cmp(0 != cb7[r0.w+10].w);
  r3.xyz = r1.www ? cb7[r0.w+10].xyz : 0;
  r1.w = cb0[4].x * r4.y;
  r3.xyz = r1.www * r3.xyz;
  r3.xyz = r3.xyz * r3.www;
  r5.xyz = r3.xyz * r4.xxx;
  r3.xyz = r3.xyz * r4.xxx + r2.xyz;
  r1.w = max(r3.x, r3.y);
  r1.w = max(r1.w, r3.z);
  r1.w = saturate(-1 + r1.w);
  r1.w = 1 + -r1.w;
  r2.xyz = r2.xyz * r1.www + r5.xyz;
  r1.w = max(r2.x, r2.y);
  r1.w = max(r1.w, r2.z);
  r1.w = max(1, r1.w);
  r2.xyz = r2.xyz / r1.www;
  r3.xyz = saturate(float3(4,4,4) * r2.xyz);
  r2.xyz = saturate(float3(-0.25,-0.25,-0.25) + r2.xyz);
  r2.xyz = cb7[r0.w+9].xyz * r3.xyz + r2.xyz;
  r2.xyz = -cb0[7].xyz + r2.xyz;
  r2.xyz = r3.www * r2.xyz + cb0[7].xyz;
  r0.w = dot(cb0[8].xy, v3.xy);
  r3.x = cb0[8].z + r0.w;
  r0.w = dot(cb0[9].xy, v3.xy);
  r3.y = cb0[9].z + r0.w;
  r3.xy = r3.xy * cb0[10].xy + cb0[10].zw;
  r0.w = t26.Sample(s2_s, r3.xy).x;
  r0.w = r0.w * cb0[11].x + cb0[11].y;
  r1.w = cb0[12].x * cb0[12].x;
  r0.w = r1.w * r0.w;
  r0.w = r0.w * r4.y + -cb0[7].w;
  r0.w = r3.w * r0.w + cb0[7].w;
  r2.xyz = cb13[1].www * r2.xyz;
  r2.xyz = cb13[1].xxx * r2.xyz;
  r1.x = dot(-r1.xyz, -r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r0.z = sqrt(r1.x);
  r0.z = t21.SampleLevel(s6_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s6_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r1.xyz = cb8[7].xyz * r2.xyz;
  r0.x = r0.w * r0.x;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}