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
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.w = t0.Load(r2.w).x;
    r6.xyzw = saturate(r5.xxyy);
    r7.xyzw = r6.xyzw * float4(-1.27586198,-3.27586198,0.392726988,7.68000221) + float4(3.55172396,1,0,-6.68000221);
    r0.y = r6.y * r6.y;
    r0.y = saturate(r7.x * r0.y + r7.y);
    r0.y = r0.y * 0.00999999978 + 0.00999999978;
    r0.z = saturate(r1.w);
    r0.w = 6.6558342 * r0.z;
    r6.x = r0.z * 6.6558342 + -13.3116684;
    r0.z = r0.z * r0.z;
    r0.z = saturate(r6.x * r0.z + r0.w);
    r0.w = r0.z * 0.399999976 + 0.300000012;
    r8.w = r0.y * r0.w;
    r6.xyz = cmp(r6.www >= float3(0,0.916666985,1));
    r6.xyw = r6.xyz ? float3(1,1,1) : 0;
    r6.xyz = r6.xyw + r6.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r0.yw = r6.xy * r7.zw;
    r0.yw = float2(2,2) * r0.yw;
    r0.y = r0.y + r0.w;
    r0.y = r6.z * 2 + r0.y;
    r0.y = saturate(r6.w * 1 + r0.y);
    r0.y = r0.y * 40 + 80;
    r6.x = r0.y * r0.z;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r8.xyz = r4.xyw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r8.xyzw
    r6.yz = r4.zw;
    r6.w = r5.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r2.xyz = r5.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}