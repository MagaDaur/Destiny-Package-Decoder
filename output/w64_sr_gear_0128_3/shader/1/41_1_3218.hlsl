// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:47 2023
cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[21];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float2 v0 : POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_POSITION0,
  out float2 o1 : TEXCOORD0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[10].x * v0.x;
  r0.y = cb0[11].x * v0.y;
  r1.x = dot(cb0[19].xy, r0.xy);
  r1.y = dot(cb0[20].xy, r0.xy);
  r0.xy = cb0[4].xy + r1.xy;
  r0.xy = cb0[5].xy + r0.xy;
  r0.xy = -cb0[4].xy + r0.xy;
  r1.x = dot(cb0[17].xy, r0.xy);
  r1.y = dot(cb0[18].xy, r0.xy);
  r0.xy = cb0[4].xy + r1.xy;
  r1.xyzw = cb12[5].xyzw * r0.yyyy;
  r0.xyzw = cb12[4].xyzw * r0.xxxx + r1.xyzw;
  r0.xyzw = cb12[6].xyzw + r0.xyzw;
  r0.xyzw = cb12[7].xyzw + r0.xyzw;
  r1.xyz = cb12[1].xyw * r0.yyy;
  r1.xyz = cb12[0].xyw * r0.xxx + r1.xyz;
  r0.xyz = cb12[2].xyw * r0.zzz + r1.xyz;
  r0.xyz = cb12[3].xyw * r0.www + r0.xyz;
  o0.xyw = r0.xyz / r0.zzz;
  o0.z = 0.99000001;
  o1.xy = v1.xy;
  return;
}