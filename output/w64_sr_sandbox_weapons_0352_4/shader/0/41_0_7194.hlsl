// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:20 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb1 : register(b1)
{
  float4 cb1[3];
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
  float4 cb0[25];
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
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v5.yx * cb0[6].yx + cb0[6].wz;
  r0.zw = round(r0.xy);
  r0.xy = r0.xy + -r0.zw;
  r0.zw = abs(r0.xy) * float2(-16,-16) + float2(8,8);
  r0.xy = r0.xy * r0.zw;
  r0.zw = abs(r0.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r0.xy = r0.xy * r0.zw;
  r0.xy = cb0[7].yx * r0.xy + v5.xy;
  r0.xy = r0.xy * cb0[8].xy + cb0[8].zw;
  r0.zw = v5.xy * cb0[10].xy + cb0[10].zw;
  r1.xy = t1.Sample(s4_s, r0.zw).xy;
  r1.xy = -cb0[12].xy + r1.xy;
  r0.zw = r1.xy * cb0[11].xx + r0.zw;
  r0.z = t2.Sample(s4_s, r0.zw).x;
  r0.z = cb0[13].x * r0.z;
  r1.xy = v5.xy * cb0[9].xy + cb0[9].zw;
  r1.xy = t0.Sample(s4_s, r1.xy).xy;
  r1.xy = -cb0[14].yx + r1.yx;
  r0.xy = r1.yx * r0.zz + r0.xy;
  r0.x = t3.Sample(s4_s, r0.xy).x;
  r0.yw = v5.yx * cb0[15].yx + cb0[15].wz;
  r0.yz = r1.xy * r0.zz + r0.yw;
  r0.y = t3.Sample(s4_s, r0.yz).x;
  r0.z = r0.x + r0.y;
  r0.w = dot(v0.xyz, v0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v0.xyz * r0.www;
  r2.x = dot(cb1[0].xyz, r1.xyz);
  r2.y = dot(cb1[1].xyz, r1.xyz);
  r2.z = dot(cb1[2].xyz, r1.xyz);
  r1.xyz = log2(abs(r2.xyz));
  r1.xyz = cb0[5].xxx * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r0.w = dot(r1.xyz, float3(1,1,1));
  r1.xyz = r1.xyz / r0.www;
  r2.xyzw = v5.zyzx * cb0[6].yxyx + cb0[6].wzwz;
  r3.xyzw = round(r2.xyzw);
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r3.xyzw = abs(r2.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
  r2.xyzw = r3.xyzw * r2.xyzw;
  r3.xyzw = abs(r2.xyzw) * float4(0.224999994,0.224999994,0.224999994,0.224999994) + float4(0.774999976,0.774999976,0.774999976,0.774999976);
  r2.xyzw = r3.xyzw * r2.xyzw;
  r2.xyzw = cb0[7].yxyx * r2.xyzw + v5.yzxz;
  r2.xyzw = r2.xyzw * cb0[8].xyxy + cb0[8].zwzw;
  r3.xyzw = v5.yzxz * cb0[10].xyxy + cb0[10].zwzw;
  r4.xy = t1.Sample(s4_s, r3.xy).xy;
  r4.xy = -cb0[12].xy + r4.xy;
  r3.xy = r4.xy * cb0[11].xx + r3.xy;
  r0.w = t2.Sample(s4_s, r3.xy).x;
  r0.w = cb0[13].x * r0.w;
  r4.xyzw = v5.yzxz * cb0[9].xyxy + cb0[9].zwzw;
  r3.xy = t0.Sample(s4_s, r4.xy).xy;
  r4.xy = t0.Sample(s4_s, r4.zw).xy;
  r4.xy = -cb0[14].yx + r4.yx;
  r3.xy = -cb0[14].yx + r3.yx;
  r2.xy = r3.yx * r0.ww + r2.xy;
  r1.w = t3.Sample(s4_s, r2.xy).x;
  r5.xyzw = v5.yzxz * cb0[15].xyxy + cb0[15].zwzw;
  r2.xy = r3.xy * r0.ww + r5.yx;
  r0.w = t3.Sample(s4_s, r2.xy).x;
  r0.x = r1.w + r0.w;
  r2.xy = t1.Sample(s4_s, r3.zw).xy;
  r2.xy = -cb0[12].xy + r2.xy;
  r2.xy = r2.xy * cb0[11].xx + r3.zw;
  r0.w = t2.Sample(s4_s, r2.xy).x;
  r0.w = cb0[13].x * r0.w;
  r2.xy = r4.xy * r0.ww + r5.wz;
  r2.zw = r4.yx * r0.ww + r2.zw;
  r0.w = t3.Sample(s4_s, r2.zw).x;
  r1.w = t3.Sample(s4_s, r2.xy).x;
  r0.y = r1.w + r0.w;
  r0.x = dot(r0.xyz, r1.xyz);
  r0.x = r0.x * cb0[16].x + cb0[16].y;
  r0.xyz = cb0[17].xyz * r0.xxx;
  r0.xyz = cb0[18].xxx * r0.xyz;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r1.xyz, v0.xyz);
  r0.w = r0.w * r0.w;
  r1.x = saturate(r0.w * cb0[19].x + cb0[19].y);
  r0.w = saturate(r0.w * cb0[21].x + cb0[21].y);
  r0.w = log2(r0.w);
  r0.w = cb0[22].x * r0.w;
  r0.w = exp2(r0.w);
  r1.x = log2(r1.x);
  r1.y = cb0[13].x * r1.x;
  r1.x = cb0[20].x * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r1.x * r0.w;
  r0.w = cb0[24].x * r0.w;
  r1.x = exp2(r1.y);
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = cb0[23].xxx * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r1.x = cb0[4].x * 0.75;
  r1.x = max(0, r1.x);
  r1.yzw = -cb12[14].xyz + v4.xyz;
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = sqrt(r1.y);
  r1.x = r1.y + -r1.x;
  r1.x = saturate(1.99999995e-005 * r1.x);
  r2.x = sqrt(r1.x);
  r1.x = r1.w / r1.y;
  r2.y = r1.x * 0.5 + 0.5;
  r2.xyzw = t15.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r0.xyz = r2.xyz * r0.xyz;
  r1.x = 0.015625 * r1.y;
  r1.y = saturate(r1.y * cb0[0].x + cb0[0].y);
  r1.x = min(1, r1.x);
  r2.z = sqrt(r1.x);
  r2.xy = cb12[12].zw * v7.xy;
  r1.x = t21.SampleLevel(s1_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s1_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.xxxx * r3.xyzw + float4(0,0,0,1);
  r0.xyz = r0.xyz * r3.www + r3.xyz;
  r3.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r4.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r1.xyzw = r1.yyyy * r3.xyzw + r4.xyzw;
  r2.x = r2.w * cb0[3].x + -r2.w;
  r1.w = r1.w * r2.x + r1.w;
  r2.x = cb13[1].x * cb0[2].x;
  r1.w = r2.x * r1.w;
  r2.x = -r2.x * r2.w + r2.x;
  r1.xyz = r2.xxx * r1.xyz;
  r1.xyz = cb0[1].xyz * r1.www + r1.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}