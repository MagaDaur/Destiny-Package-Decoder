// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:37 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[155];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
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
    r0.z = (uint)vThreadID.x << 2;
    r0.xy = (int2)r0.zz + (int2)r0.xy;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyz = (int3)r0.yyy + int3(1,2,3);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r2.xyz = t0.Load(r2.z).xyz;
    r0.y = cb0[22].x / r4.z;
    r0.w = saturate(r1.w);
    r5.x = -1 + r0.w;
    r5.y = 1 + -r0.w;
    r5.z = r0.w * r0.w;
    r5.x = r5.x * r5.z + r5.y;
    r5.x = max(0, r5.x);
    r5.x = 0.100000001 * r5.x;
    r0.w = cb0[154].x * r0.w;
    r6.w = r1.w + r0.y;
    r5.xyz = cb0[153].xyz * r5.xxx;
    r1.xyz = r5.xyz * cb0[152].xxx + r1.xyz;
    r0.y = saturate(3 * r0.w);
    r0.y = 1 + -r0.y;
    r6.xyz = r1.xyz * r0.yyy;
    r1.xyz = r6.xyz * cb0[147].xxx + r3.xyz;
    r0.y = saturate(cb0[154].x);
    r0.y = 1 + -r0.y;
    r1.w = r3.w * r0.y;
    r0.y = cb0[154].x * r1.w;
    r4.x = r0.y * 6.28318548 + r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}