// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:20 2023
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
  float4 cb0[1];
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

  r0.x = cmp(cb0[0].x < 9.99999997e-007);
  if (r0.x != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o3.xyzw = float4(0,0,0,0);
    o7.xyzw = float4(0,0,0,0);
    o2.xyz = float3(0,0,0);
    o4.xyz = float3(10000,10000,-10000);
    o5.xyz = float3(0,0,0);
    o6.xyz = float3(0,0,0);
  } else {
    r0.xyz = v0.xyz * cb1[4].xyz + cb1[5].xyz;
    r1.xyw = cb1[3].xyz + -cb12[7].xyz;
    r2.x = cb1[0].x;
    r2.y = cb1[1].x;
    r2.z = cb1[2].x;
    r2.w = r1.x;
    r0.w = 1;
    r2.x = dot(r2.xyzw, r0.xyzw);
    r3.x = cb1[0].y;
    r3.y = cb1[1].y;
    r3.z = cb1[2].y;
    r3.w = r1.y;
    r2.y = dot(r3.xyzw, r0.xyzw);
    r1.x = cb1[0].z;
    r1.y = cb1[1].z;
    r1.z = cb1[2].z;
    r2.z = dot(r1.xyzw, r0.xyzw);
    r0.xyzw = cb12[1].xyzw * r2.yyyy;
    r0.xyzw = cb12[0].xyzw * r2.xxxx + r0.xyzw;
    r0.xyzw = cb12[2].xyzw * r2.zzzz + r0.xyzw;
    o7.xyzw = cb12[14].xyzw + r0.xyzw;
    r0.x = dot(v1.xyz, v1.xyz);
    r0.x = rsqrt(r0.x);
    r0.xyz = v1.xyz * r0.xxx;
    r1.xyz = cb1[1].xyz * r0.yyy;
    r0.xyw = cb1[0].xyz * r0.xxx + r1.xyz;
    r0.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
    r0.w = dot(v2.xyz, v2.xyz);
    r0.w = rsqrt(r0.w);
    r1.xyz = v2.xyz * r0.www;
    r3.xyzw = cb1[1].xyzz * r1.yyyy;
    r3.xyzw = cb1[0].xyzz * r1.xxxx + r3.xyzw;
    r1.xyzw = cb1[2].xyzz * r1.zzzz + r3.xyzw;
    r0.w = dot(r0.xyz, r0.xyz);
    r0.w = rsqrt(r0.w);
    r0.xyz = r0.xyz * r0.www;
    r1.xyzw = r1.xyzw * r0.wwww;
    r3.xyz = r1.ywx * r0.zxy;
    r3.xyz = r0.yzx * r1.wxy + -r3.xyz;
    o2.xyz = v2.www * r3.xyz;
    o3.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
    r0.w = saturate(cb1[7].z * r0.z);
    o0.w = saturate(cb1[7].w + r0.w);
    r2.xyz = cb12[7].xyz + r2.xyz;
    r3.xyz = cb12[10].xyz + -cb12[7].xyz;
    o4.xyz = r3.xyz + r2.xyz;
    o0.xyz = r0.xyz;
    o1.xyzw = r1.xyzw;
    o5.xyz = v0.xyz;
    o6.xyz = v1.xyz;
  }
  return;
}