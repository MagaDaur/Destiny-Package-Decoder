// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:55 2023
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
    r3.xyzw = t0.Load(r0.z).xyzw;
    r4.xyz = t0.Load(r0.w).yzx;
    r5.xyzw = saturate(r4.zzxx);
    r6.xyzw = r5.xyzw * float4(-1.27586198,-3.27586198,0.392726988,7.68000221) + float4(3.55172396,1,0,-6.68000221);
    r0.y = r5.y * r5.y;
    r0.y = saturate(r6.x * r0.y + r6.y);
    r0.y = r0.y * 0.00999999978 + 0.00999999978;
    r0.z = saturate(r1.w);
    r0.w = 6.6558342 * r0.z;
    r5.x = r0.z * 6.6558342 + -13.3116684;
    r0.z = r0.z * r0.z;
    r0.z = saturate(r5.x * r0.z + r0.w);
    r0.w = r0.z * 1.70000005 + 0.300000012;
    r0.y = r0.y * r0.w;
    r0.w = saturate(cb0[1].z);
    r5.x = r0.w * 0.296106994 + -1.29610705;
    r0.w = r0.w * r0.w;
    r0.w = r5.x * r0.w + 1;
    r0.w = max(0, r0.w);
    r7.w = r0.y * r0.w;
    r5.xyz = cmp(r5.www >= float3(0,0.916666985,1));
    r5.xyw = r5.xyz ? float3(1,1,1) : 0;
    r5.xyz = r5.xyw + r5.yww;
    r5.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = frac(r5.xyz);
    r0.yw = r5.xy * r6.zw;
    r0.yw = float2(2,2) * r0.yw;
    r0.y = r0.y + r0.w;
    r0.y = r5.z * 2 + r0.y;
    r0.y = saturate(r5.w * 1 + r0.y);
    r0.y = r0.y * 130 + 120;
    r5.x = r0.y * r0.z;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r7.xyz = r3.xyw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r7.xyzw
    r5.yz = r3.zw;
    r5.w = r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r4.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}