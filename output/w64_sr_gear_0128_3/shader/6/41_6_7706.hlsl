// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:34 2023
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
  float4 r0,r1,r2,r3,r4,r5;
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
    r0.y = mad(3, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yz = (int2)r0.yy + int2(1,2);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).wxyz;
    r0.y = saturate(r1.w);
    r4.xyzw = r0.yyyy * float4(0.0767899975,0.159721002,3.32740808,59.6593628) + float4(-1.218485,-1.33258402,-7.33804321,-164.024353);
    r5.xyzw = r0.yyyy * float4(-0.012658,0.01602,3.75194907,149.070679) + float4(1,0.998737991,0.233645007,-44.7056427);
    r0.z = r0.y * r0.y;
    r4.xyzw = r4.xyzw * r0.zzzz + r5.xyzw;
    r5.xyzw = cmp(r0.yyyy >= float4(0,0.255555987,0.561110973,0.927778006));
    r5.xyzw = r5.xyzw ? float4(1,1,1,1) : 0;
    r0.yzw = r5.xyz + r5.yzw;
    r0.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r0.yzw;
    r0.yzw = float3(0.5,0.5,0.5) * r0.yzw;
    r0.yzw = frac(r0.yzw);
    r0.yzw = r0.yzw * r4.xyz;
    r4.x = 2;
    r0.yz = r4.xx * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r4.x * r0.w + r0.y;
    r4.z = saturate(r4.w * r5.w + r0.y);
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
    r4.xyw = r3.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
    r3.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r3.xyzw
  }
  return;
}