// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:27 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
    r4.xyzw = t0.Load(r0.w).zwxy;
    r5.xyzw = saturate(r4.zzwy);
    r0.y = 0.119999997 * r5.w;
    r0.z = r5.w * 0.350000024 + 0.649999976;
    r0.w = saturate(r2.w);
    r6.xyzw = r0.wwww * float4(0.992663026,-13.2854614,0,-29.0015869) + float4(-0.0832210034,35.5466309,0,7.74040604);
    r7.x = r0.w * r0.w;
    r6.xy = r6.xy * r7.xx + r6.zw;
    r7.yzw = cmp(r0.www >= float3(0,0.709999979,1));
    r8.xyw = r7.yzw ? float3(1,1,1) : 0;
    r7.yzw = r8.xyw + r8.yww;
    r7.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.yzw;
    r7.yzw = float3(0.5,0.5,0.5) * r7.yzw;
    r7.yzw = frac(r7.yzw);
    r6.xy = r7.yz * r6.xy;
    r6.xy = float2(2,2) * r6.xy;
    r6.x = r6.x + r6.y;
    r6.x = r7.w * 2 + r6.x;
    r6.x = saturate(r8.w * 1 + r6.x);
    r0.z = -r5.w * 0.119999997 + r0.z;
    r6.x = r6.x * r0.z + r0.y;
    r7.yzw = r0.www * float3(79.2402191,167.989258,-0.0909089968) + float3(-202.85495,-44.3745193,-0.909090996);
    r0.y = r7.y * r7.x + r7.z;
    r8.xyz = cmp(r0.www >= float3(0,0.706667006,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r0.zw = r8.xy + r8.yz;
    r0.zw = float2(9.99999997e-007,9.99999997e-007) + r0.zw;
    r0.zw = float2(0.5,0.5) * r0.zw;
    r8.xy = frac(r0.zw);
    r8.z = r8.y * r0.y;
    r0.yz = r8.xz + r8.xz;
    r0.y = saturate(r0.y + r0.z);
    r6.z = r0.y * 0.5 + 0.5;
    r8.xyzw = r5.xyzw * float4(0.425000012,0,0.0289999992,35) + float4(0.25,1,0.111000001,40);
    r0.y = saturate(cb0[3].z);
    r0.z = r7.w * r7.x + 1;
    r0.y = r0.y * 0.25 + 0.25;
    r0.y = r0.z * r0.y + 0.5;
    r6.w = r8.w * r0.y;
    r7.xyz = r5.zzz * float3(0,-0.156905994,-0.0422540009) + float3(1,0.393364996,0.130282);
    r0.x = mad(10, (int)vThreadID.x, (int)r0.x);
    r5.yz = r5.yz * float2(0.25,0.349999994) + float2(0,0.150000006);
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.zzyw
    r9.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.yyyy, r2.xyzw
    r8.w = r3.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.zzzz, r8.xyyw
    r7.w = r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r9.wwww, r7.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r5.zzyw
    r5.x = r3.w;
    r5.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r6.y = r8.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r3.yzw = r4.wzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r3.xyzw
    r0.y = (int)r0.x + 9;
    r4.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  }
  return;
}