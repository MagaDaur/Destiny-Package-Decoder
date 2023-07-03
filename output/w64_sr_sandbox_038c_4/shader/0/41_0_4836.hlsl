// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[39];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  uint v1 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb0[11].zw * v0.xy;
  r0.xy = r0.xy * cb0[1].xy + cb0[1].zw;
  r0.zw = -cb0[3].xy + r0.xy;
  r1.x = dot(r0.zw, r0.zw);
  r1.x = r1.x * r1.x;
  r1.x = cb0[2].x * r1.x;
  r0.xy = r0.zw * r1.xx + r0.xy;
  r0.z = r0.y * cb0[16].y + cb0[16].w;
  r0.w = round(r0.z);
  r0.z = r0.z + -r0.w;
  r0.w = abs(r0.z) * -16 + 8;
  r0.z = r0.z * r0.w;
  r0.w = abs(r0.z) * 0.224999994 + 0.774999976;
  r0.z = r0.z * r0.w;
  r0.z = cb0[17].y * r0.z + r0.x;
  r0.z = r0.z * cb0[18].x + cb0[18].z;
  r0.z = frac(r0.z);
  r0.z = cb0[19].z + r0.z;
  r0.z = saturate(cb0[19].y * abs(r0.z) + cb0[19].x);
  r1.xy = r0.xy * cb0[20].xy + cb0[20].zw;
  r0.w = t5.Sample(s1_s, r1.xy).x;
  r0.w = max(0, r0.w);
  r0.w = log2(r0.w);
  r0.w = cb0[21].x * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.z * r0.w;
  r1.xy = r0.xy * cb0[13].xy + cb0[13].zw;
  r0.w = t4.Sample(s1_s, r1.xy).x;
  r0.w = max(0, r0.w);
  r0.w = log2(r0.w);
  r0.w = cb0[14].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r1.x = cb0[24].x * r0.w;
  r1.x = r1.x * cb0[25].x + r0.z;
  r1.yzw = cb0[15].xyz * r0.zzz;
  r1.yzw = cb0[12].xyz * r0.www + r1.yzw;
  r1.yzw = cb0[36].xxx * r1.yzw;
  r0.z = cb0[22].z + r0.y;
  r0.z = saturate(cb0[22].y * abs(r0.z) + cb0[22].x);
  r0.z = log2(r0.z);
  r0.z = cb0[23].x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z + r1.x;
  r2.xy = r0.xy * cb0[26].xy + cb0[26].zw;
  r0.xy = -cb0[32].xy + r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb0[34].x + cb0[34].y);
  r0.x = log2(r0.x);
  r0.x = cb0[35].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = min(1, r0.x);
  r0.yw = float2(-0.5,-0.5) + r2.xy;
  r0.y = dot(r0.yw, r0.yw);
  r0.y = sqrt(r0.y);
  r0.y = -cb0[27].x + r0.y;
  r0.y = saturate(cb0[30].x * r0.y);
  r0.y = r0.y * cb0[31].x + cb0[28].x;
  r0.y = r0.z * r0.y;
  r0.x = r0.y * r0.x;
  r0.x = cb0[38].x * r0.x;
  r0.y = cb0[37].x * r0.x;
  o0.w = saturate(-r0.x * cb0[37].x + 1);
  r0.xyz = r1.yzw * r0.yyy;
  r0.xyz = cb13[1].www * r0.xyz;
  o0.xyz = cb13[1].xxx * r0.xyz;
  return;
}