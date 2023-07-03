// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:20 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t4 : register(t4);

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
  float4 cb0[23];
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

  r0.xy = v5.yx * cb0[5].yx + cb0[5].wz;
  r0.zw = round(r0.xy);
  r0.xy = r0.xy + -r0.zw;
  r0.zw = abs(r0.xy) * float2(-16,-16) + float2(8,8);
  r0.xy = r0.xy * r0.zw;
  r0.zw = abs(r0.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r0.xy = r0.xy * r0.zw;
  r0.xy = cb0[6].yx * r0.xy + v5.xy;
  r0.xy = r0.xy * cb0[7].xy + cb0[7].zw;
  r0.zw = v5.xy * cb0[9].xy + cb0[9].zw;
  r1.xy = t2.Sample(s4_s, r0.zw).xy;
  r1.xy = -cb0[11].xy + r1.xy;
  r0.zw = r1.xy * cb0[10].xx + r0.zw;
  r0.z = t3.Sample(s4_s, r0.zw).x;
  r0.z = cb0[12].x * r0.z;
  r1.xy = v5.xy * cb0[8].xy + cb0[8].zw;
  r1.xy = t1.Sample(s4_s, r1.xy).xy;
  r1.xy = -cb0[13].yx + r1.yx;
  r0.xy = r1.yx * r0.zz + r0.xy;
  r0.x = t4.Sample(s4_s, r0.xy).x;
  r0.yw = v5.yx * cb0[14].yx + cb0[14].wz;
  r0.yz = r1.xy * r0.zz + r0.yw;
  r0.y = t4.Sample(s4_s, r0.yz).x;
  r0.z = r0.x + r0.y;
  r0.w = dot(v0.xyz, v0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v0.xyz * r0.www;
  r2.x = dot(cb1[0].xyz, r1.xyz);
  r2.y = dot(cb1[1].xyz, r1.xyz);
  r2.z = dot(cb1[2].xyz, r1.xyz);
  r1.xyz = log2(abs(r2.xyz));
  r1.xyz = cb0[4].xxx * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r0.w = dot(r1.xyz, float3(1,1,1));
  r1.xyz = r1.xyz / r0.www;
  r2.xyzw = v5.zyzx * cb0[5].yxyx + cb0[5].wzwz;
  r3.xyzw = round(r2.xyzw);
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r3.xyzw = abs(r2.xyzw) * float4(-16,-16,-16,-16) + float4(8,8,8,8);
  r2.xyzw = r3.xyzw * r2.xyzw;
  r3.xyzw = abs(r2.xyzw) * float4(0.224999994,0.224999994,0.224999994,0.224999994) + float4(0.774999976,0.774999976,0.774999976,0.774999976);
  r2.xyzw = r3.xyzw * r2.xyzw;
  r2.xyzw = cb0[6].yxyx * r2.xyzw + v5.yzxz;
  r2.xyzw = r2.xyzw * cb0[7].xyxy + cb0[7].zwzw;
  r3.xyzw = v5.yzxz * cb0[9].xyxy + cb0[9].zwzw;
  r4.xy = t2.Sample(s4_s, r3.xy).xy;
  r4.xy = -cb0[11].xy + r4.xy;
  r3.xy = r4.xy * cb0[10].xx + r3.xy;
  r0.w = t3.Sample(s4_s, r3.xy).x;
  r0.w = cb0[12].x * r0.w;
  r4.xyzw = v5.yzxz * cb0[8].xyxy + cb0[8].zwzw;
  r3.xy = t1.Sample(s4_s, r4.xy).xy;
  r4.xy = t1.Sample(s4_s, r4.zw).xy;
  r4.xy = -cb0[13].yx + r4.yx;
  r3.xy = -cb0[13].yx + r3.yx;
  r2.xy = r3.yx * r0.ww + r2.xy;
  r1.w = t4.Sample(s4_s, r2.xy).x;
  r5.xyzw = v5.yzxz * cb0[14].xyxy + cb0[14].zwzw;
  r2.xy = r3.xy * r0.ww + r5.yx;
  r0.w = t4.Sample(s4_s, r2.xy).x;
  r0.x = r1.w + r0.w;
  r2.xy = t2.Sample(s4_s, r3.zw).xy;
  r2.xy = -cb0[11].xy + r2.xy;
  r2.xy = r2.xy * cb0[10].xx + r3.zw;
  r0.w = t3.Sample(s4_s, r2.xy).x;
  r0.w = cb0[12].x * r0.w;
  r2.xy = r4.xy * r0.ww + r5.wz;
  r2.zw = r4.yx * r0.ww + r2.zw;
  r0.w = t4.Sample(s4_s, r2.zw).x;
  r1.w = t4.Sample(s4_s, r2.xy).x;
  r0.y = r1.w + r0.w;
  r0.x = dot(r0.xyz, r1.xyz);
  r0.x = r0.x * cb0[15].x + cb0[15].y;
  r0.xyz = cb0[16].xyz * r0.xxx;
  r0.xyz = cb0[17].xxx * r0.xyz;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r1.xyz, v0.xyz);
  r0.w = r0.w * r0.w;
  r1.x = saturate(r0.w * cb0[18].x + cb0[18].y);
  r0.w = saturate(r0.w * cb0[20].x + cb0[20].y);
  r0.w = log2(r0.w);
  r0.w = cb0[21].x * r0.w;
  r0.w = exp2(r0.w);
  r1.x = log2(r1.x);
  r1.y = cb0[12].x * r1.x;
  r1.x = cb0[19].x * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r1.x * r0.w;
  r1.x = exp2(r1.y);
  r0.xyz = r1.xxx * r0.xyz;
  r0.xyz = cb0[22].xxx * r0.xyz;
  r1.x = cb0[3].x * 0.75;
  r1.x = max(0, r1.x);
  r1.yzw = -cb12[7].xyz + v4.xyz;
  r2.x = dot(r1.yzw, r1.yzw);
  r2.y = sqrt(r2.x);
  r2.x = rsqrt(r2.x);
  r1.x = r2.y + -r1.x;
  r1.x = saturate(1.99999995e-005 * r1.x);
  r3.x = sqrt(r1.x);
  r1.x = r1.w / r2.y;
  r2.y = 0.015625 * r2.y;
  r2.y = min(1, r2.y);
  r4.z = sqrt(r2.y);
  r3.y = r1.x * 0.5 + 0.5;
  r3.xyzw = t15.SampleLevel(s3_s, r3.xy, 0).xyzw;
  r0.xyz = r3.xyz * r0.xyz;
  r2.yz = cb12[12].zw * v7.xy;
  r4.xy = float2(4,4) * r2.yz;
  r1.x = t21.SampleLevel(s1_s, r4.xyz, 0).x;
  r4.xyzw = t20.SampleLevel(s1_s, r4.xy, 0).xyzw;
  r4.xyzw = float4(-0,-0,-0,-1) + r4.xyzw;
  r4.xyzw = r1.xxxx * r4.xyzw + float4(0,0,0,1);
  r0.xyz = r0.xyz * r4.www + r4.xyz;
  r4.w = r1.w * r2.x + 1;
  r4.xy = r2.xx * r1.yz;
  r1.x = dot(r4.xyw, r4.xyw);
  r1.x = rsqrt(r1.x);
  r1.xy = r4.xy * r1.xx;
  r1.xy = r1.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r1.xyz = t0.Sample(s2_s, r1.xy).xyz;
  r1.w = cb13[1].x * cb0[1].x;
  r1.w = -r1.w * r3.w + r1.w;
  r0.xyz = r1.xyz * r1.www + r0.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}