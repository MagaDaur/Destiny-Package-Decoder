// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:17 2023
cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float4 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  uint v4 : SV_VERTEXID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float3 o4 : TEXCOORD4,
  out float4 o5 : SV_POSITION0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[2].x < 9.99999997e-007);
  if (r0.x != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o3.xyzw = float4(0,0,0,0);
    o5.xyzw = float4(0,0,0,0);
    o2.xyz = float3(0,0,0);
    o4.xyz = float3(10000,10000,-10000);
  } else {
    r0.xyzw = cb1[1].xyzw * v0.yyyy;
    r0.xyzw = cb1[0].xyzw * v0.xxxx + r0.xyzw;
    r0.xyzw = cb1[2].xyzw * v0.zzzz + r0.xyzw;
    r0.xyzw = cb1[3].xyzw + r0.xyzw;
    r1.xyzw = cb12[1].xyzw * r0.yyyy;
    r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
    r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
    o5.xyzw = cb12[3].xyzw * r0.wwww + r1.xyzw;
    r1.xyz = cb1[1].xyz * v1.yyy;
    r1.xyz = cb1[0].xyz * v1.xxx + r1.xyz;
    r1.xyz = cb1[2].xyz * v1.zzz + r1.xyz;
    r2.xyz = cb1[1].xyz * v2.yyy;
    r2.xyz = cb1[0].xyz * v2.xxx + r2.xyz;
    r2.xyz = cb1[2].xyz * v2.zzz + r2.xyz;
    r3.xyz = r2.yzx * r1.zxy;
    r3.xyz = r1.yzx * r2.zxy + -r3.xyz;
    o3.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
    o2.xyz = -r3.xyz;
    o0.xyz = r1.xyz;
    o0.w = 1;
    o1.w = v0.z;
    o1.xyz = r2.xyz;
    o4.xyz = r0.xyz;
  }
  return;
}