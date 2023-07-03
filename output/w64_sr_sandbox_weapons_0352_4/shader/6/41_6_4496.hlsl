// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:31 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6;
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
    r4.xy = t0.Load(r0.w).xy;
    r0.y = saturate(r1.w);
    r5.xyz = r0.yyy * float3(6,1.63888896,-0.0909089968) + float3(3,-2.63888907,-0.909090996);
    r0.z = -1 + r0.y;
    r0.w = 1 + -r0.y;
    r0.y = r0.y * r0.y;
    r0.z = r0.z * r0.y + r0.w;
    r0.z = max(0, r0.z);
    r6.z = r5.x * r0.z;
    r0.z = saturate(r3.w);
    r0.yw = r5.yz * r0.yy + float2(1,1);
    r5.x = max(0, r0.y);
    r6.xw = r0.zz * float2(3,0.00500000035) + float2(2,0.00300000003);
    r0.y = saturate(cb0[2].y);
    r0.y = r0.y * 0.25 + 0.25;
    r0.y = r0.w * r0.y + 0.5;
    r5.y = r6.x * r0.y;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r6.xy = r3.xy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r5.zw = r3.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r4.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}