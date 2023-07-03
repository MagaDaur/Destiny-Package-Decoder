// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:24 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xy = t0.Load(r2.y).zw;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.xyzw = t0.Load(r2.w).wxyz;
    r0.y = saturate(r5.z);
    r6.xy = r0.yy * float2(0.450000048,0.450000048) + float2(0.75,0.75);
    r0.y = saturate(r3.w);
    r7.xyzw = r0.yyyy * float4(1.65327299,-1.67451298,2.27272701,-0.660778999) + float4(-2.82284188,2.85778308,0,0.477508008);
    r0.z = r0.y * r0.y;
    r7.xy = r7.xy * r0.zz + r7.zw;
    r8.xyz = cmp(r0.yyy >= float3(0,0.395999998,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xy = r8.xy * r7.xy;
    r7.xy = float2(2,2) * r7.xy;
    r0.w = r7.x + r7.y;
    r0.w = r8.z * 2 + r0.w;
    r0.w = saturate(r8.w * 1 + r0.w);
    r6.z = 0.25 * r0.w;
    r7.xyzw = r0.yyyy * float4(8.19297791,0.325239003,5.4000001,1.43178701) + float4(-11.9033432,-1.20375204,0,0.446725994);
    r7.xy = r7.xy * r0.zz + r7.zw;
    r8.xyz = cmp(r0.yyy >= float3(0,0.25999999,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xy = r8.xy * r7.xy;
    r7.xy = float2(2,2) * r7.xy;
    r0.w = r7.x + r7.y;
    r0.w = r8.z * 2 + r0.w;
    r0.w = saturate(r8.w * 1 + r0.w);
    r7.y = r0.w * -0.100000001 + 0.200000003;
    r8.xy = saturate(r2.yz);
    r0.w = r8.y * 0.125000015 + 0.174999997;
    r9.xyz = r0.yyy * float3(1.20855606,0,1.61077702) + float3(-3.32620311,0,-2.63125801);
    r8.y = r9.x * r0.z;
    r8.y = saturate(r0.y * 3.11764693 + r8.y);
    r8.y = r8.y * 0.574999988 + 0.425000012;
    r7.w = r8.y * r0.w;
    r9.xw = r0.yy * float2(83.3333359,0.0203489996) + float2(0,1.00013196);
    r0.zw = r9.yz * r0.zz + r9.xw;
    r9.xyz = cmp(r0.yyy >= float3(0,0.0120000001,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r9.xy = r9.xy + r9.yz;
    r9.xy = float2(9.99999997e-007,9.99999997e-007) + r9.xy;
    r9.xy = float2(0.5,0.5) * r9.xy;
    r9.xy = frac(r9.xy);
    r0.yz = r9.xy * r0.zw;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r0.y = 0.200000003 * r0.y;
    r0.z = saturate(cb0[1].x);
    r0.z = r0.z * 0.699999988 + 0.300000012;
    r9.y = r0.y * r0.z;
    r0.x = mad(10, (int)vThreadID.x, (int)r0.x);
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.yyzw
    r10.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r8.zw = float2(0.25,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.xxxx, r8.zzxw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.zzzz, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.wwww, r6.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r4.z = r5.x;
    r4.w = r6.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r4.xyzw
    r7.x = r6.y;
    r7.z = r5.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r7.xyzw
    r9.zw = r5.yz;
    r9.x = r2.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r9.yzxw
    r2.x = r7.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
    r0.y = (int)r0.x + 9;
    r9.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r9.xyzw
  }
  return;
}