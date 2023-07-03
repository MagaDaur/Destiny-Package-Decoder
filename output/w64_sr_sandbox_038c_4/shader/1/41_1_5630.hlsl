// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:02 2023
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

SamplerState s1_s : register(s1);

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  uint v4 : SV_VERTEXID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  o0.xy = r0.xy;
  r0.xy = r0.xy * cb0[2].xy + cb0[2].zw;
  r0.x = t3.SampleLevel(s1_s, r0.xy, 0).x;
  r0.x = saturate(r0.x * cb0[3].x + cb0[3].y);
  r0.x = cb0[1].x * r0.x;
  r1.x = cb1[0].x;
  r1.y = cb1[1].x;
  r1.z = cb1[2].x;
  r2.xyw = cb1[3].xyz + -cb12[7].xyz;
  r1.w = r2.x;
  r3.xyz = v0.xyz * cb1[4].xyz + cb1[5].xyz;
  r3.w = 1;
  r1.x = dot(r1.xyzw, r3.xyzw);
  r4.w = r2.y;
  r4.x = cb1[0].y;
  r4.y = cb1[1].y;
  r4.z = cb1[2].y;
  r1.y = dot(r4.xyzw, r3.xyzw);
  r2.x = cb1[0].z;
  r2.y = cb1[1].z;
  r2.z = cb1[2].z;
  r1.z = dot(r2.xyzw, r3.xyzw);
  r0.yzw = cb0[0].xyz * r0.xxx + r1.xyz;
  r2.xyz = cb0[0].xyz * r0.xxx;
  r3.xyzw = cb12[1].xyzw * r1.yyyy;
  r3.xyzw = cb12[0].xyzw * r1.xxxx + r3.xyzw;
  r1.xyzw = cb12[2].xyzw * r1.zzzz + r3.xyzw;
  r1.xyzw = cb12[14].xyzw + r1.xyzw;
  o1.xyz = cb12[7].xyz + r0.yzw;
  r0.xyzw = cb12[1].xyzw * r2.yyyy;
  r0.xyzw = cb12[0].xyzw * r2.xxxx + r0.xyzw;
  r0.xyzw = cb12[2].xyzw * r2.zzzz + r0.xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r0.xy = r0.xy / r0.ww;
  r1.xyzw = t2.Load(float4(0,0,0,0)).xyzw;
  r1.xy = r1.xy * float2(2,2) + r1.zw;
  r0.x = r0.x * r1.z + r1.x;
  r1.x = -1 + r1.y;
  r1.y = r0.y * r1.w + -r1.x;
  r1.x = -1 + r0.x;
  o2.xy = r1.xy * r0.ww;
  o2.zw = r0.zw;
  return;
}