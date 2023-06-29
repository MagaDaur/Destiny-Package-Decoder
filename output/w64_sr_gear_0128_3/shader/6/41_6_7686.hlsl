// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:35 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).zwxy;
    r4.xyz = t0.Load(r0.w).zxy;
    r0.y = saturate(r3.y);
    r5.xyzw = r0.yyyy * float4(0.713142991,-1.34482801,-0.617143989,33.9501343) + float4(-0.368315995,1,-0.0527370013,-83.3917999);
    r0.z = r0.y * r0.y;
    r0.w = saturate(r5.x * r0.z + r5.y);
    r6.y = r0.w * 0.649999976 + 0.100000001;
    r0.w = saturate(r4.y);
    r5.xy = r0.ww * float2(-0.236842006,-2.23684192) + float2(1.47368503,1);
    r0.w = r0.w * r0.w;
    r0.w = saturate(r5.x * r0.w + r5.y);
    r0.w = r0.w * 0.0179999992 + 0.00200000009;
    r5.x = saturate(cb0[4].w * 0.142857 + -0.428570986);
    r5.x = r5.x * 0.600000024 + 0.400000006;
    r0.w = r5.x * r0.w;
    r5.x = saturate(r1.w);
    r7.xyzw = r5.xxxx * float4(0.171669006,-1.70588195,0.200960994,10.414443) + float4(0.534213006,1,-1.23410404,-23.4319382);
    r5.y = r5.x * r5.x;
    r7.x = saturate(r7.x * r5.y + r7.y);
    r7.x = r7.x * 0.999000013 + 0.00100000005;
    r6.z = r7.x * r0.w;
    r7.xy = r5.xx * float2(0,15.5810785) + float2(1,-2.56358194);
    r7.xy = r7.zw * r5.yy + r7.xy;
    r8.xyz = cmp(r5.xxx >= float3(0,0.596666992,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r5.xy = r8.xy + r8.yz;
    r5.xy = float2(9.99999997e-007,9.99999997e-007) + r5.xy;
    r5.xy = float2(0.5,0.5) * r5.xy;
    r5.xy = frac(r5.xy);
    r5.xy = r5.xy * r7.xy;
    r5.xy = r5.xy + r5.xy;
    r0.w = saturate(r5.x + r5.y);
    r6.w = 500 * r0.w;
    r5.xy = r0.yy * float2(0,64.933197) + float2(1,-15.4915314);
    r0.zw = r5.zw * r0.zz + r5.xy;
    r5.xyz = cmp(r0.yyy >= float3(0,0.663332999,1));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r5.xy = r5.xy + r5.yz;
    r5.xy = float2(9.99999997e-007,9.99999997e-007) + r5.xy;
    r5.xy = float2(0.5,0.5) * r5.xy;
    r5.xy = frac(r5.xy);
    r0.yz = r5.xy * r0.zw;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r5.xyz = r0.yyy * float3(0,-0.0281939954,-0.113302007) + float3(1,0.179925993,0.170000002);
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r5.w = r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r6.x = r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r3.zw = r4.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r3.xyzw
    r0.y = (int)r0.x + 5;
    r4.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  }
  return;
}