// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:42 2023
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
    r4.w = t0.Load(r0.w).x;
    r0.y = saturate(r1.w);
    r5.xyz = r0.yyy * float3(-12.0028629,-0.0909089968,0.380971014) + float3(1.78739202,-0.909090996,-1.33012295);
    r0.z = r0.y * r0.y;
    r5.xz = r5.xz * r0.zz;
    r0.w = r0.y * 3.68421102 + r5.x;
    r6.xyz = cmp(r0.yyy >= float3(0,0.373333007,1));
    r6.xyw = r6.xyz ? float3(1,1,1) : 0;
    r6.xyz = r6.xyw + r6.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r6.x = r6.x * r0.w;
    r5.xw = float2(2,2) * r6.xy;
    r0.w = r5.x + r5.w;
    r0.w = r6.z * 2 + r0.w;
    r0.w = saturate(r6.w * 1 + r0.w);
    r6.xyz = r0.www * float3(-0.699999988,-0.699999988,0) + float3(1,1,1);
    r0.w = saturate(r3.w);
    r7.xyzw = r0.wwww * float4(-0.194556996,19.3932877,0,51.8782043) + float4(-0.618485987,-56.5111694,1,-14.7603073);
    r5.x = r0.w * r0.w;
    r5.xw = r7.xy * r5.xx + r7.zw;
    r7.xyz = cmp(r0.www >= float3(0,0.803332984,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r7.xy = r7.xy + r7.yz;
    r7.xy = float2(9.99999997e-007,9.99999997e-007) + r7.xy;
    r7.xy = float2(0.5,0.5) * r7.xy;
    r7.xy = frac(r7.xy);
    r5.xw = r7.xy * r5.xw;
    r5.xw = r5.xw + r5.xw;
    r0.w = saturate(r5.x + r5.w);
    r7.xyz = r0.www * float3(-6,-1.25,1) + float3(7,1.75,0);
    r6.xyz = r7.xyz * r6.xyz;
    r0.w = saturate(r4.w);
    r7.w = r0.w * 0.0109999999 + 0.00400000019;
    r0.w = saturate(cb0[3].y);
    r0.z = r5.y * r0.z + 1;
    r0.w = r0.w * 0.25 + 0.25;
    r0.z = r0.z * r0.w + 0.5;
    r4.x = 18 * r0.z;
    r0.y = saturate(r0.y * 1.94915199 + r5.z);
    r5.xyzw = float4(-0,-0.5,-0,-0.5) + r0.yyyy;
    r5.xyzw = saturate(r5.xyzw + r5.xyzw);
    r8.xyzw = float4(-0.452618003,-0.000830999983,-0.179995999,-0.204854995) * r5.xyzw;
    r5.z = -0.130805001 * r5.w;
    r5.x = dot(float2(1,1), r8.xy);
    r5.y = dot(float2(1,1), r8.zw);
    r7.xyz = float3(0.505478978,0.461268008,1) + r5.xyz;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
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
    r0.y = (int)r0.x + 5;
    r4.yz = r3.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  }
  return;
}