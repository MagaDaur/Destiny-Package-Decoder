// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:05 2023
Buffer<float4> t0 : register(t0);

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}

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
    r3.xyz = t0.Load(r0.z).xyw;
    r4.y = t0.Load(r0.w).x;
    r5.x = saturate(r3.z);
    r6.xyzw = cb13[0].yyyy * float4(0.00100000005,0.00999999978,0.00499999989,0.0500000007);
    r6.xyzw = frac(r6.xyzw);
    r0.y = saturate(r4.y);
    r5.y = r6.x * 2 + r0.y;
    r5.z = r6.y * 2 + r5.x;
    r7.z = r6.z + r5.x;
    r7.w = -r6.w + r0.y;
    r0.y = saturate(r1.w);
    r6.xyzw = r0.yyyy * float4(25,-1.04166698,16.4776993,0.329667002) + float4(0,1.04166698,-11.4012012,-0.300895989);
    r8.xyz = cmp(r0.yyy >= float3(0,0.0399999991,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r0.zw = r8.xy + r8.yz;
    r0.zw = float2(9.99999997e-007,9.99999997e-007) + r0.zw;
    r0.zw = float2(0.5,0.5) * r0.zw;
    r0.zw = frac(r0.zw);
    r0.zw = r0.zw * r6.xy;
    r0.zw = r0.zw + r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = min(1, r0.z);
    r0.w = saturate(cb0[2].x);
    r0.w = 1 + -r0.w;
    r8.z = r0.z * r0.w;
    r0.zw = r0.yy * float2(-0.0371900015,-0.426681995) + float2(1,0.397911012);
    r3.w = r0.y * r0.y;
    r0.zw = r6.zw * r3.ww + r0.zw;
    r6.xyz = cmp(r0.yyy >= float3(0,0.439999998,1));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r6.xy = r6.xy + r6.yz;
    r6.xy = float2(9.99999997e-007,9.99999997e-007) + r6.xy;
    r6.xy = float2(0.5,0.5) * r6.xy;
    r6.xy = frac(r6.xy);
    r0.yz = r6.xy * r0.zw;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r8.w = r0.y * 2 + 1;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
    r7.xy = float2(0.0500000007,1);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.xyzw
    r6.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.xxxx, r7.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.zzzz, r2.xyzw
    r5.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.wwww, r5.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
    r8.x = r3.y;
    r8.y = r5.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r8.xyzw
    r4.x = r3.z;
    r4.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
  }
  return;
}