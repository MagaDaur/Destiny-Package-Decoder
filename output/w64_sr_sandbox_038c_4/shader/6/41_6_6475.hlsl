// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:59 2023
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
    r3.xyzw = t0.Load(r0.z).wxyz;
    r4.xyzw = t0.Load(r0.w).wxyz;
    r0.y = saturate(r1.w);
    r0.z = 1 + -r0.y;
    r5.xyz = float3(0.0260850005,0.778235972,0.262138009) * r0.zzz;
    r0.z = saturate(r3.x);
    r6.xy = r0.zz * float2(-1.27586198,-3.27586198) + float2(3.55172396,1);
    r0.z = r0.z * r0.z;
    r0.z = saturate(r6.x * r0.z + r6.y);
    r0.z = r0.z * 0.00999999978 + 0.00999999978;
    r6.xy = float2(6.73529387,6.673913) * r0.yy;
    r6.zw = r0.yy * float2(6.73529387,6.673913) + float2(-13.4705877,-13.347827);
    r0.y = r0.y * r0.y;
    r0.yw = saturate(r6.zw * r0.yy + r6.xy);
    r0.y = r0.y * 0.300000012 + 0.100000001;
    r6.y = r0.z * r0.y;
    r0.y = saturate(r4.y);
    r7.xy = r0.yy * float2(0.392726988,7.68000221) + float2(0,-6.68000221);
    r8.xyz = cmp(r0.yyy >= float3(0,0.916666985,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r0.yz = r8.xy * r7.xy;
    r0.yz = float2(2,2) * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r8.z * 2 + r0.y;
    r0.y = saturate(r8.w * 1 + r0.y);
    r0.y = r0.y * 40 + 80;
    r6.z = r0.y * r0.w;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r5.w = r3.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r6.xw = r3.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r3.yzw = r4.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r3.xyzw
    r0.y = (int)r0.x + 5;
    r4.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  }
  return;
}