// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:00 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[157];
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
    r0.x = (uint)cb0[100].x;
    r0.y = (uint)cb0[91].x;
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = (int4)r0.yyyy + int4(3,1,2,4);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyzw = t0.Load(r0.y).xyzw;
    r4.xyzw = t0.Load(r1.y).xyzw;
    r5.xyzw = t0.Load(r1.z).xyzw;
    r1.xyzw = t0.Load(r1.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.x = t0.Load(r0.y).x;
    r0.y = cb0[22].x / r1.x;
    r7.w = r4.w + r0.y;
    r0.yzw = cb0[155].xyz * cb0[154].xxx;
    r0.yzw = r0.yzw * float3(0.5,0.5,0.5) + r3.xyz;
    r4.w = saturate(cb0[156].x * 0.5);
    r4.w = 1 + -r4.w;
    r3.xyz = r4.www * r0.yzw;
    r7.xyz = r3.xyz * cb0[149].xxx + r4.xyz;
    r0.y = cb0[156].x * r5.w;
    r2.z = r0.y * 6.28318548 + r2.z;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r3.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.xxxx, r7.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.yyyy, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.zzzz, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.wwww, r1.xyzw
    r0.y = (int)r0.x + 5;
    r6.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  }
  return;
}