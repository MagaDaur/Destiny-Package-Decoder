// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:02 2023
Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[29];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(cb0[6].xy, v0.xy);
  r0.x = cb0[6].z + r0.x;
  r0.z = dot(cb0[7].xy, v0.xy);
  r0.y = cb0[7].z + r0.z;
  r0.zw = r0.yx * cb0[8].yx + cb0[8].wz;
  r1.xy = round(r0.zw);
  r0.zw = -r1.xy + r0.zw;
  r1.xy = abs(r0.zw) * float2(-16,-16) + float2(8,8);
  r0.zw = r1.xy * r0.zw;
  r1.xy = abs(r0.zw) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r0.zw = r1.xy * r0.zw;
  r0.zw = cb0[9].yx * r0.zw + r0.xy;
  r1.xy = r0.wz * cb0[10].yx + cb0[10].wz;
  r1.zw = round(r1.xy);
  r1.xy = r1.xy + -r1.zw;
  r1.zw = abs(r1.xy) * float2(-16,-16) + float2(8,8);
  r1.xy = r1.xy * r1.zw;
  r1.zw = abs(r1.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r1.xy = r1.xy * r1.zw;
  r0.zw = cb0[11].yx * r1.xy + r0.zw;
  r1.xy = r0.xy + -r0.zw;
  r0.zw = cb0[12].xx * r1.xy + r0.zw;
  r0.zw = r0.zw * cb0[13].xy + cb0[13].zw;
  r0.w = t0.Sample(s1_s, r0.zw).x;
  r0.w = -cb0[15].x + r0.w;
  r0.z = r0.w * cb0[14].x + r0.z;
  r0.z = cb0[16].z + r0.z;
  r0.z = saturate(cb0[16].y * abs(r0.z) + cb0[16].x);
  r0.y = cb0[17].z + r0.y;
  r0.y = saturate(cb0[17].y * abs(r0.y) + cb0[17].x);
  r0.y = r0.z * r0.y;
  r0.x = cb0[18].z + r0.x;
  r0.x = saturate(cb0[18].y * abs(r0.x) + cb0[18].x);
  r0.x = log2(r0.x);
  r0.x = cb0[19].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.y * r0.x + 1;
  r0.yz = v0.yx * cb0[8].yx + cb0[8].wz;
  r1.xy = round(r0.yz);
  r0.yz = -r1.xy + r0.yz;
  r1.xy = abs(r0.yz) * float2(-16,-16) + float2(8,8);
  r0.yz = r1.xy * r0.yz;
  r1.xy = abs(r0.yz) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r0.yz = r1.xy * r0.yz;
  r0.yz = cb0[9].yx * r0.yz + v0.xy;
  r1.xy = r0.zy * cb0[10].yx + cb0[10].wz;
  r1.zw = round(r1.xy);
  r1.xy = r1.xy + -r1.zw;
  r1.zw = abs(r1.xy) * float2(-16,-16) + float2(8,8);
  r1.xy = r1.xy * r1.zw;
  r1.zw = abs(r1.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r1.xy = r1.xy * r1.zw;
  r0.yz = cb0[11].yx * r1.xy + r0.yz;
  r1.xy = v0.xy + -r0.yz;
  r0.yz = cb0[12].xx * r1.xy + r0.yz;
  r0.yz = r0.yz * cb0[13].xy + cb0[13].zw;
  r0.z = t0.Sample(s1_s, r0.yz).x;
  r0.z = -cb0[15].x + r0.z;
  r0.y = r0.z * cb0[14].x + r0.y;
  r0.y = cb0[16].z + r0.y;
  r0.y = saturate(cb0[16].y * abs(r0.y) + cb0[16].x);
  r0.z = cb0[17].z + v0.y;
  r0.z = saturate(cb0[17].y * abs(r0.z) + cb0[17].x);
  r0.y = r0.y * r0.z;
  r0.z = cb0[18].z + v0.x;
  r0.z = saturate(cb0[18].y * abs(r0.z) + cb0[18].x);
  r0.z = log2(r0.z);
  r0.z = cb0[19].x * r0.z;
  r0.z = exp2(r0.z);
  r0.x = r0.y * r0.z + r0.x;
  r0.x = 1 + r0.x;
  r0.x = r0.x * cb0[20].x + cb0[20].y;
  r0.y = cmp(cb0[26].x < cb0[25].x);
  r0.y = r0.y ? 1.000000 : 0;
  r0.z = saturate(cb0[21].y);
  r1.xyz = -cb0[23].xyz / cb0[22].xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = saturate(-cb0[12].x + r0.w);
  r0.w = saturate(cb0[24].y * r0.w + cb0[24].x);
  r0.z = r0.z + r0.w;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.z = cmp(0.000000 != cb0[28].x);
  if (r0.z != 0) {
    r0.zw = ddx_coarse(v0.xy);
    r0.z = dot(r0.zw, r0.zw);
    r1.xy = ddy_coarse(v0.xy);
    r0.w = dot(r1.xy, r1.xy);
    r0.zw = sqrt(r0.zw);
    r0.z = max(r0.z, r0.w);
    r0.z = 1 / r0.z;
    r0.z = log2(r0.z);
    r0.w = floor(r0.z);
    r0.w = exp2(r0.w);
    r1.x = ceil(r0.z);
    r1.x = exp2(r1.x);
    r1.yz = v0.xy * r0.ww;
    r1.yz = floor(r1.yz);
    r0.w = dot(r1.yz, float2(17,0.100000001));
    r0.w = sin(r0.w);
    r0.w = 10000 * r0.w;
    r1.y = r1.z * 13 + r1.y;
    r1.y = sin(r1.y);
    r1.y = 0.100000001 + abs(r1.y);
    r0.w = r1.y * r0.w;
    r1.xy = v0.xy * r1.xx;
    r1.xy = floor(r1.xy);
    r1.z = dot(r1.xy, float2(17,0.100000001));
    r1.z = sin(r1.z);
    r1.z = 10000 * r1.z;
    r1.x = r1.y * 13 + r1.x;
    r1.x = sin(r1.x);
    r1.x = 0.100000001 + abs(r1.x);
    r1.x = r1.z * r1.x;
    r1.x = frac(r1.x);
    r0.zw = frac(r0.zw);
    r1.x = r1.x + -r0.w;
    r0.w = r0.z * r1.x + r0.w;
    r1.x = 1 + -r0.z;
    r0.z = min(r1.x, r0.z);
    r1.x = r0.w * r0.w;
    r1.y = r0.z + r0.z;
    r1.z = 1 + -r0.z;
    r1.y = r1.y * r1.z;
    r1.w = -r0.z * 0.5 + r0.w;
    r1.xw = r1.xw / r1.yz;
    r2.x = 1 + -r0.w;
    r2.x = r2.x * r2.x;
    r1.y = r2.x / r1.y;
    r1.y = 1 + -r1.y;
    r1.z = cmp(r0.w < r1.z);
    r0.z = cmp(r0.w < r0.z);
    r0.z = r0.z ? r1.x : r1.w;
    r0.z = r1.z ? r0.z : r1.y;
    r0.w = cmp(0.5 >= cb0[27].x);
    r1.x = cb0[27].x + cb0[27].x;
    r1.x = r0.z * -r1.x + r1.x;
    r1.y = cb0[27].x * 2 + -2;
    r0.z = r0.z * r1.y + 1;
    r0.z = r0.w ? r1.x : r0.z;
  } else {
    r0.z = cb0[27].x;
  }
  r0.x = r0.x * r0.y + -r0.z;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(1,1,1,1);
  return;
}