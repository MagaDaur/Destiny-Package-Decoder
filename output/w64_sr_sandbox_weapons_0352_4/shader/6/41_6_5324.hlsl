// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:28 2023
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
    r4.yz = t0.Load(r0.w).xy;
    r0.y = saturate(r1.w);
    r5.xyzw = r0.yyyy * float4(4.63571501,-139.624786,4.06901121,-0.0909089968) + float4(-0.063399002,186.073547,-11.2955742,-0.909090996);
    r6.xyz = r0.yyy * float3(0,-78.3153458,10.3841152) + float3(0,10.8020592,-2.157552);
    r0.z = r0.y * r0.y;
    r5.xyz = r5.xyz * r0.zzz + r6.xyz;
    r6.xyzw = cmp(r0.yyyy >= float4(0,0.366667002,0.519999981,1));
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r6.xyz = r6.xyz + r6.yzw;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r5.xyz = r6.xyz * r5.xyz;
    r0.yw = float2(2,2) * r5.xy;
    r0.y = r0.y + r0.w;
    r0.y = r5.z * 2 + r0.y;
    r0.y = saturate(r6.w * 1 + r0.y);
    r5.xyz = r0.yyy * float3(-1.5,-0.149999976,0) + float3(2,0.649999976,1);
    r0.y = saturate(r3.w);
    r6.xyz = r0.yyy * float3(3,-0.5,1) + float3(1,1,0);
    r6.xyz = r6.xyz * r5.xyz;
    r0.y = saturate(r4.y);
    r7.y = r0.y * 0.00749999983 + 0.00249999994;
    r0.y = saturate(cb0[5].x);
    r0.z = r5.w * r0.z + 1;
    r0.y = r0.y * 0.25 + 0.25;
    r0.y = r0.z * r0.y + 0.5;
    r7.z = 7 * r0.y;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r6.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r7.xw = r3.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r4.x = r3.w;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}