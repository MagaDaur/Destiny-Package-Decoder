// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:34 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[151];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3;
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
    r0.y = mad(3, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yz = (int2)r0.yy + int2(1,2);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xyzw;
    r0.y = cb0[22].x / r3.z;
    r1.w = r1.w + r0.y;
    r2.xyz = r1.xyz * cb0[146].xxx + r2.xyz;
    r0.y = cb0[150].x * r2.w;
    r3.x = r0.y * 6.28318548 + r3.x;
    r0.x = mad(3, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r0.yz = (int2)r0.xx + int2(1,2);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
  }
  return;
}