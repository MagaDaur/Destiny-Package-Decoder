// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
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
    r3.xyzw = t0.Load(r0.z).xyzw;
    r4.x = t0.Load(r0.w).x;
    r0.y = saturate(r3.w);
    r5.xyz = r0.yyy * float3(-0.211480007,-2.07017493,0.75) + float3(1.28165495,1,0.25);
    r0.y = r0.y * r0.y;
    r0.y = saturate(r5.x * r0.y + r5.y);
    r0.y = r0.y * 0.00499999989 + 0.00499999989;
    r0.z = saturate(r1.w);
    r6.xyzw = r0.zzzz * float4(-10480,2.33270192,13.8000002,0.349905014) + float4(648,-3.67400503,0,0.991397977);
    r0.w = r0.z * r0.z;
    r6.xy = r6.xy * r0.ww + r6.zw;
    r7.xyz = cmp(r0.zzz >= float3(0,0.0500000007,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r6.zw = r7.xy + r7.yz;
    r6.zw = float2(9.99999997e-007,9.99999997e-007) + r6.zw;
    r6.zw = float2(0.5,0.5) * r6.zw;
    r6.zw = frac(r6.zw);
    r6.xy = r6.zw * r6.xy;
    r6.xy = r6.xy + r6.xy;
    r6.x = saturate(r6.x + r6.y);
    r5.w = r6.x * r0.y;
    r6.xyzw = r0.zzzz * float4(9.09999943,15.3000002,2.45000005,22.6000004) + float4(-9.44999981,-34.25,1,-3.6500001);
    r6.xy = r6.xy * r0.ww + r6.zw;
    r7.xyz = cmp(r0.zzz >= float3(0,0.5,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r6.zw = r7.xy + r7.yz;
    r6.zw = float2(9.99999997e-007,9.99999997e-007) + r6.zw;
    r6.zw = float2(0.5,0.5) * r6.zw;
    r6.zw = frac(r6.zw);
    r6.xy = r6.zw * r6.xy;
    r6.xy = r6.xy + r6.xy;
    r6.x = saturate(r6.x + r6.y);
    r0.y = saturate(r4.x);
    r7.xy = r0.yy * float2(0.333332986,2.0427351) + float2(0,-1.04273498);
    r8.xyz = cmp(r0.yyy >= float3(0,0.610000014,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xy = r8.xy * r7.xy;
    r7.xy = float2(2,2) * r7.xy;
    r0.y = r7.x + r7.y;
    r0.y = r8.z * 2 + r0.y;
    r0.y = saturate(r8.w * 1 + r0.y);
    r0.y = r0.y * 249 + 1;
    r7.xyzw = r0.zzzz * float4(-215.930649,3.8491919,-0.331395,2.32056689) + float4(69.5912781,-6.95380783,0,0.784048975);
    r7.xy = r7.xy * r0.ww + r7.zw;
    r8.xyz = cmp(r0.zzz >= float3(0,0.213332996,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r0.zw = r8.xy + r8.yz;
    r0.zw = float2(9.99999997e-007,9.99999997e-007) + r0.zw;
    r0.zw = float2(0.5,0.5) * r0.zw;
    r0.zw = frac(r0.zw);
    r0.zw = r0.zw * r7.xy;
    r0.zw = r0.zw + r0.zw;
    r0.z = saturate(r0.z + r0.w);
    r0.y = r0.y * r0.z;
    r0.z = saturate(cb0[3].z);
    r7.xyzw = r0.zzzz * float4(1.38545406,40.8141251,0.192982003,99.3974228) + float4(0.678322017,-110.919899,0,-28.2916451);
    r0.w = r0.z * r0.z;
    r7.xy = r7.xy * r0.ww + r7.zw;
    r8.xyz = cmp(r0.zzz >= float3(0,0.716666996,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r0.zw = r8.xy * r7.xy;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r8.z * 2 + r0.z;
    r0.z = saturate(r8.w * 1 + r0.z);
    r6.y = r0.y * r0.z;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r5.xy = r3.xy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r6.zw = r3.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r4.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}