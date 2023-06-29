// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6;
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
    r0.y = mad(3, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yz = (int2)r0.yy + int2(1,2);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).wxyz;
    r0.y = saturate(r3.x);
    r0.zw = r0.yy * float2(-1.27586198,-3.27586198) + float2(3.55172396,1);
    r0.y = r0.y * r0.y;
    r0.y = saturate(r0.z * r0.y + r0.w);
    r0.y = r0.y * 0.00999999978 + 0.00999999978;
    r0.z = saturate(r1.w);
    r4.xyzw = r0.zzzz * float4(-295.639099,0.194573,0,-2.87750602) + float4(84.3003311,1.14689398,0,1.53603899);
    r0.w = r0.z * r0.z;
    r4.xy = r4.xy * r0.ww + r4.zw;
    r5.xyz = cmp(r0.zzz >= float3(0,0.203333005,1));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r4.zw = r5.xy + r5.yz;
    r4.zw = float2(9.99999997e-007,9.99999997e-007) + r4.zw;
    r4.zw = float2(0.5,0.5) * r4.zw;
    r4.zw = frac(r4.zw);
    r4.xy = r4.zw * r4.xy;
    r4.xy = r4.xy + r4.xy;
    r4.x = saturate(r4.x + r4.y);
    r0.y = r4.x * r0.y;
    r4.x = saturate(cb0[4].x * 0.200000003 + -0.600000024);
    r4.x = r4.x * 0.649999976 + 0.349999994;
    r4.y = r4.x * r0.y;
    r5.xyzw = r0.zzzz * float4(-584.544617,2.7262671,-0.331395,0.826089025) + float4(134.324539,-4.52218294,0,0.969825983);
    r5.xy = r5.xy * r0.ww + r5.zw;
    r6.xyz = cmp(r0.zzz >= float3(0,0.153332993,1));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r5.zw = r6.xy + r6.yz;
    r5.zw = float2(9.99999997e-007,9.99999997e-007) + r5.zw;
    r5.zw = float2(0.5,0.5) * r5.zw;
    r5.zw = frac(r5.zw);
    r5.xy = r5.zw * r5.xy;
    r5.xy = r5.xy + r5.xy;
    r0.y = saturate(r5.x + r5.y);
    r4.z = 20 * r0.y;
    r5.xyzw = r0.zzzz * float4(-22.9529667,11.5942965,0,15.420414) + float4(15.2637234,-25.1016483,0,-1.913059);
    r0.yw = r5.xy * r0.ww + r5.zw;
    r5.xyz = cmp(r0.zzz >= float3(0,0.443333,1));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r5.xy = r5.xy + r5.yz;
    r5.xy = float2(9.99999997e-007,9.99999997e-007) + r5.xy;
    r5.xy = float2(0.5,0.5) * r5.xy;
    r5.xy = frac(r5.xy);
    r0.yz = r5.xy * r0.yw;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r5.xyz = r0.yyy * float3(0,0.346855015,0.0703490004) + float3(1,0.201555997,0.0382039994);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r5.w = r3.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r4.xw = r3.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r4.xyzw
    r3.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r3.xyzw
  }
  return;
}