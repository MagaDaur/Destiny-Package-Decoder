// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:03 2023
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
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyz = t0.Load(r2.y).zxy;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.z = t0.Load(r2.w).x;
    r0.yzw = saturate(r5.yzw);
    r6.xyz = r0.yyw * float3(0.713142991,-1.34482801,-0.236842006) + float3(-0.368315995,1,1.47368503);
    r7.xy = r0.yw * r0.yw;
    r6.x = saturate(r6.x * r7.x + r6.y);
    r6.x = r6.x * 0.25 + 0.25;
    r6.y = saturate(-2 + r1.w);
    r6.y = r6.y * 0.5 + 0.5;
    r4.w = r6.x * r6.y;
    r6.xyw = r0.wyy * float3(-2.23684192,0.334565014,0) + float3(1,-0.113967001,0);
    r0.w = saturate(r6.z * r7.y + r6.x);
    r0.w = r0.w * 0.00899999961 + 0.00100000005;
    r6.x = saturate(cb0[5].x * 0.142857 + -0.428570986);
    r6.x = r6.x * -0.300000012 + 0.5;
    r0.w = r6.x * r0.w;
    r6.x = saturate(r3.w);
    r8.xyzw = r6.xxxx * float4(-3290.70386,0.512374997,0,-1.65069699) + float4(418.330414,-0.0044379998,0,1.14276004);
    r6.z = r6.x * r6.x;
    r7.yz = r8.xy * r6.zz + r8.zw;
    r8.xyz = cmp(r6.xxx >= float3(0,0.0866670012,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r8.xy = r8.xy + r8.yz;
    r8.xy = float2(9.99999997e-007,9.99999997e-007) + r8.xy;
    r8.xy = float2(0.5,0.5) * r8.xy;
    r8.xy = frac(r8.xy);
    r7.yz = r8.xy * r7.yz;
    r7.yz = r7.yz + r7.yz;
    r7.y = saturate(r7.y + r7.z);
    r7.y = r7.y * 0.999000013 + 0.00100000005;
    r8.x = r7.y * r0.w;
    r7.yz = r0.yy * float2(0,21.9999847) + float2(0,-20.9999847);
    r6.yw = r6.yw * r7.xx + r7.yz;
    r7.xyz = cmp(r0.yyy >= float3(0,0.963333011,1));
    r7.xyw = r7.xyz ? float3(1,1,1) : 0;
    r7.xyz = r7.xyw + r7.yww;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.yw = r7.xy * r6.yw;
    r6.yw = float2(2,2) * r6.yw;
    r0.w = r6.y + r6.w;
    r0.w = r7.z * 2 + r0.w;
    r0.w = saturate(r7.w * 1 + r0.w);
    r0.w = r0.w * 70 + 50;
    r7.xyz = r6.xxx * float3(-38767.7969,23.699955,0.517917991) + float3(1725.99683,-12.7286167,-0.485289991);
    r9.xyz = r6.xxx * float3(0,-0.413502991,-0.622648001) + float3(0.493333012,1.02322102,0.590020001);
    r6.yzw = r7.xyz * r6.zzz + r9.xyz;
    r7.xyzw = cmp(r6.xxxx >= float4(0,0.0299999993,0.343333006,1));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xyz = r7.xyz * r6.yzw;
    r6.xy = r6.xy + r6.xy;
    r6.x = r6.x + r6.y;
    r6.x = saturate(r6.z * 2 + r6.x);
    r8.y = r6.x * r0.w;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
    r6.zw = float2(1,0.5);
    r6.x = r0.y;
    r6.y = cb0[5].w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.zwxy
    r7.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.yyyy, r3.xyzw
    r6.zw = r4.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.zzzz, r6.xyzw
    r4.yz = r0.yz * float2(1,0.550000012) + float2(0,0.200000003);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r7.wwww, r4.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
    r8.zw = r5.xy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r8.xyzw
    r2.xy = r5.zw;
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r2.xyzw
  }
  return;
}