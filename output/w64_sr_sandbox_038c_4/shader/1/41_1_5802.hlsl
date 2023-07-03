// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:01 2023
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

SamplerState s1_s : register(s1);

cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
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
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(cb0[7].x < 9.99999997e-007);
  if (r0.x != 0) {
    o0.xyzw = float4(0,0,0,0);
    o1.xyzw = float4(0,0,0,0);
    o3.xyzw = float4(0,0,0,0);
    r0.xyzw = float4(0,0,0,0);
    o2.xyz = float3(0,0,0);
    o4.xyz = float3(10000,10000,-10000);
  } else {
    r1.xyzw = cb1[1].xyzw * v0.yyyy;
    r1.xyzw = cb1[0].xyzw * v0.xxxx + r1.xyzw;
    r1.xyzw = cb1[2].xyzw * v0.zzzz + r1.xyzw;
    r1.xyzw = cb1[3].xyzw + r1.xyzw;
    r2.xyzw = cb12[1].xyzw * r1.yyyy;
    r2.xyzw = cb12[0].xyzw * r1.xxxx + r2.xyzw;
    r2.xyzw = cb12[2].xyzw * r1.zzzz + r2.xyzw;
    r2.xyzw = cb12[3].xyzw * r1.wwww + r2.xyzw;
    r3.xyz = cb1[1].xyz * v1.yyy;
    r3.xyz = cb1[0].xyz * v1.xxx + r3.xyz;
    r3.xyz = cb1[2].xyz * v1.zzz + r3.xyz;
    r4.xyzw = cb1[1].xyzz * v2.yyyy;
    r4.xyzw = cb1[0].xyzz * v2.xxxx + r4.xyzw;
    r4.xyzw = cb1[2].xyzz * v2.zzzz + r4.xyzw;
    r5.xyz = r4.ywx * r3.zxy;
    r5.xyz = r3.yzx * r4.wxy + -r5.xyz;
    r6.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
    o2.xyz = -r5.xyz;
    r1.xyz = -cb12[7].xyz + r1.xyz;
    r5.xy = r6.zw * cb0[2].xy + cb0[2].zw;
    r1.w = t3.SampleLevel(s1_s, r5.xy, 0).x;
    r1.w = saturate(r1.w * cb0[3].x + cb0[3].y);
    r1.w = cb0[1].x * r1.w;
    r5.xyz = cb0[0].xyz * r1.www;
    r1.xyz = cb0[0].xyz * r1.www + r1.xyz;
    o4.xyz = cb12[7].xyz + r1.xyz;
    r1.xyzw = cb12[1].xyzw * r5.yyyy;
    r1.xyzw = cb12[0].xyzw * r5.xxxx + r1.xyzw;
    r1.xyzw = cb12[2].xyzw * r5.zzzz + r1.xyzw;
    r0.xyzw = r2.xyzw + r1.xyzw;
    o0.xyz = r3.xyz;
    o0.w = 1;
    o1.xyzw = r4.xyzw;
    o3.xyzw = r6.xyzw;
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