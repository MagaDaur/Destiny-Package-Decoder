// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:44 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[109];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD3,
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.x = min(1, abs(r0.x));
  r0.x = 1 + -r0.x;
  r0.x = -r0.x * r0.x + 1;
  r0.x = r0.x * -1.89268506 + 1.89268506;
  r0.x = min(1, r0.x);
  r0.xyzw = r0.xxxx * float4(0,0,0,1) + cb0[108].xyzw;
  r1.xy = v0.xy * cb0[9].xy + cb0[9].zw;
  r1.xy = t2.Sample(s2_s, r1.xy).xy;
  r1.xy = r1.xy * float2(0.150000006,0.150000006) + v0.xy;
  r1.xy = float2(-0.075000003,-0.075000003) + r1.xy;
  r1.xy = r1.xy * cb0[8].xy + cb0[8].zw;
  r1.zw = t0.Sample(s2_s, r1.xy).xw;
  r1.w = saturate(w1.x * r1.w);
  r2.w = saturate(v0.z * r1.w);
  r3.zw = float2(0,0);
  r4.xy = cb12[12].zw * v3.xy;
  r5.xy = cb12[12].xy * r4.xy;
  r3.xy = (int2)r5.xy;
  r1.w = t10.Load(r3.xyz).x;
  r1.w = r1.w * cb2[0].y + cb2[0].x;
  r1.w = 1 / r1.w;
  r1.w = -v0.w + r1.w;
  r1.w = saturate(1.#INF * r1.w);
  r1.xy = float2(1,1.07799995) + -r1.ww;
  r1.yzw = t1.Sample(s3_s, r1.zy).xyz;
  r1.x = 1 + -r1.x;
  r1.yzw = float3(-0.133208513,-0.133208513,-0.133208513) + r1.yzw;
  r1.yzw = float3(1.15367997,1.15367997,1.15367997) * r1.yzw;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r2.xyz = cb0[15].yyy * r1.yzw;
  r0.xyzw = r2.xyzw * r0.xyzw;
  r1.y = dot(-v2.xyz, -v2.xyz);
  r1.y = sqrt(r1.y);
  r1.y = 0.015625 * r1.y;
  r1.y = min(1, r1.y);
  r4.z = sqrt(r1.y);
  r1.y = t21.SampleLevel(s1_s, r4.xyz, 0).x;
  r1.z = t20.SampleLevel(s1_s, r4.xy, 0).w;
  r1.z = -1 + r1.z;
  r1.y = r1.y * r1.z + 1;
  r0.w = r1.y * r0.w;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = r0.w * r1.x;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}