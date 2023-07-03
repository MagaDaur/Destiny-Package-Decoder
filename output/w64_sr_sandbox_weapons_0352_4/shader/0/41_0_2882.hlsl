// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:38 2023
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[44];
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

  r0.xy = cb0[8].zw * v0.xy;
  r0.zw = r0.xy * cb0[22].xy + cb0[22].zw;
  r1.xy = float2(-0.5,-0.5) + r0.zw;
  r0.z = cb0[23].z + r0.w;
  r0.z = saturate(cb0[23].y * abs(r0.z) + cb0[23].x);
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r0.w = -cb0[24].x + r0.w;
  r0.w = saturate(cb0[27].x * r0.w);
  r0.w = r0.w * cb0[28].x + cb0[25].x;
  r0.z = r0.z * r0.w;
  r1.xy = r0.xy * cb0[18].xy + cb0[18].zw;
  r0.w = t1.Sample(s1_s, r1.xy).x;
  r1.xy = r0.xy * cb0[19].xy + cb0[19].zw;
  r1.x = t1.Sample(s1_s, r1.xy).x;
  r0.w = -r1.x + r0.w;
  r0.w = cb0[20].x * abs(r0.w);
  r0.z = r0.z * r0.w;
  r1.x = cb0[21].y * r0.w + cb0[21].x;
  r0.z = r1.x * r0.z;
  r2.xyzw = r0.yxyx * cb0[11].yxyx + cb0[11].wzwz;
  r2.xyzw = r2.wzwz * cb0[14].xyzw + r2.xyzw;
  r2.xyzw = frac(r2.xyzw);
  r2.xyzw = r2.xyzw * r2.xyzw;
  r1.y = dot(r2.xyzw, float4(251,251,251,251));
  r1.y = frac(r1.y);
  r1.y = cb0[15].y * r1.y + cb0[15].x;
  r1.y = -cb0[16].x + r1.y;
  r1.yz = cb0[17].zw * r1.yy + cb0[17].xy;
  r1.y = saturate(min(r1.y, r1.z));
  r0.z = r1.y * r0.z;
  r1.zw = cb0[29].xy * r0.zz;
  r2.xy = r0.xy * cb0[10].xy + cb0[10].zw;
  r2.xy = t0.Sample(s1_s, r2.xy).xy;
  r1.zw = r2.xy * r1.zz + r1.ww;
  r2.xy = r0.xy * cb0[31].xy + cb0[31].zw;
  r0.xy = r0.xy * cb0[30].xy + cb0[30].zw;
  r0.xy = t0.Sample(s1_s, r0.xy).xy;
  r2.xz = -cb0[39].xy + r2.xy;
  r0.z = cb0[32].z + r2.y;
  r0.z = saturate(cb0[32].y * abs(r0.z) + cb0[32].x);
  r2.x = dot(r2.xz, r2.xz);
  r2.x = sqrt(r2.x);
  r2.x = saturate(r2.x * cb0[41].x + cb0[41].y);
  r2.y = cb0[34].w + -cb0[33].w;
  r2.x = r2.x * r2.y + cb0[33].w;
  r0.z = r2.x * r0.z;
  r0.z = r0.z * r0.w;
  r0.z = r1.x * r0.z;
  r0.z = r1.y * r0.z;
  r0.zw = cb0[42].xy * r0.zz;
  r0.xy = r0.xy * r0.zz + r0.ww;
  r0.xy = r1.zw + r0.xy;
  r1.xyz = cb0[7].xyz * r0.yyy;
  r1.xyz = cb0[6].xyz * r0.xxx + r1.xyz;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r0.x = sqrt(r0.x);
  r0.xyz = cb0[5].xyz * r0.xxx + r1.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.x = dot(r0.xyz, cb12[4].xyz);
  r1.y = dot(r0.xyz, -cb12[5].xyz);
  r0.xyzw = cb0[9].xxxx * -r1.xyxy;
  r0.xyzw = cb0[43].xxxx * r0.xyzw;
  o0.xyzw = saturate(float4(1,1,-1,-1) * r0.xyzw);
  return;
}