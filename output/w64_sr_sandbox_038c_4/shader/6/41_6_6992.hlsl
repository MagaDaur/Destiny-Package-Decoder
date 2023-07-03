// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:57 2023
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
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.x = t0.Load(r2.w).x;
    r0.y = saturate(r1.w);
    r6.xyzw = float4(-0,-0.5,-0,-0.5) + r0.yyyy;
    r6.xyzw = saturate(r6.xyzw + r6.xyzw);
    r7.xyzw = float4(-0.269293994,-0.419999987,-0.348185003,0.691697001) * r6.zwzw;
    r8.xyzw = float4(0.310000002,-0.219420001,-0.671544015,0.693947017) * r6.zwzw;
    r9.x = dot(float2(1,1), r7.xy);
    r9.y = dot(float2(1,1), r7.zw);
    r9.z = dot(float2(1,1), r8.xy);
    r7.xyz = float3(0.689293981,0.368185014,0) + r9.xyz;
    r6.xyzw = float4(0.0501880012,-0.418372989,0.132124007,0.488992006) * r6.xyzw;
    r8.x = dot(float2(1,1), r8.zw);
    r8.y = dot(float2(1,1), r6.xy);
    r8.z = dot(float2(1,1), r6.zw);
    r6.xyz = float3(0.689293981,0.368185014,0) + r8.xyz;
    r7.xyz = r7.xyz + -r6.xyz;
    r0.z = saturate(r4.w);
    r8.xy = r0.zz * float2(-1.27586198,-3.27586198) + float2(3.55172396,1);
    r0.zw = r0.zy * r0.zy;
    r0.z = saturate(r8.x * r0.z + r8.y);
    r0.z = r0.z * 0.00999999978 + 0.00999999978;
    r8.xyzw = r0.yyyy * float4(-295.639099,0.194573,0,-2.87750602) + float4(84.3003311,1.14689398,0,1.53603899);
    r8.xy = r8.xy * r0.ww + r8.zw;
    r9.xyz = cmp(r0.yyy >= float3(0,0.203333005,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r8.zw = r9.xy + r9.yz;
    r8.zw = float2(9.99999997e-007,9.99999997e-007) + r8.zw;
    r8.zw = float2(0.5,0.5) * r8.zw;
    r8.zw = frac(r8.zw);
    r8.xy = r8.zw * r8.xy;
    r8.xy = r8.xy + r8.xy;
    r8.x = saturate(r8.x + r8.y);
    r8.x = r8.x * 0.699999988 + 0.300000012;
    r8.x = r8.x * r0.z;
    r0.z = saturate(r5.x);
    r9.xy = r0.zz * float2(0.392726988,7.68000221) + float2(0,-6.68000221);
    r10.xyz = cmp(r0.zzz >= float3(0,0.916666985,1));
    r10.xyw = r10.xyz ? float3(1,1,1) : 0;
    r10.xyz = r10.xyw + r10.yww;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r9.xy = r10.xy * r9.xy;
    r9.xy = float2(2,2) * r9.xy;
    r0.z = r9.x + r9.y;
    r0.z = r10.z * 2 + r0.z;
    r0.z = saturate(r10.w * 1 + r0.z);
    r0.z = r0.z * 100 + 100;
    r9.xyz = r0.yyy * float3(-5898.53564,180.109512,-0.319651008) + float3(621.713318,-85.7811432,1.57300103);
    r10.xyz = r0.yyy * float3(-0.331395,9.3617506,-2.18704796) + float3(0,0.703226984,0.933699012);
    r9.xyz = r9.xyz * r0.www + r10.xyz;
    r10.xyzw = cmp(r0.yyyy >= float4(0,0.0700000003,0.230000004,1));
    r10.xyzw = r10.xyzw ? float4(1,1,1,1) : 0;
    r10.xyz = r10.xyz + r10.yzw;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r9.xyz = r10.xyz * r9.xyz;
    r0.yw = r9.xy + r9.xy;
    r0.y = r0.y + r0.w;
    r0.y = saturate(r9.z * 2 + r0.y);
    r8.y = r0.z * r0.y;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r7.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r7.xyzw
    r6.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r8.zw = r4.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r8.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
    r2.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r2.xyzw
  }
  return;
}