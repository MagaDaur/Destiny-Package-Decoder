// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:02 2023
Texture2D<float4> t2 : register(t2);

SamplerState s1_s : register(s1);

cbuffer cb1 : register(b1)
{
  float4 cb1[8];
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
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float3 o5 : TEXCOORD5,
  out float4 o6 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.x = saturate(cb1[7].z * r0.z);
  o0.w = saturate(cb1[7].w + r1.x);
  o0.xyz = r0.xyz;
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v2.xyz * r1.xxx;
  r2.xyz = cb1[1].xyz * r1.yyy;
  r1.xyw = cb1[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb1[2].xyz * r1.zzz + r1.xyw;
  r1.xyz = r1.xyz * r0.www;
  o1.xyz = r1.xyz;
  o1.w = v0.z;
  r2.xyz = r1.yzx * r0.zxy;
  r0.xyz = r0.yzx * r1.zxy + -r2.xyz;
  o2.xyz = v2.www * r0.xyz;
  r0.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
  o3.xyzw = r0.xyzw;
  r0.xy = r0.zw * cb0[2].xy + cb0[2].zw;
  r0.x = t2.SampleLevel(s1_s, r0.xy, 0).x;
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
  o4.xyz = cb12[7].xyz + r0.yzw;
  o5.xyz = v0.xyz;
  r0.xyzw = cb12[1].xyzw * r2.yyyy;
  r0.xyzw = cb12[0].xyzw * r2.xxxx + r0.xyzw;
  r0.xyzw = cb12[2].xyzw * r2.zzzz + r0.xyzw;
  o6.xyzw = r1.xyzw + r0.xyzw;
  return;
}