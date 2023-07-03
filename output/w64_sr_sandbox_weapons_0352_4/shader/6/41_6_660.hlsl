// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:45 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
    r4.y = t0.Load(r0.w).x;
    r0.y = saturate(r1.w);
    r5.xyz = r0.yyy * float3(0.997267008,-0.279760987,0.0535710007) + float3(-2.99453402,-0.773810029,1);
    r0.z = r0.y * r0.y;
    r0.w = r5.x * r0.z;
    r0.y = saturate(r0.y * 2.99726701 + r0.w);
    r6.xyz = r0.yyy * float3(-3.5,0.300000012,0) + float3(4,0.200000003,1);
    r0.y = saturate(r3.w);
    r0.y = r0.y * 1.5 + 1;
    r7.y = 0.0350000001 * r0.y;
    r0.y = saturate(r5.y * r0.z + r5.z);
    r7.z = r0.y * 0.25 + 1;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r6.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r7.xw = r3.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r4.x = r3.w;
    r4.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}