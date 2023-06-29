// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:53 2023
Texture2D<float4> t2 : register(t2);

cbuffer cb1 : register(b1)
{
  float4 cb1[24];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  float4 v4 : BLENDWEIGHT0,
  uint4 v5 : BLENDINDICES0,
  uint v6 : SV_VERTEXID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float4 o2 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  o0.xy = v3.xy * cb1[6].xy + cb1[6].zw;
  r0.xyzw = (int4)v5.xyzw * int4(3,3,3,3);
  r1.x = cb1[r0.x+8].w * v4.x;
  r2.xyzw = mad(int4(3,3,3,3), (int4)v5.xxyy, int4(1,2,1,2));
  r1.y = cb1[r2.x+8].w * v4.x;
  r1.z = cb1[r2.y+8].w * v4.x;
  r3.x = cb1[r0.y+8].w * v4.y;
  r3.y = cb1[r2.z+8].w * v4.y;
  r3.z = cb1[r2.w+8].w * v4.y;
  r1.xyz = r3.xyz + r1.xyz;
  r3.x = cb1[r0.z+8].w * v4.z;
  r4.xyzw = mad(int4(3,3,3,3), (int4)v5.zzww, int4(1,2,1,2));
  r3.y = cb1[r4.x+8].w * v4.z;
  r3.z = cb1[r4.y+8].w * v4.z;
  r1.xyz = r3.xyz + r1.xyz;
  r3.x = cb1[r0.w+8].w * v4.w;
  r3.y = cb1[r4.z+8].w * v4.w;
  r3.z = cb1[r4.w+8].w * v4.w;
  r1.xyz = r3.xyz + r1.xyz;
  r1.xyw = cb12[15].xyz + r1.xyz;
  r3.w = r1.y;
  r5.xyz = v0.xyz * cb1[4].xyz + cb1[5].xyz;
  r5.w = 1;
  r6.xyz = cb1[r2.z+8].xyz * v4.yyy;
  r6.xyz = v4.xxx * cb1[r2.x+8].xyz + r6.xyz;
  r6.xyz = v4.zzz * cb1[r4.x+8].xyz + r6.xyz;
  r3.xyz = v4.www * cb1[r4.z+8].xyz + r6.xyz;
  r2.x = dot(r3.xyzw, r5.xyzw);
  r3.xyzw = cb12[1].xyzw * r2.xxxx;
  r6.xyz = cb1[r0.y+8].xyz * v4.yyy;
  r6.xyz = v4.xxx * cb1[r0.x+8].xyz + r6.xyz;
  r0.xyz = v4.zzz * cb1[r0.z+8].xyz + r6.xyz;
  r0.xyz = v4.www * cb1[r0.w+8].xyz + r0.xyz;
  r0.w = r1.x;
  r0.x = dot(r0.xyzw, r5.xyzw);
  r0.xyzw = cb12[0].xyzw * r0.xxxx + r3.xyzw;
  r2.xzw = cb1[r2.w+8].xyz * v4.yyy;
  r2.xyz = v4.xxx * cb1[r2.y+8].xyz + r2.xzw;
  r2.xyz = v4.zzz * cb1[r4.y+8].xyz + r2.xyz;
  r1.xyz = v4.www * cb1[r4.w+8].xyz + r2.xyz;
  r1.x = dot(r1.xyzw, r5.xyzw);
  r0.xyzw = cb12[2].xyzw * r1.xxxx + r0.xyzw;
  r0.xyzw = cb12[14].xyzw + r0.xyzw;
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