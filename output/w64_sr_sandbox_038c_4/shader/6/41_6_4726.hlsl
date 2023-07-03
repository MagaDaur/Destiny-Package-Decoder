// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
struct t0_t {
  float val[1];
};
StructuredBuffer<t0_t> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[18];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cmp((uint)vThreadID.x < asuint(cb0[17].x));
  if (r0.x != 0) {
    r0.x = (int)vThreadID.x + asint(cb0[16].x);
    r0.y = t0[vThreadID.x].val[0/4];
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r0.yyyy
  }
  return;
}