// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:24 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[168];
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
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyzw = t0.Load(r1.y).xyzw;
    r4.xyzw = t0.Load(r1.z).xyzw;
    r0.yzw = t0.Load(r0.y).xyz;
    r1.xyzw = t0.Load(r1.w).xyzw;
    r5.x = cb0[22].x / r4.y;
    r5.y = saturate(r1.y);
    r5.y = r5.y * 0.300000012 + 0.200000003;
    r6.w = r5.x + r2.w;
    r7.w = r6.w * r4.y;
    r5.xyz = cb0[166].xyz * r5.yyy;
    r0.yzw = r5.xyz * cb0[165].xxx + r0.yzw;
    r5.xy = saturate(cb0[167].xx * float2(4.5,0.5));
    r5.xy = float2(1,1) + -r5.xy;
    r7.xyz = r5.xxx * r0.yzw;
    r6.xyz = r7.xyz * cb0[162].xxx + r2.xyz;
    r3.z = r5.y * r3.z;
    r0.y = cb0[167].x * r3.z;
    r3.w = r0.y * 6.28318548 + r3.w;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.xyzw
    r2.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xxxx, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.zzzz, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.wwww, r1.xyzw
  }
  return;
}