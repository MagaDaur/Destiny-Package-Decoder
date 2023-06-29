// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:37 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture3D<float4> t0 : register(t0);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[6];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[126];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float3 v6 : TEXCOORD6,
  float4 v7 : SV_POSITION0,
  uint v8 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float4 o3 : SV_TARGET3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb13[1].x;
  r0.y = 1;
  r0.xy = cb13[1].ww * r0.xy;
  r0.y = cb13[1].x * r0.y;
  r0.xz = cb8[7].xy * r0.xx;
  r1.z = cb8[7].z * r0.y;
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.w = 0.015625 * r0.y;
  r0.y = saturate(r0.y * cb0[119].x + cb0[119].y);
  r0.w = min(1, r0.w);
  r2.z = sqrt(r0.w);
  r2.xy = cb12[12].zw * v7.xy;
  r0.w = t21.SampleLevel(s4_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s4_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r0.wwww * r3.xyzw + float4(0,0,0,1);
  r1.xy = r3.ww * r0.xz;
  r4.xy = float2(0.379447013,0.459421009);
  r4.z = r3.w;
  r0.xzw = r1.xyz * r4.xyz + r3.xyz;
  r1.xyzw = t11.Sample(s3_s, r2.xy).xyzw;
  r3.xyzw = t13.Sample(s3_s, r2.xy).xyzw;
  r2.xyz = t10.Sample(s2_s, r2.xy).xyw;
  r1.xyzw = -r3.xyzw + r1.xyzw;
  r1.xyzw = r0.yyyy * r1.xyzw + r3.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyz = r1.xyz * cb13[1].xxx + r0.xzw;
  r0.w = -1 + r2.z;
  r1.xy = -v0.ww + r2.xy;
  r1.xy = saturate(float2(0.5,0.5) * r1.xy);
  r1.xy = float2(1,1) + -r1.xy;
  r0.w = cb2[5].x * r0.w + 1;
  r1.x = r1.x + -r1.y;
  r0.w = r0.w * r1.x + r1.y;
  r1.x = 1 + -r1.y;
  r0.w = 1 + -r0.w;
  r1.yz = v0.xy * v3.xy + v3.zw;
  r1.yz = t2.Sample(s5_s, r1.yz).xy;
  r1.yz = r1.yz * float2(0.300000012,0.300000012) + v0.xy;
  r1.yz = float2(-0.150000006,-0.150000006) + r1.yz;
  r1.w = cb0[125].x * v6.x;
  r1.w = floor(r1.w);
  r2.xy = cb0[122].xy * r1.ww;
  r1.yz = r1.yz * cb0[121].xy + r2.xy;
  r1.y = t1.Sample(s5_s, r1.yz).x;
  r1.y = log2(r1.y);
  r1.y = 2.20000005 * r1.y;
  r1.y = exp2(r1.y);
  r2.xyz = cb12[14].xyz + -v2.xyz;
  r2.xyz = r2.xyz * float3(0.0500000007,0.100000001,0.0500000007) + cb0[9].xyz;
  r1.z = t0.Sample(s1_s, r2.xyz).x;
  r1.z = saturate(r1.z * 1.10000002 + -0.0555000007);
  r1.y = r1.z * r1.y;
  r1.y = saturate(v6.z * r1.y);
  r1.y = saturate(v0.z * r1.y);
  r2.xyzw = r1.yyyy * r0.wwww;
  r1.xyzw = r1.yyyy * r1.xxxx;
  o0.xyz = r2.www * r0.xyz;
  o1.xyz = r1.xyz * r0.xyz;
  o0.w = r2.w;
  o2.xyzw = r2.xyzw;
  o1.w = r1.w;
  o3.xyzw = r1.xyzw;
  return;
}