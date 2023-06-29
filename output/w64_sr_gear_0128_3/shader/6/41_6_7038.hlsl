// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[104];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[93].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[103].x;
    r0.y = (uint)cb0[94].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.xyz = t0.Load(r2.w).xyz;
    r6.yz = r5.xy * float2(2,2) + float2(-1,-1);
    r7.xyzw = saturate(r5.zzww);
    r7.xyzw = r7.xyzw * float4(2,0,0,2) + float4(1,0,0,1);
    r8.z = saturate(r2.x);
    r0.yzw = r8.zzz * float3(0,0,2) + r7.zwy;
    r7.yz = float2(0,1);
    r7.xyz = r7.xyz + r0.yzw;
    r0.y = saturate(r1.w);
    r0.zw = r0.yy * float2(6.66666698,-6.66666794) + float2(0,6.66666794);
    r9.xyzw = cmp(r0.yyyy >= float4(0,0.150000006,0.850000024,1));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r9.xz = r9.xz * r0.zw;
    r0.yz = r9.xy + r9.xy;
    r0.y = r0.y + r0.z;
    r0.y = r9.z * 2 + r0.y;
    r0.y = min(1, r0.y);
    r9.xyzw = r8.zzzz * float4(2.18500209,6.64172411,-4.14353895,3.24430704) + float4(0.0702269971,-2.7884059,1.78707898,-9.62234879);
    r10.xyzw = r8.zzzz * float4(0.139013007,0.454948008,4.52739,9.80514908) + float4(0,0.0486229993,-1.78988302,-2.42615104);
    r0.zw = r8.zz * float2(-1.72686803,-3.53491211) + float2(4.48034716,1.78149402);
    r11.x = r8.z * r8.z;
    r9.xyzw = r9.xyzw * r11.xxxx + r10.xyzw;
    r0.z = r0.z * r11.x + r0.w;
    r10.xyzw = cmp(r8.zzzz >= float4(0,0.372222006,0.522221982,0.672222018));
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r11.xy = cmp(r8.zz >= float2(0.961111009,1));
    r11.yz = r11.xy ? float2(1,1) : 0;
    r10.xyz = r10.xyz + r10.yzw;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r9.xyz = r10.xyz * r9.xyz;
    r10.xy = r11.yz + r11.zz;
    r10.xy = float2(9.99999997e-007,9.99999997e-007) + r10.xy;
    r10.xy = float2(0.5,0.5) * r10.xy;
    r10.xy = frac(r10.xy);
    r0.z = r10.x * r0.z;
    r0.w = 2;
    r9.xy = r0.ww * r9.xy;
    r0.yz = float2(0.200000003,2) * r0.yz;
    r9.x = r9.x + r9.y;
    r0.w = r0.w * r9.z + r9.x;
    r0.w = r9.w * r10.w + r0.w;
    r0.z = r10.y * 4 + r0.z;
    r0.z = r11.z * 1 + r0.z;
    r0.z = saturate(r11.x ? r0.z : r0.w);
    r0.z = r0.z * 0.200000018 + 0.100000001;
    r8.x = r0.y * r0.z;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r6.xw = r4.wx * float2(2,1) + float2(-1,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r7.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r8.yw = r4.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r8.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r2.xyzw
  }
  return;
}