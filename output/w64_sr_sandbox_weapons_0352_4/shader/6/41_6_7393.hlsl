// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:19 2023
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
    r4.xy = t0.Load(r0.w).yx;
    r0.y = saturate(r1.w);
    r0.zw = r0.yy * float2(0.5,-0.0909089968) + float2(-2,-0.909090996);
    r5.x = r0.y * r0.y;
    r0.z = r5.x * r0.z;
    r0.y = saturate(r0.y * 2.5 + r0.z);
    r5.yzw = r0.yyy * float3(-2,-0.699999988,0) + float3(3,1,1);
    r0.y = saturate(r3.w);
    r6.xyzw = r0.yyyy * float4(-0.194556996,19.3932877,0,51.8782043) + float4(-0.618485987,-56.5111694,1,-14.7603073);
    r0.z = r0.y * r0.y;
    r6.xy = r6.xy * r0.zz + r6.zw;
    r7.xyz = cmp(r0.yyy >= float3(0,0.803332984,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r0.yz = r7.xy + r7.yz;
    r0.yz = float2(9.99999997e-007,9.99999997e-007) + r0.yz;
    r0.yz = float2(0.5,0.5) * r0.yz;
    r0.yz = frac(r0.yz);
    r0.yz = r0.yz * r6.xy;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r6.xyz = r0.yyy * float3(-6,-1.25,1) + float3(7,1.75,0);
    r6.xyz = r6.xyz * r5.yzw;
    r7.xyzw = saturate(r4.xxxy);
    r0.y = saturate(cb0[3].y);
    r0.z = r0.w * r5.x + 1;
    r0.y = r0.y * 0.25 + 0.25;
    r0.y = r0.z * r0.y + 0.5;
    r5.x = 18 * r0.y;
    r7.xyzw = r7.xyzw * float4(0.0561460257,-0.107449979,-0.0275679976,0.0109999999) + float4(0.769418001,0.302661985,0.100240998,0.00400000019);
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r2.x = 0;
    r2.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r2.xxxw
    r6.w = r3.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r7.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
    r5.yz = r3.zw;
    r5.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
    r4.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
  }
  return;
}