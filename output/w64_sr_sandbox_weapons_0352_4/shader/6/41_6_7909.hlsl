// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:17 2023
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
    r3.xyzw = t0.Load(r0.z).zwxy;
    r0.y = saturate(r3.y);
    r0.zw = r0.yy * float2(-1.27586198,-3.27586198) + float2(3.55172396,1);
    r0.y = r0.y * r0.y;
    r0.y = saturate(r0.z * r0.y + r0.w);
    r0.y = r0.y * 0.00499999989 + 0.00499999989;
    r0.z = saturate(r1.w);
    r4.xyzw = r0.zzzz * float4(-295.639099,0.194573,0,-2.87750602) + float4(84.3003311,1.14689398,0,1.53603899);
    r0.w = r0.z * r0.z;
    r4.xy = r4.xy * r0.ww + r4.zw;
    r5.xyz = cmp(r0.zzz >= float3(0,0.203333005,1));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r4.zw = r5.xy + r5.yz;
    r4.zw = float2(9.99999997e-007,9.99999997e-007) + r4.zw;
    r4.zw = float2(0.5,0.5) * r4.zw;
    r4.zw = frac(r4.zw);
    r4.xy = r4.zw * r4.xy;
    r4.xy = r4.xy + r4.xy;
    r0.w = saturate(r4.x + r4.y);
    r0.y = r0.y * r0.w;
    r0.w = saturate(cb0[3].y * 0.200000003 + -0.600000024);
    r0.w = r0.w * 0.649999976 + 0.349999994;
    r4.z = r0.y * r0.w;
    r0.yw = r0.zz * float2(4.16666698,-3.79746795) + float2(0,3.79746795);
    r5.xyzw = cmp(r0.zzzz >= float4(0,0.239999995,0.736666977,1));
    r5.xyzw = r5.xyzw ? float4(1,1,1,1) : 0;
    r5.xyz = r5.xyz + r5.yzw;
    r5.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = frac(r5.xyz);
    r5.xz = r5.xz * r0.yw;
    r0.yz = r5.xy + r5.xy;
    r0.y = r0.y + r0.z;
    r0.y = r5.z * 2 + r0.y;
    r0.y = min(1, r0.y);
    r4.w = 40 * r0.y;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
    r4.xy = r3.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
    r3.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r3.xyzw
  }
  return;
}