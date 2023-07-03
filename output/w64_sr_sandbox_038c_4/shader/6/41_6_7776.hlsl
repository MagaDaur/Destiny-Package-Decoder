// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:54 2023
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
    r4.yz = t0.Load(r0.w).xy;
    r0.y = saturate(r1.w);
    r0.z = 1 + -r0.y;
    r5.xyz = r0.zzz * float3(0.283596992,0.68580097,0) + float3(-0.0392099991,0.0367020033,0.644958019);
    r0.z = saturate(r3.w);
    r6.xy = r0.zz * float2(-1.27586198,-3.27586198) + float2(3.55172396,1);
    r0.zw = r0.zy * r0.zy;
    r0.z = saturate(r6.x * r0.z + r6.y);
    r0.z = r0.z * 0.00999999978 + 0.00999999978;
    r6.xyz = r0.yyy * float3(-16132.5586,308.071716,-0.417968988) + float3(1213.25586,-114.90522,1.67484403);
    r7.xyz = r0.yyy * float3(-0.331395,9.17998409,-2.0957799) + float3(0,0.789754987,0.838904977);
    r6.xyz = r6.xyz * r0.www + r7.xyz;
    r7.xyzw = cmp(r0.yyyy >= float4(0,0.0500000007,0.186666995,1));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r6.xyz = r7.xyz * r6.xyz;
    r0.yw = r6.xy + r6.xy;
    r0.y = r0.y + r0.w;
    r0.y = saturate(r6.z * 2 + r0.y);
    r0.w = r0.y * 0.800000012 + 0.200000003;
    r6.y = r0.z * r0.w;
    r0.z = saturate(r4.y);
    r7.xy = r0.zz * float2(0.392726988,7.68000221) + float2(0,-6.68000221);
    r8.xyz = cmp(r0.zzz >= float3(0,0.916666985,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r0.zw = r8.xy * r7.xy;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r8.z * 2 + r0.z;
    r0.z = saturate(r8.w * 1 + r0.z);
    r0.z = r0.z * 50 + 50;
    r6.z = r0.z * r0.y;
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