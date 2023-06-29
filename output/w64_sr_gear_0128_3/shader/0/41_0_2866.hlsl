// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:49 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[119];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = abs(r0.x) + -abs(r0.y);
  r0.w = abs(r0.x) + abs(r0.y);
  r0.z = r0.z / r0.w;
  r0.z = -1 + r0.z;
  r1.xy = cmp(float2(0,0) < r0.xy);
  r1.zw = cmp(r0.xy < float2(0,0));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r0.z = r0.z * r1.y + 2;
  r0.z = r1.x * r0.z;
  r0.z = 0.125 * r0.z;
  r0.z = frac(r0.z);
  r1.y = dot(abs(r0.xy), abs(r0.xy));
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * -5 + 3);
  r0.x = log2(r0.x);
  r0.x = cb0[110].x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = r1.y * -0.800000012 + r0.z;
  r1.x = 0.400000006 + r0.y;
  r0.yz = r1.xy * cb0[9].xy + cb0[9].zw;
  r1.xy = r1.xy * cb0[8].xy + cb0[8].zw;
  r0.w = t0.Sample(s3_s, r1.xy).x;
  r0.y = t0.Sample(s3_s, r0.yz).x;
  r0.y = r0.y * r0.w;
  r0.x = r0.y * r0.x;
  r0.x = saturate(r0.x * 18.3791733 + -0.150000006);
  r0.yzw = cb0[96].xyz + r0.xxx;
  r0.x = cb0[100].x * r0.x;
  r0.yzw = cb0[97].xyz * r0.yzw;
  r1.xy = float2(20,20) * v0.xy;
  r1.x = t1.Sample(s3_s, r1.xy).x;
  r1.x = saturate(r1.x * 4 + -0.600000024);
  r1.xyz = r1.xxx * float3(0.0207250006,0.0207250006,0.0207250006) + cb0[118].xyz;
  r1.xyz = cb0[98].xyz * r1.xyz;
  r1.w = cmp(1 < v0.x);
  r0.yzw = r1.www ? r1.xyz : r0.yzw;
  r0.x = r1.w ? cb0[101].x : r0.x;
  r0.yzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.yzw;
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[104].x + cb0[104].y);
  r1.y = min(1, r1.y);
  r2.z = sqrt(r1.y);
  r2.xy = cb12[12].zw * v3.xy;
  r1.y = t21.SampleLevel(s2_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s2_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.yyyy * r3.xyzw + float4(0,0,0,1);
  r0.yzw = r3.www * r0.yzw;
  r0.yzw = r0.yzw * float3(6,6,6) + r3.xyz;
  r3.xyzw = t11.Sample(s1_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s1_s, r2.xy).xyzw;
  r3.xyzw = r3.xyzw + -r2.xyzw;
  r1.xyzw = r1.xxxx * r3.xyzw + r2.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.yzw = r1.xyz * cb13[1].xxx + r0.yzw;
  r1.x = cb0[11].z + v0.y;
  r1.x = saturate(cb0[11].y * abs(r1.x) + cb0[11].x);
  r0.x = r1.x * r0.x;
  r0.x = saturate(cb0[15].y * r0.x);
  r0.x = saturate(v0.z * r0.x);
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = r0.x;
  return;
}