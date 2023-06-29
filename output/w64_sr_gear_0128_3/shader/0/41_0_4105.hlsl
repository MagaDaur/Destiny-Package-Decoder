// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:45 2023
Texture2D<float4> t14 : register(t14);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

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
  float4 cb0[41];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r0.w);
  r0.xyz = r1.xxx * r0.xyz;
  r0.w = sqrt(r0.w);
  r1.x = dot(r0.xyz, v0.xyz);
  r2.x = dot(r0.xyz, v1.xyz);
  r2.y = dot(r0.xyz, v2.xyz);
  r0.xyz = t3.Sample(s6_s, v3.xy).xyz;
  r1.y = r0.y + -r0.z;
  r1.y = cmp(r1.y < 0.00470588217);
  r0.z = r1.y ? r0.y : r0.z;
  r3.xyz = ddx_coarse(r0.xyz);
  r4.xyz = ddy_coarse(r0.xyz);
  r1.yz = r3.xx * r3.yz;
  r2.zw = r4.xx * r4.yz;
  r3.xy = cmp(abs(r2.zw) < abs(r1.yz));
  r1.yz = r3.xy ? r1.yz : r2.zw;
  r1.w = -0.5 + r0.x;
  r1.w = cmp(abs(r1.w) < 0.00470588217);
  r2.z = r0.x + r0.y;
  r2.z = -1 + r2.z;
  r2.z = cmp(abs(r2.z) < 0.00588235306);
  r1.yz = cmp(r1.yz < float2(0,0));
  r1.y = r1.y ? r2.z : 0;
  r2.z = 1 + -r0.y;
  r1.y = r1.y ? r2.z : r0.x;
  r2.z = r1.y + r0.z;
  r2.z = -1 + r2.z;
  r2.z = cmp(abs(r2.z) < 0.00588235306);
  r1.z = r1.z ? r2.z : 0;
  r2.z = 1 + -r0.z;
  r1.y = r1.z ? r2.z : r1.y;
  r0.x = r1.w ? r1.y : r0.x;
  r0.xz = cmp(r0.xz >= float2(0.5,0.5));
  if (r0.z != 0) {
    r1.yz = v3.zw * cb7[6].xy + cb7[6].zw;
    r2.zw = v3.zw * cb7[7].xy + cb7[7].zw;
    r3.xyzw = t8.Sample(s1_s, r1.yz).wxyz;
    r1.yzw = t9.Sample(s1_s, r2.zw).xyz;
    r1.yz = r1.yz * cb7[8].xx + cb7[8].yy;
    r0.z = saturate(cb7[8].z + r1.w);
    r1.w = 4;
  } else {
    r0.y = cmp(r0.y >= 0.5);
    if (r0.y != 0) {
      r2.zw = v3.zw * cb7[3].xy + cb7[3].zw;
      r4.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r3.xyzw = t6.Sample(s1_s, r2.zw).wxyz;
      r4.xyz = t7.Sample(s1_s, r4.xy).xyz;
      r1.yz = r4.xy * cb7[5].xx + cb7[5].yy;
      r0.z = saturate(cb7[5].z + r4.z);
      r1.w = 2;
    } else {
      r2.zw = v3.zw * cb7[0].xy + cb7[0].zw;
      r4.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r3.xyzw = t4.Sample(s1_s, r2.zw).wxyz;
      r4.xyz = t5.Sample(s1_s, r4.xy).xyz;
      r1.yz = r4.xy * cb7[2].xx + cb7[2].yy;
      r0.z = saturate(cb7[2].z + r4.z);
      r1.w = 0;
    }
  }
  r0.y = (int)r1.w + 1;
  r0.x = r0.x ? r0.y : r1.w;
  r0.x = (int)r0.x * 9;
  r4.xyzw = saturate(cb7[r0.x+11].xyzw);
  r2.zw = saturate(cb7[r0.x+12].yz);
  r5.xyzw = saturate(cb7[r0.x+17].xyzw);
  r6.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r7.xy = t1.Sample(s4_s, v3.xy).xy;
  r7.xy = r7.xy * cb0[40].xx + cb0[40].yy;
  r8.xyzw = t2.Sample(s5_s, v3.xy).xyzw;
  r0.y = cmp(r8.w >= 0.156862751);
  r1.w = r0.y ? 1.000000 : 0;
  r7.zw = float2(-0.188235298,-0.156862751) + r8.wz;
  r7.zw = saturate(float2(1.231884,1.18604648) * r7.zw);
  r6.w = saturate(cb7[r0.x+15].y * r7.z + cb7[r0.x+15].x);
  r6.w = saturate(cb7[r0.x+15].w * r6.w + cb7[r0.x+15].z);
  r9.y = saturate(7.96875 * r8.w);
  r9.x = saturate(r7.w + r8.y);
  r7.z = cb0[2].x + 128.5;
  r7.z = 0.00390625 * r7.z;
  r8.y = cmp(0.0500000007 >= r9.y);
  r7.z = r8.y ? r7.z : -1;
  r8.yzw = saturate(float3(4,4,4) * r3.yzw);
  r3.yzw = saturate(float3(-0.25,-0.25,-0.25) + r3.yzw);
  r10.xyz = saturate(cb7[r0.x+9].xyz * r8.yzw + r3.yzw);
  r10.xyz = -cb7[r0.x+9].xyz + r10.xyz;
  r10.xyz = r4.xxx * r10.xyz + cb7[r0.x+9].xyz;
  r4.x = saturate(cb7[r0.x+13].y * r9.x + cb7[r0.x+13].x);
  r4.x = saturate(cb7[r0.x+13].w * r4.x + cb7[r0.x+13].z);
  r9.z = 4 * r9.x;
  r9.z = min(1, r9.z);
  r9.w = -0.25 + r9.x;
  r9.w = max(0, r9.w);
  r3.x = saturate(r3.x * r9.z + r9.w);
  r9.z = saturate(cb7[r0.x+13].y * r3.x + cb7[r0.x+13].x);
  r9.z = saturate(cb7[r0.x+13].w * r9.z + cb7[r0.x+13].z);
  r9.z = r9.z + -r4.x;
  r4.x = r4.z * r9.z + r4.x;
  r11.xyz = saturate(float3(4,4,4) * r6.xyz);
  r12.xyz = saturate(float3(-0.25,-0.25,-0.25) + r6.xyz);
  r10.xyz = saturate(r10.xyz * r11.xyz + r12.xyz);
  r9.zw = r1.yz * r4.yy + r7.xy;
  r0.z = -1 + r0.z;
  r4.y = r4.y * r0.z + 1;
  r3.yzw = saturate(cb7[r0.x+14].xyz * r8.yzw + r3.yzw);
  r3.yzw = -cb7[r0.x+14].xyz + r3.yzw;
  r3.yzw = r5.xxx * r3.yzw + cb7[r0.x+14].xyz;
  r3.yzw = saturate(r3.yzw * r11.xyz + r12.xyz);
  r4.z = saturate(cb7[r0.x+16].y * r9.x + cb7[r0.x+16].x);
  r4.z = saturate(cb7[r0.x+16].w * r4.z + cb7[r0.x+16].z);
  r3.x = saturate(cb7[r0.x+16].y * r3.x + cb7[r0.x+16].x);
  r3.x = saturate(cb7[r0.x+16].w * r3.x + cb7[r0.x+16].z);
  r3.x = r3.x + -r4.z;
  r3.x = r5.z * r3.x + r4.z;
  r1.yz = r1.yz * r5.yy + r7.xy;
  r0.z = r5.y * r0.z + 1;
  r5.xyz = r10.xyz + -r3.yzw;
  r3.yzw = r6.www * r5.xyz + r3.yzw;
  r5.xy = r9.zw + -r1.yz;
  r1.yz = r6.ww * r5.xy + r1.yz;
  r4.x = r4.x + -r3.x;
  r3.x = r6.w * r4.x + r3.x;
  r4.x = -r5.w + r4.w;
  r5.y = r6.w * r4.x + r5.w;
  r4.x = r4.y + -r0.z;
  r0.z = r6.w * r4.x + r0.z;
  r4.x = 1 + -r7.w;
  r0.x = cb7[r0.x+12].x + 128.5;
  r0.x = 0.00390625 * r0.x;
  r4.y = cmp(0.0500000007 >= r4.w);
  r0.x = r4.y ? r0.x : -1;
  r0.z = min(r3.x, r0.z);
  r3.x = cmp(9.99999975e-005 < r2.z);
  r4.y = -2 * r2.z;
  r2.z = r2.z * -2 + -0.200000003;
  r2.z = r2.z * r0.z;
  r2.z = r2.z * -5.00250101 + r4.y;
  r2.z = min(r2.z, r0.z);
  r5.x = r3.x ? r2.z : r0.z;
  r3.xyz = r3.yzw * r4.xxx + -r6.xyz;
  r3.xyz = r1.www * r3.xyz + r6.xyz;
  r1.yz = r1.yz + -r7.xy;
  r4.xy = r1.ww * r1.yz + r7.xy;
  r1.yz = r5.xy + -r9.xy;
  r1.yz = r1.ww * r1.yz + r9.xy;
  r0.z = r1.w * r2.w;
  o0.w = r0.y ? r0.x : r7.z;
  r0.xy = v3.xy * cb0[15].xy + cb0[15].zw;
  r5.xyw = t10.Sample(s2_s, r0.xy).yzx;
  r5.xyw = saturate(r5.xyw);
  r0.x = cmp(r5.x < r5.y);
  r6.xy = r5.yx;
  r6.zw = float2(-1,0.666666687);
  r9.xy = r6.yx;
  r9.zw = float2(0,-0.333333343);
  r6.xyzw = r0.xxxx ? r6.xyzw : r9.xyzw;
  r0.x = cmp(r5.w < r6.x);
  r5.xyz = r6.xyw;
  r6.xyw = r5.wyx;
  r5.xyzw = r0.xxxx ? r5.xyzw : r6.xyzw;
  r0.x = min(r5.w, r5.y);
  r0.x = r5.x + -r0.x;
  r0.y = r5.w + -r5.y;
  r1.w = r0.x * 6 + 1.00000001e-007;
  r0.y = r0.y / r1.w;
  r0.y = r5.z + r0.y;
  r1.w = 1.00000001e-007 + r5.x;
  r0.x = r0.x / r1.w;
  r0.y = saturate(cb0[16].x + abs(r0.y));
  r0.x = saturate(cb0[17].x + r0.x);
  r1.w = saturate(cb0[18].x + r5.x);
  r5.xyz = float3(1,0.666666687,0.333333343) + r0.yyy;
  r5.xyz = frac(r5.xyz);
  r5.xyz = r5.xyz * float3(6,6,6) + float3(-3,-3,-3);
  r5.xyz = saturate(float3(-1,-1,-1) + abs(r5.xyz));
  r5.xyz = float3(-1,-1,-1) + r5.xyz;
  r5.xyz = r0.xxx * r5.xyz + float3(1,1,1);
  r5.xyz = r1.www * r5.xyz + cb0[14].xyz;
  r0.xy = v3.xy * cb0[19].xy + cb0[19].zw;
  r0.x = t11.Sample(s2_s, r0.xy).x;
  r0.x = r0.x * cb0[20].x + cb0[20].y;
  r2.zw = v3.xy * cb0[22].xy + cb0[22].zw;
  r6.xyw = t10.Sample(s2_s, r2.zw).yzx;
  r6.xyw = saturate(r6.xyw);
  r0.y = cmp(r6.x < r6.y);
  r9.xy = r6.yx;
  r9.zw = float2(-1,0.666666687);
  r10.xy = r9.yx;
  r10.zw = float2(0,-0.333333343);
  r9.xyzw = r0.yyyy ? r9.xyzw : r10.xyzw;
  r0.y = cmp(r6.w < r9.x);
  r6.xyz = r9.xyw;
  r9.xyw = r6.wyx;
  r6.xyzw = r0.yyyy ? r6.xyzw : r9.xyzw;
  r0.y = min(r6.w, r6.y);
  r0.y = r6.x + -r0.y;
  r1.w = r6.w + -r6.y;
  r2.z = r0.y * 6 + 1.00000001e-007;
  r1.w = r1.w / r2.z;
  r1.w = r6.z + r1.w;
  r2.z = 1.00000001e-007 + r6.x;
  r0.y = r0.y / r2.z;
  r1.w = saturate(cb0[23].x + abs(r1.w));
  r0.y = saturate(cb0[24].x + r0.y);
  r2.z = saturate(cb0[25].x + r6.x);
  r6.xyz = float3(1,0.666666687,0.333333343) + r1.www;
  r6.xyz = frac(r6.xyz);
  r6.xyz = r6.xyz * float3(6,6,6) + float3(-3,-3,-3);
  r6.xyz = saturate(float3(-1,-1,-1) + abs(r6.xyz));
  r6.xyz = float3(-1,-1,-1) + r6.xyz;
  r6.xyz = r0.yyy * r6.xyz + float3(1,1,1);
  r6.xyz = r2.zzz * r6.xyz + cb0[21].xyz;
  r2.zw = v3.xy * cb0[26].xy + cb0[26].zw;
  r0.y = t12.Sample(s2_s, r2.zw).x;
  r0.y = r0.y * cb0[27].x + cb0[27].y;
  r6.xyz = r6.xyz * r0.yyy;
  r5.xyz = r5.xyz * r0.xxx + r6.xyz;
  r0.xy = v3.xy * cb0[28].xy + cb0[28].zw;
  r2.zw = cb0[29].xx * r2.xy;
  r2.zw = r2.zw / r1.xx;
  r0.xy = -r2.zw + r0.xy;
  r0.x = t13.Sample(s2_s, r0.xy).x;
  r0.x = r0.x * cb0[30].x + cb0[30].y;
  r0.x = cb0[31].y * r0.x + cb0[31].x;
  r2.zw = v3.xy * cb0[32].xy + cb0[32].zw;
  r2.xy = cb0[33].xx * r2.xy;
  r2.xy = r2.xy / r1.xx;
  r2.xy = r2.zw + -r2.xy;
  r0.y = t14.Sample(s2_s, r2.xy).x;
  r0.y = r0.y * cb0[34].x + cb0[34].y;
  r0.y = cb0[35].y * r0.y + cb0[35].x;
  r0.x = r0.x + r0.y;
  r2.xyz = r5.xyz + r0.xxx;
  r0.x = r1.x * r1.x;
  r0.x = saturate(r0.x * cb0[36].x + cb0[36].y);
  r5.xyz = cb0[38].xyz * r0.xxx + cb0[37].xyz;
  r2.xyz = r5.xyz * r2.xyz;
  r2.xyz = cb0[39].xyz * r2.xyz;
  r5.xyz = r2.xyz * r7.www;
  r2.xyz = r2.xyz * r7.www + r3.xyz;
  r0.x = max(r2.x, r2.y);
  r0.x = max(r0.x, r2.z);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r2.xyz = r3.xyz * r0.xxx + r5.xyz;
  r0.x = max(r2.x, r2.y);
  r0.x = max(r0.x, r2.z);
  r0.x = max(1, r0.x);
  r2.xyz = r2.xyz / r0.xxx;
  r0.x = max(r5.x, r5.y);
  r0.x = max(r0.x, r5.z);
  r0.y = dot(r4.xy, r4.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r4.z = sqrt(r0.y);
  r0.y = dot(r4.xyz, r4.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = r4.xyz * r0.yyy;
  r4.xyz = v2.xyz * r3.yyy;
  r3.xyw = v1.xyz * r3.xxx + r4.xyz;
  r3.xyz = v0.xyz * r3.zzz + r3.xyw;
  r0.y = dot(r3.xyz, r3.xyz);
  r0.y = rsqrt(r0.y);
  r3.xyz = r3.xyz * r0.yyy;
  r0.y = saturate(cb0[12].x);
  r1.x = dot(v0.xyz, v0.xyz);
  r1.x = rsqrt(r1.x);
  r4.xyz = v0.xyz * r1.xxx;
  r1.x = dot(cb0[5].xyz, r4.xyz);
  r1.w = cb0[4].x + -cb0[3].x;
  r1.x = saturate(r1.x * r1.w + cb0[3].x);
  r1.w = -cb0[6].z + v4.z;
  r1.w = cb0[7].x * r1.w;
  r1.w = max(0, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[8].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb0[9].x * r1.w);
  r1.x = r1.x * r1.w;
  r0.w = saturate(r0.w * cb0[10].x + cb0[10].y);
  r0.w = r1.x * r0.w;
  r1.x = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.x = max(9.99999975e-005, r1.x);
  r1.x = log2(r1.x);
  r1.x = -cb0[11].x * r1.x;
  r1.x = exp2(r1.x);
  r0.w = r1.x * r0.w;
  o2.w = v0.w + r0.y;
  r0.x = r0.w * cb0[13].x + r0.x;
  r0.y = r1.y * 0.125 + 0.375;
  o1.xyz = saturate(r3.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r8.x = saturate(r8.x);
  r0.x = r8.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xz;
  o0.xyz = r2.xyz;
  o1.w = 0;
  o2.x = r1.z;
  return;
}