// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:21 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
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
  float4 cb0[113];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD3,
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * cb0[9].xy + cb0[9].zw;
  r0.x = t2.Sample(s1_s, r0.xy).x;
  r0.yz = v0.xy * cb0[8].xy + cb0[8].zw;
  r0.y = t3.Sample(s1_s, r0.yz).x;
  r0.x = r0.x + -r0.y;
  r0.x = abs(r0.x) * 2.02189994 + 0.978100002;
  r0.y = dot(v1.xyz, v1.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = v1.xyz * r0.yyy;
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v2.xyz * r1.xxx;
  r0.y = dot(r1.xyz, r0.yzw);
  r0.z = saturate(r0.y);
  r0.y = r0.y * r0.y;
  r0.y = saturate(r0.y * 1.87969899 + -0.28947401);
  r1.xyz = r0.yyy * float3(-0.109661996,-0.0833809972,-0.954550028) + cb0[97].xyz;
  r0.y = r0.z * r0.z;
  r0.y = 2.96384096 * r0.y;
  r0.y = min(1, r0.y);
  r0.x = r0.y * r0.x;
  r0.x = saturate(w1.x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r2.zw = float2(0,0);
  r3.xy = cb12[12].zw * v3.xy;
  r0.yz = cb12[12].xy * r3.xy;
  r2.xy = (int2)r0.yz;
  r0.y = t10.Load(r2.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(r0.y + r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.z = r0.x * r0.y + -cb0[109].x;
  r0.x = r0.x * r0.y;
  r0.y = cmp(r0.z < 0);
  if (r0.y != 0) discard;
  r0.yz = v0.xy * cb0[11].xy + cb0[11].zw;
  r0.yz = t0.Sample(s1_s, r0.yz).xy;
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r0.yz = r0.yz * cb0[100].xx + v0.xy;
  r0.yz = r0.yz * cb0[10].xy + cb0[10].zw;
  r0.yzw = t1.Sample(s1_s, r0.yz).xyz;
  r0.yzw = saturate(r0.yzw);
  r0.yzw = r1.xyz * r0.yzw + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[112].x + cb0[112].y);
  r1.y = min(1, r1.y);
  r3.z = sqrt(r1.y);
  r1.y = t21.SampleLevel(s3_s, r3.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s3_s, r3.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r1.yyyy * r2.xyzw + float4(0,0,0,1);
  r0.yzw = r2.www * r0.yzw;
  r0.yzw = r0.yzw * float3(100,100,100) + r2.xyz;
  r2.xyzw = t11.Sample(s2_s, r3.xy).xyzw;
  r3.xyzw = t13.Sample(s2_s, r3.xy).xyzw;
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r1.xyzw = r1.xxxx * r2.xyzw + r3.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.yzw = r1.xyz * cb13[1].xxx + r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = r0.x;
  return;
}