// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:22 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
    r4.yz = t0.Load(r0.w).xy;
    r0.y = saturate(r1.w);
    r0.z = 3.0638299 * r0.y;
    r5.xy = r0.yy * float2(1.06383002,-0.0909089968) + float2(-3.12765908,-0.909090996);
    r0.w = r0.y * r0.y;
    r0.z = saturate(r5.x * r0.w + r0.z);
    r5.xzw = r0.zzz * float3(-0.699999988,-0.699999988,0) + float3(1,1,1);
    r0.z = saturate(r3.w);
    r6.xyzw = r0.zzzz * float4(-0.194556996,19.3932877,0,51.8782043) + float4(-0.618485987,-56.5111694,1,-14.7603073);
    r7.x = r0.z * r0.z;
    r6.xy = r6.xy * r7.xx + r6.zw;
    r7.xyz = cmp(r0.zzz >= float3(0,0.803332984,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r6.zw = r7.xy + r7.yz;
    r6.zw = float2(9.99999997e-007,9.99999997e-007) + r6.zw;
    r6.zw = float2(0.5,0.5) * r6.zw;
    r6.zw = frac(r6.zw);
    r6.xy = r6.zw * r6.xy;
    r6.xy = r6.xy + r6.xy;
    r0.z = saturate(r6.x + r6.y);
    r6.xyz = r0.zzz * float3(1.5,-0.75,1) + float3(1,1.75,0);
    r6.xyz = r6.xyz * r5.xzw;
    r7.xyzw = saturate(r4.yzzz);
    r0.z = r0.y * -2 + r0.w;
    r8.y = saturate(1 + r0.z);
    r0.z = saturate(cb0[3].y);
    r5.x = r5.y * r0.w + 1;
    r0.z = r0.z * 0.25 + 0.25;
    r0.z = r5.x * r0.z + 0.5;
    r8.z = 7 * r0.z;
    r5.xyzw = r7.xyzw * float4(0.0174999982,0,-0.258282989,-0.0352480039) + float4(0.0225000009,1,0.545723975,0.109462);
    r0.z = 1.94915199 * r0.y;
    r0.y = r0.y * 0.380971014 + -1.33012295;
    r0.y = saturate(r0.y * r0.w + r0.z);
    r7.xyz = float3(1,0.201555997,0.0382039994) + -r5.yzw;
    r7.xyz = r0.yyy * r7.xyz + r5.yzw;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r6.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r7.w = r3.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r8.x = r5.x;
    r8.w = r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r8.xyzw
    r0.y = (int)r0.x + 5;
    r4.x = r3.w;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  }
  return;
}