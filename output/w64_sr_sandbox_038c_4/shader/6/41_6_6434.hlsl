// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:59 2023
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
    r4.xyzw = t0.Load(r2.y).wxyz;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.yzw = t0.Load(r2.w).xyz;
    r0.y = saturate(r1.w);
    r0.z = 1 + -r0.y;
    r6.xyz = float3(0.0260850005,0.778235972,0.262138009) * r0.zzz;
    r0.z = saturate(r4.x);
    r7.xy = r0.zz * float2(-1.27586198,-3.27586198) + float2(3.55172396,1);
    r0.zw = r0.zy * r0.zy;
    r0.z = saturate(r7.x * r0.z + r7.y);
    r0.z = r0.z * 0.00999999978 + 0.00999999978;
    r7.xyz = r0.yyy * float3(-27095.9102,107.27179,-0.137693003) + float3(1540.4541,-51.3369446,0.781693995);
    r8.xyz = r0.yyy * float3(6.73529291,3.503299,-1.15030897) + float3(0,0.935141981,0.506308019);
    r7.xyz = r7.xyz * r0.www + r8.xyz;
    r8.xyzw = cmp(r0.yyyy >= float4(0,0.0399999991,0.270000011,1));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r8.xyz = r8.xyz + r8.yzw;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xyz = r8.xyz * r7.xyz;
    r7.xy = r7.xy + r7.xy;
    r7.x = r7.x + r7.y;
    r7.x = saturate(r7.z * 2 + r7.x);
    r7.x = r7.x * 2.70000005 + 0.300000012;
    r7.y = r7.x * r0.z;
    r0.z = saturate(r5.x);
    r8.xy = r0.zz * float2(0.392726988,7.68000221) + float2(0,-6.68000221);
    r9.xyz = cmp(r0.zzz >= float3(0,0.916666985,1));
    r9.xyw = r9.xyz ? float3(1,1,1) : 0;
    r9.xyz = r9.xyw + r9.yww;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r8.xy = r9.xy * r8.xy;
    r8.xy = float2(2,2) * r8.xy;
    r0.z = r8.x + r8.y;
    r0.z = r9.z * 2 + r0.z;
    r0.z = saturate(r9.w * 1 + r0.z);
    r0.z = r0.z * 120 + 120;
    r8.xyz = r0.yyy * float3(-10766.0469,94.0341492,-0.358832002) + float3(798.272034,-51.5379791,1.17677605);
    r9.xyz = r0.yyy * float3(6.67391396,4.64762402,-1.27705598) + float3(0,0.877792001,0.459111989);
    r8.xyz = r8.xyz * r0.www + r9.xyz;
    r9.xyzw = cmp(r0.yyyy >= float4(0,0.0533329993,0.303333014,1));
    r9.xyzw = r9.xyzw ? float4(1,1,1,1) : 0;
    r9.xyz = r9.xyz + r9.yzw;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r8.xyz = r9.xyz * r8.xyz;
    r0.yw = r8.xy + r8.xy;
    r0.y = r0.y + r0.w;
    r0.y = saturate(r8.z * 2 + r0.y);
    r7.z = r0.z * r0.y;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r6.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r7.xw = r4.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r4.yzw = r5.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
    r0.y = (int)r0.x + 5;
    r2.x = r5.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  }
  return;
}