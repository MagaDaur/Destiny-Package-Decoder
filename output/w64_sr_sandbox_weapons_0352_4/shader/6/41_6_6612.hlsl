// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:23 2023
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
    r4.yz = t0.Load(r0.w).xy;
    r0.y = saturate(r1.w);
    r5.xyzw = r0.yyyy * float4(-6.31572008,1.00638402,2.65625,2.93845892) + float4(0.509256005,-2.97880507,0,0.0339620002);
    r0.z = r0.y * r0.y;
    r5.xy = r5.xy * r0.zz + r5.zw;
    r6.xyz = cmp(r0.yyy >= float3(0,0.270000011,1));
    r6.xyw = r6.xyz ? float3(1,1,1) : 0;
    r6.xyz = r6.xyw + r6.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r5.xy = r6.xy * r5.xy;
    r5.xy = float2(2,2) * r5.xy;
    r0.w = r5.x + r5.y;
    r0.w = r6.z * 2 + r0.w;
    r0.w = saturate(r6.w * 1 + r0.w);
    r5.xyz = r0.www * float3(-4.75,-0.149999976,0) + float3(5.25,0.649999976,1);
    r0.w = saturate(r3.w);
    r6.xyz = r0.www * float3(1.5,-0.5,1) + float3(1,1,0);
    r5.xyz = r6.xyz * r5.xyz;
    r0.w = saturate(r4.y);
    r0.w = r0.w * 0.0124999993 + 0.0175000001;
    r6.x = saturate(cb0[4].x * 0.0833330005);
    r6.x = r6.x * 0.75 + 0.25;
    r6.y = r6.x * r0.w;
    r0.w = saturate(cb0[5].y);
    r0.y = r0.y * -0.0909089968 + -0.909090996;
    r0.y = r0.y * r0.z + 1;
    r0.z = r0.w * 0.25 + 0.25;
    r0.y = r0.y * r0.z + 0.5;
    r6.z = 7 * r0.y;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r5.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r6.xw = r3.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r4.x = r3.w;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}