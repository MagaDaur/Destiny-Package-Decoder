// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:46 2023
Texture2D<float4> t27 : register(t27);

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
  float4 cb0[19];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v6.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.x = dot(r2.xyz, v1.xyz);
  r3.y = dot(r2.xyz, v2.xyz);
  r0.w = dot(r2.xyz, v0.xyz);
  r2.xy = v3.xy * cb0[3].xy + cb0[3].zw;
  r4.xyz = t3.Sample(s5_s, r2.xy).xyz;
  r1.w = r4.y + -r4.z;
  r1.w = cmp(r1.w < 0.00470588217);
  r1.w = r1.w ? r4.y : r4.z;
  r5.xy = ddx_coarse(r4.xy);
  r5.z = ddx_coarse(r1.w);
  r6.xy = ddy_coarse(r4.xy);
  r6.z = ddy_coarse(r1.w);
  r2.zw = r5.xx * r5.yz;
  r3.zw = r6.xx * r6.yz;
  r4.zw = cmp(abs(r3.zw) < abs(r2.zw));
  r2.zw = r4.zw ? r2.zw : r3.zw;
  r3.z = -0.5 + r4.x;
  r3.w = r4.x + r4.y;
  r3.w = -1 + r3.w;
  r3.zw = cmp(abs(r3.zw) < float2(0.00470588217,0.00588235306));
  r2.zw = cmp(r2.zw < float2(0,0));
  r2.z = r2.z ? r3.w : 0;
  r3.w = 1 + -r4.y;
  r2.z = r2.z ? r3.w : r4.x;
  r3.w = r2.z + r1.w;
  r3.w = -1 + r3.w;
  r3.w = cmp(abs(r3.w) < 0.00588235306);
  r2.w = r2.w ? r3.w : 0;
  r3.w = 1 + -r1.w;
  r2.z = r2.w ? r3.w : r2.z;
  r2.z = r3.z ? r2.z : r4.x;
  r1.w = cmp(r1.w >= 0.5);
  if (r1.w != 0) {
    r3.zw = v3.zw * cb7[6].xy + cb7[6].zw;
    r4.xzw = t8.Sample(s1_s, r3.zw).xyz;
    r1.w = 4;
  } else {
    r2.w = cmp(r4.y >= 0.5);
    if (r2.w != 0) {
      r3.zw = v3.zw * cb7[3].xy + cb7[3].zw;
      r4.xzw = t6.Sample(s1_s, r3.zw).xyz;
      r1.w = 2;
    } else {
      r3.zw = v3.zw * cb7[0].xy + cb7[0].zw;
      r4.xzw = t4.Sample(s1_s, r3.zw).xyz;
      r1.w = 0;
    }
  }
  r2.z = cmp(r2.z >= 0.5);
  r2.w = (int)r1.w + 1;
  r1.w = r2.z ? r2.w : r1.w;
  r1.w = (int)r1.w * 9;
  r2.z = saturate(cb7[r1.w+11].x);
  r2.w = saturate(cb7[r1.w+17].x);
  r5.xyz = t0.Sample(s3_s, r2.xy).xyz;
  r3.z = t2.Sample(s4_s, r2.xy).w;
  r3.w = cmp(r3.z >= 0.156862751);
  r3.w = r3.w ? 1.000000 : 0;
  r3.z = -0.188235298 + r3.z;
  r3.z = saturate(1.231884 * r3.z);
  r3.z = saturate(cb7[r1.w+15].y * r3.z + cb7[r1.w+15].x);
  r3.z = saturate(cb7[r1.w+15].w * r3.z + cb7[r1.w+15].z);
  r6.xyz = saturate(float3(4,4,4) * r4.xzw);
  r4.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xzw);
  r7.xyz = saturate(cb7[r1.w+9].xyz * r6.xyz + r4.xyz);
  r7.xyz = -cb7[r1.w+9].xyz + r7.xyz;
  r7.xyz = r2.zzz * r7.xyz + cb7[r1.w+9].xyz;
  r8.xyz = saturate(float3(4,4,4) * r5.xyz);
  r9.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r7.xyz = saturate(r7.xyz * r8.xyz + r9.xyz);
  r4.xyz = saturate(cb7[r1.w+14].xyz * r6.xyz + r4.xyz);
  r4.xyz = -cb7[r1.w+14].xyz + r4.xyz;
  r4.xyz = r2.www * r4.xyz + cb7[r1.w+14].xyz;
  r4.xyz = saturate(r4.xyz * r8.xyz + r9.xyz);
  r6.xyz = r7.xyz + -r4.xyz;
  r4.xyz = r3.zzz * r6.xyz + r4.xyz;
  r4.xyz = r4.xyz + -r5.xyz;
  r4.xyz = r3.www * r4.xyz + r5.xyz;
  r2.z = v5.x * cb0[5].x + cb0[5].y;
  r2.w = cb0[6].x * r2.z;
  r5.xy = r2.xy * cb0[7].xy + cb0[7].zw;
  r2.xy = r2.xy * cb0[8].xy + cb0[8].zw;
  r2.xy = t26.Sample(s2_s, r2.xy).xy;
  r2.xy = -cb0[10].xy + r2.xy;
  r2.xy = r2.xy * cb0[9].xx + r5.xy;
  r3.xy = cb0[11].xx * r3.xy;
  r3.xy = r3.xy / r0.ww;
  r2.xy = -r3.xy + r2.xy;
  r0.w = t27.Sample(s2_s, r2.xy).x;
  r0.w = saturate(r0.w * cb0[12].x + cb0[12].y);
  r0.w = cb0[13].x * r0.w;
  r0.w = r2.z * r0.w + -r2.w;
  r0.w = cb0[14].x * r0.w + r2.w;
  r0.w = cb0[15].x * r0.w;
  r0.w = saturate(r0.w * cb0[16].x + cb0[16].y);
  r2.xyz = cb0[18].xyz * r0.www + cb0[17].xyz;
  r3.xyz = r4.xyz + r2.xyz;
  r0.w = max(r3.x, r3.y);
  r0.w = max(r0.w, r3.z);
  r0.w = saturate(-1 + r0.w);
  r0.w = 1 + -r0.w;
  r3.xyz = r4.xyz * r0.www + r2.xyz;
  r0.w = max(r3.x, r3.y);
  r0.w = max(r0.w, r3.z);
  r0.w = max(1, r0.w);
  r3.xyz = r3.xyz / r0.www;
  r4.xyz = saturate(float3(4,4,4) * r3.xyz);
  r3.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r3.xyz = cb7[r1.w+9].xyz * r4.xyz + r3.xyz;
  r3.xyz = r3.xyz + -r2.xyz;
  r2.xyz = r3.www * r3.xyz + r2.xyz;
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
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}