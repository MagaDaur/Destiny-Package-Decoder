// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:17 2023
Texture2D<float4> t2 : register(t2);

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
  float4 cb0[3];
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
  out float3 o4 : TEXCOORD4,
  out float4 o5 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[2].x < 9.99999997e-007);
  if (r0.x != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o3.xyzw = float4(0,0,0,0);
    r0.xyzw = float4(0,0,0,0);
    o2.xyz = float3(0,0,0);
    o4.xyz = float3(10000,10000,-10000);
  } else {
    r1.xyz = v0.xyz * cb1[4].xyz + cb1[5].xyz;
    r2.xyw = cb1[3].xyz + -cb12[7].xyz;
    r3.x = cb1[0].x;
    r3.y = cb1[1].x;
    r3.z = cb1[2].x;
    r3.w = r2.x;
    r1.w = 1;
    r3.x = dot(r3.xyzw, r1.xyzw);
    r4.x = cb1[0].y;
    r4.y = cb1[1].y;
    r4.z = cb1[2].y;
    r4.w = r2.y;
    r3.y = dot(r4.xyzw, r1.xyzw);
    r2.x = cb1[0].z;
    r2.y = cb1[1].z;
    r2.z = cb1[2].z;
    r3.z = dot(r2.xyzw, r1.xyzw);
    r1.xyzw = cb12[1].xyzw * r3.yyyy;
    r1.xyzw = cb12[0].xyzw * r3.xxxx + r1.xyzw;
    r1.xyzw = cb12[2].xyzw * r3.zzzz + r1.xyzw;
    r0.xyzw = cb12[14].xyzw + r1.xyzw;
    r1.x = dot(v1.xyz, v1.xyz);
    r1.x = rsqrt(r1.x);
    r1.xyz = v1.xyz * r1.xxx;
    r2.xyz = cb1[1].xyz * r1.yyy;
    r1.xyw = cb1[0].xyz * r1.xxx + r2.xyz;
    r1.xyz = cb1[2].xyz * r1.zzz + r1.xyw;
    r1.w = dot(v2.xyz, v2.xyz);
    r1.w = rsqrt(r1.w);
    r2.xyz = v2.xyz * r1.www;
    r4.xyz = cb1[1].xyz * r2.yyy;
    r2.xyw = cb1[0].xyz * r2.xxx + r4.xyz;
    r2.xyz = cb1[2].xyz * r2.zzz + r2.xyw;
    r1.w = dot(r1.xyz, r1.xyz);
    r1.w = rsqrt(r1.w);
    r1.xyz = r1.xyz * r1.www;
    r2.xyz = r2.xyz * r1.www;
    r4.xyz = r2.yzx * r1.zxy;
    r4.xyz = r1.yzx * r2.zxy + -r4.xyz;
    o2.xyz = v2.www * r4.xyz;
    o3.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
    o4.xyz = cb12[7].xyz + r3.xyz;
    o0.xyz = r1.xyz;
    o0.w = 1;
    o1.w = v0.z;
    o1.xyz = r2.xyz;
  }
  r1.xyzw = t2.Load(float4(0,0,0,0)).xyzw;
  r2.xy = r0.xy / r0.ww;
  r1.xy = r1.xy * float2(2,2) + r1.zw;
  r1.x = r2.x * r1.z + r1.x;
  r3.x = -1 + r1.x;
  r1.x = -1 + r1.y;
  r3.y = r2.y * r1.w + -r1.x;
  r0.xy = r3.xy * r0.ww;
  o5.xyzw = r0.xyzw;
  return;
}