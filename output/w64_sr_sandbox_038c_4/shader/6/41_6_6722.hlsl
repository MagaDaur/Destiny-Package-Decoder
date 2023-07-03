// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
    r3.xyzw = t0.Load(r0.z).zwxy;
    r4.xyzw = t0.Load(r0.w).zwxy;
    r0.y = saturate(r3.y);
    r0.zw = r0.yy * float2(-1.27586198,-3.27586198) + float2(3.55172396,1);
    r0.y = r0.y * r0.y;
    r0.y = saturate(r0.z * r0.y + r0.w);
    r0.y = r0.y * 0.00499999989 + 0.00499999989;
    r0.z = saturate(r1.w);
    r5.xyz = r0.zzz * float3(-16132.5586,308.071716,-0.417968988) + float3(1213.25586,-114.90522,1.67484403);
    r6.xyz = r0.zzz * float3(-0.331395,9.17998409,-2.0957799) + float3(0,0.789754987,0.838904977);
    r0.w = r0.z * r0.z;
    r5.xyz = r5.xyz * r0.www + r6.xyz;
    r6.xyzw = cmp(r0.zzzz >= float4(0,0.0500000007,0.186666995,1));
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r6.xyz = r6.xyz + r6.yzw;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r5.xyz = r6.xyz * r5.xyz;
    r0.zw = r5.xy + r5.xy;
    r0.z = r0.z + r0.w;
    r0.z = saturate(r5.z * 2 + r0.z);
    r0.w = r0.z * 0.800000012 + 0.200000003;
    r5.z = r0.y * r0.w;
    r0.y = saturate(r4.z);
    r6.xy = r0.yy * float2(0.392726988,7.68000221) + float2(0,-6.68000221);
    r7.xyz = cmp(r0.yyy >= float3(0,0.916666985,1));
    r7.xyw = r7.xyz ? float3(1,1,1) : 0;
    r7.xyz = r7.xyw + r7.yww;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r0.yw = r7.xy * r6.xy;
    r0.yw = float2(2,2) * r0.yw;
    r0.y = r0.y + r0.w;
    r0.y = r7.z * 2 + r0.y;
    r0.y = saturate(r7.w * 1 + r0.y);
    r0.y = r0.y * 50 + 50;
    r5.w = r0.y * r0.z;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r5.xy = r3.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r3.zw = r4.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r3.xyzw
    r4.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}