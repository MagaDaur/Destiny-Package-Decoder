// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:45 2023
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[36];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[4];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[19];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float3 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.yz = v3.xy * cb0[17].xy + cb0[17].zw;
  r1.xy = r0.yz * cb7[3].xy + cb7[3].zw;
  r0.yz = r0.yz * cb7[4].xy + cb7[4].zw;
  r1.xyzw = t6.Sample(s1_s, r1.xy).xyzw;
  r0.yzw = t7.Sample(s1_s, r0.yz).xyz;
  r0.yz = r0.yz * cb7[5].xx + cb7[5].yy;
  r0.w = saturate(cb7[5].z + r0.w);
  r2.xyzw = saturate(cb7[29].xyzw);
  r3.xy = saturate(cb7[30].yz);
  r4.xyzw = saturate(cb7[35].xyzw);
  r5.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r3.zw = t1.Sample(s3_s, v3.xy).xy;
  r3.zw = r3.zw * cb0[18].xx + cb0[18].yy;
  r6.xyzw = t2.Sample(s4_s, v3.xy).xyzw;
  r5.w = cmp(r6.w >= 0.156862751);
  r7.x = r5.w ? 1.000000 : 0;
  r7.yzw = float3(-0.25,-0.188235298,-0.156862751) + r6.ywz;
  r7.zw = saturate(float2(1.231884,1.18604648) * r7.zw);
  r8.xyz = saturate(float3(7.96875,7.96875,4) * r6.zwy);
  r6.z = v6.x ? 1 : -1;
  r6.w = saturate(cb7[33].y * r7.z + cb7[33].x);
  r6.w = saturate(cb7[33].w * r6.w + cb7[33].z);
  r7.z = cb0[2].x + 128.5;
  r7.z = 0.00390625 * r7.z;
  r9.x = cmp(0.0500000007 >= r8.y);
  r7.z = r9.x ? r7.z : -1;
  r9.xyz = saturate(float3(4,4,4) * r1.xyz);
  r1.xyz = saturate(float3(-0.25,-0.25,-0.25) + r1.xyz);
  r10.xyz = saturate(cb7[27].xyz * r9.xyz + r1.xyz);
  r10.xyz = -cb7[27].xyz + r10.xyz;
  r10.xyz = r2.xxx * r10.xyz + cb7[27].xyz;
  r2.x = saturate(cb7[31].y * r6.y + cb7[31].x);
  r2.x = saturate(cb7[31].w * r2.x + cb7[31].z);
  r7.y = saturate(r7.y);
  r1.w = saturate(r1.w * r8.z + r7.y);
  r7.y = saturate(cb7[31].y * r1.w + cb7[31].x);
  r7.y = saturate(cb7[31].w * r7.y + cb7[31].z);
  r7.y = r7.y + -r2.x;
  r2.x = r2.z * r7.y + r2.x;
  r11.xyz = saturate(float3(4,4,4) * r5.xyz);
  r12.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r10.xyz = saturate(r10.xyz * r11.xyz + r12.xyz);
  r13.xy = r0.yz * r2.yy + r3.zw;
  r0.w = -1 + r0.w;
  r2.y = r2.y * r0.w + 1;
  r1.xyz = saturate(cb7[32].xyz * r9.xyz + r1.xyz);
  r1.xyz = -cb7[32].xyz + r1.xyz;
  r1.xyz = r4.xxx * r1.xyz + cb7[32].xyz;
  r1.xyz = saturate(r1.xyz * r11.xyz + r12.xyz);
  r2.z = saturate(cb7[34].y * r6.y + cb7[34].x);
  r2.z = saturate(cb7[34].w * r2.z + cb7[34].z);
  r1.w = saturate(cb7[34].y * r1.w + cb7[34].x);
  r1.w = saturate(cb7[34].w * r1.w + cb7[34].z);
  r1.w = r1.w + -r2.z;
  r1.w = r4.z * r1.w + r2.z;
  r0.yz = r0.yz * r4.yy + r3.zw;
  r0.w = r4.y * r0.w + 1;
  r4.xyz = r10.xyz + -r1.xyz;
  r1.xyz = r6.www * r4.xyz + r1.xyz;
  r4.xy = r13.xy + -r0.yz;
  r0.yz = r6.ww * r4.xy + r0.yz;
  r2.x = r2.x + -r1.w;
  r1.w = r6.w * r2.x + r1.w;
  r2.x = -r4.w + r2.w;
  r4.y = r6.w * r2.x + r4.w;
  r2.x = r2.y + -r0.w;
  r0.w = r6.w * r2.x + r0.w;
  r2.x = cb7[30].x + 128.5;
  r2.x = 0.00390625 * r2.x;
  r2.y = cmp(0.0500000007 >= r2.w);
  r2.x = r2.y ? r2.x : -1;
  r0.w = min(r1.w, r0.w);
  r1.w = cmp(9.99999975e-005 < r3.x);
  r2.y = -2 * r3.x;
  r2.z = r3.x * -2 + -0.200000003;
  r2.z = r2.z * r0.w;
  r2.y = r2.z * -5.00250101 + r2.y;
  r2.y = min(r2.y, r0.w);
  r4.x = r1.w ? r2.y : r0.w;
  r1.xyz = r1.xyz + -r5.xyz;
  r1.xyz = r7.xxx * r1.xyz + r5.xyz;
  r0.yz = r0.yz + -r3.zw;
  r5.xy = r7.xx * r0.yz + r3.zw;
  r8.w = r6.y;
  r0.yz = r4.xy + -r8.wy;
  r0.yz = r7.xx * r0.yz + r8.wy;
  r0.w = r7.x * r3.y;
  o0.w = r5.w ? r2.x : r7.z;
  r1.w = cmp(0 != cb7[28].w);
  r2.xyz = r1.www ? cb7[28].xyz : 0;
  r1.w = cb0[16].x * r7.w;
  r2.xyz = r1.www * r2.xyz;
  r2.xyz = r2.xyz * r7.xxx;
  r3.xyz = r2.xyz * r6.www;
  r2.xyz = r2.xyz * r6.www + r1.xyz;
  r1.w = max(r2.x, r2.y);
  r1.w = max(r1.w, r2.z);
  r1.w = saturate(-1 + r1.w);
  r1.w = 1 + -r1.w;
  r1.xyz = r1.xyz * r1.www + r3.xyz;
  r1.w = max(r1.x, r1.y);
  r1.w = max(r1.w, r1.z);
  r1.w = max(1, r1.w);
  r1.xyz = r1.xyz / r1.www;
  r1.w = max(r3.x, r3.y);
  r1.w = max(r1.w, r3.z);
  r2.x = dot(r5.xy, r5.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r5.z = sqrt(r2.x);
  r2.x = dot(r5.xyz, r5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = r5.xyz * r2.xxx;
  r3.xyz = v0.xyz * r6.zzz;
  r4.xyz = v2.xyz * r2.yyy;
  r2.xyw = v1.xyz * r2.xxx + r4.xyz;
  r2.xyz = r3.xyz * r2.zzz + r2.xyw;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = cmp(0.000000 != cb0[4].x);
  if (r2.w != 0) {
    r4.xy = ddx_coarse(v3.xy);
    r2.w = dot(r4.xy, r4.xy);
    r2.w = sqrt(r2.w);
    r4.xy = ddy_coarse(v3.xy);
    r3.w = dot(r4.xy, r4.xy);
    r3.w = sqrt(r3.w);
    r2.w = max(r3.w, r2.w);
    r2.w = 1 / r2.w;
    r2.w = log2(r2.w);
    r3.w = floor(r2.w);
    r3.w = exp2(r3.w);
    r4.x = ceil(r2.w);
    r4.x = exp2(r4.x);
    r4.yz = v3.xy * r3.ww;
    r4.yz = floor(r4.yz);
    r3.w = dot(r4.yz, float2(17,0.100000001));
    r3.w = sin(r3.w);
    r3.w = 10000 * r3.w;
    r4.y = r4.z * 13 + r4.y;
    r4.y = sin(r4.y);
    r4.y = 0.100000001 + abs(r4.y);
    r3.w = r4.y * r3.w;
    r3.w = frac(r3.w);
    r4.xy = v3.xy * r4.xx;
    r4.xy = floor(r4.xy);
    r4.z = dot(r4.xy, float2(17,0.100000001));
    r4.z = sin(r4.z);
    r4.z = 10000 * r4.z;
    r4.x = r4.y * 13 + r4.x;
    r4.x = sin(r4.x);
    r4.x = 0.100000001 + abs(r4.x);
    r4.x = r4.z * r4.x;
    r4.x = frac(r4.x);
    r2.w = frac(r2.w);
    r4.x = r4.x + -r3.w;
    r3.w = r2.w * r4.x + r3.w;
    r4.x = 1 + -r2.w;
    r2.w = min(r4.x, r2.w);
    r4.x = r3.w * r3.w;
    r4.y = r2.w + r2.w;
    r4.z = 1 + -r2.w;
    r4.y = r4.y * r4.z;
    r4.w = -r2.w * 0.5 + r3.w;
    r4.xw = r4.xw / r4.yz;
    r5.x = 1 + -r3.w;
    r5.x = r5.x * r5.x;
    r4.y = r5.x / r4.y;
    r4.y = 1 + -r4.y;
    r4.z = cmp(r3.w < r4.z);
    r2.w = cmp(r3.w < r2.w);
    r2.w = r2.w ? r4.x : r4.w;
    r2.w = r4.z ? r2.w : r4.y;
    r3.w = cmp(0.5 >= cb13[3].x);
    r4.x = cb13[3].x + cb13[3].x;
    r4.x = r2.w * -r4.x + r4.x;
    r4.y = cb13[3].x * 2 + -2;
    r2.w = r2.w * r4.y + 1;
    r2.w = r3.w ? r4.x : r2.w;
  } else {
    r2.w = cb13[3].x;
  }
  r2.w = r8.x + -r2.w;
  r2.w = cmp(r2.w < 0);
  if (r2.w != 0) discard;
  r2.w = saturate(cb0[14].x);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = rsqrt(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r3.x = dot(cb0[7].xyz, r3.xyz);
  r3.y = cb0[6].x + -cb0[5].x;
  r3.x = saturate(r3.x * r3.y + cb0[5].x);
  r3.y = -cb0[8].z + v4.z;
  r3.y = cb0[9].x * r3.y;
  r3.y = max(0, r3.y);
  r3.y = log2(r3.y);
  r3.y = cb0[10].x * r3.y;
  r3.y = exp2(r3.y);
  r3.y = saturate(cb0[11].x * r3.y);
  r3.x = r3.x * r3.y;
  r0.x = saturate(r0.x * cb0[12].x + cb0[12].y);
  r0.x = r3.x * r0.x;
  r3.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.x = max(9.99999975e-005, r3.x);
  r3.x = log2(r3.x);
  r3.x = -cb0[13].x * r3.x;
  r3.x = exp2(r3.x);
  r0.x = r3.x * r0.x;
  o2.w = v0.w + r2.w;
  r0.x = r0.x * cb0[15].x + r1.w;
  r0.y = r0.y * 0.125 + 0.375;
  o1.xyz = saturate(r2.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r6.x = saturate(r6.x);
  r0.x = r6.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xw;
  o0.xyz = r1.xyz;
  o1.w = 0;
  o2.x = r0.z;
  return;
}