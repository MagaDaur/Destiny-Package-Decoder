// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:16 2023
Texture2D<float4> t0 : register(t0);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[7];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float3 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r0.xyz * r0.www;
  r0.x = dot(r0.xyz, cb12[6].xyz);
  r0.y = dot(r1.xyz, v0.xyz);
  r0.y = r0.y * r0.y;
  r0.z = saturate(r0.y * cb0[2].x + cb0[2].y);
  r0.y = saturate(r0.y * cb0[4].x + cb0[4].y);
  r0.z = log2(r0.z);
  r0.z = cb0[3].x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = min(1, r0.z);
  r0.y = r0.z * r0.y;
  r0.y = cb0[1].x * r0.y;
  r0.zw = cb12[12].zw * v5.xy;
  t0.GetDimensions(0, fDest.x, fDest.y, fDest.z);
  r1.xy = fDest.xy;
  r0.zw = r1.xy * r0.zw;
  r1.xy = (int2)r0.zw;
  r1.zw = float2(0,0);
  r0.z = t0.Load(r1.xyz).x;
  r0.x = r0.z + -abs(r0.x);
  r0.x = saturate(r0.x * cb0[5].x + cb0[5].y);
  r0.x = r0.x * r0.y;
  r1.x = dot(v0.xyz, cb12[4].xyz);
  r1.y = dot(v0.xyz, -cb12[5].xyz);
  r0.xyzw = -r1.xyxy * r0.xxxx;
  r0.xyzw = cb0[6].xxxx * r0.xyzw;
  o0.xyzw = saturate(float4(1,1,-1,-1) * r0.xyzw);
  return;
}