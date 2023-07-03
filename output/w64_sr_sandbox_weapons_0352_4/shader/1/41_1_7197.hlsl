// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:20 2023
cbuffer cb1 : register(b1)
{
  float4 cb1[8];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
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
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
{
  float4 r0,r1,r2,r3;
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
  r2.xyzw = cb1[1].xyzz * r1.yyyy;
  r2.xyzw = cb1[0].xyzz * r1.xxxx + r2.xyzw;
  r1.xyzw = cb1[2].xyzz * r1.zzzz + r2.xyzw;
  r1.xyzw = r1.xyzw * r0.wwww;
  o1.xyzw = r1.xyzw;
  r2.xyz = r1.ywx * r0.zxy;
  r0.xyz = r0.yzx * r1.wxy + -r2.xyz;
  o2.xyz = v2.www * r0.xyz;
  o3.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
  r0.x = cb1[0].x;
  r0.y = cb1[1].x;
  r0.z = cb1[2].x;
  r1.xyw = cb1[3].xyz + -cb12[7].xyz;
  r0.w = r1.x;
  r2.xyz = v0.xyz * cb1[4].xyz + cb1[5].xyz;
  r2.w = 1;
  r0.x = dot(r0.xyzw, r2.xyzw);
  r3.w = r1.y;
  r3.x = cb1[0].y;
  r3.y = cb1[1].y;
  r3.z = cb1[2].y;
  r0.y = dot(r3.xyzw, r2.xyzw);
  r1.x = cb1[0].z;
  r1.y = cb1[1].z;
  r1.z = cb1[2].z;
  r0.z = dot(r1.xyzw, r2.xyzw);
  o4.xyz = cb12[7].xyz + r0.xyz;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  o7.xyzw = cb12[14].xyzw + r0.xyzw;
  o5.xyz = v0.xyz;
  o6.xyz = v1.xyz;
  return;
}