// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:20 2023
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
    r4.xyzw = t0.Load(r0.w).xyzw;
    r0.y = saturate(r4.y);
    r5.xyzw = r0.yyyy * float4(0.680000007,3.43478203,-0.236842006,-2.23684192) + float4(0,-2.43478203,1.47368503,1);
    r6.xyz = cmp(r0.yyy >= float3(0,0.883837998,1));
    r6.xyw = r6.xyz ? float3(1,1,1) : 0;
    r6.xyz = r6.xyw + r6.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r0.zw = r6.xy * r5.xy;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r6.z * 2 + r0.z;
    r0.z = saturate(r6.w * 1 + r0.z);
    r0.z = r0.z * 4.9000001 + 0.100000001;
    r5.xy = saturate(cb0[4].yy * float2(0.125,0.200000003) + float2(-0.25,-1));
    r5.xy = r5.xy * float2(0.850000024,0.5) + float2(0.150000006,0.5);
    r6.x = r5.x * r0.z;
    r0.z = saturate(r3.x);
    r7.xyz = r0.zzz * float3(895.162964,-4.34436989,-1.506868) + float3(-143.529419,6.21705914,3.94007492);
    r8.xyz = r0.zzz * float3(-1.65876698,-3.06789708,-3.34425998) + float3(1,0.538142979,0.911051989);
    r0.w = r0.z * r0.z;
    r7.xyz = r7.xyz * r0.www + r8.xyz;
    r8.xyzw = cmp(r0.zzzz >= float4(0,0.106060997,0.589999974,1));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xyz = r8.xyz * r7.xyz;
    r7.xy = r7.xy + r7.xy;
    r5.x = r7.x + r7.y;
    r5.x = saturate(r7.z * 2 + r5.x);
    r6.y = 1 + -r5.x;
    r5.x = r0.y * r0.y;
    r5.x = saturate(r5.z * r5.x + r5.w);
    r5.x = r5.x * 0.00999999978 + 0.00499999989;
    r5.z = saturate(r1.w);
    r5.z = r5.z * -0.5 + 1.5;
    r5.x = r5.x * r5.z;
    r7.xyzw = r0.zzzz * float4(9.03742886,-0.0208999999,0,0.435288012) + float4(-7.15188313,-0.721176982,1,0.306789011);
    r5.zw = r7.xy * r0.ww + r7.zw;
    r7.xyz = cmp(r0.zzz >= float3(0,0.504999995,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r7.xy = r7.xy + r7.yz;
    r7.xy = float2(9.99999997e-007,9.99999997e-007) + r7.xy;
    r7.xy = float2(0.5,0.5) * r7.xy;
    r7.xy = frac(r7.xy);
    r5.zw = r7.xy * r5.zw;
    r5.zw = r5.zw + r5.zw;
    r5.z = saturate(r5.z + r5.w);
    r5.z = r5.z * 0.949999988 + 0.0500000007;
    r5.x = r5.x * r5.z;
    r6.z = r5.x * r5.y;
    r5.xyzw = r0.zzzz * float4(16.4776993,0.329667002,-0.0371900015,-0.426681995) + float4(-11.4012012,-0.300895989,1,0.397911012);
    r5.xy = r5.xy * r0.ww + r5.zw;
    r7.xyz = cmp(r0.zzz >= float3(0,0.439999998,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r0.zw = r7.xy + r7.yz;
    r0.zw = float2(9.99999997e-007,9.99999997e-007) + r0.zw;
    r0.zw = float2(0.5,0.5) * r0.zw;
    r0.zw = frac(r0.zw);
    r0.zw = r0.zw * r5.xy;
    r0.zw = r0.zw + r0.zw;
    r0.z = saturate(r0.z + r0.w);
    r0.z = 50 * r0.z;
    r0.w = saturate(3 * r1.w);
    r5.xy = r0.ww * float2(-1.29411697,-3.29411697) + float2(3.58823395,1);
    r0.w = r0.w * r0.w;
    r0.w = saturate(r5.x * r0.w + r5.y);
    r0.y = r0.y * 3 + 1;
    r0.y = r0.w * r0.y + 1;
    r6.w = r0.z * r0.y;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}