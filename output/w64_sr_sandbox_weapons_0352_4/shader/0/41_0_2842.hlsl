// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:38 2023
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[14];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[21];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float3 v5 : TEXCOORD5,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb13[12].wz / cb12[12].yy;
  r0.x = r0.y * r0.x;
  r0.y = cb0[9].x * 0.5625;
  r0.x = r0.y * r0.x;
  r0.yz = cb12[12].zw * v6.xy;
  r1.yw = r0.yy * r0.xx;
  r1.xz = cb0[9].yy * r0.zz;
  r0.xyzw = cb0[9].wzwz + r1.xyzw;
  r0.xyzw = r0.wzwz * cb0[12].xyzw + r0.xyzw;
  r0.xyzw = frac(r0.xyzw);
  r0.xyzw = r0.xyzw * r0.xyzw;
  r0.x = dot(r0.xyzw, float4(251,251,251,251));
  r0.x = frac(r0.x);
  r0.x = saturate(cb0[13].y * r0.x + cb0[13].x);
  r0.yzw = cb12[7].xyz + -v4.xyz;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.y = rsqrt(r1.x);
  r1.x = sqrt(r1.x);
  r1.x = saturate(r1.x * cb0[14].x + cb0[14].y);
  r0.yzw = r1.yyy * r0.yzw;
  r0.y = dot(r0.yzw, v0.xyz);
  r0.y = r0.y * r0.y;
  r0.y = saturate(r0.y * cb0[7].x + cb0[7].y);
  r0.z = saturate(v5.z * 0.5 + 0.5);
  r0.z = saturate(cb0[8].y * r0.z + cb0[8].x);
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x + -r0.y;
  r0.x = saturate(r1.x * r0.x + r0.y);
  r0.yz = v3.xy * cb0[0].xy + cb0[0].zw;
  r0.yz = t4.Sample(s1_s, r0.yz).xy;
  r0.yz = r0.yz * cb0[1].xy + v3.xy;
  r0.yz = cb0[1].zw + r0.yz;
  r0.yz = r0.yz * cb0[2].xy + cb0[2].zw;
  r0.y = t5.Sample(s1_s, r0.yz).x;
  r0.zw = v3.xy * cb0[3].xy + cb0[3].zw;
  r0.zw = t4.Sample(s1_s, r0.zw).xy;
  r0.zw = r0.zw * cb0[4].xy + v3.xy;
  r0.zw = cb0[4].zw + r0.zw;
  r0.zw = r0.zw * cb0[5].xy + cb0[5].zw;
  r0.z = t6.Sample(s1_s, r0.zw).x;
  r0.y = r0.y * r0.z;
  r0.y = r0.y * cb0[6].x + cb0[6].y;
  r0.x = saturate(r0.y * r0.x);
  r0.xyz = saturate(cb0[16].xyz * r0.xxx + cb0[15].xyz);
  r0.xyz = cb0[18].xxx * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.w = saturate(cb0[17].y * v1.w + cb0[17].x);
  r1.x = 1 + -r0.w;
  r0.w = saturate(cb12[13].y * r1.x + r0.w);
  r0.w = saturate(cb0[20].x * r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}