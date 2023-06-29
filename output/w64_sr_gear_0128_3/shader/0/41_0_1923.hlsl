// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
Texture2D<float4> t28 : register(t28);

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
  float4 cb0[23];
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v5.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r2.xyz = t3.Sample(s4_s, v3.xy).xyz;
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
    r0.w = 4;
  } else {
    r2.x = cmp(r2.y >= 0.5);
    if (r2.x != 0) {
      r0.w = 2;
    } else {
      r0.w = 0;
    }
  }
  r1.w = cmp(r1.w >= 0.5);
  r2.x = (int)r0.w + 1;
  r0.w = r1.w ? r2.x : r0.w;
  r0.w = (int)r0.w * 9;
  r2.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r1.w = t2.Sample(s3_s, v3.xy).w;
  r2.w = cmp(r1.w >= 0.156862751);
  r2.w = r2.w ? 1.000000 : 0;
  r1.w = -0.188235298 + r1.w;
  r1.w = saturate(1.231884 * r1.w);
  r1.w = saturate(cb7[r0.w+15].y * r1.w + cb7[r0.w+15].x);
  r1.w = saturate(cb7[r0.w+15].w * r1.w + cb7[r0.w+15].z);
  r3.xyz = saturate(float3(4,4,4) * r2.xyz);
  r4.xyz = saturate(float3(-0.25,-0.25,-0.25) + r2.xyz);
  r5.xyz = saturate(cb7[r0.w+9].xyz * r3.xyz + r4.xyz);
  r3.xyz = saturate(cb7[r0.w+14].xyz * r3.xyz + r4.xyz);
  r4.xyz = r5.xyz + -r3.xyz;
  r3.xyz = r1.www * r4.xyz + r3.xyz;
  r3.xyz = r3.xyz * cb0[5].xyz + -r2.xyz;
  r2.xyz = r2.www * r3.xyz + r2.xyz;
  r3.x = cmp(0 != cb7[r0.w+10].w);
  r3.xyz = r3.xxx ? cb7[r0.w+10].xyz : 0;
  r3.xyz = cb0[4].xxx * r3.xyz;
  r3.xyz = r3.xyz * r2.www;
  r4.xyz = r3.xyz * r1.www;
  r3.xyz = r3.xyz * r1.www + r2.xyz;
  r1.w = max(r3.x, r3.y);
  r1.w = max(r1.w, r3.z);
  r1.w = saturate(-1 + r1.w);
  r1.w = 1 + -r1.w;
  r2.xyz = r2.xyz * r1.www + r4.xyz;
  r1.w = max(r2.x, r2.y);
  r1.w = max(r1.w, r2.z);
  r1.w = max(1, r1.w);
  r2.xyz = r2.xyz / r1.www;
  r3.xyz = saturate(float3(4,4,4) * r2.xyz);
  r2.xyz = saturate(float3(-0.25,-0.25,-0.25) + r2.xyz);
  r2.xyz = cb7[r0.w+9].xyz * r3.xyz + r2.xyz;
  r2.xyz = -cb0[8].xyz + r2.xyz;
  r2.xyz = r2.www * r2.xyz + cb0[8].xyz;
  r0.w = dot(cb0[9].xy, v3.xy);
  r3.x = cb0[9].z + r0.w;
  r0.w = dot(cb0[10].xy, v3.xy);
  r3.y = cb0[10].z + r0.w;
  r3.xy = r3.xy * cb0[11].xy + cb0[11].zw;
  r0.w = t26.Sample(s1_s, r3.xy).y;
  r0.w = saturate(r0.w * cb0[12].x + cb0[12].y);
  r3.xy = v3.xy * cb0[13].xy + cb0[13].zw;
  r3.xy = t27.Sample(s1_s, r3.xy).xy;
  r3.xy = -cb0[15].xy + r3.xy;
  r3.xy = r3.xy * cb0[14].xx + v3.xy;
  r3.xy = r3.xy * cb0[16].xy + cb0[16].zw;
  r3.xy = r3.xy * cb0[19].xy + cb0[19].zw;
  r1.w = t28.Sample(s1_s, r3.xy).y;
  r0.w = r1.w * r0.w;
  r0.w = saturate(r0.w * cb0[20].x + cb0[20].y);
  r0.w = cb0[22].x * r0.w + cb0[21].x;
  r0.w = r0.w * cb0[4].x + -cb0[8].w;
  r0.w = r2.w * r0.w + cb0[8].w;
  r2.xyz = cb13[1].www * r2.xyz;
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