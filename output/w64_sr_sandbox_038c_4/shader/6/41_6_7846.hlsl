// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:53 2023
Texture3D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[181];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r2.xyzw = t2.Load(r1.x).xyzw;
    r3.xyzw = t2.Load(r1.y).xyzw;
    r0.yzw = t2.Load(r0.y).xyz;
    r4.xyzw = t2.Load(r1.z).xyzw;
    r1.xyz = t2.Load(r1.w).xyz;
    r5.x = cb10[1].x + 0.25;
    r5.y = cmp(cb0[23].x < cb0[24].x);
    r5.y = r5.y ? cb0[23].x : 0;
    r5.xy = (int2)r5.xy;
    r5.x = (int)r5.y + (int)r5.x;
    r5.y = cb0[22].x / r3.w;
    r6.xyzw = saturate(r1.zxxx);
    r7.xyzw = r6.xyzw * float4(-0.5,1.143646,0.0229889993,2.96666694) + float4(-0.5,0,0.680667996,-1.96666706);
    r6.xyzw = cmp(r6.wwww >= float4(0,0.607383013,0.899329007,1));
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r6.xyz = r6.xyz + r6.yzw;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r6.xyz = r6.xyz * r7.yzw;
    r5.zw = float2(2,2) * r6.xy;
    r5.z = r5.z + r5.w;
    r5.z = r6.z * 2 + r5.z;
    r5.z = saturate(r6.w * 1 + r5.z);
    r5.z = r5.z * -5 + 9;
    r6.w = r5.y + r2.w;
    r7.yzw = r2.xyz * float3(5000,5000,5000) + float3(0.5,0.5,0.5);
    r7.yzw = t3.SampleLevel(s1_s, r7.yzw, 0).xyz;
    r7.yzw = r7.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r7.yzw = cb0[22].xxx * r7.yzw;
    r7.yzw = r7.yzw * float3(5,5,0) + r0.yzw;
    r8.xyz = r2.xyz * float3(50,50,50) + float3(0.5,0.5,0.5);
    r8.xyz = t3.SampleLevel(s1_s, r8.xyz, 0).xyz;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.xyz = cb0[22].xxx * r8.xyz;
    r7.yzw = r8.xyz * float3(3,3,0) + r7.yzw;
    r8.xyz = cb0[179].xyz * r7.xxx;
    r7.xyz = r8.xyz * cb0[178].xxx + r7.yzw;
    r2.w = saturate(cb0[180].x * r5.z);
    r2.w = 1 + -r2.w;
    r5.yzw = r7.xyz * r2.www;
    r7.xyz = r5.yzw * cb0[156].xxx + r2.xyz;
    r2.w = cb0[180].x * r3.x;
    r3.y = r2.w * 6.28318548 + r3.y;
    r2.w = dot(r0.yzw, r0.yzw);
    r2.w = sqrt(r2.w);
    r7.w = 9.99999975e-006 + r2.w;
    r8.xyz = r0.yzw / r7.www;
    r8.xyz = r8.xyz * float3(0.100000001,0.100000001,0.100000001) + r2.xyz;
    r2.w = cmp(0.00100000005 < r2.w);
    r8.xyz = r2.www ? r8.xyz : r2.xyz;
    r2.w = dot(r5.yzw, r5.yzw);
    r2.w = sqrt(r2.w);
    r9.xy = float2(9.99999975e-006,9.99999975e-005) + r2.ww;
    r9.xzw = r5.yzw / r9.xxx;
    r9.xzw = r9.xzw * float3(0.100000001,0.100000001,0.100000001) + r7.xyz;
    r7.w = cmp(0.00100000005 < r2.w);
    r9.xzw = r7.www ? r9.xzw : r7.xyz;
    r10.xyz = cb12[1].xyw * r8.yyy;
    r8.xyw = cb12[0].xyw * r8.xxx + r10.xyz;
    r8.xyz = cb12[2].xyw * r8.zzz + r8.xyw;
    r8.xyz = cb12[3].xyw + r8.xyz;
    r10.xyz = cb12[1].xyw * r9.zzz;
    r10.xyz = cb12[0].xyw * r9.xxx + r10.xyz;
    r9.xzw = cb12[2].xyw * r9.www + r10.xyz;
    r9.xzw = cb12[3].xyw + r9.xzw;
    r8.xy = r8.xy / r8.zz;
    r8.xy = r8.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r9.xz = r9.xz / r9.ww;
    r9.xz = r9.xz * float2(0.5,-0.5) + float2(0.5,0.5);
    r8.xy = cb12[12].xy * r8.xy;
    r10.xy = (int2)r8.xy;
    r10.zw = float2(0,0);
    r7.w = t1.Load(r10.xyw).x;
    r7.w = r7.w * cb0[0].y + cb0[0].x;
    r7.w = 1 / r7.w;
    r8.xy = cb12[12].xy * r9.xz;
    r11.xy = (int2)r8.xy;
    r11.zw = float2(0,0);
    r8.x = t1.Load(r11.xyw).x;
    r8.x = r8.x * cb0[0].y + cb0[0].x;
    r8.x = 1 / r8.x;
    r10.xyz = t0.Load(r10.xyz).xyz;
    r10.xyz = r10.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.y = dot(r10.xyz, r10.xyz);
    r8.y = rsqrt(r8.y);
    r10.xyz = r10.xyz * r8.yyy;
    r11.xyz = t0.Load(r11.xyz).xyz;
    r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.y = dot(r11.xyz, r11.xyz);
    r8.y = rsqrt(r8.y);
    r11.xyz = r11.xyz * r8.yyy;
    r8.y = -r8.x + r7.w;
    r8.w = dot(r10.xyz, r11.xyz);
    r8.w = 1 + -r8.w;
    r7.w = r7.w + -r8.z;
    r8.x = r8.x + -r9.w;
    r7.w = r8.x * r7.w;
    r7.w = cmp(r7.w < 0);
    r8.y = cmp(abs(r8.y) < 2.5);
    r7.w = r7.w ? r8.y : 0;
    r8.y = cmp(r8.w < 0.600000024);
    r7.w = r7.w ? r8.y : 0;
    r8.yzw = r5.yzw / r9.yyy;
    r9.x = dot(r11.xyz, r8.yzw);
    r9.x = r9.x + r9.x;
    r8.yzw = -r9.xxx * r11.xyz + r8.yzw;
    r9.x = dot(r8.yzw, r8.yzw);
    r9.x = rsqrt(r9.x);
    r8.yzw = r9.xxx * r8.yzw;
    r8.yzw = r8.yzw * r2.www;
    r8.yzw = float3(0.666000009,0.666000009,0.666000009) * r8.yzw;
    r9.xyz = r8.yzw * cb0[22].xxx + r2.xyz;
    r7.xyz = r7.www ? r9.xyz : r7.xyz;
    r8.yzw = r7.www ? r8.yzw : r5.yzw;
    r2.w = cmp(abs(r8.x) < 0.100000001);
    r7.w = dot(r11.xyz, r5.yzw);
    r9.xyz = -r7.www * r11.xyz + r5.yzw;
    r9.w = dot(r9.xyz, r9.xyz);
    r9.w = rsqrt(r9.w);
    r9.xyz = r9.xyz * r9.www;
    r5.y = dot(r9.xyz, r5.yzw);
    r5.z = 0.800000012 * r5.y;
    r5.w = cmp(abs(r7.w) < 0.200000003);
    r5.w = r2.w ? r5.w : 0;
    r5.y = cmp(r5.y < 0.0625);
    r2.w = r2.w ? r5.y : 0;
    r5.y = r2.w ? 9.99999975e-005 : r5.z;
    r9.xyz = r9.xyz * r5.yyy;
    r8.yzw = r5.www ? r9.xyz : r8.yzw;
    r9.xyz = cb12[7].xyz + -r7.xyz;
    r5.y = dot(r9.xyz, r9.xyz);
    r5.y = rsqrt(r5.y);
    r9.xyz = r9.xyz * r5.yyy;
    r5.y = 0.100000001 + -r8.x;
    r9.xyz = r9.xyz * r5.yyy + r2.xyz;
    r9.xyz = r8.yzw * cb0[22].xxx + r9.xyz;
    r7.xyz = r5.www ? r9.xyz : r7.xyz;
    r2.w = r5.w ? r2.w : 0;
    r6.xyz = r2.www ? r2.xyz : r7.xyz;
    r2.xyz = r2.www ? r0.yzw : r8.yzw;
    r0.yzw = -cb9[r5.x+32].yzx * r6.zxy;
    r7.xyz = r6.yzx * -cb9[r5.x+32].zxy + -r0.yzw;
    r0.y = dot(r6.xyz, -cb9[r5.x+32].xyz);
    r7.w = -r0.y;
    r8.xyz = cb9[r5.x+32].www * r6.xyz;
    r8.w = 0;
    r7.xyzw = r8.xyzw + r7.xyzw;
    r0.yzw = cb9[r5.x+32].zxy * r7.yzx;
    r0.yzw = cb9[r5.x+32].yzx * r7.zxy + -r0.yzw;
    r0.yzw = cb9[r5.x+32].www * r7.xyz + r0.yzw;
    r0.yzw = r7.www * cb9[r5.x+32].xyz + r0.yzw;
    r0.yzw = cb9[r5.x+0].xyz + r0.yzw;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r2.w = dot(-cb12[6].xyz, r0.yzw);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r2.xyzw
    r2.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xxxx, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.zzzz, r4.xyzw
    r1.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.wwww, r1.xyzw
  }
  return;
}