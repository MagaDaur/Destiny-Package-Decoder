// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[16];
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
  float4 cb0[122];
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
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  float4 v10 : SV_POSITION0,
  uint v11 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float4 o3 : SV_TARGET3)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v10.xy;
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v1.xyz * r0.www;
  r2.xyz = cb12[14].xyz + -v2.xyz;
  r0.w = dot(-cb12[6].xyz, -v2.xyz);
  r3.xy = v0.xy * v3.xy + v3.zw;
  r3.xyz = t0.Sample(s6_s, r3.xy).xyz;
  r4.xy = v0.xy * v4.xy + v4.zw;
  r4.xy = t2.Sample(s6_s, r4.xy).xy;
  r4.xy = r4.xy * v8.yy + v0.xy;
  r4.xy = v8.yy * float2(-0.5,-0.5) + r4.xy;
  r5.x = 0;
  r5.y = round(v7.z);
  r4.zw = r4.xy * float2(-2,-2) + float2(1,1);
  r4.xy = r5.xy * r4.zw + r4.xy;
  r2.w = cb0[121].x * v8.w;
  r2.w = floor(r2.w);
  r4.zw = cb0[118].xy * r2.ww;
  r4.xy = r4.xy * cb0[117].xy + r4.zw;
  r2.w = t1.Sample(s6_s, r4.xy).x;
  r4.xyz = t10.Sample(s1_s, r0.xy).xyw;
  r4.xy = -v0.ww + r4.xy;
  r4.xy = saturate(float2(0.5,0.5) * r4.xy);
  r4.xy = float2(1,1) + -r4.xy;
  r3.w = -1 + r4.z;
  r3.w = cb2[5].x * r3.w + 1;
  r4.x = r4.x + -r4.y;
  r3.w = r3.w * r4.x + r4.y;
  r3.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r3.xyz;
  r3.xyz = float3(1.00000024,1.00000024,1.00000024) * r3.xyz;
  r3.xyz = max(float3(0,0,0), r3.xyz);
  r3.xyz = v5.xyz * r3.xyz;
  r3.xyz = v9.www * r3.xyz;
  r2.w = saturate(r2.w * v9.z + v9.y);
  r4.xzw = -cb3[0].xyz + r2.xyz;
  r4.xzw = abs(r4.xzw) / cb3[6].xyz;
  r5.xyz = cb3[3].xyz + float3(-2,-2,-2);
  r4.xzw = r4.xzw / r5.xyz;
  r4.x = max(r4.x, r4.z);
  r4.x = max(r4.x, r4.w);
  r4.x = max(0.50999999, r4.x);
  r4.x = log2(r4.x);
  r4.x = floor(r4.x);
  r5.z = 1 + r4.x;
  r4.x = cmp(r5.z < cb3[8].x);
  r4.z = exp2(r5.z);
  r6.xyz = cb3[6].xyz * r4.zzz;
  r7.xyz = cb3[0].xyz / r6.xyz;
  r7.xyz = floor(r7.xyz);
  r2.xyz = -r7.xyz * r6.xyz + r2.xyz;
  r2.xyz = r2.xyz / cb3[6].xyz;
  r2.xyz = r2.xyz / cb3[3].xyz;
  r2.xyz = r2.xyz / r4.zzz;
  r5.xy = float2(0.5,0.5);
  r2.xyz = r2.xyz * float3(0.5,0.5,0.5) + r5.xyz;
  r2.z = 0.5 + r2.z;
  r5.xy = cb3[2].xy * r2.xy;
  r5.w = r2.z * cb3[2].z + cb3[9].x;
  r2.xyz = float3(0.5,0.5,0.5) + r5.xyw;
  r2.xyz = r2.xyz / cb3[4].xyz;
  r5.xy = cb8[4].zw;
  r5.z = 0;
  r2.xyz = r4.xxx ? r2.xyz : r5.xyz;
  r6.xyzw = t16.SampleLevel(s3_s, r2.xyz, 0).xyzw;
  r7.xyzw = t17.SampleLevel(s3_s, r2.xyz, 0).xyzw;
  r8.xyzw = t18.SampleLevel(s3_s, r2.xyz, 0).xyzw;
  r0.w = cb3[15].x * r0.w;
  r0.w = saturate(r0.w * 1.5 + cb3[15].y);
  r4.x = cmp(r0.w < 1);
  if (r4.x != 0) {
    r9.xyzw = t16.SampleLevel(s3_s, r5.xyz, 0).xyzw;
    r10.xyzw = t17.SampleLevel(s3_s, r5.xyz, 0).xyzw;
    r5.xyzw = t18.SampleLevel(s3_s, r5.xyz, 0).xyzw;
    r11.xyzw = -r9.xyzw + r6.xyzw;
    r6.xyzw = r0.wwww * r11.xyzw + r9.xyzw;
    r9.xyzw = -r10.xyzw + r7.xyzw;
    r7.xyzw = r0.wwww * r9.xyzw + r10.xyzw;
    r9.xyzw = r8.xyzw + -r5.xyzw;
    r8.xyzw = r0.wwww * r9.xyzw + r5.xyzw;
  }
  r1.w = 1;
  r5.x = dot(r6.xyzw, r1.xyzw);
  r5.y = dot(r7.xyzw, r1.xyzw);
  r5.z = dot(r8.xyzw, r1.xyzw);
  r4.xzw = max(float3(0,0,0), r5.xyz);
  r1.w = cb8[6].w * cb8[6].w;
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[112].x * r1.w;
  r1.w = exp2(r1.w);
  r2.x = t19.SampleLevel(s2_s, r2.xyz, 0).x;
  r2.x = -1 + r2.x;
  r0.w = r0.w * r2.x + 1;
  r1.x = saturate(dot(cb0[110].xyz, r1.xyz));
  r1.yzw = cb0[109].xyz * r1.www;
  r1.yzw = r1.yzw * r0.www;
  r1.xyz = r1.xxx * r1.yzw;
  r1.xyz = r1.xyz * float3(0.318309873,0.318309873,0.318309873) + r4.xzw;
  r1.xyz = r3.xyz * r1.xyz;
  r0.w = saturate(v0.z * r2.w);
  r1.xyz = cb13[1].xxx * r1.xyz;
  r1.w = dot(-v2.xyz, -v2.xyz);
  r1.w = sqrt(r1.w);
  r2.x = 0.015625 * r1.w;
  r2.x = min(1, r2.x);
  r0.z = sqrt(r2.x);
  r0.z = t21.SampleLevel(s5_s, r0.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s5_s, r0.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r0.zzzz * r2.xyzw + float4(0,0,0,1);
  r0.z = saturate(r1.w * cb0[116].x + cb0[116].y);
  r5.xyzw = t11.Sample(s4_s, r0.xy).xyzw;
  r6.xyzw = t13.Sample(s4_s, r0.xy).xyzw;
  r5.xyzw = -r6.xyzw + r5.xyzw;
  r5.xyzw = r0.zzzz * r5.xyzw + r6.xyzw;
  r0.xyz = cb8[5].xyz * r5.xyz;
  r0.xyz = r5.www * cb8[6].xyz + r0.xyz;
  r1.xyz = cb8[7].xyz * r1.xyz;
  r1.xyz = r1.xyz * r2.www + r2.xyz;
  r0.xyz = r0.xyz * cb13[1].xxx + r1.xyz;
  r1.x = 1 + -r3.w;
  r1.xyzw = r1.xxxx * r0.wwww;
  r2.x = 1 + -r4.y;
  r2.xyzw = r2.xxxx * r0.wwww;
  o0.xyz = r1.www * r0.xyz;
  o1.xyz = r2.xyz * r0.xyz;
  o0.w = r1.w;
  o1.w = r2.w;
  o2.xyzw = r1.xyzw;
  o3.xyzw = r2.xyzw;
  return;
}