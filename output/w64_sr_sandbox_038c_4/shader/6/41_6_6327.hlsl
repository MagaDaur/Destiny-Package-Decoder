// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:00 2023
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
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.xyzw = t0.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.x = t0.Load(r0.y).x;
    r0.y = saturate(r3.w);
    r0.z = 1 + -r0.y;
    r7.xyz = r0.zzz * float3(0.283596992,0.68580097,0) + float3(-0.0392099991,0.0367020033,0.644958019);
    r8.xyzw = r0.yyyy * float4(-295.639099,0.194573,0,-2.87750602) + float4(84.3003311,1.14689398,0,1.53603899);
    r0.z = r0.y * r0.y;
    r0.zw = r8.xy * r0.zz + r8.zw;
    r8.xyz = cmp(r0.yyy >= float3(0,0.203333005,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r8.xy = r8.xy + r8.yz;
    r8.xy = float2(9.99999997e-007,9.99999997e-007) + r8.xy;
    r8.xy = float2(0.5,0.5) * r8.xy;
    r8.xy = frac(r8.xy);
    r0.yz = r8.xy * r0.zw;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r0.y = r0.y * 0.699999988 + 0.300000012;
    r8.w = 0.00200000009 * r0.y;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
    r7.w = r5.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r8.xyz = r5.xyw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r8.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
    r6.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r6.xyzw
  }
  return;
}