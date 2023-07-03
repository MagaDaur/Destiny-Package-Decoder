// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[174];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyzw = t0.Load(r1.y).xyzw;
    r4.xyzw = t0.Load(r1.z).xyzw;
    r1.xyz = t0.Load(r0.y).xyz;
    r5.xyzw = t0.Load(r1.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.xyz = t0.Load(r0.y).xyz;
    r0.y = cb0[22].x / r4.y;
    r0.z = saturate(r5.w);
    r0.z = r0.z * -0.200000018 + 0.300000012;
    r0.w = saturate(r6.x);
    r0.w = r0.w * 2 + 3;
    r7.w = r2.w + r0.y;
    r8.w = r7.w * r4.y;
    r9.xyz = cb0[172].xyz * r0.zzz;
    r1.xyz = r9.xyz * cb0[171].xxx + r1.xyz;
    r0.y = saturate(cb0[173].x * 4);
    r0.y = 1 + -r0.y;
    r8.xyz = r1.xyz * r0.yyy;
    r7.xyz = r8.xyz * cb0[166].xxx + r2.xyz;
    r0.y = saturate(cb0[173].x * r0.w);
    r0.y = 1 + -r0.y;
    r3.z = r3.z * r0.y;
    r0.y = cb0[173].x * r3.z;
    r3.w = r0.y * 6.28318548 + r3.w;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r8.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r7.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r5.xyzw
    r0.y = (int)r0.x + 5;
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  }
  return;
}