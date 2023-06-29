// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:40 2023
TextureCube<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[63];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[36];
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
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r0.w);
  r0.xyz = r1.xxx * r0.xyz;
  r0.w = sqrt(r0.w);
  r1.x = dot(r0.xyz, v0.xyz);
  r1.x = r1.x + r1.x;
  r0.xyz = v0.xyz * r1.xxx + -r0.xyz;
  r1.xyz = t3.Sample(s7_s, v3.xy).xyz;
  r1.w = r1.y + -r1.z;
  r1.w = cmp(r1.w < 0.00470588217);
  r1.z = r1.w ? r1.y : r1.z;
  r2.xyz = ddx_coarse(r1.xyz);
  r3.xyz = ddy_coarse(r1.xyz);
  r2.xy = r2.xx * r2.yz;
  r2.zw = r3.xx * r3.yz;
  r3.xy = cmp(abs(r2.zw) < abs(r2.xy));
  r2.xy = r3.xy ? r2.xy : r2.zw;
  r1.w = -0.5 + r1.x;
  r1.w = cmp(abs(r1.w) < 0.00470588217);
  r2.z = r1.x + r1.y;
  r2.z = -1 + r2.z;
  r2.z = cmp(abs(r2.z) < 0.00588235306);
  r2.xy = cmp(r2.xy < float2(0,0));
  r2.x = r2.x ? r2.z : 0;
  r2.z = 1 + -r1.y;
  r2.x = r2.x ? r2.z : r1.x;
  r2.z = r2.x + r1.z;
  r2.z = -1 + r2.z;
  r2.z = cmp(abs(r2.z) < 0.00588235306);
  r2.y = r2.y ? r2.z : 0;
  r2.z = 1 + -r1.z;
  r2.x = r2.y ? r2.z : r2.x;
  r1.x = r1.w ? r2.x : r1.x;
  r1.xz = cmp(r1.xz >= float2(0.5,0.5));
  if (r1.z != 0) {
    r1.zw = v3.zw * cb7[6].xy + cb7[6].zw;
    r2.xy = v3.zw * cb7[7].xy + cb7[7].zw;
    r3.xyzw = t8.Sample(s1_s, r1.zw).wxyz;
    r2.xyz = t9.Sample(s1_s, r2.xy).xyz;
    r1.zw = r2.xy * cb7[8].xx + cb7[8].yy;
    r2.x = saturate(cb7[8].z + r2.z);
    r2.y = 4;
  } else {
    r1.y = cmp(r1.y >= 0.5);
    if (r1.y != 0) {
      r2.zw = v3.zw * cb7[3].xy + cb7[3].zw;
      r4.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r3.xyzw = t6.Sample(s1_s, r2.zw).wxyz;
      r4.xyz = t7.Sample(s1_s, r4.xy).xyz;
      r1.zw = r4.xy * cb7[5].xx + cb7[5].yy;
      r2.x = saturate(cb7[5].z + r4.z);
      r2.y = 2;
    } else {
      r2.zw = v3.zw * cb7[0].xy + cb7[0].zw;
      r4.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r3.xyzw = t4.Sample(s1_s, r2.zw).wxyz;
      r4.xyz = t5.Sample(s1_s, r4.xy).xyz;
      r1.zw = r4.xy * cb7[2].xx + cb7[2].yy;
      r2.x = saturate(cb7[2].z + r4.z);
      r2.y = 0;
    }
  }
  r1.y = (int)r2.y + 1;
  r1.x = r1.x ? r1.y : r2.y;
  r1.y = (int)r1.x * 9;
  r4.xyzw = saturate(cb7[r1.y+11].xyzw);
  r2.yz = saturate(cb7[r1.y+12].yz);
  r5.xyzw = saturate(cb7[r1.y+17].xyzw);
  r6.xyz = t0.Sample(s4_s, v3.xy).xyz;
  r7.xy = t1.Sample(s5_s, v3.xy).xy;
  r7.xy = r7.xy * cb0[35].xx + cb0[35].yy;
  r8.xyzw = t2.Sample(s6_s, v3.xy).xyzw;
  r2.w = cmp(r8.w >= 0.156862751);
  r6.w = r2.w ? 1.000000 : 0;
  r9.xyz = float3(-0.25,-0.188235298,-0.156862751) + r8.ywz;
  r7.zw = saturate(float2(1.231884,1.18604648) * r9.yz);
  r7.z = saturate(cb7[r1.y+15].y * r7.z + cb7[r1.y+15].x);
  r7.z = saturate(cb7[r1.y+15].w * r7.z + cb7[r1.y+15].z);
  r10.xy = saturate(float2(7.96875,4) * r8.wy);
  r8.z = cb0[2].x + 128.5;
  r8.z = 0.00390625 * r8.z;
  r8.w = cmp(0.0500000007 >= r10.x);
  r8.z = r8.w ? r8.z : -1;
  r9.yzw = saturate(float3(4,4,4) * r3.yzw);
  r3.yzw = saturate(float3(-0.25,-0.25,-0.25) + r3.yzw);
  r11.xyz = saturate(cb7[r1.y+9].xyz * r9.yzw + r3.yzw);
  r11.xyz = -cb7[r1.y+9].xyz + r11.xyz;
  r11.xyz = r4.xxx * r11.xyz + cb7[r1.y+9].xyz;
  r4.x = saturate(cb7[r1.y+13].y * r8.y + cb7[r1.y+13].x);
  r4.x = saturate(cb7[r1.y+13].w * r4.x + cb7[r1.y+13].z);
  r9.x = saturate(r9.x);
  r3.x = saturate(r3.x * r10.y + r9.x);
  r8.w = saturate(cb7[r1.y+13].y * r3.x + cb7[r1.y+13].x);
  r8.w = saturate(cb7[r1.y+13].w * r8.w + cb7[r1.y+13].z);
  r8.w = r8.w + -r4.x;
  r4.x = r4.z * r8.w + r4.x;
  r12.xyz = saturate(float3(4,4,4) * r6.xyz);
  r13.xyz = saturate(float3(-0.25,-0.25,-0.25) + r6.xyz);
  r11.xyz = saturate(r11.xyz * r12.xyz + r13.xyz);
  r10.yw = r1.zw * r4.yy + r7.xy;
  r2.x = -1 + r2.x;
  r4.y = r4.y * r2.x + 1;
  r3.yzw = saturate(cb7[r1.y+14].xyz * r9.yzw + r3.yzw);
  r3.yzw = -cb7[r1.y+14].xyz + r3.yzw;
  r3.yzw = r5.xxx * r3.yzw + cb7[r1.y+14].xyz;
  r3.yzw = saturate(r3.yzw * r12.xyz + r13.xyz);
  r4.z = saturate(cb7[r1.y+16].y * r8.y + cb7[r1.y+16].x);
  r4.z = saturate(cb7[r1.y+16].w * r4.z + cb7[r1.y+16].z);
  r3.x = saturate(cb7[r1.y+16].y * r3.x + cb7[r1.y+16].x);
  r3.x = saturate(cb7[r1.y+16].w * r3.x + cb7[r1.y+16].z);
  r3.x = r3.x + -r4.z;
  r3.x = r5.z * r3.x + r4.z;
  r1.zw = r1.zw * r5.yy + r7.xy;
  r2.x = r5.y * r2.x + 1;
  r5.xyz = r11.xyz + -r3.yzw;
  r9.xyz = r7.zzz * r5.xyz + r3.yzw;
  r3.yz = r10.yw + -r1.zw;
  r1.zw = r7.zz * r3.yz + r1.zw;
  r3.y = r4.x + -r3.x;
  r9.w = r7.z * r3.y + r3.x;
  r3.x = -r5.w + r4.w;
  r3.y = r7.z * r3.x + r5.w;
  r3.z = r4.y + -r2.x;
  r2.x = r7.z * r3.z + r2.x;
  r3.z = t12.CalculateLevelOfDetail(s3_s, r0.xyz);
  r3.z = max(cb0[31].x, r3.z);
  r0.xyz = t12.SampleLevel(s3_s, r0.xyz, r3.z).xyz;
  r0.x = dot(r0.xyz, cb0[32].xyz);
  r0.x = r0.x * cb0[33].x + cb0[33].y;
  r0.x = cb0[34].y * r0.x + cb0[34].x;
  r5.xyz = cb0[4].xxx * r0.xxx;
  r5.w = cb0[4].x * cb0[4].x;
  r0.x = r1.x ? 0 : 1;
  r5.xyzw = -cb0[26].xyzw + r5.xyzw;
  r5.xyzw = r0.xxxx * r5.xyzw + cb0[26].xyzw;
  r11.xyzw = saturate(float4(4,4,4,4) * r9.xyzw);
  r9.xyzw = saturate(float4(-0.25,-0.25,-0.25,-0.25) + r9.xyzw);
  r5.xyzw = r5.xyzw * r11.xyzw + r9.xyzw;
  r0.x = cb7[r1.y+12].x + 128.5;
  r0.x = 0.00390625 * r0.x;
  r0.y = cmp(0.0500000007 >= r4.w);
  r0.x = r0.y ? r0.x : -1;
  r0.y = min(r5.w, r2.x);
  r0.z = cmp(9.99999975e-005 < r2.y);
  r1.x = -2 * r2.y;
  r2.x = r2.y * -2 + -0.200000003;
  r2.x = r2.x * r0.y;
  r1.x = r2.x * -5.00250101 + r1.x;
  r1.x = min(r1.x, r0.y);
  r3.x = r0.z ? r1.x : r0.y;
  r4.xyz = r5.xyz + -r6.xyz;
  r4.xyz = r6.www * r4.xyz + r6.xyz;
  r0.yz = r1.zw + -r7.xy;
  r5.xy = r6.ww * r0.yz + r7.xy;
  r10.z = r8.y;
  r0.yz = r3.xy + -r10.zx;
  r0.yz = r6.ww * r0.yz + r10.zx;
  r1.x = r6.w * r2.z;
  o0.w = r2.w ? r0.x : r8.z;
  r0.x = cmp(0 != cb7[r1.y+10].w);
  r1.yzw = r0.xxx ? cb7[r1.y+10].xyz : 0;
  r2.xy = v3.xy * cb0[14].xy + cb0[14].zw;
  r0.x = t10.Sample(s2_s, r2.xy).x;
  r2.xy = v3.xy * cb0[16].xy + cb0[16].zw;
  r2.x = t11.Sample(s2_s, r2.xy).x;
  r2.x = cb0[17].x * r2.x;
  r0.x = r0.x * cb0[15].x + r2.x;
  r0.x = r7.w + r0.x;
  r2.x = cmp(r0.x < cb0[21].x);
  r2.y = cmp(r0.x >= cb0[21].x);
  r2.z = -cb0[23].x + r0.x;
  r2.z = saturate(cb0[23].y * r2.z);
  r2.w = cb0[19].x + -cb0[18].x;
  r2.z = r2.z * r2.w + cb0[18].x;
  r0.x = -cb0[24].x + r0.x;
  r0.x = saturate(cb0[24].y * r0.x);
  r2.w = -cb0[19].x + cb0[4].x;
  r0.x = r0.x * r2.w + cb0[19].x;
  r2.x = r2.x ? r2.z : 0;
  r0.x = r2.y ? r0.x : r2.x;
  r0.x = r7.w * r0.x;
  r0.x = cb0[25].x * r0.x;
  r1.yzw = r0.xxx * r1.yzw;
  r1.yzw = r1.yzw * r6.www;
  r2.xyz = r1.yzw * r7.zzz;
  r1.yzw = r1.yzw * r7.zzz + r4.xyz;
  r0.x = max(r1.y, r1.z);
  r0.x = max(r0.x, r1.w);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r1.yzw = r4.xyz * r0.xxx + r2.xyz;
  r0.x = max(r1.y, r1.z);
  r0.x = max(r0.x, r1.w);
  r0.x = max(1, r0.x);
  r1.yzw = r1.yzw / r0.xxx;
  r0.x = max(r2.x, r2.y);
  r0.x = max(r0.x, r2.z);
  r2.x = dot(r5.xy, r5.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r5.z = sqrt(r2.x);
  r2.x = dot(r5.xyz, r5.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = r5.xyz * r2.xxx;
  r3.xyz = v2.xyz * r2.yyy;
  r2.xyw = v1.xyz * r2.xxx + r3.xyz;
  r2.xyz = v0.xyz * r2.zzz + r2.xyw;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = saturate(cb0[12].x);
  r3.x = dot(v0.xyz, v0.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = v0.xyz * r3.xxx;
  r3.x = dot(cb0[5].xyz, r3.xyz);
  r3.y = cb0[4].x + -cb0[3].x;
  r3.x = saturate(r3.x * r3.y + cb0[3].x);
  r3.y = -cb0[6].z + v4.z;
  r3.y = cb0[7].x * r3.y;
  r3.y = max(0, r3.y);
  r3.y = log2(r3.y);
  r3.y = cb0[8].x * r3.y;
  r3.y = exp2(r3.y);
  r3.y = saturate(cb0[9].x * r3.y);
  r3.x = r3.x * r3.y;
  r0.w = saturate(r0.w * cb0[10].x + cb0[10].y);
  r0.w = r3.x * r0.w;
  r3.x = dot(r1.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.x = max(9.99999975e-005, r3.x);
  r3.x = log2(r3.x);
  r3.x = -cb0[11].x * r3.x;
  r3.x = exp2(r3.x);
  r0.w = r3.x * r0.w;
  o2.w = v0.w + r2.w;
  r0.x = r0.w * cb0[13].x + r0.x;
  r0.y = r0.y * 0.125 + 0.375;
  o1.xyz = saturate(r2.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r8.x = saturate(r8.x);
  r0.x = r8.x + r0.x;
  o2.y = 0.5 * r0.x;
  o2.z = 0.800000012 * r1.x;
  o0.xyz = r1.yzw;
  o1.w = 0;
  o2.x = r0.z;
  return;
}